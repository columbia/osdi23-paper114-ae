; ModuleID = 'crypto/evp/pmeth_lib.c'
source_filename = "crypto/evp/pmeth_lib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evp_pkey_method_st = type { i32, i32, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st*)*, void (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64, i8*, i64)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_md_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, %struct.evp_md_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_md_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i32, %struct.evp_md_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*)*, i32 (%struct.evp_pkey_ctx_st*, i32, i32, i8*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i8*)*, i32 (%struct.evp_md_ctx_st*, i8*, i64*, i8*, i64)*, i32 (%struct.evp_md_ctx_st*, i8*, i64, i8*, i64)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_md_ctx_st*)* }
%struct.evp_pkey_ctx_st = type { i32, %struct.ossl_lib_ctx_st*, i8*, i8*, %struct.evp_keymgmt_st*, %union.anon, %struct.anon.4, i8*, {}*, i32*, i32, i32, %struct.evp_pkey_method_st*, %struct.engine_st*, %struct.evp_pkey_st*, %struct.evp_pkey_st*, i8*, i8, %struct.bignum_st* }
%struct.ossl_lib_ctx_st = type opaque
%struct.evp_keymgmt_st = type { i32, i32, i8*, i8*, %struct.ossl_provider_st*, i32, i8*, i8* (i8*)*, void (i8*)*, i32 (i8*, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i8*)*, i32 (i8*, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i8*)*, i8* (i8*, i32, %struct.ossl_param_st*)*, i32 (i8*, i8*)*, i32 (i8*, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i8*, i8*)*, i8* (i8*, i32 (%struct.ossl_param_st*, i8*)*, i8*)*, void (i8*)*, i8* (i8*, i64)*, i8* (i32)*, i32 (i8*, i32)*, i32 (i8*, i32, i32)*, i32 (i8*, i8*, i32)*, i32 (i8*, i32, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i32)*, i32 (i8*, i32, i32 (%struct.ossl_param_st*, i8*)*, i8*)*, %struct.ossl_param_st* (i32)*, i8* (i8*, i32)* }
%struct.ossl_provider_st = type opaque
%struct.ossl_param_st = type { i8*, i32, i8*, i64, i64 }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { %struct.evp_keyexch_st*, i8* }
%struct.evp_keyexch_st = type { i32, i8*, i8*, %struct.ossl_provider_st*, i32, i8*, i8* (i8*)*, i32 (i8*, i8*, %struct.ossl_param_st*)*, i32 (i8*, i8*)*, i32 (i8*, i8*, i64*, i64)*, void (i8*)*, i8* (i8*)*, i32 (i8*, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i8*, i8*)*, i32 (i8*, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i8*, i8*)* }
%struct.anon.4 = type { i8*, i8*, i64, i8 }
%struct.engine_st = type opaque
%struct.evp_pkey_st = type { i32, i32, %struct.evp_pkey_asn1_method_st*, %struct.engine_st*, %struct.engine_st*, %union.legacy_pkey_st, %union.legacy_pkey_st, i32, i8*, %struct.stack_st_X509_ATTRIBUTE*, i32, i8, %struct.crypto_ex_data_st, %struct.evp_keymgmt_st*, i8*, i64, %struct.stack_st_OP_CACHE_ELEM*, i64, %struct.anon.6 }
%struct.evp_pkey_asn1_method_st = type { i32, i32, i64, i8*, i8*, i32 (%struct.evp_pkey_st*, %struct.X509_pubkey_st*)*, i32 (%struct.X509_pubkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)*, i32 (%struct.evp_pkey_st*, %struct.pkcs8_priv_key_info_st*)*, i32 (%struct.pkcs8_priv_key_info_st*, %struct.evp_pkey_st*)*, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, i8**, i32)*, i32 (%struct.evp_pkey_st*, i8**)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)*, i32 (%struct.bio_st*, %struct.X509_algor_st*, %struct.asn1_string_st*, i32, %struct.asn1_pctx_st*)*, void (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, i32, i64, i8*)*, i32 (%struct.evp_pkey_st*, i8**, i32)*, i32 (%struct.evp_pkey_st*, i8**)*, i32 (%struct.evp_md_ctx_st*, %struct.ASN1_ITEM_st*, i8*, %struct.X509_algor_st*, %struct.asn1_string_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_md_ctx_st*, %struct.ASN1_ITEM_st*, i8*, %struct.X509_algor_st*, %struct.X509_algor_st*, %struct.asn1_string_st*)*, i32 (%struct.x509_sig_info_st*, %struct.X509_algor_st*, %struct.asn1_string_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, i8*, i64)*, i32 (%struct.evp_pkey_st*, i8*, i64)*, i32 (%struct.evp_pkey_st*, i8*, i64*)*, i32 (%struct.evp_pkey_st*, i8*, i64*)*, i64 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, i8*, i32 (i8*, i32, %struct.ossl_param_st*)*, %struct.ossl_lib_ctx_st*, i8*)*, i32 (%struct.ossl_param_st*, i8*)*, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, %struct.pkcs8_priv_key_info_st*, %struct.ossl_lib_ctx_st*, i8*)* }
%struct.X509_pubkey_st = type opaque
%struct.pkcs8_priv_key_info_st = type opaque
%struct.bio_st = type opaque
%struct.asn1_pctx_st = type { i64, i64, i64, i64, i64 }
%struct.X509_algor_st = type { %struct.asn1_object_st*, %struct.asn1_type_st* }
%struct.asn1_object_st = type { i8*, i8*, i32, i32, i8*, i32 }
%struct.asn1_type_st = type { i32, %union.anon.5 }
%union.anon.5 = type { i8* }
%struct.asn1_string_st = type { i32, i32, i8*, i64 }
%struct.evp_md_ctx_st = type { %struct.evp_md_st*, %struct.evp_md_st*, %struct.engine_st*, i64, i8*, %struct.evp_pkey_ctx_st*, i32 (%struct.evp_md_ctx_st*, i8*, i64)*, i8*, %struct.evp_md_st* }
%struct.evp_md_st = type { i32, i32, i32, i64, i32, i32 (%struct.evp_md_ctx_st*)*, i32 (%struct.evp_md_ctx_st*, i8*, i64)*, i32 (%struct.evp_md_ctx_st*, i8*)*, i32 (%struct.evp_md_ctx_st*, %struct.evp_md_ctx_st*)*, i32 (%struct.evp_md_ctx_st*)*, i32, i32, i32 (%struct.evp_md_ctx_st*, i32, i32, i8*)*, i32, i8*, i8*, %struct.ossl_provider_st*, i32, i8*, i8* (i8*)*, i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64*, i64)*, i32 (i8*, i8*, i64, i8*, i64*, i64)*, void (i8*)*, i8* (i8*)*, i32 (%struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i8*)*, %struct.ossl_param_st* (i8*, i8*)*, %struct.ossl_param_st* (i8*, i8*)* }
%struct.ASN1_ITEM_st = type opaque
%struct.x509_sig_info_st = type opaque
%union.legacy_pkey_st = type { i8* }
%struct.stack_st_X509_ATTRIBUTE = type opaque
%struct.crypto_ex_data_st = type { %struct.ossl_lib_ctx_st*, %struct.stack_st_void* }
%struct.stack_st_void = type opaque
%struct.stack_st_OP_CACHE_ELEM = type opaque
%struct.anon.6 = type { i32, i32, i32 }
%struct.bignum_st = type opaque
%struct.stack_st_EVP_PKEY_METHOD = type opaque
%struct.evp_signature_st = type { i32, i8*, i8*, %struct.ossl_provider_st*, i32, i8*, i8* (i8*, i8*)*, i32 (i8*, i8*, %struct.ossl_param_st*)*, i32 (i8*, i8*, i64*, i64, i8*, i64)*, i32 (i8*, i8*, %struct.ossl_param_st*)*, i32 (i8*, i8*, i64, i8*, i64)*, i32 (i8*, i8*, %struct.ossl_param_st*)*, i32 (i8*, i8*, i64*, i64, i8*, i64)*, i32 (i8*, i8*, i8*, %struct.ossl_param_st*)*, i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64*, i64)*, i32 (i8*, i8*, i64*, i64, i8*, i64)*, i32 (i8*, i8*, i8*, %struct.ossl_param_st*)*, i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64, i8*, i64)*, void (i8*)*, i8* (i8*)*, i32 (i8*, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i8*, i8*)*, i32 (i8*, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i8*, i8*)*, i32 (i8*, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i8*)*, i32 (i8*, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i8*)* }
%struct.evp_kem_st = type { i32, i8*, i8*, %struct.ossl_provider_st*, i32, i8*, i8* (i8*)*, i32 (i8*, i8*, %struct.ossl_param_st*)*, i32 (i8*, i8*, i64*, i8*, i64*)*, i32 (i8*, i8*, %struct.ossl_param_st*)*, i32 (i8*, i8*, i64*, i8*, i64)*, void (i8*)*, i8* (i8*)*, i32 (i8*, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i8*, i8*)*, i32 (i8*, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i8*, i8*)* }
%struct.evp_asym_cipher_st = type { i32, i8*, i8*, %struct.ossl_provider_st*, i32, i8*, i8* (i8*)*, i32 (i8*, i8*, %struct.ossl_param_st*)*, i32 (i8*, i8*, i64*, i64, i8*, i64)*, i32 (i8*, i8*, %struct.ossl_param_st*)*, i32 (i8*, i8*, i64*, i64, i8*, i64)*, void (i8*)*, i8* (i8*)*, i32 (i8*, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i8*, i8*)*, i32 (i8*, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i8*, i8*)* }
%struct.stack_st = type opaque

@standard_methods = internal global [10 x %struct.evp_pkey_method_st* ()*] [%struct.evp_pkey_method_st* ()* @ossl_rsa_pkey_method, %struct.evp_pkey_method_st* ()* @ossl_dh_pkey_method, %struct.evp_pkey_method_st* ()* @ossl_dsa_pkey_method, %struct.evp_pkey_method_st* ()* @ossl_ec_pkey_method, %struct.evp_pkey_method_st* ()* @ossl_rsa_pss_pkey_method, %struct.evp_pkey_method_st* ()* @ossl_dhx_pkey_method, %struct.evp_pkey_method_st* ()* @ossl_ecx25519_pkey_method, %struct.evp_pkey_method_st* ()* @ossl_ecx448_pkey_method, %struct.evp_pkey_method_st* ()* @ossl_ed25519_pkey_method, %struct.evp_pkey_method_st* ()* @ossl_ed448_pkey_method], align 16
@.str = private unnamed_addr constant [23 x i8] c"crypto/evp/pmeth_lib.c\00", align 1
@__func__.EVP_PKEY_meth_new = private unnamed_addr constant [18 x i8] c"EVP_PKEY_meth_new\00", align 1
@__func__.EVP_PKEY_CTX_dup = private unnamed_addr constant [17 x i8] c"EVP_PKEY_CTX_dup\00", align 1
@app_pkey_methods = internal unnamed_addr global %struct.stack_st_EVP_PKEY_METHOD* null, align 8
@__func__.EVP_PKEY_meth_add0 = private unnamed_addr constant [19 x i8] c"EVP_PKEY_meth_add0\00", align 1
@__func__.EVP_PKEY_CTX_get_signature_md = private unnamed_addr constant [30 x i8] c"EVP_PKEY_CTX_get_signature_md\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"digest\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"secret\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"seed\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"salt\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"key\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"info\00", align 1
@__func__.EVP_PKEY_CTX_set_hkdf_mode = private unnamed_addr constant [27 x i8] c"EVP_PKEY_CTX_set_hkdf_mode\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"pass\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"n\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"p\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"maxmem_bytes\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"priv\00", align 1
@__func__.EVP_PKEY_CTX_set_kem_op = private unnamed_addr constant [24 x i8] c"EVP_PKEY_CTX_set_kem_op\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"operation\00", align 1
@__func__.evp_pkey_ctx_set1_id_prov = private unnamed_addr constant [26 x i8] c"evp_pkey_ctx_set1_id_prov\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"distid\00", align 1
@__func__.EVP_PKEY_CTX_ctrl = private unnamed_addr constant [18 x i8] c"EVP_PKEY_CTX_ctrl\00", align 1
@__func__.EVP_PKEY_CTX_md = private unnamed_addr constant [16 x i8] c"EVP_PKEY_CTX_md\00", align 1
@__func__.int_ctx_new = private unnamed_addr constant [12 x i8] c"int_ctx_new\00", align 1
@__func__.evp_pkey_ctx_set_md = private unnamed_addr constant [20 x i8] c"evp_pkey_ctx_set_md\00", align 1
@.str.16 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@__func__.evp_pkey_ctx_set1_octet_string = private unnamed_addr constant [31 x i8] c"evp_pkey_ctx_set1_octet_string\00", align 1
@__func__.evp_pkey_ctx_set_uint64 = private unnamed_addr constant [24 x i8] c"evp_pkey_ctx_set_uint64\00", align 1
@__func__.get1_id_data = private unnamed_addr constant [13 x i8] c"get1_id_data\00", align 1
@__func__.evp_pkey_ctx_ctrl_int = private unnamed_addr constant [22 x i8] c"evp_pkey_ctx_ctrl_int\00", align 1
@__func__.evp_pkey_ctx_ctrl_str_int = private unnamed_addr constant [26 x i8] c"evp_pkey_ctx_ctrl_str_int\00", align 1
@__func__.evp_pkey_ctx_store_cached_data = private unnamed_addr constant [31 x i8] c"evp_pkey_ctx_store_cached_data\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"hexdistid\00", align 1

; Function Attrs: noinline nounwind uwtable
define %struct.evp_pkey_method_st* @EVP_PKEY_meth_find(i32 noundef %type) local_unnamed_addr #0 {
entry:
  %tmp = alloca %struct.evp_pkey_method_st, align 8
  %t = alloca %struct.evp_pkey_method_st*, align 8
  %0 = bitcast %struct.evp_pkey_method_st* %tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %0) #12
  %1 = bitcast %struct.evp_pkey_method_st** %t to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #12
  %call = tail call fastcc %struct.evp_pkey_method_st* @evp_pkey_meth_find_added_by_application(i32 noundef %type) #13
  %cmp.not = icmp eq %struct.evp_pkey_method_st* %call, null
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %pkey_id = getelementptr inbounds %struct.evp_pkey_method_st, %struct.evp_pkey_method_st* %tmp, i64 0, i32 0
  store i32 %type, i32* %pkey_id, align 8, !tbaa !4
  store %struct.evp_pkey_method_st* %tmp, %struct.evp_pkey_method_st** %t, align 8, !tbaa !10
  %call1 = call fastcc %struct.evp_pkey_method_st* ()** @OBJ_bsearch_pmeth_func(%struct.evp_pkey_method_st** noundef nonnull %t) #13
  %cmp2 = icmp eq %struct.evp_pkey_method_st* ()** %call1, null
  br i1 %cmp2, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %2 = load %struct.evp_pkey_method_st* ()*, %struct.evp_pkey_method_st* ()** %call1, align 8, !tbaa !10
  %cmp3 = icmp eq %struct.evp_pkey_method_st* ()* %2, null
  br i1 %cmp3, label %cleanup, label %if.end5

if.end5:                                          ; preds = %lor.lhs.false
  %call6 = call %struct.evp_pkey_method_st* %2() #14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false, %entry, %if.end5
  %retval.0 = phi %struct.evp_pkey_method_st* [ %call6, %if.end5 ], [ %call, %entry ], [ null, %lor.lhs.false ], [ null, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #12
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %0) #12
  ret %struct.evp_pkey_method_st* %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.evp_pkey_method_st* @evp_pkey_meth_find_added_by_application(i32 noundef %type) unnamed_addr #0 {
entry:
  %tmp = alloca %struct.evp_pkey_method_st, align 8
  %0 = load %struct.stack_st_EVP_PKEY_METHOD*, %struct.stack_st_EVP_PKEY_METHOD** @app_pkey_methods, align 8, !tbaa !10
  %cmp.not = icmp eq %struct.stack_st_EVP_PKEY_METHOD* %0, null
  br i1 %cmp.not, label %return, label %if.then

if.then:                                          ; preds = %entry
  %1 = bitcast %struct.evp_pkey_method_st* %tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %1) #12
  %pkey_id = getelementptr inbounds %struct.evp_pkey_method_st, %struct.evp_pkey_method_st* %tmp, i64 0, i32 0
  store i32 %type, i32* %pkey_id, align 8, !tbaa !4
  %call = call fastcc i32 @sk_EVP_PKEY_METHOD_find(%struct.stack_st_EVP_PKEY_METHOD* noundef nonnull %0, %struct.evp_pkey_method_st* noundef nonnull %tmp) #13
  %cmp1 = icmp sgt i32 %call, -1
  br i1 %cmp1, label %cleanup, label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %1) #12
  br label %return

cleanup:                                          ; preds = %if.then
  %2 = load %struct.stack_st_EVP_PKEY_METHOD*, %struct.stack_st_EVP_PKEY_METHOD** @app_pkey_methods, align 8, !tbaa !10
  %call3 = call fastcc %struct.evp_pkey_method_st* @sk_EVP_PKEY_METHOD_value(%struct.stack_st_EVP_PKEY_METHOD* noundef %2, i32 noundef %call) #13
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %1) #12
  br label %return

return:                                           ; preds = %entry, %cleanup.thread, %cleanup
  %retval.1 = phi %struct.evp_pkey_method_st* [ %call3, %cleanup ], [ null, %cleanup.thread ], [ null, %entry ]
  ret %struct.evp_pkey_method_st* %retval.1
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.evp_pkey_method_st* ()** @OBJ_bsearch_pmeth_func(%struct.evp_pkey_method_st** noundef %key) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.evp_pkey_method_st** %key to i8*
  %call = tail call i8* @OBJ_bsearch_(i8* noundef %0, i8* noundef bitcast ([10 x %struct.evp_pkey_method_st* ()*]* @standard_methods to i8*), i32 noundef 10, i32 noundef 8, i32 (i8*, i8*)* noundef nonnull @pmeth_func_cmp_BSEARCH_CMP_FN) #14
  %1 = bitcast i8* %call to %struct.evp_pkey_method_st* ()**
  ret %struct.evp_pkey_method_st* ()** %1
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define %struct.evp_pkey_method_st* @EVP_PKEY_meth_new(i32 noundef %id, i32 noundef %flags) local_unnamed_addr #0 {
entry:
  %call = tail call i8* @CRYPTO_zalloc(i64 noundef 256, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 130) #14
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #14
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 132, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.EVP_PKEY_meth_new, i64 0, i64 0)) #14
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 786688, i8* noundef null) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = bitcast i8* %call to %struct.evp_pkey_method_st*
  %pkey_id = bitcast i8* %call to i32*
  store i32 %id, i32* %pkey_id, align 8, !tbaa !4
  %or = or i32 %flags, 1
  %flags1 = getelementptr inbounds i8, i8* %call, i64 4
  %1 = bitcast i8* %flags1 to i32*
  store i32 %or, i32* %1, align 4, !tbaa !11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi %struct.evp_pkey_method_st* [ null, %if.then ], [ %0, %if.end ]
  ret %struct.evp_pkey_method_st* %retval.0
}

declare i8* @CRYPTO_zalloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @evp_pkey_ctx_state(%struct.evp_pkey_ctx_st* nocapture noundef readonly %ctx) local_unnamed_addr #3 {
entry:
  %operation = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 0
  %0 = load i32, i32* %operation, align 8, !tbaa !12
  switch i32 %0, label %if.end52 [
    i32 0, label %return
    i32 2048, label %land.lhs.true
    i32 16, label %land.lhs.true18
    i32 128, label %land.lhs.true18
    i32 32, label %land.lhs.true18
    i32 256, label %land.lhs.true18
    i32 64, label %land.lhs.true18
    i32 512, label %land.lhs.true28
    i32 1024, label %land.lhs.true28
    i32 2, label %land.lhs.true38
    i32 4, label %land.lhs.true38
    i32 4096, label %land.lhs.true47
    i32 8192, label %land.lhs.true47
  ]

land.lhs.true:                                    ; preds = %entry
  %algctx = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 5, i32 0, i32 1
  %1 = load i8*, i8** %algctx, align 8, !tbaa !16
  %cmp3.not = icmp eq i8* %1, null
  br i1 %cmp3.not, label %if.end52, label %return

land.lhs.true18:                                  ; preds = %entry, %entry, %entry, %entry, %entry
  %2 = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 5, i32 0, i32 1
  %3 = load i8*, i8** %2, align 8, !tbaa !16
  %cmp21.not = icmp eq i8* %3, null
  br i1 %cmp21.not, label %if.end52, label %return

land.lhs.true28:                                  ; preds = %entry, %entry
  %4 = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 5, i32 0, i32 1
  %5 = load i8*, i8** %4, align 8, !tbaa !16
  %cmp31.not = icmp eq i8* %5, null
  br i1 %cmp31.not, label %if.end52, label %return

land.lhs.true38:                                  ; preds = %entry, %entry
  %op39 = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 5
  %genctx = bitcast %union.anon* %op39 to i8**
  %6 = load i8*, i8** %genctx, align 8, !tbaa !16
  %cmp40.not = icmp eq i8* %6, null
  br i1 %cmp40.not, label %if.end52, label %return

land.lhs.true47:                                  ; preds = %entry, %entry
  %7 = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 5, i32 0, i32 1
  %8 = load i8*, i8** %7, align 8, !tbaa !16
  %cmp50.not = icmp eq i8* %8, null
  br i1 %cmp50.not, label %if.end52, label %return

if.end52:                                         ; preds = %land.lhs.true38, %land.lhs.true28, %land.lhs.true18, %entry, %land.lhs.true, %land.lhs.true47
  br label %return

return:                                           ; preds = %entry, %land.lhs.true, %land.lhs.true18, %land.lhs.true28, %land.lhs.true38, %land.lhs.true47, %if.end52
  %retval.0 = phi i32 [ 1, %if.end52 ], [ %0, %entry ], [ 2, %land.lhs.true47 ], [ 2, %land.lhs.true38 ], [ 2, %land.lhs.true28 ], [ 2, %land.lhs.true18 ], [ 2, %land.lhs.true ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_from_name(%struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %name, i8* noundef %propquery) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc %struct.evp_pkey_ctx_st* @int_ctx_new(%struct.ossl_lib_ctx_st* noundef %libctx, %struct.evp_pkey_st* noundef null, %struct.engine_st* noundef null, i8* noundef %name, i8* noundef %propquery, i32 noundef -1) #13
  ret %struct.evp_pkey_ctx_st* %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.evp_pkey_ctx_st* @int_ctx_new(%struct.ossl_lib_ctx_st* noundef %libctx, %struct.evp_pkey_st* noundef %pkey, %struct.engine_st* noundef %e, i8* noundef %keytype, i8* noundef %propquery, i32 noundef %id) unnamed_addr #0 {
entry:
  %cmp = icmp eq i32 %id, -1
  br i1 %cmp, label %if.then, label %if.end22

if.then:                                          ; preds = %entry
  %cmp1.not = icmp eq %struct.evp_pkey_st* %pkey, null
  br i1 %cmp1.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then
  %keymgmt2 = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 13
  %0 = load %struct.evp_keymgmt_st*, %struct.evp_keymgmt_st** %keymgmt2, align 8, !tbaa !17
  %cmp3.not = icmp eq %struct.evp_keymgmt_st* %0, null
  br i1 %cmp3.not, label %if.then4, label %if.then6

if.then4:                                         ; preds = %land.lhs.true
  %type = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 0
  %1 = load i32, i32* %type, align 8, !tbaa !21
  br label %if.end16

if.then6:                                         ; preds = %land.lhs.true
  %call = tail call i8* @EVP_KEYMGMT_get0_name(%struct.evp_keymgmt_st* noundef nonnull %0) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %if.then6
  %keytype.addr.0 = phi i8* [ %call, %if.then6 ], [ %keytype, %if.then ]
  %cmp8.not = icmp eq i8* %keytype.addr.0, null
  br i1 %cmp8.not, label %if.then18, label %if.then9

if.then9:                                         ; preds = %if.end
  %call10 = tail call i32 @evp_pkey_name2type(i8* noundef nonnull %keytype.addr.0) #14
  %cmp11 = icmp eq i32 %call10, 0
  br i1 %cmp11, label %if.then18, label %if.end16

if.end16:                                         ; preds = %if.then9, %if.then4
  %keytype.addr.1 = phi i8* [ %keytype.addr.0, %if.then9 ], [ %keytype, %if.then4 ]
  %id.addr.0 = phi i32 [ %call10, %if.then9 ], [ %1, %if.then4 ]
  %cmp17 = icmp eq i32 %id.addr.0, -1
  br i1 %cmp17, label %if.then18, label %if.end22

if.then18:                                        ; preds = %if.then9, %if.end, %if.end16
  %keytype.addr.1250 = phi i8* [ %keytype.addr.1, %if.end16 ], [ null, %if.end ], [ %keytype.addr.0, %if.then9 ]
  %cmp19.not = icmp eq %struct.engine_st* %e, null
  br i1 %cmp19.not, label %common, label %if.then20

if.then20:                                        ; preds = %if.then18
  tail call void @ERR_new() #14
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 214, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.int_ctx_new, i64 0, i64 0)) #14
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 156, i8* noundef null) #14
  br label %cleanup156

if.end22:                                         ; preds = %entry, %if.end16
  %id.addr.0260 = phi i32 [ %id.addr.0, %if.end16 ], [ %id, %entry ]
  %keytype.addr.1259 = phi i8* [ %keytype.addr.1, %if.end16 ], [ %keytype, %entry ]
  %cmp23.not = icmp eq %struct.engine_st* %e, null
  br i1 %cmp23.not, label %land.lhs.true27, label %if.then41

land.lhs.true27:                                  ; preds = %if.end22
  %cmp28 = icmp eq %struct.evp_pkey_st* %pkey, null
  br i1 %cmp28, label %if.end32.thread335, label %lor.lhs.false

if.end32.thread335:                               ; preds = %land.lhs.true27
  %call31336 = tail call i8* @OBJ_nid2sn(i32 noundef %id.addr.0260) #14
  br label %if.end47

lor.lhs.false:                                    ; preds = %land.lhs.true27
  %foreign = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 11
  %bf.load = load i8, i8* %foreign, align 4
  %bf.clear = and i8 %bf.load, 1
  %cmp29 = icmp eq i8 %bf.clear, 0
  br i1 %cmp29, label %if.end32, label %if.then36

if.end32:                                         ; preds = %lor.lhs.false
  %call31 = tail call i8* @OBJ_nid2sn(i32 noundef %id.addr.0260) #14
  br label %if.then36

if.then36:                                        ; preds = %lor.lhs.false, %if.end32
  %keytype.addr.3330 = phi i8* [ %call31, %if.end32 ], [ %keytype.addr.1259, %lor.lhs.false ]
  %pmeth_engine = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 4
  %2 = load %struct.engine_st*, %struct.engine_st** %pmeth_engine, align 8, !tbaa !22
  %cmp37.not = icmp eq %struct.engine_st* %2, null
  br i1 %cmp37.not, label %if.end39, label %if.then41

if.end39:                                         ; preds = %if.then36
  %engine = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 3
  %3 = load %struct.engine_st*, %struct.engine_st** %engine, align 8, !tbaa !23
  %cmp40.not = icmp eq %struct.engine_st* %3, null
  br i1 %cmp40.not, label %if.end47, label %if.then41

if.then41:                                        ; preds = %if.end22, %if.then36, %if.end39
  %e.addr.0278 = phi %struct.engine_st* [ %3, %if.end39 ], [ %2, %if.then36 ], [ %e, %if.end22 ]
  %keytype.addr.3267277 = phi i8* [ %keytype.addr.3330, %if.end39 ], [ %keytype.addr.3330, %if.then36 ], [ null, %if.end22 ]
  %call42 = tail call i32 @ENGINE_init(%struct.engine_st* noundef nonnull %e.addr.0278) #14
  %tobool.not = icmp eq i32 %call42, 0
  br i1 %tobool.not, label %if.then43, label %common.thread

if.then43:                                        ; preds = %if.then41
  tail call void @ERR_new() #14
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 241, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.int_ctx_new, i64 0, i64 0)) #14
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 524326, i8* noundef null) #14
  br label %cleanup156

if.end47:                                         ; preds = %if.end32.thread335, %if.end39
  %keytype.addr.3331 = phi i8* [ %keytype.addr.3330, %if.end39 ], [ %call31336, %if.end32.thread335 ]
  %call46 = tail call %struct.engine_st* @ENGINE_get_pkey_meth_engine(i32 noundef %id.addr.0260) #14
  %cmp48.not = icmp eq %struct.engine_st* %call46, null
  br i1 %cmp48.not, label %if.else51, label %common.thread

common.thread:                                    ; preds = %if.end47, %if.then41
  %e.addr.1291 = phi %struct.engine_st* [ %call46, %if.end47 ], [ %e.addr.0278, %if.then41 ]
  %keytype.addr.3267276290 = phi i8* [ %keytype.addr.3331, %if.end47 ], [ %keytype.addr.3267277, %if.then41 ]
  %call50 = tail call %struct.evp_pkey_method_st* @ENGINE_get_pkey_meth(%struct.engine_st* noundef nonnull %e.addr.1291, i32 noundef %id.addr.0260) #14
  br label %if.end91

if.else51:                                        ; preds = %if.end47
  br i1 %cmp28, label %if.else61, label %land.lhs.true53

land.lhs.true53:                                  ; preds = %if.else51
  %foreign54 = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 11
  %bf.load55 = load i8, i8* %foreign54, align 4
  %bf.clear56 = and i8 %bf.load55, 1
  %tobool58.not = icmp eq i8 %bf.clear56, 0
  br i1 %tobool58.not, label %if.else61, label %if.then59

if.then59:                                        ; preds = %land.lhs.true53
  %call60 = tail call %struct.evp_pkey_method_st* @EVP_PKEY_meth_find(i32 noundef %id.addr.0260) #13
  br label %common

if.else61:                                        ; preds = %land.lhs.true53, %if.else51
  %call62 = tail call fastcc %struct.evp_pkey_method_st* @evp_pkey_meth_find_added_by_application(i32 noundef %id.addr.0260) #13
  %phi.cmp = icmp eq %struct.evp_pkey_method_st* %call62, null
  br label %common

common:                                           ; preds = %if.else61, %if.then59, %if.then18
  %cmp17253 = phi i1 [ true, %if.then18 ], [ false, %if.then59 ], [ false, %if.else61 ]
  %id.addr.0251 = phi i32 [ -1, %if.then18 ], [ %id.addr.0260, %if.then59 ], [ %id.addr.0260, %if.else61 ]
  %keytype.addr.4 = phi i8* [ %keytype.addr.1250, %if.then18 ], [ %keytype.addr.3331, %if.then59 ], [ %keytype.addr.3331, %if.else61 ]
  %pmeth.0 = phi %struct.evp_pkey_method_st* [ null, %if.then18 ], [ %call60, %if.then59 ], [ %call62, %if.else61 ]
  %app_pmeth.0 = phi i1 [ true, %if.then18 ], [ true, %if.then59 ], [ %phi.cmp, %if.else61 ]
  %cmp69 = icmp ne i8* %keytype.addr.4, null
  %or.cond162 = select i1 %app_pmeth.0, i1 %cmp69, i1 false
  br i1 %or.cond162, label %if.then70, label %if.end91

if.then70:                                        ; preds = %common
  %call71 = tail call %struct.evp_keymgmt_st* @EVP_KEYMGMT_fetch(%struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef nonnull %keytype.addr.4, i8* noundef %propquery) #14
  %cmp72 = icmp eq %struct.evp_keymgmt_st* %call71, null
  br i1 %cmp72, label %cleanup156, label %if.then76

if.then76:                                        ; preds = %if.then70
  %call77 = tail call fastcc i32 @get_legacy_alg_type_from_keymgmt(%struct.evp_keymgmt_st* noundef nonnull %call71) #13
  %cmp78.not = icmp eq i32 %call77, 0
  %brmerge = or i1 %cmp17253, %cmp78.not
  %id.addr.0.mux = select i1 %cmp78.not, i32 %id.addr.0251, i32 %call77
  br i1 %brmerge, label %if.end91.thread, label %if.else82

if.else82:                                        ; preds = %if.then76
  %cmp83 = icmp eq i32 %id.addr.0251, %call77
  br i1 %cmp83, label %if.end91.thread, label %cleanup

