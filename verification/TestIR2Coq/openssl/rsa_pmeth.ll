; ModuleID = 'crypto/rsa/rsa_pmeth.c'
source_filename = "crypto/rsa/rsa_pmeth.c"
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
%struct.evp_pkey_st = type { i32, i32, %struct.evp_pkey_asn1_method_st*, %struct.engine_st*, %struct.engine_st*, %union.legacy_pkey_st, %union.legacy_pkey_st, i32, i8*, %struct.stack_st_X509_ATTRIBUTE*, i32, i8, %struct.crypto_ex_data_st, %struct.evp_keymgmt_st*, i8*, i64, %struct.stack_st_OP_CACHE_ELEM*, i64, %struct.anon.7 }
%struct.evp_pkey_asn1_method_st = type opaque
%union.legacy_pkey_st = type { i8* }
%struct.stack_st_X509_ATTRIBUTE = type opaque
%struct.crypto_ex_data_st = type { %struct.ossl_lib_ctx_st*, %struct.stack_st_void* }
%struct.stack_st_void = type opaque
%struct.stack_st_OP_CACHE_ELEM = type opaque
%struct.anon.7 = type { i32, i32, i32 }
%struct.bignum_st = type opaque
%struct.evp_md_ctx_st = type opaque
%struct.RSA_PKEY_CTX = type { i32, %struct.bignum_st*, i32, [2 x i32], i32, %struct.evp_md_st*, %struct.evp_md_st*, i32, i32, i8*, i8*, i64 }
%struct.evp_md_st = type { i32, i32, i32, i64, i32, i32 (%struct.evp_md_ctx_st*)*, i32 (%struct.evp_md_ctx_st*, i8*, i64)*, i32 (%struct.evp_md_ctx_st*, i8*)*, i32 (%struct.evp_md_ctx_st*, %struct.evp_md_ctx_st*)*, i32 (%struct.evp_md_ctx_st*)*, i32, i32, i32 (%struct.evp_md_ctx_st*, i32, i32, i8*)*, i32, i8*, i8*, %struct.ossl_provider_st*, i32, i8*, i8* (i8*)*, i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64*, i64)*, i32 (i8*, i8*, i64, i8*, i64*, i64)*, void (i8*)*, i8* (i8*)*, i32 (%struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i8*)*, %struct.ossl_param_st* (i8*, i8*)*, %struct.ossl_param_st* (i8*, i8*)* }
%struct.ossl_provider_st = type opaque
%struct.ossl_param_st = type { i8*, i32, i8*, i64, i64 }
%struct.rsa_st = type { i32, %struct.ossl_lib_ctx_st*, i32, %struct.rsa_meth_st*, %struct.engine_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.rsa_pss_params_30_st, %struct.rsa_pss_params_st*, %struct.stack_st_RSA_PRIME_INFO*, %struct.crypto_ex_data_st, i32, i32, %struct.bn_mont_ctx_st*, %struct.bn_mont_ctx_st*, %struct.bn_mont_ctx_st*, %struct.bn_blinding_st*, %struct.bn_blinding_st*, i8*, i32 }
%struct.rsa_meth_st = type { i8*, i32 (i32, i8*, i8*, %struct.rsa_st*, i32)*, i32 (i32, i8*, i8*, %struct.rsa_st*, i32)*, i32 (i32, i8*, i8*, %struct.rsa_st*, i32)*, i32 (i32, i8*, i8*, %struct.rsa_st*, i32)*, i32 (%struct.bignum_st*, %struct.bignum_st*, %struct.rsa_st*, %struct.bignum_ctx*)*, i32 (%struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*, %struct.bn_mont_ctx_st*)*, i32 (%struct.rsa_st*)*, i32 (%struct.rsa_st*)*, i32, i8*, i32 (i32, i8*, i32, i8*, i32*, %struct.rsa_st*)*, i32 (i32, i8*, i32, i8*, i32, %struct.rsa_st*)*, i32 (%struct.rsa_st*, i32, %struct.bignum_st*, %struct.bn_gencb_st*)*, i32 (%struct.rsa_st*, i32, i32, %struct.bignum_st*, %struct.bn_gencb_st*)* }
%struct.bignum_ctx = type opaque
%struct.bn_gencb_st = type opaque
%struct.rsa_pss_params_30_st = type { i32, %struct.anon.5, i32, i32 }
%struct.anon.5 = type { i32, i32 }
%struct.rsa_pss_params_st = type { %struct.X509_algor_st*, %struct.X509_algor_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.X509_algor_st* }
%struct.asn1_string_st = type { i32, i32, i8*, i64 }
%struct.X509_algor_st = type { %struct.asn1_object_st*, %struct.asn1_type_st* }
%struct.asn1_object_st = type opaque
%struct.asn1_type_st = type { i32, %union.anon.6 }
%union.anon.6 = type { i8* }
%struct.stack_st_RSA_PRIME_INFO = type opaque
%struct.bn_mont_ctx_st = type opaque
%struct.bn_blinding_st = type opaque

@rsa_pkey_meth = internal constant %struct.evp_pkey_method_st { i32 6, i32 2, i32 (%struct.evp_pkey_ctx_st*)* @pkey_rsa_init, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st*)* @pkey_rsa_copy, void (%struct.evp_pkey_ctx_st*)* @pkey_rsa_cleanup, i32 (%struct.evp_pkey_ctx_st*)* null, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_st*)* null, i32 (%struct.evp_pkey_ctx_st*)* null, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_st*)* @pkey_rsa_keygen, i32 (%struct.evp_pkey_ctx_st*)* null, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)* @pkey_rsa_sign, i32 (%struct.evp_pkey_ctx_st*)* null, i32 (%struct.evp_pkey_ctx_st*, i8*, i64, i8*, i64)* @pkey_rsa_verify, i32 (%struct.evp_pkey_ctx_st*)* null, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)* @pkey_rsa_verifyrecover, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_md_ctx_st*)* null, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, %struct.evp_md_ctx_st*)* null, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_md_ctx_st*)* null, i32 (%struct.evp_pkey_ctx_st*, i8*, i32, %struct.evp_md_ctx_st*)* null, i32 (%struct.evp_pkey_ctx_st*)* null, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)* @pkey_rsa_encrypt, i32 (%struct.evp_pkey_ctx_st*)* null, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)* @pkey_rsa_decrypt, i32 (%struct.evp_pkey_ctx_st*)* null, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*)* null, i32 (%struct.evp_pkey_ctx_st*, i32, i32, i8*)* @pkey_rsa_ctrl, i32 (%struct.evp_pkey_ctx_st*, i8*, i8*)* @pkey_rsa_ctrl_str, i32 (%struct.evp_md_ctx_st*, i8*, i64*, i8*, i64)* null, i32 (%struct.evp_md_ctx_st*, i8*, i64, i8*, i64)* null, i32 (%struct.evp_pkey_st*)* null, i32 (%struct.evp_pkey_st*)* null, i32 (%struct.evp_pkey_st*)* null, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_md_ctx_st*)* null }, align 8
@rsa_pss_pkey_meth = internal constant %struct.evp_pkey_method_st { i32 912, i32 2, i32 (%struct.evp_pkey_ctx_st*)* @pkey_rsa_init, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st*)* @pkey_rsa_copy, void (%struct.evp_pkey_ctx_st*)* @pkey_rsa_cleanup, i32 (%struct.evp_pkey_ctx_st*)* null, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_st*)* null, i32 (%struct.evp_pkey_ctx_st*)* null, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_st*)* @pkey_rsa_keygen, i32 (%struct.evp_pkey_ctx_st*)* @pkey_pss_init, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)* @pkey_rsa_sign, i32 (%struct.evp_pkey_ctx_st*)* @pkey_pss_init, i32 (%struct.evp_pkey_ctx_st*, i8*, i64, i8*, i64)* @pkey_rsa_verify, i32 (%struct.evp_pkey_ctx_st*)* null, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)* null, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_md_ctx_st*)* null, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, %struct.evp_md_ctx_st*)* null, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_md_ctx_st*)* null, i32 (%struct.evp_pkey_ctx_st*, i8*, i32, %struct.evp_md_ctx_st*)* null, i32 (%struct.evp_pkey_ctx_st*)* null, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)* null, i32 (%struct.evp_pkey_ctx_st*)* null, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)* null, i32 (%struct.evp_pkey_ctx_st*)* null, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*)* null, i32 (%struct.evp_pkey_ctx_st*, i32, i32, i8*)* @pkey_rsa_ctrl, i32 (%struct.evp_pkey_ctx_st*, i8*, i8*)* @pkey_rsa_ctrl_str, i32 (%struct.evp_md_ctx_st*, i8*, i64*, i8*, i64)* null, i32 (%struct.evp_md_ctx_st*, i8*, i64, i8*, i64)* null, i32 (%struct.evp_pkey_st*)* null, i32 (%struct.evp_pkey_st*)* null, i32 (%struct.evp_pkey_st*)* null, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_md_ctx_st*)* null }, align 8
@.str = private unnamed_addr constant [23 x i8] c"crypto/rsa/rsa_pmeth.c\00", align 1
@__func__.pkey_rsa_sign = private unnamed_addr constant [14 x i8] c"pkey_rsa_sign\00", align 1
@__func__.setup_tbuf = private unnamed_addr constant [11 x i8] c"setup_tbuf\00", align 1
@__func__.pkey_rsa_verify = private unnamed_addr constant [16 x i8] c"pkey_rsa_verify\00", align 1
@__func__.pkey_rsa_verifyrecover = private unnamed_addr constant [23 x i8] c"pkey_rsa_verifyrecover\00", align 1
@__func__.pkey_rsa_ctrl = private unnamed_addr constant [14 x i8] c"pkey_rsa_ctrl\00", align 1
@__func__.check_padding_md = private unnamed_addr constant [17 x i8] c"check_padding_md\00", align 1
@__func__.pkey_rsa_ctrl_str = private unnamed_addr constant [18 x i8] c"pkey_rsa_ctrl_str\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"rsa_padding_mode\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"pkcs1\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"oeap\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"oaep\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"x931\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"pss\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"rsa_pss_saltlen\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"digest\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"max\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"auto\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"rsa_keygen_bits\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"rsa_keygen_pubexp\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"rsa_keygen_primes\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"rsa_mgf1_md\00", align 1
@.str.16 = private unnamed_addr constant [23 x i8] c"rsa_pss_keygen_mgf1_md\00", align 1
@.str.17 = private unnamed_addr constant [18 x i8] c"rsa_pss_keygen_md\00", align 1
@.str.18 = private unnamed_addr constant [23 x i8] c"rsa_pss_keygen_saltlen\00", align 1
@.str.19 = private unnamed_addr constant [12 x i8] c"rsa_oaep_md\00", align 1
@.str.20 = private unnamed_addr constant [15 x i8] c"rsa_oaep_label\00", align 1
@__func__.pkey_pss_init = private unnamed_addr constant [14 x i8] c"pkey_pss_init\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.evp_pkey_method_st* @ossl_rsa_pkey_method() local_unnamed_addr #0 {
entry:
  ret %struct.evp_pkey_method_st* @rsa_pkey_meth
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.evp_pkey_method_st* @ossl_rsa_pss_pkey_method() local_unnamed_addr #0 {
entry:
  ret %struct.evp_pkey_method_st* @rsa_pss_pkey_meth
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @pkey_rsa_init(%struct.evp_pkey_ctx_st* nocapture noundef %ctx) #1 {
entry:
  %call = tail call i8* @CRYPTO_zalloc(i64 noundef 80, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 62) #8
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %nbits = bitcast i8* %call to i32*
  store i32 2048, i32* %nbits, align 8, !tbaa !4
  %primes = getelementptr inbounds i8, i8* %call, i64 16
  %0 = bitcast i8* %primes to i32*
  store i32 2, i32* %0, align 8, !tbaa !11
  %pmeth = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 12
  %1 = load %struct.evp_pkey_method_st*, %struct.evp_pkey_method_st** %pmeth, align 8, !tbaa !12
  %pkey_id = getelementptr inbounds %struct.evp_pkey_method_st, %struct.evp_pkey_method_st* %1, i64 0, i32 0
  %2 = load i32, i32* %pkey_id, align 8, !tbaa !15
  %cmp1 = icmp eq i32 %2, 912
  %pad_mode = getelementptr inbounds i8, i8* %call, i64 28
  %3 = bitcast i8* %pad_mode to i32*
  %. = select i1 %cmp1, i32 6, i32 1
  store i32 %., i32* %3, align 4, !tbaa !17
  %saltlen = getelementptr inbounds i8, i8* %call, i64 48
  %4 = bitcast i8* %saltlen to i32*
  store i32 -2, i32* %4, align 8, !tbaa !18
  %min_saltlen = getelementptr inbounds i8, i8* %call, i64 52
  %5 = bitcast i8* %min_saltlen to i32*
  store i32 -1, i32* %5, align 4, !tbaa !19
  %data = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 16
  store i8* %call, i8** %data, align 8, !tbaa !20
  %gentmp = getelementptr inbounds i8, i8* %call, i64 20
  %keygen_info = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 9
  %6 = bitcast i32** %keygen_info to i8**
  store i8* %gentmp, i8** %6, align 8, !tbaa !21
  %keygen_info_count = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 10
  store i32 2, i32* %keygen_info_count, align 8, !tbaa !22
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @pkey_rsa_copy(%struct.evp_pkey_ctx_st* nocapture noundef %dst, %struct.evp_pkey_ctx_st* nocapture noundef readonly %src) #1 {
entry:
  %call = tail call i32 @pkey_rsa_init(%struct.evp_pkey_ctx_st* noundef %dst) #9
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %src, i64 0, i32 16
  %0 = bitcast i8** %data to %struct.RSA_PKEY_CTX**
  %1 = load %struct.RSA_PKEY_CTX*, %struct.RSA_PKEY_CTX** %0, align 8, !tbaa !20
  %data1 = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %dst, i64 0, i32 16
  %2 = bitcast i8** %data1 to %struct.RSA_PKEY_CTX**
  %3 = load %struct.RSA_PKEY_CTX*, %struct.RSA_PKEY_CTX** %2, align 8, !tbaa !20
  %nbits = getelementptr inbounds %struct.RSA_PKEY_CTX, %struct.RSA_PKEY_CTX* %1, i64 0, i32 0
  %4 = load i32, i32* %nbits, align 8, !tbaa !4
  %nbits2 = getelementptr inbounds %struct.RSA_PKEY_CTX, %struct.RSA_PKEY_CTX* %3, i64 0, i32 0
  store i32 %4, i32* %nbits2, align 8, !tbaa !4
  %pub_exp = getelementptr inbounds %struct.RSA_PKEY_CTX, %struct.RSA_PKEY_CTX* %1, i64 0, i32 1
  %5 = load %struct.bignum_st*, %struct.bignum_st** %pub_exp, align 8, !tbaa !23
  %tobool3.not = icmp eq %struct.bignum_st* %5, null
  br i1 %tobool3.not, label %if.end12, label %if.then4

if.then4:                                         ; preds = %if.end
  %call6 = tail call %struct.bignum_st* @BN_dup(%struct.bignum_st* noundef nonnull %5) #8
  %pub_exp7 = getelementptr inbounds %struct.RSA_PKEY_CTX, %struct.RSA_PKEY_CTX* %3, i64 0, i32 1
  store %struct.bignum_st* %call6, %struct.bignum_st** %pub_exp7, align 8, !tbaa !23
  %tobool9.not = icmp eq %struct.bignum_st* %call6, null
  br i1 %tobool9.not, label %cleanup, label %if.end12

