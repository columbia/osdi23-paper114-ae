; ModuleID = 'crypto/evp/evp_lib.c'
source_filename = "crypto/evp/evp_lib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evp_cipher_ctx_st = type { %struct.evp_cipher_st*, %struct.engine_st*, i32, i32, [16 x i8], [16 x i8], [32 x i8], i32, i8*, i32, i64, i8*, i32, i32, [32 x i8], i8*, %struct.evp_cipher_st* }
%struct.engine_st = type opaque
%struct.evp_cipher_st = type { i32, i32, i32, i32, i64, i32, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)*, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)*, i32 (%struct.evp_cipher_ctx_st*)*, i32, {}*, {}*, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)*, i8*, i32, i8*, i8*, %struct.ossl_provider_st*, i32, i8*, i8* (i8*)*, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)*, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)*, i32 (i8*, i8*, i64*, i64, i8*, i64)*, i32 (i8*, i8*, i64*, i64)*, i32 (i8*, i8*, i64*, i64, i8*, i64)*, void (i8*)*, i8* (i8*)*, i32 (%struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i8*)*, %struct.ossl_param_st* (i8*, i8*)*, %struct.ossl_param_st* (i8*, i8*)* }
%struct.ossl_provider_st = type opaque
%struct.ossl_param_st = type { i8*, i32, i8*, i64, i64 }
%struct.asn1_type_st = type { i32, %union.anon }
%union.anon = type { i8* }
%struct.evp_cipher_aead_asn1_params = type { [16 x i8], i32, i32 }
%struct.asn1_object_st = type { i8*, i8*, i32, i32, i8*, i32 }
%struct.evp_md_st = type { i32, i32, i32, i64, i32, i32 (%struct.evp_md_ctx_st*)*, i32 (%struct.evp_md_ctx_st*, i8*, i64)*, i32 (%struct.evp_md_ctx_st*, i8*)*, i32 (%struct.evp_md_ctx_st*, %struct.evp_md_ctx_st*)*, i32 (%struct.evp_md_ctx_st*)*, i32, i32, i32 (%struct.evp_md_ctx_st*, i32, i32, i8*)*, i32, i8*, i8*, %struct.ossl_provider_st*, i32, i8*, i8* (i8*)*, i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64*, i64)*, i32 (i8*, i8*, i64, i8*, i64*, i64)*, void (i8*)*, i8* (i8*)*, i32 (%struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i8*)*, %struct.ossl_param_st* (i8*, i8*)*, %struct.ossl_param_st* (i8*, i8*)* }
%struct.evp_md_ctx_st = type { %struct.evp_md_st*, %struct.evp_md_st*, %struct.engine_st*, i64, i8*, %struct.evp_pkey_ctx_st*, i32 (%struct.evp_md_ctx_st*, i8*, i64)*, i8*, %struct.evp_md_st* }
%struct.evp_pkey_ctx_st = type { i32, %struct.ossl_lib_ctx_st*, i8*, i8*, %struct.evp_keymgmt_st*, %union.anon.0, %struct.anon.5, i8*, i32 (%struct.evp_pkey_ctx_st*)*, i32*, i32, i32, %struct.evp_pkey_method_st*, %struct.engine_st*, %struct.evp_pkey_st*, %struct.evp_pkey_st*, i8*, i8, %struct.bignum_st* }
%struct.ossl_lib_ctx_st = type opaque
%struct.evp_keymgmt_st = type { i32, i32, i8*, i8*, %struct.ossl_provider_st*, i32, i8*, i8* (i8*)*, void (i8*)*, i32 (i8*, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i8*)*, i32 (i8*, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i8*)*, i8* (i8*, i32, %struct.ossl_param_st*)*, i32 (i8*, i8*)*, i32 (i8*, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i8*, i8*)*, i8* (i8*, i32 (%struct.ossl_param_st*, i8*)*, i8*)*, void (i8*)*, i8* (i8*, i64)*, i8* (i32)*, i32 (i8*, i32)*, i32 (i8*, i32, i32)*, i32 (i8*, i8*, i32)*, i32 (i8*, i32, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i32)*, i32 (i8*, i32, i32 (%struct.ossl_param_st*, i8*)*, i8*)*, %struct.ossl_param_st* (i32)*, i8* (i8*, i32)* }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { %struct.evp_keyexch_st*, i8* }
%struct.evp_keyexch_st = type { i32, i8*, i8*, %struct.ossl_provider_st*, i32, i8*, i8* (i8*)*, i32 (i8*, i8*, %struct.ossl_param_st*)*, i32 (i8*, i8*)*, i32 (i8*, i8*, i64*, i64)*, void (i8*)*, i8* (i8*)*, i32 (i8*, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i8*, i8*)*, i32 (i8*, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i8*, i8*)* }
%struct.anon.5 = type { i8*, i8*, i64, i8 }
%struct.evp_pkey_method_st = type { i32, i32, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st*)*, void (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64, i8*, i64)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_md_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, %struct.evp_md_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_md_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i32, %struct.evp_md_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*)*, i32 (%struct.evp_pkey_ctx_st*, i32, i32, i8*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i8*)*, i32 (%struct.evp_md_ctx_st*, i8*, i64*, i8*, i64)*, i32 (%struct.evp_md_ctx_st*, i8*, i64, i8*, i64)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_md_ctx_st*)* }
%struct.evp_pkey_st = type { i32, i32, %struct.evp_pkey_asn1_method_st*, %struct.engine_st*, %struct.engine_st*, %union.legacy_pkey_st, %union.legacy_pkey_st, i32, i8*, %struct.stack_st_X509_ATTRIBUTE*, i32, i8, %struct.crypto_ex_data_st, %struct.evp_keymgmt_st*, i8*, i64, %struct.stack_st_OP_CACHE_ELEM*, i64, %struct.anon.6 }
%struct.evp_pkey_asn1_method_st = type { i32, i32, i64, i8*, i8*, i32 (%struct.evp_pkey_st*, %struct.X509_pubkey_st*)*, i32 (%struct.X509_pubkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)*, i32 (%struct.evp_pkey_st*, %struct.pkcs8_priv_key_info_st*)*, i32 (%struct.pkcs8_priv_key_info_st*, %struct.evp_pkey_st*)*, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, i8**, i32)*, i32 (%struct.evp_pkey_st*, i8**)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)*, i32 (%struct.bio_st*, %struct.X509_algor_st*, %struct.asn1_string_st*, i32, %struct.asn1_pctx_st*)*, void (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, i32, i64, i8*)*, i32 (%struct.evp_pkey_st*, i8**, i32)*, i32 (%struct.evp_pkey_st*, i8**)*, i32 (%struct.evp_md_ctx_st*, %struct.ASN1_ITEM_st*, i8*, %struct.X509_algor_st*, %struct.asn1_string_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_md_ctx_st*, %struct.ASN1_ITEM_st*, i8*, %struct.X509_algor_st*, %struct.X509_algor_st*, %struct.asn1_string_st*)*, i32 (%struct.x509_sig_info_st*, %struct.X509_algor_st*, %struct.asn1_string_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, i8*, i64)*, i32 (%struct.evp_pkey_st*, i8*, i64)*, i32 (%struct.evp_pkey_st*, i8*, i64*)*, i32 (%struct.evp_pkey_st*, i8*, i64*)*, i64 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, i8*, i32 (i8*, i32, %struct.ossl_param_st*)*, %struct.ossl_lib_ctx_st*, i8*)*, i32 (%struct.ossl_param_st*, i8*)*, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, %struct.pkcs8_priv_key_info_st*, %struct.ossl_lib_ctx_st*, i8*)* }
%struct.X509_pubkey_st = type opaque
%struct.pkcs8_priv_key_info_st = type opaque
%struct.bio_st = type opaque
%struct.asn1_pctx_st = type { i64, i64, i64, i64, i64 }
%struct.X509_algor_st = type opaque
%struct.asn1_string_st = type { i32, i32, i8*, i64 }
%struct.ASN1_ITEM_st = type opaque
%struct.x509_sig_info_st = type opaque
%union.legacy_pkey_st = type { i8* }
%struct.stack_st_X509_ATTRIBUTE = type opaque
%struct.crypto_ex_data_st = type { %struct.ossl_lib_ctx_st*, %struct.stack_st_void* }
%struct.stack_st_void = type opaque
%struct.stack_st_OP_CACHE_ELEM = type opaque
%struct.anon.6 = type { i32, i32, i32 }
%struct.bignum_st = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@.str = private unnamed_addr constant [37 x i8] c"assertion failed: j <= sizeof(c->iv)\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"crypto/evp/evp_lib.c\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"id-smime-alg-CMS3DESwrap\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"alg_id_param\00", align 1
@__func__.evp_cipher_param_to_asn1_ex = private unnamed_addr constant [28 x i8] c"evp_cipher_param_to_asn1_ex\00", align 1
@__func__.evp_cipher_asn1_to_param_ex = private unnamed_addr constant [28 x i8] c"evp_cipher_asn1_to_param_ex\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"blocksize\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"ivlen\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"keylen\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"aead\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"custom-iv\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"cts\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"tls-multi\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"has-randkey\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"taglen\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"iv\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"updated-iv\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"num\00", align 1
@__func__.EVP_MD_get_block_size = private unnamed_addr constant [22 x i8] c"EVP_MD_get_block_size\00", align 1
@__func__.EVP_MD_get_size = private unnamed_addr constant [16 x i8] c"EVP_MD_get_size\00", align 1
@__func__.EVP_PKEY_CTX_set_group_name = private unnamed_addr constant [28 x i8] c"EVP_PKEY_CTX_set_group_name\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"group\00", align 1
@__func__.EVP_PKEY_CTX_get_group_name = private unnamed_addr constant [28 x i8] c"EVP_PKEY_CTX_get_group_name\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"RSA\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"bits\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c"EC\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"ED25519\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"X25519\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"ED448\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"X448\00", align 1
@__func__.EVP_PKEY_Q_keygen = private unnamed_addr constant [18 x i8] c"EVP_PKEY_Q_keygen\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"use-bits\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_CIPHER_param_to_asn1(%struct.evp_cipher_ctx_st* noundef %c, %struct.asn1_type_st* noundef %type) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @evp_cipher_param_to_asn1_ex(%struct.evp_cipher_ctx_st* noundef %c, %struct.asn1_type_st* noundef %type, %struct.evp_cipher_aead_asn1_params* noundef null) #13
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @evp_cipher_param_to_asn1_ex(%struct.evp_cipher_ctx_st* noundef %c, %struct.asn1_type_st* noundef %type, %struct.evp_cipher_aead_asn1_params* noundef %asn1_params) local_unnamed_addr #0 {
entry:
  %type.addr = alloca %struct.asn1_type_st*, align 8
  %params = alloca [3 x %struct.ossl_param_st], align 16
  %derp = alloca i8*, align 8
  %tmp18 = alloca %struct.ossl_param_st, align 8
  store %struct.asn1_type_st* %type, %struct.asn1_type_st** %type.addr, align 8, !tbaa !4
  %cipher1 = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %c, i64 0, i32 0
  %0 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %cipher1, align 8, !tbaa !8
  %set_asn1_parameters = getelementptr inbounds %struct.evp_cipher_st, %struct.evp_cipher_st* %0, i64 0, i32 10
  %set_asn1_parameters2 = bitcast {}** %set_asn1_parameters to i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)**
  %1 = load i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)*, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)** %set_asn1_parameters2, align 8, !tbaa !12
  %cmp.not = icmp eq i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* %1, null
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i32 %1(%struct.evp_cipher_ctx_st* noundef nonnull %c, %struct.asn1_type_st* noundef %type) #14
  br label %err

if.else:                                          ; preds = %entry
  %call5 = tail call i64 @EVP_CIPHER_get_flags(%struct.evp_cipher_st* noundef nonnull %0) #13
  %and = and i64 %call5, 16777216
  %cmp6 = icmp eq i64 %and, 0
  br i1 %cmp6, label %if.then7, label %if.else15

if.then7:                                         ; preds = %if.else
  %call8 = tail call i32 @EVP_CIPHER_get_mode(%struct.evp_cipher_st* noundef nonnull %0) #13
  switch i32 %call8, label %sw.default [
    i32 65538, label %sw.bb
    i32 6, label %sw.bb11
    i32 7, label %cleanup71.thread107
    i32 65537, label %cleanup71.thread107
    i32 65539, label %cleanup71.thread107
  ]

sw.bb:                                            ; preds = %if.then7
  %call9 = tail call i32 @EVP_CIPHER_is_a(%struct.evp_cipher_st* noundef nonnull %0, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0)) #13
  %tobool.not = icmp eq i32 %call9, 0
  br i1 %tobool.not, label %cleanup71.thread, label %if.then10

if.then10:                                        ; preds = %sw.bb
  tail call void @ASN1_TYPE_set(%struct.asn1_type_st* noundef %type, i32 noundef 5, i8* noundef null) #14
  br label %cleanup71.thread

sw.bb11:                                          ; preds = %if.then7
  %call12 = tail call i32 @evp_cipher_set_asn1_aead_params(%struct.evp_cipher_ctx_st* undef, %struct.asn1_type_st* noundef %type, %struct.evp_cipher_aead_asn1_params* noundef %asn1_params) #13
  br label %err

sw.default:                                       ; preds = %if.then7
  %call14 = tail call i32 @EVP_CIPHER_set_asn1_iv(%struct.evp_cipher_ctx_st* noundef nonnull %c, %struct.asn1_type_st* noundef %type) #13
  br label %err

if.else15:                                        ; preds = %if.else
  %prov = getelementptr inbounds %struct.evp_cipher_st, %struct.evp_cipher_st* %0, i64 0, i32 17
  %2 = load %struct.ossl_provider_st*, %struct.ossl_provider_st** %prov, align 8, !tbaa !14
  %cmp16.not = icmp eq %struct.ossl_provider_st* %2, null
  br i1 %cmp16.not, label %cleanup71.thread107, label %if.then17

if.then17:                                        ; preds = %if.else15
  %3 = bitcast [3 x %struct.ossl_param_st]* %params to i8*
  call void @llvm.lifetime.start.p0i8(i64 120, i8* nonnull %3) #15
  %arraydecay = getelementptr inbounds [3 x %struct.ossl_param_st], [3 x %struct.ossl_param_st]* %params, i64 0, i64 0
  %4 = bitcast i8** %derp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #15
  %incdec.ptr = getelementptr inbounds [3 x %struct.ossl_param_st], [3 x %struct.ossl_param_st]* %params, i64 0, i64 1
  %params109 = getelementptr inbounds [3 x %struct.ossl_param_st], [3 x %struct.ossl_param_st]* %params, i64 0, i64 0
  call void @OSSL_PARAM_construct_octet_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %params109, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8* noundef null, i64 noundef 0) #14
  %5 = bitcast %struct.ossl_param_st* %tmp18 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %5) #15
  call void @OSSL_PARAM_construct_end(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp18) #14
  %6 = bitcast %struct.ossl_param_st* %incdec.ptr to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %6, i8* noundef nonnull align 8 dereferenceable(40) %5, i64 40, i1 false), !tbaa.struct !15
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %5) #15
  %call20 = call i32 @EVP_CIPHER_CTX_get_params(%struct.evp_cipher_ctx_st* noundef nonnull %c, %struct.ossl_param_st* noundef nonnull %arraydecay) #14
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %cleanup, label %if.end23

if.end23:                                         ; preds = %if.then17
  %call25 = call i32 @OSSL_PARAM_modified(%struct.ossl_param_st* noundef nonnull %arraydecay) #14
  %tobool26 = icmp ne i32 %call25, 0
  %return_size = getelementptr inbounds [3 x %struct.ossl_param_st], [3 x %struct.ossl_param_st]* %params, i64 0, i64 0, i32 4
  %7 = load i64, i64* %return_size, align 16
  %cmp27 = icmp ne i64 %7, 0
  %or.cond = select i1 %tobool26, i1 %cmp27, i1 false
  br i1 %or.cond, label %land.lhs.true28, label %cleanup

land.lhs.true28:                                  ; preds = %if.end23
  %call31 = call i8* @CRYPTO_malloc(i64 noundef %7, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 144) #14
  %cmp32.not = icmp eq i8* %call31, null
  br i1 %cmp32.not, label %cleanup, label %if.then33

if.then33:                                        ; preds = %land.lhs.true28
  %data = getelementptr inbounds [3 x %struct.ossl_param_st], [3 x %struct.ossl_param_st]* %params, i64 0, i64 0, i32 2
  store i8* %call31, i8** %data, align 16, !tbaa !18
  %8 = load i64, i64* %return_size, align 16, !tbaa !20
  %data_size = getelementptr inbounds [3 x %struct.ossl_param_st], [3 x %struct.ossl_param_st]* %params, i64 0, i64 0, i32 3
  store i64 %8, i64* %data_size, align 8, !tbaa !21
  call void @OSSL_PARAM_set_all_unmodified(%struct.ossl_param_st* noundef nonnull %arraydecay) #14
  store i8* %call31, i8** %derp, align 8, !tbaa !4
  %call40 = call i32 @EVP_CIPHER_CTX_get_params(%struct.evp_cipher_ctx_st* noundef nonnull %c, %struct.ossl_param_st* noundef nonnull %arraydecay) #14
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.end52, label %land.lhs.true42

