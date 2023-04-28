; ModuleID = 'crypto/asn1/a_sign.c'
source_filename = "crypto/asn1/a_sign.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.X509_algor_st = type { %struct.asn1_object_st*, %struct.asn1_type_st* }
%struct.asn1_object_st = type { i8*, i8*, i32, i32, i8*, i32 }
%struct.asn1_type_st = type { i32, %union.anon }
%union.anon = type { i8* }
%struct.asn1_string_st = type { i32, i32, i8*, i64 }
%struct.evp_pkey_st = type { i32, i32, %struct.evp_pkey_asn1_method_st*, %struct.engine_st*, %struct.engine_st*, %union.legacy_pkey_st, %union.legacy_pkey_st, i32, i8*, %struct.stack_st_X509_ATTRIBUTE*, i32, i8, %struct.crypto_ex_data_st, %struct.evp_keymgmt_st*, i8*, i64, %struct.stack_st_OP_CACHE_ELEM*, i64, %struct.anon }
%struct.evp_pkey_asn1_method_st = type { i32, i32, i64, i8*, i8*, i32 (%struct.evp_pkey_st*, %struct.X509_pubkey_st*)*, i32 (%struct.X509_pubkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)*, i32 (%struct.evp_pkey_st*, %struct.pkcs8_priv_key_info_st*)*, i32 (%struct.pkcs8_priv_key_info_st*, %struct.evp_pkey_st*)*, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, i8**, i32)*, i32 (%struct.evp_pkey_st*, i8**)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)*, i32 (%struct.bio_st*, %struct.X509_algor_st*, %struct.asn1_string_st*, i32, %struct.asn1_pctx_st*)*, void (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, i32, i64, i8*)*, i32 (%struct.evp_pkey_st*, i8**, i32)*, i32 (%struct.evp_pkey_st*, i8**)*, i32 (%struct.evp_md_ctx_st*, %struct.ASN1_ITEM_st*, i8*, %struct.X509_algor_st*, %struct.asn1_string_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_md_ctx_st*, %struct.ASN1_ITEM_st*, i8*, %struct.X509_algor_st*, %struct.X509_algor_st*, %struct.asn1_string_st*)*, i32 (%struct.x509_sig_info_st*, %struct.X509_algor_st*, %struct.asn1_string_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, i8*, i64)*, i32 (%struct.evp_pkey_st*, i8*, i64)*, i32 (%struct.evp_pkey_st*, i8*, i64*)*, i32 (%struct.evp_pkey_st*, i8*, i64*)*, i64 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, i8*, i32 (i8*, i32, %struct.ossl_param_st*)*, %struct.ossl_lib_ctx_st*, i8*)*, i32 (%struct.ossl_param_st*, i8*)*, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, %struct.pkcs8_priv_key_info_st*, %struct.ossl_lib_ctx_st*, i8*)* }
%struct.X509_pubkey_st = type opaque
%struct.pkcs8_priv_key_info_st = type opaque
%struct.bio_st = type opaque
%struct.asn1_pctx_st = type { i64, i64, i64, i64, i64 }
%struct.evp_md_ctx_st = type opaque
%struct.ASN1_ITEM_st = type opaque
%struct.x509_sig_info_st = type opaque
%struct.ossl_param_st = type { i8*, i32, i8*, i64, i64 }
%struct.ossl_lib_ctx_st = type opaque
%struct.engine_st = type opaque
%union.legacy_pkey_st = type { i8* }
%struct.stack_st_X509_ATTRIBUTE = type opaque
%struct.crypto_ex_data_st = type { %struct.ossl_lib_ctx_st*, %struct.stack_st_void* }
%struct.stack_st_void = type opaque
%struct.evp_keymgmt_st = type opaque
%struct.stack_st_OP_CACHE_ELEM = type opaque
%struct.anon = type { i32, i32, i32 }
%struct.evp_md_st = type { i32, i32, i32, i64, i32, i32 (%struct.evp_md_ctx_st*)*, i32 (%struct.evp_md_ctx_st*, i8*, i64)*, i32 (%struct.evp_md_ctx_st*, i8*)*, i32 (%struct.evp_md_ctx_st*, %struct.evp_md_ctx_st*)*, i32 (%struct.evp_md_ctx_st*)*, i32, i32, i32 (%struct.evp_md_ctx_st*, i32, i32, i8*)*, i32, i8*, i8*, %struct.ossl_provider_st*, i32, i8*, i8* (i8*)*, i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64*, i64)*, i32 (i8*, i8*, i64, i8*, i64*, i64)*, void (i8*)*, i8* (i8*)*, i32 (%struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i8*)*, %struct.ossl_param_st* (i8*, i8*)*, %struct.ossl_param_st* (i8*, i8*)* }
%struct.ossl_provider_st = type opaque
%struct.evp_pkey_ctx_st = type { i32, %struct.ossl_lib_ctx_st*, i8*, i8*, %struct.evp_keymgmt_st*, %union.anon.0, %struct.anon.6, i8*, i32 (%struct.evp_pkey_ctx_st*)*, i32*, i32, i32, %struct.evp_pkey_method_st*, %struct.engine_st*, %struct.evp_pkey_st*, %struct.evp_pkey_st*, i8*, i8, %struct.bignum_st* }
%union.anon.0 = type { %struct.anon.2 }
%struct.anon.2 = type { %struct.evp_keyexch_st*, i8* }
%struct.evp_keyexch_st = type opaque
%struct.anon.6 = type { i8*, i8*, i64, i8 }
%struct.evp_pkey_method_st = type { i32, i32, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st*)*, void (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64, i8*, i64)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_md_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, %struct.evp_md_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_md_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i32, %struct.evp_md_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*)*, i32 (%struct.evp_pkey_ctx_st*, i32, i32, i8*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i8*)*, i32 (%struct.evp_md_ctx_st*, i8*, i64*, i8*, i64)*, i32 (%struct.evp_md_ctx_st*, i8*, i64, i8*, i64)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_md_ctx_st*)* }
%struct.bignum_st = type opaque
%struct.ASN1_VALUE_st = type opaque