if.end12:                                         ; preds = %if.then4, %if.end
  %pad_mode = getelementptr inbounds %struct.RSA_PKEY_CTX, %struct.RSA_PKEY_CTX* %1, i64 0, i32 4
  %6 = load i32, i32* %pad_mode, align 4, !tbaa !17
  %pad_mode13 = getelementptr inbounds %struct.RSA_PKEY_CTX, %struct.RSA_PKEY_CTX* %3, i64 0, i32 4
  store i32 %6, i32* %pad_mode13, align 4, !tbaa !17
  %md = getelementptr inbounds %struct.RSA_PKEY_CTX, %struct.RSA_PKEY_CTX* %1, i64 0, i32 5
  %md14 = getelementptr inbounds %struct.RSA_PKEY_CTX, %struct.RSA_PKEY_CTX* %3, i64 0, i32 5
  %7 = bitcast %struct.evp_md_st** %md to <2 x %struct.evp_md_st*>*
  %8 = load <2 x %struct.evp_md_st*>, <2 x %struct.evp_md_st*>* %7, align 8, !tbaa !24
  %9 = bitcast %struct.evp_md_st** %md14 to <2 x %struct.evp_md_st*>*
  store <2 x %struct.evp_md_st*> %8, <2 x %struct.evp_md_st*>* %9, align 8, !tbaa !24
  %saltlen = getelementptr inbounds %struct.RSA_PKEY_CTX, %struct.RSA_PKEY_CTX* %1, i64 0, i32 7
  %10 = load i32, i32* %saltlen, align 8, !tbaa !18
  %saltlen16 = getelementptr inbounds %struct.RSA_PKEY_CTX, %struct.RSA_PKEY_CTX* %3, i64 0, i32 7
  store i32 %10, i32* %saltlen16, align 8, !tbaa !18
  %oaep_label = getelementptr inbounds %struct.RSA_PKEY_CTX, %struct.RSA_PKEY_CTX* %1, i64 0, i32 10
  %11 = load i8*, i8** %oaep_label, align 8, !tbaa !25
  %tobool17.not = icmp eq i8* %11, null
  br i1 %tobool17.not, label %cleanup, label %if.then18

if.then18:                                        ; preds = %if.end12
  %oaep_label19 = getelementptr inbounds %struct.RSA_PKEY_CTX, %struct.RSA_PKEY_CTX* %3, i64 0, i32 10
  %12 = load i8*, i8** %oaep_label19, align 8, !tbaa !25
  tail call void @CRYPTO_free(i8* noundef %12, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 101) #8
  %13 = load i8*, i8** %oaep_label, align 8, !tbaa !25
  %oaep_labellen = getelementptr inbounds %struct.RSA_PKEY_CTX, %struct.RSA_PKEY_CTX* %1, i64 0, i32 11
  %14 = load i64, i64* %oaep_labellen, align 8, !tbaa !26
  %call21 = tail call i8* @CRYPTO_memdup(i8* noundef %13, i64 noundef %14, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 102) #8
  store i8* %call21, i8** %oaep_label19, align 8, !tbaa !25
  %tobool24.not = icmp eq i8* %call21, null
  br i1 %tobool24.not, label %cleanup, label %if.end26

if.end26:                                         ; preds = %if.then18
  %15 = load i64, i64* %oaep_labellen, align 8, !tbaa !26
  %oaep_labellen28 = getelementptr inbounds %struct.RSA_PKEY_CTX, %struct.RSA_PKEY_CTX* %3, i64 0, i32 11
  store i64 %15, i64* %oaep_labellen28, align 8, !tbaa !26
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.end26, %if.then18, %if.then4, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 0, %if.then4 ], [ 0, %if.then18 ], [ 1, %if.end26 ], [ 1, %if.end12 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal void @pkey_rsa_cleanup(%struct.evp_pkey_ctx_st* nocapture noundef readonly %ctx) #1 {
entry:
  %data = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 16
  %0 = load i8*, i8** %data, align 8, !tbaa !20
  %tobool.not = icmp eq i8* %0, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %pub_exp = getelementptr inbounds i8, i8* %0, i64 8
  %1 = bitcast i8* %pub_exp to %struct.bignum_st**
  %2 = load %struct.bignum_st*, %struct.bignum_st** %1, align 8, !tbaa !23
  tail call void @BN_free(%struct.bignum_st* noundef %2) #8
  %tbuf = getelementptr inbounds i8, i8* %0, i64 56
  %3 = bitcast i8* %tbuf to i8**
  %4 = load i8*, i8** %3, align 8, !tbaa !27
  tail call void @CRYPTO_free(i8* noundef %4, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 127) #8
  %oaep_label = getelementptr inbounds i8, i8* %0, i64 64
  %5 = bitcast i8* %oaep_label to i8**
  %6 = load i8*, i8** %5, align 8, !tbaa !25
  tail call void @CRYPTO_free(i8* noundef %6, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 128) #8
  tail call void @CRYPTO_free(i8* noundef nonnull %0, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 129) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @pkey_rsa_keygen(%struct.evp_pkey_ctx_st* noundef %ctx, %struct.evp_pkey_st* noundef %pkey) #1 {
entry:
  %data = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 16
  %0 = bitcast i8** %data to %struct.RSA_PKEY_CTX**
  %1 = load %struct.RSA_PKEY_CTX*, %struct.RSA_PKEY_CTX** %0, align 8, !tbaa !20
  %pub_exp = getelementptr inbounds %struct.RSA_PKEY_CTX, %struct.RSA_PKEY_CTX* %1, i64 0, i32 1
  %2 = load %struct.bignum_st*, %struct.bignum_st** %pub_exp, align 8, !tbaa !23
  %cmp = icmp eq %struct.bignum_st* %2, null
  br i1 %cmp, label %if.then, label %if.end7

if.then:                                          ; preds = %entry
  %call = tail call %struct.bignum_st* @BN_new() #8
  store %struct.bignum_st* %call, %struct.bignum_st** %pub_exp, align 8, !tbaa !23
  %cmp3 = icmp eq %struct.bignum_st* %call, null
  br i1 %cmp3, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %call5 = tail call i32 @BN_set_word(%struct.bignum_st* noundef nonnull %call, i64 noundef 65537) #8
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %cleanup, label %if.end7

if.end7:                                          ; preds = %lor.lhs.false, %entry
  %call8 = tail call %struct.rsa_st* @RSA_new() #8
  %cmp9 = icmp eq %struct.rsa_st* %call8, null
  br i1 %cmp9, label %cleanup, label %if.end11

if.end11:                                         ; preds = %if.end7
  %pkey_gencb = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 8
  %pkey_gencb12 = bitcast {}** %pkey_gencb to i32 (%struct.evp_pkey_ctx_st*)**
  %3 = load i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*)** %pkey_gencb12, align 8, !tbaa !28
  %tobool13.not = icmp eq i32 (%struct.evp_pkey_ctx_st*)* %3, null
  br i1 %tobool13.not, label %if.end19, label %if.then14

if.then14:                                        ; preds = %if.end11
  %call15 = tail call %struct.bn_gencb_st* @BN_GENCB_new() #8
  %cmp16 = icmp eq %struct.bn_gencb_st* %call15, null
  br i1 %cmp16, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.then14
  tail call void @RSA_free(%struct.rsa_st* noundef nonnull %call8) #8
  br label %cleanup

if.end18:                                         ; preds = %if.then14
  tail call void @evp_pkey_set_cb_translate(%struct.bn_gencb_st* noundef nonnull %call15, %struct.evp_pkey_ctx_st* noundef nonnull %ctx) #8
  br label %if.end19

if.end19:                                         ; preds = %if.end11, %if.end18
  %pcb.0 = phi %struct.bn_gencb_st* [ %call15, %if.end18 ], [ null, %if.end11 ]
  %nbits = getelementptr inbounds %struct.RSA_PKEY_CTX, %struct.RSA_PKEY_CTX* %1, i64 0, i32 0
  %4 = load i32, i32* %nbits, align 8, !tbaa !4
  %primes = getelementptr inbounds %struct.RSA_PKEY_CTX, %struct.RSA_PKEY_CTX* %1, i64 0, i32 2
  %5 = load i32, i32* %primes, align 8, !tbaa !11
  %6 = load %struct.bignum_st*, %struct.bignum_st** %pub_exp, align 8, !tbaa !23
  %call21 = tail call i32 @RSA_generate_multi_prime_key(%struct.rsa_st* noundef nonnull %call8, i32 noundef %4, i32 noundef %5, %struct.bignum_st* noundef %6, %struct.bn_gencb_st* noundef %pcb.0) #8
  tail call void @BN_GENCB_free(%struct.bn_gencb_st* noundef %pcb.0) #8
  %cmp22 = icmp sgt i32 %call21, 0
  br i1 %cmp22, label %land.lhs.true, label %if.else30

land.lhs.true:                                    ; preds = %if.end19
  %call23 = tail call fastcc i32 @rsa_set_pss_param(%struct.rsa_st* noundef nonnull %call8, %struct.evp_pkey_ctx_st* noundef nonnull %ctx) #9
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.then25, label %if.then28

if.then25:                                        ; preds = %land.lhs.true
  tail call void @RSA_free(%struct.rsa_st* noundef nonnull %call8) #8
  br label %cleanup

if.then28:                                        ; preds = %land.lhs.true
  %pmeth = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 12
  %7 = load %struct.evp_pkey_method_st*, %struct.evp_pkey_method_st** %pmeth, align 8, !tbaa !12
  %pkey_id = getelementptr inbounds %struct.evp_pkey_method_st, %struct.evp_pkey_method_st* %7, i64 0, i32 0
  %8 = load i32, i32* %pkey_id, align 8, !tbaa !15
  %9 = bitcast %struct.rsa_st* %call8 to i8*
  %call29 = tail call i32 @EVP_PKEY_assign(%struct.evp_pkey_st* noundef %pkey, i32 noundef %8, i8* noundef nonnull %9) #8
  br label %cleanup

if.else30:                                        ; preds = %if.end19
  tail call void @RSA_free(%struct.rsa_st* noundef nonnull %call8) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then28, %if.else30, %if.end7, %if.then, %lor.lhs.false, %if.then25, %if.then17
  %retval.0 = phi i32 [ 0, %if.then17 ], [ 0, %if.then25 ], [ 0, %lor.lhs.false ], [ 0, %if.then ], [ 0, %if.end7 ], [ %call21, %if.else30 ], [ %call21, %if.then28 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @pkey_rsa_sign(%struct.evp_pkey_ctx_st* nocapture noundef readonly %ctx, i8* noundef %sig, i64* nocapture noundef writeonly %siglen, i8* noundef %tbs, i64 noundef %tbslen) #1 {
entry:
  %sltmp = alloca i32, align 4
  %sltmp49 = alloca i32, align 4
  %data = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 16
  %0 = bitcast i8** %data to %struct.RSA_PKEY_CTX**
  %1 = load %struct.RSA_PKEY_CTX*, %struct.RSA_PKEY_CTX** %0, align 8, !tbaa !20
  %pkey = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 14
  %2 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey, align 8, !tbaa !29
  %call = tail call %struct.rsa_st* @EVP_PKEY_get0_RSA(%struct.evp_pkey_st* noundef %2) #8
  %md = getelementptr inbounds %struct.RSA_PKEY_CTX, %struct.RSA_PKEY_CTX* %1, i64 0, i32 5
  %3 = load %struct.evp_md_st*, %struct.evp_md_st** %md, align 8, !tbaa !30
  %tobool.not = icmp eq %struct.evp_md_st* %3, null
  br i1 %tobool.not, label %if.else84, label %if.then

if.then:                                          ; preds = %entry
  %call2 = tail call i32 @EVP_MD_get_size(%struct.evp_md_st* noundef nonnull %3) #8
  %conv = sext i32 %call2 to i64
  %cmp.not = icmp eq i64 %conv, %tbslen
  br i1 %cmp.not, label %if.end, label %if.then4

if.then4:                                         ; preds = %if.then
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 148, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.pkey_rsa_sign, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 4, i32 noundef 143, i8* noundef null) #8
  br label %cleanup94

if.end:                                           ; preds = %if.then
  %4 = load %struct.evp_md_st*, %struct.evp_md_st** %md, align 8, !tbaa !30
  %call6 = tail call i32 @EVP_MD_get_type(%struct.evp_md_st* noundef %4) #8
  %cmp7 = icmp eq i32 %call6, 95
  br i1 %cmp7, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.end
  %5 = bitcast i32* %sltmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #10
  %pad_mode = getelementptr inbounds %struct.RSA_PKEY_CTX, %struct.RSA_PKEY_CTX* %1, i64 0, i32 4
  %6 = load i32, i32* %pad_mode, align 4, !tbaa !17
  %cmp10.not = icmp eq i32 %6, 1
  br i1 %cmp10.not, label %if.end13, label %cleanup.thread

if.end13:                                         ; preds = %if.then9
  %conv14 = trunc i64 %tbslen to i32
  %call15 = call i32 @RSA_sign_ASN1_OCTET_STRING(i32 noundef 0, i8* noundef %tbs, i32 noundef %conv14, i8* noundef %sig, i32* noundef nonnull %sltmp, %struct.rsa_st* noundef %call) #8
  %cmp16 = icmp slt i32 %call15, 1
  br i1 %cmp16, label %cleanup.thread, label %cleanup

cleanup.thread:                                   ; preds = %if.then9, %if.end13
  %retval.0.ph = phi i32 [ %call15, %if.end13 ], [ -1, %if.then9 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #10
  br label %cleanup94

cleanup:                                          ; preds = %if.end13
  %7 = load i32, i32* %sltmp, align 4, !tbaa !31
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #10
  br label %if.end88

if.else:                                          ; preds = %if.end
  %pad_mode20 = getelementptr inbounds %struct.RSA_PKEY_CTX, %struct.RSA_PKEY_CTX* %1, i64 0, i32 4
  %8 = load i32, i32* %pad_mode20, align 4, !tbaa !17
  switch i32 %8, label %cleanup94 [
    i32 5, label %if.then23
    i32 1, label %if.then48
    i32 6, label %if.then65
  ]

if.then23:                                        ; preds = %if.else
  %call24 = tail call i32 @RSA_size(%struct.rsa_st* noundef %call) #8
  %conv25 = sext i32 %call24 to i64
  %add = add i64 %tbslen, 1
  %cmp26 = icmp ugt i64 %add, %conv25
  br i1 %cmp26, label %if.then28, label %if.end29

if.then28:                                        ; preds = %if.then23
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 163, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.pkey_rsa_sign, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 4, i32 noundef 120, i8* noundef null) #8
  br label %cleanup94

if.end29:                                         ; preds = %if.then23
  %call30 = tail call fastcc i32 @setup_tbuf(%struct.RSA_PKEY_CTX* noundef nonnull %1, %struct.evp_pkey_ctx_st* noundef nonnull %ctx) #9
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.then32, label %if.end33

if.then32:                                        ; preds = %if.end29
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 167, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.pkey_rsa_sign, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 4, i32 noundef 786688, i8* noundef null) #8
  br label %cleanup94

