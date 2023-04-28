; ModuleID = 'crypto/ec/ec_pmeth.c'
source_filename = "crypto/ec/ec_pmeth.c"
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
%struct.evp_pkey_st = type { i32, i32, %struct.evp_pkey_asn1_method_st*, %struct.engine_st*, %struct.engine_st*, %union.legacy_pkey_st, %union.legacy_pkey_st, i32, i8*, %struct.stack_st_X509_ATTRIBUTE*, i32, i8, %struct.crypto_ex_data_st, %struct.evp_keymgmt_st*, i8*, i64, %struct.stack_st_OP_CACHE_ELEM*, i64, %struct.anon.6 }
%struct.evp_pkey_asn1_method_st = type opaque
%union.legacy_pkey_st = type { i8* }
%struct.stack_st_X509_ATTRIBUTE = type opaque
%struct.crypto_ex_data_st = type { %struct.ossl_lib_ctx_st*, %struct.stack_st_void* }
%struct.stack_st_void = type opaque
%struct.stack_st_OP_CACHE_ELEM = type opaque
%struct.anon.6 = type { i32, i32, i32 }
%struct.bignum_st = type opaque
%struct.evp_md_ctx_st = type opaque
%struct.EC_PKEY_CTX = type { %struct.ec_group_st*, %struct.evp_md_st*, %struct.ec_key_st*, i8, i8, %struct.evp_md_st*, i8*, i64, i64 }
%struct.ec_group_st = type { %struct.ec_method_st*, %struct.ec_point_st*, %struct.bignum_st*, %struct.bignum_st*, i32, i32, i32, i32, i8*, i64, %struct.bignum_st*, [6 x i32], %struct.bignum_st*, %struct.bignum_st*, i32, i8*, i8*, i32 (%struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, %struct.bn_mont_ctx_st*, i32, %union.anon.5, %struct.ossl_lib_ctx_st*, i8* }
%struct.ec_method_st = type { i32, i32, i32 (%struct.ec_group_st*)*, void (%struct.ec_group_st*)*, void (%struct.ec_group_st*)*, i32 (%struct.ec_group_st*, %struct.ec_group_st*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*)*, i32 (%struct.ec_group_st*)*, i32 (%struct.ec_group_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_point_st*)*, void (%struct.ec_point_st*)*, void (%struct.ec_point_st*)*, i32 (%struct.ec_point_st*, %struct.ec_point_st*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_st*, i32, %struct.bignum_ctx*)*, i64 (%struct.ec_group_st*, %struct.ec_point_st*, i32, i8*, i64, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, i8*, i64, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, i64, %struct.ec_point_st**, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_st*, i64, %struct.ec_point_st**, %struct.bignum_st**, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i64 (%struct.ec_key_st*, i8*, i64)*, i32 (%struct.ec_key_st*, i8*, i64)*, i32 (%struct.ec_key_st*, %struct.bignum_st*)*, i32 (%struct.ec_key_st*)*, i32 (%struct.ec_key_st*)*, i32 (%struct.ec_key_st*)*, i32 (%struct.ec_key_st*, %struct.ec_key_st*)*, void (%struct.ec_key_st*)*, i32 (i8**, i64*, %struct.ec_point_st*, %struct.ec_key_st*)*, i32 (%struct.ec_key_st*, %struct.bignum_ctx*, %struct.bignum_st**, %struct.bignum_st**)*, %struct.ECDSA_SIG_st* (i8*, i32, %struct.bignum_st*, %struct.bignum_st*, %struct.ec_key_st*)*, i32 (i8*, i32, %struct.ECDSA_SIG_st*, %struct.ec_key_st*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*)* }
%struct.bignum_ctx = type opaque
%struct.ECDSA_SIG_st = type { %struct.bignum_st*, %struct.bignum_st* }
%struct.ec_point_st = type { %struct.ec_method_st*, i32, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, i32 }
%struct.bn_mont_ctx_st = type opaque
%union.anon.5 = type { %struct.nistp224_pre_comp_st* }
%struct.nistp224_pre_comp_st = type opaque
%struct.ec_key_st = type { %struct.ec_key_method_st*, %struct.engine_st*, i32, %struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_st*, i32, i32, i32, i32, %struct.crypto_ex_data_st, i8*, %struct.ossl_lib_ctx_st*, i8*, i64 }
%struct.ec_key_method_st = type { i8*, i32, i32 (%struct.ec_key_st*)*, void (%struct.ec_key_st*)*, i32 (%struct.ec_key_st*, %struct.ec_key_st*)*, i32 (%struct.ec_key_st*, %struct.ec_group_st*)*, i32 (%struct.ec_key_st*, %struct.bignum_st*)*, i32 (%struct.ec_key_st*, %struct.ec_point_st*)*, i32 (%struct.ec_key_st*)*, i32 (i8**, i64*, %struct.ec_point_st*, %struct.ec_key_st*)*, i32 (i32, i8*, i32, i8*, i32*, %struct.bignum_st*, %struct.bignum_st*, %struct.ec_key_st*)*, i32 (%struct.ec_key_st*, %struct.bignum_ctx*, %struct.bignum_st**, %struct.bignum_st**)*, %struct.ECDSA_SIG_st* (i8*, i32, %struct.bignum_st*, %struct.bignum_st*, %struct.ec_key_st*)*, i32 (i32, i8*, i32, i8*, i32, %struct.ec_key_st*)*, i32 (i8*, i32, %struct.ECDSA_SIG_st*, %struct.ec_key_st*)* }
%struct.evp_md_st = type { i32, i32, i32, i64, i32, i32 (%struct.evp_md_ctx_st*)*, i32 (%struct.evp_md_ctx_st*, i8*, i64)*, i32 (%struct.evp_md_ctx_st*, i8*)*, i32 (%struct.evp_md_ctx_st*, %struct.evp_md_ctx_st*)*, i32 (%struct.evp_md_ctx_st*)*, i32, i32, i32 (%struct.evp_md_ctx_st*, i32, i32, i8*)*, i32, i8*, i8*, %struct.ossl_provider_st*, i32, i8*, i8* (i8*)*, i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64*, i64)*, i32 (i8*, i8*, i64, i8*, i64*, i64)*, void (i8*)*, i8* (i8*)*, i32 (%struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i8*)*, %struct.ossl_param_st* (i8*, i8*)*, %struct.ossl_param_st* (i8*, i8*)* }
%struct.ossl_provider_st = type opaque
%struct.ossl_param_st = type { i8*, i32, i8*, i64, i64 }

@ec_pkey_meth = internal constant %struct.evp_pkey_method_st { i32 408, i32 0, i32 (%struct.evp_pkey_ctx_st*)* @pkey_ec_init, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st*)* @pkey_ec_copy, void (%struct.evp_pkey_ctx_st*)* @pkey_ec_cleanup, i32 (%struct.evp_pkey_ctx_st*)* null, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_st*)* @pkey_ec_paramgen, i32 (%struct.evp_pkey_ctx_st*)* null, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_st*)* @pkey_ec_keygen, i32 (%struct.evp_pkey_ctx_st*)* null, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)* @pkey_ec_sign, i32 (%struct.evp_pkey_ctx_st*)* null, i32 (%struct.evp_pkey_ctx_st*, i8*, i64, i8*, i64)* @pkey_ec_verify, i32 (%struct.evp_pkey_ctx_st*)* null, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)* null, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_md_ctx_st*)* null, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, %struct.evp_md_ctx_st*)* null, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_md_ctx_st*)* null, i32 (%struct.evp_pkey_ctx_st*, i8*, i32, %struct.evp_md_ctx_st*)* null, i32 (%struct.evp_pkey_ctx_st*)* null, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)* null, i32 (%struct.evp_pkey_ctx_st*)* null, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)* null, i32 (%struct.evp_pkey_ctx_st*)* null, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*)* @pkey_ec_kdf_derive, i32 (%struct.evp_pkey_ctx_st*, i32, i32, i8*)* @pkey_ec_ctrl, i32 (%struct.evp_pkey_ctx_st*, i8*, i8*)* @pkey_ec_ctrl_str, i32 (%struct.evp_md_ctx_st*, i8*, i64*, i8*, i64)* null, i32 (%struct.evp_md_ctx_st*, i8*, i64, i8*, i64)* null, i32 (%struct.evp_pkey_st*)* null, i32 (%struct.evp_pkey_st*)* null, i32 (%struct.evp_pkey_st*)* null, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_md_ctx_st*)* null }, align 8
@.str = private unnamed_addr constant [21 x i8] c"crypto/ec/ec_pmeth.c\00", align 1
@__func__.pkey_ec_init = private unnamed_addr constant [13 x i8] c"pkey_ec_init\00", align 1
@__func__.pkey_ec_paramgen = private unnamed_addr constant [17 x i8] c"pkey_ec_paramgen\00", align 1
@__func__.pkey_ec_keygen = private unnamed_addr constant [15 x i8] c"pkey_ec_keygen\00", align 1
@__func__.pkey_ec_sign = private unnamed_addr constant [13 x i8] c"pkey_ec_sign\00", align 1
@__func__.pkey_ec_kdf_derive = private unnamed_addr constant [19 x i8] c"pkey_ec_kdf_derive\00", align 1
@__func__.pkey_ec_derive = private unnamed_addr constant [15 x i8] c"pkey_ec_derive\00", align 1
@__func__.pkey_ec_ctrl = private unnamed_addr constant [13 x i8] c"pkey_ec_ctrl\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"ec_paramgen_curve\00", align 1
@__func__.pkey_ec_ctrl_str = private unnamed_addr constant [17 x i8] c"pkey_ec_ctrl_str\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"ec_param_enc\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"explicit\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"named_curve\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"ecdh_kdf_md\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"ecdh_cofactor_mode\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.evp_pkey_method_st* @ossl_ec_pkey_method() local_unnamed_addr #0 {
entry:
  ret %struct.evp_pkey_method_st* @ec_pkey_meth
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @pkey_ec_init(%struct.evp_pkey_ctx_st* nocapture noundef writeonly %ctx) #1 {
entry:
  %call = tail call i8* @CRYPTO_zalloc(i64 noundef 64, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 51) #6
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 52, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.pkey_ec_init, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 786688, i8* noundef null) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = getelementptr inbounds i8, i8* %call, i64 24
  store i8 -1, i8* %0, align 8, !tbaa !4
  %1 = getelementptr inbounds i8, i8* %call, i64 25
  store i8 1, i8* %1, align 1, !tbaa !10
  %data = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 16
  store i8* %call, i8** %data, align 8, !tbaa !11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @pkey_ec_copy(%struct.evp_pkey_ctx_st* nocapture noundef %dst, %struct.evp_pkey_ctx_st* nocapture noundef readonly %src) #1 {
