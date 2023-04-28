; ModuleID = 'crypto/cms/cms_ec.c'
source_filename = "crypto/cms/cms_ec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.CMS_RecipientInfo_st = type { i32, %union.anon }
%union.anon = type { %struct.CMS_KeyTransRecipientInfo_st* }
%struct.CMS_KeyTransRecipientInfo_st = type { i32, %struct.CMS_SignerIdentifier_st*, %struct.X509_algor_st*, %struct.asn1_string_st*, %struct.x509_st*, %struct.evp_pkey_st*, %struct.evp_pkey_ctx_st*, %struct.CMS_CTX_st* }
%struct.CMS_SignerIdentifier_st = type { i32, %union.anon.0 }
%union.anon.0 = type { %struct.CMS_IssuerAndSerialNumber_st* }
%struct.CMS_IssuerAndSerialNumber_st = type { %struct.X509_name_st*, %struct.asn1_string_st* }
%struct.X509_name_st = type opaque
%struct.X509_algor_st = type { %struct.asn1_object_st*, %struct.asn1_type_st* }
%struct.asn1_object_st = type opaque
%struct.asn1_type_st = type { i32, %union.anon.1 }
%union.anon.1 = type { i8* }
%struct.asn1_string_st = type { i32, i32, i8*, i64 }
%struct.x509_st = type opaque
%struct.evp_pkey_st = type { i32, i32, %struct.evp_pkey_asn1_method_st*, %struct.engine_st*, %struct.engine_st*, %union.legacy_pkey_st, %union.legacy_pkey_st, i32, i8*, %struct.stack_st_X509_ATTRIBUTE*, i32, i8, %struct.crypto_ex_data_st, %struct.evp_keymgmt_st*, i8*, i64, %struct.stack_st_OP_CACHE_ELEM*, i64, %struct.anon }
%struct.evp_pkey_asn1_method_st = type opaque
%struct.engine_st = type opaque
%union.legacy_pkey_st = type { i8* }
%struct.stack_st_X509_ATTRIBUTE = type opaque
%struct.crypto_ex_data_st = type { %struct.ossl_lib_ctx_st*, %struct.stack_st_void* }
%struct.ossl_lib_ctx_st = type opaque
%struct.stack_st_void = type opaque
%struct.evp_keymgmt_st = type opaque
%struct.stack_st_OP_CACHE_ELEM = type opaque
%struct.anon = type { i32, i32, i32 }
%struct.evp_pkey_ctx_st = type { i32, %struct.ossl_lib_ctx_st*, i8*, i8*, %struct.evp_keymgmt_st*, %union.anon.2, %struct.anon.8, i8*, i32 (%struct.evp_pkey_ctx_st*)*, i32*, i32, i32, %struct.evp_pkey_method_st*, %struct.engine_st*, %struct.evp_pkey_st*, %struct.evp_pkey_st*, i8*, i8, %struct.bignum_st* }
%union.anon.2 = type { %struct.anon.4 }
%struct.anon.4 = type { %struct.evp_keyexch_st*, i8* }
%struct.evp_keyexch_st = type opaque
%struct.anon.8 = type { i8*, i8*, i64, i8 }
%struct.evp_pkey_method_st = type { i32, i32, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st*)*, void (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64, i8*, i64)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_md_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, %struct.evp_md_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_md_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i32, %struct.evp_md_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*)*, i32 (%struct.evp_pkey_ctx_st*, i32, i32, i8*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i8*)*, i32 (%struct.evp_md_ctx_st*, i8*, i64*, i8*, i64)*, i32 (%struct.evp_md_ctx_st*, i8*, i64, i8*, i64)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_md_ctx_st*)* }
%struct.evp_md_ctx_st = type opaque
%struct.bignum_st = type opaque
%struct.CMS_CTX_st = type { %struct.ossl_lib_ctx_st*, i8* }
%struct.evp_md_st = type { i32, i32, i32, i64, i32, i32 (%struct.evp_md_ctx_st*)*, i32 (%struct.evp_md_ctx_st*, i8*, i64)*, i32 (%struct.evp_md_ctx_st*, i8*)*, i32 (%struct.evp_md_ctx_st*, %struct.evp_md_ctx_st*)*, i32 (%struct.evp_md_ctx_st*)*, i32, i32, i32 (%struct.evp_md_ctx_st*, i32, i32, i8*)*, i32, i8*, i8*, %struct.ossl_provider_st*, i32, i8*, i8* (i8*)*, i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64*, i64)*, i32 (i8*, i8*, i64, i8*, i64*, i64)*, void (i8*)*, i8* (i8*)*, i32 (%struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i8*)*, %struct.ossl_param_st* (i8*, i8*)*, %struct.ossl_param_st* (i8*, i8*)* }
%struct.ossl_provider_st = type opaque
%struct.ossl_param_st = type { i8*, i32, i8*, i64, i64 }
%struct.evp_cipher_ctx_st = type opaque
%struct.evp_cipher_st = type { i32, i32, i32, i32, i64, i32, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)*, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)*, i32 (%struct.evp_cipher_ctx_st*)*, i32, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)*, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)*, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)*, i8*, i32, i8*, i8*, %struct.ossl_provider_st*, i32, i8*, i8* (i8*)*, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)*, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)*, i32 (i8*, i8*, i64*, i64, i8*, i64)*, i32 (i8*, i8*, i64*, i64)*, i32 (i8*, i8*, i64*, i64, i8*, i64)*, void (i8*)*, i8* (i8*)*, i32 (%struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i8*)*, %struct.ossl_param_st* (i8*, i8*)*, %struct.ossl_param_st* (i8*, i8*)* }
%struct.CMS_SignerInfo_st = type { i32, %struct.CMS_SignerIdentifier_st*, %struct.X509_algor_st*, %struct.stack_st_X509_ATTRIBUTE*, %struct.X509_algor_st*, %struct.asn1_string_st*, %struct.stack_st_X509_ATTRIBUTE*, %struct.x509_st*, %struct.evp_pkey_st*, %struct.evp_md_ctx_st*, %struct.evp_pkey_ctx_st*, %struct.CMS_CTX_st* }
%struct.ossl_decoder_ctx_st = type opaque

@.str = private unnamed_addr constant [20 x i8] c"crypto/cms/cms_ec.c\00", align 1
@__func__.ossl_cms_ecdh_envelope = private unnamed_addr constant [23 x i8] c"ossl_cms_ecdh_envelope\00", align 1
@__func__.ecdh_cms_decrypt = private unnamed_addr constant [17 x i8] c"ecdh_cms_decrypt\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"DER\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"EC\00", align 1
@__func__.pkey_type2param = private unnamed_addr constant [16 x i8] c"pkey_type2param\00", align 1
@__func__.ecdh_cms_set_shared_info = private unnamed_addr constant [25 x i8] c"ecdh_cms_set_shared_info\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_cms_ecdh_envelope(%struct.CMS_RecipientInfo_st* noundef %ri, i32 noundef %decrypt) local_unnamed_addr #0 {
entry:
  switch i32 %decrypt, label %if.end4 [
    i32 1, label %if.then
    i32 0, label %if.then2
  ]

if.then:                                          ; preds = %entry
  %call = tail call fastcc i32 @ecdh_cms_decrypt(%struct.CMS_RecipientInfo_st* noundef %ri) #3
  br label %return

if.then2:                                         ; preds = %entry
  %call3 = tail call fastcc i32 @ecdh_cms_encrypt(%struct.CMS_RecipientInfo_st* noundef %ri) #3
  br label %return

if.end4:                                          ; preds = %entry
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 388, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.ossl_cms_ecdh_envelope, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 46, i32 noundef 125, i8* noundef null) #4
  br label %return

