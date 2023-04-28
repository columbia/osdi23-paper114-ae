; ModuleID = 'crypto/cms/cms_dh.c'
source_filename = "crypto/cms/cms_dh.c"
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

@.str = private unnamed_addr constant [20 x i8] c"crypto/cms/cms_dh.c\00", align 1
@__func__.ossl_cms_dh_envelope = private unnamed_addr constant [21 x i8] c"ossl_cms_dh_envelope\00", align 1
@__func__.dh_cms_decrypt = private unnamed_addr constant [15 x i8] c"dh_cms_decrypt\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"DHX\00", align 1
@__func__.dh_cms_set_shared_info = private unnamed_addr constant [23 x i8] c"dh_cms_set_shared_info\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"pub\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_cms_dh_envelope(%struct.CMS_RecipientInfo_st* noundef %ri, i32 noundef %decrypt) local_unnamed_addr #0 {
entry:
  switch i32 %decrypt, label %if.end4 [
    i32 1, label %if.then
    i32 0, label %if.then2
  ]

if.then:                                          ; preds = %entry
  %call = tail call fastcc i32 @dh_cms_decrypt(%struct.CMS_RecipientInfo_st* noundef %ri) #3
  br label %return

if.then2:                                         ; preds = %entry
  %call3 = tail call fastcc i32 @dh_cms_encrypt(%struct.CMS_RecipientInfo_st* noundef %ri) #3
  br label %return

if.end4:                                          ; preds = %entry
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 341, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.ossl_cms_dh_envelope, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 46, i32 noundef 125, i8* noundef null) #4
  br label %return

return:                                           ; preds = %if.end4, %if.then2, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call3, %if.then2 ], [ 0, %if.end4 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @dh_cms_decrypt(%struct.CMS_RecipientInfo_st* noundef %ri) unnamed_addr #0 {
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
  %call11 = call fastcc i32 @dh_cms_set_peerkey(%struct.evp_pkey_ctx_st* noundef nonnull %call, %struct.X509_algor_st* noundef nonnull %2, %struct.asn1_string_st* noundef nonnull %3) #3
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.then13, label %cleanup

if.then13:                                        ; preds = %if.end10
  call void @ERR_new() #4
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 178, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.dh_cms_decrypt, i64 0, i64 0)) #4
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 46, i32 noundef 188, i8* noundef null) #4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #5
  br label %cleanup21

cleanup:                                          ; preds = %if.end10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #5
  br label %if.end16

if.end16:                                         ; preds = %cleanup, %if.end
  %call17 = call fastcc i32 @dh_cms_set_shared_info(%struct.evp_pkey_ctx_st* noundef nonnull %call, %struct.CMS_RecipientInfo_st* noundef %ri) #3
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.then19, label %cleanup21

if.then19:                                        ; preds = %if.end16
  call void @ERR_new() #4
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 184, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.dh_cms_decrypt, i64 0, i64 0)) #4
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
define internal fastcc i32 @dh_cms_encrypt(%struct.CMS_RecipientInfo_st* noundef %ri) unnamed_addr #0 {
entry:
  %talg = alloca %struct.X509_algor_st*, align 8
  %aoid = alloca %struct.asn1_object_st*, align 8
  %pubkey = alloca %struct.asn1_string_st*, align 8
  %ukm = alloca %struct.asn1_string_st*, align 8
  %penc = alloca i8*, align 8
  %kdf_md = alloca %struct.evp_md_st*, align 8
  %bn_pub_key = alloca %struct.bignum_st*, align 8
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
  %5 = bitcast %struct.evp_md_st** %kdf_md to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #5
  %call = tail call %struct.evp_pkey_ctx_st* @CMS_RecipientInfo_get0_pkey_ctx(%struct.CMS_RecipientInfo_st* noundef %ri) #4
  %cmp = icmp eq %struct.evp_pkey_ctx_st* %call, null
  br i1 %cmp, label %cleanup124, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call %struct.evp_pkey_st* @EVP_PKEY_CTX_get0_pkey(%struct.evp_pkey_ctx_st* noundef nonnull %call) #4
  %call2 = call i32 @CMS_RecipientInfo_kari_get0_orig_id(%struct.CMS_RecipientInfo_st* noundef %ri, %struct.X509_algor_st** noundef nonnull %talg, %struct.asn1_string_st** noundef nonnull %pubkey, %struct.asn1_string_st** noundef null, %struct.X509_name_st** noundef null, %struct.asn1_string_st** noundef null) #4
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %err, label %if.end4

if.end4:                                          ; preds = %if.end
  %6 = load %struct.X509_algor_st*, %struct.X509_algor_st** %talg, align 8, !tbaa !4
  call void @X509_ALGOR_get0(%struct.asn1_object_st** noundef nonnull %aoid, i32* noundef null, i8** noundef null, %struct.X509_algor_st* noundef %6) #4
  %7 = load %struct.asn1_object_st*, %struct.asn1_object_st** %aoid, align 8, !tbaa !4
  %call5 = call %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef 0) #4
  %cmp6 = icmp eq %struct.asn1_object_st* %7, %call5
  br i1 %cmp6, label %if.then7, label %if.end24

if.then7:                                         ; preds = %if.end4
  %8 = bitcast %struct.bignum_st** %bn_pub_key to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #5
  store %struct.bignum_st* null, %struct.bignum_st** %bn_pub_key, align 8, !tbaa !4
  %call8 = call i32 @EVP_PKEY_get_bn_param(%struct.evp_pkey_st* noundef %call1, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), %struct.bignum_st** noundef nonnull %bn_pub_key) #4
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %cleanup.thread, label %if.end11

if.end11:                                         ; preds = %if.then7
  %9 = load %struct.bignum_st*, %struct.bignum_st** %bn_pub_key, align 8, !tbaa !4
  %call12 = call %struct.asn1_string_st* @BN_to_ASN1_INTEGER(%struct.bignum_st* noundef %9, %struct.asn1_string_st* noundef null) #4
  %10 = load %struct.bignum_st*, %struct.bignum_st** %bn_pub_key, align 8, !tbaa !4
  call void @BN_free(%struct.bignum_st* noundef %10) #4
  %cmp13 = icmp eq %struct.asn1_string_st* %call12, null
  br i1 %cmp13, label %cleanup.thread, label %if.end15