land.lhs.true42:                                  ; preds = %if.then33
  %call44 = call i32 @OSSL_PARAM_modified(%struct.ossl_param_st* noundef nonnull %arraydecay) #14
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.end52, label %land.lhs.true46

land.lhs.true46:                                  ; preds = %land.lhs.true42
  %9 = load i64, i64* %return_size, align 16, !tbaa !20
  %call49 = call %struct.asn1_type_st* @d2i_ASN1_TYPE(%struct.asn1_type_st** noundef nonnull %type.addr, i8** noundef nonnull %derp, i64 noundef %9) #14
  %cmp50.not = icmp eq %struct.asn1_type_st* %call49, null
  %spec.select = select i1 %cmp50.not, i32 -1, i32 1
  br label %if.end52

if.end52:                                         ; preds = %land.lhs.true46, %land.lhs.true42, %if.then33
  %ret.0 = phi i32 [ -1, %land.lhs.true42 ], [ -1, %if.then33 ], [ %spec.select, %land.lhs.true46 ]
  call void @CRYPTO_free(i8* noundef nonnull %call31, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 155) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %land.lhs.true28, %if.end52, %if.then17
  %ret.2 = phi i32 [ -1, %if.then17 ], [ %ret.0, %if.end52 ], [ -1, %land.lhs.true28 ], [ -1, %if.end23 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #15
  call void @llvm.lifetime.end.p0i8(i64 120, i8* nonnull %3) #15
  br label %if.else63

err:                                              ; preds = %if.then, %sw.bb11, %sw.default
  %ret.3 = phi i32 [ %call, %if.then ], [ %call14, %sw.default ], [ %call12, %sw.bb11 ]
  %cmp61 = icmp eq i32 %ret.3, -2
  br i1 %cmp61, label %cleanup71.thread107, label %if.else63

cleanup71.thread107:                              ; preds = %err, %if.then7, %if.then7, %if.then7, %if.else15
  tail call void @ERR_new() #14
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 163, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.evp_cipher_param_to_asn1_ex, i64 0, i64 0)) #14
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 107, i8* noundef null) #14
  br label %11

if.else63:                                        ; preds = %cleanup, %err
  %ret.397 = phi i32 [ %ret.3, %err ], [ %ret.2, %cleanup ]
  %cmp64 = icmp slt i32 %ret.397, 1
  br i1 %cmp64, label %cleanup71, label %cleanup71.thread

cleanup71:                                        ; preds = %if.else63
  call void @ERR_new() #14
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 165, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.evp_cipher_param_to_asn1_ex, i64 0, i64 0)) #14
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 122, i8* noundef null) #14
  %10 = icmp sgt i32 %ret.397, -1
  br i1 %10, label %cleanup71.thread, label %11

cleanup71.thread:                                 ; preds = %if.then10, %sw.bb, %if.else63, %cleanup71
  %ret.396106 = phi i32 [ 0, %cleanup71 ], [ %ret.397, %if.else63 ], [ 1, %sw.bb ], [ 1, %if.then10 ]
  br label %11

11:                                               ; preds = %cleanup71.thread107, %cleanup71, %cleanup71.thread
  %12 = phi i32 [ %ret.396106, %cleanup71.thread ], [ -1, %cleanup71 ], [ -1, %cleanup71.thread107 ]
  ret i32 %12
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_CIPHER_asn1_to_param(%struct.evp_cipher_ctx_st* noundef %c, %struct.asn1_type_st* noundef %type) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @evp_cipher_asn1_to_param_ex(%struct.evp_cipher_ctx_st* noundef %c, %struct.asn1_type_st* noundef %type, %struct.evp_cipher_aead_asn1_params* noundef null) #13
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @evp_cipher_asn1_to_param_ex(%struct.evp_cipher_ctx_st* noundef %c, %struct.asn1_type_st* noundef %type, %struct.evp_cipher_aead_asn1_params* noundef %asn1_params) local_unnamed_addr #0 {
entry:
  %params = alloca [3 x %struct.ossl_param_st], align 16
  %der = alloca i8*, align 8
  %tmp19 = alloca %struct.ossl_param_st, align 8
  %cipher1 = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %c, i64 0, i32 0
  %0 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %cipher1, align 8, !tbaa !8
  %get_asn1_parameters = getelementptr inbounds %struct.evp_cipher_st, %struct.evp_cipher_st* %0, i64 0, i32 11
  %get_asn1_parameters2 = bitcast {}** %get_asn1_parameters to i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)**
  %1 = load i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)*, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)** %get_asn1_parameters2, align 8, !tbaa !22
  %cmp.not = icmp eq i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* %1, null
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i32 %1(%struct.evp_cipher_ctx_st* noundef nonnull %c, %struct.asn1_type_st* noundef %type) #14
  br label %if.end27

if.else:                                          ; preds = %entry
  %call5 = tail call i64 @EVP_CIPHER_get_flags(%struct.evp_cipher_st* noundef nonnull %0) #13
  %and = and i64 %call5, 16777216
  %cmp6 = icmp eq i64 %and, 0
  br i1 %cmp6, label %if.then7, label %if.else13

if.then7:                                         ; preds = %if.else
  %call8 = tail call i32 @EVP_CIPHER_get_mode(%struct.evp_cipher_st* noundef nonnull %0) #13
  switch i32 %call8, label %sw.default [
    i32 65538, label %if.end36.thread
    i32 6, label %sw.bb9
    i32 7, label %if.end36.thread73
    i32 65537, label %if.end36.thread73
    i32 65539, label %if.end36.thread73
  ]

sw.bb9:                                           ; preds = %if.then7
  %call10 = tail call i32 @evp_cipher_get_asn1_aead_params(%struct.evp_cipher_ctx_st* undef, %struct.asn1_type_st* noundef %type, %struct.evp_cipher_aead_asn1_params* noundef %asn1_params) #13
  br label %if.end27

sw.default:                                       ; preds = %if.then7
  %call12 = tail call i32 @EVP_CIPHER_get_asn1_iv(%struct.evp_cipher_ctx_st* noundef nonnull %c, %struct.asn1_type_st* noundef %type) #13
  br label %if.end27

if.else13:                                        ; preds = %if.else
  %prov = getelementptr inbounds %struct.evp_cipher_st, %struct.evp_cipher_st* %0, i64 0, i32 17
  %2 = load %struct.ossl_provider_st*, %struct.ossl_provider_st** %prov, align 8, !tbaa !14
  %cmp14.not = icmp eq %struct.ossl_provider_st* %2, null
  br i1 %cmp14.not, label %if.end36.thread73, label %if.then15

if.then15:                                        ; preds = %if.else13
  %3 = bitcast [3 x %struct.ossl_param_st]* %params to i8*
  call void @llvm.lifetime.start.p0i8(i64 120, i8* nonnull %3) #15
  %4 = bitcast i8** %der to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #15
  store i8* null, i8** %der, align 8, !tbaa !4
  %call16 = call i32 @i2d_ASN1_TYPE(%struct.asn1_type_st* noundef %type, i8** noundef nonnull %der) #14
  %cmp17 = icmp sgt i32 %call16, -1
  br i1 %cmp17, label %if.then18, label %if.end23

if.then18:                                        ; preds = %if.then15
  %arraydecay = getelementptr inbounds [3 x %struct.ossl_param_st], [3 x %struct.ossl_param_st]* %params, i64 0, i64 0
  %incdec.ptr = getelementptr inbounds [3 x %struct.ossl_param_st], [3 x %struct.ossl_param_st]* %params, i64 0, i64 1
  %5 = load i8*, i8** %der, align 8, !tbaa !4
  %conv75 = zext i32 %call16 to i64
  %params76 = getelementptr inbounds [3 x %struct.ossl_param_st], [3 x %struct.ossl_param_st]* %params, i64 0, i64 0
  call void @OSSL_PARAM_construct_octet_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %params76, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8* noundef %5, i64 noundef %conv75) #14
  %6 = bitcast %struct.ossl_param_st* %tmp19 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %6) #15
  call void @OSSL_PARAM_construct_end(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp19) #14
  %7 = bitcast %struct.ossl_param_st* %incdec.ptr to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %7, i8* noundef nonnull align 8 dereferenceable(40) %6, i64 40, i1 false), !tbaa.struct !15
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %6) #15
  %call21 = call i32 @EVP_CIPHER_CTX_set_params(%struct.evp_cipher_ctx_st* noundef nonnull %c, %struct.ossl_param_st* noundef nonnull %arraydecay) #14
  %tobool.not = icmp eq i32 %call21, 0
  %spec.select = select i1 %tobool.not, i32 -1, i32 1
  %8 = load i8*, i8** %der, align 8, !tbaa !4
  call void @CRYPTO_free(i8* noundef %8, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 227) #14
  br label %if.end23

if.end23:                                         ; preds = %if.then18, %if.then15
  %ret.1 = phi i32 [ %spec.select, %if.then18 ], [ -1, %if.then15 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #15
  call void @llvm.lifetime.end.p0i8(i64 120, i8* nonnull %3) #15
  br label %if.else31

if.end27:                                         ; preds = %sw.default, %sw.bb9, %if.then
  %ret.2 = phi i32 [ %call, %if.then ], [ %call12, %sw.default ], [ %call10, %sw.bb9 ]
  %cmp28 = icmp eq i32 %ret.2, -2
  br i1 %cmp28, label %if.end36.thread73, label %if.else31

if.end36.thread73:                                ; preds = %if.end27, %if.else13, %if.then7, %if.then7, %if.then7
  tail call void @ERR_new() #14
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 234, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.evp_cipher_asn1_to_param_ex, i64 0, i64 0)) #14
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 107, i8* noundef null) #14
  br label %10

if.else31:                                        ; preds = %if.end23, %if.end27
  %ret.268 = phi i32 [ %ret.2, %if.end27 ], [ %ret.1, %if.end23 ]
  %cmp32 = icmp slt i32 %ret.268, 1
  br i1 %cmp32, label %if.end36, label %if.end36.thread

if.end36:                                         ; preds = %if.else31
  call void @ERR_new() #14
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 236, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.evp_cipher_asn1_to_param_ex, i64 0, i64 0)) #14
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 122, i8* noundef null) #14
  %9 = icmp sgt i32 %ret.268, -1
  br i1 %9, label %if.end36.thread, label %10

if.end36.thread:                                  ; preds = %if.then7, %if.else31, %if.end36
  %ret.26272 = phi i32 [ 0, %if.end36 ], [ %ret.268, %if.else31 ], [ 1, %if.then7 ]
  br label %10

10:                                               ; preds = %if.end36.thread73, %if.end36, %if.end36.thread
  %11 = phi i32 [ %ret.26272, %if.end36.thread ], [ -1, %if.end36 ], [ -1, %if.end36.thread73 ]
  ret i32 %11
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_CIPHER_get_asn1_iv(%struct.evp_cipher_ctx_st* noundef %ctx, %struct.asn1_type_st* noundef %type) local_unnamed_addr #0 {
entry:
  %iv = alloca [16 x i8], align 16
  %cmp.not = icmp eq %struct.asn1_type_st* %type, null
  br i1 %cmp.not, label %if.end15, label %if.then

if.then:                                          ; preds = %entry
  %0 = getelementptr inbounds [16 x i8], [16 x i8]* %iv, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #15
  %call = tail call i32 @EVP_CIPHER_CTX_get_iv_length(%struct.evp_cipher_ctx_st* noundef %ctx) #13
  %cmp1 = icmp ult i32 %call, 17
  br i1 %cmp1, label %if.end, label %cleanup.thread

if.end:                                           ; preds = %if.then
  %call6 = call i32 @ASN1_TYPE_get_octetstring(%struct.asn1_type_st* noundef nonnull %type, i8* noundef nonnull %0, i32 noundef %call) #14
  %cmp7.not = icmp eq i32 %call6, %call
  br i1 %cmp7.not, label %cleanup, label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then, %if.end
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #15
  br label %cleanup16

cleanup:                                          ; preds = %if.end
  %call12 = call i32 @EVP_CipherInit_ex(%struct.evp_cipher_ctx_st* noundef %ctx, %struct.evp_cipher_st* noundef null, %struct.engine_st* noundef null, i8* noundef null, i8* noundef nonnull %0, i32 noundef -1) #14
  %tobool.not.not = icmp eq i32 %call12, 0
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #15
  br i1 %tobool.not.not, label %cleanup16, label %if.end15

if.end15:                                         ; preds = %cleanup, %entry
  %i.1 = phi i32 [ %call, %cleanup ], [ 0, %entry ]
  br label %cleanup16

cleanup16:                                        ; preds = %cleanup.thread, %cleanup, %if.end15
  %retval.1 = phi i32 [ %i.1, %if.end15 ], [ -1, %cleanup ], [ -1, %cleanup.thread ]
  ret i32 %retval.1
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_CIPHER_CTX_get_iv_length(%struct.evp_cipher_ctx_st* noundef %ctx) local_unnamed_addr #0 {
entry:
  %len = alloca i32, align 4
  %v = alloca i64, align 8
  %params = alloca [2 x %struct.ossl_param_st], align 16
  %0 = bitcast i32* %len to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #15
  %cipher = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 0
  %1 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %cipher, align 8, !tbaa !8
  %call = tail call i32 @EVP_CIPHER_get_iv_length(%struct.evp_cipher_st* noundef %1) #13
  store i32 %call, i32* %len, align 4, !tbaa !16
  %2 = bitcast i64* %v to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #15
  %conv = sext i32 %call to i64
  store i64 %conv, i64* %v, align 8, !tbaa !17
  %3 = bitcast [2 x %struct.ossl_param_st]* %params to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %3) #15
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(80) %3, i8 0, i64 80, i1 false)
  %arrayidx = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0
  %params30 = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0
  call void @OSSL_PARAM_construct_size_t(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %params30, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i64* noundef nonnull %v) #14
  %4 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %cipher, align 8, !tbaa !8
  %algctx = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 15
  %5 = load i8*, i8** %algctx, align 8, !tbaa !23
  %call2 = call i32 @evp_do_ciph_ctx_getparams(%struct.evp_cipher_st* noundef %4, i8* noundef %5, %struct.ossl_param_st* noundef nonnull %arrayidx) #14
  %cmp = icmp eq i32 %call2, -1
  br i1 %cmp, label %legacy, label %if.end

if.end:                                           ; preds = %entry
  %cmp4.not = icmp eq i32 %call2, 0
  %6 = load i64, i64* %v, align 8
  %conv6 = trunc i64 %6 to i32
  %cond = select i1 %cmp4.not, i32 -1, i32 %conv6
  br label %cleanup

legacy:                                           ; preds = %entry
  %7 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %cipher, align 8, !tbaa !8
  %call8 = call i64 @EVP_CIPHER_get_flags(%struct.evp_cipher_st* noundef %7) #13
  %and = and i64 %call8, 2048
  %cmp9.not = icmp eq i64 %and, 0
  br i1 %cmp9.not, label %cleanup, label %if.then11

if.then11:                                        ; preds = %legacy
  %call12 = call i32 @EVP_CIPHER_CTX_ctrl(%struct.evp_cipher_ctx_st* noundef nonnull %ctx, i32 noundef 37, i32 noundef 0, i8* noundef nonnull %0) #14
  %cmp13 = icmp eq i32 %call12, 1
  %8 = load i32, i32* %len, align 4
  %cond18 = select i1 %cmp13, i32 %8, i32 -1
  br label %cleanup

cleanup:                                          ; preds = %legacy, %if.then11, %if.end
  %retval.0 = phi i32 [ %cond18, %if.then11 ], [ %cond, %if.end ], [ %call, %legacy ]
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %3) #15
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #15
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #15
  ret i32 %retval.0
}

declare i32 @ASN1_TYPE_get_octetstring(%struct.asn1_type_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @EVP_CipherInit_ex(%struct.evp_cipher_ctx_st* noundef, %struct.evp_cipher_st* noundef, %struct.engine_st* noundef, i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_CIPHER_set_asn1_iv(%struct.evp_cipher_ctx_st* noundef %c, %struct.asn1_type_st* noundef %type) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq %struct.asn1_type_st* %type, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i8* @EVP_CIPHER_CTX_original_iv(%struct.evp_cipher_ctx_st* noundef %c) #13
  %call1 = tail call i32 @EVP_CIPHER_CTX_get_iv_length(%struct.evp_cipher_ctx_st* noundef %c) #13
  %cmp2 = icmp ult i32 %call1, 17
  br i1 %cmp2, label %cond.end, label %cond.false

cond.false:                                       ; preds = %if.then
  tail call void @OPENSSL_die(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 74) #16
  unreachable

cond.end:                                         ; preds = %if.then
  %call4 = tail call i32 @ASN1_TYPE_set_octetstring(%struct.asn1_type_st* noundef nonnull %type, i8* noundef %call, i32 noundef %call1) #14
  br label %if.end

if.end:                                           ; preds = %cond.end, %entry
  %i.0 = phi i32 [ %call4, %cond.end ], [ 0, %entry ]
  ret i32 %i.0
}

; Function Attrs: noinline nounwind uwtable
define i8* @EVP_CIPHER_CTX_original_iv(%struct.evp_cipher_ctx_st* noundef %ctx) local_unnamed_addr #0 {
entry:
  %v = alloca i8*, align 8
  %params = alloca [2 x %struct.ossl_param_st], align 16
  %0 = bitcast i8** %v to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #15
  %arraydecay = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 4, i64 0
  store i8* %arraydecay, i8** %v, align 8, !tbaa !4
  %1 = bitcast [2 x %struct.ossl_param_st]* %params to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %1) #15
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(80) %1, i8 0, i64 80, i1 false)
  %arrayidx = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0
  %params5 = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0
  call void @OSSL_PARAM_construct_octet_ptr(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %params5, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0), i8** noundef nonnull %v, i64 noundef 16) #14
  %cipher = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 0
  %2 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %cipher, align 8, !tbaa !8
  %algctx = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 15
  %3 = load i8*, i8** %algctx, align 8, !tbaa !23
  %call = call i32 @evp_do_ciph_ctx_getparams(%struct.evp_cipher_st* noundef %2, i8* noundef %3, %struct.ossl_param_st* noundef nonnull %arrayidx) #14
  %cmp.not = icmp eq i32 %call, 0
  %4 = load i8*, i8** %v, align 8
  %cond = select i1 %cmp.not, i8* null, i8* %4
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %1) #15
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #15
  ret i8* %cond
}

