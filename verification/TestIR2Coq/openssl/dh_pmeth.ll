; ModuleID = 'crypto/dh/dh_pmeth.c'
source_filename = "crypto/dh/dh_pmeth.c"
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
%struct.DH_PKEY_CTX = type { i32, i32, i32, i32, i32, %struct.evp_md_st*, i32, [2 x i32], i8, %struct.asn1_object_st*, %struct.evp_md_st*, i8*, i64, i64 }
%struct.asn1_object_st = type opaque
%struct.evp_md_st = type { i32, i32, i32, i64, i32, i32 (%struct.evp_md_ctx_st*)*, i32 (%struct.evp_md_ctx_st*, i8*, i64)*, i32 (%struct.evp_md_ctx_st*, i8*)*, i32 (%struct.evp_md_ctx_st*, %struct.evp_md_ctx_st*)*, i32 (%struct.evp_md_ctx_st*)*, i32, i32, i32 (%struct.evp_md_ctx_st*, i32, i32, i8*)*, i32, i8*, i8*, %struct.ossl_provider_st*, i32, i8*, i8* (i8*)*, i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64*, i64)*, i32 (i8*, i8*, i64, i8*, i64*, i64)*, void (i8*)*, i8* (i8*)*, i32 (%struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i8*)*, %struct.ossl_param_st* (i8*, i8*)*, %struct.ossl_param_st* (i8*, i8*)* }
%struct.ossl_provider_st = type opaque
%struct.ossl_param_st = type { i8*, i32, i8*, i64, i64 }
%struct.dh_st = type { i32, i32, %struct.ffc_params_st, i32, %struct.bignum_st*, %struct.bignum_st*, i32, %struct.bn_mont_ctx_st*, i32, %struct.crypto_ex_data_st, %struct.engine_st*, %struct.ossl_lib_ctx_st*, %struct.dh_method*, i8*, i64 }
%struct.ffc_params_st = type { %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, i8*, i64, i32, i32, i32, i32, i32, i8*, i8* }
%struct.bn_mont_ctx_st = type opaque
%struct.dh_method = type { i8*, i32 (%struct.dh_st*)*, i32 (i8*, %struct.bignum_st*, %struct.dh_st*)*, i32 (%struct.dh_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*, %struct.bn_mont_ctx_st*)*, i32 (%struct.dh_st*)*, i32 (%struct.dh_st*)*, i32, i8*, i32 (%struct.dh_st*, i32, i32, %struct.bn_gencb_st*)* }
%struct.bignum_ctx = type opaque
%struct.bn_gencb_st = type opaque

@dh_pkey_meth = internal constant %struct.evp_pkey_method_st { i32 28, i32 0, i32 (%struct.evp_pkey_ctx_st*)* @pkey_dh_init, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st*)* @pkey_dh_copy, void (%struct.evp_pkey_ctx_st*)* @pkey_dh_cleanup, i32 (%struct.evp_pkey_ctx_st*)* null, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_st*)* @pkey_dh_paramgen, i32 (%struct.evp_pkey_ctx_st*)* null, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_st*)* @pkey_dh_keygen, i32 (%struct.evp_pkey_ctx_st*)* null, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)* null, i32 (%struct.evp_pkey_ctx_st*)* null, i32 (%struct.evp_pkey_ctx_st*, i8*, i64, i8*, i64)* null, i32 (%struct.evp_pkey_ctx_st*)* null, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)* null, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_md_ctx_st*)* null, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, %struct.evp_md_ctx_st*)* null, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_md_ctx_st*)* null, i32 (%struct.evp_pkey_ctx_st*, i8*, i32, %struct.evp_md_ctx_st*)* null, i32 (%struct.evp_pkey_ctx_st*)* null, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)* null, i32 (%struct.evp_pkey_ctx_st*)* null, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)* null, i32 (%struct.evp_pkey_ctx_st*)* null, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*)* @pkey_dh_derive, i32 (%struct.evp_pkey_ctx_st*, i32, i32, i8*)* @pkey_dh_ctrl, i32 (%struct.evp_pkey_ctx_st*, i8*, i8*)* @pkey_dh_ctrl_str, i32 (%struct.evp_md_ctx_st*, i8*, i64*, i8*, i64)* null, i32 (%struct.evp_md_ctx_st*, i8*, i64, i8*, i64)* null, i32 (%struct.evp_pkey_st*)* null, i32 (%struct.evp_pkey_st*)* null, i32 (%struct.evp_pkey_st*)* null, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_md_ctx_st*)* null }, align 8
@dhx_pkey_meth = internal constant %struct.evp_pkey_method_st { i32 920, i32 0, i32 (%struct.evp_pkey_ctx_st*)* @pkey_dh_init, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st*)* @pkey_dh_copy, void (%struct.evp_pkey_ctx_st*)* @pkey_dh_cleanup, i32 (%struct.evp_pkey_ctx_st*)* null, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_st*)* @pkey_dh_paramgen, i32 (%struct.evp_pkey_ctx_st*)* null, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_st*)* @pkey_dh_keygen, i32 (%struct.evp_pkey_ctx_st*)* null, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)* null, i32 (%struct.evp_pkey_ctx_st*)* null, i32 (%struct.evp_pkey_ctx_st*, i8*, i64, i8*, i64)* null, i32 (%struct.evp_pkey_ctx_st*)* null, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)* null, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_md_ctx_st*)* null, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, %struct.evp_md_ctx_st*)* null, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_md_ctx_st*)* null, i32 (%struct.evp_pkey_ctx_st*, i8*, i32, %struct.evp_md_ctx_st*)* null, i32 (%struct.evp_pkey_ctx_st*)* null, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)* null, i32 (%struct.evp_pkey_ctx_st*)* null, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)* null, i32 (%struct.evp_pkey_ctx_st*)* null, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*)* @pkey_dh_derive, i32 (%struct.evp_pkey_ctx_st*, i32, i32, i8*)* @pkey_dh_ctrl, i32 (%struct.evp_pkey_ctx_st*, i8*, i8*)* @pkey_dh_ctrl_str, i32 (%struct.evp_md_ctx_st*, i8*, i64*, i8*, i64)* null, i32 (%struct.evp_md_ctx_st*, i8*, i64, i8*, i64)* null, i32 (%struct.evp_pkey_st*)* null, i32 (%struct.evp_pkey_st*)* null, i32 (%struct.evp_pkey_st*)* null, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_md_ctx_st*)* null }, align 8
@.str = private unnamed_addr constant [21 x i8] c"crypto/dh/dh_pmeth.c\00", align 1
@__func__.pkey_dh_init = private unnamed_addr constant [13 x i8] c"pkey_dh_init\00", align 1
@__func__.pkey_dh_keygen = private unnamed_addr constant [15 x i8] c"pkey_dh_keygen\00", align 1
@__func__.pkey_dh_derive = private unnamed_addr constant [15 x i8] c"pkey_dh_derive\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"dh_paramgen_prime_len\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"dh_rfc5114\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"dh_param\00", align 1
@__func__.pkey_dh_ctrl_str = private unnamed_addr constant [17 x i8] c"pkey_dh_ctrl_str\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"dh_paramgen_generator\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"dh_paramgen_subprime_len\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"dh_paramgen_type\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"dh_pad\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.evp_pkey_method_st* @ossl_dh_pkey_method() local_unnamed_addr #0 {
entry:
  ret %struct.evp_pkey_method_st* @dh_pkey_meth
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.evp_pkey_method_st* @ossl_dhx_pkey_method() local_unnamed_addr #0 {
entry:
  ret %struct.evp_pkey_method_st* @dhx_pkey_meth
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @pkey_dh_init(%struct.evp_pkey_ctx_st* nocapture noundef writeonly %ctx) #1 {
entry:
  %call = tail call i8* @CRYPTO_zalloc(i64 noundef 88, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 58) #6
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 59, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.pkey_dh_init, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 5, i32 noundef 786688, i8* noundef null) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %prime_len = bitcast i8* %call to i32*
  store i32 2048, i32* %prime_len, align 8, !tbaa !4
  %subprime_len = getelementptr inbounds i8, i8* %call, i64 12
  %0 = bitcast i8* %subprime_len to i32*
  store i32 -1, i32* %0, align 4, !tbaa !11
  %generator = getelementptr inbounds i8, i8* %call, i64 4
  %1 = bitcast i8* %generator to i32*
  store i32 2, i32* %1, align 4, !tbaa !12
  %2 = getelementptr inbounds i8, i8* %call, i64 44
  store i8 1, i8* %2, align 4, !tbaa !13
  %data = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 16
  store i8* %call, i8** %data, align 8, !tbaa !14
  %gentmp = getelementptr inbounds i8, i8* %call, i64 36
  %keygen_info = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 9
  %3 = bitcast i32** %keygen_info to i8**
  store i8* %gentmp, i8** %3, align 8, !tbaa !17
  %keygen_info_count = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 10
  store i32 2, i32* %keygen_info_count, align 8, !tbaa !18
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @pkey_dh_copy(%struct.evp_pkey_ctx_st* nocapture noundef %dst, %struct.evp_pkey_ctx_st* nocapture noundef readonly %src) #1 {
entry:
  %call = tail call i32 @pkey_dh_init(%struct.evp_pkey_ctx_st* noundef %dst) #7
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %src, i64 0, i32 16
  %0 = bitcast i8** %data to %struct.DH_PKEY_CTX**
  %1 = load %struct.DH_PKEY_CTX*, %struct.DH_PKEY_CTX** %0, align 8, !tbaa !14
  %data1 = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %dst, i64 0, i32 16
  %2 = bitcast i8** %data1 to %struct.DH_PKEY_CTX**
  %3 = load %struct.DH_PKEY_CTX*, %struct.DH_PKEY_CTX** %2, align 8, !tbaa !14
  %4 = bitcast %struct.DH_PKEY_CTX* %1 to <4 x i32>*
  %5 = load <4 x i32>, <4 x i32>* %4, align 8, !tbaa !19
  %6 = bitcast %struct.DH_PKEY_CTX* %3 to <4 x i32>*
  store <4 x i32> %5, <4 x i32>* %6, align 8, !tbaa !19
  %pad = getelementptr inbounds %struct.DH_PKEY_CTX, %struct.DH_PKEY_CTX* %1, i64 0, i32 4
  %7 = load i32, i32* %pad, align 8, !tbaa !20
  %pad6 = getelementptr inbounds %struct.DH_PKEY_CTX, %struct.DH_PKEY_CTX* %3, i64 0, i32 4
  store i32 %7, i32* %pad6, align 8, !tbaa !20
  %md = getelementptr inbounds %struct.DH_PKEY_CTX, %struct.DH_PKEY_CTX* %1, i64 0, i32 5
  %8 = load %struct.evp_md_st*, %struct.evp_md_st** %md, align 8, !tbaa !21
  %md7 = getelementptr inbounds %struct.DH_PKEY_CTX, %struct.DH_PKEY_CTX* %3, i64 0, i32 5
  store %struct.evp_md_st* %8, %struct.evp_md_st** %md7, align 8, !tbaa !21
  %param_nid = getelementptr inbounds %struct.DH_PKEY_CTX, %struct.DH_PKEY_CTX* %1, i64 0, i32 6
  %9 = load i32, i32* %param_nid, align 8, !tbaa !22
  %param_nid8 = getelementptr inbounds %struct.DH_PKEY_CTX, %struct.DH_PKEY_CTX* %3, i64 0, i32 6
  store i32 %9, i32* %param_nid8, align 8, !tbaa !22
  %kdf_type = getelementptr inbounds %struct.DH_PKEY_CTX, %struct.DH_PKEY_CTX* %1, i64 0, i32 8
  %10 = load i8, i8* %kdf_type, align 4, !tbaa !13
  %kdf_type9 = getelementptr inbounds %struct.DH_PKEY_CTX, %struct.DH_PKEY_CTX* %3, i64 0, i32 8
  store i8 %10, i8* %kdf_type9, align 4, !tbaa !13
  %kdf_oid = getelementptr inbounds %struct.DH_PKEY_CTX, %struct.DH_PKEY_CTX* %1, i64 0, i32 9
  %11 = load %struct.asn1_object_st*, %struct.asn1_object_st** %kdf_oid, align 8, !tbaa !23
  %call10 = tail call %struct.asn1_object_st* @OBJ_dup(%struct.asn1_object_st* noundef %11) #6
  %kdf_oid11 = getelementptr inbounds %struct.DH_PKEY_CTX, %struct.DH_PKEY_CTX* %3, i64 0, i32 9
  store %struct.asn1_object_st* %call10, %struct.asn1_object_st** %kdf_oid11, align 8, !tbaa !23
  %cmp = icmp eq %struct.asn1_object_st* %call10, null
  br i1 %cmp, label %cleanup, label %if.end14