return:                                           ; preds = %if.end4, %if.then2, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call3, %if.then2 ], [ 0, %if.end4 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @ecdh_cms_decrypt(%struct.CMS_RecipientInfo_st* noundef %ri) unnamed_addr #0 {
entry:
  %alg = alloca %struct.X509_algor_st*, align 8
  %pubkey = alloca %struct.asn1_string_st*, align 8
  %call = tail call %struct.evp_pkey_ctx_st* @CMS_RecipientInfo_get0_pkey_ctx(%struct.CMS_RecipientInfo_st* noundef %ri) #4
  %cmp = icmp eq %struct.evp_pkey_ctx_st* %call, null
  br i1 %cmp, label %cleanup21, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call %struct.evp_pkey_st* @EVP_PKEY_CTX_get0_peerkey(%struct.evp_pkey_ctx_st* noundef nonnull %call) #4
  %tobool.not = icmp eq %struct.evp_pkey_st* %call1, null
  br i1 %tobool.not, label %if.then2, label %if.end16

if.then2:                                         ; preds = %if.end
  %0 = bitcast %struct.X509_algor_st** %alg to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #5
  %1 = bitcast %struct.asn1_string_st** %pubkey to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #5
  %call3 = call i32 @CMS_RecipientInfo_kari_get0_orig_id(%struct.CMS_RecipientInfo_st* noundef %ri, %struct.X509_algor_st** noundef nonnull %alg, %struct.asn1_string_st** noundef nonnull %pubkey, %struct.asn1_string_st** noundef null, %struct.X509_name_st** noundef null, %struct.asn1_string_st** noundef null) #4
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %cleanup21.critedge29, label %if.end6

if.end6:                                          ; preds = %if.then2
  %2 = load %struct.X509_algor_st*, %struct.X509_algor_st** %alg, align 8, !tbaa !4
  %cmp7 = icmp eq %struct.X509_algor_st* %2, null
  %3 = load %struct.asn1_string_st*, %struct.asn1_string_st** %pubkey, align 8
  %cmp8 = icmp eq %struct.asn1_string_st* %3, null
  %or.cond = select i1 %cmp7, i1 true, i1 %cmp8
  br i1 %or.cond, label %cleanup21.critedge30, label %if.end10

if.end10:                                         ; preds = %if.end6
  %call11 = call fastcc i32 @ecdh_cms_set_peerkey(%struct.evp_pkey_ctx_st* noundef nonnull %call, %struct.X509_algor_st* noundef nonnull %2, %struct.asn1_string_st* noundef nonnull %3) #3
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.then13, label %cleanup

if.then13:                                        ; preds = %if.end10
  call void @ERR_new() #4
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 236, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.ecdh_cms_decrypt, i64 0, i64 0)) #4
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 46, i32 noundef 188, i8* noundef null) #4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #5
  br label %cleanup21

cleanup:                                          ; preds = %if.end10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #5
  br label %if.end16

if.end16:                                         ; preds = %cleanup, %if.end
  %call17 = call fastcc i32 @ecdh_cms_set_shared_info(%struct.evp_pkey_ctx_st* noundef nonnull %call, %struct.CMS_RecipientInfo_st* noundef %ri) #3
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.then19, label %cleanup21

if.then19:                                        ; preds = %if.end16
  call void @ERR_new() #4
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 242, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.ecdh_cms_decrypt, i64 0, i64 0)) #4
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 46, i32 noundef 189, i8* noundef null) #4
  br label %cleanup21

cleanup21.critedge29:                             ; preds = %if.then2
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #5
  br label %cleanup21

cleanup21.critedge30:                             ; preds = %if.end6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #5
  br label %cleanup21

cleanup21:                                        ; preds = %if.end16, %cleanup21.critedge30, %cleanup21.critedge29, %if.then13, %entry, %if.then19
  %retval.1 = phi i32 [ 0, %if.then19 ], [ 0, %entry ], [ 0, %if.then13 ], [ 0, %cleanup21.critedge29 ], [ 0, %cleanup21.critedge30 ], [ 1, %if.end16 ]
  ret i32 %retval.1
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @ecdh_cms_encrypt(%struct.CMS_RecipientInfo_st* noundef %ri) unnamed_addr #0 {
entry:
  %talg = alloca %struct.X509_algor_st*, align 8
  %aoid = alloca %struct.asn1_object_st*, align 8
  %pubkey = alloca %struct.asn1_string_st*, align 8
  %ukm = alloca %struct.asn1_string_st*, align 8
  %penc = alloca i8*, align 8
  %kdf_nid = alloca i32, align 4
  %kdf_md = alloca %struct.evp_md_st*, align 8
  %0 = bitcast %struct.X509_algor_st** %talg to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #5
  %1 = bitcast %struct.asn1_object_st** %aoid to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #5
  %2 = bitcast %struct.asn1_string_st** %pubkey to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #5
  %3 = bitcast %struct.asn1_string_st** %ukm to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #5
  %4 = bitcast i8** %penc to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #5
  store i8* null, i8** %penc, align 8, !tbaa !4
  %5 = bitcast i32* %kdf_nid to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #5
  %6 = bitcast %struct.evp_md_st** %kdf_md to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #5
  %call = tail call %struct.evp_pkey_ctx_st* @CMS_RecipientInfo_get0_pkey_ctx(%struct.CMS_RecipientInfo_st* noundef %ri) #4
  %cmp = icmp eq %struct.evp_pkey_ctx_st* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call %struct.evp_pkey_st* @EVP_PKEY_CTX_get0_pkey(%struct.evp_pkey_ctx_st* noundef nonnull %call) #4
  %call2 = call i32 @CMS_RecipientInfo_kari_get0_orig_id(%struct.CMS_RecipientInfo_st* noundef %ri, %struct.X509_algor_st** noundef nonnull %talg, %struct.asn1_string_st** noundef nonnull %pubkey, %struct.asn1_string_st** noundef null, %struct.X509_name_st** noundef null, %struct.asn1_string_st** noundef null) #4
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %err, label %if.end4

if.end4:                                          ; preds = %if.end
  %7 = load %struct.X509_algor_st*, %struct.X509_algor_st** %talg, align 8, !tbaa !4
  call void @X509_ALGOR_get0(%struct.asn1_object_st** noundef nonnull %aoid, i32* noundef null, i8** noundef null, %struct.X509_algor_st* noundef %7) #4
  %8 = load %struct.asn1_object_st*, %struct.asn1_object_st** %aoid, align 8, !tbaa !4
  %call5 = call %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef 0) #4
  %cmp6 = icmp eq %struct.asn1_object_st* %8, %call5
  br i1 %cmp6, label %if.then7, label %if.end12

if.then7:                                         ; preds = %if.end4
  %call8 = call i64 @EVP_PKEY_get1_encoded_public_key(%struct.evp_pkey_st* noundef %call1, i8** noundef nonnull %penc) #4
  %9 = load %struct.asn1_string_st*, %struct.asn1_string_st** %pubkey, align 8, !tbaa !4
  %10 = load i8*, i8** %penc, align 8, !tbaa !4
  %conv = trunc i64 %call8 to i32
  call void @ASN1_STRING_set0(%struct.asn1_string_st* noundef %9, i8* noundef %10, i32 noundef %conv) #4
  %11 = load %struct.asn1_string_st*, %struct.asn1_string_st** %pubkey, align 8, !tbaa !4
  %flags = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %11, i64 0, i32 3
  %12 = load i64, i64* %flags, align 8, !tbaa !8
  %and = and i64 %12, -16
  %or = or i64 %and, 8
  store i64 %or, i64* %flags, align 8, !tbaa !8
  store i8* null, i8** %penc, align 8, !tbaa !4
  %13 = load %struct.X509_algor_st*, %struct.X509_algor_st** %talg, align 8, !tbaa !4
  %call10 = call %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef 408) #4
  %call11 = call i32 @X509_ALGOR_set0(%struct.X509_algor_st* noundef %13, %struct.asn1_object_st* noundef %call10, i32 noundef -1, i8* noundef null) #4
  br label %if.end12

if.end12:                                         ; preds = %if.then7, %if.end4
  %call13 = call i32 @EVP_PKEY_CTX_get_ecdh_kdf_type(%struct.evp_pkey_ctx_st* noundef nonnull %call) #4
  %cmp14 = icmp slt i32 %call13, 1
  br i1 %cmp14, label %err, label %if.end17