; Function Attrs: noreturn
declare void @OPENSSL_die(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare i32 @ASN1_TYPE_set_octetstring(%struct.asn1_type_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i64 @EVP_CIPHER_get_flags(%struct.evp_cipher_st* nocapture noundef readonly %cipher) local_unnamed_addr #4 {
entry:
  %flags = getelementptr inbounds %struct.evp_cipher_st, %struct.evp_cipher_st* %cipher, i64 0, i32 4
  %0 = load i64, i64* %flags, align 8, !tbaa !24
  ret i64 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @EVP_CIPHER_get_mode(%struct.evp_cipher_st* nocapture noundef readonly %cipher) local_unnamed_addr #4 {
entry:
  %call = tail call i64 @EVP_CIPHER_get_flags(%struct.evp_cipher_st* noundef %cipher) #13
  %0 = trunc i64 %call to i32
  %conv = and i32 %0, 983047
  ret i32 %conv
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_CIPHER_is_a(%struct.evp_cipher_st* nocapture noundef readonly %cipher, i8* noundef %name) local_unnamed_addr #0 {
entry:
  %prov = getelementptr inbounds %struct.evp_cipher_st, %struct.evp_cipher_st* %cipher, i64 0, i32 17
  %0 = load %struct.ossl_provider_st*, %struct.ossl_provider_st** %prov, align 8, !tbaa !14
  %cmp.not = icmp eq %struct.ossl_provider_st* %0, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %name_id = getelementptr inbounds %struct.evp_cipher_st, %struct.evp_cipher_st* %cipher, i64 0, i32 14
  %1 = load i32, i32* %name_id, align 8, !tbaa !25
  %call = tail call i32 @evp_is_a(%struct.ossl_provider_st* noundef nonnull %0, i32 noundef %1, i8* noundef null, i8* noundef %name) #14
  br label %return

if.end:                                           ; preds = %entry
  %call2 = tail call i8* @EVP_CIPHER_get0_name(%struct.evp_cipher_st* noundef nonnull %cipher) #13
  %call3 = tail call i32 @evp_is_a(%struct.ossl_provider_st* noundef null, i32 noundef 0, i8* noundef %call2, i8* noundef %name) #14
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call3, %if.end ]
  ret i32 %retval.0
}

declare void @ASN1_TYPE_set(%struct.asn1_type_st* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @evp_cipher_set_asn1_aead_params(%struct.evp_cipher_ctx_st* nocapture readnone %c, %struct.asn1_type_st* noundef %type, %struct.evp_cipher_aead_asn1_params* noundef %asn1_params) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.asn1_type_st* %type, null
  %cmp1 = icmp eq %struct.evp_cipher_aead_asn1_params* %asn1_params, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %return, label %if.end

if.end:                                           ; preds = %entry
  %tag_len = getelementptr inbounds %struct.evp_cipher_aead_asn1_params, %struct.evp_cipher_aead_asn1_params* %asn1_params, i64 0, i32 2
  %0 = load i32, i32* %tag_len, align 4, !tbaa !26
  %conv = zext i32 %0 to i64
  %arraydecay = getelementptr inbounds %struct.evp_cipher_aead_asn1_params, %struct.evp_cipher_aead_asn1_params* %asn1_params, i64 0, i32 0, i64 0
  %iv_len = getelementptr inbounds %struct.evp_cipher_aead_asn1_params, %struct.evp_cipher_aead_asn1_params* %asn1_params, i64 0, i32 1
  %1 = load i32, i32* %iv_len, align 4, !tbaa !28
  %call = tail call i32 @ossl_asn1_type_set_octetstring_int(%struct.asn1_type_st* noundef nonnull %type, i64 noundef %conv, i8* noundef %arraydecay, i32 noundef %1) #14
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

declare void @OSSL_PARAM_construct_octet_string(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8, i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

declare void @OSSL_PARAM_construct_end(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8) local_unnamed_addr #2

declare i32 @EVP_CIPHER_CTX_get_params(%struct.evp_cipher_ctx_st* noundef, %struct.ossl_param_st* noundef) local_unnamed_addr #2

declare i32 @OSSL_PARAM_modified(%struct.ossl_param_st* noundef) local_unnamed_addr #2

declare i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare void @OSSL_PARAM_set_all_unmodified(%struct.ossl_param_st* noundef) local_unnamed_addr #2

declare %struct.asn1_type_st* @d2i_ASN1_TYPE(%struct.asn1_type_st** noundef, i8** noundef, i64 noundef) local_unnamed_addr #2

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @evp_cipher_get_asn1_aead_params(%struct.evp_cipher_ctx_st* nocapture readnone %c, %struct.asn1_type_st* noundef %type, %struct.evp_cipher_aead_asn1_params* noundef %asn1_params) local_unnamed_addr #0 {
entry:
  %tl = alloca i64, align 8
  %iv = alloca [16 x i8], align 16
  %0 = bitcast i64* %tl to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #15
  %1 = getelementptr inbounds [16 x i8], [16 x i8]* %iv, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #15
  %cmp = icmp eq %struct.asn1_type_st* %type, null
  %cmp1 = icmp eq %struct.evp_cipher_aead_asn1_params* %asn1_params, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = call i32 @ossl_asn1_type_get_octetstring_int(%struct.asn1_type_st* noundef nonnull %type, i64* noundef nonnull %tl, i8* noundef null, i32 noundef 16) #14
  %cmp2 = icmp slt i32 %call, 1
  br i1 %cmp2, label %cleanup, label %if.end4

if.end4:                                          ; preds = %if.end
  %call5 = call i32 @ossl_asn1_type_get_octetstring_int(%struct.asn1_type_st* noundef nonnull %type, i64* noundef nonnull %tl, i8* noundef nonnull %1, i32 noundef %call) #14
  %arraydecay7 = getelementptr inbounds %struct.evp_cipher_aead_asn1_params, %struct.evp_cipher_aead_asn1_params* %asn1_params, i64 0, i32 0, i64 0
  %conv21 = zext i32 %call to i64
  %call9 = call i8* @memcpy(i8* noundef %arraydecay7, i8* noundef nonnull %1, i64 noundef %conv21) #14
  %iv_len = getelementptr inbounds %struct.evp_cipher_aead_asn1_params, %struct.evp_cipher_aead_asn1_params* %asn1_params, i64 0, i32 1
  store i32 %call, i32* %iv_len, align 4, !tbaa !28
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end4
  %retval.0 = phi i32 [ %call, %if.end4 ], [ 0, %entry ], [ -1, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #15
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #15
  ret i32 %retval.0
}

declare i32 @i2d_ASN1_TYPE(%struct.asn1_type_st* noundef, i8** noundef) local_unnamed_addr #2

declare i32 @EVP_CIPHER_CTX_set_params(%struct.evp_cipher_ctx_st* noundef, %struct.ossl_param_st* noundef) local_unnamed_addr #2

declare i32 @ossl_asn1_type_get_octetstring_int(%struct.asn1_type_st* noundef, i64* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #6

declare i32 @ossl_asn1_type_set_octetstring_int(%struct.asn1_type_st* noundef, i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_CIPHER_get_type(%struct.evp_cipher_st* nocapture noundef readonly %cipher) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @EVP_CIPHER_get_nid(%struct.evp_cipher_st* noundef %cipher) #13
  switch i32 %call, label %sw.default [
    i32 37, label %cleanup
    i32 166, label %cleanup
    i32 98, label %cleanup
    i32 5, label %sw.bb1
    i32 97, label %sw.bb1
    i32 421, label %sw.bb2
    i32 653, label %sw.bb2
    i32 650, label %sw.bb2
    i32 425, label %sw.bb3
    i32 654, label %sw.bb3
    i32 651, label %sw.bb3
    i32 429, label %sw.bb4
    i32 655, label %sw.bb4
    i32 652, label %sw.bb4
    i32 30, label %sw.bb5
    i32 657, label %sw.bb5
    i32 656, label %sw.bb5
    i32 61, label %sw.bb6
    i32 659, label %sw.bb6
    i32 658, label %sw.bb6
  ]

sw.bb1:                                           ; preds = %entry, %entry
  br label %cleanup

sw.bb2:                                           ; preds = %entry, %entry, %entry
  br label %cleanup

sw.bb3:                                           ; preds = %entry, %entry, %entry
  br label %cleanup

sw.bb4:                                           ; preds = %entry, %entry, %entry
  br label %cleanup

sw.bb5:                                           ; preds = %entry, %entry, %entry
  br label %cleanup

sw.bb6:                                           ; preds = %entry, %entry, %entry
  br label %cleanup

sw.default:                                       ; preds = %entry
  %call7 = tail call %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef %call) #14
  %call8 = tail call i8* @OBJ_get0_data(%struct.asn1_object_st* noundef %call7) #14
  %cmp = icmp eq i8* %call8, null
  %spec.select = select i1 %cmp, i32 0, i32 %call
  tail call void @ASN1_OBJECT_free(%struct.asn1_object_st* noundef %call7) #14
  br label %cleanup

cleanup:                                          ; preds = %entry, %entry, %entry, %sw.default, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1
  %retval.0 = phi i32 [ %spec.select, %sw.default ], [ 30, %sw.bb6 ], [ 30, %sw.bb5 ], [ 429, %sw.bb4 ], [ 425, %sw.bb3 ], [ 421, %sw.bb2 ], [ 5, %sw.bb1 ], [ 37, %entry ], [ 37, %entry ], [ 37, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @EVP_CIPHER_get_nid(%struct.evp_cipher_st* nocapture noundef readonly %cipher) local_unnamed_addr #4 {
entry:
  %nid = getelementptr inbounds %struct.evp_cipher_st, %struct.evp_cipher_st* %cipher, i64 0, i32 0
  %0 = load i32, i32* %nid, align 8, !tbaa !29
  ret i32 %0
}

declare %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef) local_unnamed_addr #2

declare i8* @OBJ_get0_data(%struct.asn1_object_st* noundef) local_unnamed_addr #2

declare void @ASN1_OBJECT_free(%struct.asn1_object_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @evp_cipher_cache_constants(%struct.evp_cipher_st* noundef %cipher) local_unnamed_addr #0 {
entry:
  %aead = alloca i32, align 4
  %custom_iv = alloca i32, align 4
  %cts = alloca i32, align 4
  %multiblock = alloca i32, align 4
  %randkey = alloca i32, align 4
  %ivlen = alloca i64, align 8
  %blksz = alloca i64, align 8
  %keylen = alloca i64, align 8
  %mode = alloca i32, align 4
  %params = alloca [10 x %struct.ossl_param_st], align 16
  %tmp2 = alloca %struct.ossl_param_st, align 8
  %tmp4 = alloca %struct.ossl_param_st, align 8
  %tmp6 = alloca %struct.ossl_param_st, align 8
  %tmp8 = alloca %struct.ossl_param_st, align 8
  %tmp10 = alloca %struct.ossl_param_st, align 8
  %tmp12 = alloca %struct.ossl_param_st, align 8
  %tmp14 = alloca %struct.ossl_param_st, align 8
  %tmp16 = alloca %struct.ossl_param_st, align 8
  %tmp18 = alloca %struct.ossl_param_st, align 8
  %0 = bitcast i32* %aead to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #15
  store i32 0, i32* %aead, align 4, !tbaa !16
  %1 = bitcast i32* %custom_iv to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #15
  store i32 0, i32* %custom_iv, align 4, !tbaa !16
  %2 = bitcast i32* %cts to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #15
  store i32 0, i32* %cts, align 4, !tbaa !16
  %3 = bitcast i32* %multiblock to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #15
  store i32 0, i32* %multiblock, align 4, !tbaa !16
  %4 = bitcast i32* %randkey to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #15
  store i32 0, i32* %randkey, align 4, !tbaa !16
  %5 = bitcast i64* %ivlen to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #15
  store i64 0, i64* %ivlen, align 8, !tbaa !17
  %6 = bitcast i64* %blksz to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #15
  store i64 0, i64* %blksz, align 8, !tbaa !17
  %7 = bitcast i64* %keylen to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #15
  store i64 0, i64* %keylen, align 8, !tbaa !17
  %8 = bitcast i32* %mode to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %8) #15
  store i32 0, i32* %mode, align 4, !tbaa !16
  %9 = bitcast [10 x %struct.ossl_param_st]* %params to i8*
  call void @llvm.lifetime.start.p0i8(i64 400, i8* nonnull %9) #15
  %arrayidx = getelementptr inbounds [10 x %struct.ossl_param_st], [10 x %struct.ossl_param_st]* %params, i64 0, i64 0
  %params75 = getelementptr inbounds [10 x %struct.ossl_param_st], [10 x %struct.ossl_param_st]* %params, i64 0, i64 0
  call void @OSSL_PARAM_construct_size_t(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %params75, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i64* noundef nonnull %blksz) #14
  %arrayidx1 = getelementptr inbounds [10 x %struct.ossl_param_st], [10 x %struct.ossl_param_st]* %params, i64 0, i64 1
  %10 = bitcast %struct.ossl_param_st* %tmp2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %10) #15
  call void @OSSL_PARAM_construct_size_t(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp2, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i64* noundef nonnull %ivlen) #14
  %11 = bitcast %struct.ossl_param_st* %arrayidx1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %11, i8* noundef nonnull align 8 dereferenceable(40) %10, i64 40, i1 false), !tbaa.struct !15
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %10) #15
  %arrayidx3 = getelementptr inbounds [10 x %struct.ossl_param_st], [10 x %struct.ossl_param_st]* %params, i64 0, i64 2
  %12 = bitcast %struct.ossl_param_st* %tmp4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %12) #15
  call void @OSSL_PARAM_construct_size_t(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp4, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i64* noundef nonnull %keylen) #14
  %13 = bitcast %struct.ossl_param_st* %arrayidx3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(40) %13, i8* noundef nonnull align 8 dereferenceable(40) %12, i64 40, i1 false), !tbaa.struct !15
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %12) #15
  %arrayidx5 = getelementptr inbounds [10 x %struct.ossl_param_st], [10 x %struct.ossl_param_st]* %params, i64 0, i64 3
  %14 = bitcast %struct.ossl_param_st* %tmp6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %14) #15
  call void @OSSL_PARAM_construct_uint(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp6, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32* noundef nonnull %mode) #14
  %15 = bitcast %struct.ossl_param_st* %arrayidx5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %15, i8* noundef nonnull align 8 dereferenceable(40) %14, i64 40, i1 false), !tbaa.struct !15
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %14) #15
  %arrayidx7 = getelementptr inbounds [10 x %struct.ossl_param_st], [10 x %struct.ossl_param_st]* %params, i64 0, i64 4
  %16 = bitcast %struct.ossl_param_st* %tmp8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %16) #15
  call void @OSSL_PARAM_construct_int(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp8, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i32* noundef nonnull %aead) #14
  %17 = bitcast %struct.ossl_param_st* %arrayidx7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(40) %17, i8* noundef nonnull align 8 dereferenceable(40) %16, i64 40, i1 false), !tbaa.struct !15
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %16) #15
  %arrayidx9 = getelementptr inbounds [10 x %struct.ossl_param_st], [10 x %struct.ossl_param_st]* %params, i64 0, i64 5
  %18 = bitcast %struct.ossl_param_st* %tmp10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %18) #15
  call void @OSSL_PARAM_construct_int(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp10, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i32* noundef nonnull %custom_iv) #14
  %19 = bitcast %struct.ossl_param_st* %arrayidx9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %19, i8* noundef nonnull align 8 dereferenceable(40) %18, i64 40, i1 false), !tbaa.struct !15
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %18) #15
  %arrayidx11 = getelementptr inbounds [10 x %struct.ossl_param_st], [10 x %struct.ossl_param_st]* %params, i64 0, i64 6
  %20 = bitcast %struct.ossl_param_st* %tmp12 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %20) #15
  call void @OSSL_PARAM_construct_int(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp12, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i32* noundef nonnull %cts) #14
  %21 = bitcast %struct.ossl_param_st* %arrayidx11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(40) %21, i8* noundef nonnull align 8 dereferenceable(40) %20, i64 40, i1 false), !tbaa.struct !15
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %20) #15
  %arrayidx13 = getelementptr inbounds [10 x %struct.ossl_param_st], [10 x %struct.ossl_param_st]* %params, i64 0, i64 7
  %22 = bitcast %struct.ossl_param_st* %tmp14 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %22) #15
  call void @OSSL_PARAM_construct_int(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp14, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i32* noundef nonnull %multiblock) #14
  %23 = bitcast %struct.ossl_param_st* %arrayidx13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %23, i8* noundef nonnull align 8 dereferenceable(40) %22, i64 40, i1 false), !tbaa.struct !15
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %22) #15
  %arrayidx15 = getelementptr inbounds [10 x %struct.ossl_param_st], [10 x %struct.ossl_param_st]* %params, i64 0, i64 8
  %24 = bitcast %struct.ossl_param_st* %tmp16 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %24) #15
  call void @OSSL_PARAM_construct_int(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp16, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0), i32* noundef nonnull %randkey) #14
  %25 = bitcast %struct.ossl_param_st* %arrayidx15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(40) %25, i8* noundef nonnull align 8 dereferenceable(40) %24, i64 40, i1 false), !tbaa.struct !15
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %24) #15
  %arrayidx17 = getelementptr inbounds [10 x %struct.ossl_param_st], [10 x %struct.ossl_param_st]* %params, i64 0, i64 9
  %26 = bitcast %struct.ossl_param_st* %tmp18 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %26) #15
  call void @OSSL_PARAM_construct_end(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp18) #14
  %27 = bitcast %struct.ossl_param_st* %arrayidx17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %27, i8* noundef nonnull align 8 dereferenceable(40) %26, i64 40, i1 false), !tbaa.struct !15
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %26) #15
  %call = call i32 @evp_do_ciph_getparams(%struct.evp_cipher_st* noundef %cipher, %struct.ossl_param_st* noundef nonnull %arrayidx) #14
  %cmp = icmp sgt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end59