if.end15:                                         ; preds = %if.end11
  %call16 = call i32 @i2d_ASN1_INTEGER(%struct.asn1_string_st* noundef nonnull %call12, i8** noundef nonnull %penc) #4
  call void @ASN1_INTEGER_free(%struct.asn1_string_st* noundef nonnull %call12) #4
  %cmp17 = icmp slt i32 %call16, 1
  br i1 %cmp17, label %cleanup.thread, label %cleanup

cleanup.thread:                                   ; preds = %if.then7, %if.end11, %if.end15
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #5
  br label %err

cleanup:                                          ; preds = %if.end15
  %11 = load %struct.asn1_string_st*, %struct.asn1_string_st** %pubkey, align 8, !tbaa !4
  %12 = load i8*, i8** %penc, align 8, !tbaa !4
  call void @ASN1_STRING_set0(%struct.asn1_string_st* noundef %11, i8* noundef %12, i32 noundef %call16) #4
  %13 = load %struct.asn1_string_st*, %struct.asn1_string_st** %pubkey, align 8, !tbaa !4
  %flags = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %13, i64 0, i32 3
  %14 = load i64, i64* %flags, align 8, !tbaa !8
  %and = and i64 %14, -16
  %or = or i64 %and, 8
  store i64 %or, i64* %flags, align 8, !tbaa !8
  store i8* null, i8** %penc, align 8, !tbaa !4
  %15 = load %struct.X509_algor_st*, %struct.X509_algor_st** %talg, align 8, !tbaa !4
  %call21 = call %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef 920) #4
  %call22 = call i32 @X509_ALGOR_set0(%struct.X509_algor_st* noundef %15, %struct.asn1_object_st* noundef %call21, i32 noundef -1, i8* noundef null) #4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #5
  br label %if.end24

if.end24:                                         ; preds = %cleanup, %if.end4
  %call25 = call i32 @EVP_PKEY_CTX_get_dh_kdf_type(%struct.evp_pkey_ctx_st* noundef nonnull %call) #4
  %cmp26 = icmp slt i32 %call25, 1
  br i1 %cmp26, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end24
  %call27 = call i32 @EVP_PKEY_CTX_get_dh_kdf_md(%struct.evp_pkey_ctx_st* noundef nonnull %call, %struct.evp_md_st** noundef nonnull %kdf_md) #4
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %err, label %if.end30

if.end30:                                         ; preds = %lor.lhs.false
  switch i32 %call25, label %err [
    i32 1, label %if.then32
    i32 2, label %if.end40
  ]

if.then32:                                        ; preds = %if.end30
  %call33 = call i32 @EVP_PKEY_CTX_set_dh_kdf_type(%struct.evp_pkey_ctx_st* noundef nonnull %call, i32 noundef 2) #4
  %cmp34 = icmp slt i32 %call33, 1
  br i1 %cmp34, label %err, label %if.end40

if.end40:                                         ; preds = %if.end30, %if.then32
  %16 = load %struct.evp_md_st*, %struct.evp_md_st** %kdf_md, align 8, !tbaa !4
  %cmp41 = icmp eq %struct.evp_md_st* %16, null
  br i1 %cmp41, label %if.then42, label %if.else48

if.then42:                                        ; preds = %if.end40
  %call43 = call %struct.evp_md_st* @EVP_sha1() #4
  store %struct.evp_md_st* %call43, %struct.evp_md_st** %kdf_md, align 8, !tbaa !4
  %call44 = call i32 @EVP_PKEY_CTX_set_dh_kdf_md(%struct.evp_pkey_ctx_st* noundef nonnull %call, %struct.evp_md_st* noundef %call43) #4
  %cmp45 = icmp slt i32 %call44, 1
  br i1 %cmp45, label %err, label %if.end53

if.else48:                                        ; preds = %if.end40
  %call49 = call i32 @EVP_MD_get_type(%struct.evp_md_st* noundef nonnull %16) #4
  %cmp50.not = icmp eq i32 %call49, 64
  br i1 %cmp50.not, label %if.end53, label %err

if.end53:                                         ; preds = %if.else48, %if.then42
  %call54 = call i32 @CMS_RecipientInfo_kari_get0_alg(%struct.CMS_RecipientInfo_st* noundef %ri, %struct.X509_algor_st** noundef nonnull %talg, %struct.asn1_string_st** noundef nonnull %ukm) #4
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %err, label %if.end57

if.end57:                                         ; preds = %if.end53
  %call58 = call %struct.evp_cipher_ctx_st* @CMS_RecipientInfo_kari_get0_ctx(%struct.CMS_RecipientInfo_st* noundef %ri) #4
  %call59 = call %struct.evp_cipher_st* @EVP_CIPHER_CTX_get0_cipher(%struct.evp_cipher_ctx_st* noundef %call58) #4
  %call60 = call i32 @EVP_CIPHER_get_type(%struct.evp_cipher_st* noundef %call59) #4
  %call61 = call %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef %call60) #4
  %call62 = call i32 @EVP_PKEY_CTX_set0_dh_kdf_oid(%struct.evp_pkey_ctx_st* noundef nonnull %call, %struct.asn1_object_st* noundef %call61) #4
  %cmp63 = icmp slt i32 %call62, 1
  br i1 %cmp63, label %err, label %if.end65

if.end65:                                         ; preds = %if.end57
  %call66 = call i32 @EVP_CIPHER_CTX_get_key_length(%struct.evp_cipher_ctx_st* noundef %call58) #4
  %call67 = call %struct.X509_algor_st* @X509_ALGOR_new() #4
  %cmp68 = icmp eq %struct.X509_algor_st* %call67, null
  br i1 %cmp68, label %err, label %if.end70