entry:
  %call = tail call i32 @pkey_ec_init(%struct.evp_pkey_ctx_st* noundef %dst) #7
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %src, i64 0, i32 16
  %0 = bitcast i8** %data to %struct.EC_PKEY_CTX**
  %1 = load %struct.EC_PKEY_CTX*, %struct.EC_PKEY_CTX** %0, align 8, !tbaa !11
  %data1 = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %dst, i64 0, i32 16
  %2 = bitcast i8** %data1 to %struct.EC_PKEY_CTX**
  %3 = load %struct.EC_PKEY_CTX*, %struct.EC_PKEY_CTX** %2, align 8, !tbaa !11
  %gen_group = getelementptr inbounds %struct.EC_PKEY_CTX, %struct.EC_PKEY_CTX* %1, i64 0, i32 0
  %4 = load %struct.ec_group_st*, %struct.ec_group_st** %gen_group, align 8, !tbaa !15
  %tobool2.not = icmp eq %struct.ec_group_st* %4, null
  br i1 %tobool2.not, label %if.end11, label %if.then3

if.then3:                                         ; preds = %if.end
  %call5 = tail call %struct.ec_group_st* @EC_GROUP_dup(%struct.ec_group_st* noundef nonnull %4) #6
  %gen_group6 = getelementptr inbounds %struct.EC_PKEY_CTX, %struct.EC_PKEY_CTX* %3, i64 0, i32 0
  store %struct.ec_group_st* %call5, %struct.ec_group_st** %gen_group6, align 8, !tbaa !15
  %tobool8.not = icmp eq %struct.ec_group_st* %call5, null
  br i1 %tobool8.not, label %cleanup, label %if.end11

if.end11:                                         ; preds = %if.then3, %if.end
  %md = getelementptr inbounds %struct.EC_PKEY_CTX, %struct.EC_PKEY_CTX* %1, i64 0, i32 1
  %5 = load %struct.evp_md_st*, %struct.evp_md_st** %md, align 8, !tbaa !16
  %md12 = getelementptr inbounds %struct.EC_PKEY_CTX, %struct.EC_PKEY_CTX* %3, i64 0, i32 1
  store %struct.evp_md_st* %5, %struct.evp_md_st** %md12, align 8, !tbaa !16
  %co_key = getelementptr inbounds %struct.EC_PKEY_CTX, %struct.EC_PKEY_CTX* %1, i64 0, i32 2
  %6 = load %struct.ec_key_st*, %struct.ec_key_st** %co_key, align 8, !tbaa !17
  %tobool13.not = icmp eq %struct.ec_key_st* %6, null
  br i1 %tobool13.not, label %if.end22, label %if.then14

if.then14:                                        ; preds = %if.end11
  %call16 = tail call %struct.ec_key_st* @EC_KEY_dup(%struct.ec_key_st* noundef nonnull %6) #6
  %co_key17 = getelementptr inbounds %struct.EC_PKEY_CTX, %struct.EC_PKEY_CTX* %3, i64 0, i32 2
  store %struct.ec_key_st* %call16, %struct.ec_key_st** %co_key17, align 8, !tbaa !17
  %tobool19.not = icmp eq %struct.ec_key_st* %call16, null
  br i1 %tobool19.not, label %cleanup, label %if.end22

if.end22:                                         ; preds = %if.then14, %if.end11
  %kdf_type = getelementptr inbounds %struct.EC_PKEY_CTX, %struct.EC_PKEY_CTX* %1, i64 0, i32 4
  %7 = load i8, i8* %kdf_type, align 1, !tbaa !10
  %kdf_type23 = getelementptr inbounds %struct.EC_PKEY_CTX, %struct.EC_PKEY_CTX* %3, i64 0, i32 4
  store i8 %7, i8* %kdf_type23, align 1, !tbaa !10
  %kdf_md = getelementptr inbounds %struct.EC_PKEY_CTX, %struct.EC_PKEY_CTX* %1, i64 0, i32 5
  %8 = load %struct.evp_md_st*, %struct.evp_md_st** %kdf_md, align 8, !tbaa !18
  %kdf_md24 = getelementptr inbounds %struct.EC_PKEY_CTX, %struct.EC_PKEY_CTX* %3, i64 0, i32 5
  store %struct.evp_md_st* %8, %struct.evp_md_st** %kdf_md24, align 8, !tbaa !18
  %kdf_outlen = getelementptr inbounds %struct.EC_PKEY_CTX, %struct.EC_PKEY_CTX* %1, i64 0, i32 8
  %9 = load i64, i64* %kdf_outlen, align 8, !tbaa !19
  %kdf_outlen25 = getelementptr inbounds %struct.EC_PKEY_CTX, %struct.EC_PKEY_CTX* %3, i64 0, i32 8
  store i64 %9, i64* %kdf_outlen25, align 8, !tbaa !19
  %kdf_ukm = getelementptr inbounds %struct.EC_PKEY_CTX, %struct.EC_PKEY_CTX* %1, i64 0, i32 6
  %10 = load i8*, i8** %kdf_ukm, align 8, !tbaa !20
  %tobool26.not = icmp eq i8* %10, null
  br i1 %tobool26.not, label %if.else, label %if.then27

if.then27:                                        ; preds = %if.end22
  %kdf_ukmlen = getelementptr inbounds %struct.EC_PKEY_CTX, %struct.EC_PKEY_CTX* %1, i64 0, i32 7
  %11 = load i64, i64* %kdf_ukmlen, align 8, !tbaa !21
  %call29 = tail call i8* @CRYPTO_memdup(i8* noundef nonnull %10, i64 noundef %11, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 85) #6
  %kdf_ukm30 = getelementptr inbounds %struct.EC_PKEY_CTX, %struct.EC_PKEY_CTX* %3, i64 0, i32 6
  store i8* %call29, i8** %kdf_ukm30, align 8, !tbaa !20
  %tobool32.not = icmp eq i8* %call29, null
  br i1 %tobool32.not, label %cleanup, label %if.end36

if.else:                                          ; preds = %if.end22
  %kdf_ukm35 = getelementptr inbounds %struct.EC_PKEY_CTX, %struct.EC_PKEY_CTX* %3, i64 0, i32 6
  store i8* null, i8** %kdf_ukm35, align 8, !tbaa !20
  br label %if.end36

if.end36:                                         ; preds = %if.then27, %if.else
  %kdf_ukmlen37 = getelementptr inbounds %struct.EC_PKEY_CTX, %struct.EC_PKEY_CTX* %1, i64 0, i32 7
  %12 = load i64, i64* %kdf_ukmlen37, align 8, !tbaa !21
  %kdf_ukmlen38 = getelementptr inbounds %struct.EC_PKEY_CTX, %struct.EC_PKEY_CTX* %3, i64 0, i32 7
  store i64 %12, i64* %kdf_ukmlen38, align 8, !tbaa !21
  br label %cleanup