if.then:                                          ; preds = %entry
  %28 = load i64, i64* %blksz, align 8, !tbaa !17
  %conv19 = trunc i64 %28 to i32
  %block_size = getelementptr inbounds %struct.evp_cipher_st, %struct.evp_cipher_st* %cipher, i64 0, i32 1
  store i32 %conv19, i32* %block_size, align 4, !tbaa !30
  %29 = load i64, i64* %ivlen, align 8, !tbaa !17
  %conv20 = trunc i64 %29 to i32
  %iv_len = getelementptr inbounds %struct.evp_cipher_st, %struct.evp_cipher_st* %cipher, i64 0, i32 3
  store i32 %conv20, i32* %iv_len, align 4, !tbaa !31
  %30 = load i64, i64* %keylen, align 8, !tbaa !17
  %conv21 = trunc i64 %30 to i32
  %key_len = getelementptr inbounds %struct.evp_cipher_st, %struct.evp_cipher_st* %cipher, i64 0, i32 2
  store i32 %conv21, i32* %key_len, align 8, !tbaa !32
  %31 = load i32, i32* %mode, align 4, !tbaa !16
  %conv22 = zext i32 %31 to i64
  %flags = getelementptr inbounds %struct.evp_cipher_st, %struct.evp_cipher_st* %cipher, i64 0, i32 4
  store i64 %conv22, i64* %flags, align 8, !tbaa !24
  %32 = load i32, i32* %aead, align 4, !tbaa !16
  %tobool23.not = icmp eq i32 %32, 0
  br i1 %tobool23.not, label %if.end, label %if.then24

if.then24:                                        ; preds = %if.then
  %or = or i64 %conv22, 2097152
  store i64 %or, i64* %flags, align 8, !tbaa !24
  br label %if.end

if.end:                                           ; preds = %if.then24, %if.then
  %33 = phi i64 [ %or, %if.then24 ], [ %conv22, %if.then ]
  %34 = load i32, i32* %custom_iv, align 4, !tbaa !16
  %tobool26.not = icmp eq i32 %34, 0
  br i1 %tobool26.not, label %if.end30, label %if.then27

if.then27:                                        ; preds = %if.end
  %or29 = or i64 %33, 16
  store i64 %or29, i64* %flags, align 8, !tbaa !24
  br label %if.end30

if.end30:                                         ; preds = %if.then27, %if.end
  %35 = phi i64 [ %or29, %if.then27 ], [ %33, %if.end ]
  %36 = load i32, i32* %cts, align 4, !tbaa !16
  %tobool31.not = icmp eq i32 %36, 0
  br i1 %tobool31.not, label %if.end35, label %if.then32

if.then32:                                        ; preds = %if.end30
  %or34 = or i64 %35, 16384
  store i64 %or34, i64* %flags, align 8, !tbaa !24
  br label %if.end35

if.end35:                                         ; preds = %if.then32, %if.end30
  %37 = phi i64 [ %or34, %if.then32 ], [ %35, %if.end30 ]
  %38 = load i32, i32* %multiblock, align 4, !tbaa !16
  %tobool36.not = icmp eq i32 %38, 0
  br i1 %tobool36.not, label %if.end40, label %if.then37

if.then37:                                        ; preds = %if.end35
  %or39 = or i64 %37, 4194304
  store i64 %or39, i64* %flags, align 8, !tbaa !24
  br label %if.end40

if.end40:                                         ; preds = %if.then37, %if.end35
  %39 = phi i64 [ %or39, %if.then37 ], [ %37, %if.end35 ]
  %ccipher = getelementptr inbounds %struct.evp_cipher_st, %struct.evp_cipher_st* %cipher, i64 0, i32 25
  %40 = load i32 (i8*, i8*, i64*, i64, i8*, i64)*, i32 (i8*, i8*, i64*, i64, i8*, i64)** %ccipher, align 8, !tbaa !33
  %cmp41.not = icmp eq i32 (i8*, i8*, i64*, i64, i8*, i64)* %40, null
  br i1 %cmp41.not, label %if.end46, label %if.then43

if.then43:                                        ; preds = %if.end40
  %or45 = or i64 %39, 1048576
  store i64 %or45, i64* %flags, align 8, !tbaa !24
  br label %if.end46

if.end46:                                         ; preds = %if.then43, %if.end40
  %41 = phi i64 [ %or45, %if.then43 ], [ %39, %if.end40 ]
  %42 = load i32, i32* %randkey, align 4, !tbaa !16
  %tobool47.not = icmp eq i32 %42, 0
  br i1 %tobool47.not, label %if.end51, label %if.then48

if.then48:                                        ; preds = %if.end46
  %or50 = or i64 %41, 512
  store i64 %or50, i64* %flags, align 8, !tbaa !24
  br label %if.end51

if.end51:                                         ; preds = %if.then48, %if.end46
  %call52 = call %struct.ossl_param_st* @EVP_CIPHER_gettable_ctx_params(%struct.evp_cipher_st* noundef nonnull %cipher) #14
  %call53 = call %struct.ossl_param_st* @OSSL_PARAM_locate_const(%struct.ossl_param_st* noundef %call52, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0)) #14
  %tobool54.not = icmp eq %struct.ossl_param_st* %call53, null
  br i1 %tobool54.not, label %if.end59, label %if.then55

if.then55:                                        ; preds = %if.end51
  %43 = load i64, i64* %flags, align 8, !tbaa !24
  %or57 = or i64 %43, 16777216
  store i64 %or57, i64* %flags, align 8, !tbaa !24
  br label %if.end59

if.end59:                                         ; preds = %if.end51, %if.then55, %entry
  %conv = zext i1 %cmp to i32
  call void @llvm.lifetime.end.p0i8(i64 400, i8* nonnull %9) #15
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %8) #15
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #15
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #15
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #15
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #15
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #15
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #15
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #15
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #15
  ret i32 %conv
}

declare void @OSSL_PARAM_construct_size_t(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8, i8* noundef, i64* noundef) local_unnamed_addr #2

declare void @OSSL_PARAM_construct_uint(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8, i8* noundef, i32* noundef) local_unnamed_addr #2

declare void @OSSL_PARAM_construct_int(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8, i8* noundef, i32* noundef) local_unnamed_addr #2

declare i32 @evp_do_ciph_getparams(%struct.evp_cipher_st* noundef, %struct.ossl_param_st* noundef) local_unnamed_addr #2

declare %struct.ossl_param_st* @OSSL_PARAM_locate_const(%struct.ossl_param_st* noundef, i8* noundef) local_unnamed_addr #2

declare %struct.ossl_param_st* @EVP_CIPHER_gettable_ctx_params(%struct.evp_cipher_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @EVP_CIPHER_get_block_size(%struct.evp_cipher_st* nocapture noundef readonly %cipher) local_unnamed_addr #4 {
entry:
  %block_size = getelementptr inbounds %struct.evp_cipher_st, %struct.evp_cipher_st* %cipher, i64 0, i32 1
  %0 = load i32, i32* %block_size, align 4, !tbaa !30
  ret i32 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @EVP_CIPHER_CTX_get_block_size(%struct.evp_cipher_ctx_st* nocapture noundef readonly %ctx) local_unnamed_addr #4 {
entry:
  %cipher = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 0
  %0 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %cipher, align 8, !tbaa !8
  %call = tail call i32 @EVP_CIPHER_get_block_size(%struct.evp_cipher_st* noundef %0) #13
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @EVP_CIPHER_impl_ctx_size(%struct.evp_cipher_st* nocapture noundef readonly %e) local_unnamed_addr #4 {
entry:
  %ctx_size = getelementptr inbounds %struct.evp_cipher_st, %struct.evp_cipher_st* %e, i64 0, i32 9
  %0 = load i32, i32* %ctx_size, align 8, !tbaa !34
  ret i32 %0
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_Cipher(%struct.evp_cipher_ctx_st* noundef %ctx, i8* noundef %out, i8* noundef %in, i32 noundef %inl) local_unnamed_addr #0 {
entry:
  %outl = alloca i64, align 8
  %cipher = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 0
  %0 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %cipher, align 8, !tbaa !8
  %prov = getelementptr inbounds %struct.evp_cipher_st, %struct.evp_cipher_st* %0, i64 0, i32 17
  %1 = load %struct.ossl_provider_st*, %struct.ossl_provider_st** %prov, align 8, !tbaa !14
  %cmp.not = icmp eq %struct.ossl_provider_st* %1, null
  br i1 %cmp.not, label %if.end43, label %if.then

if.then:                                          ; preds = %entry
  %2 = bitcast i64* %outl to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #15
  store i64 0, i64* %outl, align 8, !tbaa !17
  %call = tail call i32 @EVP_CIPHER_CTX_get_block_size(%struct.evp_cipher_ctx_st* noundef nonnull %ctx) #13
  %conv = sext i32 %call to i64
  %ccipher = getelementptr inbounds %struct.evp_cipher_st, %struct.evp_cipher_st* %0, i64 0, i32 25
  %3 = load i32 (i8*, i8*, i64*, i64, i8*, i64)*, i32 (i8*, i8*, i64*, i64, i8*, i64)** %ccipher, align 8, !tbaa !33
  %cmp2.not = icmp eq i32 (i8*, i8*, i64*, i64, i8*, i64)* %3, null
  br i1 %cmp2.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.then
  %algctx = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 15
  %4 = load i8*, i8** %algctx, align 8, !tbaa !23
  %conv7 = zext i32 %inl to i64
  %cmp8 = icmp eq i32 %call, 1
  %cond = select i1 %cmp8, i64 0, i64 %conv
  %add = add nsw i64 %cond, %conv7
  %call11 = call i32 %3(i8* noundef %4, i8* noundef %out, i64* noundef nonnull %outl, i64 noundef %add, i8* noundef %in, i64 noundef %conv7) #14
  %tobool.not = icmp eq i32 %call11, 0
  %5 = load i64, i64* %outl, align 8
  %conv13 = trunc i64 %5 to i32
  %cond16 = select i1 %tobool.not, i32 -1, i32 %conv13
  br label %if.end42

if.else:                                          ; preds = %if.then
  %cmp17.not = icmp eq i8* %in, null
  br i1 %cmp17.not, label %if.else32, label %if.then19

if.then19:                                        ; preds = %if.else
  %cupdate = getelementptr inbounds %struct.evp_cipher_st, %struct.evp_cipher_st* %0, i64 0, i32 23
  %6 = load i32 (i8*, i8*, i64*, i64, i8*, i64)*, i32 (i8*, i8*, i64*, i64, i8*, i64)** %cupdate, align 8, !tbaa !35
  %algctx21 = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 15
  %7 = load i8*, i8** %algctx21, align 8, !tbaa !23
  %conv22 = zext i32 %inl to i64
  %cmp23 = icmp eq i32 %call, 1
  %cond28 = select i1 %cmp23, i64 0, i64 %conv
  %add29 = add nsw i64 %cond28, %conv22
  %call31 = call i32 %6(i8* noundef %7, i8* noundef %out, i64* noundef nonnull %outl, i64 noundef %add29, i8* noundef nonnull %in, i64 noundef %conv22) #14
  br label %if.end42

if.else32:                                        ; preds = %if.else
  %cfinal = getelementptr inbounds %struct.evp_cipher_st, %struct.evp_cipher_st* %0, i64 0, i32 24
  %8 = load i32 (i8*, i8*, i64*, i64)*, i32 (i8*, i8*, i64*, i64)** %cfinal, align 8, !tbaa !36
  %algctx34 = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 15
  %9 = load i8*, i8** %algctx34, align 8, !tbaa !23
  %cmp35 = icmp eq i32 %call, 1
  %cond40 = select i1 %cmp35, i64 0, i64 %conv
  %call41 = call i32 %8(i8* noundef %9, i8* noundef %out, i64* noundef nonnull %outl, i64 noundef %cond40) #14
  br label %if.end42

if.end42:                                         ; preds = %if.then19, %if.else32, %if.then4
  %ret.0 = phi i32 [ %cond16, %if.then4 ], [ %call31, %if.then19 ], [ %call41, %if.else32 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #15
  br label %return

if.end43:                                         ; preds = %entry
  %do_cipher = getelementptr inbounds %struct.evp_cipher_st, %struct.evp_cipher_st* %0, i64 0, i32 7
  %10 = load i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)*, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)** %do_cipher, align 8, !tbaa !37
  %conv45 = zext i32 %inl to i64
  %call46 = tail call i32 %10(%struct.evp_cipher_ctx_st* noundef nonnull %ctx, i8* noundef %out, i8* noundef %in, i64 noundef %conv45) #14
  br label %return

return:                                           ; preds = %if.end43, %if.end42
  %retval.0 = phi i32 [ %ret.0, %if.end42 ], [ %call46, %if.end43 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.evp_cipher_st* @EVP_CIPHER_CTX_cipher(%struct.evp_cipher_ctx_st* noundef readonly %ctx) local_unnamed_addr #4 {
entry:
  %cmp = icmp eq %struct.evp_cipher_ctx_st* %ctx, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %cipher = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 0
  %0 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %cipher, align 8, !tbaa !8
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi %struct.evp_cipher_st* [ %0, %if.end ], [ null, %entry ]
  ret %struct.evp_cipher_st* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.evp_cipher_st* @EVP_CIPHER_CTX_get0_cipher(%struct.evp_cipher_ctx_st* noundef readonly %ctx) local_unnamed_addr #4 {
entry:
  %cmp = icmp eq %struct.evp_cipher_ctx_st* %ctx, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %cipher = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 0
  %0 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %cipher, align 8, !tbaa !8
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi %struct.evp_cipher_st* [ %0, %if.end ], [ null, %entry ]
  ret %struct.evp_cipher_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define %struct.evp_cipher_st* @EVP_CIPHER_CTX_get1_cipher(%struct.evp_cipher_ctx_st* noundef readonly %ctx) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.evp_cipher_ctx_st* %ctx, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %cipher1 = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 0
  %0 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %cipher1, align 8, !tbaa !8
  %call = tail call i32 @EVP_CIPHER_up_ref(%struct.evp_cipher_st* noundef %0) #14
  %tobool.not = icmp eq i32 %call, 0
  %. = select i1 %tobool.not, %struct.evp_cipher_st* null, %struct.evp_cipher_st* %0
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry
  %retval.0 = phi %struct.evp_cipher_st* [ null, %entry ], [ %., %if.end ]
  ret %struct.evp_cipher_st* %retval.0
}