if.end14:                                         ; preds = %if.end
  %kdf_md = getelementptr inbounds %struct.DH_PKEY_CTX, %struct.DH_PKEY_CTX* %1, i64 0, i32 10
  %12 = load %struct.evp_md_st*, %struct.evp_md_st** %kdf_md, align 8, !tbaa !24
  %kdf_md15 = getelementptr inbounds %struct.DH_PKEY_CTX, %struct.DH_PKEY_CTX* %3, i64 0, i32 10
  store %struct.evp_md_st* %12, %struct.evp_md_st** %kdf_md15, align 8, !tbaa !24
  %kdf_ukm = getelementptr inbounds %struct.DH_PKEY_CTX, %struct.DH_PKEY_CTX* %1, i64 0, i32 11
  %13 = load i8*, i8** %kdf_ukm, align 8, !tbaa !25
  %cmp16.not = icmp eq i8* %13, null
  br i1 %cmp16.not, label %if.end27, label %if.then17

if.then17:                                        ; preds = %if.end14
  %kdf_ukmlen = getelementptr inbounds %struct.DH_PKEY_CTX, %struct.DH_PKEY_CTX* %1, i64 0, i32 12
  %14 = load i64, i64* %kdf_ukmlen, align 8, !tbaa !26
  %call19 = tail call i8* @CRYPTO_memdup(i8* noundef nonnull %13, i64 noundef %14, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 108) #6
  %kdf_ukm20 = getelementptr inbounds %struct.DH_PKEY_CTX, %struct.DH_PKEY_CTX* %3, i64 0, i32 11
  store i8* %call19, i8** %kdf_ukm20, align 8, !tbaa !25
  %cmp22 = icmp eq i8* %call19, null
  br i1 %cmp22, label %cleanup, label %if.end24

if.end24:                                         ; preds = %if.then17
  %15 = load i64, i64* %kdf_ukmlen, align 8, !tbaa !26
  %kdf_ukmlen26 = getelementptr inbounds %struct.DH_PKEY_CTX, %struct.DH_PKEY_CTX* %3, i64 0, i32 12
  store i64 %15, i64* %kdf_ukmlen26, align 8, !tbaa !26
  br label %if.end27

if.end27:                                         ; preds = %if.end24, %if.end14
  %kdf_outlen = getelementptr inbounds %struct.DH_PKEY_CTX, %struct.DH_PKEY_CTX* %1, i64 0, i32 13
  %16 = load i64, i64* %kdf_outlen, align 8, !tbaa !27
  %kdf_outlen28 = getelementptr inbounds %struct.DH_PKEY_CTX, %struct.DH_PKEY_CTX* %3, i64 0, i32 13
  store i64 %16, i64* %kdf_outlen28, align 8, !tbaa !27
  br label %cleanup