cleanup:                                          ; preds = %if.then27, %if.then14, %if.then3, %entry, %if.end36
  %retval.0 = phi i32 [ 1, %if.end36 ], [ 0, %entry ], [ 0, %if.then3 ], [ 0, %if.then14 ], [ 0, %if.then27 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal void @pkey_ec_cleanup(%struct.evp_pkey_ctx_st* nocapture noundef %ctx) #1 {
entry:
  %data = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 16
  %0 = load i8*, i8** %data, align 8, !tbaa !11
  %cmp.not = icmp eq i8* %0, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %gen_group = bitcast i8* %0 to %struct.ec_group_st**
  %1 = load %struct.ec_group_st*, %struct.ec_group_st** %gen_group, align 8, !tbaa !15
  tail call void @EC_GROUP_free(%struct.ec_group_st* noundef %1) #6
  %co_key = getelementptr inbounds i8, i8* %0, i64 16
  %2 = bitcast i8* %co_key to %struct.ec_key_st**
  %3 = load %struct.ec_key_st*, %struct.ec_key_st** %2, align 8, !tbaa !17
  tail call void @EC_KEY_free(%struct.ec_key_st* noundef %3) #6
  %kdf_ukm = getelementptr inbounds i8, i8* %0, i64 40
  %4 = bitcast i8* %kdf_ukm to i8**
  %5 = load i8*, i8** %4, align 8, !tbaa !20
  tail call void @CRYPTO_free(i8* noundef %5, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 100) #6
  tail call void @CRYPTO_free(i8* noundef nonnull %0, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 101) #6
  store i8* null, i8** %data, align 8, !tbaa !11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @pkey_ec_paramgen(%struct.evp_pkey_ctx_st* nocapture noundef readonly %ctx, %struct.evp_pkey_st* noundef %pkey) #1 {
entry:
  %data = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 16
  %0 = bitcast i8** %data to %struct.EC_PKEY_CTX**
  %1 = load %struct.EC_PKEY_CTX*, %struct.EC_PKEY_CTX** %0, align 8, !tbaa !11
  %gen_group = getelementptr inbounds %struct.EC_PKEY_CTX, %struct.EC_PKEY_CTX* %1, i64 0, i32 0
  %2 = load %struct.ec_group_st*, %struct.ec_group_st** %gen_group, align 8, !tbaa !15
  %cmp = icmp eq %struct.ec_group_st* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 439, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.pkey_ec_paramgen, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 139, i8* noundef null) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call %struct.ec_key_st* @EC_KEY_new() #6
  %cmp1 = icmp eq %struct.ec_key_st* %call, null
  br i1 %cmp1, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.end
  %3 = load %struct.ec_group_st*, %struct.ec_group_st** %gen_group, align 8, !tbaa !15
  %call5 = tail call i32 @EC_KEY_set_group(%struct.ec_key_st* noundef nonnull %call, %struct.ec_group_st* noundef %3) #6
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.then8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end3
  %4 = bitcast %struct.ec_key_st* %call to i8*
  %call6 = tail call i32 @EVP_PKEY_assign(%struct.evp_pkey_st* noundef %pkey, i32 noundef 408, i8* noundef nonnull %4) #6
  %cmp7.not = icmp eq i32 %call6, 0
  br i1 %cmp7.not, label %if.then8, label %cleanup

if.then8:                                         ; preds = %lor.lhs.false, %if.end3
  tail call void @EC_KEY_free(%struct.ec_key_st* noundef nonnull %call) #6
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false, %if.then8, %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.end ], [ %call6, %lor.lhs.false ], [ 0, %if.then8 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @pkey_ec_keygen(%struct.evp_pkey_ctx_st* nocapture noundef readonly %ctx, %struct.evp_pkey_st* noundef %pkey) #1 {
entry:
  %data = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 16
  %0 = bitcast i8** %data to %struct.EC_PKEY_CTX**
  %1 = load %struct.EC_PKEY_CTX*, %struct.EC_PKEY_CTX** %0, align 8, !tbaa !11
  %pkey1 = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 14
  %2 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey1, align 8, !tbaa !22
  %cmp = icmp eq %struct.evp_pkey_st* %2, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %gen_group = getelementptr inbounds %struct.EC_PKEY_CTX, %struct.EC_PKEY_CTX* %1, i64 0, i32 0
  %3 = load %struct.ec_group_st*, %struct.ec_group_st** %gen_group, align 8, !tbaa !15
  %cmp2 = icmp eq %struct.ec_group_st* %3, null
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 458, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.pkey_ec_keygen, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 139, i8* noundef null) #6
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true, %entry
  %call = tail call %struct.ec_key_st* @EC_KEY_new() #6
  %cmp3 = icmp eq %struct.ec_key_st* %call, null
  br i1 %cmp3, label %cleanup, label %if.end5

if.end5:                                          ; preds = %if.end
  %4 = bitcast %struct.ec_key_st* %call to i8*
  %call6 = tail call i32 @EVP_PKEY_assign(%struct.evp_pkey_st* noundef %pkey, i32 noundef 408, i8* noundef nonnull %4) #6
  %cmp7.not = icmp eq i32 %call6, 0
  br i1 %cmp7.not, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end5
  tail call void @EC_KEY_free(%struct.ec_key_st* noundef nonnull %call) #6
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %5 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey1, align 8, !tbaa !22
  %cmp11.not = icmp eq %struct.evp_pkey_st* %5, null
  br i1 %cmp11.not, label %if.else, label %if.then12

if.then12:                                        ; preds = %if.end9
  %call14 = tail call i32 @EVP_PKEY_copy_parameters(%struct.evp_pkey_st* noundef %pkey, %struct.evp_pkey_st* noundef nonnull %5) #6
  br label %if.end17

if.else:                                          ; preds = %if.end9
  %gen_group15 = getelementptr inbounds %struct.EC_PKEY_CTX, %struct.EC_PKEY_CTX* %1, i64 0, i32 0
  %6 = load %struct.ec_group_st*, %struct.ec_group_st** %gen_group15, align 8, !tbaa !15
  %call16 = tail call i32 @EC_KEY_set_group(%struct.ec_key_st* noundef nonnull %call, %struct.ec_group_st* noundef %6) #6
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.then12
  %ret.0 = phi i32 [ %call14, %if.then12 ], [ %call16, %if.else ]
  %tobool.not = icmp eq i32 %ret.0, 0
  br i1 %tobool.not, label %cleanup, label %cond.true

cond.true:                                        ; preds = %if.end17
  %call18 = tail call i32 @EC_KEY_generate_key(%struct.ec_key_st* noundef nonnull %call) #6
  br label %cleanup

cleanup:                                          ; preds = %cond.true, %if.end17, %if.end, %if.then8, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then8 ], [ 0, %if.end ], [ %call18, %cond.true ], [ 0, %if.end17 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @pkey_ec_sign(%struct.evp_pkey_ctx_st* nocapture noundef readonly %ctx, i8* noundef %sig, i64* nocapture noundef %siglen, i8* noundef %tbs, i64 noundef %tbslen) #1 {
entry:
  %sltmp = alloca i32, align 4
  %0 = bitcast i32* %sltmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #8
  %data = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 16
  %1 = bitcast i8** %data to %struct.EC_PKEY_CTX**
  %2 = load %struct.EC_PKEY_CTX*, %struct.EC_PKEY_CTX** %1, align 8, !tbaa !11
  %pkey = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 14
  %3 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey, align 8, !tbaa !22
  %call = tail call %struct.ec_key_st* @EVP_PKEY_get0_EC_KEY(%struct.evp_pkey_st* noundef %3) #6
  %call1 = tail call i32 @ECDSA_size(%struct.ec_key_st* noundef %call) #6
  %cmp = icmp sgt i32 %call1, 0
  br i1 %cmp, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %cmp4 = icmp eq i8* %sig, null
  br i1 %cmp4, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end
  %conv744 = zext i32 %call1 to i64
  store i64 %conv744, i64* %siglen, align 8, !tbaa !23
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %4 = load i64, i64* %siglen, align 8, !tbaa !23
  %conv945 = zext i32 %call1 to i64
  %cmp10 = icmp ult i64 %4, %conv945
  br i1 %cmp10, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end8
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 130, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.pkey_ec_sign, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 100, i8* noundef null) #6
  br label %cleanup

if.end13:                                         ; preds = %if.end8
  %md = getelementptr inbounds %struct.EC_PKEY_CTX, %struct.EC_PKEY_CTX* %2, i64 0, i32 1
  %5 = load %struct.evp_md_st*, %struct.evp_md_st** %md, align 8, !tbaa !16
  %cmp14.not = icmp eq %struct.evp_md_st* %5, null
  br i1 %cmp14.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %if.end13
  %call17 = tail call i32 @EVP_MD_get_type(%struct.evp_md_st* noundef nonnull %5) #6
  br label %cond.end