declare i32 @EVP_CIPHER_up_ref(%struct.evp_cipher_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @EVP_CIPHER_CTX_is_encrypting(%struct.evp_cipher_ctx_st* nocapture noundef readonly %ctx) local_unnamed_addr #4 {
entry:
  %encrypt = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 2
  %0 = load i32, i32* %encrypt, align 8, !tbaa !38
  ret i32 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i8* @EVP_CIPHER_CTX_get_app_data(%struct.evp_cipher_ctx_st* nocapture noundef readonly %ctx) local_unnamed_addr #4 {
entry:
  %app_data = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 8
  %0 = load i8*, i8** %app_data, align 8, !tbaa !39
  ret i8* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @EVP_CIPHER_CTX_set_app_data(%struct.evp_cipher_ctx_st* nocapture noundef writeonly %ctx, i8* noundef %data) local_unnamed_addr #7 {
entry:
  %app_data = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 8
  store i8* %data, i8** %app_data, align 8, !tbaa !39
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* nocapture noundef readonly %ctx) local_unnamed_addr #4 {
entry:
  %cipher_data = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 11
  %0 = load i8*, i8** %cipher_data, align 8, !tbaa !40
  ret i8* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define i8* @EVP_CIPHER_CTX_set_cipher_data(%struct.evp_cipher_ctx_st* nocapture noundef %ctx, i8* noundef %cipher_data) local_unnamed_addr #8 {
entry:
  %cipher_data1 = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 11
  %0 = load i8*, i8** %cipher_data1, align 8, !tbaa !40
  store i8* %cipher_data, i8** %cipher_data1, align 8, !tbaa !40
  ret i8* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @EVP_CIPHER_get_iv_length(%struct.evp_cipher_st* nocapture noundef readonly %cipher) local_unnamed_addr #4 {
entry:
  %iv_len = getelementptr inbounds %struct.evp_cipher_st, %struct.evp_cipher_st* %cipher, i64 0, i32 3
  %0 = load i32, i32* %iv_len, align 4, !tbaa !31
  ret i32 %0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #9

declare i32 @evp_do_ciph_ctx_getparams(%struct.evp_cipher_st* noundef, i8* noundef, %struct.ossl_param_st* noundef) local_unnamed_addr #2

declare i32 @EVP_CIPHER_CTX_ctrl(%struct.evp_cipher_ctx_st* noundef, i32 noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_CIPHER_CTX_get_tag_length(%struct.evp_cipher_ctx_st* nocapture noundef readonly %ctx) local_unnamed_addr #0 {
entry:
  %v = alloca i64, align 8
  %params = alloca [2 x %struct.ossl_param_st], align 16
  %0 = bitcast i64* %v to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #15
  store i64 0, i64* %v, align 8, !tbaa !17
  %1 = bitcast [2 x %struct.ossl_param_st]* %params to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %1) #15
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(80) %1, i8 0, i64 80, i1 false)
  %arrayidx = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0
  %params3 = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0
  call void @OSSL_PARAM_construct_size_t(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %params3, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), i64* noundef nonnull %v) #14
  %cipher = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 0
  %2 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %cipher, align 8, !tbaa !8
  %algctx = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 15
  %3 = load i8*, i8** %algctx, align 8, !tbaa !23
  %call = call i32 @evp_do_ciph_ctx_getparams(%struct.evp_cipher_st* noundef %2, i8* noundef %3, %struct.ossl_param_st* noundef nonnull %arrayidx) #14
  %cmp = icmp eq i32 %call, 1
  %4 = load i64, i64* %v, align 8
  %conv = trunc i64 %4 to i32
  %cond = select i1 %cmp, i32 %conv, i32 0
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %1) #15
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #15
  ret i32 %cond
}

declare void @OSSL_PARAM_construct_octet_ptr(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8, i8* noundef, i8** noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i8* @EVP_CIPHER_CTX_iv(%struct.evp_cipher_ctx_st* noundef %ctx) local_unnamed_addr #0 {
entry:
  %v = alloca i8*, align 8
  %params = alloca [2 x %struct.ossl_param_st], align 16
  %0 = bitcast i8** %v to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #15
  %arraydecay = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 5, i64 0
  store i8* %arraydecay, i8** %v, align 8, !tbaa !4
  %1 = bitcast [2 x %struct.ossl_param_st]* %params to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %1) #15
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(80) %1, i8 0, i64 80, i1 false)
  %arrayidx = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0
  %params5 = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0
  call void @OSSL_PARAM_construct_octet_ptr(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %params5, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i64 0, i64 0), i8** noundef nonnull %v, i64 noundef 16) #14
  %cipher = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 0
  %2 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %cipher, align 8, !tbaa !8
  %algctx = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 15
  %3 = load i8*, i8** %algctx, align 8, !tbaa !23
  %call = call i32 @evp_do_ciph_ctx_getparams(%struct.evp_cipher_st* noundef %2, i8* noundef %3, %struct.ossl_param_st* noundef nonnull %arrayidx) #14
  %cmp.not = icmp eq i32 %call, 0
  %4 = load i8*, i8** %v, align 8
  %cond = select i1 %cmp.not, i8* null, i8* %4
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %1) #15
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #15
  ret i8* %cond
}

; Function Attrs: noinline nounwind uwtable
define i8* @EVP_CIPHER_CTX_iv_noconst(%struct.evp_cipher_ctx_st* noundef %ctx) local_unnamed_addr #0 {
entry:
  %v = alloca i8*, align 8
  %params = alloca [2 x %struct.ossl_param_st], align 16
  %0 = bitcast i8** %v to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #15
  %arraydecay = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 5, i64 0
  store i8* %arraydecay, i8** %v, align 8, !tbaa !4
  %1 = bitcast [2 x %struct.ossl_param_st]* %params to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %1) #15
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(80) %1, i8 0, i64 80, i1 false)
  %arrayidx = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0
  %params5 = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0
  call void @OSSL_PARAM_construct_octet_ptr(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %params5, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i64 0, i64 0), i8** noundef nonnull %v, i64 noundef 16) #14
  %cipher = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 0
  %2 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %cipher, align 8, !tbaa !8
  %algctx = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 15
  %3 = load i8*, i8** %algctx, align 8, !tbaa !23
  %call = call i32 @evp_do_ciph_ctx_getparams(%struct.evp_cipher_st* noundef %2, i8* noundef %3, %struct.ossl_param_st* noundef nonnull %arrayidx) #14
  %cmp.not = icmp eq i32 %call, 0
  %4 = load i8*, i8** %v, align 8
  %cond = select i1 %cmp.not, i8* null, i8* %4
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %1) #15
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #15
  ret i8* %cond
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_CIPHER_CTX_get_updated_iv(%struct.evp_cipher_ctx_st* nocapture noundef readonly %ctx, i8* noundef %buf, i64 noundef %len) local_unnamed_addr #0 {
entry:
  %params = alloca [2 x %struct.ossl_param_st], align 16
  %0 = bitcast [2 x %struct.ossl_param_st]* %params to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %0) #15
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(80) %0, i8 0, i64 80, i1 false)
  %arrayidx = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0
  %params2 = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0
  call void @OSSL_PARAM_construct_octet_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %params2, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i64 0, i64 0), i8* noundef %buf, i64 noundef %len) #14
  %cipher = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 0
  %1 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %cipher, align 8, !tbaa !8
  %algctx = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 15
  %2 = load i8*, i8** %algctx, align 8, !tbaa !23
  %call = call i32 @evp_do_ciph_ctx_getparams(%struct.evp_cipher_st* noundef %1, i8* noundef %2, %struct.ossl_param_st* noundef nonnull %arrayidx) #14
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %0) #15
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_CIPHER_CTX_get_original_iv(%struct.evp_cipher_ctx_st* nocapture noundef readonly %ctx, i8* noundef %buf, i64 noundef %len) local_unnamed_addr #0 {
entry:
  %params = alloca [2 x %struct.ossl_param_st], align 16
  %0 = bitcast [2 x %struct.ossl_param_st]* %params to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %0) #15
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(80) %0, i8 0, i64 80, i1 false)
  %arrayidx = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0
  %params2 = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0
  call void @OSSL_PARAM_construct_octet_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %params2, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0), i8* noundef %buf, i64 noundef %len) #14
  %cipher = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 0
  %1 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %cipher, align 8, !tbaa !8
  %algctx = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 15
  %2 = load i8*, i8** %algctx, align 8, !tbaa !23
  %call = call i32 @evp_do_ciph_ctx_getparams(%struct.evp_cipher_st* noundef %1, i8* noundef %2, %struct.ossl_param_st* noundef nonnull %arrayidx) #14
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %0) #15
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull i8* @EVP_CIPHER_CTX_buf_noconst(%struct.evp_cipher_ctx_st* noundef readnone %ctx) local_unnamed_addr #10 {
entry:
  %arraydecay = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 6, i64 0
  ret i8* %arraydecay
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_CIPHER_CTX_get_num(%struct.evp_cipher_ctx_st* nocapture noundef readonly %ctx) local_unnamed_addr #0 {
entry:
  %v = alloca i32, align 4
  %params = alloca [2 x %struct.ossl_param_st], align 16
  %0 = bitcast i32* %v to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #15
  %num = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 7
  %1 = load i32, i32* %num, align 8, !tbaa !41
  store i32 %1, i32* %v, align 4, !tbaa !16
  %2 = bitcast [2 x %struct.ossl_param_st]* %params to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %2) #15
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(80) %2, i8 0, i64 80, i1 false)
  %arrayidx = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0
  %params4 = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0
  call void @OSSL_PARAM_construct_uint(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %params4, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0), i32* noundef nonnull %v) #14
  %cipher = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 0
  %3 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %cipher, align 8, !tbaa !8
  %algctx = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 15
  %4 = load i8*, i8** %algctx, align 8, !tbaa !23
  %call = call i32 @evp_do_ciph_ctx_getparams(%struct.evp_cipher_st* noundef %3, i8* noundef %4, %struct.ossl_param_st* noundef nonnull %arrayidx) #14
  %cmp.not = icmp eq i32 %call, 0
  %5 = load i32, i32* %v, align 4
  %cond = select i1 %cmp.not, i32 -1, i32 %5
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %2) #15
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #15
  ret i32 %cond
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_CIPHER_CTX_set_num(%struct.evp_cipher_ctx_st* nocapture noundef %ctx, i32 noundef %num) local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %params = alloca [2 x %struct.ossl_param_st], align 16
  %0 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #15
  store i32 %num, i32* %n, align 4, !tbaa !16
  %1 = bitcast [2 x %struct.ossl_param_st]* %params to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %1) #15
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(80) %1, i8 0, i64 80, i1 false)
  %arrayidx = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0
  %params7 = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0
  call void @OSSL_PARAM_construct_uint(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %params7, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0), i32* noundef nonnull %n) #14
  %cipher = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 0
  %2 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %cipher, align 8, !tbaa !8
  %algctx = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 15
  %3 = load i8*, i8** %algctx, align 8, !tbaa !23
  %call = call i32 @evp_do_ciph_ctx_setparams(%struct.evp_cipher_st* noundef %2, i8* noundef %3, %struct.ossl_param_st* noundef nonnull %arrayidx) #14
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %n, align 4, !tbaa !16
  %num1 = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 7
  store i32 %4, i32* %num1, align 8, !tbaa !41
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %conv = zext i1 %cmp to i32
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %1) #15
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #15
  ret i32 %conv
}

declare i32 @evp_do_ciph_ctx_setparams(%struct.evp_cipher_st* noundef, i8* noundef, %struct.ossl_param_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @EVP_CIPHER_get_key_length(%struct.evp_cipher_st* nocapture noundef readonly %cipher) local_unnamed_addr #4 {
entry:
  %key_len = getelementptr inbounds %struct.evp_cipher_st, %struct.evp_cipher_st* %cipher, i64 0, i32 2
  %0 = load i32, i32* %key_len, align 8, !tbaa !32
  ret i32 %0
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_CIPHER_CTX_get_key_length(%struct.evp_cipher_ctx_st* nocapture noundef readonly %ctx) local_unnamed_addr #0 {
entry:
  %v = alloca i64, align 8
  %params = alloca [2 x %struct.ossl_param_st], align 16
  %0 = bitcast i64* %v to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #15
  %key_len = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 9
  %1 = load i32, i32* %key_len, align 8, !tbaa !42
  %conv = sext i32 %1 to i64
  store i64 %conv, i64* %v, align 8, !tbaa !17
  %2 = bitcast [2 x %struct.ossl_param_st]* %params to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %2) #15
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(80) %2, i8 0, i64 80, i1 false)
  %arrayidx = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0
  %params6 = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0
  call void @OSSL_PARAM_construct_size_t(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %params6, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i64* noundef nonnull %v) #14
  %cipher = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 0
  %3 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %cipher, align 8, !tbaa !8
  %algctx = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 15
  %4 = load i8*, i8** %algctx, align 8, !tbaa !23
  %call = call i32 @evp_do_ciph_ctx_getparams(%struct.evp_cipher_st* noundef %3, i8* noundef %4, %struct.ossl_param_st* noundef nonnull %arrayidx) #14
  %cmp.not = icmp eq i32 %call, 0
  %5 = load i64, i64* %v, align 8
  %conv2 = trunc i64 %5 to i32
  %cond = select i1 %cmp.not, i32 -1, i32 %conv2
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %2) #15
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #15
  ret i32 %cond
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @EVP_CIPHER_CTX_get_nid(%struct.evp_cipher_ctx_st* nocapture noundef readonly %ctx) local_unnamed_addr #4 {
entry:
  %cipher = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 0
  %0 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %cipher, align 8, !tbaa !8
  %nid = getelementptr inbounds %struct.evp_cipher_st, %struct.evp_cipher_st* %0, i64 0, i32 0
  %1 = load i32, i32* %nid, align 8, !tbaa !29
  ret i32 %1
}

declare i32 @evp_is_a(%struct.ossl_provider_st* noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i8* @EVP_CIPHER_get0_name(%struct.evp_cipher_st* nocapture noundef readonly %cipher) local_unnamed_addr #0 {
entry:
  %type_name = getelementptr inbounds %struct.evp_cipher_st, %struct.evp_cipher_st* %cipher, i64 0, i32 15
  %0 = load i8*, i8** %type_name, align 8, !tbaa !43
  %cmp.not = icmp eq i8* %0, null
  br i1 %cmp.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %call = tail call i32 @EVP_CIPHER_get_nid(%struct.evp_cipher_st* noundef nonnull %cipher) #13
  %call2 = tail call i8* @OBJ_nid2sn(i32 noundef %call) #14
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i8* [ %call2, %if.end ], [ %0, %entry ]
  ret i8* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @evp_cipher_get_number(%struct.evp_cipher_st* nocapture noundef readonly %cipher) local_unnamed_addr #4 {
entry:
  %name_id = getelementptr inbounds %struct.evp_cipher_st, %struct.evp_cipher_st* %cipher, i64 0, i32 14
  %0 = load i32, i32* %name_id, align 8, !tbaa !25
  ret i32 %0
}

declare i8* @OBJ_nid2sn(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i8* @EVP_CIPHER_get0_description(%struct.evp_cipher_st* nocapture noundef readonly %cipher) local_unnamed_addr #0 {
entry:
  %description = getelementptr inbounds %struct.evp_cipher_st, %struct.evp_cipher_st* %cipher, i64 0, i32 16
  %0 = load i8*, i8** %description, align 8, !tbaa !44
  %cmp.not = icmp eq i8* %0, null
  br i1 %cmp.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %call = tail call i32 @EVP_CIPHER_get_nid(%struct.evp_cipher_st* noundef nonnull %cipher) #13
  %call2 = tail call i8* @OBJ_nid2ln(i32 noundef %call) #14
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i8* [ %call2, %if.end ], [ %0, %entry ]
  ret i8* %retval.0
}

declare i8* @OBJ_nid2ln(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_CIPHER_names_do_all(%struct.evp_cipher_st* nocapture noundef readonly %cipher, void (i8*, i8*)* noundef %fn, i8* noundef %data) local_unnamed_addr #0 {
entry:
  %prov = getelementptr inbounds %struct.evp_cipher_st, %struct.evp_cipher_st* %cipher, i64 0, i32 17
  %0 = load %struct.ossl_provider_st*, %struct.ossl_provider_st** %prov, align 8, !tbaa !14
  %cmp.not = icmp eq %struct.ossl_provider_st* %0, null
  br i1 %cmp.not, label %return, label %if.then

if.then:                                          ; preds = %entry
  %name_id = getelementptr inbounds %struct.evp_cipher_st, %struct.evp_cipher_st* %cipher, i64 0, i32 14
  %1 = load i32, i32* %name_id, align 8, !tbaa !25
  %call = tail call i32 @evp_names_do_all(%struct.ossl_provider_st* noundef nonnull %0, i32 noundef %1, void (i8*, i8*)* noundef %fn, i8* noundef %data) #14
  br label %return

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ 1, %entry ]
  ret i32 %retval.0
}