if.end70:                                         ; preds = %if.end65
  %call71 = call %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef %call60) #4
  %algorithm = getelementptr inbounds %struct.X509_algor_st, %struct.X509_algor_st* %call67, i64 0, i32 0
  store %struct.asn1_object_st* %call71, %struct.asn1_object_st** %algorithm, align 8, !tbaa !12
  %call72 = call %struct.asn1_type_st* @ASN1_TYPE_new() #4
  %parameter = getelementptr inbounds %struct.X509_algor_st, %struct.X509_algor_st* %call67, i64 0, i32 1
  store %struct.asn1_type_st* %call72, %struct.asn1_type_st** %parameter, align 8, !tbaa !14
  %cmp74 = icmp eq %struct.asn1_type_st* %call72, null
  br i1 %cmp74, label %err, label %if.end76

if.end76:                                         ; preds = %if.end70
  %call78 = call i32 @EVP_CIPHER_param_to_asn1(%struct.evp_cipher_ctx_st* noundef %call58, %struct.asn1_type_st* noundef nonnull %call72) #4
  %cmp79 = icmp slt i32 %call78, 1
  br i1 %cmp79, label %err, label %if.end81

if.end81:                                         ; preds = %if.end76
  %17 = load %struct.asn1_type_st*, %struct.asn1_type_st** %parameter, align 8, !tbaa !14
  %call83 = call i32 @ASN1_TYPE_get(%struct.asn1_type_st* noundef %17) #4
  %cmp84 = icmp eq i32 %call83, 0
  br i1 %cmp84, label %if.then85, label %if.end88

if.then85:                                        ; preds = %if.end81
  %18 = load %struct.asn1_type_st*, %struct.asn1_type_st** %parameter, align 8, !tbaa !14
  call void @ASN1_TYPE_free(%struct.asn1_type_st* noundef %18) #4
  store %struct.asn1_type_st* null, %struct.asn1_type_st** %parameter, align 8, !tbaa !14
  br label %if.end88

if.end88:                                         ; preds = %if.then85, %if.end81
  %call89 = call i32 @EVP_PKEY_CTX_set_dh_kdf_outlen(%struct.evp_pkey_ctx_st* noundef nonnull %call, i32 noundef %call66) #4
  %cmp90 = icmp slt i32 %call89, 1
  br i1 %cmp90, label %err, label %if.end92

if.end92:                                         ; preds = %if.end88
  %19 = load %struct.asn1_string_st*, %struct.asn1_string_st** %ukm, align 8, !tbaa !4
  %cmp93.not = icmp eq %struct.asn1_string_st* %19, null
  br i1 %cmp93.not, label %if.end102, label %if.then94

if.then94:                                        ; preds = %if.end92
  %call95 = call i32 @ASN1_STRING_length(%struct.asn1_string_st* noundef nonnull %19) #4
  %conv = sext i32 %call95 to i64
  %20 = load %struct.asn1_string_st*, %struct.asn1_string_st** %ukm, align 8, !tbaa !4
  %call96 = call i8* @ASN1_STRING_get0_data(%struct.asn1_string_st* noundef %20) #4
  %call97 = call i8* @CRYPTO_memdup(i8* noundef %call96, i64 noundef %conv, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 297) #4
  %cmp98 = icmp eq i8* %call97, null
  br i1 %cmp98, label %err, label %if.end102

if.end102:                                        ; preds = %if.then94, %if.end92
  %dukm.0 = phi i8* [ %call97, %if.then94 ], [ null, %if.end92 ]
  %dukmlen.0 = phi i32 [ %call95, %if.then94 ], [ 0, %if.end92 ]
  %call104 = call i32 @EVP_PKEY_CTX_set0_dh_kdf_ukm(%struct.evp_pkey_ctx_st* noundef nonnull %call, i8* noundef %dukm.0, i32 noundef %dukmlen.0) #4
  %cmp105 = icmp slt i32 %call104, 1
  br i1 %cmp105, label %err, label %if.end108

if.end108:                                        ; preds = %if.end102
  store i8* null, i8** %penc, align 8, !tbaa !4
  %call109 = call i32 @i2d_X509_ALGOR(%struct.X509_algor_st* noundef nonnull %call67, i8** noundef nonnull %penc) #4
  %21 = load i8*, i8** %penc, align 8, !tbaa !4
  %cmp110 = icmp eq i8* %21, null
  %cmp113 = icmp eq i32 %call109, 0
  %or.cond = select i1 %cmp110, i1 true, i1 %cmp113
  br i1 %or.cond, label %err, label %if.end116

if.end116:                                        ; preds = %if.end108
  %call117 = call %struct.asn1_string_st* @ASN1_STRING_new() #4
  %cmp118 = icmp eq %struct.asn1_string_st* %call117, null
  br i1 %cmp118, label %err, label %if.end121

if.end121:                                        ; preds = %if.end116
  %22 = load i8*, i8** %penc, align 8, !tbaa !4
  call void @ASN1_STRING_set0(%struct.asn1_string_st* noundef nonnull %call117, i8* noundef %22, i32 noundef %call109) #4
  store i8* null, i8** %penc, align 8, !tbaa !4
  %23 = load %struct.X509_algor_st*, %struct.X509_algor_st** %talg, align 8, !tbaa !4
  %call122 = call %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef 245) #4
  %24 = bitcast %struct.asn1_string_st* %call117 to i8*
  %call123 = call i32 @X509_ALGOR_set0(%struct.X509_algor_st* noundef %23, %struct.asn1_object_st* noundef %call122, i32 noundef 16, i8* noundef nonnull %24) #4
  br label %err