cond.end:                                         ; preds = %if.end13, %cond.true
  %cond = phi i32 [ %call17, %cond.true ], [ 64, %if.end13 ]
  %conv18 = trunc i64 %tbslen to i32
  %call19 = call i32 @ECDSA_sign(i32 noundef %cond, i8* noundef %tbs, i32 noundef %conv18, i8* noundef nonnull %sig, i32* noundef nonnull %sltmp, %struct.ec_key_st* noundef %call) #6
  %cmp20 = icmp slt i32 %call19, 1
  br i1 %cmp20, label %cleanup, label %if.end23

if.end23:                                         ; preds = %cond.end
  %6 = load i32, i32* %sltmp, align 4, !tbaa !24
  %conv24 = zext i32 %6 to i64
  store i64 %conv24, i64* %siglen, align 8, !tbaa !23
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %entry, %if.end23, %if.then12, %if.then6
  %retval.0 = phi i32 [ 1, %if.then6 ], [ 0, %if.then12 ], [ 1, %if.end23 ], [ 0, %entry ], [ %call19, %cond.end ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #8
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @pkey_ec_verify(%struct.evp_pkey_ctx_st* nocapture noundef readonly %ctx, i8* noundef %sig, i64 noundef %siglen, i8* noundef %tbs, i64 noundef %tbslen) #1 {
entry:
  %data = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 16
  %0 = bitcast i8** %data to %struct.EC_PKEY_CTX**
  %1 = load %struct.EC_PKEY_CTX*, %struct.EC_PKEY_CTX** %0, align 8, !tbaa !11
  %pkey = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 14
  %2 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey, align 8, !tbaa !22
  %call = tail call %struct.ec_key_st* @EVP_PKEY_get0_EC_KEY(%struct.evp_pkey_st* noundef %2) #6
  %md = getelementptr inbounds %struct.EC_PKEY_CTX, %struct.EC_PKEY_CTX* %1, i64 0, i32 1
  %3 = load %struct.evp_md_st*, %struct.evp_md_st** %md, align 8, !tbaa !16
  %tobool.not = icmp eq %struct.evp_md_st* %3, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call2 = tail call i32 @EVP_MD_get_type(%struct.evp_md_st* noundef nonnull %3) #6
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %type.0 = phi i32 [ %call2, %if.then ], [ 64, %entry ]
  %conv = trunc i64 %tbslen to i32
  %conv3 = trunc i64 %siglen to i32
  %call4 = tail call i32 @ECDSA_verify(i32 noundef %type.0, i8* noundef %tbs, i32 noundef %conv, i8* noundef %sig, i32 noundef %conv3, %struct.ec_key_st* noundef %call) #6
  ret i32 %call4
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @pkey_ec_kdf_derive(%struct.evp_pkey_ctx_st* nocapture noundef readonly %ctx, i8* noundef %key, i64* nocapture noundef %keylen) #1 {
entry:
  %ktmplen = alloca i64, align 8
  %data = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 16
  %0 = bitcast i8** %data to %struct.EC_PKEY_CTX**
  %1 = load %struct.EC_PKEY_CTX*, %struct.EC_PKEY_CTX** %0, align 8, !tbaa !11
  %2 = bitcast i64* %ktmplen to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #8
  %kdf_type = getelementptr inbounds %struct.EC_PKEY_CTX, %struct.EC_PKEY_CTX* %1, i64 0, i32 4
  %3 = load i8, i8* %kdf_type, align 1, !tbaa !10
  %cmp = icmp eq i8 %3, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = tail call fastcc i32 @pkey_ec_derive(%struct.evp_pkey_ctx_st* noundef nonnull %ctx, i8* noundef %key, i64* noundef %keylen) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq i8* %key, null
  br i1 %tobool.not, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %kdf_outlen = getelementptr inbounds %struct.EC_PKEY_CTX, %struct.EC_PKEY_CTX* %1, i64 0, i32 8
  %4 = load i64, i64* %kdf_outlen, align 8, !tbaa !19
  store i64 %4, i64* %keylen, align 8, !tbaa !23
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %5 = load i64, i64* %keylen, align 8, !tbaa !23
  %kdf_outlen4 = getelementptr inbounds %struct.EC_PKEY_CTX, %struct.EC_PKEY_CTX* %1, i64 0, i32 8
  %6 = load i64, i64* %kdf_outlen4, align 8, !tbaa !19
  %cmp5.not = icmp eq i64 %5, %6
  br i1 %cmp5.not, label %if.end8, label %cleanup

if.end8:                                          ; preds = %if.end3
  %call9 = call fastcc i32 @pkey_ec_derive(%struct.evp_pkey_ctx_st* noundef nonnull %ctx, i8* noundef null, i64* noundef nonnull %ktmplen) #7
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %cleanup, label %if.end12

if.end12:                                         ; preds = %if.end8
  %7 = load i64, i64* %ktmplen, align 8, !tbaa !23
  %call13 = tail call i8* @CRYPTO_malloc(i64 noundef %7, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 232) #6
  %cmp14 = icmp eq i8* %call13, null
  br i1 %cmp14, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.end12
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 233, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.pkey_ec_kdf_derive, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 786688, i8* noundef null) #6
  br label %cleanup

if.end17:                                         ; preds = %if.end12
  %call18 = call fastcc i32 @pkey_ec_derive(%struct.evp_pkey_ctx_st* noundef nonnull %ctx, i8* noundef nonnull %call13, i64* noundef nonnull %ktmplen) #7
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end17.err_crit_edge, label %if.end21

if.end17.err_crit_edge:                           ; preds = %if.end17
  %.pre = load i64, i64* %ktmplen, align 8, !tbaa !23
  br label %err

if.end21:                                         ; preds = %if.end17
  %8 = load i64, i64* %keylen, align 8, !tbaa !23
  %9 = load i64, i64* %ktmplen, align 8, !tbaa !23
  %kdf_ukm = getelementptr inbounds %struct.EC_PKEY_CTX, %struct.EC_PKEY_CTX* %1, i64 0, i32 6
  %10 = load i8*, i8** %kdf_ukm, align 8, !tbaa !20
  %kdf_ukmlen = getelementptr inbounds %struct.EC_PKEY_CTX, %struct.EC_PKEY_CTX* %1, i64 0, i32 7
  %11 = load i64, i64* %kdf_ukmlen, align 8, !tbaa !21
  %kdf_md = getelementptr inbounds %struct.EC_PKEY_CTX, %struct.EC_PKEY_CTX* %1, i64 0, i32 5
  %12 = load %struct.evp_md_st*, %struct.evp_md_st** %kdf_md, align 8, !tbaa !18
  %libctx = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 1
  %13 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !25
  %propquery = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 2
  %14 = load i8*, i8** %propquery, align 8, !tbaa !26
  %call22 = tail call i32 @ossl_ecdh_kdf_X9_63(i8* noundef nonnull %key, i64 noundef %8, i8* noundef nonnull %call13, i64 noundef %9, i8* noundef %10, i64 noundef %11, %struct.evp_md_st* noundef %12, %struct.ossl_lib_ctx_st* noundef %13, i8* noundef %14) #6
  %tobool23.not = icmp ne i32 %call22, 0
  %spec.select = zext i1 %tobool23.not to i32
  br label %err

err:                                              ; preds = %if.end17.err_crit_edge, %if.end21
  %15 = phi i64 [ %.pre, %if.end17.err_crit_edge ], [ %9, %if.end21 ]
  %rv.0 = phi i32 [ 0, %if.end17.err_crit_edge ], [ %spec.select, %if.end21 ]
  tail call void @CRYPTO_clear_free(i8* noundef nonnull %call13, i64 noundef %15, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 246) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end3, %err, %if.then16, %if.then2, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ 0, %if.then16 ], [ %rv.0, %err ], [ 1, %if.then2 ], [ 0, %if.end3 ], [ 0, %if.end8 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #8
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @pkey_ec_ctrl(%struct.evp_pkey_ctx_st* nocapture noundef readonly %ctx, i32 noundef %type, i32 noundef %p1, i8* noundef %p2) #1 {
entry:
  %data = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 16
  %0 = bitcast i8** %data to %struct.EC_PKEY_CTX**
  %1 = load %struct.EC_PKEY_CTX*, %struct.EC_PKEY_CTX** %0, align 8, !tbaa !11
  switch i32 %type, label %sw.default [
    i32 4097, label %sw.bb
    i32 4098, label %sw.bb2
    i32 4099, label %sw.bb7
    i32 4100, label %sw.bb67
    i32 4101, label %sw.bb81
    i32 4102, label %sw.bb82
    i32 4103, label %sw.bb84
    i32 4104, label %sw.bb90
    i32 4105, label %sw.bb93
    i32 4106, label %sw.bb101
    i32 1, label %sw.bb105
    i32 13, label %sw.bb151
    i32 2, label %cleanup154
    i32 7, label %cleanup154
    i32 5, label %cleanup154
    i32 11, label %cleanup154
  ]

sw.bb:                                            ; preds = %entry
  %call = tail call %struct.ec_group_st* @EC_GROUP_new_by_curve_name(i32 noundef %p1) #6
  %cmp = icmp eq %struct.ec_group_st* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 259, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.pkey_ec_ctrl, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 141, i8* noundef null) #6
  br label %cleanup154