if.end91.thread:                                  ; preds = %if.then76, %if.else82
  %id.addr.2.ph = phi i32 [ %id.addr.0.mux, %if.then76 ], [ %id.addr.0251, %if.else82 ]
  %cmp92312 = icmp eq %struct.evp_pkey_method_st* %pmeth.0, null
  br label %if.else98

cleanup:                                          ; preds = %if.else82
  tail call void @ERR_new() #14
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 292, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.int_ctx_new, i64 0, i64 0)) #14
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 786691, i8* noundef null) #14
  tail call void @EVP_KEYMGMT_free(%struct.evp_keymgmt_st* noundef nonnull %call71) #14
  br label %cleanup156

if.end91:                                         ; preds = %common.thread, %common
  %pmeth.0304 = phi %struct.evp_pkey_method_st* [ %pmeth.0, %common ], [ %call50, %common.thread ]
  %e.addr.2303 = phi %struct.engine_st* [ null, %common ], [ %e.addr.1291, %common.thread ]
  %keytype.addr.4302 = phi i8* [ %keytype.addr.4, %common ], [ %keytype.addr.3267276290, %common.thread ]
  %id.addr.3 = phi i32 [ %id.addr.0251, %common ], [ %id.addr.0260, %common.thread ]
  %cmp92 = icmp eq %struct.evp_pkey_method_st* %pmeth.0304, null
  br i1 %cmp92, label %if.end104.sink.split, label %if.else98

if.else98:                                        ; preds = %if.end91.thread, %if.end91
  %cmp92327 = phi i1 [ %cmp92312, %if.end91.thread ], [ false, %if.end91 ]
  %keymgmt.0324 = phi %struct.evp_keymgmt_st* [ %call71, %if.end91.thread ], [ null, %if.end91 ]
  %id.addr.3322 = phi i32 [ %id.addr.2.ph, %if.end91.thread ], [ %id.addr.3, %if.end91 ]
  %keytype.addr.4302320 = phi i8* [ %keytype.addr.4, %if.end91.thread ], [ %keytype.addr.4302, %if.end91 ]
  %e.addr.2303318 = phi %struct.engine_st* [ null, %if.end91.thread ], [ %e.addr.2303, %if.end91 ]
  %pmeth.0304316 = phi %struct.evp_pkey_method_st* [ %pmeth.0, %if.end91.thread ], [ %pmeth.0304, %if.end91 ]
  %call99 = tail call i8* @CRYPTO_zalloc(i64 noundef 176, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 305) #14
  %4 = bitcast i8* %call99 to %struct.evp_pkey_ctx_st*
  %cmp100 = icmp eq i8* %call99, null
  br i1 %cmp100, label %if.end104.sink.split, label %if.end104

if.end104.sink.split:                             ; preds = %if.else98, %if.end91
  %.sink338 = phi i32 [ 303, %if.end91 ], [ 307, %if.else98 ]
  %.sink = phi i32 [ 156, %if.end91 ], [ 786688, %if.else98 ]
  %cmp92326.ph = phi i1 [ true, %if.end91 ], [ %cmp92327, %if.else98 ]
  %keymgmt.0323.ph = phi %struct.evp_keymgmt_st* [ null, %if.end91 ], [ %keymgmt.0324, %if.else98 ]
  %id.addr.3321.ph = phi i32 [ %id.addr.3, %if.end91 ], [ %id.addr.3322, %if.else98 ]
  %keytype.addr.4302319.ph = phi i8* [ %keytype.addr.4302, %if.end91 ], [ %keytype.addr.4302320, %if.else98 ]
  %e.addr.2303317.ph = phi %struct.engine_st* [ %e.addr.2303, %if.end91 ], [ %e.addr.2303318, %if.else98 ]
  %pmeth.0304315.ph = phi %struct.evp_pkey_method_st* [ null, %if.end91 ], [ %pmeth.0304316, %if.else98 ]
  tail call void @ERR_new() #14
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef %.sink338, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.int_ctx_new, i64 0, i64 0)) #14
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef %.sink, i8* noundef null) #14
  br label %if.end104

if.end104:                                        ; preds = %if.end104.sink.split, %if.else98
  %cmp92326 = phi i1 [ %cmp92327, %if.else98 ], [ %cmp92326.ph, %if.end104.sink.split ]
  %keymgmt.0323 = phi %struct.evp_keymgmt_st* [ %keymgmt.0324, %if.else98 ], [ %keymgmt.0323.ph, %if.end104.sink.split ]
  %id.addr.3321 = phi i32 [ %id.addr.3322, %if.else98 ], [ %id.addr.3321.ph, %if.end104.sink.split ]
  %keytype.addr.4302319 = phi i8* [ %keytype.addr.4302320, %if.else98 ], [ %keytype.addr.4302319.ph, %if.end104.sink.split ]
  %e.addr.2303317 = phi %struct.engine_st* [ %e.addr.2303318, %if.else98 ], [ %e.addr.2303317.ph, %if.end104.sink.split ]
  %pmeth.0304315 = phi %struct.evp_pkey_method_st* [ %pmeth.0304316, %if.else98 ], [ %pmeth.0304315.ph, %if.end104.sink.split ]
  %ret.0 = phi %struct.evp_pkey_ctx_st* [ %4, %if.else98 ], [ null, %if.end104.sink.split ]
  %cmp105 = icmp eq %struct.evp_pkey_ctx_st* %ret.0, null
  %or.cond164 = select i1 %cmp105, i1 true, i1 %cmp92326
  %cmp111 = icmp ne %struct.engine_st* %e.addr.2303317, null
  %or.cond165 = and i1 %cmp111, %or.cond164
  br i1 %or.cond165, label %if.then113, label %if.end115

if.then113:                                       ; preds = %if.end104
  %call114 = tail call i32 @ENGINE_finish(%struct.engine_st* noundef nonnull %e.addr.2303317) #14
  br label %if.end115

if.end115:                                        ; preds = %if.end104, %if.then113
  br i1 %cmp105, label %if.then118, label %if.end119

if.then118:                                       ; preds = %if.end115
  tail call void @EVP_KEYMGMT_free(%struct.evp_keymgmt_st* noundef %keymgmt.0323) #14
  br label %cleanup156

if.end119:                                        ; preds = %if.end115
  %cmp120.not = icmp eq i8* %propquery, null
  br i1 %cmp120.not, label %if.end130, label %if.then122

if.then122:                                       ; preds = %if.end119
  %call123 = tail call i8* @CRYPTO_strdup(i8* noundef nonnull %propquery, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 320) #14
  %propquery124 = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ret.0, i64 0, i32 2
  store i8* %call123, i8** %propquery124, align 8, !tbaa !24
  %cmp126 = icmp eq i8* %call123, null
  br i1 %cmp126, label %if.then128, label %if.end130

if.then128:                                       ; preds = %if.then122
  %5 = bitcast %struct.evp_pkey_ctx_st* %ret.0 to i8*
  tail call void @CRYPTO_free(i8* noundef nonnull %5, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 322) #14
  tail call void @EVP_KEYMGMT_free(%struct.evp_keymgmt_st* noundef %keymgmt.0323) #14
  br label %cleanup156

if.end130:                                        ; preds = %if.then122, %if.end119
  %libctx131 = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ret.0, i64 0, i32 1
  store %struct.ossl_lib_ctx_st* %libctx, %struct.ossl_lib_ctx_st** %libctx131, align 8, !tbaa !25
  %keytype132 = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ret.0, i64 0, i32 3
  store i8* %keytype.addr.4302319, i8** %keytype132, align 8, !tbaa !26
  %keymgmt133 = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ret.0, i64 0, i32 4
  store %struct.evp_keymgmt_st* %keymgmt.0323, %struct.evp_keymgmt_st** %keymgmt133, align 8, !tbaa !27
  %legacy_keytype = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ret.0, i64 0, i32 11
  store i32 %id.addr.3321, i32* %legacy_keytype, align 4, !tbaa !28
  %engine134 = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ret.0, i64 0, i32 13
  store %struct.engine_st* %e.addr.2303317, %struct.engine_st** %engine134, align 8, !tbaa !29
  %pmeth135 = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ret.0, i64 0, i32 12
  store %struct.evp_pkey_method_st* %pmeth.0304315, %struct.evp_pkey_method_st** %pmeth135, align 8, !tbaa !30
  %operation = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ret.0, i64 0, i32 0
  store i32 0, i32* %operation, align 8, !tbaa !12
  %pkey136 = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ret.0, i64 0, i32 14
  store %struct.evp_pkey_st* %pkey, %struct.evp_pkey_st** %pkey136, align 8, !tbaa !31
  %cmp137.not = icmp eq %struct.evp_pkey_st* %pkey, null
  br i1 %cmp137.not, label %if.end141, label %if.then139

if.then139:                                       ; preds = %if.end130
  %call140 = tail call i32 @EVP_PKEY_up_ref(%struct.evp_pkey_st* noundef nonnull %pkey) #14
  br label %if.end141

if.end141:                                        ; preds = %if.then139, %if.end130
  br i1 %cmp92326, label %cleanup156, label %land.lhs.true144

land.lhs.true144:                                 ; preds = %if.end141
  %init = getelementptr inbounds %struct.evp_pkey_method_st, %struct.evp_pkey_method_st* %pmeth.0304315, i64 0, i32 2
  %6 = load i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*)** %init, align 8, !tbaa !32
  %cmp145.not = icmp eq i32 (%struct.evp_pkey_ctx_st*)* %6, null
  br i1 %cmp145.not, label %cleanup156, label %if.then147

if.then147:                                       ; preds = %land.lhs.true144
  %call149 = tail call i32 %6(%struct.evp_pkey_ctx_st* noundef nonnull %ret.0) #14
  %cmp150 = icmp slt i32 %call149, 1
  br i1 %cmp150, label %if.then152, label %cleanup156

if.then152:                                       ; preds = %if.then147
  store %struct.evp_pkey_method_st* null, %struct.evp_pkey_method_st** %pmeth135, align 8, !tbaa !30
  tail call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef nonnull %ret.0) #13
  br label %cleanup156

cleanup156:                                       ; preds = %cleanup, %if.end141, %land.lhs.true144, %if.then147, %if.then70, %if.then152, %if.then128, %if.then118, %if.then43, %if.then20
  %retval.1 = phi %struct.evp_pkey_ctx_st* [ null, %if.then20 ], [ null, %if.then118 ], [ null, %if.then128 ], [ null, %if.then152 ], [ null, %cleanup ], [ null, %if.then43 ], [ null, %if.then70 ], [ %ret.0, %if.then147 ], [ %ret.0, %land.lhs.true144 ], [ %ret.0, %if.end141 ]
  ret %struct.evp_pkey_ctx_st* %retval.1
}

; Function Attrs: noinline nounwind uwtable
define %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_from_pkey(%struct.ossl_lib_ctx_st* noundef %libctx, %struct.evp_pkey_st* noundef %pkey, i8* noundef %propquery) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc %struct.evp_pkey_ctx_st* @int_ctx_new(%struct.ossl_lib_ctx_st* noundef %libctx, %struct.evp_pkey_st* noundef %pkey, %struct.engine_st* noundef null, i8* noundef null, i8* noundef %propquery, i32 noundef -1) #13
  ret %struct.evp_pkey_ctx_st* %call
}

; Function Attrs: noinline nounwind uwtable
define void @evp_pkey_ctx_free_old_ops(%struct.evp_pkey_ctx_st* nocapture noundef %ctx) local_unnamed_addr #0 {
entry:
  %operation = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 0
  %0 = load i32, i32* %operation, align 8, !tbaa !12
  switch i32 %0, label %if.end146 [
    i32 16, label %if.then
    i32 128, label %if.then
    i32 32, label %if.then
    i32 256, label %if.then
    i32 64, label %if.then
    i32 2048, label %if.then34
    i32 4096, label %if.then66
    i32 8192, label %if.then66
    i32 512, label %if.then98
    i32 1024, label %if.then98
    i32 2, label %if.then130
    i32 4, label %if.then130
  ]

if.then:                                          ; preds = %entry, %entry, %entry, %entry, %entry
  %op = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 5
  %1 = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 5, i32 0, i32 1
  %2 = load i8*, i8** %1, align 8, !tbaa !16
  %cmp12.not = icmp eq i8* %2, null
  br i1 %cmp12.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then
  %signature = bitcast %union.anon* %op to %struct.evp_signature_st**
  %3 = load %struct.evp_signature_st*, %struct.evp_signature_st** %signature, align 8, !tbaa !16
  %cmp15.not = icmp eq %struct.evp_signature_st* %3, null
  br i1 %cmp15.not, label %if.end, label %if.then16

if.then16:                                        ; preds = %land.lhs.true
  %freectx = getelementptr inbounds %struct.evp_signature_st, %struct.evp_signature_st* %3, i64 0, i32 21
  %4 = load void (i8*)*, void (i8*)** %freectx, align 8, !tbaa !33
  tail call void %4(i8* noundef nonnull %2) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %if.then16, %land.lhs.true
  %signature25.pre-phi = bitcast %union.anon* %op to %struct.evp_signature_st**
  %5 = load %struct.evp_signature_st*, %struct.evp_signature_st** %signature25.pre-phi, align 8, !tbaa !16
  tail call void @EVP_SIGNATURE_free(%struct.evp_signature_st* noundef %5) #14
  store i8* null, i8** %1, align 8, !tbaa !16
  store %struct.evp_signature_st* null, %struct.evp_signature_st** %signature25.pre-phi, align 8, !tbaa !16
  br label %if.end146

if.then34:                                        ; preds = %entry
  %kex = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 5, i32 0
  %algctx36 = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 5, i32 0, i32 1
  %6 = load i8*, i8** %algctx36, align 8, !tbaa !16
  %cmp37.not = icmp eq i8* %6, null
  br i1 %cmp37.not, label %if.end50, label %land.lhs.true38

land.lhs.true38:                                  ; preds = %if.then34
  %exchange = getelementptr inbounds %struct.anon.0, %struct.anon.0* %kex, i64 0, i32 0
  %7 = load %struct.evp_keyexch_st*, %struct.evp_keyexch_st** %exchange, align 8, !tbaa !16
  %cmp41.not = icmp eq %struct.evp_keyexch_st* %7, null
  br i1 %cmp41.not, label %if.end50, label %if.then42

if.then42:                                        ; preds = %land.lhs.true38
  %freectx46 = getelementptr inbounds %struct.evp_keyexch_st, %struct.evp_keyexch_st* %7, i64 0, i32 10
  %8 = load void (i8*)*, void (i8*)** %freectx46, align 8, !tbaa !35
  tail call void %8(i8* noundef nonnull %6) #14
  br label %if.end50

if.end50:                                         ; preds = %if.then42, %land.lhs.true38, %if.then34
  %exchange53 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %kex, i64 0, i32 0
  %9 = load %struct.evp_keyexch_st*, %struct.evp_keyexch_st** %exchange53, align 8, !tbaa !16
  tail call void @EVP_KEYEXCH_free(%struct.evp_keyexch_st* noundef %9) #14
  store i8* null, i8** %algctx36, align 8, !tbaa !16
  store %struct.evp_keyexch_st* null, %struct.evp_keyexch_st** %exchange53, align 8, !tbaa !16
  br label %if.end146

if.then66:                                        ; preds = %entry, %entry
  %op67 = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 5
  %10 = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 5, i32 0, i32 1
  %11 = load i8*, i8** %10, align 8, !tbaa !16
  %cmp69.not = icmp eq i8* %11, null
  br i1 %cmp69.not, label %if.end82, label %land.lhs.true70

land.lhs.true70:                                  ; preds = %if.then66
  %kem = bitcast %union.anon* %op67 to %struct.evp_kem_st**
  %12 = load %struct.evp_kem_st*, %struct.evp_kem_st** %kem, align 8, !tbaa !16
  %cmp73.not = icmp eq %struct.evp_kem_st* %12, null
  br i1 %cmp73.not, label %if.end82, label %if.then74

if.then74:                                        ; preds = %land.lhs.true70
  %freectx78 = getelementptr inbounds %struct.evp_kem_st, %struct.evp_kem_st* %12, i64 0, i32 11
  %13 = load void (i8*)*, void (i8*)** %freectx78, align 8, !tbaa !37
  tail call void %13(i8* noundef nonnull %11) #14
  br label %if.end82

if.end82:                                         ; preds = %if.then66, %if.then74, %land.lhs.true70
  %kem85.pre-phi = bitcast %union.anon* %op67 to %struct.evp_kem_st**
  %14 = load %struct.evp_kem_st*, %struct.evp_kem_st** %kem85.pre-phi, align 8, !tbaa !16
  tail call void @EVP_KEM_free(%struct.evp_kem_st* noundef %14) #14
  store i8* null, i8** %10, align 8, !tbaa !16
  store %struct.evp_kem_st* null, %struct.evp_kem_st** %kem85.pre-phi, align 8, !tbaa !16
  br label %if.end146

if.then98:                                        ; preds = %entry, %entry
  %op99 = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 5
  %15 = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 5, i32 0, i32 1
  %16 = load i8*, i8** %15, align 8, !tbaa !16
  %cmp101.not = icmp eq i8* %16, null
  br i1 %cmp101.not, label %if.end114, label %land.lhs.true102

land.lhs.true102:                                 ; preds = %if.then98
  %cipher = bitcast %union.anon* %op99 to %struct.evp_asym_cipher_st**
  %17 = load %struct.evp_asym_cipher_st*, %struct.evp_asym_cipher_st** %cipher, align 8, !tbaa !16
  %cmp105.not = icmp eq %struct.evp_asym_cipher_st* %17, null
  br i1 %cmp105.not, label %if.end114, label %if.then106

if.then106:                                       ; preds = %land.lhs.true102
  %freectx110 = getelementptr inbounds %struct.evp_asym_cipher_st, %struct.evp_asym_cipher_st* %17, i64 0, i32 11
  %18 = load void (i8*)*, void (i8*)** %freectx110, align 8, !tbaa !39
  tail call void %18(i8* noundef nonnull %16) #14
  br label %if.end114

if.end114:                                        ; preds = %if.then98, %if.then106, %land.lhs.true102
  %cipher117.pre-phi = bitcast %union.anon* %op99 to %struct.evp_asym_cipher_st**
  %19 = load %struct.evp_asym_cipher_st*, %struct.evp_asym_cipher_st** %cipher117.pre-phi, align 8, !tbaa !16
  tail call void @EVP_ASYM_CIPHER_free(%struct.evp_asym_cipher_st* noundef %19) #14
  store i8* null, i8** %15, align 8, !tbaa !16
  store %struct.evp_asym_cipher_st* null, %struct.evp_asym_cipher_st** %cipher117.pre-phi, align 8, !tbaa !16
  br label %if.end146

if.then130:                                       ; preds = %entry, %entry
  %op131 = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 5
  %genctx = bitcast %union.anon* %op131 to i8**
  %20 = load i8*, i8** %genctx, align 8, !tbaa !16
  %cmp132.not = icmp eq i8* %20, null
  br i1 %cmp132.not, label %if.end146, label %land.lhs.true133

land.lhs.true133:                                 ; preds = %if.then130
  %keymgmt134 = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 4
  %21 = load %struct.evp_keymgmt_st*, %struct.evp_keymgmt_st** %keymgmt134, align 8, !tbaa !27
  %cmp135.not = icmp eq %struct.evp_keymgmt_st* %21, null
  br i1 %cmp135.not, label %if.end146, label %if.then136

if.then136:                                       ; preds = %land.lhs.true133
  tail call void @evp_keymgmt_gen_cleanup(%struct.evp_keymgmt_st* noundef nonnull %21, i8* noundef nonnull %20) #14
  br label %if.end146

if.end146:                                        ; preds = %entry, %if.end50, %if.end114, %if.then130, %land.lhs.true133, %if.then136, %if.end82, %if.end
  ret void
}

declare void @EVP_SIGNATURE_free(%struct.evp_signature_st* noundef) local_unnamed_addr #2

declare void @EVP_KEYEXCH_free(%struct.evp_keyexch_st* noundef) local_unnamed_addr #2

declare void @EVP_KEM_free(%struct.evp_kem_st* noundef) local_unnamed_addr #2

declare void @EVP_ASYM_CIPHER_free(%struct.evp_asym_cipher_st* noundef) local_unnamed_addr #2

declare void @evp_keymgmt_gen_cleanup(%struct.evp_keymgmt_st* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %ctx) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.evp_pkey_ctx_st* %ctx, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %pmeth = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 12
  %0 = load %struct.evp_pkey_method_st*, %struct.evp_pkey_method_st** %pmeth, align 8, !tbaa !30
  %tobool.not = icmp eq %struct.evp_pkey_method_st* %0, null
  br i1 %tobool.not, label %if.end6, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %cleanup = getelementptr inbounds %struct.evp_pkey_method_st, %struct.evp_pkey_method_st* %0, i64 0, i32 4
  %1 = load void (%struct.evp_pkey_ctx_st*)*, void (%struct.evp_pkey_ctx_st*)** %cleanup, align 8, !tbaa !41
  %tobool2.not = icmp eq void (%struct.evp_pkey_ctx_st*)* %1, null
  br i1 %tobool2.not, label %if.end6, label %if.then3

if.then3:                                         ; preds = %land.lhs.true
  tail call void %1(%struct.evp_pkey_ctx_st* noundef nonnull %ctx) #14
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %land.lhs.true, %if.end
  tail call void @evp_pkey_ctx_free_old_ops(%struct.evp_pkey_ctx_st* noundef nonnull %ctx) #13
  tail call fastcc void @evp_pkey_ctx_free_all_cached_data(%struct.evp_pkey_ctx_st* noundef nonnull %ctx) #13
  %keymgmt = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 4
  %2 = load %struct.evp_keymgmt_st*, %struct.evp_keymgmt_st** %keymgmt, align 8, !tbaa !27
  tail call void @EVP_KEYMGMT_free(%struct.evp_keymgmt_st* noundef %2) #14
  %propquery = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 2
  %3 = load i8*, i8** %propquery, align 8, !tbaa !24
  tail call void @CRYPTO_free(i8* noundef %3, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 410) #14
  %pkey = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 14
  %4 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey, align 8, !tbaa !31
  tail call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %4) #14
  %peerkey = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 15
  %5 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %peerkey, align 8, !tbaa !42
  tail call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %5) #14
  %engine = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 13
  %6 = load %struct.engine_st*, %struct.engine_st** %engine, align 8, !tbaa !29
  %call = tail call i32 @ENGINE_finish(%struct.engine_st* noundef %6) #14
  %rsa_pubexp = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 18
  %7 = load %struct.bignum_st*, %struct.bignum_st** %rsa_pubexp, align 8, !tbaa !43
  tail call void @BN_free(%struct.bignum_st* noundef %7) #14
  %8 = bitcast %struct.evp_pkey_ctx_st* %ctx to i8*
  tail call void @CRYPTO_free(i8* noundef nonnull %8, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 417) #14
  br label %return

return:                                           ; preds = %entry, %if.end6
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @evp_pkey_ctx_free_all_cached_data(%struct.evp_pkey_ctx_st* nocapture noundef %ctx) unnamed_addr #0 {
entry:
  tail call fastcc void @evp_pkey_ctx_free_cached_data(%struct.evp_pkey_ctx_st* noundef %ctx, i8* noundef null) #13
  ret void
}

declare void @EVP_KEYMGMT_free(%struct.evp_keymgmt_st* noundef) local_unnamed_addr #2

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare void @EVP_PKEY_free(%struct.evp_pkey_st* noundef) local_unnamed_addr #2

declare i32 @ENGINE_finish(%struct.engine_st* noundef) local_unnamed_addr #2

declare void @BN_free(%struct.bignum_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define void @EVP_PKEY_meth_get0_info(i32* noundef writeonly %ppkey_id, i32* noundef writeonly %pflags, %struct.evp_pkey_method_st* nocapture noundef readonly %meth) local_unnamed_addr #4 {
entry:
  %tobool.not = icmp eq i32* %ppkey_id, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %pkey_id = getelementptr inbounds %struct.evp_pkey_method_st, %struct.evp_pkey_method_st* %meth, i64 0, i32 0
  %0 = load i32, i32* %pkey_id, align 8, !tbaa !4
  store i32 %0, i32* %ppkey_id, align 4, !tbaa !44
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %tobool1.not = icmp eq i32* %pflags, null
  br i1 %tobool1.not, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  %flags = getelementptr inbounds %struct.evp_pkey_method_st, %struct.evp_pkey_method_st* %meth, i64 0, i32 1
  %1 = load i32, i32* %flags, align 4, !tbaa !11
  store i32 %1, i32* %pflags, align 4, !tbaa !44
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  ret void
}

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define void @EVP_PKEY_meth_copy(%struct.evp_pkey_method_st* nocapture noundef %dst, %struct.evp_pkey_method_st* nocapture noundef readonly %src) local_unnamed_addr #5 {
entry:
  %pkey_id1 = getelementptr inbounds %struct.evp_pkey_method_st, %struct.evp_pkey_method_st* %dst, i64 0, i32 0
  %0 = load i32, i32* %pkey_id1, align 8, !tbaa !4
  %flags2 = getelementptr inbounds %struct.evp_pkey_method_st, %struct.evp_pkey_method_st* %dst, i64 0, i32 1
  %1 = load i32, i32* %flags2, align 4, !tbaa !11
  %2 = bitcast %struct.evp_pkey_method_st* %dst to i8*
  %3 = bitcast %struct.evp_pkey_method_st* %src to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(256) %2, i8* noundef nonnull align 8 dereferenceable(256) %3, i64 256, i1 false), !tbaa.struct !45
  store i32 %0, i32* %pkey_id1, align 8, !tbaa !4
  store i32 %1, i32* %flags2, align 4, !tbaa !11
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: noinline nounwind uwtable
define void @EVP_PKEY_meth_free(%struct.evp_pkey_method_st* noundef %pmeth) #0 {
entry:
  %tobool.not = icmp eq %struct.evp_pkey_method_st* %pmeth, null
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %flags = getelementptr inbounds %struct.evp_pkey_method_st, %struct.evp_pkey_method_st* %pmeth, i64 0, i32 1
  %0 = load i32, i32* %flags, align 4, !tbaa !11
  %and = and i32 %0, 1
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %1 = bitcast %struct.evp_pkey_method_st* %pmeth to i8*
  tail call void @CRYPTO_free(i8* noundef nonnull %1, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 446) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void
}

; Function Attrs: noinline nounwind uwtable
define %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new(%struct.evp_pkey_st* noundef %pkey, %struct.engine_st* noundef %e) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc %struct.evp_pkey_ctx_st* @int_ctx_new(%struct.ossl_lib_ctx_st* noundef null, %struct.evp_pkey_st* noundef %pkey, %struct.engine_st* noundef %e, i8* noundef null, i8* noundef null, i32 noundef -1) #13
  ret %struct.evp_pkey_ctx_st* %call
}

; Function Attrs: noinline nounwind uwtable
define %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_id(i32 noundef %id, %struct.engine_st* noundef %e) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc %struct.evp_pkey_ctx_st* @int_ctx_new(%struct.ossl_lib_ctx_st* noundef null, %struct.evp_pkey_st* noundef null, %struct.engine_st* noundef %e, i8* noundef null, i8* noundef null, i32 noundef %id) #13
  ret %struct.evp_pkey_ctx_st* %call
}

; Function Attrs: noinline nounwind uwtable
define %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_dup(%struct.evp_pkey_ctx_st* noundef %pctx) local_unnamed_addr #0 {
entry:
  %tmp_keymgmt = alloca %struct.evp_keymgmt_st*, align 8
  %engine = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %pctx, i64 0, i32 13
  %0 = load %struct.engine_st*, %struct.engine_st** %engine, align 8, !tbaa !29
  %tobool.not = icmp eq %struct.engine_st* %0, null
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call = tail call i32 @ENGINE_init(%struct.engine_st* noundef nonnull %0) #14
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  tail call void @ERR_new() #14
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 466, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.EVP_PKEY_CTX_dup, i64 0, i64 0)) #14
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 524326, i8* noundef null) #14
  br label %cleanup352

if.end:                                           ; preds = %land.lhs.true, %entry
  %call3 = tail call i8* @CRYPTO_zalloc(i64 noundef 176, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 470) #14
  %1 = bitcast i8* %call3 to %struct.evp_pkey_ctx_st*
  %cmp = icmp eq i8* %call3, null
  br i1 %cmp, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  tail call void @ERR_new() #14
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 472, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.EVP_PKEY_CTX_dup, i64 0, i64 0)) #14
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 786688, i8* noundef null) #14
  br label %cleanup352

if.end5:                                          ; preds = %if.end
  %pkey = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %pctx, i64 0, i32 14
  %2 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey, align 8, !tbaa !31
  %cmp6.not = icmp eq %struct.evp_pkey_st* %2, null
  br i1 %cmp6.not, label %if.end10, label %if.then7

if.then7:                                         ; preds = %if.end5
  %call9 = tail call i32 @EVP_PKEY_up_ref(%struct.evp_pkey_st* noundef nonnull %2) #14
  %.pre = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey, align 8, !tbaa !31
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %if.end5
  %3 = phi %struct.evp_pkey_st* [ %.pre, %if.then7 ], [ null, %if.end5 ]
  %pkey12 = getelementptr inbounds i8, i8* %call3, i64 136
  %4 = bitcast i8* %pkey12 to %struct.evp_pkey_st**
  store %struct.evp_pkey_st* %3, %struct.evp_pkey_st** %4, align 8, !tbaa !31
  %operation = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %pctx, i64 0, i32 0
  %5 = load i32, i32* %operation, align 8, !tbaa !12
  %operation13 = bitcast i8* %call3 to i32*
  store i32 %5, i32* %operation13, align 8, !tbaa !12
  %libctx = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %pctx, i64 0, i32 1
  %6 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !25
  %libctx14 = getelementptr inbounds i8, i8* %call3, i64 8
  %7 = bitcast i8* %libctx14 to %struct.ossl_lib_ctx_st**
  store %struct.ossl_lib_ctx_st* %6, %struct.ossl_lib_ctx_st** %7, align 8, !tbaa !25
  %keytype = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %pctx, i64 0, i32 3
  %8 = load i8*, i8** %keytype, align 8, !tbaa !26
  %keytype15 = getelementptr inbounds i8, i8* %call3, i64 24
  %9 = bitcast i8* %keytype15 to i8**
  store i8* %8, i8** %9, align 8, !tbaa !26
  %propquery = getelementptr inbounds i8, i8* %call3, i64 16
  %10 = bitcast i8* %propquery to i8**
  store i8* null, i8** %10, align 8, !tbaa !24
  %propquery16 = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %pctx, i64 0, i32 2
  %11 = load i8*, i8** %propquery16, align 8, !tbaa !24
  %cmp17.not = icmp eq i8* %11, null
  br i1 %cmp17.not, label %if.end26, label %if.then18

if.then18:                                        ; preds = %if.end10
  %call20 = tail call i8* @CRYPTO_strdup(i8* noundef nonnull %11, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 484) #14
  store i8* %call20, i8** %10, align 8, !tbaa !24
  %cmp23 = icmp eq i8* %call20, null
  br i1 %cmp23, label %err, label %if.end26

if.end26:                                         ; preds = %if.then18, %if.end10
  %legacy_keytype = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %pctx, i64 0, i32 11
  %12 = load i32, i32* %legacy_keytype, align 4, !tbaa !28
  %legacy_keytype27 = getelementptr inbounds i8, i8* %call3, i64 116
  %13 = bitcast i8* %legacy_keytype27 to i32*
  store i32 %12, i32* %13, align 4, !tbaa !28
  %14 = load i32, i32* %operation, align 8, !tbaa !12
  switch i32 %14, label %if.end307 [
    i32 2048, label %if.then30
    i32 16, label %if.then101
    i32 128, label %if.then101
    i32 32, label %if.then101
    i32 256, label %if.then101
    i32 64, label %if.then101
    i32 512, label %if.then168
    i32 1024, label %if.then168
    i32 4096, label %if.then235
    i32 8192, label %if.then235
    i32 2, label %err
    i32 4, label %err
  ]

if.then30:                                        ; preds = %if.end26
  %exchange = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %pctx, i64 0, i32 5, i32 0, i32 0
  %15 = load %struct.evp_keyexch_st*, %struct.evp_keyexch_st** %exchange, align 8, !tbaa !16
  %cmp31.not = icmp eq %struct.evp_keyexch_st* %15, null
  br i1 %cmp31.not, label %if.end46, label %if.then32