err:                                              ; preds = %cleanup.thread, %if.end30, %if.end116, %if.end108, %if.end102, %if.then94, %if.end88, %if.end76, %if.end70, %if.end65, %if.end57, %if.end53, %if.else48, %if.then42, %if.then32, %if.end24, %lor.lhs.false, %if.end, %if.end121
  %dukm.1 = phi i8* [ null, %if.end24 ], [ null, %if.then32 ], [ null, %if.then42 ], [ null, %if.end57 ], [ null, %if.end65 ], [ null, %if.end70 ], [ null, %if.end76 ], [ null, %if.end88 ], [ null, %if.then94 ], [ %dukm.0, %if.end102 ], [ null, %if.end108 ], [ null, %if.end116 ], [ null, %if.end121 ], [ null, %if.end53 ], [ null, %if.else48 ], [ null, %lor.lhs.false ], [ null, %if.end ], [ null, %if.end30 ], [ null, %cleanup.thread ]
  %rv.0 = phi i32 [ 0, %if.end24 ], [ 0, %if.then32 ], [ 0, %if.then42 ], [ 0, %if.end57 ], [ 0, %if.end65 ], [ 0, %if.end70 ], [ 0, %if.end76 ], [ 0, %if.end88 ], [ 0, %if.then94 ], [ 0, %if.end102 ], [ 0, %if.end108 ], [ 0, %if.end116 ], [ 1, %if.end121 ], [ 0, %if.end53 ], [ 0, %if.else48 ], [ 0, %lor.lhs.false ], [ 0, %if.end ], [ 0, %if.end30 ], [ 0, %cleanup.thread ]
  %wrap_alg.0 = phi %struct.X509_algor_st* [ null, %if.end24 ], [ null, %if.then32 ], [ null, %if.then42 ], [ null, %if.end57 ], [ null, %if.end65 ], [ %call67, %if.end70 ], [ %call67, %if.end76 ], [ %call67, %if.end88 ], [ %call67, %if.then94 ], [ %call67, %if.end102 ], [ %call67, %if.end108 ], [ %call67, %if.end116 ], [ %call67, %if.end121 ], [ null, %if.end53 ], [ null, %if.else48 ], [ null, %lor.lhs.false ], [ null, %if.end ], [ null, %if.end30 ], [ null, %cleanup.thread ]
  %25 = load i8*, i8** %penc, align 8, !tbaa !4
  call void @CRYPTO_free(i8* noundef %25, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 325) #4
  call void @X509_ALGOR_free(%struct.X509_algor_st* noundef %wrap_alg.0) #4
  call void @CRYPTO_free(i8* noundef %dukm.1, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 327) #4
  br label %cleanup124