@.str = private unnamed_addr constant [21 x i8] c"crypto/asn1/a_sign.c\00", align 1
@__func__.ASN1_sign = private unnamed_addr constant [10 x i8] c"ASN1_sign\00", align 1
@__func__.ASN1_item_sign_ex = private unnamed_addr constant [18 x i8] c"ASN1_item_sign_ex\00", align 1
@__func__.ASN1_item_sign_ctx = private unnamed_addr constant [19 x i8] c"ASN1_item_sign_ctx\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"algorithm-id\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @ASN1_sign(i32 (i8*, i8**)* nocapture noundef readonly %i2d, %struct.X509_algor_st* noundef %algor1, %struct.X509_algor_st* noundef %algor2, %struct.asn1_string_st* nocapture noundef %signature, i8* noundef %data, %struct.evp_pkey_st* noundef %pkey, %struct.evp_md_st* noundef %type) local_unnamed_addr #0 {
entry:
  %p = alloca i8*, align 8
  %outl = alloca i32, align 4
  %call = tail call %struct.evp_md_ctx_st* @EVP_MD_CTX_new() #4
  %0 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #5
  %1 = bitcast i32* %outl to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #5
  store i32 0, i32* %outl, align 4, !tbaa !4
  %cmp = icmp eq %struct.evp_md_ctx_st* %call, null
  br i1 %cmp, label %if.then, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %pkey_type = getelementptr inbounds %struct.evp_md_st, %struct.evp_md_st* %type, i64 0, i32 1
  %cmp5 = icmp eq %struct.X509_algor_st* %algor1, null
  br i1 %cmp5, label %for.inc, label %if.end7

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 38, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.ASN1_sign, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 786688, i8* noundef null) #4
  br label %err

if.end7:                                          ; preds = %for.cond.preheader
  %2 = load i32, i32* %pkey_type, align 4, !tbaa !8
  %cmp8 = icmp eq i32 %2, 113
  %parameter = getelementptr inbounds %struct.X509_algor_st, %struct.X509_algor_st* %algor1, i64 0, i32 1
  %3 = load %struct.asn1_type_st*, %struct.asn1_type_st** %parameter, align 8, !tbaa !12
  br i1 %cmp8, label %if.then9, label %if.else11

if.then9:                                         ; preds = %if.end7
  tail call void @ASN1_TYPE_free(%struct.asn1_type_st* noundef %3) #4
  store %struct.asn1_type_st* null, %struct.asn1_type_st** %parameter, align 8, !tbaa !12
  br label %if.end27

if.else11:                                        ; preds = %if.end7
  %cmp13 = icmp eq %struct.asn1_type_st* %3, null
  br i1 %cmp13, label %if.then17, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else11
  %type15 = getelementptr inbounds %struct.asn1_type_st, %struct.asn1_type_st* %3, i64 0, i32 0
  %4 = load i32, i32* %type15, align 8, !tbaa !14
  %cmp16.not = icmp eq i32 %4, 5
  br i1 %cmp16.not, label %if.end27, label %if.then17

if.then17:                                        ; preds = %lor.lhs.false, %if.else11
  tail call void @ASN1_TYPE_free(%struct.asn1_type_st* noundef %3) #4
  %call19 = tail call %struct.asn1_type_st* @ASN1_TYPE_new() #4
  store %struct.asn1_type_st* %call19, %struct.asn1_type_st** %parameter, align 8, !tbaa !12
  %cmp21 = icmp eq %struct.asn1_type_st* %call19, null
  br i1 %cmp21, label %err, label %if.end23

if.end23:                                         ; preds = %if.then17
  %type25 = getelementptr inbounds %struct.asn1_type_st, %struct.asn1_type_st* %call19, i64 0, i32 0
  store i32 5, i32* %type25, align 8, !tbaa !14
  br label %if.end27

if.end27:                                         ; preds = %lor.lhs.false, %if.end23, %if.then9
  %algorithm = getelementptr inbounds %struct.X509_algor_st, %struct.X509_algor_st* %algor1, i64 0, i32 0
  %5 = load %struct.asn1_object_st*, %struct.asn1_object_st** %algorithm, align 8, !tbaa !16
  tail call void @ASN1_OBJECT_free(%struct.asn1_object_st* noundef %5) #4
  %6 = load i32, i32* %pkey_type, align 4, !tbaa !8
  %call29 = tail call %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef %6) #4
  store %struct.asn1_object_st* %call29, %struct.asn1_object_st** %algorithm, align 8, !tbaa !16
  %cmp32 = icmp eq %struct.asn1_object_st* %call29, null
  br i1 %cmp32, label %if.then33, label %if.end34

if.then33:                                        ; preds = %if.end27.1, %if.end27
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 65, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.ASN1_sign, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 162, i8* noundef null) #4
  br label %err

if.end34:                                         ; preds = %if.end27
  %length = getelementptr inbounds %struct.asn1_object_st, %struct.asn1_object_st* %call29, i64 0, i32 3
  %7 = load i32, i32* %length, align 4, !tbaa !17
  %cmp36 = icmp eq i32 %7, 0
  br i1 %cmp36, label %if.then37, label %for.inc

if.then37:                                        ; preds = %if.end34.1, %if.end34
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 70, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.ASN1_sign, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 154, i8* noundef null) #4
  br label %err

for.inc:                                          ; preds = %if.end34, %for.cond.preheader
  %cmp5.1 = icmp eq %struct.X509_algor_st* %algor2, null
  br i1 %cmp5.1, label %for.inc.1, label %if.end7.1

if.end7.1:                                        ; preds = %for.inc
  %8 = load i32, i32* %pkey_type, align 4, !tbaa !8
  %cmp8.1 = icmp eq i32 %8, 113
  %parameter.1 = getelementptr inbounds %struct.X509_algor_st, %struct.X509_algor_st* %algor2, i64 0, i32 1
  %9 = load %struct.asn1_type_st*, %struct.asn1_type_st** %parameter.1, align 8, !tbaa !12
  br i1 %cmp8.1, label %if.then9.1, label %if.else11.1

if.else11.1:                                      ; preds = %if.end7.1
  %cmp13.1 = icmp eq %struct.asn1_type_st* %9, null
  br i1 %cmp13.1, label %if.then17.1, label %lor.lhs.false.1