if.end33:                                         ; preds = %if.end29
  %tbuf = getelementptr inbounds %struct.RSA_PKEY_CTX, %struct.RSA_PKEY_CTX* %1, i64 0, i32 9
  %9 = load i8*, i8** %tbuf, align 8, !tbaa !27
  %call34 = tail call i8* @memcpy(i8* noundef %9, i8* noundef %tbs, i64 noundef %tbslen) #8
  %10 = load %struct.evp_md_st*, %struct.evp_md_st** %md, align 8, !tbaa !30
  %call36 = tail call i32 @EVP_MD_get_type(%struct.evp_md_st* noundef %10) #8
  %call37 = tail call i32 @RSA_X931_hash_id(i32 noundef %call36) #8
  %conv38 = trunc i32 %call37 to i8
  %11 = load i8*, i8** %tbuf, align 8, !tbaa !27
  %arrayidx = getelementptr inbounds i8, i8* %11, i64 %tbslen
  store i8 %conv38, i8* %arrayidx, align 1, !tbaa !32
  %conv41 = trunc i64 %add to i32
  %12 = load i8*, i8** %tbuf, align 8, !tbaa !27
  %call43 = tail call i32 @RSA_private_encrypt(i32 noundef %conv41, i8* noundef %12, i8* noundef %sig, %struct.rsa_st* noundef %call, i32 noundef 5) #8
  br label %if.end88

if.then48:                                        ; preds = %if.else
  %13 = bitcast i32* %sltmp49 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %13) #10
  %14 = load %struct.evp_md_st*, %struct.evp_md_st** %md, align 8, !tbaa !30
  %call51 = tail call i32 @EVP_MD_get_type(%struct.evp_md_st* noundef %14) #8
  %conv52 = trunc i64 %tbslen to i32
  %call53 = call i32 @RSA_sign(i32 noundef %call51, i8* noundef %tbs, i32 noundef %conv52, i8* noundef %sig, i32* noundef nonnull %sltmp49, %struct.rsa_st* noundef %call) #8
  %cmp54 = icmp slt i32 %call53, 1
  %15 = load i32, i32* %sltmp49, align 4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %13) #10
  br i1 %cmp54, label %cleanup94, label %if.end88

if.then65:                                        ; preds = %if.else
  %call66 = tail call fastcc i32 @setup_tbuf(%struct.RSA_PKEY_CTX* noundef nonnull %1, %struct.evp_pkey_ctx_st* noundef nonnull %ctx) #9
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %cleanup94, label %if.end69

if.end69:                                         ; preds = %if.then65
  %tbuf70 = getelementptr inbounds %struct.RSA_PKEY_CTX, %struct.RSA_PKEY_CTX* %1, i64 0, i32 9
  %16 = load i8*, i8** %tbuf70, align 8, !tbaa !27
  %17 = load %struct.evp_md_st*, %struct.evp_md_st** %md, align 8, !tbaa !30
  %mgf1md = getelementptr inbounds %struct.RSA_PKEY_CTX, %struct.RSA_PKEY_CTX* %1, i64 0, i32 6
  %18 = load %struct.evp_md_st*, %struct.evp_md_st** %mgf1md, align 8, !tbaa !33
  %saltlen = getelementptr inbounds %struct.RSA_PKEY_CTX, %struct.RSA_PKEY_CTX* %1, i64 0, i32 7
  %19 = load i32, i32* %saltlen, align 8, !tbaa !18
  %call72 = tail call i32 @RSA_padding_add_PKCS1_PSS_mgf1(%struct.rsa_st* noundef %call, i8* noundef %16, i8* noundef %tbs, %struct.evp_md_st* noundef %17, %struct.evp_md_st* noundef %18, i32 noundef %19) #8
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %cleanup94, label %if.end75

if.end75:                                         ; preds = %if.end69
  %call76 = tail call i32 @RSA_size(%struct.rsa_st* noundef %call) #8
  %20 = load i8*, i8** %tbuf70, align 8, !tbaa !27
  %call78 = tail call i32 @RSA_private_encrypt(i32 noundef %call76, i8* noundef %20, i8* noundef %sig, %struct.rsa_st* noundef %call, i32 noundef 3) #8
  br label %if.end88

if.else84:                                        ; preds = %entry
  %conv85 = trunc i64 %tbslen to i32
  %pad_mode86 = getelementptr inbounds %struct.RSA_PKEY_CTX, %struct.RSA_PKEY_CTX* %1, i64 0, i32 4
  %21 = load i32, i32* %pad_mode86, align 4, !tbaa !17
  %call87 = tail call i32 @RSA_private_encrypt(i32 noundef %conv85, i8* noundef %tbs, i8* noundef %sig, %struct.rsa_st* noundef %call, i32 noundef %21) #8
  br label %if.end88

if.end88:                                         ; preds = %cleanup, %if.end75, %if.then48, %if.end33, %if.else84
  %ret.2 = phi i32 [ %7, %cleanup ], [ %call43, %if.end33 ], [ %15, %if.then48 ], [ %call78, %if.end75 ], [ %call87, %if.else84 ]
  %cmp89 = icmp slt i32 %ret.2, 0
  br i1 %cmp89, label %cleanup94, label %if.end92

if.end92:                                         ; preds = %if.end88
  %conv93156 = zext i32 %ret.2 to i64
  store i64 %conv93156, i64* %siglen, align 8, !tbaa !34
  br label %cleanup94

cleanup94:                                        ; preds = %cleanup.thread, %if.end88, %if.else, %if.end69, %if.then65, %if.then48, %if.end92, %if.then32, %if.then28, %if.then4
  %retval.2 = phi i32 [ -1, %if.then4 ], [ 1, %if.end92 ], [ -1, %if.then28 ], [ -1, %if.then32 ], [ %call53, %if.then48 ], [ -1, %if.then65 ], [ -1, %if.end69 ], [ -1, %if.else ], [ %ret.2, %if.end88 ], [ %retval.0.ph, %cleanup.thread ]
  ret i32 %retval.2
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @pkey_rsa_verify(%struct.evp_pkey_ctx_st* nocapture noundef readonly %ctx, i8* noundef %sig, i64 noundef %siglen, i8* noundef %tbs, i64 noundef %tbslen) #1 {
entry:
  %rslen = alloca i64, align 8
  %data = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 16
  %0 = bitcast i8** %data to %struct.RSA_PKEY_CTX**
  %1 = load %struct.RSA_PKEY_CTX*, %struct.RSA_PKEY_CTX** %0, align 8, !tbaa !20
  %pkey = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 14
  %2 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey, align 8, !tbaa !29
  %call = tail call %struct.rsa_st* @EVP_PKEY_get0_RSA(%struct.evp_pkey_st* noundef %2) #8
  %3 = bitcast i64* %rslen to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #10
  %md = getelementptr inbounds %struct.RSA_PKEY_CTX, %struct.RSA_PKEY_CTX* %1, i64 0, i32 5
  %4 = load %struct.evp_md_st*, %struct.evp_md_st** %md, align 8, !tbaa !30
  %tobool.not = icmp eq %struct.evp_md_st* %4, null
  br i1 %tobool.not, label %if.else45, label %if.then

if.then:                                          ; preds = %entry
  %pad_mode = getelementptr inbounds %struct.RSA_PKEY_CTX, %struct.RSA_PKEY_CTX* %1, i64 0, i32 4
  %5 = load i32, i32* %pad_mode, align 4, !tbaa !17
  %cmp = icmp eq i32 %5, 1
  br i1 %cmp, label %if.then1, label %if.end

if.then1:                                         ; preds = %if.then
  %call3 = tail call i32 @EVP_MD_get_type(%struct.evp_md_st* noundef nonnull %4) #8
  %conv = trunc i64 %tbslen to i32
  %conv4 = trunc i64 %siglen to i32
  %call5 = tail call i32 @RSA_verify(i32 noundef %call3, i8* noundef %tbs, i32 noundef %conv, i8* noundef %sig, i32 noundef %conv4, %struct.rsa_st* noundef %call) #8
  br label %cleanup67

if.end:                                           ; preds = %if.then
  %call7 = tail call i32 @EVP_MD_get_size(%struct.evp_md_st* noundef nonnull %4) #8
  %conv8 = sext i32 %call7 to i64
  %cmp9.not = icmp eq i64 %conv8, %tbslen
  br i1 %cmp9.not, label %if.end12, label %if.then11

if.then11:                                        ; preds = %if.end
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 273, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.pkey_rsa_verify, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 4, i32 noundef 143, i8* noundef null) #8
  br label %cleanup67

if.end12:                                         ; preds = %if.end
  %6 = load i32, i32* %pad_mode, align 4, !tbaa !17
  switch i32 %6, label %cleanup67 [
    i32 5, label %if.then16
    i32 6, label %if.then25
  ]

if.then16:                                        ; preds = %if.end12
  %call17 = call i32 @pkey_rsa_verifyrecover(%struct.evp_pkey_ctx_st* noundef nonnull %ctx, i8* noundef null, i64* noundef nonnull %rslen, i8* noundef %sig, i64 noundef %siglen) #9
  %cmp18 = icmp slt i32 %call17, 1
  br i1 %cmp18, label %cleanup67, label %if.then16.if.end59_crit_edge

if.then16.if.end59_crit_edge:                     ; preds = %if.then16
  %.pre = load i64, i64* %rslen, align 8, !tbaa !34
  br label %if.end59

if.then25:                                        ; preds = %if.end12
  %call26 = tail call fastcc i32 @setup_tbuf(%struct.RSA_PKEY_CTX* noundef nonnull %1, %struct.evp_pkey_ctx_st* noundef nonnull %ctx) #9
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %cleanup67, label %if.end29

if.end29:                                         ; preds = %if.then25
  %conv30 = trunc i64 %siglen to i32
  %tbuf = getelementptr inbounds %struct.RSA_PKEY_CTX, %struct.RSA_PKEY_CTX* %1, i64 0, i32 9
  %7 = load i8*, i8** %tbuf, align 8, !tbaa !27
  %call31 = tail call i32 @RSA_public_decrypt(i32 noundef %conv30, i8* noundef %sig, i8* noundef %7, %struct.rsa_st* noundef %call, i32 noundef 3) #8
  %cmp32 = icmp slt i32 %call31, 1
  br i1 %cmp32, label %cleanup67, label %if.end35

if.end35:                                         ; preds = %if.end29
  %8 = load %struct.evp_md_st*, %struct.evp_md_st** %md, align 8, !tbaa !30
  %mgf1md = getelementptr inbounds %struct.RSA_PKEY_CTX, %struct.RSA_PKEY_CTX* %1, i64 0, i32 6
  %9 = load %struct.evp_md_st*, %struct.evp_md_st** %mgf1md, align 8, !tbaa !33
  %10 = load i8*, i8** %tbuf, align 8, !tbaa !27
  %saltlen = getelementptr inbounds %struct.RSA_PKEY_CTX, %struct.RSA_PKEY_CTX* %1, i64 0, i32 7
  %11 = load i32, i32* %saltlen, align 8, !tbaa !18
  %call38 = tail call i32 @RSA_verify_PKCS1_PSS_mgf1(%struct.rsa_st* noundef %call, i8* noundef %tbs, %struct.evp_md_st* noundef %8, %struct.evp_md_st* noundef %9, i8* noundef %10, i32 noundef %11) #8
  %cmp39 = icmp sgt i32 %call38, 0
  %. = zext i1 %cmp39 to i32
  br label %cleanup67

if.else45:                                        ; preds = %entry
  %call46 = tail call fastcc i32 @setup_tbuf(%struct.RSA_PKEY_CTX* noundef nonnull %1, %struct.evp_pkey_ctx_st* noundef nonnull %ctx) #9
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %cleanup67, label %if.end49

if.end49:                                         ; preds = %if.else45
  %conv50 = trunc i64 %siglen to i32
  %tbuf51 = getelementptr inbounds %struct.RSA_PKEY_CTX, %struct.RSA_PKEY_CTX* %1, i64 0, i32 9
  %12 = load i8*, i8** %tbuf51, align 8, !tbaa !27
  %pad_mode52 = getelementptr inbounds %struct.RSA_PKEY_CTX, %struct.RSA_PKEY_CTX* %1, i64 0, i32 4
  %13 = load i32, i32* %pad_mode52, align 4, !tbaa !17
  %call53 = tail call i32 @RSA_public_decrypt(i32 noundef %conv50, i8* noundef %sig, i8* noundef %12, %struct.rsa_st* noundef %call, i32 noundef %13) #8
  %conv54 = sext i32 %call53 to i64
  %cmp55 = icmp eq i32 %call53, 0
  br i1 %cmp55, label %cleanup67, label %if.end59

if.end59:                                         ; preds = %if.then16.if.end59_crit_edge, %if.end49
  %14 = phi i64 [ %.pre, %if.then16.if.end59_crit_edge ], [ %conv54, %if.end49 ]
  %cmp60.not = icmp eq i64 %14, %tbslen
  br i1 %cmp60.not, label %lor.lhs.false, label %cleanup67

lor.lhs.false:                                    ; preds = %if.end59
  %tbuf62 = getelementptr inbounds %struct.RSA_PKEY_CTX, %struct.RSA_PKEY_CTX* %1, i64 0, i32 9
  %15 = load i8*, i8** %tbuf62, align 8, !tbaa !27
  %call63 = tail call i32 @memcmp(i8* noundef %tbs, i8* noundef %15, i64 noundef %tbslen) #11
  %tobool64.not = icmp eq i32 %call63, 0
  %spec.select = zext i1 %tobool64.not to i32
  br label %cleanup67

cleanup67:                                        ; preds = %lor.lhs.false, %if.end59, %if.end49, %if.else45, %if.end12, %if.then25, %if.end29, %if.end35, %if.then16, %if.then11, %if.then1
  %retval.1 = phi i32 [ %call5, %if.then1 ], [ -1, %if.then11 ], [ 0, %if.then16 ], [ -1, %if.then25 ], [ 0, %if.end29 ], [ %., %if.end35 ], [ -1, %if.end12 ], [ -1, %if.else45 ], [ 0, %if.end49 ], [ 0, %if.end59 ], [ %spec.select, %lor.lhs.false ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #10
  ret i32 %retval.1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @pkey_rsa_verifyrecover(%struct.evp_pkey_ctx_st* nocapture noundef readonly %ctx, i8* noundef %rout, i64* nocapture noundef writeonly %routlen, i8* noundef %sig, i64 noundef %siglen) #1 {
entry:
  %sltmp = alloca i64, align 8
  %data = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 16
  %0 = bitcast i8** %data to %struct.RSA_PKEY_CTX**
  %1 = load %struct.RSA_PKEY_CTX*, %struct.RSA_PKEY_CTX** %0, align 8, !tbaa !20
  %pkey = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 14
  %2 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey, align 8, !tbaa !29
  %call = tail call %struct.rsa_st* @EVP_PKEY_get0_RSA(%struct.evp_pkey_st* noundef %2) #8
  %md = getelementptr inbounds %struct.RSA_PKEY_CTX, %struct.RSA_PKEY_CTX* %1, i64 0, i32 5
  %3 = load %struct.evp_md_st*, %struct.evp_md_st** %md, align 8, !tbaa !30
  %tobool.not = icmp eq %struct.evp_md_st* %3, null
  br i1 %tobool.not, label %if.else46, label %if.then

if.then:                                          ; preds = %entry
  %pad_mode = getelementptr inbounds %struct.RSA_PKEY_CTX, %struct.RSA_PKEY_CTX* %1, i64 0, i32 4
  %4 = load i32, i32* %pad_mode, align 4, !tbaa !17
  switch i32 %4, label %cleanup56 [
    i32 5, label %if.then1
    i32 1, label %if.then34
  ]

if.then1:                                         ; preds = %if.then
  %call2 = tail call fastcc i32 @setup_tbuf(%struct.RSA_PKEY_CTX* noundef nonnull %1, %struct.evp_pkey_ctx_st* noundef nonnull %ctx) #9
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %cleanup56, label %if.end

if.end:                                           ; preds = %if.then1
  %conv = trunc i64 %siglen to i32
  %tbuf = getelementptr inbounds %struct.RSA_PKEY_CTX, %struct.RSA_PKEY_CTX* %1, i64 0, i32 9
  %5 = load i8*, i8** %tbuf, align 8, !tbaa !27
  %call5 = tail call i32 @RSA_public_decrypt(i32 noundef %conv, i8* noundef %sig, i8* noundef %5, %struct.rsa_st* noundef %call, i32 noundef 5) #8
  %cmp6 = icmp slt i32 %call5, 1
  br i1 %cmp6, label %cleanup56, label %if.end9

if.end9:                                          ; preds = %if.end
  %dec = add nsw i32 %call5, -1
  %6 = load i8*, i8** %tbuf, align 8, !tbaa !27
  %7 = zext i32 %dec to i64
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 %7
  %8 = load i8, i8* %arrayidx, align 1, !tbaa !32
  %conv11 = zext i8 %8 to i32
  %9 = load %struct.evp_md_st*, %struct.evp_md_st** %md, align 8, !tbaa !30
  %call13 = tail call i32 @EVP_MD_get_type(%struct.evp_md_st* noundef %9) #8
  %call14 = tail call i32 @RSA_X931_hash_id(i32 noundef %call13) #8
  %cmp15.not = icmp eq i32 %call14, %conv11
  br i1 %cmp15.not, label %if.end18, label %if.then17

if.then17:                                        ; preds = %if.end9
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 226, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.pkey_rsa_verifyrecover, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 4, i32 noundef 100, i8* noundef null) #8
  br label %cleanup56