if.end17:                                         ; preds = %if.end12
  %call18 = call i32 @EVP_PKEY_CTX_get_ecdh_kdf_md(%struct.evp_pkey_ctx_st* noundef nonnull %call, %struct.evp_md_st** noundef nonnull %kdf_md) #4
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %err, label %if.end21

if.end21:                                         ; preds = %if.end17
  %call22 = call i32 @EVP_PKEY_CTX_get_ecdh_cofactor_mode(%struct.evp_pkey_ctx_st* noundef nonnull %call) #4
  %cmp23 = icmp slt i32 %call22, 0
  br i1 %cmp23, label %err, label %if.else

if.else:                                          ; preds = %if.end21
  %cmp26 = icmp eq i32 %call22, 0
  %cmp30 = icmp eq i32 %call22, 1
  %spec.store.select = select i1 %cmp30, i32 947, i32 %call22
  %ecdh_nid.0 = select i1 %cmp26, i32 946, i32 %spec.store.select
  %cmp36 = icmp eq i32 %call13, 1
  br i1 %cmp36, label %if.then38, label %err

if.then38:                                        ; preds = %if.else
  %call39 = call i32 @EVP_PKEY_CTX_set_ecdh_kdf_type(%struct.evp_pkey_ctx_st* noundef nonnull %call, i32 noundef 2) #4
  %cmp40 = icmp slt i32 %call39, 1
  br i1 %cmp40, label %err, label %if.end45

if.end45:                                         ; preds = %if.then38
  %14 = load %struct.evp_md_st*, %struct.evp_md_st** %kdf_md, align 8, !tbaa !4
  %cmp46 = icmp eq %struct.evp_md_st* %14, null
  br i1 %cmp46, label %if.then48, label %if.end55

if.then48:                                        ; preds = %if.end45
  %call49 = call %struct.evp_md_st* @EVP_sha1() #4
  store %struct.evp_md_st* %call49, %struct.evp_md_st** %kdf_md, align 8, !tbaa !4
  %call50 = call i32 @EVP_PKEY_CTX_set_ecdh_kdf_md(%struct.evp_pkey_ctx_st* noundef nonnull %call, %struct.evp_md_st* noundef %call49) #4
  %cmp51 = icmp slt i32 %call50, 1
  br i1 %cmp51, label %err, label %if.end55

if.end55:                                         ; preds = %if.then48, %if.end45
  %call56 = call i32 @CMS_RecipientInfo_kari_get0_alg(%struct.CMS_RecipientInfo_st* noundef %ri, %struct.X509_algor_st** noundef nonnull %talg, %struct.asn1_string_st** noundef nonnull %ukm) #4
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %err, label %if.end59

if.end59:                                         ; preds = %if.end55
  %15 = load %struct.evp_md_st*, %struct.evp_md_st** %kdf_md, align 8, !tbaa !4
  %call60 = call i32 @EVP_MD_get_type(%struct.evp_md_st* noundef %15) #4
  %call61 = call i32 @OBJ_find_sigid_by_algs(i32* noundef nonnull %kdf_nid, i32 noundef %call60, i32 noundef %ecdh_nid.0) #4
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %err, label %if.end64

if.end64:                                         ; preds = %if.end59
  %call65 = call %struct.evp_cipher_ctx_st* @CMS_RecipientInfo_kari_get0_ctx(%struct.CMS_RecipientInfo_st* noundef %ri) #4
  %call66 = call %struct.evp_cipher_st* @EVP_CIPHER_CTX_get0_cipher(%struct.evp_cipher_ctx_st* noundef %call65) #4
  %call67 = call i32 @EVP_CIPHER_get_type(%struct.evp_cipher_st* noundef %call66) #4
  %call68 = call i32 @EVP_CIPHER_CTX_get_key_length(%struct.evp_cipher_ctx_st* noundef %call65) #4
  %call69 = call %struct.X509_algor_st* @X509_ALGOR_new() #4
  %cmp70 = icmp eq %struct.X509_algor_st* %call69, null
  br i1 %cmp70, label %err, label %if.end73

if.end73:                                         ; preds = %if.end64
  %call74 = call %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef %call67) #4
  %algorithm = getelementptr inbounds %struct.X509_algor_st, %struct.X509_algor_st* %call69, i64 0, i32 0
  store %struct.asn1_object_st* %call74, %struct.asn1_object_st** %algorithm, align 8, !tbaa !12
  %call75 = call %struct.asn1_type_st* @ASN1_TYPE_new() #4
  %parameter = getelementptr inbounds %struct.X509_algor_st, %struct.X509_algor_st* %call69, i64 0, i32 1
  store %struct.asn1_type_st* %call75, %struct.asn1_type_st** %parameter, align 8, !tbaa !14
  %cmp77 = icmp eq %struct.asn1_type_st* %call75, null
  br i1 %cmp77, label %err, label %if.end80

if.end80:                                         ; preds = %if.end73
  %call82 = call i32 @EVP_CIPHER_param_to_asn1(%struct.evp_cipher_ctx_st* noundef %call65, %struct.asn1_type_st* noundef nonnull %call75) #4
  %cmp83 = icmp slt i32 %call82, 1
  br i1 %cmp83, label %err, label %if.end86

if.end86:                                         ; preds = %if.end80
  %16 = load %struct.asn1_type_st*, %struct.asn1_type_st** %parameter, align 8, !tbaa !14
  %call88 = call i32 @ASN1_TYPE_get(%struct.asn1_type_st* noundef %16) #4
  %cmp89 = icmp eq i32 %call88, 0
  br i1 %cmp89, label %if.then91, label %if.end94

if.then91:                                        ; preds = %if.end86
  %17 = load %struct.asn1_type_st*, %struct.asn1_type_st** %parameter, align 8, !tbaa !14
  call void @ASN1_TYPE_free(%struct.asn1_type_st* noundef %17) #4
  store %struct.asn1_type_st* null, %struct.asn1_type_st** %parameter, align 8, !tbaa !14
  br label %if.end94

if.end94:                                         ; preds = %if.then91, %if.end86
  %call95 = call i32 @EVP_PKEY_CTX_set_ecdh_kdf_outlen(%struct.evp_pkey_ctx_st* noundef nonnull %call, i32 noundef %call68) #4
  %cmp96 = icmp slt i32 %call95, 1
  br i1 %cmp96, label %err, label %if.end99

if.end99:                                         ; preds = %if.end94
  %18 = load %struct.asn1_string_st*, %struct.asn1_string_st** %ukm, align 8, !tbaa !4
  %call100 = call i32 @CMS_SharedInfo_encode(i8** noundef nonnull %penc, %struct.X509_algor_st* noundef nonnull %call69, %struct.asn1_string_st* noundef %18, i32 noundef %call68) #4
  %cmp102 = icmp eq i32 %call100, 0
  br i1 %cmp102, label %err, label %if.end105

if.end105:                                        ; preds = %if.end99
  %19 = load i8*, i8** %penc, align 8, !tbaa !4
  %call107 = call i32 @EVP_PKEY_CTX_set0_ecdh_kdf_ukm(%struct.evp_pkey_ctx_st* noundef nonnull %call, i8* noundef %19, i32 noundef %call100) #4
  %cmp108 = icmp slt i32 %call107, 1
  br i1 %cmp108, label %err, label %if.end111

if.end111:                                        ; preds = %if.end105
  store i8* null, i8** %penc, align 8, !tbaa !4
  %call112 = call i32 @i2d_X509_ALGOR(%struct.X509_algor_st* noundef nonnull %call69, i8** noundef nonnull %penc) #4
  %20 = load i8*, i8** %penc, align 8, !tbaa !4
  %cmp114 = icmp eq i8* %20, null
  %cmp116 = icmp eq i32 %call112, 0
  %or.cond = select i1 %cmp114, i1 true, i1 %cmp116
  br i1 %or.cond, label %err, label %if.end119