cleanup124:                                       ; preds = %entry, %err
  %retval.0 = phi i32 [ %rv.0, %err ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #5
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

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare %struct.evp_pkey_ctx_st* @CMS_RecipientInfo_get0_pkey_ctx(%struct.CMS_RecipientInfo_st* noundef) local_unnamed_addr #1

declare %struct.evp_pkey_st* @EVP_PKEY_CTX_get0_peerkey(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #1

declare i32 @CMS_RecipientInfo_kari_get0_orig_id(%struct.CMS_RecipientInfo_st* noundef, %struct.X509_algor_st** noundef, %struct.asn1_string_st** noundef, %struct.asn1_string_st** noundef, %struct.X509_name_st** noundef, %struct.asn1_string_st** noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @dh_cms_set_peerkey(%struct.evp_pkey_ctx_st* noundef %pctx, %struct.X509_algor_st* noundef %alg, %struct.asn1_string_st* noundef %pubkey) unnamed_addr #0 {
entry:
  %aoid = alloca %struct.asn1_object_st*, align 8
  %atype = alloca i32, align 4
  %aval = alloca i8*, align 8
  %p = alloca i8*, align 8
  %0 = bitcast %struct.asn1_object_st** %aoid to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #5
  %1 = bitcast i32* %atype to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #5
  %2 = bitcast i8** %aval to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #5
  %3 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #5
  call void @X509_ALGOR_get0(%struct.asn1_object_st** noundef nonnull %aoid, i32* noundef nonnull %atype, i8** noundef nonnull %aval, %struct.X509_algor_st* noundef %alg) #4
  %4 = load %struct.asn1_object_st*, %struct.asn1_object_st** %aoid, align 8, !tbaa !4
  %call = call i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef %4) #4
  %cmp.not = icmp ne i32 %call, 920
  %5 = load i32, i32* %atype, align 4
  %cmp2 = icmp eq i32 %5, 5
  %or.cond = select i1 %cmp.not, i1 true, i1 %cmp2
  br i1 %or.cond, label %err, label %if.end4

if.end4:                                          ; preds = %entry
  %call5 = call %struct.evp_pkey_st* @EVP_PKEY_CTX_get0_pkey(%struct.evp_pkey_ctx_st* noundef %pctx) #4
  %cmp6 = icmp eq %struct.evp_pkey_st* %call5, null
  br i1 %cmp6, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end4
  %call7 = call i32 @EVP_PKEY_is_a(%struct.evp_pkey_st* noundef nonnull %call5, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0)) #4
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %err, label %if.end9

if.end9:                                          ; preds = %lor.lhs.false
  %call10 = call i32 @ASN1_STRING_length(%struct.asn1_string_st* noundef %pubkey) #4
  %call11 = call i8* @ASN1_STRING_get0_data(%struct.asn1_string_st* noundef %pubkey) #4
  store i8* %call11, i8** %p, align 8, !tbaa !4
  %cmp12 = icmp eq i8* %call11, null
  %cmp14 = icmp eq i32 %call10, 0
  %or.cond56 = select i1 %cmp12, i1 true, i1 %cmp14
  br i1 %or.cond56, label %err, label %if.end16

if.end16:                                         ; preds = %if.end9
  %conv = sext i32 %call10 to i64
  %call17 = call %struct.asn1_string_st* @d2i_ASN1_INTEGER(%struct.asn1_string_st** noundef null, i8** noundef nonnull %p, i64 noundef %conv) #4
  %cmp18 = icmp eq %struct.asn1_string_st* %call17, null
  br i1 %cmp18, label %err, label %if.end21

if.end21:                                         ; preds = %if.end16
  %call22 = call i32 @EVP_PKEY_get_size(%struct.evp_pkey_st* noundef nonnull %call5) #4
  %call23 = call %struct.bignum_st* @ASN1_INTEGER_to_BN(%struct.asn1_string_st* noundef nonnull %call17, %struct.bignum_st* noundef null) #4
  %cmp24 = icmp eq %struct.bignum_st* %call23, null
  br i1 %cmp24, label %err, label %if.end27

if.end27:                                         ; preds = %if.end21
  %conv28 = sext i32 %call22 to i64
  %call29 = call i8* @CRYPTO_malloc(i64 noundef %conv28, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 59) #4
  %cmp30 = icmp eq i8* %call29, null
  br i1 %cmp30, label %err, label %if.end33

if.end33:                                         ; preds = %if.end27
  %call34 = call i32 @BN_bn2binpad(%struct.bignum_st* noundef nonnull %call23, i8* noundef nonnull %call29, i32 noundef %call22) #4
  %cmp35 = icmp slt i32 %call34, 0
  br i1 %cmp35, label %err, label %if.end38

if.end38:                                         ; preds = %if.end33
  %call39 = call %struct.evp_pkey_st* @EVP_PKEY_new() #4
  %cmp40 = icmp eq %struct.evp_pkey_st* %call39, null
  br i1 %cmp40, label %err, label %lor.lhs.false42

lor.lhs.false42:                                  ; preds = %if.end38
  %call43 = call i32 @EVP_PKEY_copy_parameters(%struct.evp_pkey_st* noundef nonnull %call39, %struct.evp_pkey_st* noundef nonnull %call5) #4
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %err, label %lor.lhs.false45

lor.lhs.false45:                                  ; preds = %lor.lhs.false42
  %call47 = call i32 @EVP_PKEY_set1_encoded_public_key(%struct.evp_pkey_st* noundef nonnull %call39, i8* noundef nonnull %call29, i64 noundef %conv28) #4
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %err, label %if.end50

if.end50:                                         ; preds = %lor.lhs.false45
  %call51 = call i32 @EVP_PKEY_derive_set_peer(%struct.evp_pkey_ctx_st* noundef %pctx, %struct.evp_pkey_st* noundef nonnull %call39) #4
  %cmp52 = icmp sgt i32 %call51, 0
  %spec.select = zext i1 %cmp52 to i32
  br label %err

err:                                              ; preds = %if.end50, %if.end38, %lor.lhs.false42, %lor.lhs.false45, %if.end33, %if.end27, %if.end21, %if.end16, %if.end9, %if.end4, %lor.lhs.false, %entry
  %public_key.0 = phi %struct.asn1_string_st* [ null, %entry ], [ null, %if.end4 ], [ null, %if.end9 ], [ null, %if.end16 ], [ %call17, %if.end21 ], [ %call17, %if.end27 ], [ %call17, %if.end33 ], [ %call17, %if.end38 ], [ %call17, %lor.lhs.false45 ], [ %call17, %lor.lhs.false42 ], [ null, %lor.lhs.false ], [ %call17, %if.end50 ]
  %rv.0 = phi i32 [ 0, %entry ], [ 0, %if.end4 ], [ 0, %if.end9 ], [ 0, %if.end16 ], [ 0, %if.end21 ], [ 0, %if.end27 ], [ 0, %if.end33 ], [ 0, %if.end38 ], [ 0, %lor.lhs.false45 ], [ 0, %lor.lhs.false42 ], [ 0, %lor.lhs.false ], [ %spec.select, %if.end50 ]
  %pkpeer.0 = phi %struct.evp_pkey_st* [ null, %entry ], [ null, %if.end4 ], [ null, %if.end9 ], [ null, %if.end16 ], [ null, %if.end21 ], [ null, %if.end27 ], [ null, %if.end33 ], [ null, %if.end38 ], [ %call39, %lor.lhs.false45 ], [ %call39, %lor.lhs.false42 ], [ null, %lor.lhs.false ], [ %call39, %if.end50 ]
  %bnpub.0 = phi %struct.bignum_st* [ null, %entry ], [ null, %if.end4 ], [ null, %if.end9 ], [ null, %if.end16 ], [ null, %if.end21 ], [ %call23, %if.end27 ], [ %call23, %if.end33 ], [ %call23, %if.end38 ], [ %call23, %lor.lhs.false45 ], [ %call23, %lor.lhs.false42 ], [ null, %lor.lhs.false ], [ %call23, %if.end50 ]
  %buf.0 = phi i8* [ null, %entry ], [ null, %if.end4 ], [ null, %if.end9 ], [ null, %if.end16 ], [ null, %if.end21 ], [ null, %if.end27 ], [ %call29, %if.end33 ], [ %call29, %if.end38 ], [ %call29, %lor.lhs.false45 ], [ %call29, %lor.lhs.false42 ], [ null, %lor.lhs.false ], [ %call29, %if.end50 ]
  call void @ASN1_INTEGER_free(%struct.asn1_string_st* noundef %public_key.0) #4
  call void @BN_free(%struct.bignum_st* noundef %bnpub.0) #4
  call void @CRYPTO_free(i8* noundef %buf.0, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 75) #4
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %pkpeer.0) #4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #5
  ret i32 %rv.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @dh_cms_set_shared_info(%struct.evp_pkey_ctx_st* noundef %pctx, %struct.CMS_RecipientInfo_st* noundef %ri) unnamed_addr #0 {
entry:
  %alg = alloca %struct.X509_algor_st*, align 8
  %ukm = alloca %struct.asn1_string_st*, align 8
  %p = alloca i8*, align 8
  %name = alloca [50 x i8], align 16
  %0 = bitcast %struct.X509_algor_st** %alg to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #5
  %1 = bitcast %struct.asn1_string_st** %ukm to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #5
  %2 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #5
  %3 = getelementptr inbounds [50 x i8], [50 x i8]* %name, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 50, i8* nonnull %3) #5
  %call = call i32 @CMS_RecipientInfo_kari_get0_alg(%struct.CMS_RecipientInfo_st* noundef %ri, %struct.X509_algor_st** noundef nonnull %alg, %struct.asn1_string_st** noundef nonnull %ukm) #4
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %err, label %if.end

if.end:                                           ; preds = %entry
  %4 = load %struct.X509_algor_st*, %struct.X509_algor_st** %alg, align 8, !tbaa !4
  %algorithm = getelementptr inbounds %struct.X509_algor_st, %struct.X509_algor_st* %4, i64 0, i32 0
  %5 = load %struct.asn1_object_st*, %struct.asn1_object_st** %algorithm, align 8, !tbaa !12
  %call1 = call i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef %5) #4
  %cmp.not = icmp eq i32 %call1, 245
  br i1 %cmp.not, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @ERR_new() #4
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 101, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.dh_cms_set_shared_info, i64 0, i64 0)) #4
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 46, i32 noundef 186, i8* noundef null) #4
  br label %err