if.end18:                                         ; preds = %if.end9
  %10 = load %struct.evp_md_st*, %struct.evp_md_st** %md, align 8, !tbaa !30
  %call20 = tail call i32 @EVP_MD_get_size(%struct.evp_md_st* noundef %10) #8
  %cmp21.not = icmp eq i32 %dec, %call20
  br i1 %cmp21.not, label %if.end24, label %if.then23

if.then23:                                        ; preds = %if.end18
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 230, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.pkey_rsa_verifyrecover, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 4, i32 noundef 143, i8* noundef null) #8
  br label %cleanup56

if.end24:                                         ; preds = %if.end18
  %tobool25.not = icmp eq i8* %rout, null
  br i1 %tobool25.not, label %if.end54, label %if.then26

if.then26:                                        ; preds = %if.end24
  %11 = load i8*, i8** %tbuf, align 8, !tbaa !27
  %call29 = tail call i8* @memcpy(i8* noundef nonnull %rout, i8* noundef %11, i64 noundef %7) #8
  br label %if.end54

if.then34:                                        ; preds = %if.then
  %12 = bitcast i64* %sltmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %12) #10
  %call36 = tail call i32 @EVP_MD_get_type(%struct.evp_md_st* noundef nonnull %3) #8
  %call37 = call i32 @ossl_rsa_verify(i32 noundef %call36, i8* noundef null, i32 noundef 0, i8* noundef %rout, i64* noundef nonnull %sltmp, i8* noundef %sig, i64 noundef %siglen, %struct.rsa_st* noundef %call) #8
  %cmp38 = icmp slt i32 %call37, 1
  %13 = load i64, i64* %sltmp, align 8
  %conv42 = trunc i64 %13 to i32
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %12) #10
  br i1 %cmp38, label %cleanup56, label %if.end50

if.else46:                                        ; preds = %entry
  %conv47 = trunc i64 %siglen to i32
  %pad_mode48 = getelementptr inbounds %struct.RSA_PKEY_CTX, %struct.RSA_PKEY_CTX* %1, i64 0, i32 4
  %14 = load i32, i32* %pad_mode48, align 4, !tbaa !17
  %call49 = tail call i32 @RSA_public_decrypt(i32 noundef %conv47, i8* noundef %sig, i8* noundef %rout, %struct.rsa_st* noundef %call, i32 noundef %14) #8
  br label %if.end50

if.end50:                                         ; preds = %if.then34, %if.else46
  %ret.1 = phi i32 [ %conv42, %if.then34 ], [ %call49, %if.else46 ]
  %cmp51 = icmp slt i32 %ret.1, 0
  br i1 %cmp51, label %cleanup56, label %if.end50.if.end54_crit_edge

if.end50.if.end54_crit_edge:                      ; preds = %if.end50
  %.pre = zext i32 %ret.1 to i64
  br label %if.end54

if.end54:                                         ; preds = %if.end50.if.end54_crit_edge, %if.end24, %if.then26
  %conv5594.pre-phi = phi i64 [ %.pre, %if.end50.if.end54_crit_edge ], [ %7, %if.end24 ], [ %7, %if.then26 ]
  store i64 %conv5594.pre-phi, i64* %routlen, align 8, !tbaa !34
  br label %cleanup56

cleanup56:                                        ; preds = %if.end50, %if.then, %if.end, %if.then1, %if.then34, %if.end54, %if.then23, %if.then17
  %retval.1 = phi i32 [ 0, %if.then17 ], [ 0, %if.then23 ], [ 1, %if.end54 ], [ 0, %if.then34 ], [ -1, %if.then1 ], [ 0, %if.end ], [ -1, %if.then ], [ %ret.1, %if.end50 ]
  ret i32 %retval.1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @pkey_rsa_encrypt(%struct.evp_pkey_ctx_st* nocapture noundef readonly %ctx, i8* noundef %out, i64* nocapture noundef writeonly %outlen, i8* noundef %in, i64 noundef %inlen) #1 {
entry:
  %data = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 16
  %0 = bitcast i8** %data to %struct.RSA_PKEY_CTX**
  %1 = load %struct.RSA_PKEY_CTX*, %struct.RSA_PKEY_CTX** %0, align 8, !tbaa !20
  %pkey = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 14
  %2 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey, align 8, !tbaa !29
  %call = tail call %struct.rsa_st* @EVP_PKEY_get0_RSA(%struct.evp_pkey_st* noundef %2) #8
  %pad_mode = getelementptr inbounds %struct.RSA_PKEY_CTX, %struct.RSA_PKEY_CTX* %1, i64 0, i32 4
  %3 = load i32, i32* %pad_mode, align 4, !tbaa !17
  %cmp = icmp eq i32 %3, 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call1 = tail call i32 @RSA_size(%struct.rsa_st* noundef %call) #8
  %call2 = tail call fastcc i32 @setup_tbuf(%struct.RSA_PKEY_CTX* noundef nonnull %1, %struct.evp_pkey_ctx_st* noundef nonnull %ctx) #9
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %cleanup20, label %if.end

if.end:                                           ; preds = %if.then
  %tbuf = getelementptr inbounds %struct.RSA_PKEY_CTX, %struct.RSA_PKEY_CTX* %1, i64 0, i32 9
  %4 = load i8*, i8** %tbuf, align 8, !tbaa !27
  %conv = trunc i64 %inlen to i32
  %oaep_label = getelementptr inbounds %struct.RSA_PKEY_CTX, %struct.RSA_PKEY_CTX* %1, i64 0, i32 10
  %5 = load i8*, i8** %oaep_label, align 8, !tbaa !25
  %oaep_labellen = getelementptr inbounds %struct.RSA_PKEY_CTX, %struct.RSA_PKEY_CTX* %1, i64 0, i32 11
  %6 = load i64, i64* %oaep_labellen, align 8, !tbaa !26
  %conv4 = trunc i64 %6 to i32
  %md = getelementptr inbounds %struct.RSA_PKEY_CTX, %struct.RSA_PKEY_CTX* %1, i64 0, i32 5
  %7 = load %struct.evp_md_st*, %struct.evp_md_st** %md, align 8, !tbaa !30
  %mgf1md = getelementptr inbounds %struct.RSA_PKEY_CTX, %struct.RSA_PKEY_CTX* %1, i64 0, i32 6
  %8 = load %struct.evp_md_st*, %struct.evp_md_st** %mgf1md, align 8, !tbaa !33
  %call5 = tail call i32 @RSA_padding_add_PKCS1_OAEP_mgf1(i8* noundef %4, i32 noundef %call1, i8* noundef %in, i32 noundef %conv, i8* noundef %5, i32 noundef %conv4, %struct.evp_md_st* noundef %7, %struct.evp_md_st* noundef %8) #8
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %cleanup20, label %cleanup

cleanup:                                          ; preds = %if.end
  %9 = load i8*, i8** %tbuf, align 8, !tbaa !27
  %call10 = tail call i32 @RSA_public_encrypt(i32 noundef %call1, i8* noundef %9, i8* noundef %out, %struct.rsa_st* noundef %call, i32 noundef 3) #8
  br label %if.end14

if.else:                                          ; preds = %entry
  %conv11 = trunc i64 %inlen to i32
  %call13 = tail call i32 @RSA_public_encrypt(i32 noundef %conv11, i8* noundef %in, i8* noundef %out, %struct.rsa_st* noundef %call, i32 noundef %3) #8
  br label %if.end14

if.end14:                                         ; preds = %cleanup, %if.else
  %ret.1 = phi i32 [ %call10, %cleanup ], [ %call13, %if.else ]
  %cmp15 = icmp slt i32 %ret.1, 0
  br i1 %cmp15, label %cleanup20, label %if.end18

if.end18:                                         ; preds = %if.end14
  %conv1947 = zext i32 %ret.1 to i64
  store i64 %conv1947, i64* %outlen, align 8, !tbaa !34
  br label %cleanup20

cleanup20:                                        ; preds = %if.end, %if.then, %if.end14, %if.end18
  %retval.1 = phi i32 [ 1, %if.end18 ], [ %ret.1, %if.end14 ], [ -1, %if.then ], [ -1, %if.end ]
  ret i32 %retval.1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @pkey_rsa_decrypt(%struct.evp_pkey_ctx_st* nocapture noundef readonly %ctx, i8* noundef %out, i64* nocapture noundef %outlen, i8* noundef %in, i64 noundef %inlen) #1 {
entry:
  %data = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 16
  %0 = bitcast i8** %data to %struct.RSA_PKEY_CTX**
  %1 = load %struct.RSA_PKEY_CTX*, %struct.RSA_PKEY_CTX** %0, align 8, !tbaa !20
  %pkey = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 14
  %2 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey, align 8, !tbaa !29
  %call = tail call %struct.rsa_st* @EVP_PKEY_get0_RSA(%struct.evp_pkey_st* noundef %2) #8
  %pad_mode = getelementptr inbounds %struct.RSA_PKEY_CTX, %struct.RSA_PKEY_CTX* %1, i64 0, i32 4
  %3 = load i32, i32* %pad_mode, align 4, !tbaa !17
  %cmp = icmp eq i32 %3, 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call1 = tail call fastcc i32 @setup_tbuf(%struct.RSA_PKEY_CTX* noundef nonnull %1, %struct.evp_pkey_ctx_st* noundef nonnull %ctx) #9
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %if.then
  %conv = trunc i64 %inlen to i32
  %tbuf = getelementptr inbounds %struct.RSA_PKEY_CTX, %struct.RSA_PKEY_CTX* %1, i64 0, i32 9
  %4 = load i8*, i8** %tbuf, align 8, !tbaa !27
  %call3 = tail call i32 @RSA_private_decrypt(i32 noundef %conv, i8* noundef %in, i8* noundef %4, %struct.rsa_st* noundef %call, i32 noundef 3) #8
  %cmp4 = icmp slt i32 %call3, 1
  br i1 %cmp4, label %cleanup, label %if.end7

if.end7:                                          ; preds = %if.end
  %5 = load i8*, i8** %tbuf, align 8, !tbaa !27
  %oaep_label = getelementptr inbounds %struct.RSA_PKEY_CTX, %struct.RSA_PKEY_CTX* %1, i64 0, i32 10
  %6 = load i8*, i8** %oaep_label, align 8, !tbaa !25
  %oaep_labellen = getelementptr inbounds %struct.RSA_PKEY_CTX, %struct.RSA_PKEY_CTX* %1, i64 0, i32 11
  %7 = load i64, i64* %oaep_labellen, align 8, !tbaa !26
  %conv9 = trunc i64 %7 to i32
  %md = getelementptr inbounds %struct.RSA_PKEY_CTX, %struct.RSA_PKEY_CTX* %1, i64 0, i32 5
  %8 = load %struct.evp_md_st*, %struct.evp_md_st** %md, align 8, !tbaa !30
  %mgf1md = getelementptr inbounds %struct.RSA_PKEY_CTX, %struct.RSA_PKEY_CTX* %1, i64 0, i32 6
  %9 = load %struct.evp_md_st*, %struct.evp_md_st** %mgf1md, align 8, !tbaa !33
  %call10 = tail call i32 @RSA_padding_check_PKCS1_OAEP_mgf1(i8* noundef %out, i32 noundef %call3, i8* noundef %5, i32 noundef %call3, i32 noundef %call3, i8* noundef %6, i32 noundef %conv9, %struct.evp_md_st* noundef %8, %struct.evp_md_st* noundef %9) #8
  br label %if.end14