cleanup:                                          ; preds = %if.then17, %if.end, %entry, %if.end27
  %retval.0 = phi i32 [ 1, %if.end27 ], [ 0, %entry ], [ 0, %if.end ], [ 0, %if.then17 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal void @pkey_dh_cleanup(%struct.evp_pkey_ctx_st* nocapture noundef readonly %ctx) #1 {
entry:
  %data = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 16
  %0 = load i8*, i8** %data, align 8, !tbaa !14
  %cmp.not = icmp eq i8* %0, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %kdf_ukm = getelementptr inbounds i8, i8* %0, i64 64
  %1 = bitcast i8* %kdf_ukm to i8**
  %2 = load i8*, i8** %1, align 8, !tbaa !25
  tail call void @CRYPTO_free(i8* noundef %2, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 79) #6
  %kdf_oid = getelementptr inbounds i8, i8* %0, i64 48
  %3 = bitcast i8* %kdf_oid to %struct.asn1_object_st**
  %4 = load %struct.asn1_object_st*, %struct.asn1_object_st** %3, align 8, !tbaa !23
  tail call void @ASN1_OBJECT_free(%struct.asn1_object_st* noundef %4) #6
  tail call void @CRYPTO_free(i8* noundef nonnull %0, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 81) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @pkey_dh_paramgen(%struct.evp_pkey_ctx_st* noundef %ctx, %struct.evp_pkey_st* noundef %pkey) #1 {
entry:
  %data = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 16
  %0 = bitcast i8** %data to %struct.DH_PKEY_CTX**
  %1 = load %struct.DH_PKEY_CTX*, %struct.DH_PKEY_CTX** %0, align 8, !tbaa !14
  %param_nid = getelementptr inbounds %struct.DH_PKEY_CTX, %struct.DH_PKEY_CTX* %1, i64 0, i32 6
  %2 = load i32, i32* %param_nid, align 8, !tbaa !22
  %cmp.not = icmp eq i32 %2, 0
  br i1 %cmp.not, label %if.end7, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call %struct.dh_st* @DH_new_by_nid(i32 noundef %2) #6
  %cmp4 = icmp eq %struct.dh_st* %call, null
  br i1 %cmp4, label %cleanup32, label %if.end

if.end:                                           ; preds = %if.then
  %cmp2 = icmp slt i32 %2, 4
  %cond = select i1 %cmp2, i32 920, i32 28
  %3 = bitcast %struct.dh_st* %call to i8*
  %call6 = tail call i32 @EVP_PKEY_assign(%struct.evp_pkey_st* noundef %pkey, i32 noundef %cond, i8* noundef nonnull %3) #6
  br label %cleanup32

if.end7:                                          ; preds = %entry
  %pkey_gencb = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 8
  %pkey_gencb8 = bitcast {}** %pkey_gencb to i32 (%struct.evp_pkey_ctx_st*)**
  %4 = load i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*)** %pkey_gencb8, align 8, !tbaa !28
  %cmp9.not = icmp eq i32 (%struct.evp_pkey_ctx_st*)* %4, null
  br i1 %cmp9.not, label %if.end15, label %if.then10

if.then10:                                        ; preds = %if.end7
  %call11 = tail call %struct.bn_gencb_st* @BN_GENCB_new() #6
  %cmp12 = icmp eq %struct.bn_gencb_st* %call11, null
  br i1 %cmp12, label %cleanup32, label %if.end14

if.end14:                                         ; preds = %if.then10
  tail call void @evp_pkey_set_cb_translate(%struct.bn_gencb_st* noundef nonnull %call11, %struct.evp_pkey_ctx_st* noundef nonnull %ctx) #6
  br label %if.end15

if.end15:                                         ; preds = %if.end14, %if.end7
  %pcb.0 = phi %struct.bn_gencb_st* [ %call11, %if.end14 ], [ null, %if.end7 ]
  %paramgen_type = getelementptr inbounds %struct.DH_PKEY_CTX, %struct.DH_PKEY_CTX* %1, i64 0, i32 2
  %5 = load i32, i32* %paramgen_type, align 8, !tbaa !29
  %cmp16 = icmp sgt i32 %5, 0
  br i1 %cmp16, label %if.then17, label %if.end23

if.then17:                                        ; preds = %if.end15
  %call18 = tail call fastcc %struct.dh_st* @ffc_params_generate(%struct.DH_PKEY_CTX* noundef nonnull %1, %struct.bn_gencb_st* noundef %pcb.0) #7
  tail call void @BN_GENCB_free(%struct.bn_gencb_st* noundef %pcb.0) #6
  %cmp19 = icmp eq %struct.dh_st* %call18, null
  br i1 %cmp19, label %cleanup32, label %if.end21

if.end21:                                         ; preds = %if.then17
  %6 = bitcast %struct.dh_st* %call18 to i8*
  %call22 = tail call i32 @EVP_PKEY_assign(%struct.evp_pkey_st* noundef %pkey, i32 noundef 920, i8* noundef nonnull %6) #6
  br label %cleanup32

if.end23:                                         ; preds = %if.end15
  %call24 = tail call %struct.dh_st* @DH_new() #6
  %cmp25 = icmp eq %struct.dh_st* %call24, null
  br i1 %cmp25, label %if.then26, label %if.end27

if.then26:                                        ; preds = %if.end23
  tail call void @BN_GENCB_free(%struct.bn_gencb_st* noundef %pcb.0) #6
  br label %cleanup32

if.end27:                                         ; preds = %if.end23
  %prime_len = getelementptr inbounds %struct.DH_PKEY_CTX, %struct.DH_PKEY_CTX* %1, i64 0, i32 0
  %7 = load i32, i32* %prime_len, align 8, !tbaa !4
  %generator = getelementptr inbounds %struct.DH_PKEY_CTX, %struct.DH_PKEY_CTX* %1, i64 0, i32 1
  %8 = load i32, i32* %generator, align 4, !tbaa !12
  %call28 = tail call i32 @DH_generate_parameters_ex(%struct.dh_st* noundef nonnull %call24, i32 noundef %7, i32 noundef %8, %struct.bn_gencb_st* noundef %pcb.0) #6
  tail call void @BN_GENCB_free(%struct.bn_gencb_st* noundef %pcb.0) #6
  %tobool.not = icmp eq i32 %call28, 0
  br i1 %tobool.not, label %if.else, label %if.then29

if.then29:                                        ; preds = %if.end27
  %9 = bitcast %struct.dh_st* %call24 to i8*
  %call30 = tail call i32 @EVP_PKEY_assign(%struct.evp_pkey_st* noundef %pkey, i32 noundef 28, i8* noundef nonnull %9) #6
  br label %cleanup32

if.else:                                          ; preds = %if.end27
  tail call void @DH_free(%struct.dh_st* noundef nonnull %call24) #6
  br label %cleanup32

cleanup32:                                        ; preds = %if.then29, %if.else, %if.then17, %if.then10, %if.end, %if.then, %if.then26, %if.end21
  %retval.1 = phi i32 [ 1, %if.end21 ], [ 0, %if.then26 ], [ 1, %if.end ], [ 0, %if.then ], [ 0, %if.then10 ], [ 0, %if.then17 ], [ 0, %if.else ], [ %call28, %if.then29 ]
  ret i32 %retval.1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @pkey_dh_keygen(%struct.evp_pkey_ctx_st* nocapture noundef readonly %ctx, %struct.evp_pkey_st* noundef %pkey) #1 {
entry:
  %data = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 16
  %0 = bitcast i8** %data to %struct.DH_PKEY_CTX**
  %1 = load %struct.DH_PKEY_CTX*, %struct.DH_PKEY_CTX** %0, align 8, !tbaa !14
  %pkey1 = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 14
  %2 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey1, align 8, !tbaa !30
  %cmp = icmp eq %struct.evp_pkey_st* %2, null
  %param_nid = getelementptr inbounds %struct.DH_PKEY_CTX, %struct.DH_PKEY_CTX* %1, i64 0, i32 6
  %3 = load i32, i32* %param_nid, align 8, !tbaa !22
  %cmp2 = icmp eq i32 %3, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  br i1 %cmp2, label %if.then, label %if.then5

if.then:                                          ; preds = %land.lhs.true
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 382, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.pkey_dh_keygen, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 5, i32 noundef 107, i8* noundef null) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  br i1 %cmp2, label %if.else, label %if.then5

if.then5:                                         ; preds = %land.lhs.true, %if.end
  %call = tail call %struct.dh_st* @DH_new_by_nid(i32 noundef %3) #6
  br label %if.end8

if.else:                                          ; preds = %if.end
  %call7 = tail call %struct.dh_st* @DH_new() #6
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then5
  %dh.0 = phi %struct.dh_st* [ %call, %if.then5 ], [ %call7, %if.else ]
  %cmp9 = icmp eq %struct.dh_st* %dh.0, null
  br i1 %cmp9, label %cleanup, label %if.end11