if.end119:                                        ; preds = %if.end111
  %call120 = call %struct.asn1_string_st* @ASN1_STRING_new() #4
  %cmp121 = icmp eq %struct.asn1_string_st* %call120, null
  br i1 %cmp121, label %err, label %if.end124

if.end124:                                        ; preds = %if.end119
  %21 = load i8*, i8** %penc, align 8, !tbaa !4
  call void @ASN1_STRING_set0(%struct.asn1_string_st* noundef nonnull %call120, i8* noundef %21, i32 noundef %call112) #4
  store i8* null, i8** %penc, align 8, !tbaa !4
  %22 = load %struct.X509_algor_st*, %struct.X509_algor_st** %talg, align 8, !tbaa !4
  %23 = load i32, i32* %kdf_nid, align 4, !tbaa !15
  %call126 = call %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef %23) #4
  %24 = bitcast %struct.asn1_string_st* %call120 to i8*
  %call127 = call i32 @X509_ALGOR_set0(%struct.X509_algor_st* noundef %22, %struct.asn1_object_st* noundef %call126, i32 noundef 16, i8* noundef nonnull %24) #4
  br label %err

err:                                              ; preds = %if.end119, %if.end111, %if.end105, %if.end99, %if.end94, %if.end80, %if.end73, %if.end64, %if.end59, %if.end55, %if.then48, %if.else, %if.then38, %if.end21, %if.end17, %if.end12, %if.end, %if.end124
  %wrap_alg.0 = phi %struct.X509_algor_st* [ null, %if.end12 ], [ null, %if.end21 ], [ null, %if.then38 ], [ null, %if.then48 ], [ null, %if.end64 ], [ %call69, %if.end73 ], [ %call69, %if.end80 ], [ %call69, %if.end94 ], [ %call69, %if.end99 ], [ %call69, %if.end105 ], [ %call69, %if.end111 ], [ %call69, %if.end119 ], [ %call69, %if.end124 ], [ null, %if.end59 ], [ null, %if.end55 ], [ null, %if.else ], [ null, %if.end17 ], [ null, %if.end ]
  %rv.0 = phi i32 [ 0, %if.end12 ], [ 0, %if.end21 ], [ 0, %if.then38 ], [ 0, %if.then48 ], [ 0, %if.end64 ], [ 0, %if.end73 ], [ 0, %if.end80 ], [ 0, %if.end94 ], [ 0, %if.end99 ], [ 0, %if.end105 ], [ 0, %if.end111 ], [ 0, %if.end119 ], [ 1, %if.end124 ], [ 0, %if.end59 ], [ 0, %if.end55 ], [ 0, %if.else ], [ 0, %if.end17 ], [ 0, %if.end ]
  %25 = load i8*, i8** %penc, align 8, !tbaa !4
  call void @CRYPTO_free(i8* noundef %25, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 373) #4
  call void @X509_ALGOR_free(%struct.X509_algor_st* noundef %wrap_alg.0) #4
  br label %cleanup

cleanup:                                          ; preds = %entry, %err
  %retval.0 = phi i32 [ %rv.0, %err ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #5
  ret i32 %retval.0
}

declare void @ERR_new() local_unnamed_addr #1

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_cms_ecdsa_dsa_sign(%struct.CMS_SignerInfo_st* noundef %si, i32 noundef %verify) local_unnamed_addr #0 {
entry:
  %snid = alloca i32, align 4
  %alg1 = alloca %struct.X509_algor_st*, align 8
  %alg2 = alloca %struct.X509_algor_st*, align 8
  %cmp = icmp eq i32 %verify, 0
  br i1 %cmp, label %if.then, label %return

if.then:                                          ; preds = %entry
  %0 = bitcast i32* %snid to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #5
  %1 = bitcast %struct.X509_algor_st** %alg1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #5
  %2 = bitcast %struct.X509_algor_st** %alg2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #5
  %pkey1 = getelementptr inbounds %struct.CMS_SignerInfo_st, %struct.CMS_SignerInfo_st* %si, i64 0, i32 8
  %3 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey1, align 8, !tbaa !16
  call void @CMS_SignerInfo_get0_algs(%struct.CMS_SignerInfo_st* noundef %si, %struct.evp_pkey_st** noundef null, %struct.x509_st** noundef null, %struct.X509_algor_st** noundef nonnull %alg1, %struct.X509_algor_st** noundef nonnull %alg2) #4
  %4 = load %struct.X509_algor_st*, %struct.X509_algor_st** %alg1, align 8, !tbaa !4
  %cmp2 = icmp eq %struct.X509_algor_st* %4, null
  br i1 %cmp2, label %cleanup.thread, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %algorithm = getelementptr inbounds %struct.X509_algor_st, %struct.X509_algor_st* %4, i64 0, i32 0
  %5 = load %struct.asn1_object_st*, %struct.asn1_object_st** %algorithm, align 8, !tbaa !12
  %cmp3 = icmp eq %struct.asn1_object_st* %5, null
  br i1 %cmp3, label %cleanup.thread, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %call = call i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef nonnull %5) #4
  %cmp6 = icmp eq i32 %call, 0
  br i1 %cmp6, label %cleanup.thread, label %if.end8

if.end8:                                          ; preds = %if.end
  %call9 = call i32 @EVP_PKEY_get_id(%struct.evp_pkey_st* noundef %3) #4
  %call10 = call i32 @OBJ_find_sigid_by_algs(i32* noundef nonnull %snid, i32 noundef %call, i32 noundef %call9) #4
  %tobool.not = icmp eq i32 %call10, 0
  br i1 %tobool.not, label %cleanup.thread, label %cleanup

cleanup.thread:                                   ; preds = %lor.lhs.false, %if.then, %if.end, %if.end8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #5
  br label %return

cleanup:                                          ; preds = %if.end8
  %6 = load %struct.X509_algor_st*, %struct.X509_algor_st** %alg2, align 8, !tbaa !4
  %7 = load i32, i32* %snid, align 4, !tbaa !15
  %call13 = call %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef %7) #4
  %call14 = call i32 @X509_ALGOR_set0(%struct.X509_algor_st* noundef %6, %struct.asn1_object_st* noundef %call13, i32 noundef -1, i8* noundef null) #4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #5
  br label %return

return:                                           ; preds = %entry, %cleanup, %cleanup.thread
  %retval.1 = phi i32 [ -1, %cleanup.thread ], [ 1, %cleanup ], [ 1, %entry ]
  ret i32 %retval.1
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare void @CMS_SignerInfo_get0_algs(%struct.CMS_SignerInfo_st* noundef, %struct.evp_pkey_st** noundef, %struct.x509_st** noundef, %struct.X509_algor_st** noundef, %struct.X509_algor_st** noundef) local_unnamed_addr #1

declare i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef) local_unnamed_addr #1