lor.lhs.false.1:                                  ; preds = %if.else11.1
  %type15.1 = getelementptr inbounds %struct.asn1_type_st, %struct.asn1_type_st* %9, i64 0, i32 0
  %10 = load i32, i32* %type15.1, align 8, !tbaa !14
  %cmp16.not.1 = icmp eq i32 %10, 5
  br i1 %cmp16.not.1, label %if.end27.1, label %if.then17.1

if.then17.1:                                      ; preds = %lor.lhs.false.1, %if.else11.1
  tail call void @ASN1_TYPE_free(%struct.asn1_type_st* noundef %9) #4
  %call19.1 = tail call %struct.asn1_type_st* @ASN1_TYPE_new() #4
  store %struct.asn1_type_st* %call19.1, %struct.asn1_type_st** %parameter.1, align 8, !tbaa !12
  %cmp21.1 = icmp eq %struct.asn1_type_st* %call19.1, null
  br i1 %cmp21.1, label %err, label %if.end23.1

if.end23.1:                                       ; preds = %if.then17.1
  %type25.1 = getelementptr inbounds %struct.asn1_type_st, %struct.asn1_type_st* %call19.1, i64 0, i32 0
  store i32 5, i32* %type25.1, align 8, !tbaa !14
  br label %if.end27.1

if.then9.1:                                       ; preds = %if.end7.1
  tail call void @ASN1_TYPE_free(%struct.asn1_type_st* noundef %9) #4
  store %struct.asn1_type_st* null, %struct.asn1_type_st** %parameter.1, align 8, !tbaa !12
  br label %if.end27.1

if.end27.1:                                       ; preds = %if.then9.1, %if.end23.1, %lor.lhs.false.1
  %algorithm.1 = getelementptr inbounds %struct.X509_algor_st, %struct.X509_algor_st* %algor2, i64 0, i32 0
  %11 = load %struct.asn1_object_st*, %struct.asn1_object_st** %algorithm.1, align 8, !tbaa !16
  tail call void @ASN1_OBJECT_free(%struct.asn1_object_st* noundef %11) #4
  %12 = load i32, i32* %pkey_type, align 4, !tbaa !8
  %call29.1 = tail call %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef %12) #4
  store %struct.asn1_object_st* %call29.1, %struct.asn1_object_st** %algorithm.1, align 8, !tbaa !16
  %cmp32.1 = icmp eq %struct.asn1_object_st* %call29.1, null
  br i1 %cmp32.1, label %if.then33, label %if.end34.1

if.end34.1:                                       ; preds = %if.end27.1
  %length.1 = getelementptr inbounds %struct.asn1_object_st, %struct.asn1_object_st* %call29.1, i64 0, i32 3
  %13 = load i32, i32* %length.1, align 4, !tbaa !17
  %cmp36.1 = icmp eq i32 %13, 0
  br i1 %cmp36.1, label %if.then37, label %for.inc.1

for.inc.1:                                        ; preds = %if.end34.1, %for.inc
  %call39 = tail call i32 %i2d(i8* noundef %data, i8** noundef null) #4
  %cmp40 = icmp slt i32 %call39, 1
  br i1 %cmp40, label %if.then41, label %if.end42

if.then41:                                        ; preds = %for.inc.1
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 76, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.ASN1_sign, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 786691, i8* noundef null) #4
  br label %err

if.end42:                                         ; preds = %for.inc.1
  %conv113 = zext i32 %call39 to i64
  %call43 = tail call i8* @CRYPTO_malloc(i64 noundef %conv113, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 80) #4
  %call44 = tail call i32 @EVP_PKEY_get_size(%struct.evp_pkey_st* noundef %pkey) #4
  store i32 %call44, i32* %outl, align 4, !tbaa !4
  %conv45 = sext i32 %call44 to i64
  %call46 = tail call i8* @CRYPTO_malloc(i64 noundef %conv45, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 82) #4
  %cmp47 = icmp eq i8* %call43, null
  %cmp50 = icmp eq i8* %call46, null
  %or.cond = select i1 %cmp47, i1 true, i1 %cmp50
  br i1 %or.cond, label %if.then52, label %if.end53

if.then52:                                        ; preds = %if.end42
  store i32 0, i32* %outl, align 4, !tbaa !4
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 85, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.ASN1_sign, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 786688, i8* noundef null) #4
  br label %err

if.end53:                                         ; preds = %if.end42
  store i8* %call43, i8** %p, align 8, !tbaa !19
  %call54 = call i32 %i2d(i8* noundef %data, i8** noundef nonnull %p) #4
  %call55 = call i32 @EVP_DigestInit_ex(%struct.evp_md_ctx_st* noundef nonnull %call, %struct.evp_md_st* noundef %type, %struct.engine_st* noundef null) #4
  %tobool.not = icmp eq i32 %call55, 0
  br i1 %tobool.not, label %if.then63, label %lor.lhs.false56

lor.lhs.false56:                                  ; preds = %if.end53
  %call58 = call i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef nonnull %call, i8* noundef nonnull %call43, i64 noundef %conv113) #4
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %if.then63, label %lor.lhs.false60

lor.lhs.false60:                                  ; preds = %lor.lhs.false56
  %call61 = call i32 @EVP_SignFinal(%struct.evp_md_ctx_st* noundef nonnull %call, i8* noundef nonnull %call46, i32* noundef nonnull %outl, %struct.evp_pkey_st* noundef %pkey) #4
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %if.then63, label %if.end64

if.then63:                                        ; preds = %lor.lhs.false60, %lor.lhs.false56, %if.end53
  store i32 0, i32* %outl, align 4, !tbaa !4
  call void @ERR_new() #4
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 96, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.ASN1_sign, i64 0, i64 0)) #4
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 524294, i8* noundef null) #4
  br label %err

if.end64:                                         ; preds = %lor.lhs.false60
  %data65 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %signature, i64 0, i32 2
  %14 = load i8*, i8** %data65, align 8, !tbaa !20
  call void @CRYPTO_free(i8* noundef %14, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 99) #4
  store i8* %call46, i8** %data65, align 8, !tbaa !20
  %15 = load i32, i32* %outl, align 4, !tbaa !4
  %length67 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %signature, i64 0, i32 0
  store i32 %15, i32* %length67, align 8, !tbaa !22
  %flags = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %signature, i64 0, i32 3
  %16 = load i64, i64* %flags, align 8, !tbaa !23
  %and = and i64 %16, -16
  %or = or i64 %and, 8
  store i64 %or, i64* %flags, align 8, !tbaa !23
  br label %err