if.end3:                                          ; preds = %if.end
  %call4 = call i32 @EVP_PKEY_CTX_set_dh_kdf_type(%struct.evp_pkey_ctx_st* noundef %pctx, i32 noundef 2) #4
  %cmp5 = icmp slt i32 %call4, 1
  br i1 %cmp5, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end3
  %call6 = call %struct.evp_md_st* @EVP_sha1() #4
  %call7 = call i32 @EVP_PKEY_CTX_set_dh_kdf_md(%struct.evp_pkey_ctx_st* noundef %pctx, %struct.evp_md_st* noundef %call6) #4
  %cmp8 = icmp slt i32 %call7, 1
  br i1 %cmp8, label %err, label %if.end10

if.end10:                                         ; preds = %lor.lhs.false
  %6 = load %struct.X509_algor_st*, %struct.X509_algor_st** %alg, align 8, !tbaa !4
  %parameter = getelementptr inbounds %struct.X509_algor_st, %struct.X509_algor_st* %6, i64 0, i32 1
  %7 = load %struct.asn1_type_st*, %struct.asn1_type_st** %parameter, align 8, !tbaa !14
  %type = getelementptr inbounds %struct.asn1_type_st, %struct.asn1_type_st* %7, i64 0, i32 0
  %8 = load i32, i32* %type, align 8, !tbaa !15
  %cmp11.not = icmp eq i32 %8, 16
  br i1 %cmp11.not, label %if.end13, label %err

if.end13:                                         ; preds = %if.end10
  %value = getelementptr inbounds %struct.asn1_type_st, %struct.asn1_type_st* %7, i64 0, i32 1
  %sequence = bitcast %union.anon.1* %value to %struct.asn1_string_st**
  %9 = load %struct.asn1_string_st*, %struct.asn1_string_st** %sequence, align 8, !tbaa !17
  %data = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %9, i64 0, i32 2
  %10 = load i8*, i8** %data, align 8, !tbaa !18
  store i8* %10, i8** %p, align 8, !tbaa !4
  %length = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %9, i64 0, i32 0
  %11 = load i32, i32* %length, align 8, !tbaa !19
  %conv = sext i32 %11 to i64
  %call18 = call %struct.X509_algor_st* @d2i_X509_ALGOR(%struct.X509_algor_st** noundef null, i8** noundef nonnull %p, i64 noundef %conv) #4
  %cmp19 = icmp eq %struct.X509_algor_st* %call18, null
  br i1 %cmp19, label %err, label %if.end22

if.end22:                                         ; preds = %if.end13
  %call23 = call %struct.evp_cipher_ctx_st* @CMS_RecipientInfo_kari_get0_ctx(%struct.CMS_RecipientInfo_st* noundef %ri) #4
  %cmp24 = icmp eq %struct.evp_cipher_ctx_st* %call23, null
  br i1 %cmp24, label %err, label %if.end27

if.end27:                                         ; preds = %if.end22
  %algorithm28 = getelementptr inbounds %struct.X509_algor_st, %struct.X509_algor_st* %call18, i64 0, i32 0
  %12 = load %struct.asn1_object_st*, %struct.asn1_object_st** %algorithm28, align 8, !tbaa !12
  %call29 = call i32 @OBJ_obj2txt(i8* noundef nonnull %3, i32 noundef 50, %struct.asn1_object_st* noundef %12, i32 noundef 0) #4
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %err, label %if.end32

if.end32:                                         ; preds = %if.end27
  %libctx = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %pctx, i64 0, i32 1
  %13 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !20
  %propquery = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %pctx, i64 0, i32 2
  %14 = load i8*, i8** %propquery, align 8, !tbaa !23
  %call34 = call %struct.evp_cipher_st* @EVP_CIPHER_fetch(%struct.ossl_lib_ctx_st* noundef %13, i8* noundef nonnull %3, i8* noundef %14) #4
  %cmp35 = icmp eq %struct.evp_cipher_st* %call34, null
  br i1 %cmp35, label %err, label %lor.lhs.false37

lor.lhs.false37:                                  ; preds = %if.end32
  %call38 = call i32 @EVP_CIPHER_get_mode(%struct.evp_cipher_st* noundef nonnull %call34) #4
  %cmp39.not = icmp eq i32 %call38, 65538
  br i1 %cmp39.not, label %if.end42, label %err

if.end42:                                         ; preds = %lor.lhs.false37
  %call43 = call i32 @EVP_EncryptInit_ex(%struct.evp_cipher_ctx_st* noundef nonnull %call23, %struct.evp_cipher_st* noundef nonnull %call34, %struct.engine_st* noundef null, i8* noundef null, i8* noundef null) #4
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %err, label %if.end46

if.end46:                                         ; preds = %if.end42
  %parameter47 = getelementptr inbounds %struct.X509_algor_st, %struct.X509_algor_st* %call18, i64 0, i32 1
  %15 = load %struct.asn1_type_st*, %struct.asn1_type_st** %parameter47, align 8, !tbaa !14
  %call48 = call i32 @EVP_CIPHER_asn1_to_param(%struct.evp_cipher_ctx_st* noundef nonnull %call23, %struct.asn1_type_st* noundef %15) #4
  %cmp49 = icmp slt i32 %call48, 1
  br i1 %cmp49, label %err, label %if.end52

if.end52:                                         ; preds = %if.end46
  %call53 = call i32 @EVP_CIPHER_CTX_get_key_length(%struct.evp_cipher_ctx_st* noundef nonnull %call23) #4
  %call54 = call i32 @EVP_PKEY_CTX_set_dh_kdf_outlen(%struct.evp_pkey_ctx_st* noundef nonnull %pctx, i32 noundef %call53) #4
  %cmp55 = icmp slt i32 %call54, 1
  br i1 %cmp55, label %err, label %if.end58