if.else:                                          ; preds = %entry
  %conv11 = trunc i64 %inlen to i32
  %call13 = tail call i32 @RSA_private_decrypt(i32 noundef %conv11, i8* noundef %in, i8* noundef %out, %struct.rsa_st* noundef %call, i32 noundef %3) #8
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.end7
  %ret.0 = phi i32 [ %call10, %if.end7 ], [ %call13, %if.else ]
  %conv15 = sext i32 %ret.0 to i64
  %call16 = tail call fastcc i64 @constant_time_msb_s(i64 noundef %conv15) #9, !range !35
  %10 = load i64, i64* %outlen, align 8, !tbaa !34
  %call18 = tail call fastcc i64 @constant_time_select_s(i64 noundef %call16, i64 noundef %10, i64 noundef %conv15) #9
  store i64 %call18, i64* %outlen, align 8, !tbaa !34
  %call19 = tail call fastcc i32 @constant_time_msb(i32 noundef %ret.0) #9, !range !36
  %call20 = tail call fastcc i32 @constant_time_select_int(i32 noundef %call19, i32 noundef %ret.0) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then, %if.end14
  %retval.0 = phi i32 [ %call20, %if.end14 ], [ -1, %if.then ], [ %call3, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @pkey_rsa_ctrl(%struct.evp_pkey_ctx_st* nocapture noundef readonly %ctx, i32 noundef %type, i32 noundef %p1, i8* noundef %p2) #1 {
entry:
  %data = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 16
  %0 = bitcast i8** %data to %struct.RSA_PKEY_CTX**
  %1 = load %struct.RSA_PKEY_CTX*, %struct.RSA_PKEY_CTX** %0, align 8, !tbaa !20
  switch i32 %type, label %sw.default [
    i32 4097, label %sw.bb
    i32 4102, label %sw.bb33
    i32 4098, label %sw.bb35
    i32 4103, label %sw.bb35
    i32 4099, label %sw.bb69
    i32 4100, label %sw.bb73
    i32 4109, label %sw.bb84
    i32 4105, label %sw.bb90
    i32 4107, label %sw.bb90
    i32 1, label %sw.bb101
    i32 13, label %sw.bb118
    i32 4101, label %sw.bb120
    i32 4104, label %sw.bb120
    i32 4106, label %sw.bb149
    i32 4108, label %sw.bb163
    i32 7, label %cleanup
    i32 5, label %cleanup
    i32 11, label %cleanup
    i32 3, label %sw.bb173
    i32 4, label %sw.bb173
    i32 10, label %sw.bb173
    i32 9, label %sw.bb173
    i32 2, label %sw.bb180
  ]

sw.bb:                                            ; preds = %entry
  %2 = add i32 %p1, -1
  %3 = icmp ult i32 %2, 6
  br i1 %3, label %if.then, label %bad_pad

if.then:                                          ; preds = %sw.bb
  %md = getelementptr inbounds %struct.RSA_PKEY_CTX, %struct.RSA_PKEY_CTX* %1, i64 0, i32 5
  %4 = load %struct.evp_md_st*, %struct.evp_md_st** %md, align 8, !tbaa !30
  %call = tail call fastcc i32 @check_padding_md(%struct.evp_md_st* noundef %4, i32 noundef %p1) #9
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %if.then
  %cmp3 = icmp eq i32 %p1, 6
  br i1 %cmp3, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  %operation = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 0
  %5 = load i32, i32* %operation, align 8, !tbaa !37
  %and = and i32 %5, 48
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %bad_pad, label %if.end7

if.end7:                                          ; preds = %if.then4
  %6 = load %struct.evp_md_st*, %struct.evp_md_st** %md, align 8, !tbaa !30
  %tobool9.not = icmp eq %struct.evp_md_st* %6, null
  br i1 %tobool9.not, label %if.end31.sink.split, label %if.end31

if.else:                                          ; preds = %if.end
  %pmeth = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 12
  %7 = load %struct.evp_pkey_method_st*, %struct.evp_pkey_method_st** %pmeth, align 8, !tbaa !12
  %pkey_id = getelementptr inbounds %struct.evp_pkey_method_st, %struct.evp_pkey_method_st* %7, i64 0, i32 0
  %8 = load i32, i32* %pkey_id, align 8, !tbaa !15
  %cmp14 = icmp eq i32 %8, 912
  br i1 %cmp14, label %bad_pad, label %if.end17

if.end17:                                         ; preds = %if.else
  %cmp18 = icmp eq i32 %p1, 4
  br i1 %cmp18, label %if.then19, label %if.end31

if.then19:                                        ; preds = %if.end17
  %operation20 = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 0
  %9 = load i32, i32* %operation20, align 8, !tbaa !37
  %and21 = and i32 %9, 1536
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %bad_pad, label %if.end24

if.end24:                                         ; preds = %if.then19
  %10 = load %struct.evp_md_st*, %struct.evp_md_st** %md, align 8, !tbaa !30
  %tobool26.not = icmp eq %struct.evp_md_st* %10, null
  br i1 %tobool26.not, label %if.end31.sink.split, label %if.end31

if.end31.sink.split:                              ; preds = %if.end24, %if.end7
  %call11 = tail call %struct.evp_md_st* @EVP_sha1() #8
  store %struct.evp_md_st* %call11, %struct.evp_md_st** %md, align 8, !tbaa !30
  br label %if.end31

if.end31:                                         ; preds = %if.end31.sink.split, %if.end7, %if.end24, %if.end17
  %pad_mode = getelementptr inbounds %struct.RSA_PKEY_CTX, %struct.RSA_PKEY_CTX* %1, i64 0, i32 4
  store i32 %p1, i32* %pad_mode, align 4, !tbaa !17
  br label %cleanup

bad_pad:                                          ; preds = %sw.bb, %if.then19, %if.else, %if.then4
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 456, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.pkey_rsa_ctrl, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 4, i32 noundef 144, i8* noundef null) #8
  br label %cleanup

sw.bb33:                                          ; preds = %entry
  %pad_mode34 = getelementptr inbounds %struct.RSA_PKEY_CTX, %struct.RSA_PKEY_CTX* %1, i64 0, i32 4
  %11 = load i32, i32* %pad_mode34, align 4, !tbaa !17
  %12 = bitcast i8* %p2 to i32*
  store i32 %11, i32* %12, align 4, !tbaa !31
  br label %cleanup

sw.bb35:                                          ; preds = %entry, %entry
  %pad_mode36 = getelementptr inbounds %struct.RSA_PKEY_CTX, %struct.RSA_PKEY_CTX* %1, i64 0, i32 4
  %13 = load i32, i32* %pad_mode36, align 4, !tbaa !17
  %cmp37.not = icmp eq i32 %13, 6
  br i1 %cmp37.not, label %if.end39, label %if.then38

if.then38:                                        ; preds = %sw.bb35
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 466, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.pkey_rsa_ctrl, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 4, i32 noundef 146, i8* noundef null) #8
  br label %cleanup

if.end39:                                         ; preds = %sw.bb35
  %cmp40 = icmp eq i32 %type, 4103
  br i1 %cmp40, label %if.then41, label %if.else42

if.then41:                                        ; preds = %if.end39
  %saltlen = getelementptr inbounds %struct.RSA_PKEY_CTX, %struct.RSA_PKEY_CTX* %1, i64 0, i32 7
  %14 = load i32, i32* %saltlen, align 8, !tbaa !18
  %15 = bitcast i8* %p2 to i32*
  store i32 %14, i32* %15, align 4, !tbaa !31
  br label %cleanup

if.else42:                                        ; preds = %if.end39
  %cmp43 = icmp slt i32 %p1, -3
  br i1 %cmp43, label %cleanup, label %if.end45

if.end45:                                         ; preds = %if.else42
  %min_saltlen = getelementptr inbounds %struct.RSA_PKEY_CTX, %struct.RSA_PKEY_CTX* %1, i64 0, i32 8
  %16 = load i32, i32* %min_saltlen, align 4, !tbaa !19
  %cmp46.not = icmp eq i32 %16, -1
  br i1 %cmp46.not, label %if.end66, label %if.then47

if.then47:                                        ; preds = %if.end45
  switch i32 %p1, label %lor.lhs.false [
    i32 -2, label %land.lhs.true49
    i32 -1, label %land.lhs.true55
  ]

land.lhs.true49:                                  ; preds = %if.then47
  %operation50 = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 0
  %17 = load i32, i32* %operation50, align 8, !tbaa !37
  %cmp51 = icmp eq i32 %17, 32
  br i1 %cmp51, label %if.then52, label %if.end66

if.then52:                                        ; preds = %land.lhs.true49
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 477, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.pkey_rsa_ctrl, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 4, i32 noundef 146, i8* noundef null) #8
  br label %cleanup

land.lhs.true55:                                  ; preds = %if.then47
  %md57 = getelementptr inbounds %struct.RSA_PKEY_CTX, %struct.RSA_PKEY_CTX* %1, i64 0, i32 5
  %18 = load %struct.evp_md_st*, %struct.evp_md_st** %md57, align 8, !tbaa !30
  %call58 = tail call i32 @EVP_MD_get_size(%struct.evp_md_st* noundef %18) #8
  %cmp59 = icmp sgt i32 %16, %call58
  br i1 %cmp59, label %if.then64, label %if.end66

lor.lhs.false:                                    ; preds = %if.then47
  %cmp60 = icmp sgt i32 %p1, -1
  %cmp63 = icmp sgt i32 %16, %p1
  %or.cond = select i1 %cmp60, i1 %cmp63, i1 false
  br i1 %or.cond, label %if.then64, label %if.end66

if.then64:                                        ; preds = %lor.lhs.false, %land.lhs.true55
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 483, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.pkey_rsa_ctrl, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 4, i32 noundef 164, i8* noundef null) #8
  br label %cleanup

if.end66:                                         ; preds = %land.lhs.true55, %land.lhs.true49, %lor.lhs.false, %if.end45
  %saltlen67 = getelementptr inbounds %struct.RSA_PKEY_CTX, %struct.RSA_PKEY_CTX* %1, i64 0, i32 7
  store i32 %p1, i32* %saltlen67, align 8, !tbaa !18
  br label %cleanup

sw.bb69:                                          ; preds = %entry
  %cmp70 = icmp slt i32 %p1, 512
  br i1 %cmp70, label %if.then71, label %if.end72

if.then71:                                        ; preds = %sw.bb69
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 493, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.pkey_rsa_ctrl, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 4, i32 noundef 120, i8* noundef null) #8
  br label %cleanup

if.end72:                                         ; preds = %sw.bb69
  %nbits = getelementptr inbounds %struct.RSA_PKEY_CTX, %struct.RSA_PKEY_CTX* %1, i64 0, i32 0
  store i32 %p1, i32* %nbits, align 8, !tbaa !4
  br label %cleanup

sw.bb73:                                          ; preds = %entry
  %cmp74 = icmp eq i8* %p2, null
  br i1 %cmp74, label %if.then81, label %lor.lhs.false75

lor.lhs.false75:                                  ; preds = %sw.bb73
  %19 = bitcast i8* %p2 to %struct.bignum_st*
  %call76 = tail call i32 @BN_is_odd(%struct.bignum_st* noundef nonnull %19) #8
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %if.then81, label %lor.lhs.false78

lor.lhs.false78:                                  ; preds = %lor.lhs.false75
  %call79 = tail call i32 @BN_is_one(%struct.bignum_st* noundef nonnull %19) #8
  %tobool80.not = icmp eq i32 %call79, 0
  br i1 %tobool80.not, label %if.end82, label %if.then81

if.then81:                                        ; preds = %lor.lhs.false78, %lor.lhs.false75, %sw.bb73
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 501, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.pkey_rsa_ctrl, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 4, i32 noundef 101, i8* noundef null) #8
  br label %cleanup

if.end82:                                         ; preds = %lor.lhs.false78
  %pub_exp = getelementptr inbounds %struct.RSA_PKEY_CTX, %struct.RSA_PKEY_CTX* %1, i64 0, i32 1
  %20 = load %struct.bignum_st*, %struct.bignum_st** %pub_exp, align 8, !tbaa !23
  tail call void @BN_free(%struct.bignum_st* noundef %20) #8
  %21 = bitcast %struct.bignum_st** %pub_exp to i8**
  store i8* %p2, i8** %21, align 8, !tbaa !23
  br label %cleanup

sw.bb84:                                          ; preds = %entry
  %22 = add i32 %p1, -6
  %23 = icmp ult i32 %22, -4
  br i1 %23, label %if.then88, label %if.end89

if.then88:                                        ; preds = %sw.bb84
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 510, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.pkey_rsa_ctrl, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 4, i32 noundef 165, i8* noundef null) #8
  br label %cleanup

if.end89:                                         ; preds = %sw.bb84
  %primes = getelementptr inbounds %struct.RSA_PKEY_CTX, %struct.RSA_PKEY_CTX* %1, i64 0, i32 2
  store i32 %p1, i32* %primes, align 8, !tbaa !11
  br label %cleanup

sw.bb90:                                          ; preds = %entry, %entry
  %pad_mode91 = getelementptr inbounds %struct.RSA_PKEY_CTX, %struct.RSA_PKEY_CTX* %1, i64 0, i32 4
  %24 = load i32, i32* %pad_mode91, align 4, !tbaa !17
  %cmp92.not = icmp eq i32 %24, 4
  br i1 %cmp92.not, label %if.end94, label %if.then93

if.then93:                                        ; preds = %sw.bb90
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 519, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.pkey_rsa_ctrl, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 4, i32 noundef 141, i8* noundef null) #8
  br label %cleanup

if.end94:                                         ; preds = %sw.bb90
  %cmp95 = icmp eq i32 %type, 4107
  %md97 = getelementptr inbounds %struct.RSA_PKEY_CTX, %struct.RSA_PKEY_CTX* %1, i64 0, i32 5
  br i1 %cmp95, label %if.then96, label %if.else98

if.then96:                                        ; preds = %if.end94
  %25 = load %struct.evp_md_st*, %struct.evp_md_st** %md97, align 8, !tbaa !30
  %26 = bitcast i8* %p2 to %struct.evp_md_st**
  store %struct.evp_md_st* %25, %struct.evp_md_st** %26, align 8, !tbaa !24
  br label %cleanup

if.else98:                                        ; preds = %if.end94
  %27 = bitcast %struct.evp_md_st** %md97 to i8**
  store i8* %p2, i8** %27, align 8, !tbaa !30
  br label %cleanup

sw.bb101:                                         ; preds = %entry
  %28 = bitcast i8* %p2 to %struct.evp_md_st*
  %pad_mode102 = getelementptr inbounds %struct.RSA_PKEY_CTX, %struct.RSA_PKEY_CTX* %1, i64 0, i32 4
  %29 = load i32, i32* %pad_mode102, align 4, !tbaa !17
  %call103 = tail call fastcc i32 @check_padding_md(%struct.evp_md_st* noundef %28, i32 noundef %29) #9
  %tobool104.not = icmp eq i32 %call103, 0
  br i1 %tobool104.not, label %cleanup, label %if.end106

if.end106:                                        ; preds = %sw.bb101
  %min_saltlen107 = getelementptr inbounds %struct.RSA_PKEY_CTX, %struct.RSA_PKEY_CTX* %1, i64 0, i32 8
  %30 = load i32, i32* %min_saltlen107, align 4, !tbaa !19
  %cmp108.not = icmp eq i32 %30, -1
  %md117 = getelementptr inbounds %struct.RSA_PKEY_CTX, %struct.RSA_PKEY_CTX* %1, i64 0, i32 5
  br i1 %cmp108.not, label %if.end116, label %if.then109

if.then109:                                       ; preds = %if.end106
  %31 = load %struct.evp_md_st*, %struct.evp_md_st** %md117, align 8, !tbaa !30
  %call111 = tail call i32 @EVP_MD_get_type(%struct.evp_md_st* noundef %31) #8
  %call112 = tail call i32 @EVP_MD_get_type(%struct.evp_md_st* noundef %28) #8
  %cmp113 = icmp eq i32 %call111, %call112
  br i1 %cmp113, label %cleanup, label %if.end115

if.end115:                                        ; preds = %if.then109
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 534, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.pkey_rsa_ctrl, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 4, i32 noundef 145, i8* noundef null) #8
  br label %cleanup

if.end116:                                        ; preds = %if.end106
  %32 = bitcast %struct.evp_md_st** %md117 to i8**
  store i8* %p2, i8** %32, align 8, !tbaa !30
  br label %cleanup

sw.bb118:                                         ; preds = %entry
  %md119 = getelementptr inbounds %struct.RSA_PKEY_CTX, %struct.RSA_PKEY_CTX* %1, i64 0, i32 5
  %33 = load %struct.evp_md_st*, %struct.evp_md_st** %md119, align 8, !tbaa !30
  %34 = bitcast i8* %p2 to %struct.evp_md_st**
  store %struct.evp_md_st* %33, %struct.evp_md_st** %34, align 8, !tbaa !24
  br label %cleanup

sw.bb120:                                         ; preds = %entry, %entry
  %pad_mode121 = getelementptr inbounds %struct.RSA_PKEY_CTX, %struct.RSA_PKEY_CTX* %1, i64 0, i32 4
  %35 = load i32, i32* %pad_mode121, align 4, !tbaa !17
  switch i32 %35, label %if.then126 [
    i32 6, label %if.end127
    i32 4, label %if.end127
  ]

if.then126:                                       ; preds = %sw.bb120
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 548, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.pkey_rsa_ctrl, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 4, i32 noundef 156, i8* noundef null) #8
  br label %cleanup