err:                                              ; preds = %if.then17, %if.then17.1, %if.end64, %if.then63, %if.then52, %if.then41, %if.then37, %if.then33, %if.then
  %buf_in.0 = phi i8* [ null, %if.then ], [ null, %if.then33 ], [ null, %if.then37 ], [ null, %if.then41 ], [ %call43, %if.then52 ], [ %call43, %if.end64 ], [ %call43, %if.then63 ], [ null, %if.then17.1 ], [ null, %if.then17 ]
  %buf_out.0 = phi i8* [ null, %if.then ], [ null, %if.then33 ], [ null, %if.then37 ], [ null, %if.then41 ], [ %call46, %if.then52 ], [ null, %if.end64 ], [ %call46, %if.then63 ], [ null, %if.then17.1 ], [ null, %if.then17 ]
  %inll.0 = phi i64 [ 0, %if.then ], [ 0, %if.then33 ], [ 0, %if.then37 ], [ 0, %if.then41 ], [ %conv113, %if.then52 ], [ %conv113, %if.end64 ], [ %conv113, %if.then63 ], [ 0, %if.then17.1 ], [ 0, %if.then17 ]
  %outll.0 = phi i64 [ 0, %if.then ], [ 0, %if.then33 ], [ 0, %if.then37 ], [ 0, %if.then41 ], [ %conv45, %if.then52 ], [ %conv45, %if.end64 ], [ %conv45, %if.then63 ], [ 0, %if.then17.1 ], [ 0, %if.then17 ]
  call void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef %call) #4
  call void @CRYPTO_clear_free(i8* noundef %buf_in.0, i64 noundef %inll.0, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 111) #4
  call void @CRYPTO_clear_free(i8* noundef %buf_out.0, i64 noundef %outll.0, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 112) #4
  %17 = load i32, i32* %outl, align 4, !tbaa !4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #5
  ret i32 %17
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare %struct.evp_md_ctx_st* @EVP_MD_CTX_new() local_unnamed_addr #2

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

declare void @ASN1_TYPE_free(%struct.asn1_type_st* noundef) local_unnamed_addr #2

declare %struct.asn1_type_st* @ASN1_TYPE_new() local_unnamed_addr #2

declare void @ASN1_OBJECT_free(%struct.asn1_object_st* noundef) local_unnamed_addr #2

declare %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef) local_unnamed_addr #2

declare i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @EVP_PKEY_get_size(%struct.evp_pkey_st* noundef) local_unnamed_addr #2

declare i32 @EVP_DigestInit_ex(%struct.evp_md_ctx_st* noundef, %struct.evp_md_st* noundef, %struct.engine_st* noundef) local_unnamed_addr #2

declare i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare i32 @EVP_SignFinal(%struct.evp_md_ctx_st* noundef, i8* noundef, i32* noundef, %struct.evp_pkey_st* noundef) local_unnamed_addr #2

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef) local_unnamed_addr #2

declare void @CRYPTO_clear_free(i8* noundef, i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define i32 @ASN1_item_sign(%struct.ASN1_ITEM_st* noundef %it, %struct.X509_algor_st* noundef %algor1, %struct.X509_algor_st* noundef %algor2, %struct.asn1_string_st* noundef %signature, i8* noundef %data, %struct.evp_pkey_st* noundef %pkey, %struct.evp_md_st* noundef %md) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @ASN1_item_sign_ex(%struct.ASN1_ITEM_st* noundef %it, %struct.X509_algor_st* noundef %algor1, %struct.X509_algor_st* noundef %algor2, %struct.asn1_string_st* noundef %signature, i8* noundef %data, %struct.asn1_string_st* noundef null, %struct.evp_pkey_st* noundef %pkey, %struct.evp_md_st* noundef %md, %struct.ossl_lib_ctx_st* noundef null, i8* noundef null) #6
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @ASN1_item_sign_ex(%struct.ASN1_ITEM_st* noundef %it, %struct.X509_algor_st* noundef %algor1, %struct.X509_algor_st* noundef %algor2, %struct.asn1_string_st* noundef %signature, i8* noundef %data, %struct.asn1_string_st* noundef %id, %struct.evp_pkey_st* noundef %pkey, %struct.evp_md_st* noundef %md, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.evp_md_ctx_st* @evp_md_ctx_new_ex(%struct.evp_pkey_st* noundef %pkey, %struct.asn1_string_st* noundef %id, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) #4
  %cmp = icmp eq %struct.evp_md_ctx_st* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 136, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.ASN1_item_sign_ex, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 786688, i8* noundef null) #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @EVP_DigestSignInit(%struct.evp_md_ctx_st* noundef nonnull %call, %struct.evp_pkey_ctx_st** noundef null, %struct.evp_md_st* noundef %md, %struct.engine_st* noundef null, %struct.evp_pkey_st* noundef %pkey) #4
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %err, label %if.end3

if.end3:                                          ; preds = %if.end
  %call4 = tail call i32 @ASN1_item_sign_ctx(%struct.ASN1_ITEM_st* noundef %it, %struct.X509_algor_st* noundef %algor1, %struct.X509_algor_st* noundef %algor2, %struct.asn1_string_st* noundef %signature, i8* noundef %data, %struct.evp_md_ctx_st* noundef nonnull %call) #6
  br label %err

err:                                              ; preds = %if.end, %if.end3
  %rv.0 = phi i32 [ %call4, %if.end3 ], [ 0, %if.end ]
  %call5 = tail call %struct.evp_pkey_ctx_st* @EVP_MD_CTX_get_pkey_ctx(%struct.evp_md_ctx_st* noundef nonnull %call) #4
  tail call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %call5) #4
  tail call void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef nonnull %call) #4
  br label %cleanup

cleanup:                                          ; preds = %err, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %rv.0, %err ]
  ret i32 %retval.0
}