if.end58:                                         ; preds = %if.end52
  %call59 = call i32 @EVP_CIPHER_get_type(%struct.evp_cipher_st* noundef nonnull %call34) #4
  %call60 = call %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef %call59) #4
  %call61 = call i32 @EVP_PKEY_CTX_set0_dh_kdf_oid(%struct.evp_pkey_ctx_st* noundef nonnull %pctx, %struct.asn1_object_st* noundef %call60) #4
  %cmp62 = icmp slt i32 %call61, 1
  br i1 %cmp62, label %err, label %if.end65

if.end65:                                         ; preds = %if.end58
  %16 = load %struct.asn1_string_st*, %struct.asn1_string_st** %ukm, align 8, !tbaa !4
  %cmp66.not = icmp eq %struct.asn1_string_st* %16, null
  br i1 %cmp66.not, label %if.end77, label %if.then68

if.then68:                                        ; preds = %if.end65
  %call69 = call i32 @ASN1_STRING_length(%struct.asn1_string_st* noundef nonnull %16) #4
  %conv70 = sext i32 %call69 to i64
  %17 = load %struct.asn1_string_st*, %struct.asn1_string_st** %ukm, align 8, !tbaa !4
  %call71 = call i8* @ASN1_STRING_get0_data(%struct.asn1_string_st* noundef %17) #4
  %call72 = call i8* @CRYPTO_memdup(i8* noundef %call71, i64 noundef %conv70, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 144) #4
  %cmp73 = icmp eq i8* %call72, null
  br i1 %cmp73, label %err, label %if.end77

if.end77:                                         ; preds = %if.then68, %if.end65
  %dukmlen.0 = phi i32 [ %call69, %if.then68 ], [ 0, %if.end65 ]
  %dukm.0 = phi i8* [ %call72, %if.then68 ], [ null, %if.end65 ]
  %call79 = call i32 @EVP_PKEY_CTX_set0_dh_kdf_ukm(%struct.evp_pkey_ctx_st* noundef nonnull %pctx, i8* noundef %dukm.0, i32 noundef %dukmlen.0) #4
  %cmp80 = icmp slt i32 %call79, 1
  %spec.select = select i1 %cmp80, i8* %dukm.0, i8* null
  %not.cmp80 = xor i1 %cmp80, true
  %spec.select112 = zext i1 %not.cmp80 to i32
  br label %err

err:                                              ; preds = %if.end77, %if.then68, %if.end58, %if.end52, %if.end46, %if.end42, %if.end32, %lor.lhs.false37, %if.end27, %if.end22, %if.end13, %if.end10, %if.end3, %lor.lhs.false, %entry, %if.then2
  %dukm.1 = phi i8* [ null, %if.then2 ], [ null, %if.end3 ], [ null, %lor.lhs.false ], [ null, %if.end10 ], [ null, %if.end13 ], [ null, %if.end22 ], [ null, %if.end32 ], [ null, %lor.lhs.false37 ], [ null, %if.end46 ], [ null, %if.end52 ], [ null, %if.end58 ], [ null, %if.then68 ], [ null, %if.end42 ], [ null, %if.end27 ], [ null, %entry ], [ %spec.select, %if.end77 ]
  %kekalg.0 = phi %struct.X509_algor_st* [ null, %if.then2 ], [ null, %if.end3 ], [ null, %lor.lhs.false ], [ null, %if.end10 ], [ null, %if.end13 ], [ %call18, %if.end22 ], [ %call18, %if.end32 ], [ %call18, %lor.lhs.false37 ], [ %call18, %if.end46 ], [ %call18, %if.end52 ], [ %call18, %if.end58 ], [ %call18, %if.then68 ], [ %call18, %if.end42 ], [ %call18, %if.end27 ], [ null, %entry ], [ %call18, %if.end77 ]
  %kekcipher.0 = phi %struct.evp_cipher_st* [ null, %if.then2 ], [ null, %if.end3 ], [ null, %lor.lhs.false ], [ null, %if.end10 ], [ null, %if.end13 ], [ null, %if.end22 ], [ null, %if.end32 ], [ %call34, %lor.lhs.false37 ], [ %call34, %if.end46 ], [ %call34, %if.end52 ], [ %call34, %if.end58 ], [ %call34, %if.then68 ], [ %call34, %if.end42 ], [ null, %if.end27 ], [ null, %entry ], [ %call34, %if.end77 ]
  %rv.0 = phi i32 [ 0, %if.then2 ], [ 0, %if.end3 ], [ 0, %lor.lhs.false ], [ 0, %if.end10 ], [ 0, %if.end13 ], [ 0, %if.end22 ], [ 0, %if.end32 ], [ 0, %lor.lhs.false37 ], [ 0, %if.end46 ], [ 0, %if.end52 ], [ 0, %if.end58 ], [ 0, %if.then68 ], [ 0, %if.end42 ], [ 0, %if.end27 ], [ 0, %entry ], [ %spec.select112, %if.end77 ]
  call void @X509_ALGOR_free(%struct.X509_algor_st* noundef %kekalg.0) #4
  call void @EVP_CIPHER_free(%struct.evp_cipher_st* noundef %kekcipher.0) #4
  call void @CRYPTO_free(i8* noundef %dukm.1, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 157) #4
  call void @llvm.lifetime.end.p0i8(i64 50, i8* nonnull %3) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #5
  ret i32 %rv.0
}

declare void @X509_ALGOR_get0(%struct.asn1_object_st** noundef, i32* noundef, i8** noundef, %struct.X509_algor_st* noundef) local_unnamed_addr #1

declare i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef) local_unnamed_addr #1