if.then32:                                        ; preds = %if.then30
  %op36 = getelementptr inbounds i8, i8* %call3, i64 40
  %exchange38 = bitcast i8* %op36 to %struct.evp_keyexch_st**
  store %struct.evp_keyexch_st* %15, %struct.evp_keyexch_st** %exchange38, align 8, !tbaa !16
  %call42 = tail call i32 @EVP_KEYEXCH_up_ref(%struct.evp_keyexch_st* noundef nonnull %15) #14
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %err, label %if.end46

if.end46:                                         ; preds = %if.then32, %if.then30
  %algctx = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %pctx, i64 0, i32 5, i32 0, i32 1
  %16 = load i8*, i8** %algctx, align 8, !tbaa !16
  %cmp49.not = icmp eq i8* %16, null
  br i1 %cmp49.not, label %if.end307, label %if.then50

if.then50:                                        ; preds = %if.end46
  %17 = load %struct.evp_keyexch_st*, %struct.evp_keyexch_st** %exchange, align 8, !tbaa !16
  %cmp54.not = icmp eq %struct.evp_keyexch_st* %17, null
  br i1 %cmp54.not, label %err, label %if.end58

if.end58:                                         ; preds = %if.then50
  %dupctx = getelementptr inbounds %struct.evp_keyexch_st, %struct.evp_keyexch_st* %17, i64 0, i32 11
  %18 = load i8* (i8*)*, i8* (i8*)** %dupctx, align 8, !tbaa !46
  %call65 = tail call i8* %18(i8* noundef nonnull %16) #14
  %algctx68 = getelementptr inbounds i8, i8* %call3, i64 48
  %19 = bitcast i8* %algctx68 to i8**
  store i8* %call65, i8** %19, align 8, !tbaa !16
  %cmp72 = icmp eq i8* %call65, null
  br i1 %cmp72, label %if.then74, label %cleanup352

if.then74:                                        ; preds = %if.end58
  %op66 = getelementptr inbounds i8, i8* %call3, i64 40
  %exchange77 = bitcast i8* %op66 to %struct.evp_keyexch_st**
  %20 = load %struct.evp_keyexch_st*, %struct.evp_keyexch_st** %exchange77, align 8, !tbaa !16
  tail call void @EVP_KEYEXCH_free(%struct.evp_keyexch_st* noundef %20) #14
  store %struct.evp_keyexch_st* null, %struct.evp_keyexch_st** %exchange77, align 8, !tbaa !16
  br label %err

if.then101:                                       ; preds = %if.end26, %if.end26, %if.end26, %if.end26, %if.end26
  %op102 = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %pctx, i64 0, i32 5
  %signature = bitcast %union.anon* %op102 to %struct.evp_signature_st**
  %21 = load %struct.evp_signature_st*, %struct.evp_signature_st** %signature, align 8, !tbaa !16
  %cmp103.not = icmp eq %struct.evp_signature_st* %21, null
  br i1 %cmp103.not, label %if.end119, label %if.then105

if.then105:                                       ; preds = %if.then101
  %op109 = getelementptr inbounds i8, i8* %call3, i64 40
  %signature111 = bitcast i8* %op109 to %struct.evp_signature_st**
  store %struct.evp_signature_st* %21, %struct.evp_signature_st** %signature111, align 8, !tbaa !16
  %call115 = tail call i32 @EVP_SIGNATURE_up_ref(%struct.evp_signature_st* noundef nonnull %21) #14
  %tobool116.not = icmp eq i32 %call115, 0
  br i1 %tobool116.not, label %err, label %if.end119

if.end119:                                        ; preds = %if.then105, %if.then101
  %22 = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %pctx, i64 0, i32 5, i32 0, i32 1
  %23 = load i8*, i8** %22, align 8, !tbaa !16
  %cmp123.not = icmp eq i8* %23, null
  br i1 %cmp123.not, label %if.end307, label %if.then125

if.then125:                                       ; preds = %if.end119
  %24 = load %struct.evp_signature_st*, %struct.evp_signature_st** %signature, align 8, !tbaa !16
  %cmp129.not = icmp eq %struct.evp_signature_st* %24, null
  br i1 %cmp129.not, label %err, label %if.end134

if.end134:                                        ; preds = %if.then125
  %dupctx138 = getelementptr inbounds %struct.evp_signature_st, %struct.evp_signature_st* %24, i64 0, i32 22
  %25 = load i8* (i8*)*, i8* (i8*)** %dupctx138, align 8, !tbaa !47
  %call142 = tail call i8* %25(i8* noundef nonnull %23) #14
  %algctx145 = getelementptr inbounds i8, i8* %call3, i64 48
  %26 = bitcast i8* %algctx145 to i8**
  store i8* %call142, i8** %26, align 8, !tbaa !16
  %cmp149 = icmp eq i8* %call142, null
  br i1 %cmp149, label %if.then151, label %cleanup352

if.then151:                                       ; preds = %if.end134
  %op143 = getelementptr inbounds i8, i8* %call3, i64 40
  %signature154 = bitcast i8* %op143 to %struct.evp_signature_st**
  %27 = load %struct.evp_signature_st*, %struct.evp_signature_st** %signature154, align 8, !tbaa !16
  tail call void @EVP_SIGNATURE_free(%struct.evp_signature_st* noundef %27) #14
  store %struct.evp_signature_st* null, %struct.evp_signature_st** %signature154, align 8, !tbaa !16
  br label %err

if.then168:                                       ; preds = %if.end26, %if.end26
  %op169 = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %pctx, i64 0, i32 5
  %cipher = bitcast %union.anon* %op169 to %struct.evp_asym_cipher_st**
  %28 = load %struct.evp_asym_cipher_st*, %struct.evp_asym_cipher_st** %cipher, align 8, !tbaa !16
  %cmp170.not = icmp eq %struct.evp_asym_cipher_st* %28, null
  br i1 %cmp170.not, label %if.end186, label %if.then172

if.then172:                                       ; preds = %if.then168
  %op176 = getelementptr inbounds i8, i8* %call3, i64 40
  %cipher178 = bitcast i8* %op176 to %struct.evp_asym_cipher_st**
  store %struct.evp_asym_cipher_st* %28, %struct.evp_asym_cipher_st** %cipher178, align 8, !tbaa !16
  %call182 = tail call i32 @EVP_ASYM_CIPHER_up_ref(%struct.evp_asym_cipher_st* noundef nonnull %28) #14
  %tobool183.not = icmp eq i32 %call182, 0
  br i1 %tobool183.not, label %err, label %if.end186

if.end186:                                        ; preds = %if.then172, %if.then168
  %29 = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %pctx, i64 0, i32 5, i32 0, i32 1
  %30 = load i8*, i8** %29, align 8, !tbaa !16
  %cmp190.not = icmp eq i8* %30, null
  br i1 %cmp190.not, label %if.end307, label %if.then192

if.then192:                                       ; preds = %if.end186
  %31 = load %struct.evp_asym_cipher_st*, %struct.evp_asym_cipher_st** %cipher, align 8, !tbaa !16
  %cmp196.not = icmp eq %struct.evp_asym_cipher_st* %31, null
  br i1 %cmp196.not, label %err, label %if.end201

if.end201:                                        ; preds = %if.then192
  %dupctx205 = getelementptr inbounds %struct.evp_asym_cipher_st, %struct.evp_asym_cipher_st* %31, i64 0, i32 12
  %32 = load i8* (i8*)*, i8* (i8*)** %dupctx205, align 8, !tbaa !48
  %call209 = tail call i8* %32(i8* noundef nonnull %30) #14
  %algctx212 = getelementptr inbounds i8, i8* %call3, i64 48
  %33 = bitcast i8* %algctx212 to i8**
  store i8* %call209, i8** %33, align 8, !tbaa !16
  %cmp216 = icmp eq i8* %call209, null
  br i1 %cmp216, label %if.then218, label %cleanup352

if.then218:                                       ; preds = %if.end201
  %op210 = getelementptr inbounds i8, i8* %call3, i64 40
  %cipher221 = bitcast i8* %op210 to %struct.evp_asym_cipher_st**
  %34 = load %struct.evp_asym_cipher_st*, %struct.evp_asym_cipher_st** %cipher221, align 8, !tbaa !16
  tail call void @EVP_ASYM_CIPHER_free(%struct.evp_asym_cipher_st* noundef %34) #14
  store %struct.evp_asym_cipher_st* null, %struct.evp_asym_cipher_st** %cipher221, align 8, !tbaa !16
  br label %err

if.then235:                                       ; preds = %if.end26, %if.end26
  %op236 = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %pctx, i64 0, i32 5
  %kem = bitcast %union.anon* %op236 to %struct.evp_kem_st**
  %35 = load %struct.evp_kem_st*, %struct.evp_kem_st** %kem, align 8, !tbaa !16
  %cmp237.not = icmp eq %struct.evp_kem_st* %35, null
  br i1 %cmp237.not, label %if.end253, label %if.then239

if.then239:                                       ; preds = %if.then235
  %op243 = getelementptr inbounds i8, i8* %call3, i64 40
  %kem245 = bitcast i8* %op243 to %struct.evp_kem_st**
  store %struct.evp_kem_st* %35, %struct.evp_kem_st** %kem245, align 8, !tbaa !16
  %call249 = tail call i32 @EVP_KEM_up_ref(%struct.evp_kem_st* noundef nonnull %35) #14
  %tobool250.not = icmp eq i32 %call249, 0
  br i1 %tobool250.not, label %err, label %if.end253

if.end253:                                        ; preds = %if.then239, %if.then235
  %36 = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %pctx, i64 0, i32 5, i32 0, i32 1
  %37 = load i8*, i8** %36, align 8, !tbaa !16
  %cmp257.not = icmp eq i8* %37, null
  br i1 %cmp257.not, label %if.end307, label %if.then259

if.then259:                                       ; preds = %if.end253
  %38 = load %struct.evp_kem_st*, %struct.evp_kem_st** %kem, align 8, !tbaa !16
  %cmp263.not = icmp eq %struct.evp_kem_st* %38, null
  br i1 %cmp263.not, label %err, label %if.end268

if.end268:                                        ; preds = %if.then259
  %dupctx272 = getelementptr inbounds %struct.evp_kem_st, %struct.evp_kem_st* %38, i64 0, i32 12
  %39 = load i8* (i8*)*, i8* (i8*)** %dupctx272, align 8, !tbaa !49
  %call276 = tail call i8* %39(i8* noundef nonnull %37) #14
  %algctx279 = getelementptr inbounds i8, i8* %call3, i64 48
  %40 = bitcast i8* %algctx279 to i8**
  store i8* %call276, i8** %40, align 8, !tbaa !16
  %cmp283 = icmp eq i8* %call276, null
  br i1 %cmp283, label %if.then285, label %cleanup352

if.then285:                                       ; preds = %if.end268
  %op277 = getelementptr inbounds i8, i8* %call3, i64 40
  %kem288 = bitcast i8* %op277 to %struct.evp_kem_st**
  %41 = load %struct.evp_kem_st*, %struct.evp_kem_st** %kem288, align 8, !tbaa !16
  tail call void @EVP_KEM_free(%struct.evp_kem_st* noundef %41) #14
  store %struct.evp_kem_st* null, %struct.evp_kem_st** %kem288, align 8, !tbaa !16
  br label %err

if.end307:                                        ; preds = %if.end26, %if.end119, %if.end253, %if.end186, %if.end46
  %pmeth = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %pctx, i64 0, i32 12
  %42 = load %struct.evp_pkey_method_st*, %struct.evp_pkey_method_st** %pmeth, align 8, !tbaa !30
  %pmeth308 = getelementptr inbounds i8, i8* %call3, i64 120
  %43 = bitcast i8* %pmeth308 to %struct.evp_pkey_method_st**
  store %struct.evp_pkey_method_st* %42, %struct.evp_pkey_method_st** %43, align 8, !tbaa !30
  %44 = load %struct.engine_st*, %struct.engine_st** %engine, align 8, !tbaa !29
  %engine310 = getelementptr inbounds i8, i8* %call3, i64 128
  %45 = bitcast i8* %engine310 to %struct.engine_st**
  store %struct.engine_st* %44, %struct.engine_st** %45, align 8, !tbaa !29
  %peerkey = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %pctx, i64 0, i32 15
  %46 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %peerkey, align 8, !tbaa !42
  %cmp311.not = icmp eq %struct.evp_pkey_st* %46, null
  br i1 %cmp311.not, label %if.end316, label %if.then313

if.then313:                                       ; preds = %if.end307
  %call315 = tail call i32 @EVP_PKEY_up_ref(%struct.evp_pkey_st* noundef nonnull %46) #14
  %.pre478 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %peerkey, align 8, !tbaa !42
  br label %if.end316

if.end316:                                        ; preds = %if.then313, %if.end307
  %47 = phi %struct.evp_pkey_st* [ %.pre478, %if.then313 ], [ null, %if.end307 ]
  %peerkey318 = getelementptr inbounds i8, i8* %call3, i64 144
  %48 = bitcast i8* %peerkey318 to %struct.evp_pkey_st**
  store %struct.evp_pkey_st* %47, %struct.evp_pkey_st** %48, align 8, !tbaa !42
  %49 = load %struct.evp_pkey_method_st*, %struct.evp_pkey_method_st** %pmeth, align 8, !tbaa !30
  %cmp320 = icmp eq %struct.evp_pkey_method_st* %49, null
  br i1 %cmp320, label %if.then322, label %if.else343

if.then322:                                       ; preds = %if.end316
  %50 = load i32, i32* %operation13, align 8, !tbaa !12
  %cmp324 = icmp eq i32 %50, 0
  br i1 %cmp324, label %if.then326, label %err

if.then326:                                       ; preds = %if.then322
  %51 = bitcast %struct.evp_keymgmt_st** %tmp_keymgmt to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %51) #12
  %keymgmt = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %pctx, i64 0, i32 4
  %52 = load %struct.evp_keymgmt_st*, %struct.evp_keymgmt_st** %keymgmt, align 8, !tbaa !27
  store %struct.evp_keymgmt_st* %52, %struct.evp_keymgmt_st** %tmp_keymgmt, align 8, !tbaa !10
  %53 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey, align 8, !tbaa !31
  %54 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !25
  %55 = load i8*, i8** %propquery16, align 8, !tbaa !24
  %call330 = call i8* @evp_pkey_export_to_provider(%struct.evp_pkey_st* noundef %53, %struct.ossl_lib_ctx_st* noundef %54, %struct.evp_keymgmt_st** noundef nonnull %tmp_keymgmt, i8* noundef %55) #14
  %cmp331 = icmp eq i8* %call330, null
  br i1 %cmp331, label %cleanup, label %if.end334

if.end334:                                        ; preds = %if.then326
  %56 = load %struct.evp_keymgmt_st*, %struct.evp_keymgmt_st** %tmp_keymgmt, align 8, !tbaa !10
  %call335 = call i32 @EVP_KEYMGMT_up_ref(%struct.evp_keymgmt_st* noundef %56) #14
  %tobool336.not = icmp eq i32 %call335, 0
  br i1 %tobool336.not, label %cleanup, label %if.end338

if.end338:                                        ; preds = %if.end334
  %keymgmt339 = getelementptr inbounds i8, i8* %call3, i64 32
  %57 = bitcast i8* %keymgmt339 to %struct.evp_keymgmt_st**
  %58 = load %struct.evp_keymgmt_st*, %struct.evp_keymgmt_st** %57, align 8, !tbaa !27
  call void @EVP_KEYMGMT_free(%struct.evp_keymgmt_st* noundef %58) #14
  %59 = load %struct.evp_keymgmt_st*, %struct.evp_keymgmt_st** %tmp_keymgmt, align 8, !tbaa !10
  store %struct.evp_keymgmt_st* %59, %struct.evp_keymgmt_st** %57, align 8, !tbaa !27
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %51) #12
  br label %cleanup352

cleanup:                                          ; preds = %if.end334, %if.then326
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %51) #12
  br label %err

if.else343:                                       ; preds = %if.end316
  %copy = getelementptr inbounds %struct.evp_pkey_method_st, %struct.evp_pkey_method_st* %49, i64 0, i32 3
  %60 = load i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st*)** %copy, align 8, !tbaa !50
  %call345 = tail call i32 %60(%struct.evp_pkey_ctx_st* noundef nonnull %1, %struct.evp_pkey_ctx_st* noundef nonnull %pctx) #14
  %cmp346 = icmp sgt i32 %call345, 0
  br i1 %cmp346, label %cleanup352, label %err

err:                                              ; preds = %cleanup, %if.end26, %if.end26, %if.then322, %if.else343, %if.then259, %if.then239, %if.then192, %if.then172, %if.then125, %if.then105, %if.then50, %if.then32, %if.then18, %if.then285, %if.then218, %if.then151, %if.then74
  %pmeth351 = getelementptr inbounds i8, i8* %call3, i64 120
  %61 = bitcast i8* %pmeth351 to %struct.evp_pkey_method_st**
  store %struct.evp_pkey_method_st* null, %struct.evp_pkey_method_st** %61, align 8, !tbaa !30
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef nonnull %1) #13
  br label %cleanup352

cleanup352:                                       ; preds = %if.else343, %if.end338, %if.end268, %if.end201, %if.end134, %if.end58, %err, %if.then4, %if.then
  %retval.1 = phi %struct.evp_pkey_ctx_st* [ null, %if.then4 ], [ null, %err ], [ null, %if.then ], [ %1, %if.end58 ], [ %1, %if.end134 ], [ %1, %if.end201 ], [ %1, %if.end268 ], [ %1, %if.end338 ], [ %1, %if.else343 ]
  ret %struct.evp_pkey_ctx_st* %retval.1
}

declare i32 @ENGINE_init(%struct.engine_st* noundef) local_unnamed_addr #2

declare i32 @EVP_PKEY_up_ref(%struct.evp_pkey_st* noundef) local_unnamed_addr #2

declare i8* @CRYPTO_strdup(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @EVP_KEYEXCH_up_ref(%struct.evp_keyexch_st* noundef) local_unnamed_addr #2

declare i32 @EVP_SIGNATURE_up_ref(%struct.evp_signature_st* noundef) local_unnamed_addr #2

declare i32 @EVP_ASYM_CIPHER_up_ref(%struct.evp_asym_cipher_st* noundef) local_unnamed_addr #2

declare i32 @EVP_KEM_up_ref(%struct.evp_kem_st* noundef) local_unnamed_addr #2

declare i8* @evp_pkey_export_to_provider(%struct.evp_pkey_st* noundef, %struct.ossl_lib_ctx_st* noundef, %struct.evp_keymgmt_st** noundef, i8* noundef) local_unnamed_addr #2

declare i32 @EVP_KEYMGMT_up_ref(%struct.evp_keymgmt_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PKEY_meth_add0(%struct.evp_pkey_method_st* noundef %pmeth) local_unnamed_addr #0 {
entry:
  %0 = load %struct.stack_st_EVP_PKEY_METHOD*, %struct.stack_st_EVP_PKEY_METHOD** @app_pkey_methods, align 8, !tbaa !10
  %cmp = icmp eq %struct.stack_st_EVP_PKEY_METHOD* %0, null
  br i1 %cmp, label %if.then, label %if.end3

if.then:                                          ; preds = %entry
  %call = tail call fastcc %struct.stack_st_EVP_PKEY_METHOD* @sk_EVP_PKEY_METHOD_new() #13
  store %struct.stack_st_EVP_PKEY_METHOD* %call, %struct.stack_st_EVP_PKEY_METHOD** @app_pkey_methods, align 8, !tbaa !10
  %cmp1 = icmp eq %struct.stack_st_EVP_PKEY_METHOD* %call, null
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.then
  tail call void @ERR_new() #14
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 605, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.EVP_PKEY_meth_add0, i64 0, i64 0)) #14
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 786688, i8* noundef null) #14
  br label %return

if.end3:                                          ; preds = %if.then, %entry
  %1 = phi %struct.stack_st_EVP_PKEY_METHOD* [ %call, %if.then ], [ %0, %entry ]
  %call4 = tail call fastcc i32 @sk_EVP_PKEY_METHOD_push(%struct.stack_st_EVP_PKEY_METHOD* noundef nonnull %1, %struct.evp_pkey_method_st* noundef %pmeth) #13
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end3
  tail call void @ERR_new() #14
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 610, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.EVP_PKEY_meth_add0, i64 0, i64 0)) #14
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 786688, i8* noundef null) #14
  br label %return

if.end6:                                          ; preds = %if.end3
  %2 = load %struct.stack_st_EVP_PKEY_METHOD*, %struct.stack_st_EVP_PKEY_METHOD** @app_pkey_methods, align 8, !tbaa !10
  tail call fastcc void @sk_EVP_PKEY_METHOD_sort(%struct.stack_st_EVP_PKEY_METHOD* noundef %2) #13
  br label %return

return:                                           ; preds = %if.end6, %if.then5, %if.then2
  %retval.0 = phi i32 [ 0, %if.then2 ], [ 1, %if.end6 ], [ 0, %if.then5 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.stack_st_EVP_PKEY_METHOD* @sk_EVP_PKEY_METHOD_new() unnamed_addr #0 {
entry:
  %call = tail call %struct.stack_st* @OPENSSL_sk_new(i32 (i8*, i8*)* noundef bitcast (i32 (%struct.evp_pkey_method_st**, %struct.evp_pkey_method_st**)* @pmeth_cmp to i32 (i8*, i8*)*)) #14
  %0 = bitcast %struct.stack_st* %call to %struct.stack_st_EVP_PKEY_METHOD*
  ret %struct.stack_st_EVP_PKEY_METHOD* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal i32 @pmeth_cmp(%struct.evp_pkey_method_st** nocapture noundef readonly %a, %struct.evp_pkey_method_st** nocapture noundef readonly %b) #3 {
entry:
  %0 = load %struct.evp_pkey_method_st*, %struct.evp_pkey_method_st** %a, align 8, !tbaa !10
  %pkey_id = getelementptr inbounds %struct.evp_pkey_method_st, %struct.evp_pkey_method_st* %0, i64 0, i32 0
  %1 = load i32, i32* %pkey_id, align 8, !tbaa !4
  %2 = load %struct.evp_pkey_method_st*, %struct.evp_pkey_method_st** %b, align 8, !tbaa !10
  %pkey_id1 = getelementptr inbounds %struct.evp_pkey_method_st, %struct.evp_pkey_method_st* %2, i64 0, i32 0
  %3 = load i32, i32* %pkey_id1, align 8, !tbaa !4
  %sub = sub nsw i32 %1, %3
  ret i32 %sub
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @sk_EVP_PKEY_METHOD_push(%struct.stack_st_EVP_PKEY_METHOD* noundef %sk, %struct.evp_pkey_method_st* noundef %ptr) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_EVP_PKEY_METHOD* %sk to %struct.stack_st*
  %1 = bitcast %struct.evp_pkey_method_st* %ptr to i8*
  %call = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %0, i8* noundef %1) #14
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @sk_EVP_PKEY_METHOD_sort(%struct.stack_st_EVP_PKEY_METHOD* noundef %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_EVP_PKEY_METHOD* %sk to %struct.stack_st*
  tail call void @OPENSSL_sk_sort(%struct.stack_st* noundef %0) #14
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @evp_app_cleanup_int() local_unnamed_addr #0 {
entry:
  %0 = load %struct.stack_st_EVP_PKEY_METHOD*, %struct.stack_st_EVP_PKEY_METHOD** @app_pkey_methods, align 8, !tbaa !10
  %cmp.not = icmp eq %struct.stack_st_EVP_PKEY_METHOD* %0, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call fastcc void @sk_EVP_PKEY_METHOD_pop_free(%struct.stack_st_EVP_PKEY_METHOD* noundef nonnull %0) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @sk_EVP_PKEY_METHOD_pop_free(%struct.stack_st_EVP_PKEY_METHOD* noundef %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_EVP_PKEY_METHOD* %sk to %struct.stack_st*
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %0, void (i8*)* noundef bitcast (void (%struct.evp_pkey_method_st*)* @EVP_PKEY_meth_free to void (i8*)*)) #14
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PKEY_meth_remove(%struct.evp_pkey_method_st* noundef %pmeth) local_unnamed_addr #0 {
entry:
  %0 = load %struct.stack_st_EVP_PKEY_METHOD*, %struct.stack_st_EVP_PKEY_METHOD** @app_pkey_methods, align 8, !tbaa !10
  %call = tail call fastcc %struct.evp_pkey_method_st* @sk_EVP_PKEY_METHOD_delete_ptr(%struct.stack_st_EVP_PKEY_METHOD* noundef %0, %struct.evp_pkey_method_st* noundef %pmeth) #13
  %cmp = icmp ne %struct.evp_pkey_method_st* %call, null
  %cond = zext i1 %cmp to i32
  ret i32 %cond
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.evp_pkey_method_st* @sk_EVP_PKEY_METHOD_delete_ptr(%struct.stack_st_EVP_PKEY_METHOD* noundef %sk, %struct.evp_pkey_method_st* noundef %ptr) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_EVP_PKEY_METHOD* %sk to %struct.stack_st*
  %1 = bitcast %struct.evp_pkey_method_st* %ptr to i8*
  %call = tail call i8* @OPENSSL_sk_delete_ptr(%struct.stack_st* noundef %0, i8* noundef %1) #14
  %2 = bitcast i8* %call to %struct.evp_pkey_method_st*
  ret %struct.evp_pkey_method_st* %2
}

; Function Attrs: noinline nounwind uwtable
define i64 @EVP_PKEY_meth_get_count() local_unnamed_addr #0 {
entry:
  %0 = load %struct.stack_st_EVP_PKEY_METHOD*, %struct.stack_st_EVP_PKEY_METHOD** @app_pkey_methods, align 8, !tbaa !10
  %tobool.not = icmp eq %struct.stack_st_EVP_PKEY_METHOD* %0, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call fastcc i32 @sk_EVP_PKEY_METHOD_num(%struct.stack_st_EVP_PKEY_METHOD* noundef nonnull %0) #13
  %conv = sext i32 %call to i64
  %add = add nsw i64 %conv, 10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %rv.0 = phi i64 [ %add, %if.then ], [ 10, %entry ]
  ret i64 %rv.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @sk_EVP_PKEY_METHOD_num(%struct.stack_st_EVP_PKEY_METHOD* noundef %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_EVP_PKEY_METHOD* %sk to %struct.stack_st*
  %call = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %0) #14
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define %struct.evp_pkey_method_st* @EVP_PKEY_meth_get0(i64 noundef %idx) local_unnamed_addr #0 {
entry:
  %cmp = icmp ult i64 %idx, 10
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %arrayidx = getelementptr inbounds [10 x %struct.evp_pkey_method_st* ()*], [10 x %struct.evp_pkey_method_st* ()*]* @standard_methods, i64 0, i64 %idx
  %0 = load %struct.evp_pkey_method_st* ()*, %struct.evp_pkey_method_st* ()** %arrayidx, align 8, !tbaa !10
  %call = tail call %struct.evp_pkey_method_st* %0() #14
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.stack_st_EVP_PKEY_METHOD*, %struct.stack_st_EVP_PKEY_METHOD** @app_pkey_methods, align 8, !tbaa !10
  %cmp1 = icmp eq %struct.stack_st_EVP_PKEY_METHOD* %1, null
  br i1 %cmp1, label %return, label %if.end3

if.end3:                                          ; preds = %if.end
  %sub = add i64 %idx, -10
  %call4 = tail call fastcc i32 @sk_EVP_PKEY_METHOD_num(%struct.stack_st_EVP_PKEY_METHOD* noundef nonnull %1) #13
  %conv = sext i32 %call4 to i64
  %cmp5.not = icmp ult i64 %sub, %conv
  br i1 %cmp5.not, label %if.end8, label %return

if.end8:                                          ; preds = %if.end3
  %2 = load %struct.stack_st_EVP_PKEY_METHOD*, %struct.stack_st_EVP_PKEY_METHOD** @app_pkey_methods, align 8, !tbaa !10
  %conv9 = trunc i64 %sub to i32
  %call10 = tail call fastcc %struct.evp_pkey_method_st* @sk_EVP_PKEY_METHOD_value(%struct.stack_st_EVP_PKEY_METHOD* noundef %2, i32 noundef %conv9) #13
  br label %return

return:                                           ; preds = %if.end3, %if.end, %if.end8, %if.then
  %retval.0 = phi %struct.evp_pkey_method_st* [ %call, %if.then ], [ %call10, %if.end8 ], [ null, %if.end ], [ null, %if.end3 ]
  ret %struct.evp_pkey_method_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.evp_pkey_method_st* @sk_EVP_PKEY_METHOD_value(%struct.stack_st_EVP_PKEY_METHOD* noundef %sk, i32 noundef %idx) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_EVP_PKEY_METHOD* %sk to %struct.stack_st*
  %call = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %0, i32 noundef %idx) #14
  %1 = bitcast i8* %call to %struct.evp_pkey_method_st*
  ret %struct.evp_pkey_method_st* %1
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PKEY_CTX_is_a(%struct.evp_pkey_ctx_st* nocapture noundef readonly %ctx, i8* noundef %keytype) local_unnamed_addr #0 {
entry:
  %keymgmt = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 4
  %0 = load %struct.evp_keymgmt_st*, %struct.evp_keymgmt_st** %keymgmt, align 8, !tbaa !27
  %cmp = icmp eq %struct.evp_keymgmt_st* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %pmeth = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 12
  %1 = load %struct.evp_pkey_method_st*, %struct.evp_pkey_method_st** %pmeth, align 8, !tbaa !30
  %pkey_id = getelementptr inbounds %struct.evp_pkey_method_st, %struct.evp_pkey_method_st* %1, i64 0, i32 0
  %2 = load i32, i32* %pkey_id, align 8, !tbaa !4
  %call = tail call i32 @evp_pkey_name2type(i8* noundef %keytype) #14
  %cmp1 = icmp eq i32 %2, %call
  %conv = zext i1 %cmp1 to i32
  br label %return

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @EVP_KEYMGMT_is_a(%struct.evp_keymgmt_st* noundef nonnull %0, i8* noundef %keytype) #14
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %conv, %if.then ], [ %call3, %if.end ]
  ret i32 %retval.0
}

declare i32 @evp_pkey_name2type(i8* noundef) local_unnamed_addr #2

declare i32 @EVP_KEYMGMT_is_a(%struct.evp_keymgmt_st* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PKEY_CTX_set_params(%struct.evp_pkey_ctx_st* noundef %ctx, %struct.ossl_param_st* noundef %params) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @evp_pkey_ctx_state(%struct.evp_pkey_ctx_st* noundef %ctx) #13
  switch i32 %call, label %return [
    i32 2, label %sw.bb
    i32 0, label %sw.bb110
    i32 1, label %sw.bb110
  ]

sw.bb:                                            ; preds = %entry
  %operation = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 0
  %0 = load i32, i32* %operation, align 8, !tbaa !12
  switch i32 %0, label %return [
    i32 2048, label %land.lhs.true
    i32 16, label %land.lhs.true27
    i32 128, label %land.lhs.true27
    i32 32, label %land.lhs.true27
    i32 256, label %land.lhs.true27
    i32 64, label %land.lhs.true27
    i32 512, label %land.lhs.true51
    i32 1024, label %land.lhs.true51
    i32 2, label %land.lhs.true75
    i32 4, label %land.lhs.true75
    i32 4096, label %land.lhs.true91
    i32 8192, label %land.lhs.true91
  ]

land.lhs.true:                                    ; preds = %sw.bb
  %exchange = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 5, i32 0, i32 0
  %1 = load %struct.evp_keyexch_st*, %struct.evp_keyexch_st** %exchange, align 8, !tbaa !16
  %cmp1.not = icmp eq %struct.evp_keyexch_st* %1, null
  br i1 %cmp1.not, label %return, label %land.lhs.true2

land.lhs.true2:                                   ; preds = %land.lhs.true
  %set_ctx_params = getelementptr inbounds %struct.evp_keyexch_st, %struct.evp_keyexch_st* %1, i64 0, i32 12
  %2 = load i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)** %set_ctx_params, align 8, !tbaa !51
  %cmp6.not = icmp eq i32 (i8*, %struct.ossl_param_st*)* %2, null
  br i1 %cmp6.not, label %return, label %if.then