declare %struct.evp_md_ctx_st* @evp_md_ctx_new_ex(%struct.evp_pkey_st* noundef, %struct.asn1_string_st* noundef, %struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #2

declare i32 @EVP_DigestSignInit(%struct.evp_md_ctx_st* noundef, %struct.evp_pkey_ctx_st** noundef, %struct.evp_md_st* noundef, %struct.engine_st* noundef, %struct.evp_pkey_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @ASN1_item_sign_ctx(%struct.ASN1_ITEM_st* noundef %it, %struct.X509_algor_st* noundef %algor1, %struct.X509_algor_st* noundef %algor2, %struct.asn1_string_st* noundef %signature, i8* noundef %data, %struct.evp_md_ctx_st* noundef %ctx) local_unnamed_addr #0 {
entry:
  %algor1.addr = alloca %struct.X509_algor_st*, align 8
  %algor2.addr = alloca %struct.X509_algor_st*, align 8
  %buf_in = alloca i8*, align 8
  %outl = alloca i64, align 8
  %outll = alloca i64, align 8
  %signid = alloca i32, align 4
  %params = alloca [2 x %struct.ossl_param_st], align 16
  %aid = alloca [128 x i8], align 16
  %tmp23 = alloca %struct.ossl_param_st, align 8
  %pp = alloca i8*, align 8
  %pp43 = alloca i8*, align 8
  store %struct.X509_algor_st* %algor1, %struct.X509_algor_st** %algor1.addr, align 8, !tbaa !19
  store %struct.X509_algor_st* %algor2, %struct.X509_algor_st** %algor2.addr, align 8, !tbaa !19
  %0 = bitcast i8** %buf_in to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #5
  store i8* null, i8** %buf_in, align 8, !tbaa !19
  %1 = bitcast i64* %outl to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #5
  store i64 0, i64* %outl, align 8, !tbaa !24
  %2 = bitcast i64* %outll to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #5
  store i64 0, i64* %outll, align 8, !tbaa !24
  %3 = bitcast i32* %signid to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #5
  %call = tail call %struct.evp_md_st* @EVP_MD_CTX_get0_md(%struct.evp_md_ctx_st* noundef %ctx) #4
  %call1 = tail call %struct.evp_pkey_ctx_st* @EVP_MD_CTX_get_pkey_ctx(%struct.evp_md_ctx_st* noundef %ctx) #4
  %call2 = tail call %struct.evp_pkey_st* @EVP_PKEY_CTX_get0_pkey(%struct.evp_pkey_ctx_st* noundef %call1) #4
  %cmp = icmp eq %struct.evp_pkey_st* %call2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 166, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.ASN1_item_sign_ctx, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 217, i8* noundef null) #4
  br label %cleanup140

if.end:                                           ; preds = %entry
  %ameth = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %call2, i64 0, i32 2
  %4 = load %struct.evp_pkey_asn1_method_st*, %struct.evp_pkey_asn1_method_st** %ameth, align 8, !tbaa !25
  %cmp3 = icmp eq %struct.evp_pkey_asn1_method_st* %4, null
  br i1 %cmp3, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  %call5 = tail call %struct.evp_pkey_ctx_st* @EVP_MD_CTX_get_pkey_ctx(%struct.evp_md_ctx_st* noundef %ctx) #4
  %5 = bitcast [2 x %struct.ossl_param_st]* %params to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %5) #5
  %6 = getelementptr inbounds [128 x i8], [128 x i8]* %aid, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %6) #5
  %cmp6 = icmp eq %struct.evp_pkey_ctx_st* %call5, null
  br i1 %cmp6, label %if.then20, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then4
  %operation = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %call5, i64 0, i32 0
  %7 = load i32, i32* %operation, align 8, !tbaa !29
  switch i32 %7, label %if.then20 [
    i32 16, label %if.end21
    i32 128, label %if.end21
    i32 32, label %if.end21
    i32 256, label %if.end21
    i32 64, label %if.end21
  ]

if.then20:                                        ; preds = %lor.lhs.false, %if.then4
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 178, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.ASN1_item_sign_ctx, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 217, i8* noundef null) #4
  br label %cleanup53.thread

if.end21:                                         ; preds = %lor.lhs.false, %lor.lhs.false, %lor.lhs.false, %lor.lhs.false, %lor.lhs.false
  %arrayidx = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0
  %params220 = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0
  call void @OSSL_PARAM_construct_octet_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %params220, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* noundef nonnull %6, i64 noundef 128) #4
  %arrayidx22 = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 1
  %8 = bitcast %struct.ossl_param_st* %tmp23 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %8) #5
  call void @OSSL_PARAM_construct_end(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp23) #4
  %9 = bitcast %struct.ossl_param_st* %arrayidx22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %9, i8* noundef nonnull align 8 dereferenceable(40) %8, i64 40, i1 false), !tbaa.struct !32
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %8) #5
  %call25 = call i32 @EVP_PKEY_CTX_get_params(%struct.evp_pkey_ctx_st* noundef nonnull %call5, %struct.ossl_param_st* noundef nonnull %arrayidx) #4
  %cmp26 = icmp slt i32 %call25, 1
  br i1 %cmp26, label %cleanup53.thread, label %if.end28

if.end28:                                         ; preds = %if.end21
  %return_size = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0, i32 4
  %10 = load i64, i64* %return_size, align 16, !tbaa !33
  %cmp30 = icmp eq i64 %10, 0
  br i1 %cmp30, label %if.then31, label %if.end32

if.then31:                                        ; preds = %if.end28
  call void @ERR_new() #4
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 191, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.ASN1_item_sign_ctx, i64 0, i64 0)) #4
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 198, i8* noundef null) #4
  br label %cleanup53.thread

if.end32:                                         ; preds = %if.end28
  %cmp33.not = icmp eq %struct.X509_algor_st* %algor1, null
  br i1 %cmp33.not, label %if.end40, label %if.then34

if.then34:                                        ; preds = %if.end32
  %11 = bitcast i8** %pp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %11) #5
  store i8* %6, i8** %pp, align 8, !tbaa !19
  %call36 = call %struct.X509_algor_st* @d2i_X509_ALGOR(%struct.X509_algor_st** noundef nonnull %algor1.addr, i8** noundef nonnull %pp, i64 noundef %10) #4
  %cmp37 = icmp eq %struct.X509_algor_st* %call36, null
  br i1 %cmp37, label %cleanup.thread, label %cleanup