declare i32 @evp_names_do_all(%struct.ossl_provider_st* noundef, i32 noundef, void (i8*, i8*)* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.ossl_provider_st* @EVP_CIPHER_get0_provider(%struct.evp_cipher_st* nocapture noundef readonly %cipher) local_unnamed_addr #4 {
entry:
  %prov = getelementptr inbounds %struct.evp_cipher_st, %struct.evp_cipher_st* %cipher, i64 0, i32 17
  %0 = load %struct.ossl_provider_st*, %struct.ossl_provider_st** %prov, align 8, !tbaa !14
  ret %struct.ossl_provider_st* %0
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_MD_is_a(%struct.evp_md_st* noundef %md, i8* noundef %name) local_unnamed_addr #0 {
entry:
  %prov = getelementptr inbounds %struct.evp_md_st, %struct.evp_md_st* %md, i64 0, i32 16
  %0 = load %struct.ossl_provider_st*, %struct.ossl_provider_st** %prov, align 8, !tbaa !45
  %cmp.not = icmp eq %struct.ossl_provider_st* %0, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %name_id = getelementptr inbounds %struct.evp_md_st, %struct.evp_md_st* %md, i64 0, i32 13
  %1 = load i32, i32* %name_id, align 8, !tbaa !47
  %call = tail call i32 @evp_is_a(%struct.ossl_provider_st* noundef nonnull %0, i32 noundef %1, i8* noundef null, i8* noundef %name) #14
  br label %return

if.end:                                           ; preds = %entry
  %call2 = tail call i8* @EVP_MD_get0_name(%struct.evp_md_st* noundef nonnull %md) #13
  %call3 = tail call i32 @evp_is_a(%struct.ossl_provider_st* noundef null, i32 noundef 0, i8* noundef %call2, i8* noundef %name) #14
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call3, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i8* @EVP_MD_get0_name(%struct.evp_md_st* noundef readonly %md) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.evp_md_st* %md, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %type_name = getelementptr inbounds %struct.evp_md_st, %struct.evp_md_st* %md, i64 0, i32 14
  %0 = load i8*, i8** %type_name, align 8, !tbaa !48
  %cmp1.not = icmp eq i8* %0, null
  br i1 %cmp1.not, label %if.end4, label %return

if.end4:                                          ; preds = %if.end
  %call = tail call i32 @EVP_MD_get_type(%struct.evp_md_st* noundef nonnull %md) #13
  %call5 = tail call i8* @OBJ_nid2sn(i32 noundef %call) #14
  br label %return

return:                                           ; preds = %if.end, %entry, %if.end4
  %retval.0 = phi i8* [ %call5, %if.end4 ], [ null, %entry ], [ %0, %if.end ]
  ret i8* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @evp_md_get_number(%struct.evp_md_st* nocapture noundef readonly %md) local_unnamed_addr #4 {
entry:
  %name_id = getelementptr inbounds %struct.evp_md_st, %struct.evp_md_st* %md, i64 0, i32 13
  %0 = load i32, i32* %name_id, align 8, !tbaa !47
  ret i32 %0
}

; Function Attrs: noinline nounwind uwtable
define i8* @EVP_MD_get0_description(%struct.evp_md_st* nocapture noundef readonly %md) local_unnamed_addr #0 {
entry:
  %description = getelementptr inbounds %struct.evp_md_st, %struct.evp_md_st* %md, i64 0, i32 15
  %0 = load i8*, i8** %description, align 8, !tbaa !49
  %cmp.not = icmp eq i8* %0, null
  br i1 %cmp.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %call = tail call i32 @EVP_MD_get_type(%struct.evp_md_st* noundef nonnull %md) #13
  %call2 = tail call i8* @OBJ_nid2ln(i32 noundef %call) #14
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i8* [ %call2, %if.end ], [ %0, %entry ]
  ret i8* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @EVP_MD_get_type(%struct.evp_md_st* nocapture noundef readonly %md) local_unnamed_addr #4 {
entry:
  %type = getelementptr inbounds %struct.evp_md_st, %struct.evp_md_st* %md, i64 0, i32 0
  %0 = load i32, i32* %type, align 8, !tbaa !50
  ret i32 %0
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_MD_names_do_all(%struct.evp_md_st* nocapture noundef readonly %md, void (i8*, i8*)* noundef %fn, i8* noundef %data) local_unnamed_addr #0 {
entry:
  %prov = getelementptr inbounds %struct.evp_md_st, %struct.evp_md_st* %md, i64 0, i32 16
  %0 = load %struct.ossl_provider_st*, %struct.ossl_provider_st** %prov, align 8, !tbaa !45
  %cmp.not = icmp eq %struct.ossl_provider_st* %0, null
  br i1 %cmp.not, label %return, label %if.then

if.then:                                          ; preds = %entry
  %name_id = getelementptr inbounds %struct.evp_md_st, %struct.evp_md_st* %md, i64 0, i32 13
  %1 = load i32, i32* %name_id, align 8, !tbaa !47
  %call = tail call i32 @evp_names_do_all(%struct.ossl_provider_st* noundef nonnull %0, i32 noundef %1, void (i8*, i8*)* noundef %fn, i8* noundef %data) #14
  br label %return

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ 1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.ossl_provider_st* @EVP_MD_get0_provider(%struct.evp_md_st* nocapture noundef readonly %md) local_unnamed_addr #4 {
entry:
  %prov = getelementptr inbounds %struct.evp_md_st, %struct.evp_md_st* %md, i64 0, i32 16
  %0 = load %struct.ossl_provider_st*, %struct.ossl_provider_st** %prov, align 8, !tbaa !45
  ret %struct.ossl_provider_st* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @EVP_MD_get_pkey_type(%struct.evp_md_st* nocapture noundef readonly %md) local_unnamed_addr #4 {
entry:
  %pkey_type = getelementptr inbounds %struct.evp_md_st, %struct.evp_md_st* %md, i64 0, i32 1
  %0 = load i32, i32* %pkey_type, align 4, !tbaa !51
  ret i32 %0
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_MD_get_block_size(%struct.evp_md_st* noundef readonly %md) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.evp_md_st* %md, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #14
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 778, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.EVP_MD_get_block_size, i64 0, i64 0)) #14
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 159, i8* noundef null) #14
  br label %return

if.end:                                           ; preds = %entry
  %block_size = getelementptr inbounds %struct.evp_md_st, %struct.evp_md_st* %md, i64 0, i32 10
  %0 = load i32, i32* %block_size, align 8, !tbaa !52
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ %0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_MD_get_size(%struct.evp_md_st* noundef readonly %md) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.evp_md_st* %md, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #14
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 787, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.EVP_MD_get_size, i64 0, i64 0)) #14
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 159, i8* noundef null) #14
  br label %return

if.end:                                           ; preds = %entry
  %md_size = getelementptr inbounds %struct.evp_md_st, %struct.evp_md_st* %md, i64 0, i32 2
  %0 = load i32, i32* %md_size, align 8, !tbaa !53
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ %0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i64 @EVP_MD_get_flags(%struct.evp_md_st* nocapture noundef readonly %md) local_unnamed_addr #4 {
entry:
  %flags = getelementptr inbounds %struct.evp_md_st, %struct.evp_md_st* %md, i64 0, i32 3
  %0 = load i64, i64* %flags, align 8, !tbaa !54
  ret i64 %0
}

; Function Attrs: noinline nounwind uwtable
define %struct.evp_md_st* @EVP_MD_meth_new(i32 noundef %md_type, i32 noundef %pkey_type) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.evp_md_st* @evp_md_new() #14
  %cmp.not = icmp eq %struct.evp_md_st* %call, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %type = getelementptr inbounds %struct.evp_md_st, %struct.evp_md_st* %call, i64 0, i32 0
  store i32 %md_type, i32* %type, align 8, !tbaa !50
  %pkey_type1 = getelementptr inbounds %struct.evp_md_st, %struct.evp_md_st* %call, i64 0, i32 1
  store i32 %pkey_type, i32* %pkey_type1, align 4, !tbaa !51
  %origin = getelementptr inbounds %struct.evp_md_st, %struct.evp_md_st* %call, i64 0, i32 4
  store i32 2, i32* %origin, align 8, !tbaa !55
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret %struct.evp_md_st* %call
}

declare %struct.evp_md_st* @evp_md_new() local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.evp_md_st* @EVP_MD_meth_dup(%struct.evp_md_st* noundef %md) local_unnamed_addr #0 {
entry:
  %prov = getelementptr inbounds %struct.evp_md_st, %struct.evp_md_st* %md, i64 0, i32 16
  %0 = load %struct.ossl_provider_st*, %struct.ossl_provider_st** %prov, align 8, !tbaa !45
  %cmp.not = icmp eq %struct.ossl_provider_st* %0, null
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct.evp_md_st, %struct.evp_md_st* %md, i64 0, i32 0
  %1 = load i32, i32* %type, align 8, !tbaa !50
  %pkey_type = getelementptr inbounds %struct.evp_md_st, %struct.evp_md_st* %md, i64 0, i32 1
  %2 = load i32, i32* %pkey_type, align 4, !tbaa !51
  %call = tail call %struct.evp_md_st* @EVP_MD_meth_new(i32 noundef %1, i32 noundef %2) #13
  %cmp1.not = icmp eq %struct.evp_md_st* %call, null
  br i1 %cmp1.not, label %cleanup, label %if.then2

if.then2:                                         ; preds = %if.end
  %lock3 = getelementptr inbounds %struct.evp_md_st, %struct.evp_md_st* %call, i64 0, i32 18
  %3 = load i8*, i8** %lock3, align 8, !tbaa !56
  %4 = bitcast %struct.evp_md_st* %call to i8*
  %5 = bitcast %struct.evp_md_st* %md to i8*
  %call4 = tail call i8* @memcpy(i8* noundef nonnull %4, i8* noundef %5, i64 noundef 240) #14
  store i8* %3, i8** %lock3, align 8, !tbaa !56
  %origin = getelementptr inbounds %struct.evp_md_st, %struct.evp_md_st* %call, i64 0, i32 4
  store i32 2, i32* %origin, align 8, !tbaa !55
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then2, %entry
  %retval.0 = phi %struct.evp_md_st* [ null, %entry ], [ %call, %if.then2 ], [ null, %if.end ]
  ret %struct.evp_md_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define void @evp_md_free_int(%struct.evp_md_st* noundef %md) local_unnamed_addr #0 {
entry:
  %type_name = getelementptr inbounds %struct.evp_md_st, %struct.evp_md_st* %md, i64 0, i32 14
  %0 = load i8*, i8** %type_name, align 8, !tbaa !48
  tail call void @CRYPTO_free(i8* noundef %0, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 833) #14
  %prov = getelementptr inbounds %struct.evp_md_st, %struct.evp_md_st* %md, i64 0, i32 16
  %1 = load %struct.ossl_provider_st*, %struct.ossl_provider_st** %prov, align 8, !tbaa !45
  tail call void @ossl_provider_free(%struct.ossl_provider_st* noundef %1) #14
  %lock = getelementptr inbounds %struct.evp_md_st, %struct.evp_md_st* %md, i64 0, i32 18
  %2 = load i8*, i8** %lock, align 8, !tbaa !56
  tail call void @CRYPTO_THREAD_lock_free(i8* noundef %2) #14
  %3 = bitcast %struct.evp_md_st* %md to i8*
  tail call void @CRYPTO_free(i8* noundef %3, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 836) #14
  ret void
}

declare void @ossl_provider_free(%struct.ossl_provider_st* noundef) local_unnamed_addr #2