declare i32 @OBJ_find_sigid_by_algs(i32* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @EVP_PKEY_get_id(%struct.evp_pkey_st* noundef) local_unnamed_addr #1

declare i32 @X509_ALGOR_set0(%struct.X509_algor_st* noundef, %struct.asn1_object_st* noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

declare %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

declare %struct.evp_pkey_ctx_st* @CMS_RecipientInfo_get0_pkey_ctx(%struct.CMS_RecipientInfo_st* noundef) local_unnamed_addr #1

declare %struct.evp_pkey_st* @EVP_PKEY_CTX_get0_peerkey(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #1

declare i32 @CMS_RecipientInfo_kari_get0_orig_id(%struct.CMS_RecipientInfo_st* noundef, %struct.X509_algor_st** noundef, %struct.asn1_string_st** noundef, %struct.asn1_string_st** noundef, %struct.X509_name_st** noundef, %struct.asn1_string_st** noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @ecdh_cms_set_peerkey(%struct.evp_pkey_ctx_st* noundef %pctx, %struct.X509_algor_st* noundef %alg, %struct.asn1_string_st* noundef %pubkey) unnamed_addr #0 {
entry:
  %aoid = alloca %struct.asn1_object_st*, align 8
  %atype = alloca i32, align 4
  %aval = alloca i8*, align 8
  %0 = bitcast %struct.asn1_object_st** %aoid to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #5
  %1 = bitcast i32* %atype to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #5
  %2 = bitcast i8** %aval to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #5
  call void @X509_ALGOR_get0(%struct.asn1_object_st** noundef nonnull %aoid, i32* noundef nonnull %atype, i8** noundef nonnull %aval, %struct.X509_algor_st* noundef %alg) #4
  %3 = load %struct.asn1_object_st*, %struct.asn1_object_st** %aoid, align 8, !tbaa !4
  %call = call i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef %3) #4
  %cmp.not = icmp eq i32 %call, 408
  br i1 %cmp.not, label %if.end, label %err

if.end:                                           ; preds = %entry
  %4 = load i32, i32* %atype, align 4, !tbaa !15
  switch i32 %4, label %if.else [
    i32 -1, label %if.then3
    i32 5, label %if.then3
  ]

if.then3:                                         ; preds = %if.end, %if.end
  %call4 = call %struct.evp_pkey_st* @EVP_PKEY_CTX_get0_pkey(%struct.evp_pkey_ctx_st* noundef %pctx) #4
  %cmp5 = icmp eq %struct.evp_pkey_st* %call4, null
  br i1 %cmp5, label %err, label %if.end7

if.end7:                                          ; preds = %if.then3
  %call8 = call %struct.evp_pkey_st* @EVP_PKEY_new() #4
  %cmp9 = icmp eq %struct.evp_pkey_st* %call8, null
  br i1 %cmp9, label %err, label %if.end11

if.end11:                                         ; preds = %if.end7
  %call12 = call i32 @EVP_PKEY_copy_parameters(%struct.evp_pkey_st* noundef nonnull %call8, %struct.evp_pkey_st* noundef nonnull %call4) #4
  %tobool.not = icmp eq i32 %call12, 0
  br i1 %tobool.not, label %err, label %if.end21

if.else:                                          ; preds = %if.end
  %5 = load i8*, i8** %aval, align 8, !tbaa !4
  %call15 = call %struct.ossl_lib_ctx_st* @EVP_PKEY_CTX_get0_libctx(%struct.evp_pkey_ctx_st* noundef %pctx) #4
  %call16 = call i8* @EVP_PKEY_CTX_get0_propq(%struct.evp_pkey_ctx_st* noundef %pctx) #4
  %call17 = call fastcc %struct.evp_pkey_st* @pkey_type2param(i32 noundef %4, i8* noundef %5, %struct.ossl_lib_ctx_st* noundef %call15, i8* noundef %call16) #3
  %cmp18 = icmp eq %struct.evp_pkey_st* %call17, null
  br i1 %cmp18, label %err, label %if.end21

if.end21:                                         ; preds = %if.end11, %if.else
  %pkpeer.1 = phi %struct.evp_pkey_st* [ %call17, %if.else ], [ %call8, %if.end11 ]
  %call22 = call i32 @ASN1_STRING_length(%struct.asn1_string_st* noundef %pubkey) #4
  %call23 = call i8* @ASN1_STRING_get0_data(%struct.asn1_string_st* noundef %pubkey) #4
  %cmp24 = icmp eq i8* %call23, null
  %cmp26 = icmp eq i32 %call22, 0
  %or.cond45 = select i1 %cmp24, i1 true, i1 %cmp26
  br i1 %or.cond45, label %err, label %if.end28

if.end28:                                         ; preds = %if.end21
  %conv = sext i32 %call22 to i64
  %call29 = call i32 @EVP_PKEY_set1_encoded_public_key(%struct.evp_pkey_st* noundef nonnull %pkpeer.1, i8* noundef nonnull %call23, i64 noundef %conv) #4
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %err, label %if.end32

if.end32:                                         ; preds = %if.end28
  %call33 = call i32 @EVP_PKEY_derive_set_peer(%struct.evp_pkey_ctx_st* noundef %pctx, %struct.evp_pkey_st* noundef nonnull %pkpeer.1) #4
  %cmp34 = icmp sgt i32 %call33, 0
  %spec.select = zext i1 %cmp34 to i32
  br label %err

err:                                              ; preds = %if.end11, %if.end7, %if.then3, %if.end32, %if.end28, %if.end21, %if.else, %entry
  %pkpeer.2 = phi %struct.evp_pkey_st* [ null, %entry ], [ %pkpeer.1, %if.end21 ], [ %pkpeer.1, %if.end28 ], [ null, %if.else ], [ %pkpeer.1, %if.end32 ], [ null, %if.end7 ], [ null, %if.then3 ], [ %call8, %if.end11 ]
  %rv.0 = phi i32 [ 0, %entry ], [ 0, %if.end21 ], [ 0, %if.end28 ], [ 0, %if.else ], [ %spec.select, %if.end32 ], [ 0, %if.end7 ], [ 0, %if.then3 ], [ 0, %if.end11 ]
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %pkpeer.2) #4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #5
  ret i32 %rv.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @ecdh_cms_set_shared_info(%struct.evp_pkey_ctx_st* noundef %pctx, %struct.CMS_RecipientInfo_st* noundef %ri) unnamed_addr #0 {
entry:
  %alg = alloca %struct.X509_algor_st*, align 8
  %ukm = alloca %struct.asn1_string_st*, align 8
  %p = alloca i8*, align 8
  %der = alloca i8*, align 8
  %name = alloca [50 x i8], align 16
  %0 = bitcast %struct.X509_algor_st** %alg to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #5
  %1 = bitcast %struct.asn1_string_st** %ukm to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #5
  %2 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #5
  %3 = bitcast i8** %der to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #5
  store i8* null, i8** %der, align 8, !tbaa !4
  %4 = getelementptr inbounds [50 x i8], [50 x i8]* %name, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 50, i8* nonnull %4) #5
  %call = call i32 @CMS_RecipientInfo_kari_get0_alg(%struct.CMS_RecipientInfo_st* noundef %ri, %struct.X509_algor_st** noundef nonnull %alg, %struct.asn1_string_st** noundef nonnull %ukm) #4
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %5 = load %struct.X509_algor_st*, %struct.X509_algor_st** %alg, align 8, !tbaa !4
  %algorithm = getelementptr inbounds %struct.X509_algor_st, %struct.X509_algor_st* %5, i64 0, i32 0
  %6 = load %struct.asn1_object_st*, %struct.asn1_object_st** %algorithm, align 8, !tbaa !12
  %call1 = call i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef %6) #4
  %call2 = call fastcc i32 @ecdh_cms_set_kdf_param(%struct.evp_pkey_ctx_st* noundef %pctx, i32 noundef %call1) #3
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  call void @ERR_new() #4
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 173, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.ecdh_cms_set_shared_info, i64 0, i64 0)) #4
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 46, i32 noundef 186, i8* noundef null) #4
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %7 = load %struct.X509_algor_st*, %struct.X509_algor_st** %alg, align 8, !tbaa !4
  %parameter = getelementptr inbounds %struct.X509_algor_st, %struct.X509_algor_st* %7, i64 0, i32 1
  %8 = load %struct.asn1_type_st*, %struct.asn1_type_st** %parameter, align 8, !tbaa !14
  %type = getelementptr inbounds %struct.asn1_type_st, %struct.asn1_type_st* %8, i64 0, i32 0
  %9 = load i32, i32* %type, align 8, !tbaa !18
  %cmp.not = icmp eq i32 %9, 16
  br i1 %cmp.not, label %if.end7, label %cleanup

if.end7:                                          ; preds = %if.end5
  %value = getelementptr inbounds %struct.asn1_type_st, %struct.asn1_type_st* %8, i64 0, i32 1
  %sequence = bitcast %union.anon.1* %value to %struct.asn1_string_st**
  %10 = load %struct.asn1_string_st*, %struct.asn1_string_st** %sequence, align 8, !tbaa !20
  %data = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %10, i64 0, i32 2
  %11 = load i8*, i8** %data, align 8, !tbaa !21
  store i8* %11, i8** %p, align 8, !tbaa !4
  %length = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %10, i64 0, i32 0
  %12 = load i32, i32* %length, align 8, !tbaa !22
  %conv = sext i32 %12 to i64
  %call12 = call %struct.X509_algor_st* @d2i_X509_ALGOR(%struct.X509_algor_st** noundef null, i8** noundef nonnull %p, i64 noundef %conv) #4
  %cmp13 = icmp eq %struct.X509_algor_st* %call12, null
  br i1 %cmp13, label %err, label %if.end16