if.end127:                                        ; preds = %sw.bb120, %sw.bb120
  %cmp128 = icmp eq i32 %type, 4104
  br i1 %cmp128, label %if.then129, label %if.else136

if.then129:                                       ; preds = %if.end127
  %mgf1md = getelementptr inbounds %struct.RSA_PKEY_CTX, %struct.RSA_PKEY_CTX* %1, i64 0, i32 6
  %36 = load %struct.evp_md_st*, %struct.evp_md_st** %mgf1md, align 8, !tbaa !33
  %tobool130.not = icmp eq %struct.evp_md_st* %36, null
  br i1 %tobool130.not, label %if.else133, label %if.then131

if.then131:                                       ; preds = %if.then129
  %37 = bitcast i8* %p2 to %struct.evp_md_st**
  store %struct.evp_md_st* %36, %struct.evp_md_st** %37, align 8, !tbaa !24
  br label %cleanup

if.else133:                                       ; preds = %if.then129
  %md134 = getelementptr inbounds %struct.RSA_PKEY_CTX, %struct.RSA_PKEY_CTX* %1, i64 0, i32 5
  %38 = load %struct.evp_md_st*, %struct.evp_md_st** %md134, align 8, !tbaa !30
  %39 = bitcast i8* %p2 to %struct.evp_md_st**
  store %struct.evp_md_st* %38, %struct.evp_md_st** %39, align 8, !tbaa !24
  br label %cleanup

if.else136:                                       ; preds = %if.end127
  %min_saltlen137 = getelementptr inbounds %struct.RSA_PKEY_CTX, %struct.RSA_PKEY_CTX* %1, i64 0, i32 8
  %40 = load i32, i32* %min_saltlen137, align 4, !tbaa !19
  %cmp138.not = icmp eq i32 %40, -1
  %mgf1md147 = getelementptr inbounds %struct.RSA_PKEY_CTX, %struct.RSA_PKEY_CTX* %1, i64 0, i32 6
  br i1 %cmp138.not, label %if.end146, label %if.then139

if.then139:                                       ; preds = %if.else136
  %41 = load %struct.evp_md_st*, %struct.evp_md_st** %mgf1md147, align 8, !tbaa !33
  %call141 = tail call i32 @EVP_MD_get_type(%struct.evp_md_st* noundef %41) #8
  %42 = bitcast i8* %p2 to %struct.evp_md_st*
  %call142 = tail call i32 @EVP_MD_get_type(%struct.evp_md_st* noundef %42) #8
  %cmp143 = icmp eq i32 %call141, %call142
  br i1 %cmp143, label %cleanup, label %if.end145

if.end145:                                        ; preds = %if.then139
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 560, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.pkey_rsa_ctrl, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 4, i32 noundef 152, i8* noundef null) #8
  br label %cleanup

if.end146:                                        ; preds = %if.else136
  %43 = bitcast %struct.evp_md_st** %mgf1md147 to i8**
  store i8* %p2, i8** %43, align 8, !tbaa !33
  br label %cleanup

sw.bb149:                                         ; preds = %entry
  %pad_mode150 = getelementptr inbounds %struct.RSA_PKEY_CTX, %struct.RSA_PKEY_CTX* %1, i64 0, i32 4
  %44 = load i32, i32* %pad_mode150, align 4, !tbaa !17
  %cmp151.not = icmp eq i32 %44, 4
  br i1 %cmp151.not, label %if.end153, label %if.then152

if.then152:                                       ; preds = %sw.bb149
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 569, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.pkey_rsa_ctrl, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 4, i32 noundef 141, i8* noundef null) #8
  br label %cleanup

if.end153:                                        ; preds = %sw.bb149
  %oaep_label = getelementptr inbounds %struct.RSA_PKEY_CTX, %struct.RSA_PKEY_CTX* %1, i64 0, i32 10
  %45 = load i8*, i8** %oaep_label, align 8, !tbaa !25
  tail call void @CRYPTO_free(i8* noundef %45, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 572) #8
  %tobool154 = icmp ne i8* %p2, null
  %cmp156 = icmp sgt i32 %p1, 0
  %or.cond182 = and i1 %cmp156, %tobool154
  br i1 %or.cond182, label %if.then157, label %if.else159

if.then157:                                       ; preds = %if.end153
  store i8* %p2, i8** %oaep_label, align 8, !tbaa !25
  %conv273 = zext i32 %p1 to i64
  %oaep_labellen = getelementptr inbounds %struct.RSA_PKEY_CTX, %struct.RSA_PKEY_CTX* %1, i64 0, i32 11
  store i64 %conv273, i64* %oaep_labellen, align 8, !tbaa !26
  br label %cleanup

if.else159:                                       ; preds = %if.end153
  store i8* null, i8** %oaep_label, align 8, !tbaa !25
  %oaep_labellen161 = getelementptr inbounds %struct.RSA_PKEY_CTX, %struct.RSA_PKEY_CTX* %1, i64 0, i32 11
  store i64 0, i64* %oaep_labellen161, align 8, !tbaa !26
  br label %cleanup

sw.bb163:                                         ; preds = %entry
  %pad_mode164 = getelementptr inbounds %struct.RSA_PKEY_CTX, %struct.RSA_PKEY_CTX* %1, i64 0, i32 4
  %46 = load i32, i32* %pad_mode164, align 4, !tbaa !17
  %cmp165.not = icmp eq i32 %46, 4
  br i1 %cmp165.not, label %if.end168, label %if.then167

if.then167:                                       ; preds = %sw.bb163
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 584, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.pkey_rsa_ctrl, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 4, i32 noundef 141, i8* noundef null) #8
  br label %cleanup

if.end168:                                        ; preds = %sw.bb163
  %oaep_label169 = getelementptr inbounds %struct.RSA_PKEY_CTX, %struct.RSA_PKEY_CTX* %1, i64 0, i32 10
  %47 = load i8*, i8** %oaep_label169, align 8, !tbaa !25
  %48 = bitcast i8* %p2 to i8**
  store i8* %47, i8** %48, align 8, !tbaa !24
  %oaep_labellen170 = getelementptr inbounds %struct.RSA_PKEY_CTX, %struct.RSA_PKEY_CTX* %1, i64 0, i32 11
  %49 = load i64, i64* %oaep_labellen170, align 8, !tbaa !26
  %conv171 = trunc i64 %49 to i32
  br label %cleanup

sw.bb173:                                         ; preds = %entry, %entry, %entry, %entry
  %pmeth174 = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 12
  %50 = load %struct.evp_pkey_method_st*, %struct.evp_pkey_method_st** %pmeth174, align 8, !tbaa !12
  %pkey_id175 = getelementptr inbounds %struct.evp_pkey_method_st, %struct.evp_pkey_method_st* %50, i64 0, i32 0
  %51 = load i32, i32* %pkey_id175, align 8, !tbaa !15
  %cmp176 = icmp eq i32 %51, 912
  br i1 %cmp176, label %sw.bb180, label %cleanup

sw.bb180:                                         ; preds = %sw.bb173, %entry
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 607, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.pkey_rsa_ctrl, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 4, i32 noundef 148, i8* noundef null) #8
  br label %cleanup

sw.default:                                       ; preds = %entry
  br label %cleanup

cleanup:                                          ; preds = %sw.bb173, %entry, %entry, %entry, %if.then157, %if.else159, %if.end146, %if.else133, %if.then131, %if.then139, %if.then109, %sw.bb101, %if.then96, %if.else98, %if.then41, %if.end66, %if.else42, %if.then, %sw.default, %sw.bb180, %if.end168, %if.then167, %if.then152, %if.end145, %if.then126, %sw.bb118, %if.end116, %if.end115, %if.then93, %if.end89, %if.then88, %if.end82, %if.then81, %if.end72, %if.then71, %if.then64, %if.then52, %if.then38, %sw.bb33, %bad_pad, %if.end31
  %retval.0 = phi i32 [ -2, %sw.default ], [ -2, %sw.bb180 ], [ -2, %if.then167 ], [ %conv171, %if.end168 ], [ -2, %if.then152 ], [ -2, %if.then126 ], [ 0, %if.end145 ], [ 1, %sw.bb118 ], [ 0, %if.end115 ], [ 1, %if.end116 ], [ -2, %if.then93 ], [ -2, %if.then88 ], [ 1, %if.end89 ], [ -2, %if.then81 ], [ 1, %if.end82 ], [ -2, %if.then71 ], [ 1, %if.end72 ], [ -2, %if.then38 ], [ -2, %if.then52 ], [ 0, %if.then64 ], [ 1, %sw.bb33 ], [ 1, %if.end31 ], [ -2, %bad_pad ], [ 0, %if.then ], [ -2, %if.else42 ], [ 1, %if.end66 ], [ 1, %if.then41 ], [ 1, %if.else98 ], [ 1, %if.then96 ], [ 0, %sw.bb101 ], [ 1, %if.then109 ], [ 1, %if.then139 ], [ 1, %if.then131 ], [ 1, %if.else133 ], [ 1, %if.end146 ], [ 1, %if.else159 ], [ 1, %if.then157 ], [ 1, %entry ], [ 1, %entry ], [ 1, %entry ], [ 1, %sw.bb173 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @pkey_rsa_ctrl_str(%struct.evp_pkey_ctx_st* noundef %ctx, i8* noundef readonly %type, i8* noundef %value) #1 {
entry:
  %pubexp = alloca %struct.bignum_st*, align 8
  %lablen = alloca i64, align 8
  %cmp = icmp eq i8* %value, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 620, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.pkey_rsa_ctrl_str, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 4, i32 noundef 147, i8* noundef null) #8
  br label %return

if.end:                                           ; preds = %entry
  %call = tail call i32 @strcmp(i8* noundef %type, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0)) #11
  %cmp1 = icmp eq i32 %call, 0
  br i1 %cmp1, label %if.then2, label %if.end33

if.then2:                                         ; preds = %if.end
  %call3 = tail call i32 @strcmp(i8* noundef nonnull %value, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)) #11
  %cmp4 = icmp eq i32 %call3, 0
  br i1 %cmp4, label %if.end31, label %if.else

if.else:                                          ; preds = %if.then2
  %call6 = tail call i32 @strcmp(i8* noundef nonnull %value, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)) #11
  %cmp7 = icmp eq i32 %call6, 0
  br i1 %cmp7, label %if.end31, label %if.else9

if.else9:                                         ; preds = %if.else
  %call10 = tail call i32 @strcmp(i8* noundef nonnull %value, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0)) #11
  %cmp11 = icmp eq i32 %call10, 0
  br i1 %cmp11, label %if.end31, label %if.else13

if.else13:                                        ; preds = %if.else9
  %call14 = tail call i32 @strcmp(i8* noundef nonnull %value, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0)) #11
  %cmp15 = icmp eq i32 %call14, 0
  br i1 %cmp15, label %if.end31, label %if.else17

if.else17:                                        ; preds = %if.else13
  %call18 = tail call i32 @strcmp(i8* noundef nonnull %value, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0)) #11
  %cmp19 = icmp eq i32 %call18, 0
  br i1 %cmp19, label %if.end31, label %if.else21

if.else21:                                        ; preds = %if.else17
  %call22 = tail call i32 @strcmp(i8* noundef nonnull %value, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0)) #11
  %cmp23 = icmp eq i32 %call22, 0
  br i1 %cmp23, label %if.end31, label %if.else25

if.else25:                                        ; preds = %if.else21
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 639, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.pkey_rsa_ctrl_str, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 4, i32 noundef 118, i8* noundef null) #8
  br label %return

if.end31:                                         ; preds = %if.else21, %if.else17, %if.else13, %if.else9, %if.else, %if.then2
  %pm.0 = phi i32 [ 1, %if.then2 ], [ 3, %if.else ], [ 4, %if.else9 ], [ 4, %if.else13 ], [ 5, %if.else17 ], [ 6, %if.else21 ]
  %call32 = tail call i32 @EVP_PKEY_CTX_set_rsa_padding(%struct.evp_pkey_ctx_st* noundef %ctx, i32 noundef %pm.0) #8
  br label %return

if.end33:                                         ; preds = %if.end
  %call34 = tail call i32 @strcmp(i8* noundef %type, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0)) #11
  %cmp35 = icmp eq i32 %call34, 0
  br i1 %cmp35, label %if.then36, label %if.end54

if.then36:                                        ; preds = %if.end33
  %call37 = tail call i32 @strcmp(i8* noundef nonnull %value, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0)) #11
  %tobool.not = icmp eq i32 %call37, 0
  br i1 %tobool.not, label %if.end51, label %if.else39

if.else39:                                        ; preds = %if.then36
  %call40 = tail call i32 @strcmp(i8* noundef nonnull %value, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0)) #11
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.end51, label %if.else43

if.else43:                                        ; preds = %if.else39
  %call44 = tail call i32 @strcmp(i8* noundef nonnull %value, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0)) #11
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.end51, label %if.else47

if.else47:                                        ; preds = %if.else43
  %call48 = tail call i32 @atoi(i8* noundef %value) #11
  br label %if.end51

if.end51:                                         ; preds = %if.else43, %if.else39, %if.then36, %if.else47
  %saltlen.0 = phi i32 [ %call48, %if.else47 ], [ -1, %if.then36 ], [ -3, %if.else39 ], [ -2, %if.else43 ]
  %call52 = tail call i32 @EVP_PKEY_CTX_set_rsa_pss_saltlen(%struct.evp_pkey_ctx_st* noundef %ctx, i32 noundef %saltlen.0) #8
  br label %return

if.end54:                                         ; preds = %if.end33
  %call55 = tail call i32 @strcmp(i8* noundef %type, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0)) #11
  %cmp56 = icmp eq i32 %call55, 0
  br i1 %cmp56, label %if.then57, label %if.end61

if.then57:                                        ; preds = %if.end54
  %call58 = tail call i32 @atoi(i8* noundef %value) #11
  %call59 = tail call i32 @EVP_PKEY_CTX_set_rsa_keygen_bits(%struct.evp_pkey_ctx_st* noundef %ctx, i32 noundef %call58) #8
  br label %return

if.end61:                                         ; preds = %if.end54
  %call62 = tail call i32 @strcmp(i8* noundef %type, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i64 0, i64 0)) #11
  %cmp63 = icmp eq i32 %call62, 0
  br i1 %cmp63, label %if.then64, label %if.end72

if.then64:                                        ; preds = %if.end61
  %0 = bitcast %struct.bignum_st** %pubexp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #10
  store %struct.bignum_st* null, %struct.bignum_st** %pubexp, align 8, !tbaa !24
  %call65 = call i32 @BN_asc2bn(%struct.bignum_st** noundef nonnull %pubexp, i8* noundef nonnull %value) #8
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %cleanup70, label %if.end68

if.end68:                                         ; preds = %if.then64
  %1 = load %struct.bignum_st*, %struct.bignum_st** %pubexp, align 8, !tbaa !24
  %call69 = call i32 @EVP_PKEY_CTX_set1_rsa_keygen_pubexp(%struct.evp_pkey_ctx_st* noundef %ctx, %struct.bignum_st* noundef %1) #8
  %2 = load %struct.bignum_st*, %struct.bignum_st** %pubexp, align 8, !tbaa !24
  call void @BN_free(%struct.bignum_st* noundef %2) #8
  br label %cleanup70