if.then:                                          ; preds = %land.lhs.true2
  %algctx = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 5, i32 0, i32 1
  %3 = load i8*, i8** %algctx, align 8, !tbaa !16
  %call13 = tail call i32 %2(i8* noundef %3, %struct.ossl_param_st* noundef %params) #14
  br label %return

land.lhs.true27:                                  ; preds = %sw.bb, %sw.bb, %sw.bb, %sw.bb, %sw.bb
  %op28 = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 5
  %signature = bitcast %union.anon* %op28 to %struct.evp_signature_st**
  %4 = load %struct.evp_signature_st*, %struct.evp_signature_st** %signature, align 8, !tbaa !16
  %cmp29.not = icmp eq %struct.evp_signature_st* %4, null
  br i1 %cmp29.not, label %return, label %land.lhs.true30

land.lhs.true30:                                  ; preds = %land.lhs.true27
  %set_ctx_params34 = getelementptr inbounds %struct.evp_signature_st, %struct.evp_signature_st* %4, i64 0, i32 25
  %5 = load i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)** %set_ctx_params34, align 8, !tbaa !52
  %cmp35.not = icmp eq i32 (i8*, %struct.ossl_param_st*)* %5, null
  br i1 %cmp35.not, label %return, label %if.then36

if.then36:                                        ; preds = %land.lhs.true30
  %6 = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 5, i32 0, i32 1
  %7 = load i8*, i8** %6, align 8, !tbaa !16
  %call44 = tail call i32 %5(i8* noundef %7, %struct.ossl_param_st* noundef %params) #14
  br label %return

land.lhs.true51:                                  ; preds = %sw.bb, %sw.bb
  %op52 = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 5
  %cipher = bitcast %union.anon* %op52 to %struct.evp_asym_cipher_st**
  %8 = load %struct.evp_asym_cipher_st*, %struct.evp_asym_cipher_st** %cipher, align 8, !tbaa !16
  %cmp53.not = icmp eq %struct.evp_asym_cipher_st* %8, null
  br i1 %cmp53.not, label %return, label %land.lhs.true54

land.lhs.true54:                                  ; preds = %land.lhs.true51
  %set_ctx_params58 = getelementptr inbounds %struct.evp_asym_cipher_st, %struct.evp_asym_cipher_st* %8, i64 0, i32 15
  %9 = load i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)** %set_ctx_params58, align 8, !tbaa !53
  %cmp59.not = icmp eq i32 (i8*, %struct.ossl_param_st*)* %9, null
  br i1 %cmp59.not, label %return, label %if.then60

if.then60:                                        ; preds = %land.lhs.true54
  %10 = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 5, i32 0, i32 1
  %11 = load i8*, i8** %10, align 8, !tbaa !16
  %call68 = tail call i32 %9(i8* noundef %11, %struct.ossl_param_st* noundef %params) #14
  br label %return

land.lhs.true75:                                  ; preds = %sw.bb, %sw.bb
  %keymgmt = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 4
  %12 = load %struct.evp_keymgmt_st*, %struct.evp_keymgmt_st** %keymgmt, align 8, !tbaa !27
  %cmp76.not = icmp eq %struct.evp_keymgmt_st* %12, null
  br i1 %cmp76.not, label %return, label %land.lhs.true77

land.lhs.true77:                                  ; preds = %land.lhs.true75
  %gen_set_params = getelementptr inbounds %struct.evp_keymgmt_st, %struct.evp_keymgmt_st* %12, i64 0, i32 15
  %13 = load i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)** %gen_set_params, align 8, !tbaa !54
  %cmp79.not = icmp eq i32 (i8*, %struct.ossl_param_st*)* %13, null
  br i1 %cmp79.not, label %return, label %if.then80

if.then80:                                        ; preds = %land.lhs.true77
  %op82 = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 5
  %genctx = bitcast %union.anon* %op82 to i8**
  %14 = load i8*, i8** %genctx, align 8, !tbaa !16
  %call84 = tail call i32 @evp_keymgmt_gen_set_params(%struct.evp_keymgmt_st* noundef nonnull %12, i8* noundef %14, %struct.ossl_param_st* noundef %params) #14
  br label %return

land.lhs.true91:                                  ; preds = %sw.bb, %sw.bb
  %op92 = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 5
  %kem = bitcast %union.anon* %op92 to %struct.evp_kem_st**
  %15 = load %struct.evp_kem_st*, %struct.evp_kem_st** %kem, align 8, !tbaa !16
  %cmp93.not = icmp eq %struct.evp_kem_st* %15, null
  br i1 %cmp93.not, label %return, label %land.lhs.true94

land.lhs.true94:                                  ; preds = %land.lhs.true91
  %set_ctx_params98 = getelementptr inbounds %struct.evp_kem_st, %struct.evp_kem_st* %15, i64 0, i32 15
  %16 = load i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)** %set_ctx_params98, align 8, !tbaa !56
  %cmp99.not = icmp eq i32 (i8*, %struct.ossl_param_st*)* %16, null
  br i1 %cmp99.not, label %return, label %if.then100

if.then100:                                       ; preds = %land.lhs.true94
  %17 = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 5, i32 0, i32 1
  %18 = load i8*, i8** %17, align 8, !tbaa !16
  %call108 = tail call i32 %16(i8* noundef %18, %struct.ossl_param_st* noundef %params) #14
  br label %return

sw.bb110:                                         ; preds = %entry, %entry
  %call111 = tail call i32 @evp_pkey_ctx_set_params_to_ctrl(%struct.evp_pkey_ctx_st* noundef %ctx, %struct.ossl_param_st* noundef %params) #14
  br label %return

return:                                           ; preds = %land.lhs.true75, %land.lhs.true77, %land.lhs.true51, %land.lhs.true54, %land.lhs.true27, %land.lhs.true30, %sw.bb, %land.lhs.true2, %land.lhs.true, %entry, %land.lhs.true94, %land.lhs.true91, %sw.bb110, %if.then100, %if.then80, %if.then60, %if.then36, %if.then
  %retval.0 = phi i32 [ %call111, %sw.bb110 ], [ %call13, %if.then ], [ %call44, %if.then36 ], [ %call68, %if.then60 ], [ %call84, %if.then80 ], [ %call108, %if.then100 ], [ 0, %land.lhs.true91 ], [ 0, %land.lhs.true94 ], [ 0, %entry ], [ 0, %land.lhs.true ], [ 0, %land.lhs.true2 ], [ 0, %sw.bb ], [ 0, %land.lhs.true30 ], [ 0, %land.lhs.true27 ], [ 0, %land.lhs.true54 ], [ 0, %land.lhs.true51 ], [ 0, %land.lhs.true77 ], [ 0, %land.lhs.true75 ]
  ret i32 %retval.0
}

declare i32 @evp_keymgmt_gen_set_params(%struct.evp_keymgmt_st* noundef, i8* noundef, %struct.ossl_param_st* noundef) local_unnamed_addr #2

declare i32 @evp_pkey_ctx_set_params_to_ctrl(%struct.evp_pkey_ctx_st* noundef, %struct.ossl_param_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PKEY_CTX_get_params(%struct.evp_pkey_ctx_st* noundef %ctx, %struct.ossl_param_st* noundef %params) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @evp_pkey_ctx_state(%struct.evp_pkey_ctx_st* noundef %ctx) #13
  switch i32 %call, label %return [
    i32 2, label %sw.bb
    i32 0, label %sw.bb94
    i32 1, label %sw.bb94
  ]

sw.bb:                                            ; preds = %entry
  %operation = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 0
  %0 = load i32, i32* %operation, align 8, !tbaa !12
  switch i32 %0, label %return [
    i32 2048, label %land.lhs.true
    i32 16, label %land.lhs.true27
    i32 128, label %land.lhs.true27
    i32 32, label %land.lhs.true27
    i32 256, label %land.lhs.true27
    i32 64, label %land.lhs.true27
    i32 512, label %land.lhs.true51
    i32 1024, label %land.lhs.true51
    i32 4096, label %land.lhs.true75
    i32 8192, label %land.lhs.true75
  ]

land.lhs.true:                                    ; preds = %sw.bb
  %exchange = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 5, i32 0, i32 0
  %1 = load %struct.evp_keyexch_st*, %struct.evp_keyexch_st** %exchange, align 8, !tbaa !16
  %cmp1.not = icmp eq %struct.evp_keyexch_st* %1, null
  br i1 %cmp1.not, label %return, label %land.lhs.true2

land.lhs.true2:                                   ; preds = %land.lhs.true
  %get_ctx_params = getelementptr inbounds %struct.evp_keyexch_st, %struct.evp_keyexch_st* %1, i64 0, i32 14
  %2 = load i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)** %get_ctx_params, align 8, !tbaa !57
  %cmp6.not = icmp eq i32 (i8*, %struct.ossl_param_st*)* %2, null
  br i1 %cmp6.not, label %return, label %if.then

if.then:                                          ; preds = %land.lhs.true2
  %algctx = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 5, i32 0, i32 1
  %3 = load i8*, i8** %algctx, align 8, !tbaa !16
  %call13 = tail call i32 %2(i8* noundef %3, %struct.ossl_param_st* noundef %params) #14
  br label %return

land.lhs.true27:                                  ; preds = %sw.bb, %sw.bb, %sw.bb, %sw.bb, %sw.bb
  %op28 = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 5
  %signature = bitcast %union.anon* %op28 to %struct.evp_signature_st**
  %4 = load %struct.evp_signature_st*, %struct.evp_signature_st** %signature, align 8, !tbaa !16
  %cmp29.not = icmp eq %struct.evp_signature_st* %4, null
  br i1 %cmp29.not, label %return, label %land.lhs.true30

land.lhs.true30:                                  ; preds = %land.lhs.true27
  %get_ctx_params34 = getelementptr inbounds %struct.evp_signature_st, %struct.evp_signature_st* %4, i64 0, i32 23
  %5 = load i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)** %get_ctx_params34, align 8, !tbaa !58
  %cmp35.not = icmp eq i32 (i8*, %struct.ossl_param_st*)* %5, null
  br i1 %cmp35.not, label %return, label %if.then36

if.then36:                                        ; preds = %land.lhs.true30
  %6 = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 5, i32 0, i32 1
  %7 = load i8*, i8** %6, align 8, !tbaa !16
  %call44 = tail call i32 %5(i8* noundef %7, %struct.ossl_param_st* noundef %params) #14
  br label %return

land.lhs.true51:                                  ; preds = %sw.bb, %sw.bb
  %op52 = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 5
  %cipher = bitcast %union.anon* %op52 to %struct.evp_asym_cipher_st**
  %8 = load %struct.evp_asym_cipher_st*, %struct.evp_asym_cipher_st** %cipher, align 8, !tbaa !16
  %cmp53.not = icmp eq %struct.evp_asym_cipher_st* %8, null
  br i1 %cmp53.not, label %return, label %land.lhs.true54

land.lhs.true54:                                  ; preds = %land.lhs.true51
  %get_ctx_params58 = getelementptr inbounds %struct.evp_asym_cipher_st, %struct.evp_asym_cipher_st* %8, i64 0, i32 13
  %9 = load i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)** %get_ctx_params58, align 8, !tbaa !59
  %cmp59.not = icmp eq i32 (i8*, %struct.ossl_param_st*)* %9, null
  br i1 %cmp59.not, label %return, label %if.then60

if.then60:                                        ; preds = %land.lhs.true54
  %10 = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 5, i32 0, i32 1
  %11 = load i8*, i8** %10, align 8, !tbaa !16
  %call68 = tail call i32 %9(i8* noundef %11, %struct.ossl_param_st* noundef %params) #14
  br label %return

land.lhs.true75:                                  ; preds = %sw.bb, %sw.bb
  %op76 = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 5
  %kem = bitcast %union.anon* %op76 to %struct.evp_kem_st**
  %12 = load %struct.evp_kem_st*, %struct.evp_kem_st** %kem, align 8, !tbaa !16
  %cmp77.not = icmp eq %struct.evp_kem_st* %12, null
  br i1 %cmp77.not, label %return, label %land.lhs.true78

land.lhs.true78:                                  ; preds = %land.lhs.true75
  %get_ctx_params82 = getelementptr inbounds %struct.evp_kem_st, %struct.evp_kem_st* %12, i64 0, i32 13
  %13 = load i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)** %get_ctx_params82, align 8, !tbaa !60
  %cmp83.not = icmp eq i32 (i8*, %struct.ossl_param_st*)* %13, null
  br i1 %cmp83.not, label %return, label %if.then84

if.then84:                                        ; preds = %land.lhs.true78
  %14 = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 5, i32 0, i32 1
  %15 = load i8*, i8** %14, align 8, !tbaa !16
  %call92 = tail call i32 %13(i8* noundef %15, %struct.ossl_param_st* noundef %params) #14
  br label %return

sw.bb94:                                          ; preds = %entry, %entry
  %call95 = tail call i32 @evp_pkey_ctx_get_params_to_ctrl(%struct.evp_pkey_ctx_st* noundef %ctx, %struct.ossl_param_st* noundef %params) #14
  br label %return

return:                                           ; preds = %land.lhs.true51, %land.lhs.true54, %land.lhs.true27, %land.lhs.true30, %sw.bb, %land.lhs.true, %land.lhs.true2, %entry, %land.lhs.true78, %land.lhs.true75, %sw.bb94, %if.then84, %if.then60, %if.then36, %if.then
  %retval.0 = phi i32 [ %call95, %sw.bb94 ], [ %call13, %if.then ], [ %call44, %if.then36 ], [ %call68, %if.then60 ], [ %call92, %if.then84 ], [ 0, %land.lhs.true75 ], [ 0, %land.lhs.true78 ], [ 0, %entry ], [ 0, %land.lhs.true2 ], [ 0, %land.lhs.true ], [ 0, %sw.bb ], [ 0, %land.lhs.true30 ], [ 0, %land.lhs.true27 ], [ 0, %land.lhs.true54 ], [ 0, %land.lhs.true51 ]
  ret i32 %retval.0
}

declare i32 @evp_pkey_ctx_get_params_to_ctrl(%struct.evp_pkey_ctx_st* noundef, %struct.ossl_param_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_param_st* @EVP_PKEY_CTX_gettable_params(%struct.evp_pkey_ctx_st* nocapture noundef readonly %ctx) local_unnamed_addr #0 {
entry:
  %operation = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 0
  %0 = load i32, i32* %operation, align 8, !tbaa !12
  switch i32 %0, label %cleanup [
    i32 2048, label %land.lhs.true
    i32 16, label %land.lhs.true31
    i32 128, label %land.lhs.true31
    i32 32, label %land.lhs.true31
    i32 256, label %land.lhs.true31
    i32 64, label %land.lhs.true31
    i32 512, label %land.lhs.true60
    i32 1024, label %land.lhs.true60
    i32 4096, label %land.lhs.true89
    i32 8192, label %land.lhs.true89
  ]

land.lhs.true:                                    ; preds = %entry
  %exchange = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 5, i32 0, i32 0
  %1 = load %struct.evp_keyexch_st*, %struct.evp_keyexch_st** %exchange, align 8, !tbaa !16
  %cmp1.not = icmp eq %struct.evp_keyexch_st* %1, null
  br i1 %cmp1.not, label %cleanup, label %land.lhs.true2

land.lhs.true2:                                   ; preds = %land.lhs.true
  %gettable_ctx_params = getelementptr inbounds %struct.evp_keyexch_st, %struct.evp_keyexch_st* %1, i64 0, i32 15
  %2 = load %struct.ossl_param_st* (i8*, i8*)*, %struct.ossl_param_st* (i8*, i8*)** %gettable_ctx_params, align 8, !tbaa !61
  %cmp6.not = icmp eq %struct.ossl_param_st* (i8*, i8*)* %2, null
  br i1 %cmp6.not, label %cleanup, label %if.then

if.then:                                          ; preds = %land.lhs.true2
  %call = tail call %struct.ossl_provider_st* @EVP_KEYEXCH_get0_provider(%struct.evp_keyexch_st* noundef nonnull %1) #14
  %call10 = tail call i8* @ossl_provider_ctx(%struct.ossl_provider_st* noundef %call) #14
  %3 = load %struct.evp_keyexch_st*, %struct.evp_keyexch_st** %exchange, align 8, !tbaa !16
  %gettable_ctx_params14 = getelementptr inbounds %struct.evp_keyexch_st, %struct.evp_keyexch_st* %3, i64 0, i32 15
  br label %cleanup.sink.split

land.lhs.true31:                                  ; preds = %entry, %entry, %entry, %entry, %entry
  %op32 = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 5
  %signature = bitcast %union.anon* %op32 to %struct.evp_signature_st**
  %4 = load %struct.evp_signature_st*, %struct.evp_signature_st** %signature, align 8, !tbaa !16
  %cmp33.not = icmp eq %struct.evp_signature_st* %4, null
  br i1 %cmp33.not, label %cleanup, label %land.lhs.true34

land.lhs.true34:                                  ; preds = %land.lhs.true31
  %gettable_ctx_params38 = getelementptr inbounds %struct.evp_signature_st, %struct.evp_signature_st* %4, i64 0, i32 24
  %5 = load %struct.ossl_param_st* (i8*, i8*)*, %struct.ossl_param_st* (i8*, i8*)** %gettable_ctx_params38, align 8, !tbaa !62
  %cmp39.not = icmp eq %struct.ossl_param_st* (i8*, i8*)* %5, null
  br i1 %cmp39.not, label %cleanup, label %if.then40

if.then40:                                        ; preds = %land.lhs.true34
  %call44 = tail call %struct.ossl_provider_st* @EVP_SIGNATURE_get0_provider(%struct.evp_signature_st* noundef nonnull %4) #14
  %call45 = tail call i8* @ossl_provider_ctx(%struct.ossl_provider_st* noundef %call44) #14
  %6 = load %struct.evp_signature_st*, %struct.evp_signature_st** %signature, align 8, !tbaa !16
  %gettable_ctx_params49 = getelementptr inbounds %struct.evp_signature_st, %struct.evp_signature_st* %6, i64 0, i32 24
  br label %cleanup.sink.split

land.lhs.true60:                                  ; preds = %entry, %entry
  %op61 = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 5
  %cipher = bitcast %union.anon* %op61 to %struct.evp_asym_cipher_st**
  %7 = load %struct.evp_asym_cipher_st*, %struct.evp_asym_cipher_st** %cipher, align 8, !tbaa !16
  %cmp62.not = icmp eq %struct.evp_asym_cipher_st* %7, null
  br i1 %cmp62.not, label %cleanup, label %land.lhs.true63

land.lhs.true63:                                  ; preds = %land.lhs.true60
  %gettable_ctx_params67 = getelementptr inbounds %struct.evp_asym_cipher_st, %struct.evp_asym_cipher_st* %7, i64 0, i32 14
  %8 = load %struct.ossl_param_st* (i8*, i8*)*, %struct.ossl_param_st* (i8*, i8*)** %gettable_ctx_params67, align 8, !tbaa !63
  %cmp68.not = icmp eq %struct.ossl_param_st* (i8*, i8*)* %8, null
  br i1 %cmp68.not, label %cleanup, label %if.then69

if.then69:                                        ; preds = %land.lhs.true63
  %call73 = tail call %struct.ossl_provider_st* @EVP_ASYM_CIPHER_get0_provider(%struct.evp_asym_cipher_st* noundef nonnull %7) #14
  %call74 = tail call i8* @ossl_provider_ctx(%struct.ossl_provider_st* noundef %call73) #14
  %9 = load %struct.evp_asym_cipher_st*, %struct.evp_asym_cipher_st** %cipher, align 8, !tbaa !16
  %gettable_ctx_params78 = getelementptr inbounds %struct.evp_asym_cipher_st, %struct.evp_asym_cipher_st* %9, i64 0, i32 14
  br label %cleanup.sink.split

land.lhs.true89:                                  ; preds = %entry, %entry
  %op90 = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 5
  %kem = bitcast %union.anon* %op90 to %struct.evp_kem_st**
  %10 = load %struct.evp_kem_st*, %struct.evp_kem_st** %kem, align 8, !tbaa !16
  %cmp91.not = icmp eq %struct.evp_kem_st* %10, null
  br i1 %cmp91.not, label %cleanup, label %land.lhs.true92

land.lhs.true92:                                  ; preds = %land.lhs.true89
  %gettable_ctx_params96 = getelementptr inbounds %struct.evp_kem_st, %struct.evp_kem_st* %10, i64 0, i32 14
  %11 = load %struct.ossl_param_st* (i8*, i8*)*, %struct.ossl_param_st* (i8*, i8*)** %gettable_ctx_params96, align 8, !tbaa !64
  %cmp97.not = icmp eq %struct.ossl_param_st* (i8*, i8*)* %11, null
  br i1 %cmp97.not, label %cleanup, label %if.then98

if.then98:                                        ; preds = %land.lhs.true92
  %call102 = tail call %struct.ossl_provider_st* @EVP_KEM_get0_provider(%struct.evp_kem_st* noundef nonnull %10) #14
  %call103 = tail call i8* @ossl_provider_ctx(%struct.ossl_provider_st* noundef %call102) #14
  %12 = load %struct.evp_kem_st*, %struct.evp_kem_st** %kem, align 8, !tbaa !16
  %gettable_ctx_params107 = getelementptr inbounds %struct.evp_kem_st, %struct.evp_kem_st* %12, i64 0, i32 14
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then, %if.then40, %if.then69, %if.then98
  %gettable_ctx_params107.sink = phi %struct.ossl_param_st* (i8*, i8*)** [ %gettable_ctx_params107, %if.then98 ], [ %gettable_ctx_params78, %if.then69 ], [ %gettable_ctx_params49, %if.then40 ], [ %gettable_ctx_params14, %if.then ]
  %call103.sink = phi i8* [ %call103, %if.then98 ], [ %call74, %if.then69 ], [ %call45, %if.then40 ], [ %call10, %if.then ]
  %13 = load %struct.ossl_param_st* (i8*, i8*)*, %struct.ossl_param_st* (i8*, i8*)** %gettable_ctx_params107.sink, align 8, !tbaa !10
  %14 = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 5, i32 0, i32 1
  %15 = load i8*, i8** %14, align 8, !tbaa !16
  %call111 = tail call %struct.ossl_param_st* %13(i8* noundef %15, i8* noundef %call103.sink) #14
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %land.lhs.true60, %land.lhs.true63, %land.lhs.true31, %land.lhs.true34, %entry, %land.lhs.true, %land.lhs.true2, %land.lhs.true89, %land.lhs.true92
  %retval.0 = phi %struct.ossl_param_st* [ null, %land.lhs.true92 ], [ null, %land.lhs.true89 ], [ null, %land.lhs.true2 ], [ null, %land.lhs.true ], [ null, %entry ], [ null, %land.lhs.true34 ], [ null, %land.lhs.true31 ], [ null, %land.lhs.true63 ], [ null, %land.lhs.true60 ], [ %call111, %cleanup.sink.split ]
  ret %struct.ossl_param_st* %retval.0
}

declare i8* @ossl_provider_ctx(%struct.ossl_provider_st* noundef) local_unnamed_addr #2

declare %struct.ossl_provider_st* @EVP_KEYEXCH_get0_provider(%struct.evp_keyexch_st* noundef) local_unnamed_addr #2

declare %struct.ossl_provider_st* @EVP_SIGNATURE_get0_provider(%struct.evp_signature_st* noundef) local_unnamed_addr #2

declare %struct.ossl_provider_st* @EVP_ASYM_CIPHER_get0_provider(%struct.evp_asym_cipher_st* noundef) local_unnamed_addr #2

declare %struct.ossl_provider_st* @EVP_KEM_get0_provider(%struct.evp_kem_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_param_st* @EVP_PKEY_CTX_settable_params(%struct.evp_pkey_ctx_st* nocapture noundef readonly %ctx) local_unnamed_addr #0 {
entry:
  %operation = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 0
  %0 = load i32, i32* %operation, align 8, !tbaa !12
  switch i32 %0, label %cleanup [
    i32 2048, label %land.lhs.true
    i32 16, label %land.lhs.true31
    i32 128, label %land.lhs.true31
    i32 32, label %land.lhs.true31
    i32 256, label %land.lhs.true31
    i32 64, label %land.lhs.true31
    i32 512, label %land.lhs.true60
    i32 1024, label %land.lhs.true60
    i32 2, label %land.lhs.true89
    i32 4, label %land.lhs.true89
    i32 4096, label %land.lhs.true109
    i32 8192, label %land.lhs.true109
  ]

land.lhs.true:                                    ; preds = %entry
  %exchange = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 5, i32 0, i32 0
  %1 = load %struct.evp_keyexch_st*, %struct.evp_keyexch_st** %exchange, align 8, !tbaa !16
  %cmp1.not = icmp eq %struct.evp_keyexch_st* %1, null
  br i1 %cmp1.not, label %cleanup, label %land.lhs.true2

land.lhs.true2:                                   ; preds = %land.lhs.true
  %settable_ctx_params = getelementptr inbounds %struct.evp_keyexch_st, %struct.evp_keyexch_st* %1, i64 0, i32 13
  %2 = load %struct.ossl_param_st* (i8*, i8*)*, %struct.ossl_param_st* (i8*, i8*)** %settable_ctx_params, align 8, !tbaa !65
  %cmp6.not = icmp eq %struct.ossl_param_st* (i8*, i8*)* %2, null
  br i1 %cmp6.not, label %cleanup, label %if.then

if.then:                                          ; preds = %land.lhs.true2
  %call = tail call %struct.ossl_provider_st* @EVP_KEYEXCH_get0_provider(%struct.evp_keyexch_st* noundef nonnull %1) #14
  %call10 = tail call i8* @ossl_provider_ctx(%struct.ossl_provider_st* noundef %call) #14
  %3 = load %struct.evp_keyexch_st*, %struct.evp_keyexch_st** %exchange, align 8, !tbaa !16
  %settable_ctx_params14 = getelementptr inbounds %struct.evp_keyexch_st, %struct.evp_keyexch_st* %3, i64 0, i32 13
  %4 = load %struct.ossl_param_st* (i8*, i8*)*, %struct.ossl_param_st* (i8*, i8*)** %settable_ctx_params14, align 8, !tbaa !65
  %algctx = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 5, i32 0, i32 1
  %5 = load i8*, i8** %algctx, align 8, !tbaa !16
  %call17 = tail call %struct.ossl_param_st* %4(i8* noundef %5, i8* noundef %call10) #14
  br label %cleanup

land.lhs.true31:                                  ; preds = %entry, %entry, %entry, %entry, %entry
  %op32 = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 5
  %signature = bitcast %union.anon* %op32 to %struct.evp_signature_st**
  %6 = load %struct.evp_signature_st*, %struct.evp_signature_st** %signature, align 8, !tbaa !16
  %cmp33.not = icmp eq %struct.evp_signature_st* %6, null
  br i1 %cmp33.not, label %cleanup, label %land.lhs.true34

land.lhs.true34:                                  ; preds = %land.lhs.true31
  %settable_ctx_params38 = getelementptr inbounds %struct.evp_signature_st, %struct.evp_signature_st* %6, i64 0, i32 26
  %7 = load %struct.ossl_param_st* (i8*, i8*)*, %struct.ossl_param_st* (i8*, i8*)** %settable_ctx_params38, align 8, !tbaa !66
  %cmp39.not = icmp eq %struct.ossl_param_st* (i8*, i8*)* %7, null
  br i1 %cmp39.not, label %cleanup, label %if.then40

if.then40:                                        ; preds = %land.lhs.true34
  %call44 = tail call %struct.ossl_provider_st* @EVP_SIGNATURE_get0_provider(%struct.evp_signature_st* noundef nonnull %6) #14
  %call45 = tail call i8* @ossl_provider_ctx(%struct.ossl_provider_st* noundef %call44) #14
  %8 = load %struct.evp_signature_st*, %struct.evp_signature_st** %signature, align 8, !tbaa !16
  %settable_ctx_params49 = getelementptr inbounds %struct.evp_signature_st, %struct.evp_signature_st* %8, i64 0, i32 26
  %9 = load %struct.ossl_param_st* (i8*, i8*)*, %struct.ossl_param_st* (i8*, i8*)** %settable_ctx_params49, align 8, !tbaa !66
  %10 = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 5, i32 0, i32 1
  %11 = load i8*, i8** %10, align 8, !tbaa !16
  %call53 = tail call %struct.ossl_param_st* %9(i8* noundef %11, i8* noundef %call45) #14
  br label %cleanup

land.lhs.true60:                                  ; preds = %entry, %entry
  %op61 = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 5
  %cipher = bitcast %union.anon* %op61 to %struct.evp_asym_cipher_st**
  %12 = load %struct.evp_asym_cipher_st*, %struct.evp_asym_cipher_st** %cipher, align 8, !tbaa !16
  %cmp62.not = icmp eq %struct.evp_asym_cipher_st* %12, null
  br i1 %cmp62.not, label %cleanup, label %land.lhs.true63

land.lhs.true63:                                  ; preds = %land.lhs.true60
  %settable_ctx_params67 = getelementptr inbounds %struct.evp_asym_cipher_st, %struct.evp_asym_cipher_st* %12, i64 0, i32 16
  %13 = load %struct.ossl_param_st* (i8*, i8*)*, %struct.ossl_param_st* (i8*, i8*)** %settable_ctx_params67, align 8, !tbaa !67
  %cmp68.not = icmp eq %struct.ossl_param_st* (i8*, i8*)* %13, null
  br i1 %cmp68.not, label %cleanup, label %if.then69

if.then69:                                        ; preds = %land.lhs.true63
  %call73 = tail call %struct.ossl_provider_st* @EVP_ASYM_CIPHER_get0_provider(%struct.evp_asym_cipher_st* noundef nonnull %12) #14
  %call74 = tail call i8* @ossl_provider_ctx(%struct.ossl_provider_st* noundef %call73) #14
  %14 = load %struct.evp_asym_cipher_st*, %struct.evp_asym_cipher_st** %cipher, align 8, !tbaa !16
  %settable_ctx_params78 = getelementptr inbounds %struct.evp_asym_cipher_st, %struct.evp_asym_cipher_st* %14, i64 0, i32 16
  %15 = load %struct.ossl_param_st* (i8*, i8*)*, %struct.ossl_param_st* (i8*, i8*)** %settable_ctx_params78, align 8, !tbaa !67
  %16 = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 5, i32 0, i32 1
  %17 = load i8*, i8** %16, align 8, !tbaa !16
  %call82 = tail call %struct.ossl_param_st* %15(i8* noundef %17, i8* noundef %call74) #14
  br label %cleanup

land.lhs.true89:                                  ; preds = %entry, %entry
  %keymgmt = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 4
  %18 = load %struct.evp_keymgmt_st*, %struct.evp_keymgmt_st** %keymgmt, align 8, !tbaa !27
  %cmp90.not = icmp eq %struct.evp_keymgmt_st* %18, null
  br i1 %cmp90.not, label %cleanup, label %land.lhs.true91

land.lhs.true91:                                  ; preds = %land.lhs.true89
  %gen_settable_params = getelementptr inbounds %struct.evp_keymgmt_st, %struct.evp_keymgmt_st* %18, i64 0, i32 16
  %19 = load %struct.ossl_param_st* (i8*, i8*)*, %struct.ossl_param_st* (i8*, i8*)** %gen_settable_params, align 8, !tbaa !68
  %cmp93.not = icmp eq %struct.ossl_param_st* (i8*, i8*)* %19, null
  br i1 %cmp93.not, label %cleanup, label %if.then94

if.then94:                                        ; preds = %land.lhs.true91
  %call96 = tail call %struct.ossl_provider_st* @EVP_KEYMGMT_get0_provider(%struct.evp_keymgmt_st* noundef nonnull %18) #14
  %call97 = tail call i8* @ossl_provider_ctx(%struct.ossl_provider_st* noundef %call96) #14
  %20 = load %struct.evp_keymgmt_st*, %struct.evp_keymgmt_st** %keymgmt, align 8, !tbaa !27
  %gen_settable_params99 = getelementptr inbounds %struct.evp_keymgmt_st, %struct.evp_keymgmt_st* %20, i64 0, i32 16
  %21 = load %struct.ossl_param_st* (i8*, i8*)*, %struct.ossl_param_st* (i8*, i8*)** %gen_settable_params99, align 8, !tbaa !68
  %op100 = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 5
  %genctx = bitcast %union.anon* %op100 to i8**
  %22 = load i8*, i8** %genctx, align 8, !tbaa !16
  %call102 = tail call %struct.ossl_param_st* %21(i8* noundef %22, i8* noundef %call97) #14
  br label %cleanup

land.lhs.true109:                                 ; preds = %entry, %entry
  %op110 = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 5
  %kem = bitcast %union.anon* %op110 to %struct.evp_kem_st**
  %23 = load %struct.evp_kem_st*, %struct.evp_kem_st** %kem, align 8, !tbaa !16
  %cmp111.not = icmp eq %struct.evp_kem_st* %23, null
  br i1 %cmp111.not, label %cleanup, label %land.lhs.true112

land.lhs.true112:                                 ; preds = %land.lhs.true109
  %settable_ctx_params116 = getelementptr inbounds %struct.evp_kem_st, %struct.evp_kem_st* %23, i64 0, i32 16
  %24 = load %struct.ossl_param_st* (i8*, i8*)*, %struct.ossl_param_st* (i8*, i8*)** %settable_ctx_params116, align 8, !tbaa !69
  %cmp117.not = icmp eq %struct.ossl_param_st* (i8*, i8*)* %24, null
  br i1 %cmp117.not, label %cleanup, label %if.then118

if.then118:                                       ; preds = %land.lhs.true112
  %call122 = tail call %struct.ossl_provider_st* @EVP_KEM_get0_provider(%struct.evp_kem_st* noundef nonnull %23) #14
  %call123 = tail call i8* @ossl_provider_ctx(%struct.ossl_provider_st* noundef %call122) #14
  %25 = load %struct.evp_kem_st*, %struct.evp_kem_st** %kem, align 8, !tbaa !16
  %settable_ctx_params127 = getelementptr inbounds %struct.evp_kem_st, %struct.evp_kem_st* %25, i64 0, i32 16
  %26 = load %struct.ossl_param_st* (i8*, i8*)*, %struct.ossl_param_st* (i8*, i8*)** %settable_ctx_params127, align 8, !tbaa !69
  %27 = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 5, i32 0, i32 1
  %28 = load i8*, i8** %27, align 8, !tbaa !16
  %call131 = tail call %struct.ossl_param_st* %26(i8* noundef %28, i8* noundef %call123) #14
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true89, %land.lhs.true91, %land.lhs.true60, %land.lhs.true63, %land.lhs.true31, %land.lhs.true34, %entry, %land.lhs.true2, %land.lhs.true, %land.lhs.true109, %land.lhs.true112, %if.then118, %if.then94, %if.then69, %if.then40, %if.then
  %retval.0 = phi %struct.ossl_param_st* [ %call17, %if.then ], [ %call53, %if.then40 ], [ %call82, %if.then69 ], [ %call102, %if.then94 ], [ %call131, %if.then118 ], [ null, %land.lhs.true112 ], [ null, %land.lhs.true109 ], [ null, %land.lhs.true ], [ null, %land.lhs.true2 ], [ null, %entry ], [ null, %land.lhs.true34 ], [ null, %land.lhs.true31 ], [ null, %land.lhs.true63 ], [ null, %land.lhs.true60 ], [ null, %land.lhs.true91 ], [ null, %land.lhs.true89 ]
  ret %struct.ossl_param_st* %retval.0
}