if.end16:                                         ; preds = %if.end7
  %call17 = call %struct.evp_cipher_ctx_st* @CMS_RecipientInfo_kari_get0_ctx(%struct.CMS_RecipientInfo_st* noundef %ri) #4
  %cmp18 = icmp eq %struct.evp_cipher_ctx_st* %call17, null
  br i1 %cmp18, label %err, label %if.end21

if.end21:                                         ; preds = %if.end16
  %algorithm22 = getelementptr inbounds %struct.X509_algor_st, %struct.X509_algor_st* %call12, i64 0, i32 0
  %13 = load %struct.asn1_object_st*, %struct.asn1_object_st** %algorithm22, align 8, !tbaa !12
  %call23 = call i32 @OBJ_obj2txt(i8* noundef nonnull %4, i32 noundef 50, %struct.asn1_object_st* noundef %13, i32 noundef 0) #4
  %libctx = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %pctx, i64 0, i32 1
  %14 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !23
  %propquery = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %pctx, i64 0, i32 2
  %15 = load i8*, i8** %propquery, align 8, !tbaa !26
  %call25 = call %struct.evp_cipher_st* @EVP_CIPHER_fetch(%struct.ossl_lib_ctx_st* noundef %14, i8* noundef nonnull %4, i8* noundef %15) #4
  %cmp26 = icmp eq %struct.evp_cipher_st* %call25, null
  br i1 %cmp26, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end21
  %call28 = call i32 @EVP_CIPHER_get_mode(%struct.evp_cipher_st* noundef nonnull %call25) #4
  %cmp29.not = icmp eq i32 %call28, 65538
  br i1 %cmp29.not, label %if.end32, label %err

if.end32:                                         ; preds = %lor.lhs.false
  %call33 = call i32 @EVP_EncryptInit_ex(%struct.evp_cipher_ctx_st* noundef nonnull %call17, %struct.evp_cipher_st* noundef nonnull %call25, %struct.engine_st* noundef null, i8* noundef null, i8* noundef null) #4
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %err, label %if.end36

if.end36:                                         ; preds = %if.end32
  %parameter37 = getelementptr inbounds %struct.X509_algor_st, %struct.X509_algor_st* %call12, i64 0, i32 1
  %16 = load %struct.asn1_type_st*, %struct.asn1_type_st** %parameter37, align 8, !tbaa !14
  %call38 = call i32 @EVP_CIPHER_asn1_to_param(%struct.evp_cipher_ctx_st* noundef nonnull %call17, %struct.asn1_type_st* noundef %16) #4
  %cmp39 = icmp slt i32 %call38, 1
  br i1 %cmp39, label %err, label %if.end42

if.end42:                                         ; preds = %if.end36
  %call43 = call i32 @EVP_CIPHER_CTX_get_key_length(%struct.evp_cipher_ctx_st* noundef nonnull %call17) #4
  %call44 = call i32 @EVP_PKEY_CTX_set_ecdh_kdf_outlen(%struct.evp_pkey_ctx_st* noundef nonnull %pctx, i32 noundef %call43) #4
  %cmp45 = icmp slt i32 %call44, 1
  br i1 %cmp45, label %err, label %if.end48

if.end48:                                         ; preds = %if.end42
  %17 = load %struct.asn1_string_st*, %struct.asn1_string_st** %ukm, align 8, !tbaa !4
  %call49 = call i32 @CMS_SharedInfo_encode(i8** noundef nonnull %der, %struct.X509_algor_st* noundef nonnull %call12, %struct.asn1_string_st* noundef %17, i32 noundef %call43) #4
  %cmp50 = icmp slt i32 %call49, 1
  br i1 %cmp50, label %err, label %if.end53

if.end53:                                         ; preds = %if.end48
  %18 = load i8*, i8** %der, align 8, !tbaa !4
  %call54 = call i32 @EVP_PKEY_CTX_set0_ecdh_kdf_ukm(%struct.evp_pkey_ctx_st* noundef nonnull %pctx, i8* noundef %18, i32 noundef %call49) #4
  %cmp55 = icmp slt i32 %call54, 1
  br i1 %cmp55, label %err, label %if.end58

if.end58:                                         ; preds = %if.end53
  store i8* null, i8** %der, align 8, !tbaa !4
  br label %err

err:                                              ; preds = %if.end53, %if.end48, %if.end42, %if.end36, %if.end32, %if.end21, %lor.lhs.false, %if.end16, %if.end7, %if.end58
  %rv.0 = phi i32 [ 0, %if.end7 ], [ 0, %if.end16 ], [ 0, %if.end21 ], [ 0, %lor.lhs.false ], [ 0, %if.end36 ], [ 0, %if.end42 ], [ 0, %if.end48 ], [ 0, %if.end53 ], [ 1, %if.end58 ], [ 0, %if.end32 ]
  %kekcipher.0 = phi %struct.evp_cipher_st* [ null, %if.end7 ], [ null, %if.end16 ], [ null, %if.end21 ], [ %call25, %lor.lhs.false ], [ %call25, %if.end36 ], [ %call25, %if.end42 ], [ %call25, %if.end48 ], [ %call25, %if.end53 ], [ %call25, %if.end58 ], [ %call25, %if.end32 ]
  call void @EVP_CIPHER_free(%struct.evp_cipher_st* noundef %kekcipher.0) #4
  call void @X509_ALGOR_free(%struct.X509_algor_st* noundef %call12) #4
  %19 = load i8*, i8** %der, align 8, !tbaa !4
  call void @CRYPTO_free(i8* noundef %19, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 214) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %entry, %err, %if.then4
  %retval.0 = phi i32 [ %rv.0, %err ], [ 0, %if.then4 ], [ 0, %entry ], [ 0, %if.end5 ]
  call void @llvm.lifetime.end.p0i8(i64 50, i8* nonnull %4) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #5
  ret i32 %retval.0
}

declare void @X509_ALGOR_get0(%struct.asn1_object_st** noundef, i32* noundef, i8** noundef, %struct.X509_algor_st* noundef) local_unnamed_addr #1

declare %struct.evp_pkey_st* @EVP_PKEY_CTX_get0_pkey(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #1

declare %struct.evp_pkey_st* @EVP_PKEY_new() local_unnamed_addr #1

declare i32 @EVP_PKEY_copy_parameters(%struct.evp_pkey_st* noundef, %struct.evp_pkey_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.evp_pkey_st* @pkey_type2param(i32 noundef %ptype, i8* noundef %pval, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) unnamed_addr #0 {
entry:
  %pkey = alloca %struct.evp_pkey_st*, align 8
  %pm = alloca i8*, align 8
  %pmlen = alloca i64, align 8
  %groupname = alloca [50 x i8], align 16
  %0 = bitcast %struct.evp_pkey_st** %pkey to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #5
  store %struct.evp_pkey_st* null, %struct.evp_pkey_st** %pkey, align 8, !tbaa !4
  switch i32 %ptype, label %if.end37 [
    i32 16, label %if.then
    i32 6, label %if.then12
  ]

if.then:                                          ; preds = %entry
  %1 = bitcast i8** %pm to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #5
  %data = getelementptr inbounds i8, i8* %pval, i64 8
  %2 = bitcast i8* %data to i8**
  %3 = load i8*, i8** %2, align 8, !tbaa !21
  store i8* %3, i8** %pm, align 8, !tbaa !4
  %4 = bitcast i64* %pmlen to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #5
  %length = bitcast i8* %pval to i32*
  %5 = load i32, i32* %length, align 8, !tbaa !22
  %conv = sext i32 %5 to i64
  store i64 %conv, i64* %pmlen, align 8, !tbaa !27
  %call = call %struct.ossl_decoder_ctx_st* @OSSL_DECODER_CTX_new_for_pkey(%struct.evp_pkey_st** noundef nonnull %pkey, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* noundef null, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 noundef 132, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) #4
  %cmp1 = icmp eq %struct.ossl_decoder_ctx_st* %call, null
  br i1 %cmp1, label %cleanup.thread, label %if.end

if.end:                                           ; preds = %if.then
  %call4 = call i32 @OSSL_DECODER_from_data(%struct.ossl_decoder_ctx_st* noundef nonnull %call, i8** noundef nonnull %pm, i64* noundef nonnull %pmlen) #4
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.then5, label %cleanup

if.then5:                                         ; preds = %if.end
  call void @ERR_new() #4
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 37, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.pkey_type2param, i64 0, i64 0)) #4
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 46, i32 noundef 187, i8* noundef null) #4
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then5, %if.then
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #5
  br label %err