cleanup70:                                        ; preds = %if.then64, %if.end68
  %retval.1 = phi i32 [ %call69, %if.end68 ], [ 0, %if.then64 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #10
  br label %return

if.end72:                                         ; preds = %if.end61
  %call73 = tail call i32 @strcmp(i8* noundef %type, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i64 0, i64 0)) #11
  %cmp74 = icmp eq i32 %call73, 0
  br i1 %cmp74, label %if.then75, label %if.end79

if.then75:                                        ; preds = %if.end72
  %call76 = tail call i32 @atoi(i8* noundef %value) #11
  %call77 = tail call i32 @EVP_PKEY_CTX_set_rsa_keygen_primes(%struct.evp_pkey_ctx_st* noundef %ctx, i32 noundef %call76) #8
  br label %return

if.end79:                                         ; preds = %if.end72
  %call80 = tail call i32 @strcmp(i8* noundef %type, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i64 0, i64 0)) #11
  %cmp81 = icmp eq i32 %call80, 0
  br i1 %cmp81, label %if.then82, label %if.end84

if.then82:                                        ; preds = %if.end79
  %call83 = tail call i32 @EVP_PKEY_CTX_md(%struct.evp_pkey_ctx_st* noundef %ctx, i32 noundef 2032, i32 noundef 4101, i8* noundef nonnull %value) #8
  br label %return

if.end84:                                         ; preds = %if.end79
  %pmeth = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 12
  %3 = load %struct.evp_pkey_method_st*, %struct.evp_pkey_method_st** %pmeth, align 8, !tbaa !12
  %pkey_id = getelementptr inbounds %struct.evp_pkey_method_st, %struct.evp_pkey_method_st* %3, i64 0, i32 0
  %4 = load i32, i32* %pkey_id, align 8, !tbaa !15
  %cmp85 = icmp eq i32 %4, 912
  br i1 %cmp85, label %if.then86, label %if.end105

if.then86:                                        ; preds = %if.end84
  %call87 = tail call i32 @strcmp(i8* noundef %type, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0)) #11
  %cmp88 = icmp eq i32 %call87, 0
  br i1 %cmp88, label %if.then89, label %if.end91

if.then89:                                        ; preds = %if.then86
  %call90 = tail call i32 @EVP_PKEY_CTX_md(%struct.evp_pkey_ctx_st* noundef nonnull %ctx, i32 noundef 4, i32 noundef 4101, i8* noundef nonnull %value) #8
  br label %return

if.end91:                                         ; preds = %if.then86
  %call92 = tail call i32 @strcmp(i8* noundef %type, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17, i64 0, i64 0)) #11
  %cmp93 = icmp eq i32 %call92, 0
  br i1 %cmp93, label %if.then94, label %if.end96

if.then94:                                        ; preds = %if.end91
  %call95 = tail call i32 @EVP_PKEY_CTX_md(%struct.evp_pkey_ctx_st* noundef nonnull %ctx, i32 noundef 4, i32 noundef 1, i8* noundef nonnull %value) #8
  br label %return

if.end96:                                         ; preds = %if.end91
  %call97 = tail call i32 @strcmp(i8* noundef %type, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.18, i64 0, i64 0)) #11
  %cmp98 = icmp eq i32 %call97, 0
  br i1 %cmp98, label %if.then99, label %if.end105

if.then99:                                        ; preds = %if.end96
  %call101 = tail call i32 @atoi(i8* noundef %value) #11
  %call102 = tail call i32 @EVP_PKEY_CTX_set_rsa_pss_keygen_saltlen(%struct.evp_pkey_ctx_st* noundef nonnull %ctx, i32 noundef %call101) #8
  br label %return

if.end105:                                        ; preds = %if.end96, %if.end84
  %call106 = tail call i32 @strcmp(i8* noundef %type, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.19, i64 0, i64 0)) #11
  %cmp107 = icmp eq i32 %call106, 0
  br i1 %cmp107, label %if.then108, label %if.end110

if.then108:                                       ; preds = %if.end105
  %call109 = tail call i32 @EVP_PKEY_CTX_md(%struct.evp_pkey_ctx_st* noundef nonnull %ctx, i32 noundef 1536, i32 noundef 4105, i8* noundef nonnull %value) #8
  br label %return

if.end110:                                        ; preds = %if.end105
  %call111 = tail call i32 @strcmp(i8* noundef %type, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i64 0, i64 0)) #11
  %cmp112 = icmp eq i32 %call111, 0
  br i1 %cmp112, label %if.then113, label %return

if.then113:                                       ; preds = %if.end110
  %5 = bitcast i64* %lablen to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #10
  %call115 = call i8* @OPENSSL_hexstr2buf(i8* noundef nonnull %value, i64* noundef nonnull %lablen) #8
  %tobool116.not = icmp eq i8* %call115, null
  br i1 %tobool116.not, label %cleanup124, label %if.end118

if.end118:                                        ; preds = %if.then113
  %6 = load i64, i64* %lablen, align 8, !tbaa !34
  %conv = trunc i64 %6 to i32
  %call119 = call i32 @EVP_PKEY_CTX_set0_rsa_oaep_label(%struct.evp_pkey_ctx_st* noundef nonnull %ctx, i8* noundef nonnull %call115, i32 noundef %conv) #8
  %cmp120 = icmp slt i32 %call119, 1
  br i1 %cmp120, label %if.then122, label %cleanup124

if.then122:                                       ; preds = %if.end118
  call void @CRYPTO_free(i8* noundef nonnull %call115, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 718) #8
  br label %cleanup124

cleanup124:                                       ; preds = %if.end118, %if.then122, %if.then113
  %retval.2 = phi i32 [ 0, %if.then113 ], [ %call119, %if.then122 ], [ %call119, %if.end118 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #10
  br label %return

return:                                           ; preds = %if.end110, %if.else25, %if.end31, %cleanup124, %if.then108, %if.then99, %if.then94, %if.then89, %if.then82, %if.then75, %cleanup70, %if.then57, %if.end51, %if.then
  %retval.3 = phi i32 [ 0, %if.then ], [ %call52, %if.end51 ], [ %call59, %if.then57 ], [ %retval.1, %cleanup70 ], [ %call77, %if.then75 ], [ %call83, %if.then82 ], [ %call90, %if.then89 ], [ %call95, %if.then94 ], [ %call102, %if.then99 ], [ %call109, %if.then108 ], [ %retval.2, %cleanup124 ], [ %call32, %if.end31 ], [ -2, %if.else25 ], [ -2, %if.end110 ]
  ret i32 %retval.3
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare i8* @CRYPTO_zalloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

declare %struct.bignum_st* @BN_dup(%struct.bignum_st* noundef) local_unnamed_addr #3

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare i8* @CRYPTO_memdup(i8* noundef, i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare void @BN_free(%struct.bignum_st* noundef) local_unnamed_addr #3

declare %struct.bignum_st* @BN_new() local_unnamed_addr #3

declare i32 @BN_set_word(%struct.bignum_st* noundef, i64 noundef) local_unnamed_addr #3

declare %struct.rsa_st* @RSA_new() local_unnamed_addr #3

declare %struct.bn_gencb_st* @BN_GENCB_new() local_unnamed_addr #3

declare void @RSA_free(%struct.rsa_st* noundef) local_unnamed_addr #3

declare void @evp_pkey_set_cb_translate(%struct.bn_gencb_st* noundef, %struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #3

declare i32 @RSA_generate_multi_prime_key(%struct.rsa_st* noundef, i32 noundef, i32 noundef, %struct.bignum_st* noundef, %struct.bn_gencb_st* noundef) local_unnamed_addr #3

declare void @BN_GENCB_free(%struct.bn_gencb_st* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @rsa_set_pss_param(%struct.rsa_st* nocapture noundef writeonly %rsa, %struct.evp_pkey_ctx_st* nocapture noundef readonly %ctx) unnamed_addr #1 {
entry:
  %data = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 16
  %0 = bitcast i8** %data to %struct.RSA_PKEY_CTX**
  %1 = load %struct.RSA_PKEY_CTX*, %struct.RSA_PKEY_CTX** %0, align 8, !tbaa !20
  %pmeth = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 12
  %2 = load %struct.evp_pkey_method_st*, %struct.evp_pkey_method_st** %pmeth, align 8, !tbaa !12
  %pkey_id = getelementptr inbounds %struct.evp_pkey_method_st, %struct.evp_pkey_method_st* %2, i64 0, i32 0
  %3 = load i32, i32* %pkey_id, align 8, !tbaa !15
  %cmp = icmp eq i32 %3, 912
  br i1 %cmp, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %md = getelementptr inbounds %struct.RSA_PKEY_CTX, %struct.RSA_PKEY_CTX* %1, i64 0, i32 5
  %4 = load %struct.evp_md_st*, %struct.evp_md_st** %md, align 8, !tbaa !30
  %cmp1 = icmp eq %struct.evp_md_st* %4, null
  %mgf1md = getelementptr inbounds %struct.RSA_PKEY_CTX, %struct.RSA_PKEY_CTX* %1, i64 0, i32 6
  %5 = load %struct.evp_md_st*, %struct.evp_md_st** %mgf1md, align 8, !tbaa !33
  %cmp2 = icmp eq %struct.evp_md_st* %5, null
  %or.cond = select i1 %cmp1, i1 %cmp2, i1 false
  br i1 %or.cond, label %land.lhs.true3, label %if.end6

land.lhs.true3:                                   ; preds = %if.end
  %saltlen = getelementptr inbounds %struct.RSA_PKEY_CTX, %struct.RSA_PKEY_CTX* %1, i64 0, i32 7
  %6 = load i32, i32* %saltlen, align 8, !tbaa !18
  %cmp4 = icmp eq i32 %6, -2
  br i1 %cmp4, label %cleanup, label %if.end6

if.end6:                                          ; preds = %if.end, %land.lhs.true3
  %7 = phi %struct.evp_md_st* [ null, %land.lhs.true3 ], [ %5, %if.end ]
  %saltlen9 = getelementptr inbounds %struct.RSA_PKEY_CTX, %struct.RSA_PKEY_CTX* %1, i64 0, i32 7
  %8 = load i32, i32* %saltlen9, align 8, !tbaa !18
  %cmp10 = icmp eq i32 %8, -2
  %spec.select = select i1 %cmp10, i32 0, i32 %8
  %call = tail call %struct.rsa_pss_params_st* @ossl_rsa_pss_params_create(%struct.evp_md_st* noundef %4, %struct.evp_md_st* noundef %7, i32 noundef %spec.select) #8
  %pss = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 14
  store %struct.rsa_pss_params_st* %call, %struct.rsa_pss_params_st** %pss, align 8, !tbaa !38
  %cmp13 = icmp ne %struct.rsa_pss_params_st* %call, null
  %spec.select25 = zext i1 %cmp13 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %land.lhs.true3, %entry
  %retval.0 = phi i32 [ 1, %entry ], [ 1, %land.lhs.true3 ], [ %spec.select25, %if.end6 ]
  ret i32 %retval.0
}

declare i32 @EVP_PKEY_assign(%struct.evp_pkey_st* noundef, i32 noundef, i8* noundef) local_unnamed_addr #3

declare %struct.rsa_pss_params_st* @ossl_rsa_pss_params_create(%struct.evp_md_st* noundef, %struct.evp_md_st* noundef, i32 noundef) local_unnamed_addr #3

declare %struct.rsa_st* @EVP_PKEY_get0_RSA(%struct.evp_pkey_st* noundef) local_unnamed_addr #3

declare i32 @EVP_MD_get_size(%struct.evp_md_st* noundef) local_unnamed_addr #3

declare void @ERR_new() local_unnamed_addr #3

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #3

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #3

declare i32 @EVP_MD_get_type(%struct.evp_md_st* noundef) local_unnamed_addr #3

declare i32 @RSA_sign_ASN1_OCTET_STRING(i32 noundef, i8* noundef, i32 noundef, i8* noundef, i32* noundef, %struct.rsa_st* noundef) local_unnamed_addr #3

declare i32 @RSA_size(%struct.rsa_st* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @setup_tbuf(%struct.RSA_PKEY_CTX* nocapture noundef %ctx, %struct.evp_pkey_ctx_st* nocapture noundef readonly %pk) unnamed_addr #1 {
entry:
  %tbuf = getelementptr inbounds %struct.RSA_PKEY_CTX, %struct.RSA_PKEY_CTX* %ctx, i64 0, i32 9
  %0 = load i8*, i8** %tbuf, align 8, !tbaa !27
  %cmp.not = icmp eq i8* %0, null
  br i1 %cmp.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %pkey = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %pk, i64 0, i32 14
  %1 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey, align 8, !tbaa !29
  %call = tail call %struct.rsa_st* @EVP_PKEY_get0_RSA(%struct.evp_pkey_st* noundef %1) #8
  %call1 = tail call i32 @RSA_size(%struct.rsa_st* noundef %call) #8
  %conv = sext i32 %call1 to i64
  %call2 = tail call i8* @CRYPTO_malloc(i64 noundef %conv, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 115) #8
  store i8* %call2, i8** %tbuf, align 8, !tbaa !27
  %cmp4 = icmp eq i8* %call2, null
  br i1 %cmp4, label %if.then6, label %return

if.then6:                                         ; preds = %if.end
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 116, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.setup_tbuf, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 4, i32 noundef 786688, i8* noundef null) #8
  br label %return

return:                                           ; preds = %if.end, %entry, %if.then6
  %retval.0 = phi i32 [ 0, %if.then6 ], [ 1, %entry ], [ 1, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

declare i32 @RSA_X931_hash_id(i32 noundef) local_unnamed_addr #3

declare i32 @RSA_private_encrypt(i32 noundef, i8* noundef, i8* noundef, %struct.rsa_st* noundef, i32 noundef) local_unnamed_addr #3

declare i32 @RSA_sign(i32 noundef, i8* noundef, i32 noundef, i8* noundef, i32* noundef, %struct.rsa_st* noundef) local_unnamed_addr #3

declare i32 @RSA_padding_add_PKCS1_PSS_mgf1(%struct.rsa_st* noundef, i8* noundef, i8* noundef, %struct.evp_md_st* noundef, %struct.evp_md_st* noundef, i32 noundef) local_unnamed_addr #3

declare i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare i32 @RSA_verify(i32 noundef, i8* noundef, i32 noundef, i8* noundef, i32 noundef, %struct.rsa_st* noundef) local_unnamed_addr #3

declare i32 @RSA_public_decrypt(i32 noundef, i8* noundef, i8* noundef, %struct.rsa_st* noundef, i32 noundef) local_unnamed_addr #3

declare i32 @RSA_verify_PKCS1_PSS_mgf1(%struct.rsa_st* noundef, i8* noundef, %struct.evp_md_st* noundef, %struct.evp_md_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #5

declare i32 @ossl_rsa_verify(i32 noundef, i8* noundef, i32 noundef, i8* noundef, i64* noundef, i8* noundef, i64 noundef, %struct.rsa_st* noundef) local_unnamed_addr #3

declare i32 @RSA_padding_add_PKCS1_OAEP_mgf1(i8* noundef, i32 noundef, i8* noundef, i32 noundef, i8* noundef, i32 noundef, %struct.evp_md_st* noundef, %struct.evp_md_st* noundef) local_unnamed_addr #3

declare i32 @RSA_public_encrypt(i32 noundef, i8* noundef, i8* noundef, %struct.rsa_st* noundef, i32 noundef) local_unnamed_addr #3

declare i32 @RSA_private_decrypt(i32 noundef, i8* noundef, i8* noundef, %struct.rsa_st* noundef, i32 noundef) local_unnamed_addr #3

declare i32 @RSA_padding_check_PKCS1_OAEP_mgf1(i8* noundef, i32 noundef, i8* noundef, i32 noundef, i32 noundef, i8* noundef, i32 noundef, %struct.evp_md_st* noundef, %struct.evp_md_st* noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline nosync nounwind readnone uwtable
define internal fastcc i64 @constant_time_select_s(i64 noundef %mask, i64 noundef %a, i64 noundef %b) unnamed_addr #6 {
entry:
  %call = tail call fastcc i64 @value_barrier_s(i64 noundef %mask) #9
  %and = and i64 %call, %a
  %neg = xor i64 %mask, -1
  %call1 = tail call fastcc i64 @value_barrier_s(i64 noundef %neg) #9
  %and2 = and i64 %call1, %b
  %or = or i64 %and2, %and
  ret i64 %or
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc i64 @constant_time_msb_s(i64 noundef %a) unnamed_addr #0 {
entry:
  %shr.neg = ashr i64 %a, 63
  ret i64 %shr.neg
}

; Function Attrs: nofree noinline nosync nounwind readnone uwtable
define internal fastcc i32 @constant_time_select_int(i32 noundef %mask, i32 noundef %a) unnamed_addr #6 {
entry:
  %call = tail call fastcc i32 @constant_time_select(i32 noundef %mask, i32 noundef %a) #9
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc i32 @constant_time_msb(i32 noundef %a) unnamed_addr #0 {
entry:
  %shr.neg = ashr i32 %a, 31
  ret i32 %shr.neg
}

; Function Attrs: nofree noinline nosync nounwind readnone uwtable
define internal fastcc i64 @value_barrier_s(i64 noundef %a) unnamed_addr #6 {
entry:
  %0 = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %a) #12, !srcloc !43
  ret i64 %0
}

; Function Attrs: nofree noinline nosync nounwind readnone uwtable
define internal fastcc i32 @constant_time_select(i32 noundef %mask, i32 noundef %a) unnamed_addr #6 {
entry:
  %call = tail call fastcc i32 @value_barrier(i32 noundef %mask) #9
  %and = and i32 %call, %a
  %neg = xor i32 %mask, -1
  %call1 = tail call fastcc i32 @value_barrier(i32 noundef %neg) #9
  %and2 = and i32 %call1, 1
  %or = or i32 %and2, %and
  ret i32 %or
}

; Function Attrs: nofree noinline nosync nounwind readnone uwtable
define internal fastcc i32 @value_barrier(i32 noundef %a) unnamed_addr #6 {
entry:
  %0 = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %a) #12, !srcloc !44
  ret i32 %0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @check_padding_md(%struct.evp_md_st* noundef %md, i32 noundef %padding) unnamed_addr #1 {