declare %struct.ossl_provider_st* @EVP_KEYMGMT_get0_provider(%struct.evp_keymgmt_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @evp_pkey_ctx_set_params_strict(%struct.evp_pkey_ctx_st* noundef %ctx, %struct.ossl_param_st* noundef %params) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.evp_pkey_ctx_st* %ctx, null
  %cmp1 = icmp eq %struct.ossl_param_st* %params, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %return, label %if.end

if.end:                                           ; preds = %entry
  %keymgmt = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 4
  %0 = load %struct.evp_keymgmt_st*, %struct.evp_keymgmt_st** %keymgmt, align 8, !tbaa !27
  %cmp2 = icmp eq %struct.evp_keymgmt_st* %0, null
  br i1 %cmp2, label %if.end11, label %if.then3

if.then3:                                         ; preds = %if.end
  %call = tail call %struct.ossl_param_st* @EVP_PKEY_CTX_settable_params(%struct.evp_pkey_ctx_st* noundef nonnull %ctx) #13
  %key22 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %params, i64 0, i32 0
  %1 = load i8*, i8** %key22, align 8, !tbaa !70
  %cmp4.not23 = icmp eq i8* %1, null
  br i1 %cmp4.not23, label %if.end11, label %for.body

for.cond:                                         ; preds = %for.body
  %key = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %incdec.ptr, i64 0, i32 0
  %2 = load i8*, i8** %key, align 8, !tbaa !70
  %cmp4.not = icmp eq i8* %2, null
  br i1 %cmp4.not, label %if.end11, label %for.body, !llvm.loop !72

for.body:                                         ; preds = %if.then3, %for.cond
  %3 = phi i8* [ %2, %for.cond ], [ %1, %if.then3 ]
  %p.024 = phi %struct.ossl_param_st* [ %incdec.ptr, %for.cond ], [ %params, %if.then3 ]
  %call6 = tail call %struct.ossl_param_st* @OSSL_PARAM_locate_const(%struct.ossl_param_st* noundef %call, i8* noundef nonnull %3) #14
  %cmp7 = icmp eq %struct.ossl_param_st* %call6, null
  %incdec.ptr = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p.024, i64 1
  br i1 %cmp7, label %return, label %for.cond

if.end11:                                         ; preds = %for.cond, %if.then3, %if.end
  %call12 = tail call i32 @EVP_PKEY_CTX_set_params(%struct.evp_pkey_ctx_st* noundef %ctx, %struct.ossl_param_st* noundef %params) #13
  br label %return

return:                                           ; preds = %for.body, %entry, %if.end11
  %retval.1 = phi i32 [ %call12, %if.end11 ], [ 0, %entry ], [ -2, %for.body ]
  ret i32 %retval.1
}

declare %struct.ossl_param_st* @OSSL_PARAM_locate_const(%struct.ossl_param_st* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @evp_pkey_ctx_get_params_strict(%struct.evp_pkey_ctx_st* noundef %ctx, %struct.ossl_param_st* noundef %params) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.evp_pkey_ctx_st* %ctx, null
  %cmp1 = icmp eq %struct.ossl_param_st* %params, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %return, label %if.end

if.end:                                           ; preds = %entry
  %keymgmt = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 4
  %0 = load %struct.evp_keymgmt_st*, %struct.evp_keymgmt_st** %keymgmt, align 8, !tbaa !27
  %cmp2 = icmp eq %struct.evp_keymgmt_st* %0, null
  br i1 %cmp2, label %if.end11, label %if.then3

if.then3:                                         ; preds = %if.end
  %call = tail call %struct.ossl_param_st* @EVP_PKEY_CTX_gettable_params(%struct.evp_pkey_ctx_st* noundef nonnull %ctx) #13
  %key22 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %params, i64 0, i32 0
  %1 = load i8*, i8** %key22, align 8, !tbaa !70
  %cmp4.not23 = icmp eq i8* %1, null
  br i1 %cmp4.not23, label %if.end11, label %for.body

for.cond:                                         ; preds = %for.body
  %key = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %incdec.ptr, i64 0, i32 0
  %2 = load i8*, i8** %key, align 8, !tbaa !70
  %cmp4.not = icmp eq i8* %2, null
  br i1 %cmp4.not, label %if.end11, label %for.body, !llvm.loop !74

for.body:                                         ; preds = %if.then3, %for.cond
  %3 = phi i8* [ %2, %for.cond ], [ %1, %if.then3 ]
  %p.024 = phi %struct.ossl_param_st* [ %incdec.ptr, %for.cond ], [ %params, %if.then3 ]
  %call6 = tail call %struct.ossl_param_st* @OSSL_PARAM_locate_const(%struct.ossl_param_st* noundef %call, i8* noundef nonnull %3) #14
  %cmp7 = icmp eq %struct.ossl_param_st* %call6, null
  %incdec.ptr = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p.024, i64 1
  br i1 %cmp7, label %return, label %for.cond

if.end11:                                         ; preds = %for.cond, %if.then3, %if.end
  %call12 = tail call i32 @EVP_PKEY_CTX_get_params(%struct.evp_pkey_ctx_st* noundef %ctx, %struct.ossl_param_st* noundef %params) #13
  br label %return

return:                                           ; preds = %for.body, %entry, %if.end11
  %retval.1 = phi i32 [ %call12, %if.end11 ], [ 0, %entry ], [ -2, %for.body ]
  ret i32 %retval.1
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PKEY_CTX_get_signature_md(%struct.evp_pkey_ctx_st* noundef %ctx, %struct.evp_md_st** noundef %md) local_unnamed_addr #0 {
entry:
  %sig_md_params = alloca [2 x %struct.ossl_param_st], align 16
  %name = alloca [80 x i8], align 16
  %tmp19 = alloca %struct.ossl_param_st, align 8
  %0 = bitcast [2 x %struct.ossl_param_st]* %sig_md_params to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %0) #12
  %arraydecay = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %sig_md_params, i64 0, i64 0
  %1 = getelementptr inbounds [80 x i8], [80 x i8]* %name, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %1) #12
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(80) %1, i8 0, i64 80, i1 false)
  %cmp = icmp eq %struct.evp_pkey_ctx_st* %ctx, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %operation = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 0
  %2 = load i32, i32* %operation, align 8, !tbaa !12
  switch i32 %2, label %if.then [
    i32 16, label %if.end
    i32 128, label %if.end
    i32 32, label %if.end
    i32 256, label %if.end
    i32 64, label %if.end
  ]

if.then:                                          ; preds = %lor.lhs.false, %entry
  tail call void @ERR_new() #14
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 897, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.EVP_PKEY_CTX_get_signature_md, i64 0, i64 0)) #14
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 147, i8* noundef null) #14
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false, %lor.lhs.false, %lor.lhs.false, %lor.lhs.false, %lor.lhs.false
  %3 = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 5, i32 0, i32 1
  %4 = load i8*, i8** %3, align 8, !tbaa !16
  %cmp14 = icmp eq i8* %4, null
  br i1 %cmp14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end
  %5 = bitcast %struct.evp_md_st** %md to i8*
  %call = tail call i32 @EVP_PKEY_CTX_ctrl(%struct.evp_pkey_ctx_st* noundef nonnull %ctx, i32 noundef -1, i32 noundef 496, i32 noundef 13, i32 noundef 0, i8* noundef %5) #13
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %incdec.ptr = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %sig_md_params, i64 0, i64 1
  %sig_md_params46 = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %sig_md_params, i64 0, i64 0
  call void @OSSL_PARAM_construct_utf8_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %sig_md_params46, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* noundef nonnull %1, i64 noundef 80) #14
  %6 = bitcast %struct.ossl_param_st* %tmp19 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %6) #12
  call void @OSSL_PARAM_construct_end(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp19) #14
  %7 = bitcast %struct.ossl_param_st* %incdec.ptr to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %7, i8* noundef nonnull align 8 dereferenceable(40) %6, i64 40, i1 false), !tbaa.struct !75
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %6) #12
  %call21 = call i32 @EVP_PKEY_CTX_get_params(%struct.evp_pkey_ctx_st* noundef nonnull %ctx, %struct.ossl_param_st* noundef nonnull %arraydecay) #13
  %tobool.not = icmp eq i32 %call21, 0
  br i1 %tobool.not, label %cleanup, label %if.end23

if.end23:                                         ; preds = %if.end16
  %libctx = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 1
  %8 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !25
  %call25 = call %struct.evp_md_st* @evp_get_digestbyname_ex(%struct.ossl_lib_ctx_st* noundef %8, i8* noundef nonnull %1) #14
  %cmp26 = icmp eq %struct.evp_md_st* %call25, null
  br i1 %cmp26, label %cleanup, label %if.end28

if.end28:                                         ; preds = %if.end23
  store %struct.evp_md_st* %call25, %struct.evp_md_st** %md, align 8, !tbaa !10
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %if.end16, %if.end28, %if.then15, %if.then
  %retval.0 = phi i32 [ -2, %if.then ], [ %call, %if.then15 ], [ 1, %if.end28 ], [ 0, %if.end16 ], [ 0, %if.end23 ]
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %1) #12
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %0) #12
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PKEY_CTX_ctrl(%struct.evp_pkey_ctx_st* noundef %ctx, i32 noundef %keytype, i32 noundef %optype, i32 noundef %cmd, i32 noundef %p1, i8* noundef %p2) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.evp_pkey_ctx_st* %ctx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #14
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 1320, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.EVP_PKEY_CTX_ctrl, i64 0, i64 0)) #14
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 147, i8* noundef null) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @ERR_set_mark() #14
  %conv = sext i32 %p1 to i64
  %call1 = tail call fastcc i32 @evp_pkey_ctx_store_cached_data(%struct.evp_pkey_ctx_st* noundef nonnull %ctx, i32 noundef %keytype, i32 noundef %optype, i32 noundef %cmd, i8* noundef null, i8* noundef %p2, i64 noundef %conv) #13
  %cmp2 = icmp eq i32 %call1, -2
  br i1 %cmp2, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  %call5 = tail call i32 @ERR_pop_to_mark() #14
  br label %if.end13

if.else:                                          ; preds = %if.end
  %call6 = tail call i32 @ERR_clear_last_mark() #14
  %cmp7 = icmp slt i32 %call1, 1
  br i1 %cmp7, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %operation = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 0
  %0 = load i32, i32* %operation, align 8, !tbaa !12
  %cmp9 = icmp eq i32 %0, 0
  br i1 %cmp9, label %cleanup, label %if.end13

if.end13:                                         ; preds = %lor.lhs.false, %if.then4
  %call14 = tail call fastcc i32 @evp_pkey_ctx_ctrl_int(%struct.evp_pkey_ctx_st* noundef nonnull %ctx, i32 noundef %keytype, i32 noundef %optype, i32 noundef %cmd, i32 noundef %p1, i8* noundef %p2) #13
  br label %cleanup

cleanup:                                          ; preds = %if.else, %lor.lhs.false, %if.end13, %if.then
  %retval.0 = phi i32 [ -2, %if.then ], [ %call14, %if.end13 ], [ %call1, %lor.lhs.false ], [ %call1, %if.else ]
  ret i32 %retval.0
}

declare void @OSSL_PARAM_construct_utf8_string(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8, i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare void @OSSL_PARAM_construct_end(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8) local_unnamed_addr #2

declare %struct.evp_md_st* @evp_get_digestbyname_ex(%struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PKEY_CTX_set_signature_md(%struct.evp_pkey_ctx_st* noundef %ctx, %struct.evp_md_st* noundef %md) local_unnamed_addr #0 {
entry:
  %0 = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 5, i32 0, i32 1
  %1 = load i8*, i8** %0, align 8, !tbaa !16
  %cmp = icmp eq i8* %1, null
  %conv = zext i1 %cmp to i32
  %call = tail call fastcc i32 @evp_pkey_ctx_set_md(%struct.evp_pkey_ctx_st* noundef %ctx, %struct.evp_md_st* noundef %md, i32 noundef %conv, i32 noundef 496, i32 noundef 1) #13
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @evp_pkey_ctx_set_md(%struct.evp_pkey_ctx_st* noundef %ctx, %struct.evp_md_st* noundef %md, i32 noundef %fallback, i32 noundef %op, i32 noundef %ctrl) unnamed_addr #0 {
entry:
  %md_params = alloca [2 x %struct.ossl_param_st], align 16
  %tmp8 = alloca %struct.ossl_param_st, align 8
  %0 = bitcast [2 x %struct.ossl_param_st]* %md_params to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %0) #12
  %arraydecay = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %md_params, i64 0, i64 0
  %cmp = icmp eq %struct.evp_pkey_ctx_st* %ctx, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %operation = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 0
  %1 = load i32, i32* %operation, align 8, !tbaa !12
  %and = and i32 %1, %op
  %cmp1 = icmp eq i32 %and, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  tail call void @ERR_new() #14
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 931, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.evp_pkey_ctx_set_md, i64 0, i64 0)) #14
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 147, i8* noundef null) #14
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %tobool.not = icmp eq i32 %fallback, 0
  br i1 %tobool.not, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  %2 = bitcast %struct.evp_md_st* %md to i8*
  %call = tail call i32 @EVP_PKEY_CTX_ctrl(%struct.evp_pkey_ctx_st* noundef nonnull %ctx, i32 noundef -1, i32 noundef %op, i32 noundef %ctrl, i32 noundef 0, i8* noundef %2) #13
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %cmp4 = icmp eq %struct.evp_md_st* %md, null
  br i1 %cmp4, label %if.end7, label %if.else

if.else:                                          ; preds = %if.end3
  %call6 = tail call i8* @EVP_MD_get0_name(%struct.evp_md_st* noundef nonnull %md) #14
  br label %if.end7

if.end7:                                          ; preds = %if.end3, %if.else
  %name.0 = phi i8* [ %call6, %if.else ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.16, i64 0, i64 0), %if.end3 ]
  %incdec.ptr = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %md_params, i64 0, i64 1
  %md_params1 = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %md_params, i64 0, i64 0
  call void @OSSL_PARAM_construct_utf8_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %md_params1, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* noundef %name.0, i64 noundef 0) #14
  %3 = bitcast %struct.ossl_param_st* %tmp8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %3) #12
  call void @OSSL_PARAM_construct_end(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp8) #14
  %4 = bitcast %struct.ossl_param_st* %incdec.ptr to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %4, i8* noundef nonnull align 8 dereferenceable(40) %3, i64 40, i1 false), !tbaa.struct !75
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %3) #12
  %call10 = call i32 @EVP_PKEY_CTX_set_params(%struct.evp_pkey_ctx_st* noundef nonnull %ctx, %struct.ossl_param_st* noundef nonnull %arraydecay) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then2, %if.then
  %retval.0 = phi i32 [ -2, %if.then ], [ %call, %if.then2 ], [ %call10, %if.end7 ]
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %0) #12
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PKEY_CTX_set_tls1_prf_md(%struct.evp_pkey_ctx_st* noundef %ctx, %struct.evp_md_st* noundef %md) local_unnamed_addr #0 {
entry:
  %algctx = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 5, i32 0, i32 1
  %0 = load i8*, i8** %algctx, align 8, !tbaa !16
  %cmp = icmp eq i8* %0, null
  %conv = zext i1 %cmp to i32
  %call = tail call fastcc i32 @evp_pkey_ctx_set_md(%struct.evp_pkey_ctx_st* noundef %ctx, %struct.evp_md_st* noundef %md, i32 noundef %conv, i32 noundef 2048, i32 noundef 4096) #13
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PKEY_CTX_set1_tls1_prf_secret(%struct.evp_pkey_ctx_st* noundef %ctx, i8* noundef %sec, i32 noundef %seclen) local_unnamed_addr #0 {
entry:
  %algctx = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 5, i32 0, i32 1
  %0 = load i8*, i8** %algctx, align 8, !tbaa !16
  %cmp = icmp eq i8* %0, null
  %conv = zext i1 %cmp to i32
  %call = tail call fastcc i32 @evp_pkey_ctx_set1_octet_string(%struct.evp_pkey_ctx_st* noundef %ctx, i32 noundef %conv, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 noundef 2048, i32 noundef 4097, i8* noundef %sec, i32 noundef %seclen) #13
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @evp_pkey_ctx_set1_octet_string(%struct.evp_pkey_ctx_st* noundef %ctx, i32 noundef %fallback, i8* noundef %param, i32 noundef %op, i32 noundef %ctrl, i8* noundef %data, i32 noundef %datalen) unnamed_addr #0 {
entry:
  %octet_string_params = alloca [2 x %struct.ossl_param_st], align 16
  %tmp7 = alloca %struct.ossl_param_st, align 8
  %0 = bitcast [2 x %struct.ossl_param_st]* %octet_string_params to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %0) #12
  %arraydecay = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %octet_string_params, i64 0, i64 0
  %cmp = icmp eq %struct.evp_pkey_ctx_st* %ctx, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %operation = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 0
  %1 = load i32, i32* %operation, align 8, !tbaa !12
  %and = and i32 %1, %op
  %cmp1 = icmp eq i32 %and, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  tail call void @ERR_new() #14
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 978, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.evp_pkey_ctx_set1_octet_string, i64 0, i64 0)) #14
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 147, i8* noundef null) #14
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %tobool.not = icmp eq i32 %fallback, 0
  br i1 %tobool.not, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  %call = tail call i32 @EVP_PKEY_CTX_ctrl(%struct.evp_pkey_ctx_st* noundef nonnull %ctx, i32 noundef -1, i32 noundef %op, i32 noundef %ctrl, i32 noundef %datalen, i8* noundef %data) #13
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %cmp4 = icmp slt i32 %datalen, 0
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end3
  tail call void @ERR_new() #14
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 989, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.evp_pkey_ctx_set1_octet_string, i64 0, i64 0)) #14
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 221, i8* noundef null) #14
  br label %cleanup

if.end6:                                          ; preds = %if.end3
  %incdec.ptr = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %octet_string_params, i64 0, i64 1
  %conv20 = zext i32 %datalen to i64
  %octet_string_params21 = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %octet_string_params, i64 0, i64 0
  call void @OSSL_PARAM_construct_octet_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %octet_string_params21, i8* noundef %param, i8* noundef %data, i64 noundef %conv20) #14
  %2 = bitcast %struct.ossl_param_st* %tmp7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %2) #12
  call void @OSSL_PARAM_construct_end(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp7) #14
  %3 = bitcast %struct.ossl_param_st* %incdec.ptr to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %3, i8* noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false), !tbaa.struct !75
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %2) #12
  %call9 = call i32 @EVP_PKEY_CTX_set_params(%struct.evp_pkey_ctx_st* noundef nonnull %ctx, %struct.ossl_param_st* noundef nonnull %arraydecay) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then5, %if.then2, %if.then
  %retval.0 = phi i32 [ -2, %if.then ], [ %call, %if.then2 ], [ 0, %if.then5 ], [ %call9, %if.end6 ]
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %0) #12
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PKEY_CTX_add1_tls1_prf_seed(%struct.evp_pkey_ctx_st* noundef %ctx, i8* noundef %seed, i32 noundef %seedlen) local_unnamed_addr #0 {
entry:
  %algctx = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 5, i32 0, i32 1
  %0 = load i8*, i8** %algctx, align 8, !tbaa !16
  %cmp = icmp eq i8* %0, null
  %conv = zext i1 %cmp to i32
  %call = tail call fastcc i32 @evp_pkey_ctx_set1_octet_string(%struct.evp_pkey_ctx_st* noundef %ctx, i32 noundef %conv, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 noundef 2048, i32 noundef 4098, i8* noundef %seed, i32 noundef %seedlen) #13
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PKEY_CTX_set_hkdf_md(%struct.evp_pkey_ctx_st* noundef %ctx, %struct.evp_md_st* noundef %md) local_unnamed_addr #0 {
entry:
  %algctx = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 5, i32 0, i32 1
  %0 = load i8*, i8** %algctx, align 8, !tbaa !16
  %cmp = icmp eq i8* %0, null
  %conv = zext i1 %cmp to i32
  %call = tail call fastcc i32 @evp_pkey_ctx_set_md(%struct.evp_pkey_ctx_st* noundef %ctx, %struct.evp_md_st* noundef %md, i32 noundef %conv, i32 noundef 2048, i32 noundef 4099) #13
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PKEY_CTX_set1_hkdf_salt(%struct.evp_pkey_ctx_st* noundef %ctx, i8* noundef %salt, i32 noundef %saltlen) local_unnamed_addr #0 {
entry:
  %algctx = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 5, i32 0, i32 1
  %0 = load i8*, i8** %algctx, align 8, !tbaa !16
  %cmp = icmp eq i8* %0, null
  %conv = zext i1 %cmp to i32
  %call = tail call fastcc i32 @evp_pkey_ctx_set1_octet_string(%struct.evp_pkey_ctx_st* noundef %ctx, i32 noundef %conv, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 noundef 2048, i32 noundef 4100, i8* noundef %salt, i32 noundef %saltlen) #13
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PKEY_CTX_set1_hkdf_key(%struct.evp_pkey_ctx_st* noundef %ctx, i8* noundef %key, i32 noundef %keylen) local_unnamed_addr #0 {
entry:
  %algctx = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 5, i32 0, i32 1
  %0 = load i8*, i8** %algctx, align 8, !tbaa !16
  %cmp = icmp eq i8* %0, null
  %conv = zext i1 %cmp to i32
  %call = tail call fastcc i32 @evp_pkey_ctx_set1_octet_string(%struct.evp_pkey_ctx_st* noundef %ctx, i32 noundef %conv, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 noundef 2048, i32 noundef 4101, i8* noundef %key, i32 noundef %keylen) #13
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PKEY_CTX_add1_hkdf_info(%struct.evp_pkey_ctx_st* noundef %ctx, i8* noundef %info, i32 noundef %infolen) local_unnamed_addr #0 {
entry:
  %algctx = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 5, i32 0, i32 1
  %0 = load i8*, i8** %algctx, align 8, !tbaa !16
  %cmp = icmp eq i8* %0, null
  %conv = zext i1 %cmp to i32
  %call = tail call fastcc i32 @evp_pkey_ctx_set1_octet_string(%struct.evp_pkey_ctx_st* noundef %ctx, i32 noundef %conv, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32 noundef 2048, i32 noundef 4102, i8* noundef %info, i32 noundef %infolen) #13
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PKEY_CTX_set_hkdf_mode(%struct.evp_pkey_ctx_st* noundef %ctx, i32 noundef %mode) local_unnamed_addr #0 {
entry:
  %mode.addr = alloca i32, align 4
  %int_params = alloca [2 x %struct.ossl_param_st], align 16
  %tmp8 = alloca %struct.ossl_param_st, align 8
  store i32 %mode, i32* %mode.addr, align 4, !tbaa !44
  %0 = bitcast [2 x %struct.ossl_param_st]* %int_params to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %0) #12
  %arraydecay = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %int_params, i64 0, i64 0
  %cmp = icmp eq %struct.evp_pkey_ctx_st* %ctx, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %operation = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 0
  %1 = load i32, i32* %operation, align 8, !tbaa !12
  %cmp1 = icmp eq i32 %1, 2048
  br i1 %cmp1, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  tail call void @ERR_new() #14
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 1067, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.EVP_PKEY_CTX_set_hkdf_mode, i64 0, i64 0)) #14
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 147, i8* noundef null) #14
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %algctx = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 5, i32 0, i32 1
  %2 = load i8*, i8** %algctx, align 8, !tbaa !16
  %cmp2 = icmp eq i8* %2, null
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  %call = tail call i32 @EVP_PKEY_CTX_ctrl(%struct.evp_pkey_ctx_st* noundef nonnull %ctx, i32 noundef -1, i32 noundef 2048, i32 noundef 4103, i32 noundef %mode, i8* noundef null) #13
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %cmp5 = icmp slt i32 %mode, 0
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end4
  tail call void @ERR_new() #14
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 1079, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.EVP_PKEY_CTX_set_hkdf_mode, i64 0, i64 0)) #14
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 222, i8* noundef null) #14
  br label %cleanup

if.end7:                                          ; preds = %if.end4
  %incdec.ptr = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %int_params, i64 0, i64 1
  %int_params18 = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %int_params, i64 0, i64 0
  call void @OSSL_PARAM_construct_int(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %int_params18, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32* noundef nonnull %mode.addr) #14
  %3 = bitcast %struct.ossl_param_st* %tmp8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %3) #12
  call void @OSSL_PARAM_construct_end(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp8) #14
  %4 = bitcast %struct.ossl_param_st* %incdec.ptr to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %4, i8* noundef nonnull align 8 dereferenceable(40) %3, i64 40, i1 false), !tbaa.struct !75
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %3) #12
  %call10 = call i32 @EVP_PKEY_CTX_set_params(%struct.evp_pkey_ctx_st* noundef nonnull %ctx, %struct.ossl_param_st* noundef nonnull %arraydecay) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then6, %if.then3, %if.then
  %retval.0 = phi i32 [ -2, %if.then ], [ %call, %if.then3 ], [ 0, %if.then6 ], [ %call10, %if.end7 ]
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %0) #12
  ret i32 %retval.0
}

declare void @OSSL_PARAM_construct_int(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8, i8* noundef, i32* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PKEY_CTX_set1_pbe_pass(%struct.evp_pkey_ctx_st* noundef %ctx, i8* noundef %pass, i32 noundef %passlen) local_unnamed_addr #0 {
entry:
  %algctx = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 5, i32 0, i32 1
  %0 = load i8*, i8** %algctx, align 8, !tbaa !16
  %cmp = icmp eq i8* %0, null
  %conv = zext i1 %cmp to i32
  %call = tail call fastcc i32 @evp_pkey_ctx_set1_octet_string(%struct.evp_pkey_ctx_st* noundef %ctx, i32 noundef %conv, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i32 noundef 2048, i32 noundef 4104, i8* noundef %pass, i32 noundef %passlen) #13
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PKEY_CTX_set1_scrypt_salt(%struct.evp_pkey_ctx_st* noundef %ctx, i8* noundef %salt, i32 noundef %saltlen) local_unnamed_addr #0 {
entry:
  %algctx = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 5, i32 0, i32 1
  %0 = load i8*, i8** %algctx, align 8, !tbaa !16
  %cmp = icmp eq i8* %0, null
  %conv = zext i1 %cmp to i32
  %call = tail call fastcc i32 @evp_pkey_ctx_set1_octet_string(%struct.evp_pkey_ctx_st* noundef %ctx, i32 noundef %conv, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 noundef 2048, i32 noundef 4105, i8* noundef %salt, i32 noundef %saltlen) #13
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PKEY_CTX_set_scrypt_N(%struct.evp_pkey_ctx_st* noundef %ctx, i64 noundef %n) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i32 @evp_pkey_ctx_set_uint64(%struct.evp_pkey_ctx_st* noundef %ctx, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0), i32 noundef 4106, i64 noundef %n) #13
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @evp_pkey_ctx_set_uint64(%struct.evp_pkey_ctx_st* noundef %ctx, i8* noundef %param, i32 noundef %ctrl, i64 noundef %val) unnamed_addr #0 {
entry:
  %val.addr = alloca i64, align 8
  %uint64_params = alloca [2 x %struct.ossl_param_st], align 16
  %tmp6 = alloca %struct.ossl_param_st, align 8
  store i64 %val, i64* %val.addr, align 8, !tbaa !76
  %0 = bitcast [2 x %struct.ossl_param_st]* %uint64_params to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %0) #12
  %arraydecay = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %uint64_params, i64 0, i64 0
  %cmp = icmp eq %struct.evp_pkey_ctx_st* %ctx, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %operation = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 0
  %1 = load i32, i32* %operation, align 8, !tbaa !12
  %cmp1 = icmp eq i32 %1, 2048
  br i1 %cmp1, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  tail call void @ERR_new() #14
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 1115, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.evp_pkey_ctx_set_uint64, i64 0, i64 0)) #14
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 147, i8* noundef null) #14
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %algctx = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 5, i32 0, i32 1
  %2 = load i8*, i8** %algctx, align 8, !tbaa !16
  %cmp3 = icmp eq i8* %2, null
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  %call = tail call i32 @EVP_PKEY_CTX_ctrl_uint64(%struct.evp_pkey_ctx_st* noundef nonnull %ctx, i32 noundef -1, i32 noundef 2048, i32 noundef %ctrl, i64 noundef %val) #13
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %incdec.ptr = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %uint64_params, i64 0, i64 1
  %uint64_params1 = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %uint64_params, i64 0, i64 0
  call void @OSSL_PARAM_construct_uint64(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %uint64_params1, i8* noundef %param, i64* noundef nonnull %val.addr) #14
  %3 = bitcast %struct.ossl_param_st* %tmp6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %3) #12
  call void @OSSL_PARAM_construct_end(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp6) #14
  %4 = bitcast %struct.ossl_param_st* %incdec.ptr to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %4, i8* noundef nonnull align 8 dereferenceable(40) %3, i64 40, i1 false), !tbaa.struct !75
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %3) #12
  %call8 = call i32 @EVP_PKEY_CTX_set_params(%struct.evp_pkey_ctx_st* noundef nonnull %ctx, %struct.ossl_param_st* noundef nonnull %arraydecay) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then4, %if.then
  %retval.0 = phi i32 [ -2, %if.then ], [ %call, %if.then4 ], [ %call8, %if.end5 ]
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %0) #12
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PKEY_CTX_set_scrypt_r(%struct.evp_pkey_ctx_st* noundef %ctx, i64 noundef %r) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i32 @evp_pkey_ctx_set_uint64(%struct.evp_pkey_ctx_st* noundef %ctx, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0), i32 noundef 4107, i64 noundef %r) #13
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PKEY_CTX_set_scrypt_p(%struct.evp_pkey_ctx_st* noundef %ctx, i64 noundef %p) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i32 @evp_pkey_ctx_set_uint64(%struct.evp_pkey_ctx_st* noundef %ctx, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0), i32 noundef 4108, i64 noundef %p) #13
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PKEY_CTX_set_scrypt_maxmem_bytes(%struct.evp_pkey_ctx_st* noundef %ctx, i64 noundef %maxmem_bytes) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i32 @evp_pkey_ctx_set_uint64(%struct.evp_pkey_ctx_st* noundef %ctx, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0), i32 noundef 4109, i64 noundef %maxmem_bytes) #13
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PKEY_CTX_set_mac_key(%struct.evp_pkey_ctx_st* noundef %ctx, i8* noundef %key, i32 noundef %keylen) local_unnamed_addr #0 {
entry:
  %op = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 5
  %genctx = bitcast %union.anon* %op to i8**
  %0 = load i8*, i8** %genctx, align 8, !tbaa !16
  %cmp = icmp eq i8* %0, null
  %conv = zext i1 %cmp to i32
  %call = tail call fastcc i32 @evp_pkey_ctx_set1_octet_string(%struct.evp_pkey_ctx_st* noundef %ctx, i32 noundef %conv, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i32 noundef 4, i32 noundef 6, i8* noundef %key, i32 noundef %keylen) #13
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PKEY_CTX_set_kem_op(%struct.evp_pkey_ctx_st* noundef %ctx, i8* noundef %op) local_unnamed_addr #0 {
entry:
  %params = alloca [2 x %struct.ossl_param_st], align 16
  %tmp8 = alloca %struct.ossl_param_st, align 8
  %0 = bitcast [2 x %struct.ossl_param_st]* %params to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %0) #12
  %arraydecay = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0
  %cmp = icmp eq %struct.evp_pkey_ctx_st* %ctx, null
  %cmp1 = icmp eq i8* %op, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #14
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 1176, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.EVP_PKEY_CTX_set_kem_op, i64 0, i64 0)) #14
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 222, i8* noundef null) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %operation = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 0
  %1 = load i32, i32* %operation, align 8, !tbaa !12
  switch i32 %1, label %if.then6 [
    i32 4096, label %if.end7
    i32 8192, label %if.end7
  ]