cleanup.thread:                                   ; preds = %if.then34
  call void @ERR_new() #4
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 199, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.ASN1_item_sign_ctx, i64 0, i64 0)) #4
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 786691, i8* noundef null) #4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %11) #5
  br label %cleanup53.thread

cleanup:                                          ; preds = %if.then34
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %11) #5
  br label %if.end40

if.end40:                                         ; preds = %cleanup, %if.end32
  %cmp41.not = icmp eq %struct.X509_algor_st* %algor2, null
  br i1 %cmp41.not, label %if.end77.thread216, label %if.then42

if.then42:                                        ; preds = %if.end40
  %12 = bitcast i8** %pp43 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %12) #5
  store i8* %6, i8** %pp43, align 8, !tbaa !19
  %call45 = call %struct.X509_algor_st* @d2i_X509_ALGOR(%struct.X509_algor_st** noundef nonnull %algor2.addr, i8** noundef nonnull %pp43, i64 noundef %10) #4
  %cmp46 = icmp eq %struct.X509_algor_st* %call45, null
  br i1 %cmp46, label %cleanup49.thread, label %cleanup49

cleanup49.thread:                                 ; preds = %if.then42
  call void @ERR_new() #4
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 208, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.ASN1_item_sign_ctx, i64 0, i64 0)) #4
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 786691, i8* noundef null) #4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %12) #5
  br label %cleanup53.thread

cleanup49:                                        ; preds = %if.then42
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %12) #5
  br label %if.end77.thread216

cleanup53.thread:                                 ; preds = %if.then20, %if.then31, %if.end21, %cleanup.thread, %cleanup49.thread
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %6) #5
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %5) #5
  br label %cleanup140

if.end77.thread216:                               ; preds = %cleanup49, %if.end40
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %6) #5
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %5) #5
  br label %if.end110

if.else:                                          ; preds = %if.end
  %item_sign = getelementptr inbounds %struct.evp_pkey_asn1_method_st, %struct.evp_pkey_asn1_method_st* %4, i64 0, i32 27
  %13 = load i32 (%struct.evp_md_ctx_st*, %struct.ASN1_ITEM_st*, i8*, %struct.X509_algor_st*, %struct.X509_algor_st*, %struct.asn1_string_st*)*, i32 (%struct.evp_md_ctx_st*, %struct.ASN1_ITEM_st*, i8*, %struct.X509_algor_st*, %struct.X509_algor_st*, %struct.asn1_string_st*)** %item_sign, align 8, !tbaa !35
  %tobool.not = icmp eq i32 (%struct.evp_md_ctx_st*, %struct.ASN1_ITEM_st*, i8*, %struct.X509_algor_st*, %struct.X509_algor_st*, %struct.asn1_string_st*)* %13, null
  br i1 %tobool.not, label %if.then80, label %if.then60

if.then60:                                        ; preds = %if.else
  %call63 = tail call i32 %13(%struct.evp_md_ctx_st* noundef %ctx, %struct.ASN1_ITEM_st* noundef %it, i8* noundef %data, %struct.X509_algor_st* noundef %algor1, %struct.X509_algor_st* noundef %algor2, %struct.asn1_string_st* noundef %signature) #4
  %cmp64 = icmp eq i32 %call63, 1
  br i1 %cmp64, label %if.end66.thread, label %if.end66

if.end66.thread:                                  ; preds = %if.then60
  %length = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %signature, i64 0, i32 0
  %14 = load i32, i32* %length, align 8, !tbaa !22
  %conv = sext i32 %14 to i64
  store i64 %conv, i64* %outl, align 8, !tbaa !24
  br label %cleanup140

if.end66:                                         ; preds = %if.then60
  %cmp67 = icmp slt i32 %call63, 1
  br i1 %cmp67, label %if.then69, label %if.end77

if.then69:                                        ; preds = %if.end66
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 226, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.ASN1_item_sign_ctx, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 524294, i8* noundef null) #4
  br label %cleanup140

if.end77:                                         ; preds = %if.end66
  %cmp78 = icmp eq i32 %call63, 2
  br i1 %cmp78, label %if.then80, label %if.end110

if.then80:                                        ; preds = %if.else, %if.end77
  %cmp81 = icmp eq %struct.evp_md_st* %call, null
  br i1 %cmp81, label %if.then83, label %if.end84

if.then83:                                        ; preds = %if.then80
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 235, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.ASN1_item_sign_ctx, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 217, i8* noundef null) #4
  br label %cleanup140

if.end84:                                         ; preds = %if.then80
  %call85 = tail call i32 @EVP_PKEY_get_id(%struct.evp_pkey_st* noundef nonnull %call2) #4
  %cmp86 = icmp eq i32 %call85, 1172
  br i1 %cmp86, label %cond.end, label %cond.false

cond.false:                                       ; preds = %if.end84
  %15 = load %struct.evp_pkey_asn1_method_st*, %struct.evp_pkey_asn1_method_st** %ameth, align 8, !tbaa !25
  %pkey_id89 = getelementptr inbounds %struct.evp_pkey_asn1_method_st, %struct.evp_pkey_asn1_method_st* %15, i64 0, i32 0
  %16 = load i32, i32* %pkey_id89, align 8, !tbaa !37
  br label %cond.end

cond.end:                                         ; preds = %if.end84, %cond.false
  %cond = phi i32 [ %16, %cond.false ], [ 1172, %if.end84 ]
  %call90 = tail call i32 @EVP_MD_get_type(%struct.evp_md_st* noundef nonnull %call) #4
  %call91 = call i32 @OBJ_find_sigid_by_algs(i32* noundef nonnull %signid, i32 noundef %call90, i32 noundef %cond) #4
  %tobool92.not = icmp eq i32 %call91, 0
  br i1 %tobool92.not, label %if.then93, label %if.end94

if.then93:                                        ; preds = %cond.end
  call void @ERR_new() #4
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 246, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.ASN1_item_sign_ctx, i64 0, i64 0)) #4
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 198, i8* noundef null) #4
  br label %cleanup140