entry:
  %tobool.not = icmp eq %struct.evp_md_st* %md, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call i32 @EVP_MD_get_type(%struct.evp_md_st* noundef nonnull %md) #8
  switch i32 %padding, label %if.else [
    i32 3, label %cleanup.sink.split
    i32 5, label %if.then4
  ]

if.then4:                                         ; preds = %if.end
  %call5 = tail call i32 @RSA_X931_hash_id(i32 noundef %call) #8
  %cmp6 = icmp eq i32 %call5, -1
  br i1 %cmp6, label %cleanup.sink.split, label %cleanup

if.else:                                          ; preds = %if.end
  switch i32 %call, label %cleanup.sink.split [
    i32 64, label %cleanup
    i32 675, label %cleanup
    i32 672, label %cleanup
    i32 673, label %cleanup
    i32 674, label %cleanup
    i32 1094, label %cleanup
    i32 1095, label %cleanup
    i32 4, label %cleanup
    i32 114, label %cleanup
    i32 3, label %cleanup
    i32 257, label %cleanup
    i32 95, label %cleanup
    i32 117, label %cleanup
    i32 1096, label %cleanup
    i32 1097, label %cleanup
    i32 1098, label %cleanup
    i32 1099, label %cleanup
  ]

cleanup.sink.split:                               ; preds = %if.else, %if.then4, %if.end
  %.sink14 = phi i32 [ 387, %if.end ], [ 393, %if.then4 ], [ 419, %if.else ]
  %.sink = phi i32 [ 141, %if.end ], [ 142, %if.then4 ], [ 157, %if.else ]
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef %.sink14, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.check_padding_md, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 4, i32 noundef %.sink, i8* noundef null) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.then4, %if.else, %if.else, %if.else, %if.else, %if.else, %if.else, %if.else, %if.else, %if.else, %if.else, %if.else, %if.else, %if.else, %if.else, %if.else, %if.else, %if.else, %entry
  %retval.0 = phi i32 [ 1, %entry ], [ 1, %if.else ], [ 1, %if.else ], [ 1, %if.else ], [ 1, %if.else ], [ 1, %if.else ], [ 1, %if.else ], [ 1, %if.else ], [ 1, %if.else ], [ 1, %if.else ], [ 1, %if.else ], [ 1, %if.else ], [ 1, %if.else ], [ 1, %if.else ], [ 1, %if.else ], [ 1, %if.else ], [ 1, %if.else ], [ 1, %if.else ], [ 1, %if.then4 ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

declare %struct.evp_md_st* @EVP_sha1() local_unnamed_addr #3

declare i32 @BN_is_odd(%struct.bignum_st* noundef) local_unnamed_addr #3

declare i32 @BN_is_one(%struct.bignum_st* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @strcmp(i8* noundef, i8* noundef) local_unnamed_addr #5

declare i32 @EVP_PKEY_CTX_set_rsa_padding(%struct.evp_pkey_ctx_st* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline nounwind readonly uwtable willreturn
declare i32 @atoi(i8* noundef nonnull) local_unnamed_addr #7

declare i32 @EVP_PKEY_CTX_set_rsa_pss_saltlen(%struct.evp_pkey_ctx_st* noundef, i32 noundef) local_unnamed_addr #3

declare i32 @EVP_PKEY_CTX_set_rsa_keygen_bits(%struct.evp_pkey_ctx_st* noundef, i32 noundef) local_unnamed_addr #3

declare i32 @BN_asc2bn(%struct.bignum_st** noundef, i8* noundef) local_unnamed_addr #3

declare i32 @EVP_PKEY_CTX_set1_rsa_keygen_pubexp(%struct.evp_pkey_ctx_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #3

declare i32 @EVP_PKEY_CTX_set_rsa_keygen_primes(%struct.evp_pkey_ctx_st* noundef, i32 noundef) local_unnamed_addr #3

declare i32 @EVP_PKEY_CTX_md(%struct.evp_pkey_ctx_st* noundef, i32 noundef, i32 noundef, i8* noundef) local_unnamed_addr #3

declare i32 @EVP_PKEY_CTX_set_rsa_pss_keygen_saltlen(%struct.evp_pkey_ctx_st* noundef, i32 noundef) local_unnamed_addr #3

declare i8* @OPENSSL_hexstr2buf(i8* noundef, i64* noundef) local_unnamed_addr #3

declare i32 @EVP_PKEY_CTX_set0_rsa_oaep_label(%struct.evp_pkey_ctx_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal i32 @pkey_pss_init(%struct.evp_pkey_ctx_st* nocapture noundef readonly %ctx) #1 {
entry:
  %md = alloca %struct.evp_md_st*, align 8
  %mgf1md = alloca %struct.evp_md_st*, align 8
  %min_saltlen = alloca i32, align 4
  %data = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 16
  %0 = bitcast i8** %data to %struct.RSA_PKEY_CTX**
  %1 = load %struct.RSA_PKEY_CTX*, %struct.RSA_PKEY_CTX** %0, align 8, !tbaa !20
  %2 = bitcast %struct.evp_md_st** %md to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #10
  %3 = bitcast %struct.evp_md_st** %mgf1md to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #10
  %4 = bitcast i32* %min_saltlen to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #10
  %pmeth = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 12
  %5 = load %struct.evp_pkey_method_st*, %struct.evp_pkey_method_st** %pmeth, align 8, !tbaa !12
  %pkey_id = getelementptr inbounds %struct.evp_pkey_method_st, %struct.evp_pkey_method_st* %5, i64 0, i32 0
  %6 = load i32, i32* %pkey_id, align 8, !tbaa !15
  %cmp = icmp eq i32 %6, 912
  br i1 %cmp, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %pkey = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 14
  %7 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey, align 8, !tbaa !29
  %call = tail call %struct.rsa_st* @EVP_PKEY_get0_RSA(%struct.evp_pkey_st* noundef %7) #8
  %pss = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %call, i64 0, i32 14
  %8 = load %struct.rsa_pss_params_st*, %struct.rsa_pss_params_st** %pss, align 8, !tbaa !38
  %cmp1 = icmp eq %struct.rsa_pss_params_st* %8, null
  br i1 %cmp1, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.end
  %call5 = call i32 @ossl_rsa_pss_get_param(%struct.rsa_pss_params_st* noundef nonnull %8, %struct.evp_md_st** noundef nonnull %md, %struct.evp_md_st** noundef nonnull %mgf1md, i32* noundef nonnull %min_saltlen) #8
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %cleanup, label %if.end7

if.end7:                                          ; preds = %if.end3
  %call8 = call i32 @RSA_size(%struct.rsa_st* noundef nonnull %call) #8
  %9 = load %struct.evp_md_st*, %struct.evp_md_st** %md, align 8, !tbaa !24
  %call9 = call i32 @EVP_MD_get_size(%struct.evp_md_st* noundef %9) #8
  %sub = sub i32 %call8, %call9
  %call10 = call i32 @RSA_bits(%struct.rsa_st* noundef nonnull %call) #8
  %and = and i32 %call10, 7
  %cmp11 = icmp eq i32 %and, 1
  %dec = sext i1 %cmp11 to i32
  %spec.select = add nsw i32 %sub, %dec
  %10 = load i32, i32* %min_saltlen, align 4, !tbaa !31
  %cmp14 = icmp sgt i32 %10, %spec.select
  br i1 %cmp14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end7
  call void @ERR_new() #8
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 851, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.pkey_pss_init, i64 0, i64 0)) #8
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 4, i32 noundef 150, i8* noundef null) #8
  br label %cleanup

if.end16:                                         ; preds = %if.end7
  %min_saltlen17 = getelementptr inbounds %struct.RSA_PKEY_CTX, %struct.RSA_PKEY_CTX* %1, i64 0, i32 8
  store i32 %10, i32* %min_saltlen17, align 4, !tbaa !19
  %11 = load %struct.evp_md_st*, %struct.evp_md_st** %md, align 8, !tbaa !24
  %md18 = getelementptr inbounds %struct.RSA_PKEY_CTX, %struct.RSA_PKEY_CTX* %1, i64 0, i32 5
  store %struct.evp_md_st* %11, %struct.evp_md_st** %md18, align 8, !tbaa !30
  %12 = load %struct.evp_md_st*, %struct.evp_md_st** %mgf1md, align 8, !tbaa !24
  %mgf1md19 = getelementptr inbounds %struct.RSA_PKEY_CTX, %struct.RSA_PKEY_CTX* %1, i64 0, i32 6
  store %struct.evp_md_st* %12, %struct.evp_md_st** %mgf1md19, align 8, !tbaa !33
  %saltlen = getelementptr inbounds %struct.RSA_PKEY_CTX, %struct.RSA_PKEY_CTX* %1, i64 0, i32 7
  store i32 %10, i32* %saltlen, align 8, !tbaa !18
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end, %entry, %if.end16, %if.then15
  %retval.0 = phi i32 [ 0, %if.then15 ], [ 1, %if.end16 ], [ 0, %entry ], [ 1, %if.end ], [ 0, %if.end3 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #10
  ret i32 %retval.0
}

declare i32 @ossl_rsa_pss_get_param(%struct.rsa_pss_params_st* noundef, %struct.evp_md_st** noundef, %struct.evp_md_st** noundef, i32* noundef) local_unnamed_addr #3

declare i32 @RSA_bits(%struct.rsa_st* noundef) local_unnamed_addr #3

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noinline nosync nounwind readnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin nounwind "no-builtins" }
attributes #9 = { nobuiltin "no-builtins" }
attributes #10 = { nounwind }
attributes #11 = { nobuiltin nounwind readonly willreturn "no-builtins" }
attributes #12 = { nounwind readnone }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !6, i64 0}
!5 = !{!"", !6, i64 0, !9, i64 8, !6, i64 16, !7, i64 20, !6, i64 28, !9, i64 32, !9, i64 40, !6, i64 48, !6, i64 52, !9, i64 56, !9, i64 64, !10, i64 72}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"any pointer", !7, i64 0}
!10 = !{!"long", !7, i64 0}
!11 = !{!5, !6, i64 16}
!12 = !{!13, !9, i64 120}
!13 = !{!"evp_pkey_ctx_st", !6, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !7, i64 40, !14, i64 56, !9, i64 88, !9, i64 96, !9, i64 104, !6, i64 112, !6, i64 116, !9, i64 120, !9, i64 128, !9, i64 136, !9, i64 144, !9, i64 152, !6, i64 160, !9, i64 168}
!14 = !{!"", !9, i64 0, !9, i64 8, !10, i64 16, !6, i64 24}
!15 = !{!16, !6, i64 0}
!16 = !{!"evp_pkey_method_st", !6, i64 0, !6, i64 4, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !9, i64 64, !9, i64 72, !9, i64 80, !9, i64 88, !9, i64 96, !9, i64 104, !9, i64 112, !9, i64 120, !9, i64 128, !9, i64 136, !9, i64 144, !9, i64 152, !9, i64 160, !9, i64 168, !9, i64 176, !9, i64 184, !9, i64 192, !9, i64 200, !9, i64 208, !9, i64 216, !9, i64 224, !9, i64 232, !9, i64 240, !9, i64 248}
!17 = !{!5, !6, i64 28}
!18 = !{!5, !6, i64 48}
!19 = !{!5, !6, i64 52}
!20 = !{!13, !9, i64 152}
!21 = !{!13, !9, i64 104}
!22 = !{!13, !6, i64 112}
!23 = !{!5, !9, i64 8}
!24 = !{!9, !9, i64 0}
!25 = !{!5, !9, i64 64}
!26 = !{!5, !10, i64 72}
!27 = !{!5, !9, i64 56}
!28 = !{!13, !9, i64 96}
!29 = !{!13, !9, i64 136}
!30 = !{!5, !9, i64 32}
!31 = !{!6, !6, i64 0}
!32 = !{!7, !7, i64 0}
!33 = !{!5, !9, i64 40}
!34 = !{!10, !10, i64 0}
!35 = !{i64 -1, i64 1}
!36 = !{i32 -1, i32 1}
!37 = !{!13, !6, i64 0}
!38 = !{!39, !9, i64 128}
!39 = !{!"rsa_st", !6, i64 0, !9, i64 8, !6, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !9, i64 64, !9, i64 72, !9, i64 80, !9, i64 88, !9, i64 96, !40, i64 104, !9, i64 128, !9, i64 136, !42, i64 144, !7, i64 160, !6, i64 164, !9, i64 168, !9, i64 176, !9, i64 184, !9, i64 192, !9, i64 200, !9, i64 208, !6, i64 216}
!40 = !{!"rsa_pss_params_30_st", !6, i64 0, !41, i64 4, !6, i64 12, !6, i64 16}
!41 = !{!"", !6, i64 0, !6, i64 4}
!42 = !{!"crypto_ex_data_st", !9, i64 0, !9, i64 8}
!43 = !{i64 65917}
!44 = !{i64 65145}