if.then6:                                         ; preds = %if.end
  tail call void @ERR_new() #14
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 1180, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.EVP_PKEY_CTX_set_kem_op, i64 0, i64 0)) #14
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 147, i8* noundef null) #14
  br label %cleanup

if.end7:                                          ; preds = %if.end, %if.end
  %incdec.ptr = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 1
  %params17 = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0
  call void @OSSL_PARAM_construct_utf8_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %params17, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0), i8* noundef nonnull %op, i64 noundef 0) #14
  %2 = bitcast %struct.ossl_param_st* %tmp8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %2) #12
  call void @OSSL_PARAM_construct_end(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp8) #14
  %3 = bitcast %struct.ossl_param_st* %incdec.ptr to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %3, i8* noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false), !tbaa.struct !75
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %2) #12
  %call = call i32 @EVP_PKEY_CTX_set_params(%struct.evp_pkey_ctx_st* noundef nonnull %ctx, %struct.ossl_param_st* noundef nonnull %arraydecay) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then6, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %call, %if.end7 ], [ -2, %if.then6 ]
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %0) #12
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @evp_pkey_ctx_set1_id_prov(%struct.evp_pkey_ctx_st* noundef %ctx, i8* noundef %id, i32 noundef %len) local_unnamed_addr #0 {
entry:
  %params = alloca [2 x %struct.ossl_param_st], align 16
  %tmp13 = alloca %struct.ossl_param_st, align 8
  %0 = bitcast [2 x %struct.ossl_param_st]* %params to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %0) #12
  %operation = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 0
  %1 = load i32, i32* %operation, align 8, !tbaa !12
  switch i32 %1, label %if.then [
    i32 16, label %if.end
    i32 128, label %if.end
    i32 32, label %if.end
    i32 256, label %if.end
    i32 64, label %if.end
  ]

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #14
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 1195, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.evp_pkey_ctx_set1_id_prov, i64 0, i64 0)) #14
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 147, i8* noundef null) #14
  br label %cleanup

if.end:                                           ; preds = %entry, %entry, %entry, %entry, %entry
  %arraydecay = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0
  %incdec.ptr = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 1
  %conv = sext i32 %len to i64
  %params30 = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0
  call void @OSSL_PARAM_construct_octet_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %params30, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0), i8* noundef %id, i64 noundef %conv) #14
  %2 = bitcast %struct.ossl_param_st* %tmp13 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %2) #12
  call void @OSSL_PARAM_construct_end(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp13) #14
  %3 = bitcast %struct.ossl_param_st* %incdec.ptr to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %3, i8* noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false), !tbaa.struct !75
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %2) #12
  %call = call i32 @evp_pkey_ctx_set_params_strict(%struct.evp_pkey_ctx_st* noundef nonnull %ctx, %struct.ossl_param_st* noundef nonnull %arraydecay) #13
  %cmp15 = icmp eq i32 %call, -2
  br i1 %cmp15, label %if.then17, label %cleanup

if.then17:                                        ; preds = %if.end
  call void @ERR_new() #14
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 1210, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.evp_pkey_ctx_set1_id_prov, i64 0, i64 0)) #14
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 147, i8* noundef null) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then17, %if.then
  %retval.0 = phi i32 [ -2, %if.then ], [ -2, %if.then17 ], [ %call, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %0) #12
  ret i32 %retval.0
}

declare void @OSSL_PARAM_construct_octet_string(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8, i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PKEY_CTX_set1_id(%struct.evp_pkey_ctx_st* noundef %ctx, i8* noundef %id, i32 noundef %len) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @EVP_PKEY_CTX_ctrl(%struct.evp_pkey_ctx_st* noundef %ctx, i32 noundef -1, i32 noundef -1, i32 noundef 15, i32 noundef %len, i8* noundef %id) #13
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @evp_pkey_ctx_get1_id_prov(%struct.evp_pkey_ctx_st* noundef %ctx, i8* noundef %id) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i32 @get1_id_data(%struct.evp_pkey_ctx_st* noundef %ctx, i8* noundef %id, i64* noundef null) #13
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @get1_id_data(%struct.evp_pkey_ctx_st* noundef %ctx, i8* noundef %id, i64* noundef writeonly %id_len) unnamed_addr #0 {
entry:
  %tmp_id = alloca i8*, align 8
  %params = alloca [2 x %struct.ossl_param_st], align 16
  %tmp13 = alloca %struct.ossl_param_st, align 8
  %0 = bitcast i8** %tmp_id to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #12
  store i8* null, i8** %tmp_id, align 8, !tbaa !10
  %1 = bitcast [2 x %struct.ossl_param_st]* %params to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %1) #12
  %operation = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 0
  %2 = load i32, i32* %operation, align 8, !tbaa !12
  switch i32 %2, label %if.then [
    i32 16, label %if.end
    i32 128, label %if.end
    i32 32, label %if.end
    i32 256, label %if.end
    i32 64, label %if.end
  ]

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #14
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 1227, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.get1_id_data, i64 0, i64 0)) #14
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 147, i8* noundef null) #14
  br label %cleanup

if.end:                                           ; preds = %entry, %entry, %entry, %entry, %entry
  %arraydecay = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0
  %incdec.ptr = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 1
  %params45 = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0
  call void @OSSL_PARAM_construct_octet_ptr(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %params45, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0), i8** noundef nonnull %tmp_id, i64 noundef 0) #14
  %3 = bitcast %struct.ossl_param_st* %tmp13 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %3) #12
  call void @OSSL_PARAM_construct_end(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp13) #14
  %4 = bitcast %struct.ossl_param_st* %incdec.ptr to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %4, i8* noundef nonnull align 8 dereferenceable(40) %3, i64 40, i1 false), !tbaa.struct !75
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %3) #12
  %call = call i32 @evp_pkey_ctx_get_params_strict(%struct.evp_pkey_ctx_st* noundef nonnull %ctx, %struct.ossl_param_st* noundef nonnull %arraydecay) #13
  %cmp15 = icmp eq i32 %call, -2
  br i1 %cmp15, label %if.then16, label %if.else

if.then16:                                        ; preds = %if.end
  call void @ERR_new() #14
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 1238, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.get1_id_data, i64 0, i64 0)) #14
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 147, i8* noundef null) #14
  br label %cleanup

if.else:                                          ; preds = %if.end
  %cmp17 = icmp sgt i32 %call, 0
  br i1 %cmp17, label %if.then18, label %cleanup

if.then18:                                        ; preds = %if.else
  %return_size = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0, i32 4
  %5 = load i64, i64* %return_size, align 16, !tbaa !77
  %cmp19.not = icmp eq i8* %id, null
  br i1 %cmp19.not, label %if.end22, label %if.then20

if.then20:                                        ; preds = %if.then18
  %6 = load i8*, i8** %tmp_id, align 8, !tbaa !10
  %call21 = call i8* @memcpy(i8* noundef nonnull %id, i8* noundef %6, i64 noundef %5) #14
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %if.then18
  %cmp23.not = icmp eq i64* %id_len, null
  br i1 %cmp23.not, label %cleanup, label %if.then24

if.then24:                                        ; preds = %if.end22
  store i64 %5, i64* %id_len, align 8, !tbaa !76
  br label %cleanup

cleanup:                                          ; preds = %if.then16, %if.else, %if.then24, %if.end22, %if.then
  %retval.0 = phi i32 [ -2, %if.then ], [ %call, %if.end22 ], [ %call, %if.then24 ], [ %call, %if.else ], [ -2, %if.then16 ]
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %1) #12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #12
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @evp_pkey_ctx_get1_id_len_prov(%struct.evp_pkey_ctx_st* noundef %ctx, i64* noundef %id_len) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i32 @get1_id_data(%struct.evp_pkey_ctx_st* noundef %ctx, i8* noundef null, i64* noundef %id_len) #13
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PKEY_CTX_get1_id(%struct.evp_pkey_ctx_st* noundef %ctx, i8* noundef %id) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @EVP_PKEY_CTX_ctrl(%struct.evp_pkey_ctx_st* noundef %ctx, i32 noundef -1, i32 noundef -1, i32 noundef 16, i32 noundef 0, i8* noundef %id) #13
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PKEY_CTX_get1_id_len(%struct.evp_pkey_ctx_st* noundef %ctx, i64* noundef %id_len) local_unnamed_addr #0 {
entry:
  %0 = bitcast i64* %id_len to i8*
  %call = tail call i32 @EVP_PKEY_CTX_ctrl(%struct.evp_pkey_ctx_st* noundef %ctx, i32 noundef -1, i32 noundef -1, i32 noundef 17, i32 noundef 0, i8* noundef %0) #13
  ret i32 %call
}

declare i32 @ERR_set_mark() local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @evp_pkey_ctx_store_cached_data(%struct.evp_pkey_ctx_st* nocapture noundef %ctx, i32 noundef %keytype, i32 noundef %optype, i32 noundef %cmd, i8* noundef %name, i8* noundef %data, i64 noundef %data_len) unnamed_addr #0 {
entry:
  %call = tail call fastcc i32 @decode_cmd(i32 noundef %cmd, i8* noundef %name) #13
  %cond = icmp eq i32 %call, 15
  br i1 %cond, label %sw.epilog, label %sw.default

sw.default:                                       ; preds = %entry
  tail call void @ERR_new() #14
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 1435, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.evp_pkey_ctx_store_cached_data, i64 0, i64 0)) #14
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 147, i8* noundef null) #14
  br label %return

sw.epilog:                                        ; preds = %entry
  %cmp.not = icmp eq i32 %keytype, -1
  br i1 %cmp.not, label %if.end20, label %if.then

if.then:                                          ; preds = %sw.epilog
  %call1 = tail call i32 @evp_pkey_ctx_state(%struct.evp_pkey_ctx_st* noundef %ctx) #13
  switch i32 %call1, label %if.end20 [
    i32 2, label %sw.bb
    i32 0, label %sw.bb9
    i32 1, label %sw.bb9
  ]

sw.bb:                                            ; preds = %if.then
  %keymgmt = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 4
  %0 = load %struct.evp_keymgmt_st*, %struct.evp_keymgmt_st** %keymgmt, align 8, !tbaa !27
  %cmp2 = icmp eq %struct.evp_keymgmt_st* %0, null
  br i1 %cmp2, label %if.then3, label %if.end

if.then3:                                         ; preds = %sw.bb
  tail call void @ERR_new() #14
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 1443, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.evp_pkey_ctx_store_cached_data, i64 0, i64 0)) #14
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 147, i8* noundef null) #14
  br label %return

if.end:                                           ; preds = %sw.bb
  %call5 = tail call i8* @evp_pkey_type2name(i32 noundef %keytype) #14
  %call6 = tail call i32 @EVP_KEYMGMT_is_a(%struct.evp_keymgmt_st* noundef nonnull %0, i8* noundef %call5) #14
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %if.then7, label %if.end20

if.then7:                                         ; preds = %if.end
  tail call void @ERR_new() #14
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 1448, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.evp_pkey_ctx_store_cached_data, i64 0, i64 0)) #14
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 148, i8* noundef null) #14
  br label %return

sw.bb9:                                           ; preds = %if.then, %if.then
  %pmeth = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 12
  %1 = load %struct.evp_pkey_method_st*, %struct.evp_pkey_method_st** %pmeth, align 8, !tbaa !30
  %cmp10 = icmp eq %struct.evp_pkey_method_st* %1, null
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %sw.bb9
  tail call void @ERR_new() #14
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 1455, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.evp_pkey_ctx_store_cached_data, i64 0, i64 0)) #14
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 147, i8* noundef null) #14
  br label %return

if.end12:                                         ; preds = %sw.bb9
  %pkey_id = getelementptr inbounds %struct.evp_pkey_method_st, %struct.evp_pkey_method_st* %1, i64 0, i32 0
  %2 = load i32, i32* %pkey_id, align 8, !tbaa !4
  %call14 = tail call i32 @EVP_PKEY_type(i32 noundef %2) #14
  %call15 = tail call i32 @EVP_PKEY_type(i32 noundef %keytype) #14
  %cmp16.not = icmp eq i32 %call14, %call15
  br i1 %cmp16.not, label %if.end20, label %if.then17

if.then17:                                        ; preds = %if.end12
  tail call void @ERR_new() #14
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 1459, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.evp_pkey_ctx_store_cached_data, i64 0, i64 0)) #14
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 148, i8* noundef null) #14
  br label %return

if.end20:                                         ; preds = %if.then, %if.end, %if.end12, %sw.epilog
  %cmp21.not = icmp eq i32 %optype, -1
  br i1 %cmp21.not, label %sw.bb25, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end20
  %operation = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 0
  %3 = load i32, i32* %operation, align 8, !tbaa !12
  %and = and i32 %3, %optype
  %cmp22 = icmp eq i32 %and, 0
  br i1 %cmp22, label %if.then23, label %sw.bb25

if.then23:                                        ; preds = %land.lhs.true
  tail call void @ERR_new() #14
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 1466, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.evp_pkey_ctx_store_cached_data, i64 0, i64 0)) #14
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 148, i8* noundef null) #14
  br label %return

sw.bb25:                                          ; preds = %if.end20, %land.lhs.true
  tail call fastcc void @evp_pkey_ctx_free_cached_data(%struct.evp_pkey_ctx_st* noundef %ctx, i8* noundef %name) #13
  %cmp26.not = icmp eq i8* %name, null
  br i1 %cmp26.not, label %if.end34, label %if.then27

if.then27:                                        ; preds = %sw.bb25
  %call28 = tail call i8* @CRYPTO_strdup(i8* noundef nonnull %name, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 1474) #14
  %dist_id_name = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 6, i32 0
  store i8* %call28, i8** %dist_id_name, align 8, !tbaa !78
  %cmp31 = icmp eq i8* %call28, null
  br i1 %cmp31, label %if.then32, label %if.end34

if.then32:                                        ; preds = %if.then27
  tail call void @ERR_new() #14
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 1476, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.evp_pkey_ctx_store_cached_data, i64 0, i64 0)) #14
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 786688, i8* noundef null) #14
  br label %return

if.end34:                                         ; preds = %if.then27, %sw.bb25
  %cmp35.not = icmp eq i64 %data_len, 0
  br i1 %cmp35.not, label %if.end44, label %if.then36

if.then36:                                        ; preds = %if.end34
  %call37 = tail call i8* @CRYPTO_memdup(i8* noundef %data, i64 noundef %data_len, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 1481) #14
  %dist_id = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 6, i32 1
  store i8* %call37, i8** %dist_id, align 8, !tbaa !79
  %cmp41 = icmp eq i8* %call37, null
  br i1 %cmp41, label %if.then42, label %if.end44

if.then42:                                        ; preds = %if.then36
  tail call void @ERR_new() #14
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 1483, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.evp_pkey_ctx_store_cached_data, i64 0, i64 0)) #14
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 786688, i8* noundef null) #14
  br label %return

if.end44:                                         ; preds = %if.then36, %if.end34
  %dist_id_set = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 6, i32 3
  %bf.load = load i8, i8* %dist_id_set, align 8
  %bf.set = or i8 %bf.load, 1
  store i8 %bf.set, i8* %dist_id_set, align 8
  %dist_id_len = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 6, i32 2
  store i64 %data_len, i64* %dist_id_len, align 8, !tbaa !80
  br label %return

return:                                           ; preds = %if.end44, %if.then42, %if.then32, %if.then23, %if.then17, %if.then11, %if.then7, %if.then3, %sw.default
  %retval.0 = phi i32 [ -1, %if.then23 ], [ 0, %if.then32 ], [ 0, %if.then42 ], [ 1, %if.end44 ], [ -2, %if.then11 ], [ -1, %if.then17 ], [ -2, %if.then3 ], [ -1, %if.then7 ], [ -2, %sw.default ]
  ret i32 %retval.0
}

declare i32 @ERR_pop_to_mark() local_unnamed_addr #2

declare i32 @ERR_clear_last_mark() local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @evp_pkey_ctx_ctrl_int(%struct.evp_pkey_ctx_st* noundef %ctx, i32 noundef %keytype, i32 noundef %optype, i32 noundef %cmd, i32 noundef %p1, i8* noundef %p2) unnamed_addr #0 {
entry:
  %pmeth = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 12
  %0 = load %struct.evp_pkey_method_st*, %struct.evp_pkey_method_st** %pmeth, align 8, !tbaa !30
  %cmp = icmp eq %struct.evp_pkey_method_st* %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %digest_custom = getelementptr inbounds %struct.evp_pkey_method_st, %struct.evp_pkey_method_st* %0, i64 0, i32 32
  %1 = load i32 (%struct.evp_pkey_ctx_st*, %struct.evp_md_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_md_ctx_st*)** %digest_custom, align 8, !tbaa !81
  %cmp2 = icmp eq i32 (%struct.evp_pkey_ctx_st*, %struct.evp_md_ctx_st*)* %1, null
  br i1 %cmp2, label %if.then, label %if.end9

if.then:                                          ; preds = %lor.lhs.false, %entry
  %operation = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 0
  %2 = load i32, i32* %operation, align 8, !tbaa !12
  %cmp3 = icmp eq i32 %2, 0
  br i1 %cmp3, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.then
  tail call void @ERR_new() #14
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 1283, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.evp_pkey_ctx_ctrl_int, i64 0, i64 0)) #14
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 149, i8* noundef null) #14
  br label %cleanup

if.end:                                           ; preds = %if.then
  %cmp5.not = icmp ne i32 %optype, -1
  %and = and i32 %2, %optype
  %tobool.not = icmp eq i32 %and, 0
  %or.cond = select i1 %cmp5.not, i1 %tobool.not, i1 false
  br i1 %or.cond, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end
  tail call void @ERR_new() #14
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 1288, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.evp_pkey_ctx_ctrl_int, i64 0, i64 0)) #14
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 148, i8* noundef null) #14
  br label %cleanup

if.end9:                                          ; preds = %if.end, %lor.lhs.false
  %call = tail call i32 @evp_pkey_ctx_state(%struct.evp_pkey_ctx_st* noundef nonnull %ctx) #13
  switch i32 %call, label %cleanup [
    i32 2, label %sw.bb
    i32 0, label %sw.bb11
    i32 1, label %sw.bb11
  ]

sw.bb:                                            ; preds = %if.end9
  %call10 = tail call i32 @evp_pkey_ctx_ctrl_to_param(%struct.evp_pkey_ctx_st* noundef nonnull %ctx, i32 noundef %keytype, i32 noundef %optype, i32 noundef %cmd, i32 noundef %p1, i8* noundef %p2) #14
  br label %cleanup

sw.bb11:                                          ; preds = %if.end9, %if.end9
  br i1 %cmp, label %if.then17, label %lor.lhs.false14

lor.lhs.false14:                                  ; preds = %sw.bb11
  %ctrl = getelementptr inbounds %struct.evp_pkey_method_st, %struct.evp_pkey_method_st* %0, i64 0, i32 25
  %3 = load i32 (%struct.evp_pkey_ctx_st*, i32, i32, i8*)*, i32 (%struct.evp_pkey_ctx_st*, i32, i32, i8*)** %ctrl, align 8, !tbaa !82
  %cmp16 = icmp eq i32 (%struct.evp_pkey_ctx_st*, i32, i32, i8*)* %3, null
  br i1 %cmp16, label %if.then17, label %if.end18

if.then17:                                        ; preds = %lor.lhs.false14, %sw.bb11
  tail call void @ERR_new() #14
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 1299, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.evp_pkey_ctx_ctrl_int, i64 0, i64 0)) #14
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 147, i8* noundef null) #14
  br label %cleanup

if.end18:                                         ; preds = %lor.lhs.false14
  %cmp19.not = icmp eq i32 %keytype, -1
  br i1 %cmp19.not, label %if.end24, label %land.lhs.true20

land.lhs.true20:                                  ; preds = %if.end18
  %pkey_id = getelementptr inbounds %struct.evp_pkey_method_st, %struct.evp_pkey_method_st* %0, i64 0, i32 0
  %4 = load i32, i32* %pkey_id, align 8, !tbaa !4
  %cmp22.not = icmp eq i32 %4, %keytype
  br i1 %cmp22.not, label %if.end24, label %cleanup

if.end24:                                         ; preds = %land.lhs.true20, %if.end18
  %call27 = tail call i32 %3(%struct.evp_pkey_ctx_st* noundef nonnull %ctx, i32 noundef %cmd, i32 noundef %p1, i8* noundef %p2) #14
  %cmp28 = icmp eq i32 %call27, -2
  br i1 %cmp28, label %if.then29, label %cleanup

if.then29:                                        ; preds = %if.end24
  tail call void @ERR_new() #14
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 1308, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.evp_pkey_ctx_ctrl_int, i64 0, i64 0)) #14
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 147, i8* noundef null) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.then29, %if.end24, %land.lhs.true20, %if.then17, %sw.bb, %if.then7, %if.then4
  %retval.0 = phi i32 [ -1, %if.then4 ], [ -2, %if.then17 ], [ %call10, %sw.bb ], [ -1, %if.then7 ], [ -1, %land.lhs.true20 ], [ 0, %if.end9 ], [ -2, %if.then29 ], [ %call27, %if.end24 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PKEY_CTX_ctrl_uint64(%struct.evp_pkey_ctx_st* noundef %ctx, i32 noundef %keytype, i32 noundef %optype, i32 noundef %cmd, i64 noundef %value) local_unnamed_addr #0 {
entry:
  %value.addr = alloca i64, align 8
  store i64 %value, i64* %value.addr, align 8, !tbaa !76
  %0 = bitcast i64* %value.addr to i8*
  %call = call i32 @EVP_PKEY_CTX_ctrl(%struct.evp_pkey_ctx_st* noundef %ctx, i32 noundef %keytype, i32 noundef %optype, i32 noundef %cmd, i32 noundef 0, i8* noundef nonnull %0) #13
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PKEY_CTX_ctrl_str(%struct.evp_pkey_ctx_st* noundef %ctx, i8* noundef %name, i8* noundef %value) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @ERR_set_mark() #14
  %call1 = tail call i64 @strlen(i8* noundef %value) #15
  %add = add i64 %call1, 1
  %call2 = tail call fastcc i32 @evp_pkey_ctx_store_cached_data(%struct.evp_pkey_ctx_st* noundef %ctx, i32 noundef -1, i32 noundef -1, i32 noundef -1, i8* noundef %name, i8* noundef %value, i64 noundef %add) #13
  %cmp = icmp eq i32 %call2, -2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call3 = tail call i32 @ERR_pop_to_mark() #14
  br label %if.end8

if.else:                                          ; preds = %entry
  %call4 = tail call i32 @ERR_clear_last_mark() #14
  %cmp5 = icmp slt i32 %call2, 1
  br i1 %cmp5, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %operation = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 0
  %0 = load i32, i32* %operation, align 8, !tbaa !12
  %cmp6 = icmp eq i32 %0, 0
  br i1 %cmp6, label %cleanup, label %if.end8

if.end8:                                          ; preds = %lor.lhs.false, %if.then
  %call9 = tail call fastcc i32 @evp_pkey_ctx_ctrl_str_int(%struct.evp_pkey_ctx_st* noundef %ctx, i8* noundef %name, i8* noundef %value) #13
  br label %cleanup

cleanup:                                          ; preds = %if.else, %lor.lhs.false, %if.end8
  %retval.0 = phi i32 [ %call9, %if.end8 ], [ %call2, %lor.lhs.false ], [ %call2, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @evp_pkey_ctx_ctrl_str_int(%struct.evp_pkey_ctx_st* noundef %ctx, i8* noundef %name, i8* noundef %value) unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.evp_pkey_ctx_st* %ctx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #14
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 1355, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.evp_pkey_ctx_ctrl_str_int, i64 0, i64 0)) #14
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 147, i8* noundef null) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @evp_pkey_ctx_state(%struct.evp_pkey_ctx_st* noundef nonnull %ctx) #13
  switch i32 %call, label %cleanup [
    i32 2, label %sw.bb
    i32 0, label %lor.lhs.false
    i32 1, label %lor.lhs.false
  ]

sw.bb:                                            ; preds = %if.end
  %call1 = tail call i32 @evp_pkey_ctx_ctrl_str_to_param(%struct.evp_pkey_ctx_st* noundef nonnull %ctx, i8* noundef %name, i8* noundef %value) #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end, %if.end
  %pmeth = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 12
  %0 = load %struct.evp_pkey_method_st*, %struct.evp_pkey_method_st** %pmeth, align 8, !tbaa !30
  %cmp4 = icmp eq %struct.evp_pkey_method_st* %0, null
  br i1 %cmp4, label %if.then8, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %ctrl_str = getelementptr inbounds %struct.evp_pkey_method_st, %struct.evp_pkey_method_st* %0, i64 0, i32 26
  %1 = load i32 (%struct.evp_pkey_ctx_st*, i8*, i8*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i8*)** %ctrl_str, align 8, !tbaa !83
  %cmp7 = icmp eq i32 (%struct.evp_pkey_ctx_st*, i8*, i8*)* %1, null
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %lor.lhs.false5, %lor.lhs.false
  tail call void @ERR_new() #14
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 1365, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.evp_pkey_ctx_ctrl_str_int, i64 0, i64 0)) #14
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 147, i8* noundef null) #14
  br label %cleanup

if.end9:                                          ; preds = %lor.lhs.false5
  %call10 = tail call i32 @strcmp(i8* noundef %name, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0)) #15
  %cmp11 = icmp eq i32 %call10, 0
  br i1 %cmp11, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.end9
  %call13 = tail call i32 @EVP_PKEY_CTX_md(%struct.evp_pkey_ctx_st* noundef nonnull %ctx, i32 noundef 2032, i32 noundef 1, i8* noundef %value) #13
  br label %cleanup

if.else:                                          ; preds = %if.end9
  %call16 = tail call i32 %1(%struct.evp_pkey_ctx_st* noundef nonnull %ctx, i8* noundef %name, i8* noundef %value) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.else, %if.then12, %if.then8, %sw.bb, %if.then
  %retval.0 = phi i32 [ -2, %if.then ], [ -2, %if.then8 ], [ %call1, %sw.bb ], [ 0, %if.end ], [ %call13, %if.then12 ], [ %call16, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @evp_pkey_ctx_use_cached_data(%struct.evp_pkey_ctx_st* noundef %ctx) local_unnamed_addr #0 {
entry:
  %dist_id_set = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 6, i32 3
  %bf.load = load i8, i8* %dist_id_set, align 8
  %bf.clear = and i8 %bf.load, 1
  %tobool1.not = icmp eq i8 %bf.clear, 0
  br i1 %tobool1.not, label %if.end7, label %if.then

if.then:                                          ; preds = %entry
  %dist_id_name = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 6, i32 0
  %0 = load i8*, i8** %dist_id_name, align 8, !tbaa !78
  %dist_id = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 6, i32 1
  %1 = load i8*, i8** %dist_id, align 8, !tbaa !79
  %cmp.not = icmp eq i8* %0, null
  br i1 %cmp.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %if.then
  %call = tail call fastcc i32 @evp_pkey_ctx_ctrl_str_int(%struct.evp_pkey_ctx_st* noundef nonnull %ctx, i8* noundef nonnull %0, i8* noundef %1) #13
  br label %if.end7

if.else:                                          ; preds = %if.then
  %dist_id_len = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 6, i32 2
  %2 = load i64, i64* %dist_id_len, align 8, !tbaa !80
  %operation = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 0
  %3 = load i32, i32* %operation, align 8, !tbaa !12
  %conv = trunc i64 %2 to i32
  %call6 = tail call fastcc i32 @evp_pkey_ctx_ctrl_int(%struct.evp_pkey_ctx_st* noundef nonnull %ctx, i32 noundef -1, i32 noundef %3, i32 noundef 15, i32 noundef %conv, i8* noundef %1) #13
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.else, %entry
  %ret.1 = phi i32 [ 1, %entry ], [ %call, %if.then5 ], [ %call6, %if.else ]
  ret i32 %ret.1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.ossl_lib_ctx_st* @EVP_PKEY_CTX_get0_libctx(%struct.evp_pkey_ctx_st* nocapture noundef readonly %ctx) local_unnamed_addr #3 {
entry:
  %libctx = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 1
  %0 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !25
  ret %struct.ossl_lib_ctx_st* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i8* @EVP_PKEY_CTX_get0_propq(%struct.evp_pkey_ctx_st* nocapture noundef readonly %ctx) local_unnamed_addr #3 {
entry:
  %propquery = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 2
  %0 = load i8*, i8** %propquery, align 8, !tbaa !24
  ret i8* %0
}

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_provider_st* @EVP_PKEY_CTX_get0_provider(%struct.evp_pkey_ctx_st* nocapture noundef readonly %ctx) local_unnamed_addr #0 {
entry:
  %operation = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 0
  %0 = load i32, i32* %operation, align 8, !tbaa !12
  switch i32 %0, label %return [
    i32 16, label %if.then
    i32 128, label %if.then
    i32 32, label %if.then
    i32 256, label %if.then
    i32 64, label %if.then
    i32 2048, label %if.then19
    i32 4096, label %if.then34
    i32 8192, label %if.then34
    i32 512, label %if.then49
    i32 1024, label %if.then49
    i32 2, label %if.then64
    i32 4, label %if.then64
  ]

if.then:                                          ; preds = %entry, %entry, %entry, %entry, %entry
  %op = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 5
  %signature = bitcast %union.anon* %op to %struct.evp_signature_st**
  %1 = load %struct.evp_signature_st*, %struct.evp_signature_st** %signature, align 8, !tbaa !16
  %cmp12.not = icmp eq %struct.evp_signature_st* %1, null
  br i1 %cmp12.not, label %return, label %if.then13

if.then13:                                        ; preds = %if.then
  %call = tail call %struct.ossl_provider_st* @EVP_SIGNATURE_get0_provider(%struct.evp_signature_st* noundef nonnull %1) #14
  br label %return