if.end:                                           ; preds = %sw.bb
  %gen_group = getelementptr inbounds %struct.EC_PKEY_CTX, %struct.EC_PKEY_CTX* %1, i64 0, i32 0
  %2 = load %struct.ec_group_st*, %struct.ec_group_st** %gen_group, align 8, !tbaa !15
  tail call void @EC_GROUP_free(%struct.ec_group_st* noundef %2) #6
  store %struct.ec_group_st* %call, %struct.ec_group_st** %gen_group, align 8, !tbaa !15
  br label %cleanup154

sw.bb2:                                           ; preds = %entry
  %gen_group3 = getelementptr inbounds %struct.EC_PKEY_CTX, %struct.EC_PKEY_CTX* %1, i64 0, i32 0
  %3 = load %struct.ec_group_st*, %struct.ec_group_st** %gen_group3, align 8, !tbaa !15
  %tobool.not = icmp eq %struct.ec_group_st* %3, null
  br i1 %tobool.not, label %if.then4, label %if.end5

if.then4:                                         ; preds = %sw.bb2
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 268, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.pkey_ec_ctrl, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 139, i8* noundef null) #6
  br label %cleanup154

if.end5:                                          ; preds = %sw.bb2
  tail call void @EC_GROUP_set_asn1_flag(%struct.ec_group_st* noundef nonnull %3, i32 noundef %p1) #6
  br label %cleanup154

sw.bb7:                                           ; preds = %entry
  %cmp8 = icmp eq i32 %p1, -2
  br i1 %cmp8, label %if.then9, label %if.else18

if.then9:                                         ; preds = %sw.bb7
  %cofactor_mode = getelementptr inbounds %struct.EC_PKEY_CTX, %struct.EC_PKEY_CTX* %1, i64 0, i32 3
  %4 = load i8, i8* %cofactor_mode, align 8, !tbaa !4
  %cmp10.not = icmp eq i8 %4, -1
  br i1 %cmp10.not, label %if.else, label %if.then12

if.then12:                                        ; preds = %if.then9
  %conv = sext i8 %4 to i32
  br label %cleanup154

if.else:                                          ; preds = %if.then9
  %pkey = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 14
  %5 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey, align 8, !tbaa !22
  %call15 = tail call %struct.ec_key_st* @EVP_PKEY_get0_EC_KEY(%struct.evp_pkey_st* noundef %5) #6
  %call16 = tail call i32 @EC_KEY_get_flags(%struct.ec_key_st* noundef %call15) #6
  %and = lshr i32 %call16, 12
  %and.lobit = and i32 %and, 1
  br label %cleanup154

if.else18:                                        ; preds = %sw.bb7
  %6 = add i32 %p1, -2
  %7 = icmp ult i32 %6, -3
  br i1 %7, label %cleanup154, label %if.end25

if.end25:                                         ; preds = %if.else18
  %conv26 = trunc i32 %p1 to i8
  %cofactor_mode27 = getelementptr inbounds %struct.EC_PKEY_CTX, %struct.EC_PKEY_CTX* %1, i64 0, i32 3
  store i8 %conv26, i8* %cofactor_mode27, align 8, !tbaa !4
  %cmp28.not = icmp eq i32 %p1, -1
  br i1 %cmp28.not, label %if.else63, label %if.then30

if.then30:                                        ; preds = %if.end25
  %pkey32 = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 14
  %8 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey32, align 8, !tbaa !22
  %call33 = tail call %struct.ec_key_st* @EVP_PKEY_get0_EC_KEY(%struct.evp_pkey_st* noundef %8) #6
  %9 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey32, align 8, !tbaa !22
  %keymgmt = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %9, i64 0, i32 13
  %10 = load %struct.evp_keymgmt_st*, %struct.evp_keymgmt_st** %keymgmt, align 8, !tbaa !27
  %cmp35.not = icmp eq %struct.evp_keymgmt_st* %10, null
  br i1 %cmp35.not, label %if.end38, label %if.then37

if.then37:                                        ; preds = %if.then30
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 294, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.pkey_ec_ctrl, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 524556, i8* noundef null) #6
  br label %cleanup154

if.end38:                                         ; preds = %if.then30
  %group39 = getelementptr inbounds %struct.ec_key_st, %struct.ec_key_st* %call33, i64 0, i32 3
  %11 = load %struct.ec_group_st*, %struct.ec_group_st** %group39, align 8, !tbaa !31
  %tobool40.not = icmp eq %struct.ec_group_st* %11, null
  br i1 %tobool40.not, label %cleanup154, label %if.end42

if.end42:                                         ; preds = %if.end38
  %cofactor = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %11, i64 0, i32 3
  %12 = load %struct.bignum_st*, %struct.bignum_st** %cofactor, align 8, !tbaa !33
  %call44 = tail call i32 @BN_is_one(%struct.bignum_st* noundef %12) #6
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.end47, label %cleanup154

if.end47:                                         ; preds = %if.end42
  %co_key = getelementptr inbounds %struct.EC_PKEY_CTX, %struct.EC_PKEY_CTX* %1, i64 0, i32 2
  %13 = load %struct.ec_key_st*, %struct.ec_key_st** %co_key, align 8, !tbaa !17
  %tobool48.not = icmp eq %struct.ec_key_st* %13, null
  br i1 %tobool48.not, label %if.then49, label %if.end56

if.then49:                                        ; preds = %if.end47
  %call50 = tail call %struct.ec_key_st* @EC_KEY_dup(%struct.ec_key_st* noundef nonnull %call33) #6
  store %struct.ec_key_st* %call50, %struct.ec_key_st** %co_key, align 8, !tbaa !17
  %tobool53.not = icmp eq %struct.ec_key_st* %call50, null
  br i1 %tobool53.not, label %cleanup154, label %if.end56

if.end56:                                         ; preds = %if.then49, %if.end47
  %14 = phi %struct.ec_key_st* [ %call50, %if.then49 ], [ %13, %if.end47 ]
  %tobool57.not = icmp eq i32 %p1, 0
  br i1 %tobool57.not, label %if.else60, label %if.then58

if.then58:                                        ; preds = %if.end56
  tail call void @EC_KEY_set_flags(%struct.ec_key_st* noundef nonnull %14, i32 noundef 4096) #6
  br label %cleanup154

if.else60:                                        ; preds = %if.end56
  tail call void @EC_KEY_clear_flags(%struct.ec_key_st* noundef nonnull %14, i32 noundef 4096) #6
  br label %cleanup154

if.else63:                                        ; preds = %if.end25
  %co_key64 = getelementptr inbounds %struct.EC_PKEY_CTX, %struct.EC_PKEY_CTX* %1, i64 0, i32 2
  %15 = load %struct.ec_key_st*, %struct.ec_key_st** %co_key64, align 8, !tbaa !17
  tail call void @EC_KEY_free(%struct.ec_key_st* noundef %15) #6
  store %struct.ec_key_st* null, %struct.ec_key_st** %co_key64, align 8, !tbaa !17
  br label %cleanup154

sw.bb67:                                          ; preds = %entry
  %cmp68 = icmp eq i32 %p1, -2
  br i1 %cmp68, label %if.then70, label %if.end72

if.then70:                                        ; preds = %sw.bb67
  %kdf_type = getelementptr inbounds %struct.EC_PKEY_CTX, %struct.EC_PKEY_CTX* %1, i64 0, i32 4
  %16 = load i8, i8* %kdf_type, align 1, !tbaa !10
  %conv71 = sext i8 %16 to i32
  br label %cleanup154

if.end72:                                         ; preds = %sw.bb67
  %17 = add i32 %p1, -3
  %18 = icmp ult i32 %17, -2
  br i1 %18, label %cleanup154, label %if.end78

if.end78:                                         ; preds = %if.end72
  %conv79 = trunc i32 %p1 to i8
  %kdf_type80 = getelementptr inbounds %struct.EC_PKEY_CTX, %struct.EC_PKEY_CTX* %1, i64 0, i32 4
  store i8 %conv79, i8* %kdf_type80, align 1, !tbaa !10
  br label %cleanup154

sw.bb81:                                          ; preds = %entry
  %kdf_md = getelementptr inbounds %struct.EC_PKEY_CTX, %struct.EC_PKEY_CTX* %1, i64 0, i32 5
  %19 = bitcast %struct.evp_md_st** %kdf_md to i8**
  store i8* %p2, i8** %19, align 8, !tbaa !18
  br label %cleanup154