if.end11:                                         ; preds = %if.end8
  %pmeth = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 12
  %4 = load %struct.evp_pkey_method_st*, %struct.evp_pkey_method_st** %pmeth, align 8, !tbaa !31
  %pkey_id = getelementptr inbounds %struct.evp_pkey_method_st, %struct.evp_pkey_method_st* %4, i64 0, i32 0
  %5 = load i32, i32* %pkey_id, align 8, !tbaa !32
  %6 = bitcast %struct.dh_st* %dh.0 to i8*
  %call12 = tail call i32 @EVP_PKEY_assign(%struct.evp_pkey_st* noundef %pkey, i32 noundef %5, i8* noundef nonnull %6) #6
  %7 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey1, align 8, !tbaa !30
  %cmp14.not = icmp eq %struct.evp_pkey_st* %7, null
  br i1 %cmp14.not, label %if.end19, label %land.lhs.true15

land.lhs.true15:                                  ; preds = %if.end11
  %call17 = tail call i32 @EVP_PKEY_copy_parameters(%struct.evp_pkey_st* noundef %pkey, %struct.evp_pkey_st* noundef nonnull %7) #6
  %tobool.not = icmp eq i32 %call17, 0
  br i1 %tobool.not, label %cleanup, label %if.end19

if.end19:                                         ; preds = %land.lhs.true15, %if.end11
  %call20 = tail call %struct.dh_st* @EVP_PKEY_get0_DH(%struct.evp_pkey_st* noundef %pkey) #6
  %call21 = tail call i32 @DH_generate_key(%struct.dh_st* noundef %call20) #6
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true15, %if.end8, %if.end19, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %call21, %if.end19 ], [ 0, %if.end8 ], [ 0, %land.lhs.true15 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @pkey_dh_derive(%struct.evp_pkey_ctx_st* nocapture noundef readonly %ctx, i8* noundef %key, i64* nocapture noundef %keylen) #1 {
entry:
  %data = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 16
  %0 = bitcast i8** %data to %struct.DH_PKEY_CTX**
  %1 = load %struct.DH_PKEY_CTX*, %struct.DH_PKEY_CTX** %0, align 8, !tbaa !14
  %pkey = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 14
  %2 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey, align 8, !tbaa !30
  %cmp = icmp eq %struct.evp_pkey_st* %2, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %peerkey = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 15
  %3 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %peerkey, align 8, !tbaa !34
  %cmp1 = icmp eq %struct.evp_pkey_st* %3, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 408, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.pkey_dh_derive, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 5, i32 noundef 108, i8* noundef null) #6
  br label %cleanup72

if.end:                                           ; preds = %lor.lhs.false
  %call = tail call %struct.dh_st* @EVP_PKEY_get0_DH(%struct.evp_pkey_st* noundef nonnull %2) #6
  %4 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %peerkey, align 8, !tbaa !34
  %call4 = tail call %struct.dh_st* @EVP_PKEY_get0_DH(%struct.evp_pkey_st* noundef %4) #6
  %cmp5 = icmp eq %struct.dh_st* %call4, null
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 414, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.pkey_dh_derive, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 5, i32 noundef 108, i8* noundef null) #6
  br label %cleanup72

if.end7:                                          ; preds = %if.end
  %pub_key = getelementptr inbounds %struct.dh_st, %struct.dh_st* %call4, i64 0, i32 4
  %5 = load %struct.bignum_st*, %struct.bignum_st** %pub_key, align 8, !tbaa !35
  %kdf_type = getelementptr inbounds %struct.DH_PKEY_CTX, %struct.DH_PKEY_CTX* %1, i64 0, i32 8
  %6 = load i8, i8* %kdf_type, align 4, !tbaa !13
  switch i8 %6, label %cleanup72 [
    i8 1, label %if.then10
    i8 2, label %if.then31
  ]

if.then10:                                        ; preds = %if.end7
  %cmp11 = icmp eq i8* %key, null
  br i1 %cmp11, label %if.then13, label %if.end16

if.then13:                                        ; preds = %if.then10
  %call14 = tail call i32 @DH_size(%struct.dh_st* noundef %call) #6
  %conv15 = sext i32 %call14 to i64
  store i64 %conv15, i64* %keylen, align 8, !tbaa !39
  br label %cleanup72

if.end16:                                         ; preds = %if.then10
  %pad = getelementptr inbounds %struct.DH_PKEY_CTX, %struct.DH_PKEY_CTX* %1, i64 0, i32 4
  %7 = load i32, i32* %pad, align 8, !tbaa !20
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %if.else, label %if.then17

if.then17:                                        ; preds = %if.end16
  %call18 = tail call i32 @DH_compute_key_padded(i8* noundef nonnull %key, %struct.bignum_st* noundef %5, %struct.dh_st* noundef %call) #6
  br label %if.end20

if.else:                                          ; preds = %if.end16
  %call19 = tail call i32 @DH_compute_key(i8* noundef nonnull %key, %struct.bignum_st* noundef %5, %struct.dh_st* noundef %call) #6
  br label %if.end20

if.end20:                                         ; preds = %if.else, %if.then17
  %ret.0 = phi i32 [ %call18, %if.then17 ], [ %call19, %if.else ]
  %cmp21 = icmp slt i32 %ret.0, 0
  br i1 %cmp21, label %cleanup72, label %if.end24

if.end24:                                         ; preds = %if.end20
  %conv25123 = zext i32 %ret.0 to i64
  store i64 %conv25123, i64* %keylen, align 8, !tbaa !39
  br label %cleanup72

if.then31:                                        ; preds = %if.end7
  %kdf_outlen = getelementptr inbounds %struct.DH_PKEY_CTX, %struct.DH_PKEY_CTX* %1, i64 0, i32 13
  %8 = load i64, i64* %kdf_outlen, align 8, !tbaa !27
  %tobool32.not = icmp eq i64 %8, 0
  br i1 %tobool32.not, label %cleanup72, label %lor.lhs.false33

lor.lhs.false33:                                  ; preds = %if.then31
  %kdf_oid = getelementptr inbounds %struct.DH_PKEY_CTX, %struct.DH_PKEY_CTX* %1, i64 0, i32 9
  %9 = load %struct.asn1_object_st*, %struct.asn1_object_st** %kdf_oid, align 8, !tbaa !23
  %tobool34.not = icmp eq %struct.asn1_object_st* %9, null
  br i1 %tobool34.not, label %cleanup72, label %if.end36

if.end36:                                         ; preds = %lor.lhs.false33
  %cmp37 = icmp eq i8* %key, null
  br i1 %cmp37, label %if.then39, label %if.end41

if.then39:                                        ; preds = %if.end36
  store i64 %8, i64* %keylen, align 8, !tbaa !39
  br label %cleanup72

if.end41:                                         ; preds = %if.end36
  %10 = load i64, i64* %keylen, align 8, !tbaa !39
  %cmp43.not = icmp eq i64 %10, %8
  br i1 %cmp43.not, label %if.end46, label %cleanup72

if.end46:                                         ; preds = %if.end41
  %call47 = tail call i32 @DH_size(%struct.dh_st* noundef %call) #6
  %conv48 = sext i32 %call47 to i64
  %cmp49 = icmp eq i32 %call47, 0
  br i1 %cmp49, label %cleanup72, label %if.end52

if.end52:                                         ; preds = %if.end46
  %call53 = tail call i8* @CRYPTO_malloc(i64 noundef %conv48, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 447) #6
  %cmp54 = icmp eq i8* %call53, null
  br i1 %cmp54, label %if.then56, label %if.end57

if.then56:                                        ; preds = %if.end52
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 448, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.pkey_dh_derive, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 5, i32 noundef 786688, i8* noundef null) #6
  br label %cleanup72

if.end57:                                         ; preds = %if.end52
  %call58 = tail call i32 @DH_compute_key_padded(i8* noundef nonnull %call53, %struct.bignum_st* noundef %5, %struct.dh_st* noundef %call) #6
  %cmp59 = icmp slt i32 %call58, 1
  br i1 %cmp59, label %err, label %if.end62