if.then19:                                        ; preds = %entry
  %exchange = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 5, i32 0, i32 0
  %2 = load %struct.evp_keyexch_st*, %struct.evp_keyexch_st** %exchange, align 8, !tbaa !16
  %cmp21.not = icmp eq %struct.evp_keyexch_st* %2, null
  br i1 %cmp21.not, label %return, label %if.then22

if.then22:                                        ; preds = %if.then19
  %call26 = tail call %struct.ossl_provider_st* @EVP_KEYEXCH_get0_provider(%struct.evp_keyexch_st* noundef nonnull %2) #14
  br label %return

if.then34:                                        ; preds = %entry, %entry
  %op35 = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 5
  %kem = bitcast %union.anon* %op35 to %struct.evp_kem_st**
  %3 = load %struct.evp_kem_st*, %struct.evp_kem_st** %kem, align 8, !tbaa !16
  %cmp36.not = icmp eq %struct.evp_kem_st* %3, null
  br i1 %cmp36.not, label %return, label %if.then37

if.then37:                                        ; preds = %if.then34
  %call41 = tail call %struct.ossl_provider_st* @EVP_KEM_get0_provider(%struct.evp_kem_st* noundef nonnull %3) #14
  br label %return

if.then49:                                        ; preds = %entry, %entry
  %op50 = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 5
  %cipher = bitcast %union.anon* %op50 to %struct.evp_asym_cipher_st**
  %4 = load %struct.evp_asym_cipher_st*, %struct.evp_asym_cipher_st** %cipher, align 8, !tbaa !16
  %cmp51.not = icmp eq %struct.evp_asym_cipher_st* %4, null
  br i1 %cmp51.not, label %return, label %if.then52

if.then52:                                        ; preds = %if.then49
  %call56 = tail call %struct.ossl_provider_st* @EVP_ASYM_CIPHER_get0_provider(%struct.evp_asym_cipher_st* noundef nonnull %4) #14
  br label %return

if.then64:                                        ; preds = %entry, %entry
  %keymgmt = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 4
  %5 = load %struct.evp_keymgmt_st*, %struct.evp_keymgmt_st** %keymgmt, align 8, !tbaa !27
  %cmp65.not = icmp eq %struct.evp_keymgmt_st* %5, null
  br i1 %cmp65.not, label %return, label %if.then66

if.then66:                                        ; preds = %if.then64
  %call68 = tail call %struct.ossl_provider_st* @EVP_KEYMGMT_get0_provider(%struct.evp_keymgmt_st* noundef nonnull %5) #14
  br label %return

return:                                           ; preds = %if.then, %if.then34, %if.then64, %if.then49, %if.then19, %entry, %if.then66, %if.then52, %if.then37, %if.then22, %if.then13
  %retval.0 = phi %struct.ossl_provider_st* [ %call, %if.then13 ], [ %call26, %if.then22 ], [ %call41, %if.then37 ], [ %call56, %if.then52 ], [ %call68, %if.then66 ], [ null, %entry ], [ null, %if.then19 ], [ null, %if.then49 ], [ null, %if.then64 ], [ null, %if.then34 ], [ null, %if.then ]
  ret %struct.ossl_provider_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PKEY_CTX_str2ctrl(%struct.evp_pkey_ctx_st* noundef %ctx, i32 noundef %cmd, i8* noundef %str) local_unnamed_addr #0 {
entry:
  %call = tail call i64 @strlen(i8* noundef %str) #15
  %cmp = icmp ugt i64 %call, 2147483647
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %pmeth = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 12
  %0 = load %struct.evp_pkey_method_st*, %struct.evp_pkey_method_st** %pmeth, align 8, !tbaa !30
  %ctrl = getelementptr inbounds %struct.evp_pkey_method_st, %struct.evp_pkey_method_st* %0, i64 0, i32 25
  %1 = load i32 (%struct.evp_pkey_ctx_st*, i32, i32, i8*)*, i32 (%struct.evp_pkey_ctx_st*, i32, i32, i8*)** %ctrl, align 8, !tbaa !82
  %conv = trunc i64 %call to i32
  %call1 = tail call i32 %1(%struct.evp_pkey_ctx_st* noundef %ctx, i32 noundef %cmd, i32 noundef %conv, i8* noundef %str) #14
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call1, %if.end ], [ -1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PKEY_CTX_hex2ctrl(%struct.evp_pkey_ctx_st* noundef %ctx, i32 noundef %cmd, i8* noundef %hex) local_unnamed_addr #0 {
entry:
  %binlen = alloca i64, align 8
  %0 = bitcast i64* %binlen to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #12
  %call = call i8* @OPENSSL_hexstr2buf(i8* noundef %hex, i64* noundef nonnull %binlen) #14
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %1 = load i64, i64* %binlen, align 8, !tbaa !76
  %cmp1 = icmp slt i64 %1, 2147483648
  br i1 %cmp1, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  %pmeth = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 12
  %2 = load %struct.evp_pkey_method_st*, %struct.evp_pkey_method_st** %pmeth, align 8, !tbaa !30
  %ctrl = getelementptr inbounds %struct.evp_pkey_method_st, %struct.evp_pkey_method_st* %2, i64 0, i32 25
  %3 = load i32 (%struct.evp_pkey_ctx_st*, i32, i32, i8*)*, i32 (%struct.evp_pkey_ctx_st*, i32, i32, i8*)** %ctrl, align 8, !tbaa !82
  %conv = trunc i64 %1 to i32
  %call3 = call i32 %3(%struct.evp_pkey_ctx_st* noundef %ctx, i32 noundef %cmd, i32 noundef %conv, i8* noundef nonnull %call) #14
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end
  %rv.0 = phi i32 [ %call3, %if.then2 ], [ -1, %if.end ]
  call void @CRYPTO_free(i8* noundef nonnull %call, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 1588) #14
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end4
  %retval.0 = phi i32 [ %rv.0, %if.end4 ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #12
  ret i32 %retval.0
}

declare i8* @OPENSSL_hexstr2buf(i8* noundef, i64* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PKEY_CTX_md(%struct.evp_pkey_ctx_st* noundef %ctx, i32 noundef %optype, i32 noundef %cmd, i8* noundef %md) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq i8* %md, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call = tail call %struct.evp_md_st* @EVP_get_digestbyname(i8* noundef nonnull %md) #14
  %cmp1 = icmp eq %struct.evp_md_st* %call, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  tail call void @ERR_new() #14
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 1598, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.EVP_PKEY_CTX_md, i64 0, i64 0)) #14
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 152, i8* noundef null) #14
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %0 = bitcast %struct.evp_md_st* %call to i8*
  %call2 = tail call i32 @EVP_PKEY_CTX_ctrl(%struct.evp_pkey_ctx_st* noundef %ctx, i32 noundef -1, i32 noundef %optype, i32 noundef %cmd, i32 noundef 0, i8* noundef nonnull %0) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %call2, %if.end ]
  ret i32 %retval.0
}

declare %struct.evp_md_st* @EVP_get_digestbyname(i8* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @EVP_PKEY_CTX_get_operation(%struct.evp_pkey_ctx_st* nocapture noundef readonly %ctx) local_unnamed_addr #3 {
entry:
  %operation = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 0
  %0 = load i32, i32* %operation, align 8, !tbaa !12
  ret i32 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @EVP_PKEY_CTX_set0_keygen_info(%struct.evp_pkey_ctx_st* nocapture noundef writeonly %ctx, i32* noundef %dat, i32 noundef %datlen) local_unnamed_addr #9 {
entry:
  %keygen_info = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 9
  store i32* %dat, i32** %keygen_info, align 8, !tbaa !84
  %keygen_info_count = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 10
  store i32 %datlen, i32* %keygen_info_count, align 8, !tbaa !85
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @EVP_PKEY_CTX_set_data(%struct.evp_pkey_ctx_st* nocapture noundef writeonly %ctx, i8* noundef %data) local_unnamed_addr #9 {
entry:
  %data1 = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 16
  store i8* %data, i8** %data1, align 8, !tbaa !86
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i8* @EVP_PKEY_CTX_get_data(%struct.evp_pkey_ctx_st* nocapture noundef readonly %ctx) local_unnamed_addr #3 {
entry:
  %data = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 16
  %0 = load i8*, i8** %data, align 8, !tbaa !86
  ret i8* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.evp_pkey_st* @EVP_PKEY_CTX_get0_pkey(%struct.evp_pkey_ctx_st* nocapture noundef readonly %ctx) local_unnamed_addr #3 {
entry:
  %pkey = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 14
  %0 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey, align 8, !tbaa !31
  ret %struct.evp_pkey_st* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.evp_pkey_st* @EVP_PKEY_CTX_get0_peerkey(%struct.evp_pkey_ctx_st* nocapture noundef readonly %ctx) local_unnamed_addr #3 {
entry:
  %peerkey = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 15
  %0 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %peerkey, align 8, !tbaa !42
  ret %struct.evp_pkey_st* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @EVP_PKEY_CTX_set_app_data(%struct.evp_pkey_ctx_st* nocapture noundef writeonly %ctx, i8* noundef %data) local_unnamed_addr #9 {
entry:
  %app_data = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 7
  store i8* %data, i8** %app_data, align 8, !tbaa !87
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i8* @EVP_PKEY_CTX_get_app_data(%struct.evp_pkey_ctx_st* nocapture noundef readonly %ctx) local_unnamed_addr #3 {
entry:
  %app_data = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 7
  %0 = load i8*, i8** %app_data, align 8, !tbaa !87
  ret i8* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @EVP_PKEY_meth_set_init(%struct.evp_pkey_method_st* nocapture noundef writeonly %pmeth, i32 (%struct.evp_pkey_ctx_st*)* noundef %init) local_unnamed_addr #9 {
entry:
  %init1 = getelementptr inbounds %struct.evp_pkey_method_st, %struct.evp_pkey_method_st* %pmeth, i64 0, i32 2
  store i32 (%struct.evp_pkey_ctx_st*)* %init, i32 (%struct.evp_pkey_ctx_st*)** %init1, align 8, !tbaa !32
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @EVP_PKEY_meth_set_copy(%struct.evp_pkey_method_st* nocapture noundef writeonly %pmeth, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st*)* noundef %copy) local_unnamed_addr #9 {
entry:
  %copy1 = getelementptr inbounds %struct.evp_pkey_method_st, %struct.evp_pkey_method_st* %pmeth, i64 0, i32 3
  store i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st*)* %copy, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st*)** %copy1, align 8, !tbaa !50
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @EVP_PKEY_meth_set_cleanup(%struct.evp_pkey_method_st* nocapture noundef writeonly %pmeth, void (%struct.evp_pkey_ctx_st*)* noundef %cleanup) local_unnamed_addr #9 {
entry:
  %cleanup1 = getelementptr inbounds %struct.evp_pkey_method_st, %struct.evp_pkey_method_st* %pmeth, i64 0, i32 4
  store void (%struct.evp_pkey_ctx_st*)* %cleanup, void (%struct.evp_pkey_ctx_st*)** %cleanup1, align 8, !tbaa !41
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @EVP_PKEY_meth_set_paramgen(%struct.evp_pkey_method_st* nocapture noundef writeonly %pmeth, i32 (%struct.evp_pkey_ctx_st*)* noundef %paramgen_init, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_st*)* noundef %paramgen) local_unnamed_addr #9 {
entry:
  %paramgen_init1 = getelementptr inbounds %struct.evp_pkey_method_st, %struct.evp_pkey_method_st* %pmeth, i64 0, i32 5
  store i32 (%struct.evp_pkey_ctx_st*)* %paramgen_init, i32 (%struct.evp_pkey_ctx_st*)** %paramgen_init1, align 8, !tbaa !88
  %paramgen2 = getelementptr inbounds %struct.evp_pkey_method_st, %struct.evp_pkey_method_st* %pmeth, i64 0, i32 6
  store i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_st*)* %paramgen, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_st*)** %paramgen2, align 8, !tbaa !89
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @EVP_PKEY_meth_set_keygen(%struct.evp_pkey_method_st* nocapture noundef writeonly %pmeth, i32 (%struct.evp_pkey_ctx_st*)* noundef %keygen_init, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_st*)* noundef %keygen) local_unnamed_addr #9 {
entry:
  %keygen_init1 = getelementptr inbounds %struct.evp_pkey_method_st, %struct.evp_pkey_method_st* %pmeth, i64 0, i32 7
  store i32 (%struct.evp_pkey_ctx_st*)* %keygen_init, i32 (%struct.evp_pkey_ctx_st*)** %keygen_init1, align 8, !tbaa !90
  %keygen2 = getelementptr inbounds %struct.evp_pkey_method_st, %struct.evp_pkey_method_st* %pmeth, i64 0, i32 8
  store i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_st*)* %keygen, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_st*)** %keygen2, align 8, !tbaa !91
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @EVP_PKEY_meth_set_sign(%struct.evp_pkey_method_st* nocapture noundef writeonly %pmeth, i32 (%struct.evp_pkey_ctx_st*)* noundef %sign_init, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)* noundef %sign) local_unnamed_addr #9 {
entry:
  %sign_init1 = getelementptr inbounds %struct.evp_pkey_method_st, %struct.evp_pkey_method_st* %pmeth, i64 0, i32 9
  store i32 (%struct.evp_pkey_ctx_st*)* %sign_init, i32 (%struct.evp_pkey_ctx_st*)** %sign_init1, align 8, !tbaa !92
  %sign2 = getelementptr inbounds %struct.evp_pkey_method_st, %struct.evp_pkey_method_st* %pmeth, i64 0, i32 10
  store i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)* %sign, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)** %sign2, align 8, !tbaa !93
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @EVP_PKEY_meth_set_verify(%struct.evp_pkey_method_st* nocapture noundef writeonly %pmeth, i32 (%struct.evp_pkey_ctx_st*)* noundef %verify_init, i32 (%struct.evp_pkey_ctx_st*, i8*, i64, i8*, i64)* noundef %verify) local_unnamed_addr #9 {
entry:
  %verify_init1 = getelementptr inbounds %struct.evp_pkey_method_st, %struct.evp_pkey_method_st* %pmeth, i64 0, i32 11
  store i32 (%struct.evp_pkey_ctx_st*)* %verify_init, i32 (%struct.evp_pkey_ctx_st*)** %verify_init1, align 8, !tbaa !94
  %verify2 = getelementptr inbounds %struct.evp_pkey_method_st, %struct.evp_pkey_method_st* %pmeth, i64 0, i32 12
  store i32 (%struct.evp_pkey_ctx_st*, i8*, i64, i8*, i64)* %verify, i32 (%struct.evp_pkey_ctx_st*, i8*, i64, i8*, i64)** %verify2, align 8, !tbaa !95
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @EVP_PKEY_meth_set_verify_recover(%struct.evp_pkey_method_st* nocapture noundef writeonly %pmeth, i32 (%struct.evp_pkey_ctx_st*)* noundef %verify_recover_init, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)* noundef %verify_recover) local_unnamed_addr #9 {
entry:
  %verify_recover_init1 = getelementptr inbounds %struct.evp_pkey_method_st, %struct.evp_pkey_method_st* %pmeth, i64 0, i32 13
  store i32 (%struct.evp_pkey_ctx_st*)* %verify_recover_init, i32 (%struct.evp_pkey_ctx_st*)** %verify_recover_init1, align 8, !tbaa !96
  %verify_recover2 = getelementptr inbounds %struct.evp_pkey_method_st, %struct.evp_pkey_method_st* %pmeth, i64 0, i32 14
  store i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)* %verify_recover, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)** %verify_recover2, align 8, !tbaa !97
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @EVP_PKEY_meth_set_signctx(%struct.evp_pkey_method_st* nocapture noundef writeonly %pmeth, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_md_ctx_st*)* noundef %signctx_init, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, %struct.evp_md_ctx_st*)* noundef %signctx) local_unnamed_addr #9 {
entry:
  %signctx_init1 = getelementptr inbounds %struct.evp_pkey_method_st, %struct.evp_pkey_method_st* %pmeth, i64 0, i32 15
  store i32 (%struct.evp_pkey_ctx_st*, %struct.evp_md_ctx_st*)* %signctx_init, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_md_ctx_st*)** %signctx_init1, align 8, !tbaa !98
  %signctx2 = getelementptr inbounds %struct.evp_pkey_method_st, %struct.evp_pkey_method_st* %pmeth, i64 0, i32 16
  store i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, %struct.evp_md_ctx_st*)* %signctx, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, %struct.evp_md_ctx_st*)** %signctx2, align 8, !tbaa !99
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @EVP_PKEY_meth_set_verifyctx(%struct.evp_pkey_method_st* nocapture noundef writeonly %pmeth, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_md_ctx_st*)* noundef %verifyctx_init, i32 (%struct.evp_pkey_ctx_st*, i8*, i32, %struct.evp_md_ctx_st*)* noundef %verifyctx) local_unnamed_addr #9 {
entry:
  %verifyctx_init1 = getelementptr inbounds %struct.evp_pkey_method_st, %struct.evp_pkey_method_st* %pmeth, i64 0, i32 17
  store i32 (%struct.evp_pkey_ctx_st*, %struct.evp_md_ctx_st*)* %verifyctx_init, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_md_ctx_st*)** %verifyctx_init1, align 8, !tbaa !100
  %verifyctx2 = getelementptr inbounds %struct.evp_pkey_method_st, %struct.evp_pkey_method_st* %pmeth, i64 0, i32 18
  store i32 (%struct.evp_pkey_ctx_st*, i8*, i32, %struct.evp_md_ctx_st*)* %verifyctx, i32 (%struct.evp_pkey_ctx_st*, i8*, i32, %struct.evp_md_ctx_st*)** %verifyctx2, align 8, !tbaa !101
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @EVP_PKEY_meth_set_encrypt(%struct.evp_pkey_method_st* nocapture noundef writeonly %pmeth, i32 (%struct.evp_pkey_ctx_st*)* noundef %encrypt_init, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)* noundef %encryptfn) local_unnamed_addr #9 {
entry:
  %encrypt_init1 = getelementptr inbounds %struct.evp_pkey_method_st, %struct.evp_pkey_method_st* %pmeth, i64 0, i32 19
  store i32 (%struct.evp_pkey_ctx_st*)* %encrypt_init, i32 (%struct.evp_pkey_ctx_st*)** %encrypt_init1, align 8, !tbaa !102
  %encrypt = getelementptr inbounds %struct.evp_pkey_method_st, %struct.evp_pkey_method_st* %pmeth, i64 0, i32 20
  store i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)* %encryptfn, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)** %encrypt, align 8, !tbaa !103
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @EVP_PKEY_meth_set_decrypt(%struct.evp_pkey_method_st* nocapture noundef writeonly %pmeth, i32 (%struct.evp_pkey_ctx_st*)* noundef %decrypt_init, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)* noundef %decrypt) local_unnamed_addr #9 {
entry:
  %decrypt_init1 = getelementptr inbounds %struct.evp_pkey_method_st, %struct.evp_pkey_method_st* %pmeth, i64 0, i32 21
  store i32 (%struct.evp_pkey_ctx_st*)* %decrypt_init, i32 (%struct.evp_pkey_ctx_st*)** %decrypt_init1, align 8, !tbaa !104
  %decrypt2 = getelementptr inbounds %struct.evp_pkey_method_st, %struct.evp_pkey_method_st* %pmeth, i64 0, i32 22
  store i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)* %decrypt, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)** %decrypt2, align 8, !tbaa !105
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @EVP_PKEY_meth_set_derive(%struct.evp_pkey_method_st* nocapture noundef writeonly %pmeth, i32 (%struct.evp_pkey_ctx_st*)* noundef %derive_init, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*)* noundef %derive) local_unnamed_addr #9 {
entry:
  %derive_init1 = getelementptr inbounds %struct.evp_pkey_method_st, %struct.evp_pkey_method_st* %pmeth, i64 0, i32 23
  store i32 (%struct.evp_pkey_ctx_st*)* %derive_init, i32 (%struct.evp_pkey_ctx_st*)** %derive_init1, align 8, !tbaa !106
  %derive2 = getelementptr inbounds %struct.evp_pkey_method_st, %struct.evp_pkey_method_st* %pmeth, i64 0, i32 24
  store i32 (%struct.evp_pkey_ctx_st*, i8*, i64*)* %derive, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*)** %derive2, align 8, !tbaa !107
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @EVP_PKEY_meth_set_ctrl(%struct.evp_pkey_method_st* nocapture noundef writeonly %pmeth, i32 (%struct.evp_pkey_ctx_st*, i32, i32, i8*)* noundef %ctrl, i32 (%struct.evp_pkey_ctx_st*, i8*, i8*)* noundef %ctrl_str) local_unnamed_addr #9 {
entry:
  %ctrl1 = getelementptr inbounds %struct.evp_pkey_method_st, %struct.evp_pkey_method_st* %pmeth, i64 0, i32 25
  store i32 (%struct.evp_pkey_ctx_st*, i32, i32, i8*)* %ctrl, i32 (%struct.evp_pkey_ctx_st*, i32, i32, i8*)** %ctrl1, align 8, !tbaa !82
  %ctrl_str2 = getelementptr inbounds %struct.evp_pkey_method_st, %struct.evp_pkey_method_st* %pmeth, i64 0, i32 26
  store i32 (%struct.evp_pkey_ctx_st*, i8*, i8*)* %ctrl_str, i32 (%struct.evp_pkey_ctx_st*, i8*, i8*)** %ctrl_str2, align 8, !tbaa !83
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @EVP_PKEY_meth_set_digestsign(%struct.evp_pkey_method_st* nocapture noundef writeonly %pmeth, i32 (%struct.evp_md_ctx_st*, i8*, i64*, i8*, i64)* noundef %digestsign) local_unnamed_addr #9 {
entry:
  %digestsign1 = getelementptr inbounds %struct.evp_pkey_method_st, %struct.evp_pkey_method_st* %pmeth, i64 0, i32 27
  store i32 (%struct.evp_md_ctx_st*, i8*, i64*, i8*, i64)* %digestsign, i32 (%struct.evp_md_ctx_st*, i8*, i64*, i8*, i64)** %digestsign1, align 8, !tbaa !108
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @EVP_PKEY_meth_set_digestverify(%struct.evp_pkey_method_st* nocapture noundef writeonly %pmeth, i32 (%struct.evp_md_ctx_st*, i8*, i64, i8*, i64)* noundef %digestverify) local_unnamed_addr #9 {
entry:
  %digestverify1 = getelementptr inbounds %struct.evp_pkey_method_st, %struct.evp_pkey_method_st* %pmeth, i64 0, i32 28
  store i32 (%struct.evp_md_ctx_st*, i8*, i64, i8*, i64)* %digestverify, i32 (%struct.evp_md_ctx_st*, i8*, i64, i8*, i64)** %digestverify1, align 8, !tbaa !109
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @EVP_PKEY_meth_set_check(%struct.evp_pkey_method_st* nocapture noundef writeonly %pmeth, i32 (%struct.evp_pkey_st*)* noundef %check) local_unnamed_addr #9 {
entry:
  %check1 = getelementptr inbounds %struct.evp_pkey_method_st, %struct.evp_pkey_method_st* %pmeth, i64 0, i32 29
  store i32 (%struct.evp_pkey_st*)* %check, i32 (%struct.evp_pkey_st*)** %check1, align 8, !tbaa !110
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @EVP_PKEY_meth_set_public_check(%struct.evp_pkey_method_st* nocapture noundef writeonly %pmeth, i32 (%struct.evp_pkey_st*)* noundef %check) local_unnamed_addr #9 {
entry:
  %public_check = getelementptr inbounds %struct.evp_pkey_method_st, %struct.evp_pkey_method_st* %pmeth, i64 0, i32 30
  store i32 (%struct.evp_pkey_st*)* %check, i32 (%struct.evp_pkey_st*)** %public_check, align 8, !tbaa !111
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @EVP_PKEY_meth_set_param_check(%struct.evp_pkey_method_st* nocapture noundef writeonly %pmeth, i32 (%struct.evp_pkey_st*)* noundef %check) local_unnamed_addr #9 {
entry:
  %param_check = getelementptr inbounds %struct.evp_pkey_method_st, %struct.evp_pkey_method_st* %pmeth, i64 0, i32 31
  store i32 (%struct.evp_pkey_st*)* %check, i32 (%struct.evp_pkey_st*)** %param_check, align 8, !tbaa !112
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @EVP_PKEY_meth_set_digest_custom(%struct.evp_pkey_method_st* nocapture noundef writeonly %pmeth, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_md_ctx_st*)* noundef %digest_custom) local_unnamed_addr #9 {
entry:
  %digest_custom1 = getelementptr inbounds %struct.evp_pkey_method_st, %struct.evp_pkey_method_st* %pmeth, i64 0, i32 32
  store i32 (%struct.evp_pkey_ctx_st*, %struct.evp_md_ctx_st*)* %digest_custom, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_md_ctx_st*)** %digest_custom1, align 8, !tbaa !81
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define void @EVP_PKEY_meth_get_init(%struct.evp_pkey_method_st* nocapture noundef readonly %pmeth, i32 (%struct.evp_pkey_ctx_st*)** nocapture noundef writeonly %pinit) local_unnamed_addr #4 {
entry:
  %init = getelementptr inbounds %struct.evp_pkey_method_st, %struct.evp_pkey_method_st* %pmeth, i64 0, i32 2
  %0 = load i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*)** %init, align 8, !tbaa !32
  store i32 (%struct.evp_pkey_ctx_st*)* %0, i32 (%struct.evp_pkey_ctx_st*)** %pinit, align 8, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define void @EVP_PKEY_meth_get_copy(%struct.evp_pkey_method_st* nocapture noundef readonly %pmeth, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st*)** nocapture noundef writeonly %pcopy) local_unnamed_addr #4 {
entry:
  %copy = getelementptr inbounds %struct.evp_pkey_method_st, %struct.evp_pkey_method_st* %pmeth, i64 0, i32 3
  %0 = load i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st*)** %copy, align 8, !tbaa !50
  store i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st*)* %0, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st*)** %pcopy, align 8, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define void @EVP_PKEY_meth_get_cleanup(%struct.evp_pkey_method_st* nocapture noundef readonly %pmeth, void (%struct.evp_pkey_ctx_st*)** nocapture noundef writeonly %pcleanup) local_unnamed_addr #4 {
entry:
  %cleanup = getelementptr inbounds %struct.evp_pkey_method_st, %struct.evp_pkey_method_st* %pmeth, i64 0, i32 4
  %0 = load void (%struct.evp_pkey_ctx_st*)*, void (%struct.evp_pkey_ctx_st*)** %cleanup, align 8, !tbaa !41
  store void (%struct.evp_pkey_ctx_st*)* %0, void (%struct.evp_pkey_ctx_st*)** %pcleanup, align 8, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define void @EVP_PKEY_meth_get_paramgen(%struct.evp_pkey_method_st* nocapture noundef readonly %pmeth, i32 (%struct.evp_pkey_ctx_st*)** noundef writeonly %pparamgen_init, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_st*)** noundef writeonly %pparamgen) local_unnamed_addr #4 {