sw.bb82:                                          ; preds = %entry
  %kdf_md83 = getelementptr inbounds %struct.EC_PKEY_CTX, %struct.EC_PKEY_CTX* %1, i64 0, i32 5
  %20 = load %struct.evp_md_st*, %struct.evp_md_st** %kdf_md83, align 8, !tbaa !18
  %21 = bitcast i8* %p2 to %struct.evp_md_st**
  store %struct.evp_md_st* %20, %struct.evp_md_st** %21, align 8, !tbaa !35
  br label %cleanup154

sw.bb84:                                          ; preds = %entry
  %cmp85 = icmp slt i32 %p1, 1
  br i1 %cmp85, label %cleanup154, label %if.end88

if.end88:                                         ; preds = %sw.bb84
  %conv89230 = zext i32 %p1 to i64
  %kdf_outlen = getelementptr inbounds %struct.EC_PKEY_CTX, %struct.EC_PKEY_CTX* %1, i64 0, i32 8
  store i64 %conv89230, i64* %kdf_outlen, align 8, !tbaa !19
  br label %cleanup154

sw.bb90:                                          ; preds = %entry
  %kdf_outlen91 = getelementptr inbounds %struct.EC_PKEY_CTX, %struct.EC_PKEY_CTX* %1, i64 0, i32 8
  %22 = load i64, i64* %kdf_outlen91, align 8, !tbaa !19
  %conv92 = trunc i64 %22 to i32
  %23 = bitcast i8* %p2 to i32*
  store i32 %conv92, i32* %23, align 4, !tbaa !24
  br label %cleanup154

sw.bb93:                                          ; preds = %entry
  %kdf_ukm = getelementptr inbounds %struct.EC_PKEY_CTX, %struct.EC_PKEY_CTX* %1, i64 0, i32 6
  %24 = load i8*, i8** %kdf_ukm, align 8, !tbaa !20
  tail call void @CRYPTO_free(i8* noundef %24, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 345) #6
  store i8* %p2, i8** %kdf_ukm, align 8, !tbaa !20
  %tobool95.not = icmp eq i8* %p2, null
  br i1 %tobool95.not, label %if.else98, label %if.then96

if.then96:                                        ; preds = %sw.bb93
  %conv97 = sext i32 %p1 to i64
  %kdf_ukmlen = getelementptr inbounds %struct.EC_PKEY_CTX, %struct.EC_PKEY_CTX* %1, i64 0, i32 7
  store i64 %conv97, i64* %kdf_ukmlen, align 8, !tbaa !21
  br label %cleanup154

if.else98:                                        ; preds = %sw.bb93
  %kdf_ukmlen99 = getelementptr inbounds %struct.EC_PKEY_CTX, %struct.EC_PKEY_CTX* %1, i64 0, i32 7
  store i64 0, i64* %kdf_ukmlen99, align 8, !tbaa !21
  br label %cleanup154

sw.bb101:                                         ; preds = %entry
  %kdf_ukm102 = getelementptr inbounds %struct.EC_PKEY_CTX, %struct.EC_PKEY_CTX* %1, i64 0, i32 6
  %25 = load i8*, i8** %kdf_ukm102, align 8, !tbaa !20
  %26 = bitcast i8* %p2 to i8**
  store i8* %25, i8** %26, align 8, !tbaa !35
  %kdf_ukmlen103 = getelementptr inbounds %struct.EC_PKEY_CTX, %struct.EC_PKEY_CTX* %1, i64 0, i32 7
  %27 = load i64, i64* %kdf_ukmlen103, align 8, !tbaa !21
  %conv104 = trunc i64 %27 to i32
  br label %cleanup154

sw.bb105:                                         ; preds = %entry
  %28 = bitcast i8* %p2 to %struct.evp_md_st*
  %call106 = tail call i32 @EVP_MD_get_type(%struct.evp_md_st* noundef %28) #6
  %cmp107.not = icmp eq i32 %call106, 64
  br i1 %cmp107.not, label %if.end150, label %land.lhs.true109

land.lhs.true109:                                 ; preds = %sw.bb105
  %call110 = tail call i32 @EVP_MD_get_type(%struct.evp_md_st* noundef %28) #6
  %cmp111.not = icmp eq i32 %call110, 416
  br i1 %cmp111.not, label %if.end150, label %land.lhs.true113

land.lhs.true113:                                 ; preds = %land.lhs.true109
  %call114 = tail call i32 @EVP_MD_get_type(%struct.evp_md_st* noundef %28) #6
  %cmp115.not = icmp eq i32 %call114, 675
  br i1 %cmp115.not, label %if.end150, label %land.lhs.true117

land.lhs.true117:                                 ; preds = %land.lhs.true113
  %call118 = tail call i32 @EVP_MD_get_type(%struct.evp_md_st* noundef %28) #6
  %cmp119.not = icmp eq i32 %call118, 672
  br i1 %cmp119.not, label %if.end150, label %land.lhs.true121

land.lhs.true121:                                 ; preds = %land.lhs.true117
  %call122 = tail call i32 @EVP_MD_get_type(%struct.evp_md_st* noundef %28) #6
  %cmp123.not = icmp eq i32 %call122, 673
  br i1 %cmp123.not, label %if.end150, label %land.lhs.true125

land.lhs.true125:                                 ; preds = %land.lhs.true121
  %call126 = tail call i32 @EVP_MD_get_type(%struct.evp_md_st* noundef %28) #6
  %cmp127.not = icmp eq i32 %call126, 674
  br i1 %cmp127.not, label %if.end150, label %land.lhs.true129

land.lhs.true129:                                 ; preds = %land.lhs.true125
  %call130 = tail call i32 @EVP_MD_get_type(%struct.evp_md_st* noundef %28) #6
  %cmp131.not = icmp eq i32 %call130, 1096
  br i1 %cmp131.not, label %if.end150, label %land.lhs.true133

land.lhs.true133:                                 ; preds = %land.lhs.true129
  %call134 = tail call i32 @EVP_MD_get_type(%struct.evp_md_st* noundef %28) #6
  %cmp135.not = icmp eq i32 %call134, 1097
  br i1 %cmp135.not, label %if.end150, label %land.lhs.true137

land.lhs.true137:                                 ; preds = %land.lhs.true133
  %call138 = tail call i32 @EVP_MD_get_type(%struct.evp_md_st* noundef %28) #6
  %cmp139.not = icmp eq i32 %call138, 1098
  br i1 %cmp139.not, label %if.end150, label %land.lhs.true141

land.lhs.true141:                                 ; preds = %land.lhs.true137
  %call142 = tail call i32 @EVP_MD_get_type(%struct.evp_md_st* noundef %28) #6
  %cmp143.not = icmp eq i32 %call142, 1099
  br i1 %cmp143.not, label %if.end150, label %land.lhs.true145

land.lhs.true145:                                 ; preds = %land.lhs.true141
  %call146 = tail call i32 @EVP_MD_get_type(%struct.evp_md_st* noundef %28) #6
  %cmp147.not = icmp eq i32 %call146, 1143
  br i1 %cmp147.not, label %if.end150, label %if.then149

if.then149:                                       ; preds = %land.lhs.true145
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 369, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.pkey_ec_ctrl, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 138, i8* noundef null) #6
  br label %cleanup154

if.end150:                                        ; preds = %land.lhs.true145, %land.lhs.true141, %land.lhs.true137, %land.lhs.true133, %land.lhs.true129, %land.lhs.true125, %land.lhs.true121, %land.lhs.true117, %land.lhs.true113, %land.lhs.true109, %sw.bb105
  %md = getelementptr inbounds %struct.EC_PKEY_CTX, %struct.EC_PKEY_CTX* %1, i64 0, i32 1
  %29 = bitcast %struct.evp_md_st** %md to i8**
  store i8* %p2, i8** %29, align 8, !tbaa !16
  br label %cleanup154

sw.bb151:                                         ; preds = %entry
  %md152 = getelementptr inbounds %struct.EC_PKEY_CTX, %struct.EC_PKEY_CTX* %1, i64 0, i32 1
  %30 = load %struct.evp_md_st*, %struct.evp_md_st** %md152, align 8, !tbaa !16
  %31 = bitcast i8* %p2 to %struct.evp_md_st**
  store %struct.evp_md_st* %30, %struct.evp_md_st** %31, align 8, !tbaa !35
  br label %cleanup154

sw.default:                                       ; preds = %entry
  br label %cleanup154