declare void @CRYPTO_THREAD_lock_free(i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define void @EVP_MD_meth_free(%struct.evp_md_st* noundef %md) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.evp_md_st* %md, null
  br i1 %cmp, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %origin = getelementptr inbounds %struct.evp_md_st, %struct.evp_md_st* %md, i64 0, i32 4
  %0 = load i32, i32* %origin, align 8, !tbaa !55
  %cmp1.not = icmp eq i32 %0, 2
  br i1 %cmp1.not, label %if.end, label %return

if.end:                                           ; preds = %lor.lhs.false
  tail call void @evp_md_free_int(%struct.evp_md_st* noundef nonnull %md) #13
  br label %return

return:                                           ; preds = %entry, %lor.lhs.false, %if.end
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define i32 @EVP_MD_meth_set_input_blocksize(%struct.evp_md_st* nocapture noundef %md, i32 noundef %blocksize) local_unnamed_addr #8 {
entry:
  %block_size = getelementptr inbounds %struct.evp_md_st, %struct.evp_md_st* %md, i64 0, i32 10
  %0 = load i32, i32* %block_size, align 8, !tbaa !52
  %cmp.not = icmp eq i32 %0, 0
  br i1 %cmp.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  store i32 %blocksize, i32* %block_size, align 8, !tbaa !52
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define i32 @EVP_MD_meth_set_result_size(%struct.evp_md_st* nocapture noundef %md, i32 noundef %resultsize) local_unnamed_addr #8 {
entry:
  %md_size = getelementptr inbounds %struct.evp_md_st, %struct.evp_md_st* %md, i64 0, i32 2
  %0 = load i32, i32* %md_size, align 8, !tbaa !53
  %cmp.not = icmp eq i32 %0, 0
  br i1 %cmp.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  store i32 %resultsize, i32* %md_size, align 8, !tbaa !53
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define i32 @EVP_MD_meth_set_app_datasize(%struct.evp_md_st* nocapture noundef %md, i32 noundef %datasize) local_unnamed_addr #8 {
entry:
  %ctx_size = getelementptr inbounds %struct.evp_md_st, %struct.evp_md_st* %md, i64 0, i32 11
  %0 = load i32, i32* %ctx_size, align 4, !tbaa !57
  %cmp.not = icmp eq i32 %0, 0
  br i1 %cmp.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  store i32 %datasize, i32* %ctx_size, align 4, !tbaa !57
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define i32 @EVP_MD_meth_set_flags(%struct.evp_md_st* nocapture noundef %md, i64 noundef %flags) local_unnamed_addr #8 {
entry:
  %flags1 = getelementptr inbounds %struct.evp_md_st, %struct.evp_md_st* %md, i64 0, i32 3
  %0 = load i64, i64* %flags1, align 8, !tbaa !54
  %cmp.not = icmp eq i64 %0, 0
  br i1 %cmp.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  store i64 %flags, i64* %flags1, align 8, !tbaa !54
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define i32 @EVP_MD_meth_set_init(%struct.evp_md_st* nocapture noundef %md, i32 (%struct.evp_md_ctx_st*)* noundef %init) local_unnamed_addr #8 {
entry:
  %init1 = getelementptr inbounds %struct.evp_md_st, %struct.evp_md_st* %md, i64 0, i32 5
  %0 = load i32 (%struct.evp_md_ctx_st*)*, i32 (%struct.evp_md_ctx_st*)** %init1, align 8, !tbaa !58
  %cmp.not = icmp eq i32 (%struct.evp_md_ctx_st*)* %0, null
  br i1 %cmp.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  store i32 (%struct.evp_md_ctx_st*)* %init, i32 (%struct.evp_md_ctx_st*)** %init1, align 8, !tbaa !58
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define i32 @EVP_MD_meth_set_update(%struct.evp_md_st* nocapture noundef %md, i32 (%struct.evp_md_ctx_st*, i8*, i64)* noundef %update) local_unnamed_addr #8 {
entry:
  %update1 = getelementptr inbounds %struct.evp_md_st, %struct.evp_md_st* %md, i64 0, i32 6
  %0 = load i32 (%struct.evp_md_ctx_st*, i8*, i64)*, i32 (%struct.evp_md_ctx_st*, i8*, i64)** %update1, align 8, !tbaa !59
  %cmp.not = icmp eq i32 (%struct.evp_md_ctx_st*, i8*, i64)* %0, null
  br i1 %cmp.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  store i32 (%struct.evp_md_ctx_st*, i8*, i64)* %update, i32 (%struct.evp_md_ctx_st*, i8*, i64)** %update1, align 8, !tbaa !59
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define i32 @EVP_MD_meth_set_final(%struct.evp_md_st* nocapture noundef %md, i32 (%struct.evp_md_ctx_st*, i8*)* noundef %final) local_unnamed_addr #8 {
entry:
  %final1 = getelementptr inbounds %struct.evp_md_st, %struct.evp_md_st* %md, i64 0, i32 7
  %0 = load i32 (%struct.evp_md_ctx_st*, i8*)*, i32 (%struct.evp_md_ctx_st*, i8*)** %final1, align 8, !tbaa !60
  %cmp.not = icmp eq i32 (%struct.evp_md_ctx_st*, i8*)* %0, null
  br i1 %cmp.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  store i32 (%struct.evp_md_ctx_st*, i8*)* %final, i32 (%struct.evp_md_ctx_st*, i8*)** %final1, align 8, !tbaa !60
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define i32 @EVP_MD_meth_set_copy(%struct.evp_md_st* nocapture noundef %md, i32 (%struct.evp_md_ctx_st*, %struct.evp_md_ctx_st*)* noundef %copy) local_unnamed_addr #8 {
entry:
  %copy1 = getelementptr inbounds %struct.evp_md_st, %struct.evp_md_st* %md, i64 0, i32 8
  %0 = load i32 (%struct.evp_md_ctx_st*, %struct.evp_md_ctx_st*)*, i32 (%struct.evp_md_ctx_st*, %struct.evp_md_ctx_st*)** %copy1, align 8, !tbaa !61
  %cmp.not = icmp eq i32 (%struct.evp_md_ctx_st*, %struct.evp_md_ctx_st*)* %0, null
  br i1 %cmp.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  store i32 (%struct.evp_md_ctx_st*, %struct.evp_md_ctx_st*)* %copy, i32 (%struct.evp_md_ctx_st*, %struct.evp_md_ctx_st*)** %copy1, align 8, !tbaa !61
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define i32 @EVP_MD_meth_set_cleanup(%struct.evp_md_st* nocapture noundef %md, i32 (%struct.evp_md_ctx_st*)* noundef %cleanup) local_unnamed_addr #8 {
entry:
  %cleanup1 = getelementptr inbounds %struct.evp_md_st, %struct.evp_md_st* %md, i64 0, i32 9
  %0 = load i32 (%struct.evp_md_ctx_st*)*, i32 (%struct.evp_md_ctx_st*)** %cleanup1, align 8, !tbaa !62
  %cmp.not = icmp eq i32 (%struct.evp_md_ctx_st*)* %0, null
  br i1 %cmp.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  store i32 (%struct.evp_md_ctx_st*)* %cleanup, i32 (%struct.evp_md_ctx_st*)** %cleanup1, align 8, !tbaa !62
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define i32 @EVP_MD_meth_set_ctrl(%struct.evp_md_st* nocapture noundef %md, i32 (%struct.evp_md_ctx_st*, i32, i32, i8*)* noundef %ctrl) local_unnamed_addr #8 {
entry:
  %md_ctrl = getelementptr inbounds %struct.evp_md_st, %struct.evp_md_st* %md, i64 0, i32 12
  %0 = load i32 (%struct.evp_md_ctx_st*, i32, i32, i8*)*, i32 (%struct.evp_md_ctx_st*, i32, i32, i8*)** %md_ctrl, align 8, !tbaa !63
  %cmp.not = icmp eq i32 (%struct.evp_md_ctx_st*, i32, i32, i8*)* %0, null
  br i1 %cmp.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  store i32 (%struct.evp_md_ctx_st*, i32, i32, i8*)* %ctrl, i32 (%struct.evp_md_ctx_st*, i32, i32, i8*)** %md_ctrl, align 8, !tbaa !63
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @EVP_MD_meth_get_input_blocksize(%struct.evp_md_st* nocapture noundef readonly %md) local_unnamed_addr #4 {
entry:
  %block_size = getelementptr inbounds %struct.evp_md_st, %struct.evp_md_st* %md, i64 0, i32 10
  %0 = load i32, i32* %block_size, align 8, !tbaa !52
  ret i32 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @EVP_MD_meth_get_result_size(%struct.evp_md_st* nocapture noundef readonly %md) local_unnamed_addr #4 {
entry:
  %md_size = getelementptr inbounds %struct.evp_md_st, %struct.evp_md_st* %md, i64 0, i32 2
  %0 = load i32, i32* %md_size, align 8, !tbaa !53
  ret i32 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @EVP_MD_meth_get_app_datasize(%struct.evp_md_st* nocapture noundef readonly %md) local_unnamed_addr #4 {
entry:
  %ctx_size = getelementptr inbounds %struct.evp_md_st, %struct.evp_md_st* %md, i64 0, i32 11
  %0 = load i32, i32* %ctx_size, align 4, !tbaa !57
  ret i32 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i64 @EVP_MD_meth_get_flags(%struct.evp_md_st* nocapture noundef readonly %md) local_unnamed_addr #4 {
entry:
  %flags = getelementptr inbounds %struct.evp_md_st, %struct.evp_md_st* %md, i64 0, i32 3
  %0 = load i64, i64* %flags, align 8, !tbaa !54
  ret i64 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 (%struct.evp_md_ctx_st*)* @EVP_MD_meth_get_init(%struct.evp_md_st* nocapture noundef readonly %md) local_unnamed_addr #4 {
entry:
  %init = getelementptr inbounds %struct.evp_md_st, %struct.evp_md_st* %md, i64 0, i32 5
  %0 = load i32 (%struct.evp_md_ctx_st*)*, i32 (%struct.evp_md_ctx_st*)** %init, align 8, !tbaa !58
  ret i32 (%struct.evp_md_ctx_st*)* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 (%struct.evp_md_ctx_st*, i8*, i64)* @EVP_MD_meth_get_update(%struct.evp_md_st* nocapture noundef readonly %md) local_unnamed_addr #4 {
entry:
  %update = getelementptr inbounds %struct.evp_md_st, %struct.evp_md_st* %md, i64 0, i32 6
  %0 = load i32 (%struct.evp_md_ctx_st*, i8*, i64)*, i32 (%struct.evp_md_ctx_st*, i8*, i64)** %update, align 8, !tbaa !59
  ret i32 (%struct.evp_md_ctx_st*, i8*, i64)* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 (%struct.evp_md_ctx_st*, i8*)* @EVP_MD_meth_get_final(%struct.evp_md_st* nocapture noundef readonly %md) local_unnamed_addr #4 {
entry:
  %final = getelementptr inbounds %struct.evp_md_st, %struct.evp_md_st* %md, i64 0, i32 7
  %0 = load i32 (%struct.evp_md_ctx_st*, i8*)*, i32 (%struct.evp_md_ctx_st*, i8*)** %final, align 8, !tbaa !60
  ret i32 (%struct.evp_md_ctx_st*, i8*)* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 (%struct.evp_md_ctx_st*, %struct.evp_md_ctx_st*)* @EVP_MD_meth_get_copy(%struct.evp_md_st* nocapture noundef readonly %md) local_unnamed_addr #4 {
entry:
  %copy = getelementptr inbounds %struct.evp_md_st, %struct.evp_md_st* %md, i64 0, i32 8
  %0 = load i32 (%struct.evp_md_ctx_st*, %struct.evp_md_ctx_st*)*, i32 (%struct.evp_md_ctx_st*, %struct.evp_md_ctx_st*)** %copy, align 8, !tbaa !61
  ret i32 (%struct.evp_md_ctx_st*, %struct.evp_md_ctx_st*)* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 (%struct.evp_md_ctx_st*)* @EVP_MD_meth_get_cleanup(%struct.evp_md_st* nocapture noundef readonly %md) local_unnamed_addr #4 {
entry:
  %cleanup = getelementptr inbounds %struct.evp_md_st, %struct.evp_md_st* %md, i64 0, i32 9
  %0 = load i32 (%struct.evp_md_ctx_st*)*, i32 (%struct.evp_md_ctx_st*)** %cleanup, align 8, !tbaa !62
  ret i32 (%struct.evp_md_ctx_st*)* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 (%struct.evp_md_ctx_st*, i32, i32, i8*)* @EVP_MD_meth_get_ctrl(%struct.evp_md_st* nocapture noundef readonly %md) local_unnamed_addr #4 {
entry:
  %md_ctrl = getelementptr inbounds %struct.evp_md_st, %struct.evp_md_st* %md, i64 0, i32 12
  %0 = load i32 (%struct.evp_md_ctx_st*, i32, i32, i8*)*, i32 (%struct.evp_md_ctx_st*, i32, i32, i8*)** %md_ctrl, align 8, !tbaa !63
  ret i32 (%struct.evp_md_ctx_st*, i32, i32, i8*)* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.evp_md_st* @EVP_MD_CTX_md(%struct.evp_md_ctx_st* noundef readonly %ctx) local_unnamed_addr #4 {
entry:
  %cmp = icmp eq %struct.evp_md_ctx_st* %ctx, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %reqdigest = getelementptr inbounds %struct.evp_md_ctx_st, %struct.evp_md_ctx_st* %ctx, i64 0, i32 0
  %0 = load %struct.evp_md_st*, %struct.evp_md_st** %reqdigest, align 8, !tbaa !64
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi %struct.evp_md_st* [ %0, %if.end ], [ null, %entry ]
  ret %struct.evp_md_st* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.evp_md_st* @EVP_MD_CTX_get0_md(%struct.evp_md_ctx_st* noundef readonly %ctx) local_unnamed_addr #4 {
entry:
  %cmp = icmp eq %struct.evp_md_ctx_st* %ctx, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %reqdigest = getelementptr inbounds %struct.evp_md_ctx_st, %struct.evp_md_ctx_st* %ctx, i64 0, i32 0
  %0 = load %struct.evp_md_st*, %struct.evp_md_st** %reqdigest, align 8, !tbaa !64
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi %struct.evp_md_st* [ %0, %if.end ], [ null, %entry ]
  ret %struct.evp_md_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define %struct.evp_md_st* @EVP_MD_CTX_get1_md(%struct.evp_md_ctx_st* noundef readonly %ctx) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.evp_md_ctx_st* %ctx, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %reqdigest = getelementptr inbounds %struct.evp_md_ctx_st, %struct.evp_md_ctx_st* %ctx, i64 0, i32 0
  %0 = load %struct.evp_md_st*, %struct.evp_md_st** %reqdigest, align 8, !tbaa !64
  %call = tail call i32 @EVP_MD_up_ref(%struct.evp_md_st* noundef %0) #14
  %tobool.not = icmp eq i32 %call, 0
  %. = select i1 %tobool.not, %struct.evp_md_st* null, %struct.evp_md_st* %0
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry
  %retval.0 = phi %struct.evp_md_st* [ null, %entry ], [ %., %if.end ]
  ret %struct.evp_md_st* %retval.0
}

declare i32 @EVP_MD_up_ref(%struct.evp_md_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.evp_pkey_ctx_st* @EVP_MD_CTX_get_pkey_ctx(%struct.evp_md_ctx_st* nocapture noundef readonly %ctx) local_unnamed_addr #4 {
entry:
  %pctx = getelementptr inbounds %struct.evp_md_ctx_st, %struct.evp_md_ctx_st* %ctx, i64 0, i32 5
  %0 = load %struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st** %pctx, align 8, !tbaa !66
  ret %struct.evp_pkey_ctx_st* %0
}

; Function Attrs: noinline nounwind uwtable
define void @EVP_MD_CTX_set_pkey_ctx(%struct.evp_md_ctx_st* nocapture noundef %ctx, %struct.evp_pkey_ctx_st* noundef %pctx) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @EVP_MD_CTX_test_flags(%struct.evp_md_ctx_st* noundef %ctx, i32 noundef 1024) #13
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %pctx1 = getelementptr inbounds %struct.evp_md_ctx_st, %struct.evp_md_ctx_st* %ctx, i64 0, i32 5
  %0 = load %struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st** %pctx1, align 8, !tbaa !66
  tail call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %0) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %pctx2 = getelementptr inbounds %struct.evp_md_ctx_st, %struct.evp_md_ctx_st* %ctx, i64 0, i32 5
  store %struct.evp_pkey_ctx_st* %pctx, %struct.evp_pkey_ctx_st** %pctx2, align 8, !tbaa !66
  %cmp.not = icmp eq %struct.evp_pkey_ctx_st* %pctx, null
  br i1 %cmp.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  tail call void @EVP_MD_CTX_set_flags(%struct.evp_md_ctx_st* noundef nonnull %ctx, i32 noundef 1024) #13
  br label %if.end4

if.else:                                          ; preds = %if.end
  tail call void @EVP_MD_CTX_clear_flags(%struct.evp_md_ctx_st* noundef nonnull %ctx, i32 noundef 1024) #13
  br label %if.end4

if.end4:                                          ; preds = %if.else, %if.then3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @EVP_MD_CTX_test_flags(%struct.evp_md_ctx_st* nocapture noundef readonly %ctx, i32 noundef %flags) local_unnamed_addr #4 {
entry:
  %flags1 = getelementptr inbounds %struct.evp_md_ctx_st, %struct.evp_md_ctx_st* %ctx, i64 0, i32 3
  %0 = load i64, i64* %flags1, align 8, !tbaa !67
  %1 = trunc i64 %0 to i32
  %conv2 = and i32 %1, %flags
  ret i32 %conv2
}

declare void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define void @EVP_MD_CTX_set_flags(%struct.evp_md_ctx_st* nocapture noundef %ctx, i32 noundef %flags) local_unnamed_addr #8 {
entry:
  %conv = sext i32 %flags to i64
  %flags1 = getelementptr inbounds %struct.evp_md_ctx_st, %struct.evp_md_ctx_st* %ctx, i64 0, i32 3
  %0 = load i64, i64* %flags1, align 8, !tbaa !67
  %or = or i64 %0, %conv
  store i64 %or, i64* %flags1, align 8, !tbaa !67
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define void @EVP_MD_CTX_clear_flags(%struct.evp_md_ctx_st* nocapture noundef %ctx, i32 noundef %flags) local_unnamed_addr #8 {
entry:
  %neg = xor i32 %flags, -1
  %conv = sext i32 %neg to i64
  %flags1 = getelementptr inbounds %struct.evp_md_ctx_st, %struct.evp_md_ctx_st* %ctx, i64 0, i32 3
  %0 = load i64, i64* %flags1, align 8, !tbaa !67
  %and = and i64 %0, %conv
  store i64 %and, i64* %flags1, align 8, !tbaa !67
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i8* @EVP_MD_CTX_get0_md_data(%struct.evp_md_ctx_st* nocapture noundef readonly %ctx) local_unnamed_addr #4 {
entry:
  %md_data = getelementptr inbounds %struct.evp_md_ctx_st, %struct.evp_md_ctx_st* %ctx, i64 0, i32 4
  %0 = load i8*, i8** %md_data, align 8, !tbaa !68
  ret i8* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 (%struct.evp_md_ctx_st*, i8*, i64)* @EVP_MD_CTX_update_fn(%struct.evp_md_ctx_st* nocapture noundef readonly %ctx) local_unnamed_addr #4 {
entry:
  %update = getelementptr inbounds %struct.evp_md_ctx_st, %struct.evp_md_ctx_st* %ctx, i64 0, i32 6
  %0 = load i32 (%struct.evp_md_ctx_st*, i8*, i64)*, i32 (%struct.evp_md_ctx_st*, i8*, i64)** %update, align 8, !tbaa !69
  ret i32 (%struct.evp_md_ctx_st*, i8*, i64)* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @EVP_MD_CTX_set_update_fn(%struct.evp_md_ctx_st* nocapture noundef writeonly %ctx, i32 (%struct.evp_md_ctx_st*, i8*, i64)* noundef %update) local_unnamed_addr #7 {
entry:
  %update1 = getelementptr inbounds %struct.evp_md_ctx_st, %struct.evp_md_ctx_st* %ctx, i64 0, i32 6
  store i32 (%struct.evp_md_ctx_st*, i8*, i64)* %update, i32 (%struct.evp_md_ctx_st*, i8*, i64)** %update1, align 8, !tbaa !69
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @EVP_CIPHER_CTX_set_flags(%struct.evp_cipher_ctx_st* noundef %ctx, i32 noundef %flags) local_unnamed_addr #0 {
entry:
  %flags1 = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 10
  %0 = load i64, i64* %flags1, align 8, !tbaa !70
  %conv2 = sext i32 %flags to i64
  %or = or i64 %0, %conv2
  store i64 %or, i64* %flags1, align 8, !tbaa !70
  %xor = xor i64 %or, %0
  %and = and i64 %xor, 8192
  %cmp.not = icmp eq i64 %and, 0
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call fastcc void @evp_cipher_ctx_enable_use_bits(%struct.evp_cipher_ctx_st* noundef nonnull %ctx, i32 noundef 1) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @evp_cipher_ctx_enable_use_bits(%struct.evp_cipher_ctx_st* noundef %ctx, i32 noundef %enable) unnamed_addr #0 {
entry:
  %enable.addr = alloca i32, align 4
  %params = alloca [2 x %struct.ossl_param_st], align 16
  store i32 %enable, i32* %enable.addr, align 4, !tbaa !16
  %0 = bitcast [2 x %struct.ossl_param_st]* %params to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %0) #15
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(80) %0, i8 0, i64 80, i1 false)
  %arrayidx = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0
  %params1 = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0
  call void @OSSL_PARAM_construct_uint(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %params1, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i64 0, i64 0), i32* noundef nonnull %enable.addr) #14
  %call = call i32 @EVP_CIPHER_CTX_set_params(%struct.evp_cipher_ctx_st* noundef %ctx, %struct.ossl_param_st* noundef nonnull %arrayidx) #14
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %0) #15
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @EVP_CIPHER_CTX_clear_flags(%struct.evp_cipher_ctx_st* noundef %ctx, i32 noundef %flags) local_unnamed_addr #0 {
entry:
  %flags1 = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 10
  %0 = load i64, i64* %flags1, align 8, !tbaa !70
  %neg = xor i32 %flags, -1
  %conv2 = sext i32 %neg to i64
  %and = and i64 %0, %conv2
  store i64 %and, i64* %flags1, align 8, !tbaa !70
  %xor = xor i64 %and, %0
  %and6 = and i64 %xor, 8192
  %cmp.not = icmp eq i64 %and6, 0
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call fastcc void @evp_cipher_ctx_enable_use_bits(%struct.evp_cipher_ctx_st* noundef nonnull %ctx, i32 noundef 0) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @EVP_CIPHER_CTX_test_flags(%struct.evp_cipher_ctx_st* nocapture noundef readonly %ctx, i32 noundef %flags) local_unnamed_addr #4 {
entry:
  %flags1 = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 10
  %0 = load i64, i64* %flags1, align 8, !tbaa !70
  %1 = trunc i64 %0 to i32
  %conv2 = and i32 %1, %flags
  ret i32 %conv2
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PKEY_CTX_set_group_name(%struct.evp_pkey_ctx_st* noundef %ctx, i8* noundef %name) local_unnamed_addr #0 {
entry:
  %params = alloca [2 x %struct.ossl_param_st], align 16
  %0 = bitcast [2 x %struct.ossl_param_st]* %params to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %0) #15
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(80) %0, i8 0, i64 80, i1 false)
  %cmp = icmp eq %struct.evp_pkey_ctx_st* %ctx, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %operation = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 0
  %1 = load i32, i32* %operation, align 8, !tbaa !71
  switch i32 %1, label %if.then [
    i32 2, label %if.end
    i32 4, label %if.end
  ]