if.end94:                                         ; preds = %cond.end
  %17 = load %struct.evp_pkey_asn1_method_st*, %struct.evp_pkey_asn1_method_st** %ameth, align 8, !tbaa !25
  %pkey_flags = getelementptr inbounds %struct.evp_pkey_asn1_method_st, %struct.evp_pkey_asn1_method_st* %17, i64 0, i32 2
  %18 = load i64, i64* %pkey_flags, align 8, !tbaa !38
  %and = and i64 %18, 4
  %tobool96.not = icmp eq i64 %and, 0
  %. = select i1 %tobool96.not, i32 -1, i32 5
  %tobool100.not = icmp eq %struct.X509_algor_st* %algor1, null
  br i1 %tobool100.not, label %if.end104, label %if.then101

if.then101:                                       ; preds = %if.end94
  %19 = load i32, i32* %signid, align 4, !tbaa !4
  %call102 = call %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef %19) #4
  %call103 = call i32 @X509_ALGOR_set0(%struct.X509_algor_st* noundef nonnull %algor1, %struct.asn1_object_st* noundef %call102, i32 noundef %., i8* noundef null) #4
  br label %if.end104

if.end104:                                        ; preds = %if.then101, %if.end94
  %tobool105.not = icmp eq %struct.X509_algor_st* %algor2, null
  br i1 %tobool105.not, label %if.end110, label %if.then106

if.then106:                                       ; preds = %if.end104
  %20 = load i32, i32* %signid, align 4, !tbaa !4
  %call107 = call %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef %20) #4
  %call108 = call i32 @X509_ALGOR_set0(%struct.X509_algor_st* noundef nonnull %algor2, %struct.asn1_object_st* noundef %call107, i32 noundef %., i8* noundef null) #4
  br label %if.end110

if.end110:                                        ; preds = %if.end77.thread216, %if.end104, %if.then106, %if.end77
  %21 = bitcast i8* %data to %struct.ASN1_VALUE_st*
  %call111 = call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %21, i8** noundef nonnull %buf_in, %struct.ASN1_ITEM_st* noundef %it) #4
  %cmp112 = icmp slt i32 %call111, 1
  br i1 %cmp112, label %if.then114, label %if.end115

if.then114:                                       ; preds = %if.end110
  store i64 0, i64* %outl, align 8, !tbaa !24
  call void @ERR_new() #4
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 265, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.ASN1_item_sign_ctx, i64 0, i64 0)) #4
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 786691, i8* noundef null) #4
  br label %cleanup140

if.end115:                                        ; preds = %if.end110
  %conv116219 = zext i32 %call111 to i64
  %22 = load i8*, i8** %buf_in, align 8, !tbaa !19
  %call117 = call i32 @EVP_DigestSign(%struct.evp_md_ctx_st* noundef %ctx, i8* noundef null, i64* noundef nonnull %outll, i8* noundef %22, i64 noundef %conv116219) #4
  %tobool118.not = icmp eq i32 %call117, 0
  br i1 %tobool118.not, label %if.then119, label %if.end120

if.then119:                                       ; preds = %if.end115
  store i64 0, i64* %outl, align 8, !tbaa !24
  call void @ERR_new() #4
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 271, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.ASN1_item_sign_ctx, i64 0, i64 0)) #4
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 524294, i8* noundef null) #4
  br label %cleanup140

if.end120:                                        ; preds = %if.end115
  %23 = load i64, i64* %outll, align 8, !tbaa !24
  store i64 %23, i64* %outl, align 8, !tbaa !24
  %call121 = call i8* @CRYPTO_malloc(i64 noundef %23, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 275) #4
  %24 = load i8*, i8** %buf_in, align 8, !tbaa !19
  %cmp122 = icmp eq i8* %24, null
  %cmp125 = icmp eq i8* %call121, null
  %or.cond = select i1 %cmp122, i1 true, i1 %cmp125
  br i1 %or.cond, label %if.then127, label %if.end128

if.then127:                                       ; preds = %if.end120
  store i64 0, i64* %outl, align 8, !tbaa !24
  call void @ERR_new() #4
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 278, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.ASN1_item_sign_ctx, i64 0, i64 0)) #4
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 786688, i8* noundef null) #4
  br label %cleanup140

if.end128:                                        ; preds = %if.end120
  %call129 = call i32 @EVP_DigestSign(%struct.evp_md_ctx_st* noundef %ctx, i8* noundef nonnull %call121, i64* noundef nonnull %outl, i8* noundef nonnull %24, i64 noundef %conv116219) #4
  %tobool130.not = icmp eq i32 %call129, 0
  br i1 %tobool130.not, label %if.then131, label %if.end132

if.then131:                                       ; preds = %if.end128
  store i64 0, i64* %outl, align 8, !tbaa !24
  call void @ERR_new() #4
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 284, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.ASN1_item_sign_ctx, i64 0, i64 0)) #4
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 524294, i8* noundef null) #4
  br label %cleanup140

if.end132:                                        ; preds = %if.end128
  %data133 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %signature, i64 0, i32 2
  %25 = load i8*, i8** %data133, align 8, !tbaa !20
  call void @CRYPTO_free(i8* noundef %25, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 287) #4
  store i8* %call121, i8** %data133, align 8, !tbaa !20
  %26 = load i64, i64* %outl, align 8, !tbaa !24
  %conv135 = trunc i64 %26 to i32
  %length136 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %signature, i64 0, i32 0
  store i32 %conv135, i32* %length136, align 8, !tbaa !22
  %flags = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %signature, i64 0, i32 3
  %27 = load i64, i64* %flags, align 8, !tbaa !23
  %and137 = and i64 %27, -16
  %or = or i64 %and137, 8
  store i64 %or, i64* %flags, align 8, !tbaa !23
  br label %cleanup140