cleanup154:                                       ; preds = %if.then49, %if.end42, %if.end38, %if.then37, %if.else63, %if.then58, %if.else60, %entry, %entry, %entry, %entry, %if.then96, %if.else98, %sw.bb84, %if.end72, %if.else18, %sw.default, %sw.bb151, %if.end150, %if.then149, %sw.bb101, %sw.bb90, %if.end88, %sw.bb82, %sw.bb81, %if.end78, %if.then70, %if.else, %if.then12, %if.end5, %if.then4, %if.end, %if.then
  %retval.1 = phi i32 [ -2, %sw.default ], [ 1, %sw.bb151 ], [ 0, %if.then149 ], [ 1, %if.end150 ], [ %conv104, %sw.bb101 ], [ 1, %sw.bb90 ], [ 1, %if.end88 ], [ 1, %sw.bb82 ], [ 1, %sw.bb81 ], [ %conv71, %if.then70 ], [ 1, %if.end78 ], [ %conv, %if.then12 ], [ %and.lobit, %if.else ], [ 1, %if.end5 ], [ 0, %if.then4 ], [ 0, %if.then ], [ 1, %if.end ], [ -2, %if.else18 ], [ -2, %if.end72 ], [ -2, %sw.bb84 ], [ 1, %if.else98 ], [ 1, %if.then96 ], [ 1, %entry ], [ 1, %entry ], [ 1, %entry ], [ 1, %entry ], [ 1, %if.else60 ], [ 1, %if.then58 ], [ 1, %if.else63 ], [ 0, %if.then49 ], [ 1, %if.end42 ], [ -2, %if.end38 ], [ 0, %if.then37 ]
  ret i32 %retval.1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @pkey_ec_ctrl_str(%struct.evp_pkey_ctx_st* noundef %ctx, i8* noundef readonly %type, i8* noundef %value) #1 {
entry:
  %call = tail call i32 @strcmp(i8* noundef %type, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0)) #9
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call1 = tail call i32 @EC_curve_nist2nid(i8* noundef %value) #6
  %cmp2 = icmp eq i32 %call1, 0
  br i1 %cmp2, label %if.end, label %if.end11

if.end:                                           ; preds = %if.then
  %call4 = tail call i32 @OBJ_sn2nid(i8* noundef %value) #6
  %cmp5 = icmp eq i32 %call4, 0
  br i1 %cmp5, label %if.end8, label %if.end11

if.end8:                                          ; preds = %if.end
  %call7 = tail call i32 @OBJ_ln2nid(i8* noundef %value) #6
  %cmp9 = icmp eq i32 %call7, 0
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end8
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 403, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.pkey_ec_ctrl_str, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 141, i8* noundef null) #6
  br label %return

if.end11:                                         ; preds = %if.then, %if.end, %if.end8
  %nid.172 = phi i32 [ %call7, %if.end8 ], [ %call4, %if.end ], [ %call1, %if.then ]
  %call12 = tail call i32 @EVP_PKEY_CTX_set_ec_paramgen_curve_nid(%struct.evp_pkey_ctx_st* noundef %ctx, i32 noundef %nid.172) #6
  br label %return

if.else:                                          ; preds = %entry
  %call13 = tail call i32 @strcmp(i8* noundef %type, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0)) #9
  %cmp14 = icmp eq i32 %call13, 0
  br i1 %cmp14, label %if.then15, label %if.else28

if.then15:                                        ; preds = %if.else
  %call16 = tail call i32 @strcmp(i8* noundef %value, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)) #9
  %cmp17 = icmp eq i32 %call16, 0
  br i1 %cmp17, label %if.end25, label %if.else19

if.else19:                                        ; preds = %if.then15
  %call20 = tail call i32 @strcmp(i8* noundef %value, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0)) #9
  %cmp21 = icmp eq i32 %call20, 0
  br i1 %cmp21, label %if.end25, label %return

if.end25:                                         ; preds = %if.else19, %if.then15
  %param_enc.0 = phi i32 [ 0, %if.then15 ], [ 1, %if.else19 ]
  %call26 = tail call i32 @EVP_PKEY_CTX_set_ec_param_enc(%struct.evp_pkey_ctx_st* noundef %ctx, i32 noundef %param_enc.0) #6
  br label %return

if.else28:                                        ; preds = %if.else
  %call29 = tail call i32 @strcmp(i8* noundef %type, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0)) #9
  %cmp30 = icmp eq i32 %call29, 0
  br i1 %cmp30, label %if.then31, label %if.else38

if.then31:                                        ; preds = %if.else28
  %call32 = tail call %struct.evp_md_st* @EVP_get_digestbyname(i8* noundef %value) #6
  %cmp33 = icmp eq %struct.evp_md_st* %call32, null
  br i1 %cmp33, label %if.then34, label %if.end35

if.then34:                                        ; preds = %if.then31
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 419, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.pkey_ec_ctrl_str, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 151, i8* noundef null) #6
  br label %return

if.end35:                                         ; preds = %if.then31
  %call36 = tail call i32 @EVP_PKEY_CTX_set_ecdh_kdf_md(%struct.evp_pkey_ctx_st* noundef %ctx, %struct.evp_md_st* noundef nonnull %call32) #6
  br label %return

if.else38:                                        ; preds = %if.else28
  %call39 = tail call i32 @strcmp(i8* noundef %type, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0)) #9
  %cmp40 = icmp eq i32 %call39, 0
  br i1 %cmp40, label %if.then41, label %return

if.then41:                                        ; preds = %if.else38
  %call42 = tail call i32 @atoi(i8* noundef %value) #9
  %call43 = tail call i32 @EVP_PKEY_CTX_set_ecdh_cofactor_mode(%struct.evp_pkey_ctx_st* noundef %ctx, i32 noundef %call42) #6
  br label %return

return:                                           ; preds = %if.else38, %if.then34, %if.end35, %if.end25, %if.else19, %if.then10, %if.end11, %if.then41
  %retval.3 = phi i32 [ %call43, %if.then41 ], [ 0, %if.then10 ], [ %call12, %if.end11 ], [ %call26, %if.end25 ], [ -2, %if.else19 ], [ 0, %if.then34 ], [ %call36, %if.end35 ], [ -2, %if.else38 ]
  ret i32 %retval.3
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare i8* @CRYPTO_zalloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare void @ERR_new() local_unnamed_addr #3

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #3

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

declare %struct.ec_group_st* @EC_GROUP_dup(%struct.ec_group_st* noundef) local_unnamed_addr #3

declare %struct.ec_key_st* @EC_KEY_dup(%struct.ec_key_st* noundef) local_unnamed_addr #3

declare i8* @CRYPTO_memdup(i8* noundef, i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare void @EC_GROUP_free(%struct.ec_group_st* noundef) local_unnamed_addr #3

declare void @EC_KEY_free(%struct.ec_key_st* noundef) local_unnamed_addr #3

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare %struct.ec_key_st* @EC_KEY_new() local_unnamed_addr #3

declare i32 @EC_KEY_set_group(%struct.ec_key_st* noundef, %struct.ec_group_st* noundef) local_unnamed_addr #3

declare i32 @EVP_PKEY_assign(%struct.evp_pkey_st* noundef, i32 noundef, i8* noundef) local_unnamed_addr #3

declare i32 @EVP_PKEY_copy_parameters(%struct.evp_pkey_st* noundef, %struct.evp_pkey_st* noundef) local_unnamed_addr #3

declare i32 @EC_KEY_generate_key(%struct.ec_key_st* noundef) local_unnamed_addr #3

declare %struct.ec_key_st* @EVP_PKEY_get0_EC_KEY(%struct.evp_pkey_st* noundef) local_unnamed_addr #3

declare i32 @ECDSA_size(%struct.ec_key_st* noundef) local_unnamed_addr #3

declare i32 @EVP_MD_get_type(%struct.evp_md_st* noundef) local_unnamed_addr #3

declare i32 @ECDSA_sign(i32 noundef, i8* noundef, i32 noundef, i8* noundef, i32* noundef, %struct.ec_key_st* noundef) local_unnamed_addr #3

declare i32 @ECDSA_verify(i32 noundef, i8* noundef, i32 noundef, i8* noundef, i32 noundef, %struct.ec_key_st* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @pkey_ec_derive(%struct.evp_pkey_ctx_st* nocapture noundef readonly %ctx, i8* noundef %key, i64* nocapture noundef %keylen) unnamed_addr #1 {
entry:
  %data = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 16
  %0 = bitcast i8** %data to %struct.EC_PKEY_CTX**
  %1 = load %struct.EC_PKEY_CTX*, %struct.EC_PKEY_CTX** %0, align 8, !tbaa !11
  %pkey = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 14
  %2 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey, align 8, !tbaa !22
  %cmp = icmp eq %struct.evp_pkey_st* %2, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %peerkey = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 15
  %3 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %peerkey, align 8, !tbaa !36
  %cmp1 = icmp eq %struct.evp_pkey_st* %3, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 178, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.pkey_ec_derive, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 140, i8* noundef null) #6
  br label %cleanup24

if.end:                                           ; preds = %lor.lhs.false
  %call = tail call %struct.ec_key_st* @EVP_PKEY_get0_EC_KEY(%struct.evp_pkey_st* noundef nonnull %3) #6
  %cmp3 = icmp eq %struct.ec_key_st* %call, null
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 183, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.pkey_ec_derive, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 140, i8* noundef null) #6
  br label %cleanup24