cleanup:                                          ; preds = %if.end
  call void @OSSL_DECODER_CTX_free(%struct.ossl_decoder_ctx_st* noundef nonnull %call) #4
  %6 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey, align 8, !tbaa !4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #5
  br label %cleanup39

if.then12:                                        ; preds = %entry
  %7 = bitcast i8* %pval to %struct.asn1_object_st*
  %8 = getelementptr inbounds [50 x i8], [50 x i8]* %groupname, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 50, i8* nonnull %8) #5
  %call13 = tail call %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_from_name(%struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* noundef %propq) #4
  %cmp14 = icmp eq %struct.evp_pkey_ctx_st* %call13, null
  br i1 %cmp14, label %cleanup34.thread, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then12
  %call16 = tail call i32 @EVP_PKEY_paramgen_init(%struct.evp_pkey_ctx_st* noundef nonnull %call13) #4
  %cmp17 = icmp slt i32 %call16, 1
  br i1 %cmp17, label %cleanup34.thread, label %if.end20

if.end20:                                         ; preds = %lor.lhs.false
  %call21 = call i32 @OBJ_obj2txt(i8* noundef nonnull %8, i32 noundef 50, %struct.asn1_object_st* noundef %7, i32 noundef 0) #4
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.then27, label %lor.lhs.false23

lor.lhs.false23:                                  ; preds = %if.end20
  %call25 = call i32 @EVP_PKEY_CTX_set_group_name(%struct.evp_pkey_ctx_st* noundef nonnull %call13, i8* noundef nonnull %8) #4
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.then27, label %if.end28

if.then27:                                        ; preds = %lor.lhs.false23, %if.end20
  call void @ERR_new() #4
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 52, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.pkey_type2param, i64 0, i64 0)) #4
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 46, i32 noundef 187, i8* noundef null) #4
  br label %cleanup34.thread

if.end28:                                         ; preds = %lor.lhs.false23
  %call29 = call i32 @EVP_PKEY_paramgen(%struct.evp_pkey_ctx_st* noundef nonnull %call13, %struct.evp_pkey_st** noundef nonnull %pkey) #4
  %cmp30 = icmp slt i32 %call29, 1
  br i1 %cmp30, label %cleanup34.thread, label %cleanup34

cleanup34.thread:                                 ; preds = %if.then27, %lor.lhs.false, %if.then12, %if.end28
  call void @llvm.lifetime.end.p0i8(i64 50, i8* nonnull %8) #5
  br label %err

cleanup34:                                        ; preds = %if.end28
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef nonnull %call13) #4
  %9 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey, align 8, !tbaa !4
  call void @llvm.lifetime.end.p0i8(i64 50, i8* nonnull %8) #5
  br label %cleanup39

if.end37:                                         ; preds = %entry
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 61, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.pkey_type2param, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 46, i32 noundef 187, i8* noundef null) #4
  br label %cleanup39

err:                                              ; preds = %cleanup34.thread, %cleanup.thread
  %ctx.0 = phi %struct.ossl_decoder_ctx_st* [ %call, %cleanup.thread ], [ null, %cleanup34.thread ]
  %pctx.0 = phi %struct.evp_pkey_ctx_st* [ null, %cleanup.thread ], [ %call13, %cleanup34.thread ]
  %10 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey, align 8, !tbaa !4
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %10) #4
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %pctx.0) #4
  call void @OSSL_DECODER_CTX_free(%struct.ossl_decoder_ctx_st* noundef %ctx.0) #4
  br label %cleanup39

cleanup39:                                        ; preds = %cleanup34, %cleanup, %err, %if.end37
  %retval.2 = phi %struct.evp_pkey_st* [ null, %err ], [ %6, %cleanup ], [ %9, %cleanup34 ], [ null, %if.end37 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #5
  ret %struct.evp_pkey_st* %retval.2
}