cleanup140:                                       ; preds = %if.then69, %if.end66.thread, %if.then, %if.then83, %if.then93, %if.then114, %if.then119, %if.then127, %if.then131, %if.end132, %cleanup53.thread
  %inl.0 = phi i64 [ 0, %if.then ], [ 0, %if.then83 ], [ 0, %if.then114 ], [ %conv116219, %if.then127 ], [ %conv116219, %if.end132 ], [ %conv116219, %if.then131 ], [ %conv116219, %if.then119 ], [ 0, %if.then93 ], [ 0, %cleanup53.thread ], [ 0, %if.end66.thread ], [ 0, %if.then69 ]
  %buf_out.0 = phi i8* [ null, %if.then ], [ null, %if.then83 ], [ null, %if.then114 ], [ %call121, %if.then127 ], [ null, %if.end132 ], [ %call121, %if.then131 ], [ null, %if.then119 ], [ null, %if.then93 ], [ null, %cleanup53.thread ], [ null, %if.end66.thread ], [ null, %if.then69 ]
  %28 = load i8*, i8** %buf_in, align 8, !tbaa !19
  call void @CRYPTO_clear_free(i8* noundef %28, i64 noundef %inl.0, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 298) #4
  %29 = load i64, i64* %outll, align 8, !tbaa !24
  call void @CRYPTO_clear_free(i8* noundef %buf_out.0, i64 noundef %29, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 299) #4
  %30 = load i64, i64* %outl, align 8, !tbaa !24
  %conv139 = trunc i64 %30 to i32
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #5
  ret i32 %conv139
}

declare void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #2

declare %struct.evp_pkey_ctx_st* @EVP_MD_CTX_get_pkey_ctx(%struct.evp_md_ctx_st* noundef) local_unnamed_addr #2

declare %struct.evp_md_st* @EVP_MD_CTX_get0_md(%struct.evp_md_ctx_st* noundef) local_unnamed_addr #2

declare %struct.evp_pkey_st* @EVP_PKEY_CTX_get0_pkey(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #2

declare void @OSSL_PARAM_construct_octet_string(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8, i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare void @OSSL_PARAM_construct_end(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8) local_unnamed_addr #2

declare i32 @EVP_PKEY_CTX_get_params(%struct.evp_pkey_ctx_st* noundef, %struct.ossl_param_st* noundef) local_unnamed_addr #2

declare %struct.X509_algor_st* @d2i_X509_ALGOR(%struct.X509_algor_st** noundef, i8** noundef, i64 noundef) local_unnamed_addr #2

declare i32 @EVP_PKEY_get_id(%struct.evp_pkey_st* noundef) local_unnamed_addr #2

declare i32 @OBJ_find_sigid_by_algs(i32* noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @EVP_MD_get_type(%struct.evp_md_st* noundef) local_unnamed_addr #2

declare i32 @X509_ALGOR_set0(%struct.X509_algor_st* noundef, %struct.asn1_object_st* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef, i8** noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

declare i32 @EVP_DigestSign(%struct.evp_md_ctx_st* noundef, i8* noundef, i64* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nounwind willreturn }
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
!8 = !{!9, !5, i64 4}
!9 = !{!"evp_md_st", !5, i64 0, !5, i64 4, !5, i64 8, !10, i64 16, !5, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !5, i64 72, !5, i64 76, !11, i64 80, !5, i64 88, !11, i64 96, !11, i64 104, !11, i64 112, !6, i64 120, !11, i64 128, !11, i64 136, !11, i64 144, !11, i64 152, !11, i64 160, !11, i64 168, !11, i64 176, !11, i64 184, !11, i64 192, !11, i64 200, !11, i64 208, !11, i64 216, !11, i64 224, !11, i64 232}
!10 = !{!"long", !6, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!13, !11, i64 8}
!13 = !{!"X509_algor_st", !11, i64 0, !11, i64 8}
!14 = !{!15, !5, i64 0}
!15 = !{!"asn1_type_st", !5, i64 0, !6, i64 8}
!16 = !{!13, !11, i64 0}
!17 = !{!18, !5, i64 20}
!18 = !{!"asn1_object_st", !11, i64 0, !11, i64 8, !5, i64 16, !5, i64 20, !11, i64 24, !5, i64 32}
!19 = !{!11, !11, i64 0}
!20 = !{!21, !11, i64 8}
!21 = !{!"asn1_string_st", !5, i64 0, !5, i64 4, !11, i64 8, !10, i64 16}
!22 = !{!21, !5, i64 0}
!23 = !{!21, !10, i64 16}
!24 = !{!10, !10, i64 0}
!25 = !{!26, !11, i64 8}
!26 = !{!"evp_pkey_st", !5, i64 0, !5, i64 4, !11, i64 8, !11, i64 16, !11, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !11, i64 56, !11, i64 64, !5, i64 72, !5, i64 76, !27, i64 80, !11, i64 96, !11, i64 104, !10, i64 112, !11, i64 120, !10, i64 128, !28, i64 136}
!27 = !{!"crypto_ex_data_st", !11, i64 0, !11, i64 8}
!28 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8}
!29 = !{!30, !5, i64 0}
!30 = !{!"evp_pkey_ctx_st", !5, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !6, i64 40, !31, i64 56, !11, i64 88, !11, i64 96, !11, i64 104, !5, i64 112, !5, i64 116, !11, i64 120, !11, i64 128, !11, i64 136, !11, i64 144, !11, i64 152, !5, i64 160, !11, i64 168}
!31 = !{!"", !11, i64 0, !11, i64 8, !10, i64 16, !5, i64 24}
!32 = !{i64 0, i64 8, !19, i64 8, i64 4, !4, i64 16, i64 8, !19, i64 24, i64 8, !24, i64 32, i64 8, !24}
!33 = !{!34, !10, i64 32}
!34 = !{!"ossl_param_st", !11, i64 0, !5, i64 8, !11, i64 16, !10, i64 24, !10, i64 32}
!35 = !{!36, !11, i64 208}
!36 = !{!"evp_pkey_asn1_method_st", !5, i64 0, !5, i64 4, !10, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !11, i64 104, !11, i64 112, !11, i64 120, !11, i64 128, !11, i64 136, !11, i64 144, !11, i64 152, !11, i64 160, !11, i64 168, !11, i64 176, !11, i64 184, !11, i64 192, !11, i64 200, !11, i64 208, !11, i64 216, !11, i64 224, !11, i64 232, !11, i64 240, !11, i64 248, !11, i64 256, !11, i64 264, !11, i64 272, !11, i64 280, !11, i64 288, !11, i64 296, !11, i64 304, !11, i64 312}
!37 = !{!36, !5, i64 0}
!38 = !{!36, !10, i64 8}