if.end5:                                          ; preds = %if.end
  %co_key = getelementptr inbounds %struct.EC_PKEY_CTX, %struct.EC_PKEY_CTX* %1, i64 0, i32 2
  %4 = load %struct.ec_key_st*, %struct.ec_key_st** %co_key, align 8, !tbaa !17
  %tobool.not = icmp eq %struct.ec_key_st* %4, null
  br i1 %tobool.not, label %cond.false, label %cond.end

cond.false:                                       ; preds = %if.end5
  %5 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey, align 8, !tbaa !22
  %call8 = tail call %struct.ec_key_st* @EVP_PKEY_get0_EC_KEY(%struct.evp_pkey_st* noundef %5) #6
  br label %cond.end

cond.end:                                         ; preds = %if.end5, %cond.false
  %cond = phi %struct.ec_key_st* [ %call8, %cond.false ], [ %4, %if.end5 ]
  %tobool9.not = icmp eq i8* %key, null
  br i1 %tobool9.not, label %if.then10, label %if.end16

if.then10:                                        ; preds = %cond.end
  %call11 = tail call %struct.ec_group_st* @EC_KEY_get0_group(%struct.ec_key_st* noundef %cond) #6
  %cmp12 = icmp eq %struct.ec_group_st* %call11, null
  br i1 %cmp12, label %cleanup24, label %if.end14

if.end14:                                         ; preds = %if.then10
  %call15 = tail call i32 @EC_GROUP_get_degree(%struct.ec_group_st* noundef nonnull %call11) #6
  %add = add nsw i32 %call15, 7
  %div = sdiv i32 %add, 8
  %conv = sext i32 %div to i64
  store i64 %conv, i64* %keylen, align 8, !tbaa !23
  br label %cleanup24

if.end16:                                         ; preds = %cond.end
  %call17 = tail call %struct.ec_point_st* @EC_KEY_get0_public_key(%struct.ec_key_st* noundef nonnull %call) #6
  %6 = load i64, i64* %keylen, align 8, !tbaa !23
  %call18 = tail call i32 @ECDH_compute_key(i8* noundef nonnull %key, i64 noundef %6, %struct.ec_point_st* noundef %call17, %struct.ec_key_st* noundef %cond, i8* (i8*, i64, i8*, i64*)* noundef null) #6
  %cmp19 = icmp slt i32 %call18, 1
  br i1 %cmp19, label %cleanup24, label %if.end22

if.end22:                                         ; preds = %if.end16
  %conv2350 = zext i32 %call18 to i64
  store i64 %conv2350, i64* %keylen, align 8, !tbaa !23
  br label %cleanup24

cleanup24:                                        ; preds = %if.end16, %if.end14, %if.then10, %if.end22, %if.then4, %if.then
  %retval.1 = phi i32 [ 0, %if.then ], [ 0, %if.then4 ], [ 1, %if.end22 ], [ 1, %if.end14 ], [ 0, %if.then10 ], [ 0, %if.end16 ]
  ret i32 %retval.1
}

declare i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare i32 @ossl_ecdh_kdf_X9_63(i8* noundef, i64 noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef, %struct.evp_md_st* noundef, %struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #3

declare void @CRYPTO_clear_free(i8* noundef, i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare %struct.ec_group_st* @EC_KEY_get0_group(%struct.ec_key_st* noundef) local_unnamed_addr #3

declare i32 @EC_GROUP_get_degree(%struct.ec_group_st* noundef) local_unnamed_addr #3

declare %struct.ec_point_st* @EC_KEY_get0_public_key(%struct.ec_key_st* noundef) local_unnamed_addr #3

declare i32 @ECDH_compute_key(i8* noundef, i64 noundef, %struct.ec_point_st* noundef, %struct.ec_key_st* noundef, i8* (i8*, i64, i8*, i64*)* noundef) local_unnamed_addr #3

declare %struct.ec_group_st* @EC_GROUP_new_by_curve_name(i32 noundef) local_unnamed_addr #3

declare void @EC_GROUP_set_asn1_flag(%struct.ec_group_st* noundef, i32 noundef) local_unnamed_addr #3

declare i32 @EC_KEY_get_flags(%struct.ec_key_st* noundef) local_unnamed_addr #3

declare i32 @BN_is_one(%struct.bignum_st* noundef) local_unnamed_addr #3

declare void @EC_KEY_set_flags(%struct.ec_key_st* noundef, i32 noundef) local_unnamed_addr #3

declare void @EC_KEY_clear_flags(%struct.ec_key_st* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @strcmp(i8* noundef, i8* noundef) local_unnamed_addr #4

declare i32 @EC_curve_nist2nid(i8* noundef) local_unnamed_addr #3

declare i32 @OBJ_sn2nid(i8* noundef) local_unnamed_addr #3

declare i32 @OBJ_ln2nid(i8* noundef) local_unnamed_addr #3

declare i32 @EVP_PKEY_CTX_set_ec_paramgen_curve_nid(%struct.evp_pkey_ctx_st* noundef, i32 noundef) local_unnamed_addr #3

declare i32 @EVP_PKEY_CTX_set_ec_param_enc(%struct.evp_pkey_ctx_st* noundef, i32 noundef) local_unnamed_addr #3

declare %struct.evp_md_st* @EVP_get_digestbyname(i8* noundef) local_unnamed_addr #3

declare i32 @EVP_PKEY_CTX_set_ecdh_kdf_md(%struct.evp_pkey_ctx_st* noundef, %struct.evp_md_st* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline nounwind readonly uwtable willreturn
declare i32 @atoi(i8* noundef nonnull) local_unnamed_addr #5

declare i32 @EVP_PKEY_CTX_set_ecdh_cofactor_mode(%struct.evp_pkey_ctx_st* noundef, i32 noundef) local_unnamed_addr #3

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "no-builtins" }
attributes #7 = { nobuiltin "no-builtins" }
attributes #8 = { nounwind }
attributes #9 = { nobuiltin nounwind readonly willreturn "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !7, i64 24}
!5 = !{!"", !6, i64 0, !6, i64 8, !6, i64 16, !7, i64 24, !7, i64 25, !6, i64 32, !6, i64 40, !9, i64 48, !9, i64 56}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"long", !7, i64 0}
!10 = !{!5, !7, i64 25}
!11 = !{!12, !6, i64 152}
!12 = !{!"evp_pkey_ctx_st", !13, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !7, i64 40, !14, i64 56, !6, i64 88, !6, i64 96, !6, i64 104, !13, i64 112, !13, i64 116, !6, i64 120, !6, i64 128, !6, i64 136, !6, i64 144, !6, i64 152, !13, i64 160, !6, i64 168}
!13 = !{!"int", !7, i64 0}
!14 = !{!"", !6, i64 0, !6, i64 8, !9, i64 16, !13, i64 24}
!15 = !{!5, !6, i64 0}
!16 = !{!5, !6, i64 8}
!17 = !{!5, !6, i64 16}
!18 = !{!5, !6, i64 32}
!19 = !{!5, !9, i64 56}
!20 = !{!5, !6, i64 40}
!21 = !{!5, !9, i64 48}
!22 = !{!12, !6, i64 136}
!23 = !{!9, !9, i64 0}
!24 = !{!13, !13, i64 0}
!25 = !{!12, !6, i64 8}
!26 = !{!12, !6, i64 16}
!27 = !{!28, !6, i64 96}
!28 = !{!"evp_pkey_st", !13, i64 0, !13, i64 4, !6, i64 8, !6, i64 16, !6, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !6, i64 56, !6, i64 64, !13, i64 72, !13, i64 76, !29, i64 80, !6, i64 96, !6, i64 104, !9, i64 112, !6, i64 120, !9, i64 128, !30, i64 136}
!29 = !{!"crypto_ex_data_st", !6, i64 0, !6, i64 8}
!30 = !{!"", !13, i64 0, !13, i64 4, !13, i64 8}
!31 = !{!32, !6, i64 24}
!32 = !{!"ec_key_st", !6, i64 0, !6, i64 8, !13, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !13, i64 48, !7, i64 52, !7, i64 56, !13, i64 60, !29, i64 64, !6, i64 80, !6, i64 88, !6, i64 96, !9, i64 104}
!33 = !{!34, !6, i64 24}
!34 = !{!"ec_group_st", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !13, i64 32, !13, i64 36, !13, i64 40, !7, i64 44, !6, i64 48, !9, i64 56, !6, i64 64, !7, i64 72, !6, i64 96, !6, i64 104, !13, i64 112, !6, i64 120, !6, i64 128, !6, i64 136, !6, i64 144, !7, i64 152, !7, i64 160, !6, i64 168, !6, i64 176}
!35 = !{!6, !6, i64 0}
!36 = !{!12, !6, i64 144}