declare %struct.evp_pkey_st* @EVP_PKEY_CTX_get0_pkey(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #1

declare i32 @EVP_PKEY_is_a(%struct.evp_pkey_st* noundef, i8* noundef) local_unnamed_addr #1

declare i32 @ASN1_STRING_length(%struct.asn1_string_st* noundef) local_unnamed_addr #1

declare i8* @ASN1_STRING_get0_data(%struct.asn1_string_st* noundef) local_unnamed_addr #1

declare %struct.asn1_string_st* @d2i_ASN1_INTEGER(%struct.asn1_string_st** noundef, i8** noundef, i64 noundef) local_unnamed_addr #1

declare i32 @EVP_PKEY_get_size(%struct.evp_pkey_st* noundef) local_unnamed_addr #1

declare %struct.bignum_st* @ASN1_INTEGER_to_BN(%struct.asn1_string_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #1

declare i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare i32 @BN_bn2binpad(%struct.bignum_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare %struct.evp_pkey_st* @EVP_PKEY_new() local_unnamed_addr #1

declare i32 @EVP_PKEY_copy_parameters(%struct.evp_pkey_st* noundef, %struct.evp_pkey_st* noundef) local_unnamed_addr #1

declare i32 @EVP_PKEY_set1_encoded_public_key(%struct.evp_pkey_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

declare i32 @EVP_PKEY_derive_set_peer(%struct.evp_pkey_ctx_st* noundef, %struct.evp_pkey_st* noundef) local_unnamed_addr #1

declare void @ASN1_INTEGER_free(%struct.asn1_string_st* noundef) local_unnamed_addr #1

declare void @BN_free(%struct.bignum_st* noundef) local_unnamed_addr #1

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare void @EVP_PKEY_free(%struct.evp_pkey_st* noundef) local_unnamed_addr #1

declare i32 @CMS_RecipientInfo_kari_get0_alg(%struct.CMS_RecipientInfo_st* noundef, %struct.X509_algor_st** noundef, %struct.asn1_string_st** noundef) local_unnamed_addr #1

declare i32 @EVP_PKEY_CTX_set_dh_kdf_type(%struct.evp_pkey_ctx_st* noundef, i32 noundef) local_unnamed_addr #1

declare i32 @EVP_PKEY_CTX_set_dh_kdf_md(%struct.evp_pkey_ctx_st* noundef, %struct.evp_md_st* noundef) local_unnamed_addr #1

declare %struct.evp_md_st* @EVP_sha1() local_unnamed_addr #1

declare %struct.X509_algor_st* @d2i_X509_ALGOR(%struct.X509_algor_st** noundef, i8** noundef, i64 noundef) local_unnamed_addr #1

declare %struct.evp_cipher_ctx_st* @CMS_RecipientInfo_kari_get0_ctx(%struct.CMS_RecipientInfo_st* noundef) local_unnamed_addr #1

declare i32 @OBJ_obj2txt(i8* noundef, i32 noundef, %struct.asn1_object_st* noundef, i32 noundef) local_unnamed_addr #1

declare %struct.evp_cipher_st* @EVP_CIPHER_fetch(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare i32 @EVP_CIPHER_get_mode(%struct.evp_cipher_st* noundef) local_unnamed_addr #1

declare i32 @EVP_EncryptInit_ex(%struct.evp_cipher_ctx_st* noundef, %struct.evp_cipher_st* noundef, %struct.engine_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare i32 @EVP_CIPHER_asn1_to_param(%struct.evp_cipher_ctx_st* noundef, %struct.asn1_type_st* noundef) local_unnamed_addr #1

declare i32 @EVP_CIPHER_CTX_get_key_length(%struct.evp_cipher_ctx_st* noundef) local_unnamed_addr #1

declare i32 @EVP_PKEY_CTX_set_dh_kdf_outlen(%struct.evp_pkey_ctx_st* noundef, i32 noundef) local_unnamed_addr #1

declare i32 @EVP_PKEY_CTX_set0_dh_kdf_oid(%struct.evp_pkey_ctx_st* noundef, %struct.asn1_object_st* noundef) local_unnamed_addr #1

declare %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef) local_unnamed_addr #1

declare i32 @EVP_CIPHER_get_type(%struct.evp_cipher_st* noundef) local_unnamed_addr #1

declare i8* @CRYPTO_memdup(i8* noundef, i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare i32 @EVP_PKEY_CTX_set0_dh_kdf_ukm(%struct.evp_pkey_ctx_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare void @X509_ALGOR_free(%struct.X509_algor_st* noundef) local_unnamed_addr #1

declare void @EVP_CIPHER_free(%struct.evp_cipher_st* noundef) local_unnamed_addr #1

declare i32 @EVP_PKEY_get_bn_param(%struct.evp_pkey_st* noundef, i8* noundef, %struct.bignum_st** noundef) local_unnamed_addr #1

declare %struct.asn1_string_st* @BN_to_ASN1_INTEGER(%struct.bignum_st* noundef, %struct.asn1_string_st* noundef) local_unnamed_addr #1

declare i32 @i2d_ASN1_INTEGER(%struct.asn1_string_st* noundef, i8** noundef) local_unnamed_addr #1

declare void @ASN1_STRING_set0(%struct.asn1_string_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare i32 @X509_ALGOR_set0(%struct.X509_algor_st* noundef, %struct.asn1_object_st* noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

declare i32 @EVP_PKEY_CTX_get_dh_kdf_type(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #1

declare i32 @EVP_PKEY_CTX_get_dh_kdf_md(%struct.evp_pkey_ctx_st* noundef, %struct.evp_md_st** noundef) local_unnamed_addr #1

declare i32 @EVP_MD_get_type(%struct.evp_md_st* noundef) local_unnamed_addr #1

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
!15 = !{!16, !10, i64 0}
!16 = !{!"asn1_type_st", !10, i64 0, !6, i64 8}
!17 = !{!6, !6, i64 0}
!18 = !{!9, !5, i64 8}
!19 = !{!9, !10, i64 0}
!20 = !{!21, !5, i64 8}
!21 = !{!"evp_pkey_ctx_st", !10, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !6, i64 40, !22, i64 56, !5, i64 88, !5, i64 96, !5, i64 104, !10, i64 112, !10, i64 116, !5, i64 120, !5, i64 128, !5, i64 136, !5, i64 144, !5, i64 152, !10, i64 160, !5, i64 168}
!22 = !{!"", !5, i64 0, !5, i64 8, !11, i64 16, !10, i64 24}
!23 = !{!21, !5, i64 16}