if.end62:                                         ; preds = %if.end57
  %11 = load i64, i64* %keylen, align 8, !tbaa !39
  %12 = load %struct.asn1_object_st*, %struct.asn1_object_st** %kdf_oid, align 8, !tbaa !23
  %kdf_ukm = getelementptr inbounds %struct.DH_PKEY_CTX, %struct.DH_PKEY_CTX* %1, i64 0, i32 11
  %13 = load i8*, i8** %kdf_ukm, align 8, !tbaa !25
  %kdf_ukmlen = getelementptr inbounds %struct.DH_PKEY_CTX, %struct.DH_PKEY_CTX* %1, i64 0, i32 12
  %14 = load i64, i64* %kdf_ukmlen, align 8, !tbaa !26
  %kdf_md = getelementptr inbounds %struct.DH_PKEY_CTX, %struct.DH_PKEY_CTX* %1, i64 0, i32 10
  %15 = load %struct.evp_md_st*, %struct.evp_md_st** %kdf_md, align 8, !tbaa !24
  %call64 = tail call i32 @DH_KDF_X9_42(i8* noundef nonnull %key, i64 noundef %11, i8* noundef nonnull %call53, i64 noundef %conv48, %struct.asn1_object_st* noundef %12, i8* noundef %13, i64 noundef %14, %struct.evp_md_st* noundef %15) #6
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %err, label %if.end67

if.end67:                                         ; preds = %if.end62
  %16 = load i64, i64* %kdf_outlen, align 8, !tbaa !27
  store i64 %16, i64* %keylen, align 8, !tbaa !39
  br label %err

err:                                              ; preds = %if.end62, %if.end57, %if.end67
  %ret.1 = phi i32 [ 0, %if.end57 ], [ 1, %if.end67 ], [ 0, %if.end62 ]
  tail call void @CRYPTO_clear_free(i8* noundef nonnull %call53, i64 noundef %conv48, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 459) #6
  br label %cleanup72

cleanup72:                                        ; preds = %if.end7, %if.then39, %if.then56, %err, %lor.lhs.false33, %if.then31, %if.end41, %if.end46, %if.end20, %if.end24, %if.then13, %if.then6, %if.then
  %retval.1 = phi i32 [ 0, %if.then ], [ 0, %if.then6 ], [ 1, %if.then13 ], [ 1, %if.end24 ], [ %ret.0, %if.end20 ], [ 1, %if.then39 ], [ 0, %if.then56 ], [ %ret.1, %err ], [ 0, %lor.lhs.false33 ], [ 0, %if.then31 ], [ 0, %if.end41 ], [ 0, %if.end46 ], [ 0, %if.end7 ]
  ret i32 %retval.1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @pkey_dh_ctrl(%struct.evp_pkey_ctx_st* nocapture noundef readonly %ctx, i32 noundef %type, i32 noundef %p1, i8* noundef %p2) #1 {
entry:
  %data = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 16
  %0 = bitcast i8** %data to %struct.DH_PKEY_CTX**
  %1 = load %struct.DH_PKEY_CTX*, %struct.DH_PKEY_CTX** %0, align 8, !tbaa !14
  switch i32 %type, label %sw.default [
    i32 4097, label %sw.bb
    i32 4100, label %sw.bb1
    i32 4112, label %sw.bb5
    i32 4098, label %sw.bb6
    i32 4101, label %sw.bb11
    i32 4099, label %sw.bb17
    i32 4111, label %sw.bb26
    i32 2, label %cleanup
    i32 4102, label %sw.bb35
    i32 4103, label %sw.bb47
    i32 4104, label %sw.bb48
    i32 4105, label %sw.bb50
    i32 4106, label %sw.bb56
    i32 4107, label %sw.bb59
    i32 4108, label %sw.bb65
    i32 4109, label %sw.bb69
    i32 4110, label %sw.bb71
  ]

sw.bb:                                            ; preds = %entry
  %cmp = icmp slt i32 %p1, 256
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %sw.bb
  %prime_len = getelementptr inbounds %struct.DH_PKEY_CTX, %struct.DH_PKEY_CTX* %1, i64 0, i32 0
  store i32 %p1, i32* %prime_len, align 8, !tbaa !4
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  %paramgen_type = getelementptr inbounds %struct.DH_PKEY_CTX, %struct.DH_PKEY_CTX* %1, i64 0, i32 2
  %2 = load i32, i32* %paramgen_type, align 8, !tbaa !29
  %cmp2 = icmp eq i32 %2, 0
  br i1 %cmp2, label %cleanup, label %if.end4

if.end4:                                          ; preds = %sw.bb1
  %subprime_len = getelementptr inbounds %struct.DH_PKEY_CTX, %struct.DH_PKEY_CTX* %1, i64 0, i32 3
  store i32 %p1, i32* %subprime_len, align 4, !tbaa !11
  br label %cleanup

sw.bb5:                                           ; preds = %entry
  %pad = getelementptr inbounds %struct.DH_PKEY_CTX, %struct.DH_PKEY_CTX* %1, i64 0, i32 4
  store i32 %p1, i32* %pad, align 8, !tbaa !20
  br label %cleanup

sw.bb6:                                           ; preds = %entry
  %paramgen_type7 = getelementptr inbounds %struct.DH_PKEY_CTX, %struct.DH_PKEY_CTX* %1, i64 0, i32 2
  %3 = load i32, i32* %paramgen_type7, align 8, !tbaa !29
  %cmp8.not = icmp eq i32 %3, 0
  br i1 %cmp8.not, label %if.end10, label %cleanup

if.end10:                                         ; preds = %sw.bb6
  %generator = getelementptr inbounds %struct.DH_PKEY_CTX, %struct.DH_PKEY_CTX* %1, i64 0, i32 1
  store i32 %p1, i32* %generator, align 4, !tbaa !12
  br label %cleanup

sw.bb11:                                          ; preds = %entry
  %4 = icmp ugt i32 %p1, 2
  br i1 %4, label %cleanup, label %if.end15

if.end15:                                         ; preds = %sw.bb11
  %paramgen_type16 = getelementptr inbounds %struct.DH_PKEY_CTX, %struct.DH_PKEY_CTX* %1, i64 0, i32 2
  store i32 %p1, i32* %paramgen_type16, align 8, !tbaa !29
  br label %cleanup

sw.bb17:                                          ; preds = %entry
  %5 = add i32 %p1, -4
  %6 = icmp ult i32 %5, -3
  br i1 %6, label %cleanup, label %lor.lhs.false21

lor.lhs.false21:                                  ; preds = %sw.bb17
  %param_nid = getelementptr inbounds %struct.DH_PKEY_CTX, %struct.DH_PKEY_CTX* %1, i64 0, i32 6
  %7 = load i32, i32* %param_nid, align 8, !tbaa !22
  %cmp22.not = icmp eq i32 %7, 0
  br i1 %cmp22.not, label %if.end24, label %cleanup

if.end24:                                         ; preds = %lor.lhs.false21
  store i32 %p1, i32* %param_nid, align 8, !tbaa !22
  br label %cleanup

sw.bb26:                                          ; preds = %entry
  %cmp27 = icmp slt i32 %p1, 1
  br i1 %cmp27, label %cleanup, label %lor.lhs.false28

lor.lhs.false28:                                  ; preds = %sw.bb26
  %param_nid29 = getelementptr inbounds %struct.DH_PKEY_CTX, %struct.DH_PKEY_CTX* %1, i64 0, i32 6
  %8 = load i32, i32* %param_nid29, align 8, !tbaa !22
  %cmp30.not = icmp eq i32 %8, 0
  br i1 %cmp30.not, label %if.end32, label %cleanup

if.end32:                                         ; preds = %lor.lhs.false28
  store i32 %p1, i32* %param_nid29, align 8, !tbaa !22
  br label %cleanup

sw.bb35:                                          ; preds = %entry
  %cmp36 = icmp eq i32 %p1, -2
  br i1 %cmp36, label %if.then37, label %if.end38

if.then37:                                        ; preds = %sw.bb35
  %kdf_type = getelementptr inbounds %struct.DH_PKEY_CTX, %struct.DH_PKEY_CTX* %1, i64 0, i32 8
  %9 = load i8, i8* %kdf_type, align 4, !tbaa !13
  %conv = sext i8 %9 to i32
  br label %cleanup

if.end38:                                         ; preds = %sw.bb35
  %10 = add i32 %p1, -3
  %11 = icmp ult i32 %10, -2
  br i1 %11, label %cleanup, label %if.end44