entry:
  %tobool.not = icmp eq i32 (%struct.evp_pkey_ctx_st*)** %pparamgen_init, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %paramgen_init = getelementptr inbounds %struct.evp_pkey_method_st, %struct.evp_pkey_method_st* %pmeth, i64 0, i32 5
  %0 = load i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*)** %paramgen_init, align 8, !tbaa !88
  store i32 (%struct.evp_pkey_ctx_st*)* %0, i32 (%struct.evp_pkey_ctx_st*)** %pparamgen_init, align 8, !tbaa !10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %tobool1.not = icmp eq i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_st*)** %pparamgen, null
  br i1 %tobool1.not, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  %paramgen = getelementptr inbounds %struct.evp_pkey_method_st, %struct.evp_pkey_method_st* %pmeth, i64 0, i32 6
  %1 = load i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_st*)** %paramgen, align 8, !tbaa !89
  store i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_st*)* %1, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_st*)** %pparamgen, align 8, !tbaa !10
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define void @EVP_PKEY_meth_get_keygen(%struct.evp_pkey_method_st* nocapture noundef readonly %pmeth, i32 (%struct.evp_pkey_ctx_st*)** noundef writeonly %pkeygen_init, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_st*)** noundef writeonly %pkeygen) local_unnamed_addr #4 {
entry:
  %tobool.not = icmp eq i32 (%struct.evp_pkey_ctx_st*)** %pkeygen_init, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %keygen_init = getelementptr inbounds %struct.evp_pkey_method_st, %struct.evp_pkey_method_st* %pmeth, i64 0, i32 7
  %0 = load i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*)** %keygen_init, align 8, !tbaa !90
  store i32 (%struct.evp_pkey_ctx_st*)* %0, i32 (%struct.evp_pkey_ctx_st*)** %pkeygen_init, align 8, !tbaa !10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %tobool1.not = icmp eq i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_st*)** %pkeygen, null
  br i1 %tobool1.not, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  %keygen = getelementptr inbounds %struct.evp_pkey_method_st, %struct.evp_pkey_method_st* %pmeth, i64 0, i32 8
  %1 = load i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_st*)** %keygen, align 8, !tbaa !91
  store i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_st*)* %1, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_st*)** %pkeygen, align 8, !tbaa !10
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define void @EVP_PKEY_meth_get_sign(%struct.evp_pkey_method_st* nocapture noundef readonly %pmeth, i32 (%struct.evp_pkey_ctx_st*)** noundef writeonly %psign_init, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)** noundef writeonly %psign) local_unnamed_addr #4 {
entry:
  %tobool.not = icmp eq i32 (%struct.evp_pkey_ctx_st*)** %psign_init, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %sign_init = getelementptr inbounds %struct.evp_pkey_method_st, %struct.evp_pkey_method_st* %pmeth, i64 0, i32 9
  %0 = load i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*)** %sign_init, align 8, !tbaa !92
  store i32 (%struct.evp_pkey_ctx_st*)* %0, i32 (%struct.evp_pkey_ctx_st*)** %psign_init, align 8, !tbaa !10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %tobool1.not = icmp eq i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)** %psign, null
  br i1 %tobool1.not, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  %sign = getelementptr inbounds %struct.evp_pkey_method_st, %struct.evp_pkey_method_st* %pmeth, i64 0, i32 10
  %1 = load i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)** %sign, align 8, !tbaa !93
  store i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)* %1, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)** %psign, align 8, !tbaa !10
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define void @EVP_PKEY_meth_get_verify(%struct.evp_pkey_method_st* nocapture noundef readonly %pmeth, i32 (%struct.evp_pkey_ctx_st*)** noundef writeonly %pverify_init, i32 (%struct.evp_pkey_ctx_st*, i8*, i64, i8*, i64)** noundef writeonly %pverify) local_unnamed_addr #4 {
entry:
  %tobool.not = icmp eq i32 (%struct.evp_pkey_ctx_st*)** %pverify_init, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %verify_init = getelementptr inbounds %struct.evp_pkey_method_st, %struct.evp_pkey_method_st* %pmeth, i64 0, i32 11
  %0 = load i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*)** %verify_init, align 8, !tbaa !94
  store i32 (%struct.evp_pkey_ctx_st*)* %0, i32 (%struct.evp_pkey_ctx_st*)** %pverify_init, align 8, !tbaa !10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %tobool1.not = icmp eq i32 (%struct.evp_pkey_ctx_st*, i8*, i64, i8*, i64)** %pverify, null
  br i1 %tobool1.not, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  %verify = getelementptr inbounds %struct.evp_pkey_method_st, %struct.evp_pkey_method_st* %pmeth, i64 0, i32 12
  %1 = load i32 (%struct.evp_pkey_ctx_st*, i8*, i64, i8*, i64)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64, i8*, i64)** %verify, align 8, !tbaa !95
  store i32 (%struct.evp_pkey_ctx_st*, i8*, i64, i8*, i64)* %1, i32 (%struct.evp_pkey_ctx_st*, i8*, i64, i8*, i64)** %pverify, align 8, !tbaa !10
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define void @EVP_PKEY_meth_get_verify_recover(%struct.evp_pkey_method_st* nocapture noundef readonly %pmeth, i32 (%struct.evp_pkey_ctx_st*)** noundef writeonly %pverify_recover_init, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)** noundef writeonly %pverify_recover) local_unnamed_addr #4 {
entry:
  %tobool.not = icmp eq i32 (%struct.evp_pkey_ctx_st*)** %pverify_recover_init, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %verify_recover_init = getelementptr inbounds %struct.evp_pkey_method_st, %struct.evp_pkey_method_st* %pmeth, i64 0, i32 13
  %0 = load i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*)** %verify_recover_init, align 8, !tbaa !96
  store i32 (%struct.evp_pkey_ctx_st*)* %0, i32 (%struct.evp_pkey_ctx_st*)** %pverify_recover_init, align 8, !tbaa !10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %tobool1.not = icmp eq i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)** %pverify_recover, null
  br i1 %tobool1.not, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  %verify_recover = getelementptr inbounds %struct.evp_pkey_method_st, %struct.evp_pkey_method_st* %pmeth, i64 0, i32 14
  %1 = load i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)** %verify_recover, align 8, !tbaa !97
  store i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)* %1, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)** %pverify_recover, align 8, !tbaa !10
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define void @EVP_PKEY_meth_get_signctx(%struct.evp_pkey_method_st* nocapture noundef readonly %pmeth, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_md_ctx_st*)** noundef writeonly %psignctx_init, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, %struct.evp_md_ctx_st*)** noundef writeonly %psignctx) local_unnamed_addr #4 {
entry:
  %tobool.not = icmp eq i32 (%struct.evp_pkey_ctx_st*, %struct.evp_md_ctx_st*)** %psignctx_init, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %signctx_init = getelementptr inbounds %struct.evp_pkey_method_st, %struct.evp_pkey_method_st* %pmeth, i64 0, i32 15
  %0 = load i32 (%struct.evp_pkey_ctx_st*, %struct.evp_md_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_md_ctx_st*)** %signctx_init, align 8, !tbaa !98
  store i32 (%struct.evp_pkey_ctx_st*, %struct.evp_md_ctx_st*)* %0, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_md_ctx_st*)** %psignctx_init, align 8, !tbaa !10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %tobool1.not = icmp eq i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, %struct.evp_md_ctx_st*)** %psignctx, null
  br i1 %tobool1.not, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  %signctx = getelementptr inbounds %struct.evp_pkey_method_st, %struct.evp_pkey_method_st* %pmeth, i64 0, i32 16
  %1 = load i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, %struct.evp_md_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, %struct.evp_md_ctx_st*)** %signctx, align 8, !tbaa !99
  store i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, %struct.evp_md_ctx_st*)* %1, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, %struct.evp_md_ctx_st*)** %psignctx, align 8, !tbaa !10
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define void @EVP_PKEY_meth_get_verifyctx(%struct.evp_pkey_method_st* nocapture noundef readonly %pmeth, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_md_ctx_st*)** noundef writeonly %pverifyctx_init, i32 (%struct.evp_pkey_ctx_st*, i8*, i32, %struct.evp_md_ctx_st*)** noundef writeonly %pverifyctx) local_unnamed_addr #4 {
entry:
  %tobool.not = icmp eq i32 (%struct.evp_pkey_ctx_st*, %struct.evp_md_ctx_st*)** %pverifyctx_init, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %verifyctx_init = getelementptr inbounds %struct.evp_pkey_method_st, %struct.evp_pkey_method_st* %pmeth, i64 0, i32 17
  %0 = load i32 (%struct.evp_pkey_ctx_st*, %struct.evp_md_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_md_ctx_st*)** %verifyctx_init, align 8, !tbaa !100
  store i32 (%struct.evp_pkey_ctx_st*, %struct.evp_md_ctx_st*)* %0, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_md_ctx_st*)** %pverifyctx_init, align 8, !tbaa !10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %tobool1.not = icmp eq i32 (%struct.evp_pkey_ctx_st*, i8*, i32, %struct.evp_md_ctx_st*)** %pverifyctx, null
  br i1 %tobool1.not, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  %verifyctx = getelementptr inbounds %struct.evp_pkey_method_st, %struct.evp_pkey_method_st* %pmeth, i64 0, i32 18
  %1 = load i32 (%struct.evp_pkey_ctx_st*, i8*, i32, %struct.evp_md_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i32, %struct.evp_md_ctx_st*)** %verifyctx, align 8, !tbaa !101
  store i32 (%struct.evp_pkey_ctx_st*, i8*, i32, %struct.evp_md_ctx_st*)* %1, i32 (%struct.evp_pkey_ctx_st*, i8*, i32, %struct.evp_md_ctx_st*)** %pverifyctx, align 8, !tbaa !10
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define void @EVP_PKEY_meth_get_encrypt(%struct.evp_pkey_method_st* nocapture noundef readonly %pmeth, i32 (%struct.evp_pkey_ctx_st*)** noundef writeonly %pencrypt_init, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)** noundef writeonly %pencryptfn) local_unnamed_addr #4 {
entry:
  %tobool.not = icmp eq i32 (%struct.evp_pkey_ctx_st*)** %pencrypt_init, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %encrypt_init = getelementptr inbounds %struct.evp_pkey_method_st, %struct.evp_pkey_method_st* %pmeth, i64 0, i32 19
  %0 = load i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*)** %encrypt_init, align 8, !tbaa !102
  store i32 (%struct.evp_pkey_ctx_st*)* %0, i32 (%struct.evp_pkey_ctx_st*)** %pencrypt_init, align 8, !tbaa !10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %tobool1.not = icmp eq i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)** %pencryptfn, null
  br i1 %tobool1.not, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  %encrypt = getelementptr inbounds %struct.evp_pkey_method_st, %struct.evp_pkey_method_st* %pmeth, i64 0, i32 20
  %1 = load i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)** %encrypt, align 8, !tbaa !103
  store i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)* %1, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)** %pencryptfn, align 8, !tbaa !10
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define void @EVP_PKEY_meth_get_decrypt(%struct.evp_pkey_method_st* nocapture noundef readonly %pmeth, i32 (%struct.evp_pkey_ctx_st*)** noundef writeonly %pdecrypt_init, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)** noundef writeonly %pdecrypt) local_unnamed_addr #4 {
entry:
  %tobool.not = icmp eq i32 (%struct.evp_pkey_ctx_st*)** %pdecrypt_init, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %decrypt_init = getelementptr inbounds %struct.evp_pkey_method_st, %struct.evp_pkey_method_st* %pmeth, i64 0, i32 21
  %0 = load i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*)** %decrypt_init, align 8, !tbaa !104
  store i32 (%struct.evp_pkey_ctx_st*)* %0, i32 (%struct.evp_pkey_ctx_st*)** %pdecrypt_init, align 8, !tbaa !10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %tobool1.not = icmp eq i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)** %pdecrypt, null
  br i1 %tobool1.not, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  %decrypt = getelementptr inbounds %struct.evp_pkey_method_st, %struct.evp_pkey_method_st* %pmeth, i64 0, i32 22
  %1 = load i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)** %decrypt, align 8, !tbaa !105
  store i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)* %1, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)** %pdecrypt, align 8, !tbaa !10
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define void @EVP_PKEY_meth_get_derive(%struct.evp_pkey_method_st* nocapture noundef readonly %pmeth, i32 (%struct.evp_pkey_ctx_st*)** noundef writeonly %pderive_init, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*)** noundef writeonly %pderive) local_unnamed_addr #4 {
entry:
  %tobool.not = icmp eq i32 (%struct.evp_pkey_ctx_st*)** %pderive_init, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %derive_init = getelementptr inbounds %struct.evp_pkey_method_st, %struct.evp_pkey_method_st* %pmeth, i64 0, i32 23
  %0 = load i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*)** %derive_init, align 8, !tbaa !106
  store i32 (%struct.evp_pkey_ctx_st*)* %0, i32 (%struct.evp_pkey_ctx_st*)** %pderive_init, align 8, !tbaa !10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %tobool1.not = icmp eq i32 (%struct.evp_pkey_ctx_st*, i8*, i64*)** %pderive, null
  br i1 %tobool1.not, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  %derive = getelementptr inbounds %struct.evp_pkey_method_st, %struct.evp_pkey_method_st* %pmeth, i64 0, i32 24
  %1 = load i32 (%struct.evp_pkey_ctx_st*, i8*, i64*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*)** %derive, align 8, !tbaa !107
  store i32 (%struct.evp_pkey_ctx_st*, i8*, i64*)* %1, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*)** %pderive, align 8, !tbaa !10
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define void @EVP_PKEY_meth_get_ctrl(%struct.evp_pkey_method_st* nocapture noundef readonly %pmeth, i32 (%struct.evp_pkey_ctx_st*, i32, i32, i8*)** noundef writeonly %pctrl, i32 (%struct.evp_pkey_ctx_st*, i8*, i8*)** noundef writeonly %pctrl_str) local_unnamed_addr #4 {
entry:
  %tobool.not = icmp eq i32 (%struct.evp_pkey_ctx_st*, i32, i32, i8*)** %pctrl, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %ctrl = getelementptr inbounds %struct.evp_pkey_method_st, %struct.evp_pkey_method_st* %pmeth, i64 0, i32 25
  %0 = load i32 (%struct.evp_pkey_ctx_st*, i32, i32, i8*)*, i32 (%struct.evp_pkey_ctx_st*, i32, i32, i8*)** %ctrl, align 8, !tbaa !82
  store i32 (%struct.evp_pkey_ctx_st*, i32, i32, i8*)* %0, i32 (%struct.evp_pkey_ctx_st*, i32, i32, i8*)** %pctrl, align 8, !tbaa !10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %tobool1.not = icmp eq i32 (%struct.evp_pkey_ctx_st*, i8*, i8*)** %pctrl_str, null
  br i1 %tobool1.not, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  %ctrl_str = getelementptr inbounds %struct.evp_pkey_method_st, %struct.evp_pkey_method_st* %pmeth, i64 0, i32 26
  %1 = load i32 (%struct.evp_pkey_ctx_st*, i8*, i8*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i8*)** %ctrl_str, align 8, !tbaa !83
  store i32 (%struct.evp_pkey_ctx_st*, i8*, i8*)* %1, i32 (%struct.evp_pkey_ctx_st*, i8*, i8*)** %pctrl_str, align 8, !tbaa !10
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define void @EVP_PKEY_meth_get_digestsign(%struct.evp_pkey_method_st* nocapture noundef readonly %pmeth, i32 (%struct.evp_md_ctx_st*, i8*, i64*, i8*, i64)** noundef writeonly %digestsign) local_unnamed_addr #4 {
entry:
  %tobool.not = icmp eq i32 (%struct.evp_md_ctx_st*, i8*, i64*, i8*, i64)** %digestsign, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %digestsign1 = getelementptr inbounds %struct.evp_pkey_method_st, %struct.evp_pkey_method_st* %pmeth, i64 0, i32 27
  %0 = load i32 (%struct.evp_md_ctx_st*, i8*, i64*, i8*, i64)*, i32 (%struct.evp_md_ctx_st*, i8*, i64*, i8*, i64)** %digestsign1, align 8, !tbaa !108
  store i32 (%struct.evp_md_ctx_st*, i8*, i64*, i8*, i64)* %0, i32 (%struct.evp_md_ctx_st*, i8*, i64*, i8*, i64)** %digestsign, align 8, !tbaa !10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define void @EVP_PKEY_meth_get_digestverify(%struct.evp_pkey_method_st* nocapture noundef readonly %pmeth, i32 (%struct.evp_md_ctx_st*, i8*, i64, i8*, i64)** noundef writeonly %digestverify) local_unnamed_addr #4 {
entry:
  %tobool.not = icmp eq i32 (%struct.evp_md_ctx_st*, i8*, i64, i8*, i64)** %digestverify, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %digestverify1 = getelementptr inbounds %struct.evp_pkey_method_st, %struct.evp_pkey_method_st* %pmeth, i64 0, i32 28
  %0 = load i32 (%struct.evp_md_ctx_st*, i8*, i64, i8*, i64)*, i32 (%struct.evp_md_ctx_st*, i8*, i64, i8*, i64)** %digestverify1, align 8, !tbaa !109
  store i32 (%struct.evp_md_ctx_st*, i8*, i64, i8*, i64)* %0, i32 (%struct.evp_md_ctx_st*, i8*, i64, i8*, i64)** %digestverify, align 8, !tbaa !10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define void @EVP_PKEY_meth_get_check(%struct.evp_pkey_method_st* nocapture noundef readonly %pmeth, i32 (%struct.evp_pkey_st*)** noundef writeonly %pcheck) local_unnamed_addr #4 {
entry:
  %cmp.not = icmp eq i32 (%struct.evp_pkey_st*)** %pcheck, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %check = getelementptr inbounds %struct.evp_pkey_method_st, %struct.evp_pkey_method_st* %pmeth, i64 0, i32 29
  %0 = load i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)** %check, align 8, !tbaa !110
  store i32 (%struct.evp_pkey_st*)* %0, i32 (%struct.evp_pkey_st*)** %pcheck, align 8, !tbaa !10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define void @EVP_PKEY_meth_get_public_check(%struct.evp_pkey_method_st* nocapture noundef readonly %pmeth, i32 (%struct.evp_pkey_st*)** noundef writeonly %pcheck) local_unnamed_addr #4 {
entry:
  %cmp.not = icmp eq i32 (%struct.evp_pkey_st*)** %pcheck, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %public_check = getelementptr inbounds %struct.evp_pkey_method_st, %struct.evp_pkey_method_st* %pmeth, i64 0, i32 30
  %0 = load i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)** %public_check, align 8, !tbaa !111
  store i32 (%struct.evp_pkey_st*)* %0, i32 (%struct.evp_pkey_st*)** %pcheck, align 8, !tbaa !10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define void @EVP_PKEY_meth_get_param_check(%struct.evp_pkey_method_st* nocapture noundef readonly %pmeth, i32 (%struct.evp_pkey_st*)** noundef writeonly %pcheck) local_unnamed_addr #4 {
entry:
  %cmp.not = icmp eq i32 (%struct.evp_pkey_st*)** %pcheck, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %param_check = getelementptr inbounds %struct.evp_pkey_method_st, %struct.evp_pkey_method_st* %pmeth, i64 0, i32 31
  %0 = load i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)** %param_check, align 8, !tbaa !112
  store i32 (%struct.evp_pkey_st*)* %0, i32 (%struct.evp_pkey_st*)** %pcheck, align 8, !tbaa !10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define void @EVP_PKEY_meth_get_digest_custom(%struct.evp_pkey_method_st* nocapture noundef readonly %pmeth, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_md_ctx_st*)** noundef writeonly %pdigest_custom) local_unnamed_addr #4 {
entry:
  %cmp.not = icmp eq i32 (%struct.evp_pkey_ctx_st*, %struct.evp_md_ctx_st*)** %pdigest_custom, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %digest_custom = getelementptr inbounds %struct.evp_pkey_method_st, %struct.evp_pkey_method_st* %pmeth, i64 0, i32 32
  %0 = load i32 (%struct.evp_pkey_ctx_st*, %struct.evp_md_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_md_ctx_st*)** %digest_custom, align 8, !tbaa !81
  store i32 (%struct.evp_pkey_ctx_st*, %struct.evp_md_ctx_st*)* %0, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_md_ctx_st*)** %pdigest_custom, align 8, !tbaa !10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @sk_EVP_PKEY_METHOD_find(%struct.stack_st_EVP_PKEY_METHOD* noundef %sk, %struct.evp_pkey_method_st* noundef %ptr) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_EVP_PKEY_METHOD* %sk to %struct.stack_st*
  %1 = bitcast %struct.evp_pkey_method_st* %ptr to i8*
  %call = tail call i32 @OPENSSL_sk_find(%struct.stack_st* noundef %0, i8* noundef %1) #14
  ret i32 %call
}

declare i32 @OPENSSL_sk_find(%struct.stack_st* noundef, i8* noundef) local_unnamed_addr #2

declare i8* @OBJ_bsearch_(i8* noundef, i8* noundef, i32 noundef, i32 noundef, i32 (i8*, i8*)* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @pmeth_func_cmp_BSEARCH_CMP_FN(i8* nocapture noundef readonly %a_, i8* nocapture noundef readonly %b_) #0 {
entry:
  %0 = bitcast i8* %a_ to %struct.evp_pkey_method_st**
  %1 = bitcast i8* %b_ to %struct.evp_pkey_method_st* ()**
  %call = tail call fastcc i32 @pmeth_func_cmp(%struct.evp_pkey_method_st** noundef %0, %struct.evp_pkey_method_st* ()** noundef %1) #13
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @pmeth_func_cmp(%struct.evp_pkey_method_st** nocapture noundef readonly %a, %struct.evp_pkey_method_st* ()** nocapture noundef readonly %b) unnamed_addr #0 {
entry:
  %0 = load %struct.evp_pkey_method_st*, %struct.evp_pkey_method_st** %a, align 8, !tbaa !10
  %pkey_id = getelementptr inbounds %struct.evp_pkey_method_st, %struct.evp_pkey_method_st* %0, i64 0, i32 0
  %1 = load i32, i32* %pkey_id, align 8, !tbaa !4
  %2 = load %struct.evp_pkey_method_st* ()*, %struct.evp_pkey_method_st* ()** %b, align 8, !tbaa !10
  %call = tail call %struct.evp_pkey_method_st* %2() #14
  %pkey_id1 = getelementptr inbounds %struct.evp_pkey_method_st, %struct.evp_pkey_method_st* %call, i64 0, i32 0
  %3 = load i32, i32* %pkey_id1, align 8, !tbaa !4
  %sub = sub nsw i32 %1, %3
  ret i32 %sub
}

declare %struct.evp_pkey_method_st* @ossl_rsa_pkey_method() #2

declare %struct.evp_pkey_method_st* @ossl_dh_pkey_method() #2

declare %struct.evp_pkey_method_st* @ossl_dsa_pkey_method() #2

declare %struct.evp_pkey_method_st* @ossl_ec_pkey_method() #2

declare %struct.evp_pkey_method_st* @ossl_rsa_pss_pkey_method() #2

declare %struct.evp_pkey_method_st* @ossl_dhx_pkey_method() #2

declare %struct.evp_pkey_method_st* @ossl_ecx25519_pkey_method() #2

declare %struct.evp_pkey_method_st* @ossl_ecx448_pkey_method() #2

declare %struct.evp_pkey_method_st* @ossl_ed25519_pkey_method() #2

declare %struct.evp_pkey_method_st* @ossl_ed448_pkey_method() #2

declare i8* @EVP_KEYMGMT_get0_name(%struct.evp_keymgmt_st* noundef) local_unnamed_addr #2

declare i8* @OBJ_nid2sn(i32 noundef) local_unnamed_addr #2

declare %struct.engine_st* @ENGINE_get_pkey_meth_engine(i32 noundef) local_unnamed_addr #2

declare %struct.evp_pkey_method_st* @ENGINE_get_pkey_meth(%struct.engine_st* noundef, i32 noundef) local_unnamed_addr #2

declare %struct.evp_keymgmt_st* @EVP_KEYMGMT_fetch(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @get_legacy_alg_type_from_keymgmt(%struct.evp_keymgmt_st* noundef %keymgmt) unnamed_addr #0 {
entry:
  %type = alloca i32, align 4
  %0 = bitcast i32* %type to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #12
  store i32 0, i32* %type, align 4, !tbaa !44
  %call = call i32 @EVP_KEYMGMT_names_do_all(%struct.evp_keymgmt_st* noundef %keymgmt, void (i8*, i8*)* noundef nonnull @help_get_legacy_alg_type_from_keymgmt, i8* noundef nonnull %0) #14
  %1 = load i32, i32* %type, align 4, !tbaa !44
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #12
  ret i32 %1
}

declare i32 @EVP_KEYMGMT_names_do_all(%struct.evp_keymgmt_st* noundef, void (i8*, i8*)* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal void @help_get_legacy_alg_type_from_keymgmt(i8* noundef %keytype, i8* nocapture noundef %arg) #0 {
entry:
  %0 = bitcast i8* %arg to i32*
  %1 = load i32, i32* %0, align 4, !tbaa !44
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = tail call i32 @evp_pkey_name2type(i8* noundef %keytype) #14
  store i32 %call, i32* %0, align 4, !tbaa !44
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare %struct.stack_st* @OPENSSL_sk_new(i32 (i8*, i8*)* noundef) local_unnamed_addr #2

declare i32 @OPENSSL_sk_push(%struct.stack_st* noundef, i8* noundef) local_unnamed_addr #2

declare void @OPENSSL_sk_sort(%struct.stack_st* noundef) local_unnamed_addr #2

declare void @OPENSSL_sk_pop_free(%struct.stack_st* noundef, void (i8*)* noundef) local_unnamed_addr #2

declare i8* @OPENSSL_sk_delete_ptr(%struct.stack_st* noundef, i8* noundef) local_unnamed_addr #2

declare i32 @OPENSSL_sk_num(%struct.stack_st* noundef) local_unnamed_addr #2

declare i8* @OPENSSL_sk_value(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #2

declare i8* @EVP_MD_get0_name(%struct.evp_md_st* noundef) local_unnamed_addr #2

declare void @OSSL_PARAM_construct_uint64(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8, i8* noundef, i64* noundef) local_unnamed_addr #2

declare void @OSSL_PARAM_construct_octet_ptr(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8, i8* noundef, i8** noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #10

declare i32 @evp_pkey_ctx_ctrl_to_param(%struct.evp_pkey_ctx_st* noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare i32 @evp_pkey_ctx_ctrl_str_to_param(%struct.evp_pkey_ctx_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @strcmp(i8* noundef, i8* noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree noinline nounwind readonly uwtable willreturn
define internal fastcc i32 @decode_cmd(i32 noundef %cmd, i8* noundef readonly %name) unnamed_addr #11 {
entry:
  %cmp = icmp eq i32 %cmd, -1
  br i1 %cmp, label %if.then, label %if.end12

if.then:                                          ; preds = %entry
  %cmp1.not = icmp eq i8* %name, null
  br i1 %cmp1.not, label %if.end12, label %if.then4

if.then4:                                         ; preds = %if.then
  %call = tail call i32 @strcmp(i8* noundef nonnull %name, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0)) #15
  %cmp5 = icmp eq i32 %call, 0
  br i1 %cmp5, label %if.then10, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then4
  %call7 = tail call i32 @strcmp(i8* noundef nonnull %name, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i64 0, i64 0)) #15
  %cmp8 = icmp eq i32 %call7, 0
  br i1 %cmp8, label %if.then10, label %if.end12

if.then10:                                        ; preds = %lor.lhs.false, %if.then4
  br label %if.end12

if.end12:                                         ; preds = %if.then, %if.then10, %lor.lhs.false, %entry
  %cmd.addr.0 = phi i32 [ 15, %if.then10 ], [ -1, %lor.lhs.false ], [ -1, %if.then ], [ %cmd, %entry ]
  ret i32 %cmd.addr.0
}

declare i8* @evp_pkey_type2name(i32 noundef) local_unnamed_addr #2

declare i32 @EVP_PKEY_type(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @evp_pkey_ctx_free_cached_data(%struct.evp_pkey_ctx_st* nocapture noundef %ctx, i8* noundef readonly %name) unnamed_addr #0 {
entry:
  %call = tail call fastcc i32 @decode_cmd(i32 noundef 15, i8* noundef %name) #13
  %cond = icmp eq i32 %call, 15
  br i1 %cond, label %sw.bb, label %sw.epilog

sw.bb:                                            ; preds = %entry
  %dist_id = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 6, i32 1
  %0 = load i8*, i8** %dist_id, align 8, !tbaa !79
  tail call void @CRYPTO_free(i8* noundef %0, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 1500) #14
  %dist_id_name = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 6, i32 0
  %1 = load i8*, i8** %dist_id_name, align 8, !tbaa !78
  tail call void @CRYPTO_free(i8* noundef %1, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 1501) #14
  %2 = bitcast i8** %dist_id_name to <2 x i8*>*
  store <2 x i8*> zeroinitializer, <2 x i8*>* %2, align 8, !tbaa !10
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb
  ret void
}

declare i8* @CRYPTO_memdup(i8* noundef, i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #7 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #8 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind }
attributes #13 = { nobuiltin "no-builtins" }
attributes #14 = { nobuiltin nounwind "no-builtins" }
attributes #15 = { nobuiltin nounwind readonly willreturn "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !6, i64 0}
!5 = !{!"evp_pkey_method_st", !6, i64 0, !6, i64 4, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !9, i64 64, !9, i64 72, !9, i64 80, !9, i64 88, !9, i64 96, !9, i64 104, !9, i64 112, !9, i64 120, !9, i64 128, !9, i64 136, !9, i64 144, !9, i64 152, !9, i64 160, !9, i64 168, !9, i64 176, !9, i64 184, !9, i64 192, !9, i64 200, !9, i64 208, !9, i64 216, !9, i64 224, !9, i64 232, !9, i64 240, !9, i64 248}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"any pointer", !7, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!5, !6, i64 4}
!12 = !{!13, !6, i64 0}
!13 = !{!"evp_pkey_ctx_st", !6, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !7, i64 40, !14, i64 56, !9, i64 88, !9, i64 96, !9, i64 104, !6, i64 112, !6, i64 116, !9, i64 120, !9, i64 128, !9, i64 136, !9, i64 144, !9, i64 152, !6, i64 160, !9, i64 168}
!14 = !{!"", !9, i64 0, !9, i64 8, !15, i64 16, !6, i64 24}
!15 = !{!"long", !7, i64 0}
!16 = !{!7, !7, i64 0}
!17 = !{!18, !9, i64 96}
!18 = !{!"evp_pkey_st", !6, i64 0, !6, i64 4, !9, i64 8, !9, i64 16, !9, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !9, i64 56, !9, i64 64, !6, i64 72, !6, i64 76, !19, i64 80, !9, i64 96, !9, i64 104, !15, i64 112, !9, i64 120, !15, i64 128, !20, i64 136}
!19 = !{!"crypto_ex_data_st", !9, i64 0, !9, i64 8}
!20 = !{!"", !6, i64 0, !6, i64 4, !6, i64 8}
!21 = !{!18, !6, i64 0}
!22 = !{!18, !9, i64 24}
!23 = !{!18, !9, i64 16}
!24 = !{!13, !9, i64 16}
!25 = !{!13, !9, i64 8}
!26 = !{!13, !9, i64 24}
!27 = !{!13, !9, i64 32}
!28 = !{!13, !6, i64 116}
!29 = !{!13, !9, i64 128}
!30 = !{!13, !9, i64 120}
!31 = !{!13, !9, i64 136}
!32 = !{!5, !9, i64 8}
!33 = !{!34, !9, i64 168}
!34 = !{!"evp_signature_st", !6, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !7, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !9, i64 64, !9, i64 72, !9, i64 80, !9, i64 88, !9, i64 96, !9, i64 104, !9, i64 112, !9, i64 120, !9, i64 128, !9, i64 136, !9, i64 144, !9, i64 152, !9, i64 160, !9, i64 168, !9, i64 176, !9, i64 184, !9, i64 192, !9, i64 200, !9, i64 208, !9, i64 216, !9, i64 224, !9, i64 232, !9, i64 240}
!35 = !{!36, !9, i64 80}
!36 = !{!"evp_keyexch_st", !6, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !7, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !9, i64 64, !9, i64 72, !9, i64 80, !9, i64 88, !9, i64 96, !9, i64 104, !9, i64 112, !9, i64 120}
!37 = !{!38, !9, i64 88}
!38 = !{!"evp_kem_st", !6, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !7, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !9, i64 64, !9, i64 72, !9, i64 80, !9, i64 88, !9, i64 96, !9, i64 104, !9, i64 112, !9, i64 120, !9, i64 128}
!39 = !{!40, !9, i64 88}
!40 = !{!"evp_asym_cipher_st", !6, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !7, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !9, i64 64, !9, i64 72, !9, i64 80, !9, i64 88, !9, i64 96, !9, i64 104, !9, i64 112, !9, i64 120, !9, i64 128}
!41 = !{!5, !9, i64 24}
!42 = !{!13, !9, i64 144}
!43 = !{!13, !9, i64 168}
!44 = !{!6, !6, i64 0}
!45 = !{i64 0, i64 4, !44, i64 4, i64 4, !44, i64 8, i64 8, !10, i64 16, i64 8, !10, i64 24, i64 8, !10, i64 32, i64 8, !10, i64 40, i64 8, !10, i64 48, i64 8, !10, i64 56, i64 8, !10, i64 64, i64 8, !10, i64 72, i64 8, !10, i64 80, i64 8, !10, i64 88, i64 8, !10, i64 96, i64 8, !10, i64 104, i64 8, !10, i64 112, i64 8, !10, i64 120, i64 8, !10, i64 128, i64 8, !10, i64 136, i64 8, !10, i64 144, i64 8, !10, i64 152, i64 8, !10, i64 160, i64 8, !10, i64 168, i64 8, !10, i64 176, i64 8, !10, i64 184, i64 8, !10, i64 192, i64 8, !10, i64 200, i64 8, !10, i64 208, i64 8, !10, i64 216, i64 8, !10, i64 224, i64 8, !10, i64 232, i64 8, !10, i64 240, i64 8, !10, i64 248, i64 8, !10}
!46 = !{!36, !9, i64 88}
!47 = !{!34, !9, i64 176}
!48 = !{!40, !9, i64 96}
!49 = !{!38, !9, i64 96}
!50 = !{!5, !9, i64 16}
!51 = !{!36, !9, i64 96}
!52 = !{!34, !9, i64 200}
!53 = !{!40, !9, i64 120}
!54 = !{!55, !9, i64 112}
!55 = !{!"evp_keymgmt_st", !6, i64 0, !6, i64 4, !9, i64 8, !9, i64 16, !9, i64 24, !7, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !9, i64 64, !9, i64 72, !9, i64 80, !9, i64 88, !9, i64 96, !9, i64 104, !9, i64 112, !9, i64 120, !9, i64 128, !9, i64 136, !9, i64 144, !9, i64 152, !9, i64 160, !9, i64 168, !9, i64 176, !9, i64 184, !9, i64 192, !9, i64 200, !9, i64 208, !9, i64 216}
!56 = !{!38, !9, i64 120}
!57 = !{!36, !9, i64 112}
!58 = !{!34, !9, i64 184}
!59 = !{!40, !9, i64 104}
!60 = !{!38, !9, i64 104}
!61 = !{!36, !9, i64 120}
!62 = !{!34, !9, i64 192}
!63 = !{!40, !9, i64 112}
!64 = !{!38, !9, i64 112}
!65 = !{!36, !9, i64 104}
!66 = !{!34, !9, i64 208}
!67 = !{!40, !9, i64 128}
!68 = !{!55, !9, i64 120}
!69 = !{!38, !9, i64 128}
!70 = !{!71, !9, i64 0}
!71 = !{!"ossl_param_st", !9, i64 0, !6, i64 8, !9, i64 16, !15, i64 24, !15, i64 32}
!72 = distinct !{!72, !73}
!73 = !{!"llvm.loop.mustprogress"}
!74 = distinct !{!74, !73}
!75 = !{i64 0, i64 8, !10, i64 8, i64 4, !44, i64 16, i64 8, !10, i64 24, i64 8, !76, i64 32, i64 8, !76}
!76 = !{!15, !15, i64 0}
!77 = !{!71, !15, i64 32}
!78 = !{!13, !9, i64 56}
!79 = !{!13, !9, i64 64}
!80 = !{!13, !15, i64 72}
!81 = !{!5, !9, i64 248}
!82 = !{!5, !9, i64 192}
!83 = !{!5, !9, i64 200}
!84 = !{!13, !9, i64 104}
!85 = !{!13, !6, i64 112}
!86 = !{!13, !9, i64 152}
!87 = !{!13, !9, i64 88}
!88 = !{!5, !9, i64 32}
!89 = !{!5, !9, i64 40}
!90 = !{!5, !9, i64 48}
!91 = !{!5, !9, i64 56}
!92 = !{!5, !9, i64 64}
!93 = !{!5, !9, i64 72}
!94 = !{!5, !9, i64 80}
!95 = !{!5, !9, i64 88}
!96 = !{!5, !9, i64 96}
!97 = !{!5, !9, i64 104}
!98 = !{!5, !9, i64 112}
!99 = !{!5, !9, i64 120}
!100 = !{!5, !9, i64 128}
!101 = !{!5, !9, i64 136}
!102 = !{!5, !9, i64 144}
!103 = !{!5, !9, i64 152}
!104 = !{!5, !9, i64 160}
!105 = !{!5, !9, i64 168}
!106 = !{!5, !9, i64 176}
!107 = !{!5, !9, i64 184}
!108 = !{!5, !9, i64 208}
!109 = !{!5, !9, i64 216}
!110 = !{!5, !9, i64 224}
!111 = !{!5, !9, i64 232}
!112 = !{!5, !9, i64 240}