if.then:                                          ; preds = %lor.lhs.false, %entry
  tail call void @ERR_new() #14
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 1103, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.EVP_PKEY_CTX_set_group_name, i64 0, i64 0)) #14
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 147, i8* noundef null) #14
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false, %lor.lhs.false
  %cmp5 = icmp eq i8* %name, null
  br i1 %cmp5, label %cleanup, label %if.end7

if.end7:                                          ; preds = %if.end
  %arrayidx = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0
  %params12 = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0
  call void @OSSL_PARAM_construct_utf8_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %params12, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0), i8* noundef nonnull %name, i64 noundef 0) #14
  %call = call i32 @EVP_PKEY_CTX_set_params(%struct.evp_pkey_ctx_st* noundef nonnull %ctx, %struct.ossl_param_st* noundef nonnull %arrayidx) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.end7, %if.then
  %retval.0 = phi i32 [ -2, %if.then ], [ %call, %if.end7 ], [ -1, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %0) #15
  ret i32 %retval.0
}

declare void @OSSL_PARAM_construct_utf8_string(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8, i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare i32 @EVP_PKEY_CTX_set_params(%struct.evp_pkey_ctx_st* noundef, %struct.ossl_param_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PKEY_CTX_get_group_name(%struct.evp_pkey_ctx_st* noundef %ctx, i8* noundef %name, i64 noundef %namelen) local_unnamed_addr #0 {
entry:
  %params = alloca [2 x %struct.ossl_param_st], align 16
  %0 = bitcast [2 x %struct.ossl_param_st]* %params to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %0) #15
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(80) %0, i8 0, i64 80, i1 false)
  %arraydecay = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0
  %cmp = icmp eq %struct.evp_pkey_ctx_st* %ctx, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %operation = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 0
  %1 = load i32, i32* %operation, align 8, !tbaa !71
  switch i32 %1, label %if.then [
    i32 2, label %if.end
    i32 4, label %if.end
  ]

if.then:                                          ; preds = %lor.lhs.false, %entry
  tail call void @ERR_new() #14
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 1123, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.EVP_PKEY_CTX_get_group_name, i64 0, i64 0)) #14
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 147, i8* noundef null) #14
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false, %lor.lhs.false
  %cmp5 = icmp eq i8* %name, null
  br i1 %cmp5, label %cleanup, label %if.end7

if.end7:                                          ; preds = %if.end
  %params17 = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0
  call void @OSSL_PARAM_construct_utf8_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %params17, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0), i8* noundef nonnull %name, i64 noundef %namelen) #14
  %call = call i32 @EVP_PKEY_CTX_get_params(%struct.evp_pkey_ctx_st* noundef nonnull %ctx, %struct.ossl_param_st* noundef nonnull %arraydecay) #14
  %tobool.not = icmp eq i32 %call, 0
  %. = select i1 %tobool.not, i32 -1, i32 1
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end, %if.then
  %retval.0 = phi i32 [ -2, %if.then ], [ -1, %if.end ], [ %., %if.end7 ]
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %0) #15
  ret i32 %retval.0
}

declare i32 @EVP_PKEY_CTX_get_params(%struct.evp_pkey_ctx_st* noundef, %struct.ossl_param_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.evp_pkey_st* @EVP_PKEY_Q_keygen(%struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq, i8* noundef %type, ...) local_unnamed_addr #0 {
entry:
  %args = alloca [1 x %struct.__va_list_tag], align 16
  %bits = alloca i64, align 8
  %params = alloca [2 x %struct.ossl_param_st], align 16
  %0 = bitcast [1 x %struct.__va_list_tag]* %args to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #15
  %1 = bitcast i64* %bits to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #15
  %2 = bitcast [2 x %struct.ossl_param_st]* %params to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %2) #15
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(80) %2, i8 0, i64 80, i1 false)
  call void @llvm.va_start(i8* nonnull %0)
  %call = call i32 @strcasecmp(i8* noundef %type, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0)) #17
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %gp_offset_p = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, i32 0
  %gp_offset = load i32, i32* %gp_offset_p, align 16
  %fits_in_gp = icmp ult i32 %gp_offset, 41
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem

vaarg.in_reg:                                     ; preds = %if.then
  %3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, i32 3
  %reg_save_area = load i8*, i8** %3, align 16
  %4 = zext i32 %gp_offset to i64
  %5 = getelementptr i8, i8* %reg_save_area, i64 %4
  %6 = add nuw nsw i32 %gp_offset, 8
  store i32 %6, i32* %gp_offset_p, align 16
  br label %vaarg.end

vaarg.in_mem:                                     ; preds = %if.then
  %overflow_arg_area_p = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, i32 2
  %overflow_arg_area = load i8*, i8** %overflow_arg_area_p, align 8
  %overflow_arg_area.next = getelementptr i8, i8* %overflow_arg_area, i64 8
  store i8* %overflow_arg_area.next, i8** %overflow_arg_area_p, align 8
  br label %vaarg.end

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %vaarg.addr.in = phi i8* [ %5, %vaarg.in_reg ], [ %overflow_arg_area, %vaarg.in_mem ]
  %vaarg.addr = bitcast i8* %vaarg.addr.in to i64*
  %7 = load i64, i64* %vaarg.addr, align 8
  store i64 %7, i64* %bits, align 8, !tbaa !17
  %params46 = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0
  call void @OSSL_PARAM_construct_size_t(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %params46, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0), i64* noundef nonnull %bits) #14
  br label %if.end33

if.else:                                          ; preds = %entry
  %call3 = call i32 @strcasecmp(i8* noundef %type, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i64 0, i64 0)) #17
  %cmp4 = icmp eq i32 %call3, 0
  br i1 %cmp4, label %if.then5, label %if.else20

if.then5:                                         ; preds = %if.else
  %gp_offset_p7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, i32 0
  %gp_offset8 = load i32, i32* %gp_offset_p7, align 16
  %fits_in_gp9 = icmp ult i32 %gp_offset8, 41
  br i1 %fits_in_gp9, label %vaarg.in_reg10, label %vaarg.in_mem12

vaarg.in_reg10:                                   ; preds = %if.then5
  %8 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, i32 3
  %reg_save_area11 = load i8*, i8** %8, align 16
  %9 = zext i32 %gp_offset8 to i64
  %10 = getelementptr i8, i8* %reg_save_area11, i64 %9
  %11 = add nuw nsw i32 %gp_offset8, 8
  store i32 %11, i32* %gp_offset_p7, align 16
  br label %vaarg.end16

vaarg.in_mem12:                                   ; preds = %if.then5
  %overflow_arg_area_p13 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, i32 2
  %overflow_arg_area14 = load i8*, i8** %overflow_arg_area_p13, align 8
  %overflow_arg_area.next15 = getelementptr i8, i8* %overflow_arg_area14, i64 8
  store i8* %overflow_arg_area.next15, i8** %overflow_arg_area_p13, align 8
  br label %vaarg.end16

vaarg.end16:                                      ; preds = %vaarg.in_mem12, %vaarg.in_reg10
  %vaarg.addr17.in = phi i8* [ %10, %vaarg.in_reg10 ], [ %overflow_arg_area14, %vaarg.in_mem12 ]
  %vaarg.addr17 = bitcast i8* %vaarg.addr17.in to i8**
  %12 = load i8*, i8** %vaarg.addr17, align 8
  %params47 = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0
  call void @OSSL_PARAM_construct_utf8_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %params47, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0), i8* noundef %12, i64 noundef 0) #14
  br label %if.end33

if.else20:                                        ; preds = %if.else
  %call21 = call i32 @strcasecmp(i8* noundef %type, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i64 0, i64 0)) #17
  %cmp22.not = icmp eq i32 %call21, 0
  br i1 %cmp22.not, label %if.end33, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.else20
  %call23 = call i32 @strcasecmp(i8* noundef %type, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i64 0, i64 0)) #17
  %cmp24.not = icmp eq i32 %call23, 0
  br i1 %cmp24.not, label %if.end33, label %land.lhs.true25

land.lhs.true25:                                  ; preds = %land.lhs.true
  %call26 = call i32 @strcasecmp(i8* noundef %type, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i64 0, i64 0)) #17
  %cmp27.not = icmp eq i32 %call26, 0
  br i1 %cmp27.not, label %if.end33, label %land.lhs.true28

land.lhs.true28:                                  ; preds = %land.lhs.true25
  %call29 = call i32 @strcasecmp(i8* noundef %type, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0)) #17
  %cmp30.not = icmp eq i32 %call29, 0
  br i1 %cmp30.not, label %if.end33, label %if.then31

if.then31:                                        ; preds = %land.lhs.true28
  call void @ERR_new() #14
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 1184, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.EVP_PKEY_Q_keygen, i64 0, i64 0)) #14
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 524550, i8* noundef null) #14
  br label %end

if.end33:                                         ; preds = %vaarg.end16, %land.lhs.true28, %land.lhs.true25, %land.lhs.true, %if.else20, %vaarg.end
  %arraydecay34 = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0
  %call35 = call fastcc %struct.evp_pkey_st* @evp_pkey_keygen(%struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %type, i8* noundef %propq, %struct.ossl_param_st* noundef nonnull %arraydecay34) #13
  br label %end

end:                                              ; preds = %if.end33, %if.then31
  %ret.0 = phi %struct.evp_pkey_st* [ %call35, %if.end33 ], [ null, %if.then31 ]
  call void @llvm.va_end(i8* nonnull %0)
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %2) #15
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #15
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #15
  ret %struct.evp_pkey_st* %ret.0
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #11

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @strcasecmp(i8* noundef, i8* noundef) local_unnamed_addr #12

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.evp_pkey_st* @evp_pkey_keygen(%struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %name, i8* noundef %propq, %struct.ossl_param_st* noundef %params) unnamed_addr #0 {
entry:
  %pkey = alloca %struct.evp_pkey_st*, align 8
  %0 = bitcast %struct.evp_pkey_st** %pkey to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #15
  store %struct.evp_pkey_st* null, %struct.evp_pkey_st** %pkey, align 8, !tbaa !4
  %call = tail call %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_from_name(%struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %name, i8* noundef %propq) #14
  %cmp.not = icmp eq %struct.evp_pkey_ctx_st* %call, null
  br i1 %cmp.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @EVP_PKEY_keygen_init(%struct.evp_pkey_ctx_st* noundef nonnull %call) #14
  %cmp2 = icmp sgt i32 %call1, 0
  br i1 %cmp2, label %land.lhs.true3, label %if.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %call4 = tail call i32 @EVP_PKEY_CTX_set_params(%struct.evp_pkey_ctx_st* noundef nonnull %call, %struct.ossl_param_st* noundef %params) #14
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true3
  %call5 = call i32 @EVP_PKEY_generate(%struct.evp_pkey_ctx_st* noundef nonnull %call, %struct.evp_pkey_st** noundef nonnull %pkey) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true3, %land.lhs.true, %entry
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %call) #14
  %1 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey, align 8, !tbaa !4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #15
  ret %struct.evp_pkey_st* %1
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #11

declare %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_from_name(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

declare i32 @EVP_PKEY_keygen_init(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #2

declare i32 @EVP_PKEY_generate(%struct.evp_pkey_ctx_st* noundef, %struct.evp_pkey_st** noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #6 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nosync nounwind willreturn }
attributes #12 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nobuiltin "no-builtins" }
attributes #14 = { nobuiltin nounwind "no-builtins" }
attributes #15 = { nounwind }
attributes #16 = { nobuiltin noreturn nounwind "no-builtins" }
attributes #17 = { nobuiltin nounwind readonly willreturn "no-builtins" }

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
!8 = !{!9, !5, i64 0}
!9 = !{!"evp_cipher_ctx_st", !5, i64 0, !5, i64 8, !10, i64 16, !10, i64 20, !6, i64 24, !6, i64 40, !6, i64 56, !10, i64 88, !5, i64 96, !10, i64 104, !11, i64 112, !5, i64 120, !10, i64 128, !10, i64 132, !6, i64 136, !5, i64 168, !5, i64 176}
!10 = !{!"int", !6, i64 0}
!11 = !{!"long", !6, i64 0}
!12 = !{!13, !5, i64 64}
!13 = !{!"evp_cipher_st", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !11, i64 16, !10, i64 24, !5, i64 32, !5, i64 40, !5, i64 48, !10, i64 56, !5, i64 64, !5, i64 72, !5, i64 80, !5, i64 88, !10, i64 96, !5, i64 104, !5, i64 112, !5, i64 120, !6, i64 128, !5, i64 136, !5, i64 144, !5, i64 152, !5, i64 160, !5, i64 168, !5, i64 176, !5, i64 184, !5, i64 192, !5, i64 200, !5, i64 208, !5, i64 216, !5, i64 224, !5, i64 232, !5, i64 240, !5, i64 248}
!14 = !{!13, !5, i64 120}
!15 = !{i64 0, i64 8, !4, i64 8, i64 4, !16, i64 16, i64 8, !4, i64 24, i64 8, !17, i64 32, i64 8, !17}
!16 = !{!10, !10, i64 0}
!17 = !{!11, !11, i64 0}
!18 = !{!19, !5, i64 16}
!19 = !{!"ossl_param_st", !5, i64 0, !10, i64 8, !5, i64 16, !11, i64 24, !11, i64 32}
!20 = !{!19, !11, i64 32}
!21 = !{!19, !11, i64 24}
!22 = !{!13, !5, i64 72}
!23 = !{!9, !5, i64 168}
!24 = !{!13, !11, i64 16}
!25 = !{!13, !10, i64 96}
!26 = !{!27, !10, i64 20}
!27 = !{!"", !6, i64 0, !10, i64 16, !10, i64 20}
!28 = !{!27, !10, i64 16}
!29 = !{!13, !10, i64 0}
!30 = !{!13, !10, i64 4}
!31 = !{!13, !10, i64 12}
!32 = !{!13, !10, i64 8}
!33 = !{!13, !5, i64 184}
!34 = !{!13, !10, i64 56}
!35 = !{!13, !5, i64 168}
!36 = !{!13, !5, i64 176}
!37 = !{!13, !5, i64 40}
!38 = !{!9, !10, i64 16}
!39 = !{!9, !5, i64 96}
!40 = !{!9, !5, i64 120}
!41 = !{!9, !10, i64 88}
!42 = !{!9, !10, i64 104}
!43 = !{!13, !5, i64 104}
!44 = !{!13, !5, i64 112}
!45 = !{!46, !5, i64 112}
!46 = !{!"evp_md_st", !10, i64 0, !10, i64 4, !10, i64 8, !11, i64 16, !10, i64 24, !5, i64 32, !5, i64 40, !5, i64 48, !5, i64 56, !5, i64 64, !10, i64 72, !10, i64 76, !5, i64 80, !10, i64 88, !5, i64 96, !5, i64 104, !5, i64 112, !6, i64 120, !5, i64 128, !5, i64 136, !5, i64 144, !5, i64 152, !5, i64 160, !5, i64 168, !5, i64 176, !5, i64 184, !5, i64 192, !5, i64 200, !5, i64 208, !5, i64 216, !5, i64 224, !5, i64 232}
!47 = !{!46, !10, i64 88}
!48 = !{!46, !5, i64 96}
!49 = !{!46, !5, i64 104}
!50 = !{!46, !10, i64 0}
!51 = !{!46, !10, i64 4}
!52 = !{!46, !10, i64 72}
!53 = !{!46, !10, i64 8}
!54 = !{!46, !11, i64 16}
!55 = !{!46, !10, i64 24}
!56 = !{!46, !5, i64 128}
!57 = !{!46, !10, i64 76}
!58 = !{!46, !5, i64 32}
!59 = !{!46, !5, i64 40}
!60 = !{!46, !5, i64 48}
!61 = !{!46, !5, i64 56}
!62 = !{!46, !5, i64 64}
!63 = !{!46, !5, i64 80}
!64 = !{!65, !5, i64 0}
!65 = !{!"evp_md_ctx_st", !5, i64 0, !5, i64 8, !5, i64 16, !11, i64 24, !5, i64 32, !5, i64 40, !5, i64 48, !5, i64 56, !5, i64 64}
!66 = !{!65, !5, i64 40}
!67 = !{!65, !11, i64 24}
!68 = !{!65, !5, i64 32}
!69 = !{!65, !5, i64 48}
!70 = !{!9, !11, i64 112}
!71 = !{!72, !10, i64 0}
!72 = !{!"evp_pkey_ctx_st", !10, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !6, i64 40, !73, i64 56, !5, i64 88, !5, i64 96, !5, i64 104, !10, i64 112, !10, i64 116, !5, i64 120, !5, i64 128, !5, i64 136, !5, i64 144, !5, i64 152, !10, i64 160, !5, i64 168}
!73 = !{!"", !5, i64 0, !5, i64 8, !11, i64 16, !10, i64 24}