if.end44:                                         ; preds = %if.end38
  %conv45 = trunc i32 %p1 to i8
  %kdf_type46 = getelementptr inbounds %struct.DH_PKEY_CTX, %struct.DH_PKEY_CTX* %1, i64 0, i32 8
  store i8 %conv45, i8* %kdf_type46, align 4, !tbaa !13
  br label %cleanup

sw.bb47:                                          ; preds = %entry
  %kdf_md = getelementptr inbounds %struct.DH_PKEY_CTX, %struct.DH_PKEY_CTX* %1, i64 0, i32 10
  %12 = bitcast %struct.evp_md_st** %kdf_md to i8**
  store i8* %p2, i8** %12, align 8, !tbaa !24
  br label %cleanup

sw.bb48:                                          ; preds = %entry
  %kdf_md49 = getelementptr inbounds %struct.DH_PKEY_CTX, %struct.DH_PKEY_CTX* %1, i64 0, i32 10
  %13 = load %struct.evp_md_st*, %struct.evp_md_st** %kdf_md49, align 8, !tbaa !24
  %14 = bitcast i8* %p2 to %struct.evp_md_st**
  store %struct.evp_md_st* %13, %struct.evp_md_st** %14, align 8, !tbaa !40
  br label %cleanup

sw.bb50:                                          ; preds = %entry
  %cmp51 = icmp slt i32 %p1, 1
  br i1 %cmp51, label %cleanup, label %if.end54

if.end54:                                         ; preds = %sw.bb50
  %conv55127 = zext i32 %p1 to i64
  %kdf_outlen = getelementptr inbounds %struct.DH_PKEY_CTX, %struct.DH_PKEY_CTX* %1, i64 0, i32 13
  store i64 %conv55127, i64* %kdf_outlen, align 8, !tbaa !27
  br label %cleanup

sw.bb56:                                          ; preds = %entry
  %kdf_outlen57 = getelementptr inbounds %struct.DH_PKEY_CTX, %struct.DH_PKEY_CTX* %1, i64 0, i32 13
  %15 = load i64, i64* %kdf_outlen57, align 8, !tbaa !27
  %conv58 = trunc i64 %15 to i32
  %16 = bitcast i8* %p2 to i32*
  store i32 %conv58, i32* %16, align 4, !tbaa !19
  br label %cleanup

sw.bb59:                                          ; preds = %entry
  %kdf_ukm = getelementptr inbounds %struct.DH_PKEY_CTX, %struct.DH_PKEY_CTX* %1, i64 0, i32 11
  %17 = load i8*, i8** %kdf_ukm, align 8, !tbaa !25
  tail call void @CRYPTO_free(i8* noundef %17, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 197) #6
  store i8* %p2, i8** %kdf_ukm, align 8, !tbaa !25
  %tobool.not = icmp eq i8* %p2, null
  br i1 %tobool.not, label %if.else, label %if.then61

if.then61:                                        ; preds = %sw.bb59
  %conv62 = sext i32 %p1 to i64
  %kdf_ukmlen = getelementptr inbounds %struct.DH_PKEY_CTX, %struct.DH_PKEY_CTX* %1, i64 0, i32 12
  store i64 %conv62, i64* %kdf_ukmlen, align 8, !tbaa !26
  br label %cleanup

if.else:                                          ; preds = %sw.bb59
  %kdf_ukmlen63 = getelementptr inbounds %struct.DH_PKEY_CTX, %struct.DH_PKEY_CTX* %1, i64 0, i32 12
  store i64 0, i64* %kdf_ukmlen63, align 8, !tbaa !26
  br label %cleanup

sw.bb65:                                          ; preds = %entry
  %kdf_ukm66 = getelementptr inbounds %struct.DH_PKEY_CTX, %struct.DH_PKEY_CTX* %1, i64 0, i32 11
  %18 = load i8*, i8** %kdf_ukm66, align 8, !tbaa !25
  %19 = bitcast i8* %p2 to i8**
  store i8* %18, i8** %19, align 8, !tbaa !40
  %kdf_ukmlen67 = getelementptr inbounds %struct.DH_PKEY_CTX, %struct.DH_PKEY_CTX* %1, i64 0, i32 12
  %20 = load i64, i64* %kdf_ukmlen67, align 8, !tbaa !26
  %conv68 = trunc i64 %20 to i32
  br label %cleanup

sw.bb69:                                          ; preds = %entry
  %kdf_oid = getelementptr inbounds %struct.DH_PKEY_CTX, %struct.DH_PKEY_CTX* %1, i64 0, i32 9
  %21 = load %struct.asn1_object_st*, %struct.asn1_object_st** %kdf_oid, align 8, !tbaa !23
  tail call void @ASN1_OBJECT_free(%struct.asn1_object_st* noundef %21) #6
  %22 = bitcast %struct.asn1_object_st** %kdf_oid to i8**
  store i8* %p2, i8** %22, align 8, !tbaa !23
  br label %cleanup

sw.bb71:                                          ; preds = %entry
  %kdf_oid72 = getelementptr inbounds %struct.DH_PKEY_CTX, %struct.DH_PKEY_CTX* %1, i64 0, i32 9
  %23 = load %struct.asn1_object_st*, %struct.asn1_object_st** %kdf_oid72, align 8, !tbaa !23
  %24 = bitcast i8* %p2 to %struct.asn1_object_st**
  store %struct.asn1_object_st* %23, %struct.asn1_object_st** %24, align 8, !tbaa !40
  br label %cleanup

sw.default:                                       ; preds = %entry
  br label %cleanup

cleanup:                                          ; preds = %if.then61, %if.else, %sw.bb50, %if.end38, %entry, %sw.bb26, %lor.lhs.false28, %sw.bb17, %lor.lhs.false21, %sw.bb11, %sw.bb6, %sw.bb1, %sw.bb, %sw.default, %sw.bb71, %sw.bb69, %sw.bb65, %sw.bb56, %if.end54, %sw.bb48, %sw.bb47, %if.end44, %if.then37, %if.end32, %if.end24, %if.end15, %if.end10, %sw.bb5, %if.end4, %if.end
  %retval.0 = phi i32 [ -2, %sw.default ], [ 1, %sw.bb71 ], [ 1, %sw.bb69 ], [ %conv68, %sw.bb65 ], [ 1, %sw.bb56 ], [ 1, %if.end54 ], [ 1, %sw.bb48 ], [ 1, %sw.bb47 ], [ %conv, %if.then37 ], [ 1, %if.end44 ], [ 1, %if.end32 ], [ 1, %if.end24 ], [ 1, %if.end15 ], [ 1, %if.end10 ], [ 1, %sw.bb5 ], [ 1, %if.end4 ], [ 1, %if.end ], [ -2, %sw.bb ], [ -2, %sw.bb1 ], [ -2, %sw.bb6 ], [ -2, %sw.bb11 ], [ -2, %lor.lhs.false21 ], [ -2, %sw.bb17 ], [ -2, %lor.lhs.false28 ], [ -2, %sw.bb26 ], [ 1, %entry ], [ -2, %if.end38 ], [ -2, %sw.bb50 ], [ 1, %if.else ], [ 1, %if.then61 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @pkey_dh_ctrl_str(%struct.evp_pkey_ctx_st* noundef %ctx, i8* noundef readonly %type, i8* noundef %value) #1 {
entry:
  %call = tail call i32 @strcmp(i8* noundef %type, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0)) #8
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = tail call i32 @atoi(i8* noundef %value) #8
  %call2 = tail call i32 @EVP_PKEY_CTX_set_dh_paramgen_prime_len(%struct.evp_pkey_ctx_st* noundef %ctx, i32 noundef %call1) #6
  br label %return

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @strcmp(i8* noundef %type, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0)) #8
  %cmp4 = icmp eq i32 %call3, 0
  br i1 %cmp4, label %if.then5, label %if.end12

if.then5:                                         ; preds = %if.end
  %call6 = tail call i32 @atoi(i8* noundef %value) #8
  %0 = icmp ugt i32 %call6, 3
  br i1 %0, label %return, label %if.end10

if.end10:                                         ; preds = %if.then5
  %data = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 16
  %1 = bitcast i8** %data to %struct.DH_PKEY_CTX**
  %2 = load %struct.DH_PKEY_CTX*, %struct.DH_PKEY_CTX** %1, align 8, !tbaa !14
  %param_nid = getelementptr inbounds %struct.DH_PKEY_CTX, %struct.DH_PKEY_CTX* %2, i64 0, i32 6
  store i32 %call6, i32* %param_nid, align 8, !tbaa !22
  br label %return