declare %struct.ossl_lib_ctx_st* @EVP_PKEY_CTX_get0_libctx(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #1

declare i8* @EVP_PKEY_CTX_get0_propq(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #1

declare i32 @ASN1_STRING_length(%struct.asn1_string_st* noundef) local_unnamed_addr #1

declare i8* @ASN1_STRING_get0_data(%struct.asn1_string_st* noundef) local_unnamed_addr #1

declare i32 @EVP_PKEY_set1_encoded_public_key(%struct.evp_pkey_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

declare i32 @EVP_PKEY_derive_set_peer(%struct.evp_pkey_ctx_st* noundef, %struct.evp_pkey_st* noundef) local_unnamed_addr #1

declare void @EVP_PKEY_free(%struct.evp_pkey_st* noundef) local_unnamed_addr #1

declare %struct.ossl_decoder_ctx_st* @OSSL_DECODER_CTX_new_for_pkey(%struct.evp_pkey_st** noundef, i8* noundef, i8* noundef, i8* noundef, i32 noundef, %struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #1

declare i32 @OSSL_DECODER_from_data(%struct.ossl_decoder_ctx_st* noundef, i8** noundef, i64* noundef) local_unnamed_addr #1

declare void @OSSL_DECODER_CTX_free(%struct.ossl_decoder_ctx_st* noundef) local_unnamed_addr #1

declare %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_from_name(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare i32 @EVP_PKEY_paramgen_init(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #1

declare i32 @OBJ_obj2txt(i8* noundef, i32 noundef, %struct.asn1_object_st* noundef, i32 noundef) local_unnamed_addr #1

declare i32 @EVP_PKEY_CTX_set_group_name(%struct.evp_pkey_ctx_st* noundef, i8* noundef) local_unnamed_addr #1

declare i32 @EVP_PKEY_paramgen(%struct.evp_pkey_ctx_st* noundef, %struct.evp_pkey_st** noundef) local_unnamed_addr #1

declare void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #1

declare i32 @CMS_RecipientInfo_kari_get0_alg(%struct.CMS_RecipientInfo_st* noundef, %struct.X509_algor_st** noundef, %struct.asn1_string_st** noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @ecdh_cms_set_kdf_param(%struct.evp_pkey_ctx_st* noundef %pctx, i32 noundef %eckdf_nid) unnamed_addr #0 {
entry:
  %kdf_nid = alloca i32, align 4
  %kdfmd_nid = alloca i32, align 4
  %0 = bitcast i32* %kdf_nid to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #5
  %1 = bitcast i32* %kdfmd_nid to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #5
  %cmp = icmp eq i32 %eckdf_nid, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = call i32 @OBJ_find_sigid_algs(i32 noundef %eckdf_nid, i32* noundef nonnull %kdfmd_nid, i32* noundef nonnull %kdf_nid) #4
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end2

if.end2:                                          ; preds = %if.end
  %2 = load i32, i32* %kdf_nid, align 4, !tbaa !15
  switch i32 %2, label %cleanup [
    i32 946, label %if.end9
    i32 947, label %if.then6
  ]

if.then6:                                         ; preds = %if.end2
  br label %if.end9

if.end9:                                          ; preds = %if.end2, %if.then6
  %cofactor.0 = phi i32 [ 1, %if.then6 ], [ 0, %if.end2 ]
  %call10 = call i32 @EVP_PKEY_CTX_set_ecdh_cofactor_mode(%struct.evp_pkey_ctx_st* noundef %pctx, i32 noundef %cofactor.0) #4
  %cmp11 = icmp slt i32 %call10, 1
  br i1 %cmp11, label %cleanup, label %if.end13

if.end13:                                         ; preds = %if.end9
  %call14 = call i32 @EVP_PKEY_CTX_set_ecdh_kdf_type(%struct.evp_pkey_ctx_st* noundef %pctx, i32 noundef 2) #4
  %cmp15 = icmp slt i32 %call14, 1
  br i1 %cmp15, label %cleanup, label %if.end17

if.end17:                                         ; preds = %if.end13
  %3 = load i32, i32* %kdfmd_nid, align 4, !tbaa !15
  %call18 = call i8* @OBJ_nid2sn(i32 noundef %3) #4
  %call19 = call %struct.evp_md_st* @EVP_get_digestbyname(i8* noundef %call18) #4
  %tobool20.not = icmp eq %struct.evp_md_st* %call19, null
  br i1 %tobool20.not, label %cleanup, label %if.end22

if.end22:                                         ; preds = %if.end17
  %call23 = call i32 @EVP_PKEY_CTX_set_ecdh_kdf_md(%struct.evp_pkey_ctx_st* noundef %pctx, %struct.evp_md_st* noundef nonnull %call19) #4
  %cmp24 = icmp sgt i32 %call23, 0
  %. = zext i1 %cmp24 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.end17, %if.end13, %if.end9, %if.end2, %if.end, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 0, %if.end ], [ 0, %if.end2 ], [ 0, %if.end9 ], [ 0, %if.end13 ], [ 0, %if.end17 ], [ %., %if.end22 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #5
  ret i32 %retval.0
}

declare %struct.X509_algor_st* @d2i_X509_ALGOR(%struct.X509_algor_st** noundef, i8** noundef, i64 noundef) local_unnamed_addr #1

declare %struct.evp_cipher_ctx_st* @CMS_RecipientInfo_kari_get0_ctx(%struct.CMS_RecipientInfo_st* noundef) local_unnamed_addr #1

declare %struct.evp_cipher_st* @EVP_CIPHER_fetch(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare i32 @EVP_CIPHER_get_mode(%struct.evp_cipher_st* noundef) local_unnamed_addr #1

declare i32 @EVP_EncryptInit_ex(%struct.evp_cipher_ctx_st* noundef, %struct.evp_cipher_st* noundef, %struct.engine_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare i32 @EVP_CIPHER_asn1_to_param(%struct.evp_cipher_ctx_st* noundef, %struct.asn1_type_st* noundef) local_unnamed_addr #1

declare i32 @EVP_CIPHER_CTX_get_key_length(%struct.evp_cipher_ctx_st* noundef) local_unnamed_addr #1

declare i32 @EVP_PKEY_CTX_set_ecdh_kdf_outlen(%struct.evp_pkey_ctx_st* noundef, i32 noundef) local_unnamed_addr #1

declare i32 @CMS_SharedInfo_encode(i8** noundef, %struct.X509_algor_st* noundef, %struct.asn1_string_st* noundef, i32 noundef) local_unnamed_addr #1

declare i32 @EVP_PKEY_CTX_set0_ecdh_kdf_ukm(%struct.evp_pkey_ctx_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare void @EVP_CIPHER_free(%struct.evp_cipher_st* noundef) local_unnamed_addr #1

declare void @X509_ALGOR_free(%struct.X509_algor_st* noundef) local_unnamed_addr #1

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare i32 @OBJ_find_sigid_algs(i32 noundef, i32* noundef, i32* noundef) local_unnamed_addr #1

declare i32 @EVP_PKEY_CTX_set_ecdh_cofactor_mode(%struct.evp_pkey_ctx_st* noundef, i32 noundef) local_unnamed_addr #1

declare i32 @EVP_PKEY_CTX_set_ecdh_kdf_type(%struct.evp_pkey_ctx_st* noundef, i32 noundef) local_unnamed_addr #1

declare %struct.evp_md_st* @EVP_get_digestbyname(i8* noundef) local_unnamed_addr #1

declare i8* @OBJ_nid2sn(i32 noundef) local_unnamed_addr #1

declare i32 @EVP_PKEY_CTX_set_ecdh_kdf_md(%struct.evp_pkey_ctx_st* noundef, %struct.evp_md_st* noundef) local_unnamed_addr #1

declare i64 @EVP_PKEY_get1_encoded_public_key(%struct.evp_pkey_st* noundef, i8** noundef) local_unnamed_addr #1

declare void @ASN1_STRING_set0(%struct.asn1_string_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare i32 @EVP_PKEY_CTX_get_ecdh_kdf_type(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #1

declare i32 @EVP_PKEY_CTX_get_ecdh_kdf_md(%struct.evp_pkey_ctx_st* noundef, %struct.evp_md_st** noundef) local_unnamed_addr #1

declare i32 @EVP_PKEY_CTX_get_ecdh_cofactor_mode(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #1

declare %struct.evp_md_st* @EVP_sha1() local_unnamed_addr #1

declare i32 @EVP_MD_get_type(%struct.evp_md_st* noundef) local_unnamed_addr #1

declare i32 @EVP_CIPHER_get_type(%struct.evp_cipher_st* noundef) local_unnamed_addr #1

declare %struct.evp_cipher_st* @EVP_CIPHER_CTX_get0_cipher(%struct.evp_cipher_ctx_st* noundef) local_unnamed_addr #1

declare %struct.X509_algor_st* @X509_ALGOR_new() local_unnamed_addr #1

declare %struct.asn1_type_st* @ASN1_TYPE_new() local_unnamed_addr #1

declare i32 @EVP_CIPHER_param_to_asn1(%struct.evp_cipher_ctx_st* noundef, %struct.asn1_type_st* noundef) local_unnamed_addr #1

declare i32 @ASN1_TYPE_get(%struct.asn1_type_st* noundef) local_unnamed_addr #1

declare void @ASN1_TYPE_free(%struct.asn1_type_st* noundef) local_unnamed_addr #1

declare i32 @i2d_X509_ALGOR(%struct.X509_algor_st* noundef, i8** noundef) local_unnamed_addr #1

declare %struct.asn1_string_st* @ASN1_STRING_new() local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { nobuiltin "no-builtins" }
attributes #4 = { nobuiltin nounwind "no-builtins" }
attributes #5 = { nounwind }

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
!8 = !{!9, !11, i64 16}
!9 = !{!"asn1_string_st", !10, i64 0, !10, i64 4, !5, i64 8, !11, i64 16}
!10 = !{!"int", !6, i64 0}
!11 = !{!"long", !6, i64 0}
!12 = !{!13, !5, i64 0}
!13 = !{!"X509_algor_st", !5, i64 0, !5, i64 8}
!14 = !{!13, !5, i64 8}
!15 = !{!10, !10, i64 0}
!16 = !{!17, !5, i64 64}
!17 = !{!"CMS_SignerInfo_st", !10, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !5, i64 40, !5, i64 48, !5, i64 56, !5, i64 64, !5, i64 72, !5, i64 80, !5, i64 88}
!18 = !{!19, !10, i64 0}
!19 = !{!"asn1_type_st", !10, i64 0, !6, i64 8}
!20 = !{!6, !6, i64 0}
!21 = !{!9, !5, i64 8}
!22 = !{!9, !10, i64 0}
!23 = !{!24, !5, i64 8}
!24 = !{!"evp_pkey_ctx_st", !10, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !6, i64 40, !25, i64 56, !5, i64 88, !5, i64 96, !5, i64 104, !10, i64 112, !10, i64 116, !5, i64 120, !5, i64 128, !5, i64 136, !5, i64 144, !5, i64 152, !10, i64 160, !5, i64 168}
!25 = !{!"", !5, i64 0, !5, i64 8, !11, i64 16, !10, i64 24}
!26 = !{!24, !5, i64 16}
!27 = !{!11, !11, i64 0}