if.end12:                                         ; preds = %if.end
  %call13 = tail call i32 @strcmp(i8* noundef %type, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)) #8
  %cmp14 = icmp eq i32 %call13, 0
  br i1 %cmp14, label %if.then15, label %if.end25

if.then15:                                        ; preds = %if.end12
  %data17 = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 16
  %3 = bitcast i8** %data17 to %struct.DH_PKEY_CTX**
  %4 = load %struct.DH_PKEY_CTX*, %struct.DH_PKEY_CTX** %3, align 8, !tbaa !14
  %call18 = tail call i32 @OBJ_sn2nid(i8* noundef %value) #6
  %cmp19 = icmp eq i32 %call18, 0
  br i1 %cmp19, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.then15
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 247, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.pkey_dh_ctrl_str, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 5, i32 noundef 110, i8* noundef null) #6
  br label %return

if.end21:                                         ; preds = %if.then15
  %param_nid22 = getelementptr inbounds %struct.DH_PKEY_CTX, %struct.DH_PKEY_CTX* %4, i64 0, i32 6
  store i32 %call18, i32* %param_nid22, align 8, !tbaa !22
  br label %return

if.end25:                                         ; preds = %if.end12
  %call26 = tail call i32 @strcmp(i8* noundef %type, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0)) #8
  %cmp27 = icmp eq i32 %call26, 0
  br i1 %cmp27, label %if.then28, label %if.end33

if.then28:                                        ; preds = %if.end25
  %call30 = tail call i32 @atoi(i8* noundef %value) #8
  %call31 = tail call i32 @EVP_PKEY_CTX_set_dh_paramgen_generator(%struct.evp_pkey_ctx_st* noundef %ctx, i32 noundef %call30) #6
  br label %return

if.end33:                                         ; preds = %if.end25
  %call34 = tail call i32 @strcmp(i8* noundef %type, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0)) #8
  %cmp35 = icmp eq i32 %call34, 0
  br i1 %cmp35, label %if.then36, label %if.end41

if.then36:                                        ; preds = %if.end33
  %call38 = tail call i32 @atoi(i8* noundef %value) #8
  %call39 = tail call i32 @EVP_PKEY_CTX_set_dh_paramgen_subprime_len(%struct.evp_pkey_ctx_st* noundef %ctx, i32 noundef %call38) #6
  br label %return

if.end41:                                         ; preds = %if.end33
  %call42 = tail call i32 @strcmp(i8* noundef %type, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0)) #8
  %cmp43 = icmp eq i32 %call42, 0
  br i1 %cmp43, label %if.then44, label %if.end48

if.then44:                                        ; preds = %if.end41
  %call45 = tail call i32 @atoi(i8* noundef %value) #8
  %call46 = tail call i32 @EVP_PKEY_CTX_set_dh_paramgen_type(%struct.evp_pkey_ctx_st* noundef %ctx, i32 noundef %call45) #6
  br label %return

if.end48:                                         ; preds = %if.end41
  %call49 = tail call i32 @strcmp(i8* noundef %type, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0)) #8
  %cmp50 = icmp eq i32 %call49, 0
  br i1 %cmp50, label %if.then51, label %return

if.then51:                                        ; preds = %if.end48
  %call52 = tail call i32 @atoi(i8* noundef %value) #8
  %call53 = tail call i32 @EVP_PKEY_CTX_set_dh_pad(%struct.evp_pkey_ctx_st* noundef %ctx, i32 noundef %call52) #6
  br label %return

return:                                           ; preds = %if.end48, %if.then20, %if.end21, %if.end10, %if.then5, %if.then51, %if.then44, %if.then36, %if.then28, %if.then
  %retval.2 = phi i32 [ %call2, %if.then ], [ %call31, %if.then28 ], [ %call39, %if.then36 ], [ %call46, %if.then44 ], [ %call53, %if.then51 ], [ 1, %if.end10 ], [ -2, %if.then5 ], [ -2, %if.then20 ], [ 1, %if.end21 ], [ -2, %if.end48 ]
  ret i32 %retval.2
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare i8* @CRYPTO_zalloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare void @ERR_new() local_unnamed_addr #3

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #3

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

declare %struct.asn1_object_st* @OBJ_dup(%struct.asn1_object_st* noundef) local_unnamed_addr #3

declare i8* @CRYPTO_memdup(i8* noundef, i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare void @ASN1_OBJECT_free(%struct.asn1_object_st* noundef) local_unnamed_addr #3

declare %struct.dh_st* @DH_new_by_nid(i32 noundef) local_unnamed_addr #3

declare i32 @EVP_PKEY_assign(%struct.evp_pkey_st* noundef, i32 noundef, i8* noundef) local_unnamed_addr #3

declare %struct.bn_gencb_st* @BN_GENCB_new() local_unnamed_addr #3

declare void @evp_pkey_set_cb_translate(%struct.bn_gencb_st* noundef, %struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.dh_st* @ffc_params_generate(%struct.DH_PKEY_CTX* nocapture noundef readonly %dctx, %struct.bn_gencb_st* noundef %pcb) unnamed_addr #1 {
entry:
  %res = alloca i32, align 4
  %0 = bitcast i32* %res to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #9
  %prime_len1 = getelementptr inbounds %struct.DH_PKEY_CTX, %struct.DH_PKEY_CTX* %dctx, i64 0, i32 0
  %1 = load i32, i32* %prime_len1, align 8, !tbaa !4
  %subprime_len2 = getelementptr inbounds %struct.DH_PKEY_CTX, %struct.DH_PKEY_CTX* %dctx, i64 0, i32 3
  %2 = load i32, i32* %subprime_len2, align 4, !tbaa !11
  %paramgen_type = getelementptr inbounds %struct.DH_PKEY_CTX, %struct.DH_PKEY_CTX* %dctx, i64 0, i32 2
  %3 = load i32, i32* %paramgen_type, align 8, !tbaa !29
  %cmp = icmp sgt i32 %3, 2
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call %struct.dh_st* @DH_new() #6
  %cmp3 = icmp eq %struct.dh_st* %call, null
  br i1 %cmp3, label %cleanup, label %if.end5

if.end5:                                          ; preds = %if.end
  %cmp6 = icmp eq i32 %2, -1
  %cmp8 = icmp sgt i32 %1, 2047
  %. = select i1 %cmp8, i32 256, i32 160
  %subprime_len.0 = select i1 %cmp6, i32 %., i32 %2
  %md = getelementptr inbounds %struct.DH_PKEY_CTX, %struct.DH_PKEY_CTX* %dctx, i64 0, i32 5
  %4 = load %struct.evp_md_st*, %struct.evp_md_st** %md, align 8, !tbaa !21
  %cmp12.not = icmp eq %struct.evp_md_st* %4, null
  br i1 %cmp12.not, label %if.end17, label %if.then13

if.then13:                                        ; preds = %if.end5
  %params = getelementptr inbounds %struct.dh_st, %struct.dh_st* %call, i64 0, i32 2
  %call15 = tail call i8* @EVP_MD_get0_name(%struct.evp_md_st* noundef nonnull %4) #6
  %call16 = tail call i32 @ossl_ffc_set_digest(%struct.ffc_params_st* noundef nonnull %params, i8* noundef %call15, i8* noundef null) #6
  br label %if.end17

if.end17:                                         ; preds = %if.then13, %if.end5
  %5 = load i32, i32* %paramgen_type, align 8, !tbaa !29
  %cmp19 = icmp eq i32 %5, 1
  br i1 %cmp19, label %if.then20, label %if.else24

if.then20:                                        ; preds = %if.end17
  %params21 = getelementptr inbounds %struct.dh_st, %struct.dh_st* %call, i64 0, i32 2
  %conv = sext i32 %1 to i64
  %conv22 = sext i32 %subprime_len.0 to i64
  %call23 = call i32 @ossl_ffc_params_FIPS186_2_generate(%struct.ossl_lib_ctx_st* noundef null, %struct.ffc_params_st* noundef nonnull %params21, i32 noundef 1, i64 noundef %conv, i64 noundef %conv22, i32* noundef nonnull %res, %struct.bn_gencb_st* noundef %pcb) #6
  br label %if.end34

if.else24:                                        ; preds = %if.end17
  %cmp26 = icmp sgt i32 %5, 0
  br i1 %cmp26, label %if.then28, label %if.then37

if.then28:                                        ; preds = %if.else24
  %params29 = getelementptr inbounds %struct.dh_st, %struct.dh_st* %call, i64 0, i32 2
  %conv30 = sext i32 %1 to i64
  %conv31 = sext i32 %subprime_len.0 to i64
  %call32 = call i32 @ossl_ffc_params_FIPS186_4_generate(%struct.ossl_lib_ctx_st* noundef null, %struct.ffc_params_st* noundef nonnull %params29, i32 noundef 1, i64 noundef %conv30, i64 noundef %conv31, i32* noundef nonnull %res, %struct.bn_gencb_st* noundef %pcb) #6
  br label %if.end34

if.end34:                                         ; preds = %if.then28, %if.then20
  %rv.0 = phi i32 [ %call23, %if.then20 ], [ %call32, %if.then28 ]
  %cmp35 = icmp slt i32 %rv.0, 1
  br i1 %cmp35, label %if.then37, label %cleanup

if.then37:                                        ; preds = %if.else24, %if.end34
  call void @DH_free(%struct.dh_st* noundef nonnull %call) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end34, %if.end, %entry, %if.then37
  %retval.0 = phi %struct.dh_st* [ null, %if.then37 ], [ null, %entry ], [ null, %if.end ], [ %call, %if.end34 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #9
  ret %struct.dh_st* %retval.0
}

declare void @BN_GENCB_free(%struct.bn_gencb_st* noundef) local_unnamed_addr #3

declare %struct.dh_st* @DH_new() local_unnamed_addr #3

declare i32 @DH_generate_parameters_ex(%struct.dh_st* noundef, i32 noundef, i32 noundef, %struct.bn_gencb_st* noundef) local_unnamed_addr #3

declare void @DH_free(%struct.dh_st* noundef) local_unnamed_addr #3

declare i32 @ossl_ffc_set_digest(%struct.ffc_params_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #3

declare i8* @EVP_MD_get0_name(%struct.evp_md_st* noundef) local_unnamed_addr #3

declare i32 @ossl_ffc_params_FIPS186_2_generate(%struct.ossl_lib_ctx_st* noundef, %struct.ffc_params_st* noundef, i32 noundef, i64 noundef, i64 noundef, i32* noundef, %struct.bn_gencb_st* noundef) local_unnamed_addr #3

declare i32 @ossl_ffc_params_FIPS186_4_generate(%struct.ossl_lib_ctx_st* noundef, %struct.ffc_params_st* noundef, i32 noundef, i64 noundef, i64 noundef, i32* noundef, %struct.bn_gencb_st* noundef) local_unnamed_addr #3

declare i32 @EVP_PKEY_copy_parameters(%struct.evp_pkey_st* noundef, %struct.evp_pkey_st* noundef) local_unnamed_addr #3

declare i32 @DH_generate_key(%struct.dh_st* noundef) local_unnamed_addr #3

declare %struct.dh_st* @EVP_PKEY_get0_DH(%struct.evp_pkey_st* noundef) local_unnamed_addr #3

declare i32 @DH_size(%struct.dh_st* noundef) local_unnamed_addr #3

declare i32 @DH_compute_key_padded(i8* noundef, %struct.bignum_st* noundef, %struct.dh_st* noundef) local_unnamed_addr #3

declare i32 @DH_compute_key(i8* noundef, %struct.bignum_st* noundef, %struct.dh_st* noundef) local_unnamed_addr #3

declare i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare i32 @DH_KDF_X9_42(i8* noundef, i64 noundef, i8* noundef, i64 noundef, %struct.asn1_object_st* noundef, i8* noundef, i64 noundef, %struct.evp_md_st* noundef) local_unnamed_addr #3

declare void @CRYPTO_clear_free(i8* noundef, i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @strcmp(i8* noundef, i8* noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline nounwind readonly uwtable willreturn
declare i32 @atoi(i8* noundef nonnull) local_unnamed_addr #5

declare i32 @EVP_PKEY_CTX_set_dh_paramgen_prime_len(%struct.evp_pkey_ctx_st* noundef, i32 noundef) local_unnamed_addr #3

declare i32 @OBJ_sn2nid(i8* noundef) local_unnamed_addr #3

declare i32 @EVP_PKEY_CTX_set_dh_paramgen_generator(%struct.evp_pkey_ctx_st* noundef, i32 noundef) local_unnamed_addr #3

declare i32 @EVP_PKEY_CTX_set_dh_paramgen_subprime_len(%struct.evp_pkey_ctx_st* noundef, i32 noundef) local_unnamed_addr #3

declare i32 @EVP_PKEY_CTX_set_dh_paramgen_type(%struct.evp_pkey_ctx_st* noundef, i32 noundef) local_unnamed_addr #3

declare i32 @EVP_PKEY_CTX_set_dh_pad(%struct.evp_pkey_ctx_st* noundef, i32 noundef) local_unnamed_addr #3

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "no-builtins" }
attributes #7 = { nobuiltin "no-builtins" }
attributes #8 = { nobuiltin nounwind readonly willreturn "no-builtins" }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !6, i64 0}
!5 = !{!"", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !9, i64 24, !6, i64 32, !7, i64 36, !7, i64 44, !9, i64 48, !9, i64 56, !9, i64 64, !10, i64 72, !10, i64 80}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"any pointer", !7, i64 0}
!10 = !{!"long", !7, i64 0}
!11 = !{!5, !6, i64 12}
!12 = !{!5, !6, i64 4}
!13 = !{!5, !7, i64 44}
!14 = !{!15, !9, i64 152}
!15 = !{!"evp_pkey_ctx_st", !6, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !7, i64 40, !16, i64 56, !9, i64 88, !9, i64 96, !9, i64 104, !6, i64 112, !6, i64 116, !9, i64 120, !9, i64 128, !9, i64 136, !9, i64 144, !9, i64 152, !6, i64 160, !9, i64 168}
!16 = !{!"", !9, i64 0, !9, i64 8, !10, i64 16, !6, i64 24}
!17 = !{!15, !9, i64 104}
!18 = !{!15, !6, i64 112}
!19 = !{!6, !6, i64 0}
!20 = !{!5, !6, i64 16}
!21 = !{!5, !9, i64 24}
!22 = !{!5, !6, i64 32}
!23 = !{!5, !9, i64 48}
!24 = !{!5, !9, i64 56}
!25 = !{!5, !9, i64 64}
!26 = !{!5, !10, i64 72}
!27 = !{!5, !10, i64 80}
!28 = !{!15, !9, i64 96}
!29 = !{!5, !6, i64 8}
!30 = !{!15, !9, i64 136}
!31 = !{!15, !9, i64 120}
!32 = !{!33, !6, i64 0}
!33 = !{!"evp_pkey_method_st", !6, i64 0, !6, i64 4, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !9, i64 64, !9, i64 72, !9, i64 80, !9, i64 88, !9, i64 96, !9, i64 104, !9, i64 112, !9, i64 120, !9, i64 128, !9, i64 136, !9, i64 144, !9, i64 152, !9, i64 160, !9, i64 168, !9, i64 176, !9, i64 184, !9, i64 192, !9, i64 200, !9, i64 208, !9, i64 216, !9, i64 224, !9, i64 232, !9, i64 240, !9, i64 248}
!34 = !{!15, !9, i64 144}
!35 = !{!36, !9, i64 104}
!36 = !{!"dh_st", !6, i64 0, !6, i64 4, !37, i64 8, !6, i64 96, !9, i64 104, !9, i64 112, !6, i64 120, !9, i64 128, !7, i64 136, !38, i64 144, !9, i64 160, !9, i64 168, !9, i64 176, !9, i64 184, !10, i64 192}
!37 = !{!"ffc_params_st", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !10, i64 40, !6, i64 48, !6, i64 52, !6, i64 56, !6, i64 60, !6, i64 64, !9, i64 72, !9, i64 80}
!38 = !{!"crypto_ex_data_st", !9, i64 0, !9, i64 8}
!39 = !{!10, !10, i64 0}
!40 = !{!9, !9, i64 0}
