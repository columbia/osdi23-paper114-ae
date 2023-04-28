; ModuleID = 'crypto/cms/cms_lib.c'
source_filename = "crypto/cms/cms_lib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio_st = type opaque
%struct.CMS_ContentInfo_st = type { %struct.asn1_object_st*, %union.anon, %struct.CMS_CTX_st }
%struct.asn1_object_st = type opaque
%union.anon = type { %struct.asn1_string_st* }
%struct.asn1_string_st = type { i32, i32, i8*, i64 }
%struct.CMS_CTX_st = type { %struct.ossl_lib_ctx_st*, i8* }
%struct.ossl_lib_ctx_st = type opaque
%struct.asn1_pctx_st = type opaque
%struct.ASN1_VALUE_st = type opaque
%struct.ASN1_ITEM_st = type { i8, i64, %struct.ASN1_TEMPLATE_st*, i64, i8*, i64, i8* }
%struct.ASN1_TEMPLATE_st = type { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }
%struct.stack_st_CMS_CertificateChoices = type opaque
%struct.CMS_CertificateChoices = type { i32, %union.anon.1 }
%union.anon.1 = type { %struct.x509_st* }
%struct.x509_st = type { %struct.x509_cinf_st, %struct.X509_algor_st, %struct.asn1_string_st, %struct.x509_sig_info_st, i32, %struct.crypto_ex_data_st, i64, i64, i32, i32, i32, i32, %struct.asn1_string_st*, %struct.AUTHORITY_KEYID_st*, %struct.X509_POLICY_CACHE_st*, %struct.stack_st_DIST_POINT*, %struct.stack_st_GENERAL_NAME*, %struct.NAME_CONSTRAINTS_st*, %struct.stack_st_IPAddressFamily*, %struct.ASIdentifiers_st*, [20 x i8], %struct.x509_cert_aux_st*, i8*, i32, %struct.asn1_string_st*, %struct.ossl_lib_ctx_st*, i8* }
%struct.x509_cinf_st = type { %struct.asn1_string_st*, %struct.asn1_string_st, %struct.X509_algor_st, %struct.X509_name_st*, %struct.X509_val_st, %struct.X509_name_st*, %struct.X509_pubkey_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.stack_st_X509_EXTENSION*, %struct.ASN1_ENCODING_st }
%struct.X509_val_st = type { %struct.asn1_string_st*, %struct.asn1_string_st* }
%struct.X509_name_st = type { %struct.stack_st_X509_NAME_ENTRY*, i32, %struct.buf_mem_st*, i8*, i32 }
%struct.stack_st_X509_NAME_ENTRY = type opaque
%struct.buf_mem_st = type { i64, i8*, i64, i64 }
%struct.X509_pubkey_st = type opaque
%struct.stack_st_X509_EXTENSION = type opaque
%struct.ASN1_ENCODING_st = type { i8*, i64, i32 }
%struct.X509_algor_st = type { %struct.asn1_object_st*, %struct.asn1_type_st* }
%struct.asn1_type_st = type { i32, %union.anon.0 }
%union.anon.0 = type { i8* }
%struct.x509_sig_info_st = type { i32, i32, i32, i32 }
%struct.crypto_ex_data_st = type { %struct.ossl_lib_ctx_st*, %struct.stack_st_void* }
%struct.stack_st_void = type opaque
%struct.AUTHORITY_KEYID_st = type { %struct.asn1_string_st*, %struct.stack_st_GENERAL_NAME*, %struct.asn1_string_st* }
%struct.X509_POLICY_CACHE_st = type opaque
%struct.stack_st_DIST_POINT = type opaque
%struct.stack_st_GENERAL_NAME = type opaque
%struct.NAME_CONSTRAINTS_st = type { %struct.stack_st_GENERAL_SUBTREE*, %struct.stack_st_GENERAL_SUBTREE* }
%struct.stack_st_GENERAL_SUBTREE = type opaque
%struct.stack_st_IPAddressFamily = type opaque
%struct.ASIdentifiers_st = type { %struct.ASIdentifierChoice_st*, %struct.ASIdentifierChoice_st* }
%struct.ASIdentifierChoice_st = type { i32, %union.anon.2 }
%union.anon.2 = type { i32* }
%struct.x509_cert_aux_st = type { %struct.stack_st_ASN1_OBJECT*, %struct.stack_st_ASN1_OBJECT*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.stack_st_X509_ALGOR* }
%struct.stack_st_ASN1_OBJECT = type opaque
%struct.stack_st_X509_ALGOR = type opaque
%struct.CMS_SignedData_st = type { i32, %struct.stack_st_X509_ALGOR*, %struct.CMS_EncapsulatedContentInfo_st*, %struct.stack_st_CMS_CertificateChoices*, %struct.stack_st_CMS_RevocationInfoChoice*, %struct.stack_st_CMS_SignerInfo* }
%struct.CMS_EncapsulatedContentInfo_st = type { %struct.asn1_object_st*, %struct.asn1_string_st*, i32 }
%struct.stack_st_CMS_RevocationInfoChoice = type opaque
%struct.stack_st_CMS_SignerInfo = type opaque
%struct.CMS_EnvelopedData_st = type { i32, %struct.CMS_OriginatorInfo_st*, %struct.stack_st_CMS_RecipientInfo*, %struct.CMS_EncryptedContentInfo_st*, %struct.stack_st_X509_ATTRIBUTE* }
%struct.CMS_OriginatorInfo_st = type { %struct.stack_st_CMS_CertificateChoices*, %struct.stack_st_CMS_RevocationInfoChoice* }
%struct.stack_st_CMS_RecipientInfo = type opaque
%struct.CMS_EncryptedContentInfo_st = type { %struct.asn1_object_st*, %struct.X509_algor_st*, %struct.asn1_string_st*, %struct.evp_cipher_st*, i8*, i64, i8*, i64, i32, i32 }
%struct.evp_cipher_st = type opaque
%struct.stack_st_X509_ATTRIBUTE = type opaque
%struct.CMS_AuthEnvelopedData_st = type { i32, %struct.CMS_OriginatorInfo_st*, %struct.stack_st_CMS_RecipientInfo*, %struct.CMS_EncryptedContentInfo_st*, %struct.stack_st_X509_ATTRIBUTE*, %struct.asn1_string_st*, %struct.stack_st_X509_ATTRIBUTE* }
%struct.stack_st = type opaque
%struct.bio_method_st = type opaque
%struct.CMS_DigestedData_st = type { i32, %struct.X509_algor_st*, %struct.CMS_EncapsulatedContentInfo_st*, %struct.asn1_string_st* }
%struct.CMS_EncryptedData_st = type { i32, %struct.CMS_EncryptedContentInfo_st*, %struct.stack_st_X509_ATTRIBUTE* }
%struct.CMS_AuthenticatedData_st = type { i32, %struct.CMS_OriginatorInfo_st*, %struct.stack_st_CMS_RecipientInfo*, %struct.X509_algor_st*, %struct.X509_algor_st*, %struct.CMS_EncapsulatedContentInfo_st*, %struct.stack_st_X509_ATTRIBUTE*, %struct.asn1_string_st*, %struct.stack_st_X509_ATTRIBUTE* }
%struct.CMS_CompressedData_st = type { i32, %struct.X509_algor_st*, %struct.stack_st_CMS_RecipientInfo*, %struct.CMS_EncapsulatedContentInfo_st* }
%struct.evp_md_st = type opaque
%struct.evp_md_ctx_st = type opaque
%struct.CMS_RevocationInfoChoice_st = type { i32, %union.anon.3 }
%union.anon.3 = type { %struct.X509_crl_st* }
%struct.X509_crl_st = type { %struct.X509_crl_info_st, %struct.X509_algor_st, %struct.asn1_string_st, i32, i32, %struct.AUTHORITY_KEYID_st*, %struct.ISSUING_DIST_POINT_st*, i32, i32, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.stack_st_GENERAL_NAMES*, [20 x i8], %struct.x509_crl_method_st*, i8*, i8*, %struct.ossl_lib_ctx_st*, i8* }
%struct.X509_crl_info_st = type { %struct.asn1_string_st*, %struct.X509_algor_st, %struct.X509_name_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.stack_st_X509_REVOKED*, %struct.stack_st_X509_EXTENSION*, %struct.ASN1_ENCODING_st }
%struct.stack_st_X509_REVOKED = type opaque
%struct.ISSUING_DIST_POINT_st = type { %struct.DIST_POINT_NAME_st*, i32, i32, %struct.asn1_string_st*, i32, i32 }
%struct.DIST_POINT_NAME_st = type { i32, %union.anon.4, %struct.X509_name_st* }
%union.anon.4 = type { %struct.stack_st_GENERAL_NAME* }
%struct.stack_st_GENERAL_NAMES = type opaque
%struct.x509_crl_method_st = type opaque
%struct.stack_st_X509 = type opaque
%struct.stack_st_X509_CRL = type opaque
%struct.CMS_IssuerAndSerialNumber_st = type { %struct.X509_name_st*, %struct.asn1_string_st* }

@.str = private unnamed_addr constant [21 x i8] c"crypto/cms/cms_lib.c\00", align 1
@__func__.CMS_ContentInfo_new_ex = private unnamed_addr constant [23 x i8] c"CMS_ContentInfo_new_ex\00", align 1
@__func__.CMS_dataInit = private unnamed_addr constant [13 x i8] c"CMS_dataInit\00", align 1
@__func__.CMS_dataFinal = private unnamed_addr constant [14 x i8] c"CMS_dataFinal\00", align 1
@__func__.CMS_get0_content = private unnamed_addr constant [17 x i8] c"CMS_get0_content\00", align 1
@__func__.CMS_set_detached = private unnamed_addr constant [17 x i8] c"CMS_set_detached\00", align 1
@__func__.ossl_cms_DigestAlgorithm_init_bio = private unnamed_addr constant [34 x i8] c"ossl_cms_DigestAlgorithm_init_bio\00", align 1
@__func__.ossl_cms_DigestAlgorithm_find_ctx = private unnamed_addr constant [34 x i8] c"ossl_cms_DigestAlgorithm_find_ctx\00", align 1
@__func__.CMS_add0_cert = private unnamed_addr constant [14 x i8] c"CMS_add0_cert\00", align 1
@__func__.ossl_cms_set1_ias = private unnamed_addr constant [18 x i8] c"ossl_cms_set1_ias\00", align 1
@__func__.ossl_cms_set1_keyid = private unnamed_addr constant [20 x i8] c"ossl_cms_set1_keyid\00", align 1
@__func__.cms_get0_econtent_type = private unnamed_addr constant [23 x i8] c"cms_get0_econtent_type\00", align 1
@__func__.cms_get0_certificate_choices = private unnamed_addr constant [29 x i8] c"cms_get0_certificate_choices\00", align 1
@__func__.cms_get0_revocation_choices = private unnamed_addr constant [28 x i8] c"cms_get0_revocation_choices\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @CMS_ContentInfo_print_ctx(%struct.bio_st* noundef %out, %struct.CMS_ContentInfo_st* noundef %x, i32 noundef %indent, %struct.asn1_pctx_st* noundef %pctx) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.CMS_ContentInfo_st* %x to %struct.ASN1_VALUE_st*
  %call = tail call %struct.ASN1_ITEM_st* @CMS_ContentInfo_it() #5
  %call1 = tail call i32 @ASN1_item_print(%struct.bio_st* noundef %out, %struct.ASN1_VALUE_st* noundef %0, i32 noundef %indent, %struct.ASN1_ITEM_st* noundef %call, %struct.asn1_pctx_st* noundef %pctx) #5
  ret i32 %call1
}

declare i32 @ASN1_item_print(%struct.bio_st* noundef, %struct.ASN1_VALUE_st* noundef, i32 noundef, %struct.ASN1_ITEM_st* noundef, %struct.asn1_pctx_st* noundef) local_unnamed_addr #1

declare %struct.ASN1_ITEM_st* @CMS_ContentInfo_it() local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define %struct.CMS_ContentInfo_st* @d2i_CMS_ContentInfo(%struct.CMS_ContentInfo_st** noundef %a, i8** noundef %in, i64 noundef %len) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.CMS_ContentInfo_st** %a, null
  br i1 %cmp, label %cond.end, label %cond.false

cond.false:                                       ; preds = %entry
  %0 = load %struct.CMS_ContentInfo_st*, %struct.CMS_ContentInfo_st** %a, align 8, !tbaa !4
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.false
  %cond = phi %struct.CMS_ContentInfo_st* [ %0, %cond.false ], [ null, %entry ]
  %call = tail call %struct.CMS_CTX_st* @ossl_cms_get0_cmsctx(%struct.CMS_ContentInfo_st* noundef %cond) #6
  %1 = bitcast %struct.CMS_ContentInfo_st** %a to %struct.ASN1_VALUE_st**
  %call1 = tail call %struct.ASN1_ITEM_st* @CMS_ContentInfo_it() #5
  %call2 = tail call %struct.ossl_lib_ctx_st* @ossl_cms_ctx_get0_libctx(%struct.CMS_CTX_st* noundef %call) #6
  %call3 = tail call i8* @ossl_cms_ctx_get0_propq(%struct.CMS_CTX_st* noundef %call) #6
  %call4 = tail call %struct.ASN1_VALUE_st* @ASN1_item_d2i_ex(%struct.ASN1_VALUE_st** noundef %1, i8** noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* noundef %call1, %struct.ossl_lib_ctx_st* noundef %call2, i8* noundef %call3) #5
  %2 = bitcast %struct.ASN1_VALUE_st* %call4 to %struct.CMS_ContentInfo_st*
  %cmp5.not = icmp eq %struct.ASN1_VALUE_st* %call4, null
  br i1 %cmp5.not, label %if.end, label %if.then

if.then:                                          ; preds = %cond.end
  tail call void @ossl_cms_resolve_libctx(%struct.CMS_ContentInfo_st* noundef nonnull %2) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  ret %struct.CMS_ContentInfo_st* %2
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define %struct.CMS_CTX_st* @ossl_cms_get0_cmsctx(%struct.CMS_ContentInfo_st* noundef readnone %cms) local_unnamed_addr #3 {
entry:
  %cmp.not = icmp eq %struct.CMS_ContentInfo_st* %cms, null
  %ctx = getelementptr inbounds %struct.CMS_ContentInfo_st, %struct.CMS_ContentInfo_st* %cms, i64 0, i32 2
  %cond = select i1 %cmp.not, %struct.CMS_CTX_st* null, %struct.CMS_CTX_st* %ctx
  ret %struct.CMS_CTX_st* %cond
}

declare %struct.ASN1_VALUE_st* @ASN1_item_d2i_ex(%struct.ASN1_VALUE_st** noundef, i8** noundef, i64 noundef, %struct.ASN1_ITEM_st* noundef, %struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.ossl_lib_ctx_st* @ossl_cms_ctx_get0_libctx(%struct.CMS_CTX_st* noundef readonly %ctx) local_unnamed_addr #4 {
entry:
  %cmp.not = icmp eq %struct.CMS_CTX_st* %ctx, null
  br i1 %cmp.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %entry
  %libctx = getelementptr inbounds %struct.CMS_CTX_st, %struct.CMS_CTX_st* %ctx, i64 0, i32 0
  %0 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !8
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.ossl_lib_ctx_st* [ %0, %cond.true ], [ null, %entry ]
  ret %struct.ossl_lib_ctx_st* %cond
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i8* @ossl_cms_ctx_get0_propq(%struct.CMS_CTX_st* noundef readonly %ctx) local_unnamed_addr #4 {
entry:
  %cmp.not = icmp eq %struct.CMS_CTX_st* %ctx, null
  br i1 %cmp.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %entry
  %propq = getelementptr inbounds %struct.CMS_CTX_st, %struct.CMS_CTX_st* %ctx, i64 0, i32 1
  %0 = load i8*, i8** %propq, align 8, !tbaa !10
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i8* [ %0, %cond.true ], [ null, %entry ]
  ret i8* %cond
}

; Function Attrs: noinline nounwind uwtable
define void @ossl_cms_resolve_libctx(%struct.CMS_ContentInfo_st* noundef %ci) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.CMS_CTX_st* @ossl_cms_get0_cmsctx(%struct.CMS_ContentInfo_st* noundef %ci) #6
  %call1 = tail call %struct.ossl_lib_ctx_st* @ossl_cms_ctx_get0_libctx(%struct.CMS_CTX_st* noundef %call) #6
  %call2 = tail call i8* @ossl_cms_ctx_get0_propq(%struct.CMS_CTX_st* noundef %call) #6
  tail call void @ossl_cms_SignerInfos_set_cmsctx(%struct.CMS_ContentInfo_st* noundef %ci) #5
  tail call void @ossl_cms_RecipientInfos_set_cmsctx(%struct.CMS_ContentInfo_st* noundef %ci) #5
  %call3 = tail call fastcc %struct.stack_st_CMS_CertificateChoices** @cms_get0_certificate_choices(%struct.CMS_ContentInfo_st* noundef %ci) #6
  %cmp.not = icmp eq %struct.stack_st_CMS_CertificateChoices** %call3, null
  br i1 %cmp.not, label %if.end10, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %0 = load %struct.stack_st_CMS_CertificateChoices*, %struct.stack_st_CMS_CertificateChoices** %call3, align 8, !tbaa !4
  %call426 = tail call fastcc i32 @sk_CMS_CertificateChoices_num(%struct.stack_st_CMS_CertificateChoices* noundef %0) #6
  %cmp527 = icmp sgt i32 %call426, 0
  br i1 %cmp527, label %for.body, label %if.end10

for.body:                                         ; preds = %for.cond.preheader, %for.inc
  %i.028 = phi i32 [ %inc, %for.inc ], [ 0, %for.cond.preheader ]
  %1 = load %struct.stack_st_CMS_CertificateChoices*, %struct.stack_st_CMS_CertificateChoices** %call3, align 8, !tbaa !4
  %call6 = tail call fastcc %struct.CMS_CertificateChoices* @sk_CMS_CertificateChoices_value(%struct.stack_st_CMS_CertificateChoices* noundef %1, i32 noundef %i.028) #6
  %type = getelementptr inbounds %struct.CMS_CertificateChoices, %struct.CMS_CertificateChoices* %call6, i64 0, i32 0
  %2 = load i32, i32* %type, align 8, !tbaa !11
  %cmp7 = icmp eq i32 %2, 0
  br i1 %cmp7, label %if.then8, label %for.inc

if.then8:                                         ; preds = %for.body
  %certificate = getelementptr inbounds %struct.CMS_CertificateChoices, %struct.CMS_CertificateChoices* %call6, i64 0, i32 1, i32 0
  %3 = load %struct.x509_st*, %struct.x509_st** %certificate, align 8, !tbaa !14
  %call9 = tail call i32 @ossl_x509_set0_libctx(%struct.x509_st* noundef %3, %struct.ossl_lib_ctx_st* noundef %call1, i8* noundef %call2) #5
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then8
  %inc = add nuw nsw i32 %i.028, 1
  %4 = load %struct.stack_st_CMS_CertificateChoices*, %struct.stack_st_CMS_CertificateChoices** %call3, align 8, !tbaa !4
  %call4 = tail call fastcc i32 @sk_CMS_CertificateChoices_num(%struct.stack_st_CMS_CertificateChoices* noundef %4) #6
  %cmp5 = icmp slt i32 %inc, %call4
  br i1 %cmp5, label %for.body, label %if.end10, !llvm.loop !15

if.end10:                                         ; preds = %for.inc, %for.cond.preheader, %entry
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_CMS_ContentInfo(%struct.CMS_ContentInfo_st* noundef %a, i8** noundef %out) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.CMS_ContentInfo_st* %a to %struct.ASN1_VALUE_st*
  %call = tail call %struct.ASN1_ITEM_st* @CMS_ContentInfo_it() #5
  %call1 = tail call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %0, i8** noundef %out, %struct.ASN1_ITEM_st* noundef %call) #5
  ret i32 %call1
}

declare i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef, i8** noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define %struct.CMS_ContentInfo_st* @CMS_ContentInfo_new_ex(%struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.ASN1_ITEM_st* @CMS_ContentInfo_it() #5
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_new_ex(%struct.ASN1_ITEM_st* noundef %call, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) #5
  %0 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.CMS_ContentInfo_st*
  %cmp.not = icmp eq %struct.ASN1_VALUE_st* %call1, null
  br i1 %cmp.not, label %if.end15, label %if.then

if.then:                                          ; preds = %entry
  %libctx2 = getelementptr inbounds %struct.CMS_ContentInfo_st, %struct.CMS_ContentInfo_st* %0, i64 0, i32 2, i32 0
  store %struct.ossl_lib_ctx_st* %libctx, %struct.ossl_lib_ctx_st** %libctx2, align 8, !tbaa !17
  %propq4 = getelementptr inbounds %struct.CMS_ContentInfo_st, %struct.CMS_ContentInfo_st* %0, i64 0, i32 2, i32 1
  store i8* null, i8** %propq4, align 8, !tbaa !19
  %cmp5.not = icmp eq i8* %propq, null
  br i1 %cmp5.not, label %if.end15, label %if.then6

if.then6:                                         ; preds = %if.then
  %call7 = tail call i8* @CRYPTO_strdup(i8* noundef nonnull %propq, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 57) #5
  store i8* %call7, i8** %propq4, align 8, !tbaa !19
  %cmp12 = icmp eq i8* %call7, null
  br i1 %cmp12, label %if.then13, label %if.end15

if.then13:                                        ; preds = %if.then6
  tail call void @CMS_ContentInfo_free(%struct.CMS_ContentInfo_st* noundef nonnull %0) #6
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 61, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.CMS_ContentInfo_new_ex, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 57, i32 noundef 786688, i8* noundef null) #5
  br label %if.end15

if.end15:                                         ; preds = %if.then, %if.then13, %if.then6, %entry
  %ci.0 = phi %struct.CMS_ContentInfo_st* [ null, %if.then13 ], [ %0, %if.then6 ], [ %0, %if.then ], [ null, %entry ]
  ret %struct.CMS_ContentInfo_st* %ci.0
}

declare %struct.ASN1_VALUE_st* @ASN1_item_new_ex(%struct.ASN1_ITEM_st* noundef, %struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #1

declare i8* @CRYPTO_strdup(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define void @CMS_ContentInfo_free(%struct.CMS_ContentInfo_st* noundef %cms) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq %struct.CMS_ContentInfo_st* %cms, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %propq = getelementptr inbounds %struct.CMS_ContentInfo_st, %struct.CMS_ContentInfo_st* %cms, i64 0, i32 2, i32 1
  %0 = load i8*, i8** %propq, align 8, !tbaa !19
  tail call void @CRYPTO_free(i8* noundef %0, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 76) #5
  %1 = bitcast %struct.CMS_ContentInfo_st* %cms to %struct.ASN1_VALUE_st*
  %call = tail call %struct.ASN1_ITEM_st* @CMS_ContentInfo_it() #5
  tail call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef nonnull %1, %struct.ASN1_ITEM_st* noundef %call) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @ERR_new() local_unnamed_addr #1

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define %struct.CMS_ContentInfo_st* @CMS_ContentInfo_new() local_unnamed_addr #0 {
entry:
  %call = tail call %struct.CMS_ContentInfo_st* @CMS_ContentInfo_new_ex(%struct.ossl_lib_ctx_st* noundef null, i8* noundef null) #6
  ret %struct.CMS_ContentInfo_st* %call
}

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #1

declare void @ossl_cms_SignerInfos_set_cmsctx(%struct.CMS_ContentInfo_st* noundef) local_unnamed_addr #1

declare void @ossl_cms_RecipientInfos_set_cmsctx(%struct.CMS_ContentInfo_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.stack_st_CMS_CertificateChoices** @cms_get0_certificate_choices(%struct.CMS_ContentInfo_st* nocapture noundef readonly %cms) unnamed_addr #0 {
entry:
  %contentType = getelementptr inbounds %struct.CMS_ContentInfo_st, %struct.CMS_ContentInfo_st* %cms, i64 0, i32 0
  %0 = load %struct.asn1_object_st*, %struct.asn1_object_st** %contentType, align 8, !tbaa !20
  %call = tail call i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef %0) #5
  switch i32 %call, label %sw.default [
    i32 22, label %sw.bb
    i32 23, label %sw.bb1
    i32 1059, label %sw.bb7
  ]

sw.bb:                                            ; preds = %entry
  %d = getelementptr inbounds %struct.CMS_ContentInfo_st, %struct.CMS_ContentInfo_st* %cms, i64 0, i32 1
  %signedData = bitcast %union.anon* %d to %struct.CMS_SignedData_st**
  %1 = load %struct.CMS_SignedData_st*, %struct.CMS_SignedData_st** %signedData, align 8, !tbaa !14
  %certificates = getelementptr inbounds %struct.CMS_SignedData_st, %struct.CMS_SignedData_st* %1, i64 0, i32 3
  br label %return

sw.bb1:                                           ; preds = %entry
  %d2 = getelementptr inbounds %struct.CMS_ContentInfo_st, %struct.CMS_ContentInfo_st* %cms, i64 0, i32 1
  %envelopedData = bitcast %union.anon* %d2 to %struct.CMS_EnvelopedData_st**
  %2 = load %struct.CMS_EnvelopedData_st*, %struct.CMS_EnvelopedData_st** %envelopedData, align 8, !tbaa !14
  %originatorInfo = getelementptr inbounds %struct.CMS_EnvelopedData_st, %struct.CMS_EnvelopedData_st* %2, i64 0, i32 1
  %3 = load %struct.CMS_OriginatorInfo_st*, %struct.CMS_OriginatorInfo_st** %originatorInfo, align 8, !tbaa !21
  %certificates6 = getelementptr %struct.CMS_OriginatorInfo_st, %struct.CMS_OriginatorInfo_st* %3, i64 0, i32 0
  br label %return

sw.bb7:                                           ; preds = %entry
  %d8 = getelementptr inbounds %struct.CMS_ContentInfo_st, %struct.CMS_ContentInfo_st* %cms, i64 0, i32 1
  %authEnvelopedData = bitcast %union.anon* %d8 to %struct.CMS_AuthEnvelopedData_st**
  %4 = load %struct.CMS_AuthEnvelopedData_st*, %struct.CMS_AuthEnvelopedData_st** %authEnvelopedData, align 8, !tbaa !14
  %originatorInfo9 = getelementptr inbounds %struct.CMS_AuthEnvelopedData_st, %struct.CMS_AuthEnvelopedData_st* %4, i64 0, i32 1
  %5 = load %struct.CMS_OriginatorInfo_st*, %struct.CMS_OriginatorInfo_st** %originatorInfo9, align 8, !tbaa !23
  %certificates16 = getelementptr %struct.CMS_OriginatorInfo_st, %struct.CMS_OriginatorInfo_st* %5, i64 0, i32 0
  br label %return

sw.default:                                       ; preds = %entry
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 492, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.cms_get0_certificate_choices, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 46, i32 noundef 152, i8* noundef null) #5
  br label %return

return:                                           ; preds = %sw.bb7, %sw.bb1, %sw.default, %sw.bb
  %retval.0 = phi %struct.stack_st_CMS_CertificateChoices** [ null, %sw.default ], [ %certificates, %sw.bb ], [ %certificates6, %sw.bb1 ], [ %certificates16, %sw.bb7 ]
  ret %struct.stack_st_CMS_CertificateChoices** %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @sk_CMS_CertificateChoices_num(%struct.stack_st_CMS_CertificateChoices* noundef %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_CMS_CertificateChoices* %sk to %struct.stack_st*
  %call = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %0) #5
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.CMS_CertificateChoices* @sk_CMS_CertificateChoices_value(%struct.stack_st_CMS_CertificateChoices* noundef %sk, i32 noundef %idx) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_CMS_CertificateChoices* %sk to %struct.stack_st*
  %call = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %0, i32 noundef %idx) #5
  %1 = bitcast i8* %call to %struct.CMS_CertificateChoices*
  ret %struct.CMS_CertificateChoices* %1
}

declare i32 @ossl_x509_set0_libctx(%struct.x509_st* noundef, %struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.asn1_object_st* @CMS_get0_type(%struct.CMS_ContentInfo_st* nocapture noundef readonly %cms) local_unnamed_addr #4 {
entry:
  %contentType = getelementptr inbounds %struct.CMS_ContentInfo_st, %struct.CMS_ContentInfo_st* %cms, i64 0, i32 0
  %0 = load %struct.asn1_object_st*, %struct.asn1_object_st** %contentType, align 8, !tbaa !20
  ret %struct.asn1_object_st* %0
}

; Function Attrs: noinline nounwind uwtable
define %struct.CMS_ContentInfo_st* @ossl_cms_Data_create(%struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.CMS_ContentInfo_st* @CMS_ContentInfo_new_ex(%struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) #6
  %cmp.not = icmp eq %struct.CMS_ContentInfo_st* %call, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = tail call %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef 21) #5
  %contentType = getelementptr inbounds %struct.CMS_ContentInfo_st, %struct.CMS_ContentInfo_st* %call, i64 0, i32 0
  store %struct.asn1_object_st* %call1, %struct.asn1_object_st** %contentType, align 8, !tbaa !20
  %call2 = tail call i32 @CMS_set_detached(%struct.CMS_ContentInfo_st* noundef nonnull %call, i32 noundef 0) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret %struct.CMS_ContentInfo_st* %call
}

declare %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @CMS_set_detached(%struct.CMS_ContentInfo_st* noundef %cms, i32 noundef %detached) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.asn1_string_st** @CMS_get0_content(%struct.CMS_ContentInfo_st* noundef %cms) #6
  %cmp = icmp eq %struct.asn1_string_st** %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq i32 %detached, 0
  %0 = load %struct.asn1_string_st*, %struct.asn1_string_st** %call, align 8, !tbaa !4
  br i1 %tobool.not, label %if.end2, label %if.then1

if.then1:                                         ; preds = %if.end
  tail call void @ASN1_OCTET_STRING_free(%struct.asn1_string_st* noundef %0) #5
  store %struct.asn1_string_st* null, %struct.asn1_string_st** %call, align 8, !tbaa !4
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %cmp3 = icmp eq %struct.asn1_string_st* %0, null
  br i1 %cmp3, label %if.end6, label %if.then8

if.end6:                                          ; preds = %if.end2
  %call5 = tail call %struct.asn1_string_st* @ASN1_OCTET_STRING_new() #5
  store %struct.asn1_string_st* %call5, %struct.asn1_string_st** %call, align 8, !tbaa !4
  %cmp7.not = icmp eq %struct.asn1_string_st* %call5, null
  br i1 %cmp7.not, label %if.end9, label %if.then8

if.then8:                                         ; preds = %if.end2, %if.end6
  %1 = phi %struct.asn1_string_st* [ %call5, %if.end6 ], [ %0, %if.end2 ]
  %flags = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %1, i64 0, i32 3
  %2 = load i64, i64* %flags, align 8, !tbaa !25
  %or = or i64 %2, 32
  store i64 %or, i64* %flags, align 8, !tbaa !25
  br label %cleanup

if.end9:                                          ; preds = %if.end6
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 398, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.CMS_set_detached, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 46, i32 noundef 786688, i8* noundef null) #5
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end9, %if.then8, %if.then1
  %retval.0 = phi i32 [ 1, %if.then1 ], [ 1, %if.then8 ], [ 0, %if.end9 ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define %struct.bio_st* @ossl_cms_content_bio(%struct.CMS_ContentInfo_st* noundef %cms) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.asn1_string_st** @CMS_get0_content(%struct.CMS_ContentInfo_st* noundef %cms) #6
  %cmp = icmp eq %struct.asn1_string_st** %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %0 = load %struct.asn1_string_st*, %struct.asn1_string_st** %call, align 8, !tbaa !4
  %cmp1 = icmp eq %struct.asn1_string_st* %0, null
  br i1 %cmp1, label %if.then2, label %lor.lhs.false

if.then2:                                         ; preds = %if.end
  %call3 = tail call %struct.bio_method_st* @BIO_s_null() #5
  %call4 = tail call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call3) #5
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %flags = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %0, i64 0, i32 3
  %1 = load i64, i64* %flags, align 8, !tbaa !25
  %cmp7 = icmp eq i64 %1, 32
  br i1 %cmp7, label %if.then8, label %if.end11

if.then8:                                         ; preds = %lor.lhs.false
  %call9 = tail call %struct.bio_method_st* @BIO_s_mem() #5
  %call10 = tail call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call9) #5
  br label %cleanup

if.end11:                                         ; preds = %lor.lhs.false
  %data = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %0, i64 0, i32 2
  %2 = load i8*, i8** %data, align 8, !tbaa !28
  %length = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %0, i64 0, i32 0
  %3 = load i32, i32* %length, align 8, !tbaa !29
  %call12 = tail call %struct.bio_st* @BIO_new_mem_buf(i8* noundef %2, i32 noundef %3) #5
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end11, %if.then8, %if.then2
  %retval.0 = phi %struct.bio_st* [ %call4, %if.then2 ], [ %call10, %if.then8 ], [ %call12, %if.end11 ], [ null, %entry ]
  ret %struct.bio_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define %struct.asn1_string_st** @CMS_get0_content(%struct.CMS_ContentInfo_st* noundef readonly %cms) local_unnamed_addr #0 {
entry:
  %contentType = getelementptr inbounds %struct.CMS_ContentInfo_st, %struct.CMS_ContentInfo_st* %cms, i64 0, i32 0
  %0 = load %struct.asn1_object_st*, %struct.asn1_object_st** %contentType, align 8, !tbaa !20
  %call = tail call i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef %0) #5
  switch i32 %call, label %sw.default [
    i32 21, label %sw.bb
    i32 22, label %sw.bb1
    i32 23, label %sw.bb3
    i32 25, label %sw.bb5
    i32 26, label %sw.bb9
    i32 1059, label %sw.bb13
    i32 205, label %sw.bb16
    i32 786, label %sw.bb20
  ]

sw.bb:                                            ; preds = %entry
  %data = getelementptr inbounds %struct.CMS_ContentInfo_st, %struct.CMS_ContentInfo_st* %cms, i64 0, i32 1, i32 0
  br label %return

sw.bb1:                                           ; preds = %entry
  %d2 = getelementptr inbounds %struct.CMS_ContentInfo_st, %struct.CMS_ContentInfo_st* %cms, i64 0, i32 1
  %signedData = bitcast %union.anon* %d2 to %struct.CMS_SignedData_st**
  %1 = load %struct.CMS_SignedData_st*, %struct.CMS_SignedData_st** %signedData, align 8, !tbaa !14
  %encapContentInfo = getelementptr inbounds %struct.CMS_SignedData_st, %struct.CMS_SignedData_st* %1, i64 0, i32 2
  %2 = load %struct.CMS_EncapsulatedContentInfo_st*, %struct.CMS_EncapsulatedContentInfo_st** %encapContentInfo, align 8, !tbaa !30
  %eContent = getelementptr inbounds %struct.CMS_EncapsulatedContentInfo_st, %struct.CMS_EncapsulatedContentInfo_st* %2, i64 0, i32 1
  br label %return

sw.bb3:                                           ; preds = %entry
  %d4 = getelementptr inbounds %struct.CMS_ContentInfo_st, %struct.CMS_ContentInfo_st* %cms, i64 0, i32 1
  %envelopedData = bitcast %union.anon* %d4 to %struct.CMS_EnvelopedData_st**
  %3 = load %struct.CMS_EnvelopedData_st*, %struct.CMS_EnvelopedData_st** %envelopedData, align 8, !tbaa !14
  %encryptedContentInfo = getelementptr inbounds %struct.CMS_EnvelopedData_st, %struct.CMS_EnvelopedData_st* %3, i64 0, i32 3
  %4 = load %struct.CMS_EncryptedContentInfo_st*, %struct.CMS_EncryptedContentInfo_st** %encryptedContentInfo, align 8, !tbaa !32
  %encryptedContent = getelementptr inbounds %struct.CMS_EncryptedContentInfo_st, %struct.CMS_EncryptedContentInfo_st* %4, i64 0, i32 2
  br label %return

sw.bb5:                                           ; preds = %entry
  %d6 = getelementptr inbounds %struct.CMS_ContentInfo_st, %struct.CMS_ContentInfo_st* %cms, i64 0, i32 1
  %digestedData = bitcast %union.anon* %d6 to %struct.CMS_DigestedData_st**
  %5 = load %struct.CMS_DigestedData_st*, %struct.CMS_DigestedData_st** %digestedData, align 8, !tbaa !14
  %encapContentInfo7 = getelementptr inbounds %struct.CMS_DigestedData_st, %struct.CMS_DigestedData_st* %5, i64 0, i32 2
  %6 = load %struct.CMS_EncapsulatedContentInfo_st*, %struct.CMS_EncapsulatedContentInfo_st** %encapContentInfo7, align 8, !tbaa !33
  %eContent8 = getelementptr inbounds %struct.CMS_EncapsulatedContentInfo_st, %struct.CMS_EncapsulatedContentInfo_st* %6, i64 0, i32 1
  br label %return

sw.bb9:                                           ; preds = %entry
  %d10 = getelementptr inbounds %struct.CMS_ContentInfo_st, %struct.CMS_ContentInfo_st* %cms, i64 0, i32 1
  %encryptedData = bitcast %union.anon* %d10 to %struct.CMS_EncryptedData_st**
  %7 = load %struct.CMS_EncryptedData_st*, %struct.CMS_EncryptedData_st** %encryptedData, align 8, !tbaa !14
  %encryptedContentInfo11 = getelementptr inbounds %struct.CMS_EncryptedData_st, %struct.CMS_EncryptedData_st* %7, i64 0, i32 1
  %8 = load %struct.CMS_EncryptedContentInfo_st*, %struct.CMS_EncryptedContentInfo_st** %encryptedContentInfo11, align 8, !tbaa !35
  %encryptedContent12 = getelementptr inbounds %struct.CMS_EncryptedContentInfo_st, %struct.CMS_EncryptedContentInfo_st* %8, i64 0, i32 2
  br label %return

sw.bb13:                                          ; preds = %entry
  %d14 = getelementptr inbounds %struct.CMS_ContentInfo_st, %struct.CMS_ContentInfo_st* %cms, i64 0, i32 1
  %authEnvelopedData = bitcast %union.anon* %d14 to %struct.CMS_AuthEnvelopedData_st**
  %9 = load %struct.CMS_AuthEnvelopedData_st*, %struct.CMS_AuthEnvelopedData_st** %authEnvelopedData, align 8, !tbaa !14
  %authEncryptedContentInfo = getelementptr inbounds %struct.CMS_AuthEnvelopedData_st, %struct.CMS_AuthEnvelopedData_st* %9, i64 0, i32 3
  %10 = load %struct.CMS_EncryptedContentInfo_st*, %struct.CMS_EncryptedContentInfo_st** %authEncryptedContentInfo, align 8, !tbaa !37
  %encryptedContent15 = getelementptr inbounds %struct.CMS_EncryptedContentInfo_st, %struct.CMS_EncryptedContentInfo_st* %10, i64 0, i32 2
  br label %return

sw.bb16:                                          ; preds = %entry
  %d17 = getelementptr inbounds %struct.CMS_ContentInfo_st, %struct.CMS_ContentInfo_st* %cms, i64 0, i32 1
  %authenticatedData = bitcast %union.anon* %d17 to %struct.CMS_AuthenticatedData_st**
  %11 = load %struct.CMS_AuthenticatedData_st*, %struct.CMS_AuthenticatedData_st** %authenticatedData, align 8, !tbaa !14
  %encapContentInfo18 = getelementptr inbounds %struct.CMS_AuthenticatedData_st, %struct.CMS_AuthenticatedData_st* %11, i64 0, i32 5
  %12 = load %struct.CMS_EncapsulatedContentInfo_st*, %struct.CMS_EncapsulatedContentInfo_st** %encapContentInfo18, align 8, !tbaa !38
  %eContent19 = getelementptr inbounds %struct.CMS_EncapsulatedContentInfo_st, %struct.CMS_EncapsulatedContentInfo_st* %12, i64 0, i32 1
  br label %return

sw.bb20:                                          ; preds = %entry
  %d21 = getelementptr inbounds %struct.CMS_ContentInfo_st, %struct.CMS_ContentInfo_st* %cms, i64 0, i32 1
  %compressedData = bitcast %union.anon* %d21 to %struct.CMS_CompressedData_st**
  %13 = load %struct.CMS_CompressedData_st*, %struct.CMS_CompressedData_st** %compressedData, align 8, !tbaa !14
  %encapContentInfo22 = getelementptr inbounds %struct.CMS_CompressedData_st, %struct.CMS_CompressedData_st* %13, i64 0, i32 3
  %14 = load %struct.CMS_EncapsulatedContentInfo_st*, %struct.CMS_EncapsulatedContentInfo_st** %encapContentInfo22, align 8, !tbaa !40
  %eContent23 = getelementptr inbounds %struct.CMS_EncapsulatedContentInfo_st, %struct.CMS_EncapsulatedContentInfo_st* %14, i64 0, i32 1
  br label %return

sw.default:                                       ; preds = %entry
  %d24 = getelementptr inbounds %struct.CMS_ContentInfo_st, %struct.CMS_ContentInfo_st* %cms, i64 0, i32 1
  %other = bitcast %union.anon* %d24 to %struct.asn1_type_st**
  %15 = load %struct.asn1_type_st*, %struct.asn1_type_st** %other, align 8, !tbaa !14
  %type = getelementptr inbounds %struct.asn1_type_st, %struct.asn1_type_st* %15, i64 0, i32 0
  %16 = load i32, i32* %type, align 8, !tbaa !42
  %cmp = icmp eq i32 %16, 4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.default
  %value = getelementptr inbounds %struct.asn1_type_st, %struct.asn1_type_st* %15, i64 0, i32 1
  %octet_string = bitcast %union.anon.0* %value to %struct.asn1_string_st**
  br label %return

if.end:                                           ; preds = %sw.default
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 296, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.CMS_get0_content, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 46, i32 noundef 152, i8* noundef null) #5
  br label %return

return:                                           ; preds = %if.end, %if.then, %sw.bb20, %sw.bb16, %sw.bb13, %sw.bb9, %sw.bb5, %sw.bb3, %sw.bb1, %sw.bb
  %retval.0 = phi %struct.asn1_string_st** [ %octet_string, %if.then ], [ null, %if.end ], [ %eContent23, %sw.bb20 ], [ %eContent19, %sw.bb16 ], [ %encryptedContent15, %sw.bb13 ], [ %encryptedContent12, %sw.bb9 ], [ %eContent8, %sw.bb5 ], [ %encryptedContent, %sw.bb3 ], [ %eContent, %sw.bb1 ], [ %data, %sw.bb ]
  ret %struct.asn1_string_st** %retval.0
}

declare %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef) local_unnamed_addr #1

declare %struct.bio_method_st* @BIO_s_null() local_unnamed_addr #1

declare %struct.bio_method_st* @BIO_s_mem() local_unnamed_addr #1

declare %struct.bio_st* @BIO_new_mem_buf(i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define %struct.bio_st* @CMS_dataInit(%struct.CMS_ContentInfo_st* noundef %cms, %struct.bio_st* noundef %icont) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.bio_st* %icont, null
  br i1 %tobool.not, label %if.end, label %if.end3

if.end:                                           ; preds = %entry
  %call = tail call %struct.bio_st* @ossl_cms_content_bio(%struct.CMS_ContentInfo_st* noundef %cms) #6
  %tobool1.not = icmp eq %struct.bio_st* %call, null
  br i1 %tobool1.not, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 161, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.CMS_dataInit, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 46, i32 noundef 127, i8* noundef null) #5
  br label %cleanup

if.end3:                                          ; preds = %entry, %if.end
  %cont.040 = phi %struct.bio_st* [ %call, %if.end ], [ %icont, %entry ]
  %contentType = getelementptr inbounds %struct.CMS_ContentInfo_st, %struct.CMS_ContentInfo_st* %cms, i64 0, i32 0
  %0 = load %struct.asn1_object_st*, %struct.asn1_object_st** %contentType, align 8, !tbaa !20
  %call4 = tail call i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef %0) #5
  switch i32 %call4, label %sw.default [
    i32 21, label %cleanup
    i32 22, label %sw.bb5
    i32 25, label %sw.bb7
    i32 26, label %sw.bb9
    i32 23, label %sw.bb11
    i32 1059, label %sw.bb13
  ]

sw.bb5:                                           ; preds = %if.end3
  %call6 = tail call %struct.bio_st* @ossl_cms_SignedData_init_bio(%struct.CMS_ContentInfo_st* noundef nonnull %cms) #5
  br label %sw.epilog

sw.bb7:                                           ; preds = %if.end3
  %call8 = tail call %struct.bio_st* @ossl_cms_DigestedData_init_bio(%struct.CMS_ContentInfo_st* noundef nonnull %cms) #5
  br label %sw.epilog

sw.bb9:                                           ; preds = %if.end3
  %call10 = tail call %struct.bio_st* @ossl_cms_EncryptedData_init_bio(%struct.CMS_ContentInfo_st* noundef nonnull %cms) #5
  br label %sw.epilog

sw.bb11:                                          ; preds = %if.end3
  %call12 = tail call %struct.bio_st* @ossl_cms_EnvelopedData_init_bio(%struct.CMS_ContentInfo_st* noundef nonnull %cms) #5
  br label %sw.epilog

sw.bb13:                                          ; preds = %if.end3
  %call14 = tail call %struct.bio_st* @ossl_cms_AuthEnvelopedData_init_bio(%struct.CMS_ContentInfo_st* noundef nonnull %cms) #5
  br label %sw.epilog

sw.default:                                       ; preds = %if.end3
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 195, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.CMS_dataInit, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 46, i32 noundef 156, i8* noundef null) #5
  br label %err

sw.epilog:                                        ; preds = %sw.bb13, %sw.bb11, %sw.bb9, %sw.bb7, %sw.bb5
  %cmsbio.0 = phi %struct.bio_st* [ %call14, %sw.bb13 ], [ %call12, %sw.bb11 ], [ %call10, %sw.bb9 ], [ %call8, %sw.bb7 ], [ %call6, %sw.bb5 ]
  %tobool15.not = icmp eq %struct.bio_st* %cmsbio.0, null
  br i1 %tobool15.not, label %err, label %if.then16

if.then16:                                        ; preds = %sw.epilog
  %call17 = tail call %struct.bio_st* @BIO_push(%struct.bio_st* noundef nonnull %cmsbio.0, %struct.bio_st* noundef nonnull %cont.040) #5
  br label %cleanup

err:                                              ; preds = %sw.epilog, %sw.default
  br i1 %tobool.not, label %if.then20, label %cleanup

if.then20:                                        ; preds = %err
  %call21 = tail call i32 @BIO_free(%struct.bio_st* noundef nonnull %cont.040) #5
  br label %cleanup

cleanup:                                          ; preds = %err, %if.then20, %if.end3, %if.then16, %if.then2
  %retval.0 = phi %struct.bio_st* [ %call17, %if.then16 ], [ null, %if.then2 ], [ %cont.040, %if.end3 ], [ null, %if.then20 ], [ null, %err ]
  ret %struct.bio_st* %retval.0
}

declare i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef) local_unnamed_addr #1

declare %struct.bio_st* @ossl_cms_SignedData_init_bio(%struct.CMS_ContentInfo_st* noundef) local_unnamed_addr #1

declare %struct.bio_st* @ossl_cms_DigestedData_init_bio(%struct.CMS_ContentInfo_st* noundef) local_unnamed_addr #1

declare %struct.bio_st* @ossl_cms_EncryptedData_init_bio(%struct.CMS_ContentInfo_st* noundef) local_unnamed_addr #1

declare %struct.bio_st* @ossl_cms_EnvelopedData_init_bio(%struct.CMS_ContentInfo_st* noundef) local_unnamed_addr #1

declare %struct.bio_st* @ossl_cms_AuthEnvelopedData_init_bio(%struct.CMS_ContentInfo_st* noundef) local_unnamed_addr #1

declare %struct.bio_st* @BIO_push(%struct.bio_st* noundef, %struct.bio_st* noundef) local_unnamed_addr #1

declare i32 @BIO_free(%struct.bio_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @CMS_dataFinal(%struct.CMS_ContentInfo_st* noundef %cms, %struct.bio_st* noundef %cmsbio) local_unnamed_addr #0 {
entry:
  %cont = alloca i8*, align 8
  %call = tail call %struct.asn1_string_st** @CMS_get0_content(%struct.CMS_ContentInfo_st* noundef %cms) #6
  %cmp = icmp eq %struct.asn1_string_st** %call, null
  br i1 %cmp, label %cleanup23, label %if.end

if.end:                                           ; preds = %entry
  %0 = load %struct.asn1_string_st*, %struct.asn1_string_st** %call, align 8, !tbaa !4
  %tobool.not = icmp eq %struct.asn1_string_st* %0, null
  br i1 %tobool.not, label %if.end13, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %flags = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %0, i64 0, i32 3
  %1 = load i64, i64* %flags, align 8, !tbaa !25
  %and = and i64 %1, 32
  %tobool1.not = icmp eq i64 %and, 0
  br i1 %tobool1.not, label %if.end13, label %if.then2

if.then2:                                         ; preds = %land.lhs.true
  %2 = bitcast i8** %cont to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #7
  %call3 = tail call %struct.bio_st* @BIO_find_type(%struct.bio_st* noundef %cmsbio, i32 noundef 1025) #5
  %tobool4.not = icmp eq %struct.bio_st* %call3, null
  br i1 %tobool4.not, label %cleanup.thread, label %cleanup

cleanup.thread:                                   ; preds = %if.then2
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 222, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.CMS_dataFinal, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 46, i32 noundef 105, i8* noundef null) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #7
  br label %cleanup23

cleanup:                                          ; preds = %if.then2
  %call7 = call i64 @BIO_ctrl(%struct.bio_st* noundef nonnull %call3, i32 noundef 3, i64 noundef 0, i8* noundef nonnull %2) #5
  call void @BIO_set_flags(%struct.bio_st* noundef nonnull %call3, i32 noundef 512) #5
  %call8 = call i64 @BIO_ctrl(%struct.bio_st* noundef nonnull %call3, i32 noundef 130, i64 noundef 0, i8* noundef null) #5
  %3 = load %struct.asn1_string_st*, %struct.asn1_string_st** %call, align 8, !tbaa !4
  %4 = load i8*, i8** %cont, align 8, !tbaa !4
  %conv = trunc i64 %call7 to i32
  call void @ASN1_STRING_set0(%struct.asn1_string_st* noundef %3, i8* noundef %4, i32 noundef %conv) #5
  %5 = load %struct.asn1_string_st*, %struct.asn1_string_st** %call, align 8, !tbaa !4
  %flags9 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %5, i64 0, i32 3
  %6 = load i64, i64* %flags9, align 8, !tbaa !25
  %and10 = and i64 %6, -33
  store i64 %and10, i64* %flags9, align 8, !tbaa !25
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #7
  br label %if.end13

if.end13:                                         ; preds = %cleanup, %land.lhs.true, %if.end
  %contentType = getelementptr inbounds %struct.CMS_ContentInfo_st, %struct.CMS_ContentInfo_st* %cms, i64 0, i32 0
  %7 = load %struct.asn1_object_st*, %struct.asn1_object_st** %contentType, align 8, !tbaa !20
  %call14 = call i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef %7) #5
  switch i32 %call14, label %sw.default [
    i32 21, label %cleanup23
    i32 26, label %cleanup23
    i32 786, label %cleanup23
    i32 23, label %sw.bb15
    i32 1059, label %sw.bb17
    i32 22, label %sw.bb19
    i32 25, label %sw.bb21
  ]

sw.bb15:                                          ; preds = %if.end13
  %call16 = call i32 @ossl_cms_EnvelopedData_final(%struct.CMS_ContentInfo_st* noundef nonnull %cms, %struct.bio_st* noundef %cmsbio) #5
  br label %cleanup23

sw.bb17:                                          ; preds = %if.end13
  %call18 = call i32 @ossl_cms_AuthEnvelopedData_final(%struct.CMS_ContentInfo_st* noundef nonnull %cms, %struct.bio_st* noundef %cmsbio) #5
  br label %cleanup23

sw.bb19:                                          ; preds = %if.end13
  %call20 = call i32 @ossl_cms_SignedData_final(%struct.CMS_ContentInfo_st* noundef nonnull %cms, %struct.bio_st* noundef %cmsbio) #5
  br label %cleanup23

sw.bb21:                                          ; preds = %if.end13
  %call22 = call i32 @ossl_cms_DigestedData_do_final(%struct.CMS_ContentInfo_st* noundef nonnull %cms, %struct.bio_st* noundef %cmsbio, i32 noundef 0) #5
  br label %cleanup23

sw.default:                                       ; preds = %if.end13
  call void @ERR_new() #5
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 254, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.CMS_dataFinal, i64 0, i64 0)) #5
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 46, i32 noundef 156, i8* noundef null) #5
  br label %cleanup23

cleanup23:                                        ; preds = %cleanup.thread, %if.end13, %if.end13, %if.end13, %entry, %sw.default, %sw.bb21, %sw.bb19, %sw.bb17, %sw.bb15
  %retval.1 = phi i32 [ 0, %sw.default ], [ %call22, %sw.bb21 ], [ %call20, %sw.bb19 ], [ %call18, %sw.bb17 ], [ %call16, %sw.bb15 ], [ 0, %entry ], [ 1, %if.end13 ], [ 1, %if.end13 ], [ 1, %if.end13 ], [ 0, %cleanup.thread ]
  ret i32 %retval.1
}

declare %struct.bio_st* @BIO_find_type(%struct.bio_st* noundef, i32 noundef) local_unnamed_addr #1

declare i64 @BIO_ctrl(%struct.bio_st* noundef, i32 noundef, i64 noundef, i8* noundef) local_unnamed_addr #1

declare void @BIO_set_flags(%struct.bio_st* noundef, i32 noundef) local_unnamed_addr #1

declare void @ASN1_STRING_set0(%struct.asn1_string_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare i32 @ossl_cms_EnvelopedData_final(%struct.CMS_ContentInfo_st* noundef, %struct.bio_st* noundef) local_unnamed_addr #1

declare i32 @ossl_cms_AuthEnvelopedData_final(%struct.CMS_ContentInfo_st* noundef, %struct.bio_st* noundef) local_unnamed_addr #1

declare i32 @ossl_cms_SignedData_final(%struct.CMS_ContentInfo_st* noundef, %struct.bio_st* noundef) local_unnamed_addr #1

declare i32 @ossl_cms_DigestedData_do_final(%struct.CMS_ContentInfo_st* noundef, %struct.bio_st* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define %struct.asn1_object_st* @CMS_get0_eContentType(%struct.CMS_ContentInfo_st* nocapture noundef readonly %cms) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc %struct.asn1_object_st** @cms_get0_econtent_type(%struct.CMS_ContentInfo_st* noundef %cms) #6
  %tobool.not = icmp eq %struct.asn1_object_st** %call, null
  br i1 %tobool.not, label %cleanup, label %if.then

if.then:                                          ; preds = %entry
  %0 = load %struct.asn1_object_st*, %struct.asn1_object_st** %call, align 8, !tbaa !4
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.then
  %retval.0 = phi %struct.asn1_object_st* [ %0, %if.then ], [ null, %entry ]
  ret %struct.asn1_object_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.asn1_object_st** @cms_get0_econtent_type(%struct.CMS_ContentInfo_st* nocapture noundef readonly %cms) unnamed_addr #0 {
entry:
  %contentType = getelementptr inbounds %struct.CMS_ContentInfo_st, %struct.CMS_ContentInfo_st* %cms, i64 0, i32 0
  %0 = load %struct.asn1_object_st*, %struct.asn1_object_st** %contentType, align 8, !tbaa !20
  %call = tail call i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef %0) #5
  switch i32 %call, label %sw.default [
    i32 22, label %sw.bb
    i32 23, label %sw.bb1
    i32 25, label %sw.bb4
    i32 26, label %sw.bb8
    i32 1059, label %sw.bb12
    i32 205, label %sw.bb15
    i32 786, label %sw.bb19
  ]

sw.bb:                                            ; preds = %entry
  %d = getelementptr inbounds %struct.CMS_ContentInfo_st, %struct.CMS_ContentInfo_st* %cms, i64 0, i32 1
  %signedData = bitcast %union.anon* %d to %struct.CMS_SignedData_st**
  %1 = load %struct.CMS_SignedData_st*, %struct.CMS_SignedData_st** %signedData, align 8, !tbaa !14
  %encapContentInfo = getelementptr inbounds %struct.CMS_SignedData_st, %struct.CMS_SignedData_st* %1, i64 0, i32 2
  %2 = load %struct.CMS_EncapsulatedContentInfo_st*, %struct.CMS_EncapsulatedContentInfo_st** %encapContentInfo, align 8, !tbaa !30
  %eContentType = getelementptr inbounds %struct.CMS_EncapsulatedContentInfo_st, %struct.CMS_EncapsulatedContentInfo_st* %2, i64 0, i32 0
  br label %return

sw.bb1:                                           ; preds = %entry
  %d2 = getelementptr inbounds %struct.CMS_ContentInfo_st, %struct.CMS_ContentInfo_st* %cms, i64 0, i32 1
  %envelopedData = bitcast %union.anon* %d2 to %struct.CMS_EnvelopedData_st**
  %3 = load %struct.CMS_EnvelopedData_st*, %struct.CMS_EnvelopedData_st** %envelopedData, align 8, !tbaa !14
  %encryptedContentInfo = getelementptr inbounds %struct.CMS_EnvelopedData_st, %struct.CMS_EnvelopedData_st* %3, i64 0, i32 3
  %4 = load %struct.CMS_EncryptedContentInfo_st*, %struct.CMS_EncryptedContentInfo_st** %encryptedContentInfo, align 8, !tbaa !32
  %contentType3 = getelementptr inbounds %struct.CMS_EncryptedContentInfo_st, %struct.CMS_EncryptedContentInfo_st* %4, i64 0, i32 0
  br label %return

sw.bb4:                                           ; preds = %entry
  %d5 = getelementptr inbounds %struct.CMS_ContentInfo_st, %struct.CMS_ContentInfo_st* %cms, i64 0, i32 1
  %digestedData = bitcast %union.anon* %d5 to %struct.CMS_DigestedData_st**
  %5 = load %struct.CMS_DigestedData_st*, %struct.CMS_DigestedData_st** %digestedData, align 8, !tbaa !14
  %encapContentInfo6 = getelementptr inbounds %struct.CMS_DigestedData_st, %struct.CMS_DigestedData_st* %5, i64 0, i32 2
  %6 = load %struct.CMS_EncapsulatedContentInfo_st*, %struct.CMS_EncapsulatedContentInfo_st** %encapContentInfo6, align 8, !tbaa !33
  %eContentType7 = getelementptr inbounds %struct.CMS_EncapsulatedContentInfo_st, %struct.CMS_EncapsulatedContentInfo_st* %6, i64 0, i32 0
  br label %return

sw.bb8:                                           ; preds = %entry
  %d9 = getelementptr inbounds %struct.CMS_ContentInfo_st, %struct.CMS_ContentInfo_st* %cms, i64 0, i32 1
  %encryptedData = bitcast %union.anon* %d9 to %struct.CMS_EncryptedData_st**
  %7 = load %struct.CMS_EncryptedData_st*, %struct.CMS_EncryptedData_st** %encryptedData, align 8, !tbaa !14
  %encryptedContentInfo10 = getelementptr inbounds %struct.CMS_EncryptedData_st, %struct.CMS_EncryptedData_st* %7, i64 0, i32 1
  %8 = load %struct.CMS_EncryptedContentInfo_st*, %struct.CMS_EncryptedContentInfo_st** %encryptedContentInfo10, align 8, !tbaa !35
  %contentType11 = getelementptr inbounds %struct.CMS_EncryptedContentInfo_st, %struct.CMS_EncryptedContentInfo_st* %8, i64 0, i32 0
  br label %return

sw.bb12:                                          ; preds = %entry
  %d13 = getelementptr inbounds %struct.CMS_ContentInfo_st, %struct.CMS_ContentInfo_st* %cms, i64 0, i32 1
  %authEnvelopedData = bitcast %union.anon* %d13 to %struct.CMS_AuthEnvelopedData_st**
  %9 = load %struct.CMS_AuthEnvelopedData_st*, %struct.CMS_AuthEnvelopedData_st** %authEnvelopedData, align 8, !tbaa !14
  %authEncryptedContentInfo = getelementptr inbounds %struct.CMS_AuthEnvelopedData_st, %struct.CMS_AuthEnvelopedData_st* %9, i64 0, i32 3
  %10 = load %struct.CMS_EncryptedContentInfo_st*, %struct.CMS_EncryptedContentInfo_st** %authEncryptedContentInfo, align 8, !tbaa !37
  %contentType14 = getelementptr inbounds %struct.CMS_EncryptedContentInfo_st, %struct.CMS_EncryptedContentInfo_st* %10, i64 0, i32 0
  br label %return

sw.bb15:                                          ; preds = %entry
  %d16 = getelementptr inbounds %struct.CMS_ContentInfo_st, %struct.CMS_ContentInfo_st* %cms, i64 0, i32 1
  %authenticatedData = bitcast %union.anon* %d16 to %struct.CMS_AuthenticatedData_st**
  %11 = load %struct.CMS_AuthenticatedData_st*, %struct.CMS_AuthenticatedData_st** %authenticatedData, align 8, !tbaa !14
  %encapContentInfo17 = getelementptr inbounds %struct.CMS_AuthenticatedData_st, %struct.CMS_AuthenticatedData_st* %11, i64 0, i32 5
  %12 = load %struct.CMS_EncapsulatedContentInfo_st*, %struct.CMS_EncapsulatedContentInfo_st** %encapContentInfo17, align 8, !tbaa !38
  %eContentType18 = getelementptr inbounds %struct.CMS_EncapsulatedContentInfo_st, %struct.CMS_EncapsulatedContentInfo_st* %12, i64 0, i32 0
  br label %return

sw.bb19:                                          ; preds = %entry
  %d20 = getelementptr inbounds %struct.CMS_ContentInfo_st, %struct.CMS_ContentInfo_st* %cms, i64 0, i32 1
  %compressedData = bitcast %union.anon* %d20 to %struct.CMS_CompressedData_st**
  %13 = load %struct.CMS_CompressedData_st*, %struct.CMS_CompressedData_st** %compressedData, align 8, !tbaa !14
  %encapContentInfo21 = getelementptr inbounds %struct.CMS_CompressedData_st, %struct.CMS_CompressedData_st* %13, i64 0, i32 3
  %14 = load %struct.CMS_EncapsulatedContentInfo_st*, %struct.CMS_EncapsulatedContentInfo_st** %encapContentInfo21, align 8, !tbaa !40
  %eContentType22 = getelementptr inbounds %struct.CMS_EncapsulatedContentInfo_st, %struct.CMS_EncapsulatedContentInfo_st* %14, i64 0, i32 0
  br label %return

sw.default:                                       ; preds = %entry
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 333, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.cms_get0_econtent_type, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 46, i32 noundef 152, i8* noundef null) #5
  br label %return

return:                                           ; preds = %sw.default, %sw.bb19, %sw.bb15, %sw.bb12, %sw.bb8, %sw.bb4, %sw.bb1, %sw.bb
  %retval.0 = phi %struct.asn1_object_st** [ null, %sw.default ], [ %eContentType22, %sw.bb19 ], [ %eContentType18, %sw.bb15 ], [ %contentType14, %sw.bb12 ], [ %contentType11, %sw.bb8 ], [ %eContentType7, %sw.bb4 ], [ %contentType3, %sw.bb1 ], [ %eContentType, %sw.bb ]
  ret %struct.asn1_object_st** %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @CMS_set1_eContentType(%struct.CMS_ContentInfo_st* nocapture noundef readonly %cms, %struct.asn1_object_st* noundef %oid) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc %struct.asn1_object_st** @cms_get0_econtent_type(%struct.CMS_ContentInfo_st* noundef %cms) #6
  %cmp = icmp eq %struct.asn1_object_st** %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %cmp1 = icmp eq %struct.asn1_object_st* %oid, null
  br i1 %cmp1, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.end
  %call4 = tail call %struct.asn1_object_st* @OBJ_dup(%struct.asn1_object_st* noundef nonnull %oid) #5
  %cmp5 = icmp eq %struct.asn1_object_st* %call4, null
  br i1 %cmp5, label %cleanup, label %if.end7

if.end7:                                          ; preds = %if.end3
  %0 = load %struct.asn1_object_st*, %struct.asn1_object_st** %call, align 8, !tbaa !4
  tail call void @ASN1_OBJECT_free(%struct.asn1_object_st* noundef %0) #5
  store %struct.asn1_object_st* %call4, %struct.asn1_object_st** %call, align 8, !tbaa !4
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end, %entry, %if.end7
  %retval.0 = phi i32 [ 1, %if.end7 ], [ 0, %entry ], [ 1, %if.end ], [ 0, %if.end3 ]
  ret i32 %retval.0
}

declare %struct.asn1_object_st* @OBJ_dup(%struct.asn1_object_st* noundef) local_unnamed_addr #1

declare void @ASN1_OBJECT_free(%struct.asn1_object_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @CMS_is_detached(%struct.CMS_ContentInfo_st* noundef %cms) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.asn1_string_st** @CMS_get0_content(%struct.CMS_ContentInfo_st* noundef %cms) #6
  %cmp = icmp eq %struct.asn1_string_st** %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %0 = load %struct.asn1_string_st*, %struct.asn1_string_st** %call, align 8, !tbaa !4
  %cmp1.not = icmp eq %struct.asn1_string_st* %0, null
  %. = zext i1 %cmp1.not to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry
  %retval.0 = phi i32 [ -1, %entry ], [ %., %if.end ]
  ret i32 %retval.0
}

declare void @ASN1_OCTET_STRING_free(%struct.asn1_string_st* noundef) local_unnamed_addr #1

declare %struct.asn1_string_st* @ASN1_OCTET_STRING_new() local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define %struct.bio_st* @ossl_cms_DigestAlgorithm_init_bio(%struct.X509_algor_st* noundef %digestAlgorithm, %struct.CMS_CTX_st* noundef %ctx) local_unnamed_addr #0 {
entry:
  %digestoid = alloca %struct.asn1_object_st*, align 8
  %alg = alloca [50 x i8], align 16
  %0 = bitcast %struct.asn1_object_st** %digestoid to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7
  %1 = getelementptr inbounds [50 x i8], [50 x i8]* %alg, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 50, i8* nonnull %1) #7
  call void @X509_ALGOR_get0(%struct.asn1_object_st** noundef nonnull %digestoid, i32* noundef null, i8** noundef null, %struct.X509_algor_st* noundef %digestAlgorithm) #5
  %2 = load %struct.asn1_object_st*, %struct.asn1_object_st** %digestoid, align 8, !tbaa !4
  %call = call i32 @OBJ_obj2txt(i8* noundef nonnull %1, i32 noundef 50, %struct.asn1_object_st* noundef %2, i32 noundef 0) #5
  %call1 = call i32 @ERR_set_mark() #5
  %call2 = call %struct.ossl_lib_ctx_st* @ossl_cms_ctx_get0_libctx(%struct.CMS_CTX_st* noundef %ctx) #6
  %call4 = call i8* @ossl_cms_ctx_get0_propq(%struct.CMS_CTX_st* noundef %ctx) #6
  %call5 = call %struct.evp_md_st* @EVP_MD_fetch(%struct.ossl_lib_ctx_st* noundef %call2, i8* noundef nonnull %1, i8* noundef %call4) #5
  %cmp.not = icmp eq %struct.evp_md_st* %call5, null
  br i1 %cmp.not, label %if.end, label %if.end12

if.end:                                           ; preds = %entry
  %3 = load %struct.asn1_object_st*, %struct.asn1_object_st** %digestoid, align 8, !tbaa !4
  %call6 = call i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef %3) #5
  %call7 = call i8* @OBJ_nid2sn(i32 noundef %call6) #5
  %call8 = call %struct.evp_md_st* @EVP_get_digestbyname(i8* noundef %call7) #5
  %cmp9 = icmp eq %struct.evp_md_st* %call8, null
  br i1 %cmp9, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.end
  %call11 = call i32 @ERR_clear_last_mark() #5
  br label %err

if.end12:                                         ; preds = %entry, %if.end
  %digest.038 = phi %struct.evp_md_st* [ %call8, %if.end ], [ %call5, %entry ]
  %call13 = call i32 @ERR_pop_to_mark() #5
  %call14 = call %struct.bio_method_st* @BIO_f_md() #5
  %call15 = call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call14) #5
  %cmp16 = icmp eq %struct.bio_st* %call15, null
  br i1 %cmp16, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end12
  %4 = bitcast %struct.evp_md_st* %digest.038 to i8*
  %call17 = call i64 @BIO_ctrl(%struct.bio_st* noundef nonnull %call15, i32 noundef 111, i64 noundef 0, i8* noundef nonnull %4) #5
  %tobool.not = icmp eq i64 %call17, 0
  br i1 %tobool.not, label %err, label %if.end19

if.end19:                                         ; preds = %lor.lhs.false
  call void @EVP_MD_free(%struct.evp_md_st* noundef %call5) #5
  br label %cleanup

err:                                              ; preds = %if.end12, %lor.lhs.false, %if.then10
  %.sink39 = phi i32 [ 426, %if.then10 ], [ 433, %lor.lhs.false ], [ 433, %if.end12 ]
  %.sink = phi i32 [ 149, %if.then10 ], [ 119, %lor.lhs.false ], [ 119, %if.end12 ]
  %mdbio.0 = phi %struct.bio_st* [ null, %if.then10 ], [ %call15, %lor.lhs.false ], [ %call15, %if.end12 ]
  call void @ERR_new() #5
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef %.sink39, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.ossl_cms_DigestAlgorithm_init_bio, i64 0, i64 0)) #5
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 46, i32 noundef %.sink, i8* noundef null) #5
  call void @EVP_MD_free(%struct.evp_md_st* noundef %call5) #5
  %call20 = call i32 @BIO_free(%struct.bio_st* noundef %mdbio.0) #5
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end19
  %retval.0 = phi %struct.bio_st* [ null, %err ], [ %call15, %if.end19 ]
  call void @llvm.lifetime.end.p0i8(i64 50, i8* nonnull %1) #7
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7
  ret %struct.bio_st* %retval.0
}

declare void @X509_ALGOR_get0(%struct.asn1_object_st** noundef, i32* noundef, i8** noundef, %struct.X509_algor_st* noundef) local_unnamed_addr #1

declare i32 @OBJ_obj2txt(i8* noundef, i32 noundef, %struct.asn1_object_st* noundef, i32 noundef) local_unnamed_addr #1

declare i32 @ERR_set_mark() local_unnamed_addr #1

declare %struct.evp_md_st* @EVP_MD_fetch(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare %struct.evp_md_st* @EVP_get_digestbyname(i8* noundef) local_unnamed_addr #1

declare i8* @OBJ_nid2sn(i32 noundef) local_unnamed_addr #1

declare i32 @ERR_clear_last_mark() local_unnamed_addr #1

declare i32 @ERR_pop_to_mark() local_unnamed_addr #1

declare %struct.bio_method_st* @BIO_f_md() local_unnamed_addr #1

declare void @EVP_MD_free(%struct.evp_md_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_cms_DigestAlgorithm_find_ctx(%struct.evp_md_ctx_st* noundef %mctx, %struct.bio_st* noundef %chain, %struct.X509_algor_st* noundef %mdalg) local_unnamed_addr #0 {
entry:
  %mdoid = alloca %struct.asn1_object_st*, align 8
  %mtmp = alloca %struct.evp_md_ctx_st*, align 8
  %0 = bitcast %struct.asn1_object_st** %mdoid to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7
  call void @X509_ALGOR_get0(%struct.asn1_object_st** noundef nonnull %mdoid, i32* noundef null, i8** noundef null, %struct.X509_algor_st* noundef %mdalg) #5
  %1 = load %struct.asn1_object_st*, %struct.asn1_object_st** %mdoid, align 8, !tbaa !4
  %call = call i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef %1) #5
  %2 = bitcast %struct.evp_md_ctx_st** %mtmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #7
  %call125 = call %struct.bio_st* @BIO_find_type(%struct.bio_st* noundef %chain, i32 noundef 520) #5
  %cmp26 = icmp eq %struct.bio_st* %call125, null
  br i1 %cmp26, label %if.then, label %if.end

if.then:                                          ; preds = %cleanup, %entry
  call void @ERR_new() #5
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 458, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.ossl_cms_DigestAlgorithm_find_ctx, i64 0, i64 0)) #5
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 46, i32 noundef 131, i8* noundef null) #5
  br label %cleanup13

if.end:                                           ; preds = %entry, %cleanup
  %call127 = phi %struct.bio_st* [ %call1, %cleanup ], [ %call125, %entry ]
  %call2 = call i64 @BIO_ctrl(%struct.bio_st* noundef nonnull %call127, i32 noundef 120, i64 noundef 0, i8* noundef nonnull %2) #5
  %3 = load %struct.evp_md_ctx_st*, %struct.evp_md_ctx_st** %mtmp, align 8, !tbaa !4
  %call3 = call %struct.evp_md_st* @EVP_MD_CTX_get0_md(%struct.evp_md_ctx_st* noundef %3) #5
  %call4 = call i32 @EVP_MD_get_type(%struct.evp_md_st* noundef %call3) #5
  %cmp5 = icmp eq i32 %call4, %call
  br i1 %cmp5, label %if.then9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %4 = load %struct.evp_md_ctx_st*, %struct.evp_md_ctx_st** %mtmp, align 8, !tbaa !4
  %call6 = call %struct.evp_md_st* @EVP_MD_CTX_get0_md(%struct.evp_md_ctx_st* noundef %4) #5
  %call7 = call i32 @EVP_MD_get_pkey_type(%struct.evp_md_st* noundef %call6) #5
  %cmp8 = icmp eq i32 %call7, %call
  br i1 %cmp8, label %if.then9, label %cleanup

if.then9:                                         ; preds = %lor.lhs.false, %if.end
  %5 = load %struct.evp_md_ctx_st*, %struct.evp_md_ctx_st** %mtmp, align 8, !tbaa !4
  %call10 = call i32 @EVP_MD_CTX_copy_ex(%struct.evp_md_ctx_st* noundef %mctx, %struct.evp_md_ctx_st* noundef %5) #5
  br label %cleanup13

cleanup:                                          ; preds = %lor.lhs.false
  %call12 = call %struct.bio_st* @BIO_next(%struct.bio_st* noundef nonnull %call127) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #7
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #7
  %call1 = call %struct.bio_st* @BIO_find_type(%struct.bio_st* noundef %call12, i32 noundef 520) #5
  %cmp = icmp eq %struct.bio_st* %call1, null
  br i1 %cmp, label %if.then, label %if.end

cleanup13:                                        ; preds = %if.then, %if.then9
  %retval.1.ph = phi i32 [ %call10, %if.then9 ], [ 0, %if.then ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #7
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7
  ret i32 %retval.1.ph
}

declare i32 @EVP_MD_get_type(%struct.evp_md_st* noundef) local_unnamed_addr #1

declare %struct.evp_md_st* @EVP_MD_CTX_get0_md(%struct.evp_md_ctx_st* noundef) local_unnamed_addr #1

declare i32 @EVP_MD_get_pkey_type(%struct.evp_md_st* noundef) local_unnamed_addr #1

declare i32 @EVP_MD_CTX_copy_ex(%struct.evp_md_ctx_st* noundef, %struct.evp_md_ctx_st* noundef) local_unnamed_addr #1

declare %struct.bio_st* @BIO_next(%struct.bio_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define %struct.CMS_CertificateChoices* @CMS_add0_CertificateChoices(%struct.CMS_ContentInfo_st* nocapture noundef readonly %cms) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc %struct.stack_st_CMS_CertificateChoices** @cms_get0_certificate_choices(%struct.CMS_ContentInfo_st* noundef %cms) #6
  %cmp = icmp eq %struct.stack_st_CMS_CertificateChoices** %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %0 = load %struct.stack_st_CMS_CertificateChoices*, %struct.stack_st_CMS_CertificateChoices** %call, align 8, !tbaa !4
  %cmp1 = icmp eq %struct.stack_st_CMS_CertificateChoices* %0, null
  br i1 %cmp1, label %if.end4, label %if.end7

if.end4:                                          ; preds = %if.end
  %call3 = tail call fastcc %struct.stack_st_CMS_CertificateChoices* @sk_CMS_CertificateChoices_new_null() #6
  store %struct.stack_st_CMS_CertificateChoices* %call3, %struct.stack_st_CMS_CertificateChoices** %call, align 8, !tbaa !4
  %cmp5 = icmp eq %struct.stack_st_CMS_CertificateChoices* %call3, null
  br i1 %cmp5, label %cleanup, label %if.end7

if.end7:                                          ; preds = %if.end, %if.end4
  %call8 = tail call %struct.ASN1_ITEM_st* @CMS_CertificateChoices_it() #5
  %call9 = tail call %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef %call8) #5
  %1 = bitcast %struct.ASN1_VALUE_st* %call9 to %struct.CMS_CertificateChoices*
  %tobool.not = icmp eq %struct.ASN1_VALUE_st* %call9, null
  br i1 %tobool.not, label %cleanup, label %if.end11

if.end11:                                         ; preds = %if.end7
  %2 = load %struct.stack_st_CMS_CertificateChoices*, %struct.stack_st_CMS_CertificateChoices** %call, align 8, !tbaa !4
  %call12 = tail call fastcc i32 @sk_CMS_CertificateChoices_push(%struct.stack_st_CMS_CertificateChoices* noundef %2, %struct.CMS_CertificateChoices* noundef nonnull %1) #6
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.then14, label %cleanup

if.then14:                                        ; preds = %if.end11
  %call15 = tail call %struct.ASN1_ITEM_st* @CMS_CertificateChoices_it() #5
  tail call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef nonnull %call9, %struct.ASN1_ITEM_st* noundef %call15) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.end7, %if.end4, %entry, %if.then14
  %retval.0 = phi %struct.CMS_CertificateChoices* [ null, %if.then14 ], [ null, %entry ], [ null, %if.end4 ], [ null, %if.end7 ], [ %1, %if.end11 ]
  ret %struct.CMS_CertificateChoices* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.stack_st_CMS_CertificateChoices* @sk_CMS_CertificateChoices_new_null() unnamed_addr #0 {
entry:
  %call = tail call %struct.stack_st* @OPENSSL_sk_new_null() #5
  %0 = bitcast %struct.stack_st* %call to %struct.stack_st_CMS_CertificateChoices*
  ret %struct.stack_st_CMS_CertificateChoices* %0
}

declare %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef) local_unnamed_addr #1

declare %struct.ASN1_ITEM_st* @CMS_CertificateChoices_it() local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @sk_CMS_CertificateChoices_push(%struct.stack_st_CMS_CertificateChoices* noundef %sk, %struct.CMS_CertificateChoices* noundef %ptr) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_CMS_CertificateChoices* %sk to %struct.stack_st*
  %1 = bitcast %struct.CMS_CertificateChoices* %ptr to i8*
  %call = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %0, i8* noundef %1) #5
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @CMS_add0_cert(%struct.CMS_ContentInfo_st* nocapture noundef readonly %cms, %struct.x509_st* noundef %cert) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc %struct.stack_st_CMS_CertificateChoices** @cms_get0_certificate_choices(%struct.CMS_ContentInfo_st* noundef %cms) #6
  %cmp = icmp eq %struct.stack_st_CMS_CertificateChoices** %call, null
  br i1 %cmp, label %cleanup, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %0 = load %struct.stack_st_CMS_CertificateChoices*, %struct.stack_st_CMS_CertificateChoices** %call, align 8, !tbaa !4
  %call132 = tail call fastcc i32 @sk_CMS_CertificateChoices_num(%struct.stack_st_CMS_CertificateChoices* noundef %0) #6
  %cmp233 = icmp sgt i32 %call132, 0
  br i1 %cmp233, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond.preheader, %for.inc
  %i.034 = phi i32 [ %inc, %for.inc ], [ 0, %for.cond.preheader ]
  %1 = load %struct.stack_st_CMS_CertificateChoices*, %struct.stack_st_CMS_CertificateChoices** %call, align 8, !tbaa !4
  %call3 = tail call fastcc %struct.CMS_CertificateChoices* @sk_CMS_CertificateChoices_value(%struct.stack_st_CMS_CertificateChoices* noundef %1, i32 noundef %i.034) #6
  %type = getelementptr inbounds %struct.CMS_CertificateChoices, %struct.CMS_CertificateChoices* %call3, i64 0, i32 0
  %2 = load i32, i32* %type, align 8, !tbaa !11
  %cmp4 = icmp eq i32 %2, 0
  br i1 %cmp4, label %if.then5, label %for.inc

if.then5:                                         ; preds = %for.body
  %certificate = getelementptr inbounds %struct.CMS_CertificateChoices, %struct.CMS_CertificateChoices* %call3, i64 0, i32 1, i32 0
  %3 = load %struct.x509_st*, %struct.x509_st** %certificate, align 8, !tbaa !14
  %call6 = tail call i32 @X509_cmp(%struct.x509_st* noundef %3, %struct.x509_st* noundef %cert) #5
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %if.then7, label %for.inc

if.then7:                                         ; preds = %if.then5
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 533, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.CMS_add0_cert, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 46, i32 noundef 175, i8* noundef null) #5
  br label %cleanup

for.inc:                                          ; preds = %for.body, %if.then5
  %inc = add nuw nsw i32 %i.034, 1
  %4 = load %struct.stack_st_CMS_CertificateChoices*, %struct.stack_st_CMS_CertificateChoices** %call, align 8, !tbaa !4
  %call1 = tail call fastcc i32 @sk_CMS_CertificateChoices_num(%struct.stack_st_CMS_CertificateChoices* noundef %4) #6
  %cmp2 = icmp slt i32 %inc, %call1
  br i1 %cmp2, label %for.body, label %for.end, !llvm.loop !44

for.end:                                          ; preds = %for.inc, %for.cond.preheader
  %call10 = tail call %struct.CMS_CertificateChoices* @CMS_add0_CertificateChoices(%struct.CMS_ContentInfo_st* noundef %cms) #6
  %tobool11.not = icmp eq %struct.CMS_CertificateChoices* %call10, null
  br i1 %tobool11.not, label %cleanup, label %if.end13

if.end13:                                         ; preds = %for.end
  %type14 = getelementptr inbounds %struct.CMS_CertificateChoices, %struct.CMS_CertificateChoices* %call10, i64 0, i32 0
  store i32 0, i32* %type14, align 8, !tbaa !11
  %certificate16 = getelementptr inbounds %struct.CMS_CertificateChoices, %struct.CMS_CertificateChoices* %call10, i64 0, i32 1, i32 0
  store %struct.x509_st* %cert, %struct.x509_st** %certificate16, align 8, !tbaa !14
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry, %if.end13, %if.then7
  %retval.0 = phi i32 [ 0, %if.then7 ], [ 1, %if.end13 ], [ 0, %entry ], [ 0, %for.end ]
  ret i32 %retval.0
}

declare i32 @X509_cmp(%struct.x509_st* noundef, %struct.x509_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @CMS_add1_cert(%struct.CMS_ContentInfo_st* nocapture noundef readonly %cms, %struct.x509_st* noundef %cert) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @CMS_add0_cert(%struct.CMS_ContentInfo_st* noundef %cms, %struct.x509_st* noundef %cert) #6
  %cmp = icmp sgt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = tail call i32 @X509_up_ref(%struct.x509_st* noundef %cert) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 %call
}

declare i32 @X509_up_ref(%struct.x509_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define %struct.CMS_RevocationInfoChoice_st* @CMS_add0_RevocationInfoChoice(%struct.CMS_ContentInfo_st* nocapture noundef readonly %cms) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc %struct.stack_st_CMS_RevocationInfoChoice** @cms_get0_revocation_choices(%struct.CMS_ContentInfo_st* noundef %cms) #6
  %cmp = icmp eq %struct.stack_st_CMS_RevocationInfoChoice** %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %0 = load %struct.stack_st_CMS_RevocationInfoChoice*, %struct.stack_st_CMS_RevocationInfoChoice** %call, align 8, !tbaa !4
  %cmp1 = icmp eq %struct.stack_st_CMS_RevocationInfoChoice* %0, null
  br i1 %cmp1, label %if.end4, label %if.end7

if.end4:                                          ; preds = %if.end
  %call3 = tail call %struct.stack_st* @OPENSSL_sk_new_null() #5
  %1 = bitcast %struct.stack_st_CMS_RevocationInfoChoice** %call to %struct.stack_st**
  store %struct.stack_st* %call3, %struct.stack_st** %1, align 8, !tbaa !4
  %cmp5 = icmp eq %struct.stack_st* %call3, null
  br i1 %cmp5, label %cleanup, label %if.end7

if.end7:                                          ; preds = %if.end, %if.end4
  %call8 = tail call %struct.ASN1_ITEM_st* @CMS_RevocationInfoChoice_it() #5
  %call9 = tail call %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef %call8) #5
  %cmp10 = icmp eq %struct.ASN1_VALUE_st* %call9, null
  br i1 %cmp10, label %cleanup, label %if.end12

if.end12:                                         ; preds = %if.end7
  %2 = bitcast %struct.ASN1_VALUE_st* %call9 to %struct.CMS_RevocationInfoChoice_st*
  %3 = load %struct.stack_st_CMS_RevocationInfoChoice*, %struct.stack_st_CMS_RevocationInfoChoice** %call, align 8, !tbaa !4
  %call13 = tail call fastcc %struct.stack_st* @ossl_check_CMS_RevocationInfoChoice_sk_type(%struct.stack_st_CMS_RevocationInfoChoice* noundef %3) #6
  %4 = bitcast %struct.ASN1_VALUE_st* %call9 to i8*
  %call15 = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call13, i8* noundef nonnull %4) #5
  %tobool.not = icmp eq i32 %call15, 0
  br i1 %tobool.not, label %if.then16, label %cleanup

if.then16:                                        ; preds = %if.end12
  %call17 = tail call %struct.ASN1_ITEM_st* @CMS_RevocationInfoChoice_it() #5
  tail call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef nonnull %call9, %struct.ASN1_ITEM_st* noundef %call17) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.end7, %if.end4, %entry, %if.then16
  %retval.0 = phi %struct.CMS_RevocationInfoChoice_st* [ null, %if.then16 ], [ null, %entry ], [ null, %if.end4 ], [ null, %if.end7 ], [ %2, %if.end12 ]
  ret %struct.CMS_RevocationInfoChoice_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.stack_st_CMS_RevocationInfoChoice** @cms_get0_revocation_choices(%struct.CMS_ContentInfo_st* nocapture noundef readonly %cms) unnamed_addr #0 {
entry:
  %contentType = getelementptr inbounds %struct.CMS_ContentInfo_st, %struct.CMS_ContentInfo_st* %cms, i64 0, i32 0
  %0 = load %struct.asn1_object_st*, %struct.asn1_object_st** %contentType, align 8, !tbaa !20
  %call = tail call i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef %0) #5
  switch i32 %call, label %sw.default [
    i32 22, label %sw.bb
    i32 23, label %sw.bb1
    i32 1059, label %sw.bb7
  ]

sw.bb:                                            ; preds = %entry
  %d = getelementptr inbounds %struct.CMS_ContentInfo_st, %struct.CMS_ContentInfo_st* %cms, i64 0, i32 1
  %signedData = bitcast %union.anon* %d to %struct.CMS_SignedData_st**
  %1 = load %struct.CMS_SignedData_st*, %struct.CMS_SignedData_st** %signedData, align 8, !tbaa !14
  %crls = getelementptr inbounds %struct.CMS_SignedData_st, %struct.CMS_SignedData_st* %1, i64 0, i32 4
  br label %return

sw.bb1:                                           ; preds = %entry
  %d2 = getelementptr inbounds %struct.CMS_ContentInfo_st, %struct.CMS_ContentInfo_st* %cms, i64 0, i32 1
  %envelopedData = bitcast %union.anon* %d2 to %struct.CMS_EnvelopedData_st**
  %2 = load %struct.CMS_EnvelopedData_st*, %struct.CMS_EnvelopedData_st** %envelopedData, align 8, !tbaa !14
  %originatorInfo = getelementptr inbounds %struct.CMS_EnvelopedData_st, %struct.CMS_EnvelopedData_st* %2, i64 0, i32 1
  %3 = load %struct.CMS_OriginatorInfo_st*, %struct.CMS_OriginatorInfo_st** %originatorInfo, align 8, !tbaa !21
  %cmp = icmp eq %struct.CMS_OriginatorInfo_st* %3, null
  %crls6 = getelementptr inbounds %struct.CMS_OriginatorInfo_st, %struct.CMS_OriginatorInfo_st* %3, i64 0, i32 1
  %spec.select = select i1 %cmp, %struct.stack_st_CMS_RevocationInfoChoice** null, %struct.stack_st_CMS_RevocationInfoChoice** %crls6
  br label %return

sw.bb7:                                           ; preds = %entry
  %d8 = getelementptr inbounds %struct.CMS_ContentInfo_st, %struct.CMS_ContentInfo_st* %cms, i64 0, i32 1
  %authEnvelopedData = bitcast %union.anon* %d8 to %struct.CMS_AuthEnvelopedData_st**
  %4 = load %struct.CMS_AuthEnvelopedData_st*, %struct.CMS_AuthEnvelopedData_st** %authEnvelopedData, align 8, !tbaa !14
  %originatorInfo9 = getelementptr inbounds %struct.CMS_AuthEnvelopedData_st, %struct.CMS_AuthEnvelopedData_st* %4, i64 0, i32 1
  %5 = load %struct.CMS_OriginatorInfo_st*, %struct.CMS_OriginatorInfo_st** %originatorInfo9, align 8, !tbaa !23
  %cmp10 = icmp eq %struct.CMS_OriginatorInfo_st* %5, null
  %crls16 = getelementptr inbounds %struct.CMS_OriginatorInfo_st, %struct.CMS_OriginatorInfo_st* %5, i64 0, i32 1
  %spec.select23 = select i1 %cmp10, %struct.stack_st_CMS_RevocationInfoChoice** null, %struct.stack_st_CMS_RevocationInfoChoice** %crls16
  br label %return

sw.default:                                       ; preds = %entry
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 574, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.cms_get0_revocation_choices, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 46, i32 noundef 152, i8* noundef null) #5
  br label %return

return:                                           ; preds = %sw.bb7, %sw.bb1, %sw.default, %sw.bb
  %retval.0 = phi %struct.stack_st_CMS_RevocationInfoChoice** [ null, %sw.default ], [ %crls, %sw.bb ], [ %spec.select, %sw.bb1 ], [ %spec.select23, %sw.bb7 ]
  ret %struct.stack_st_CMS_RevocationInfoChoice** %retval.0
}

declare %struct.stack_st* @OPENSSL_sk_new_null() local_unnamed_addr #1

declare %struct.ASN1_ITEM_st* @CMS_RevocationInfoChoice_it() local_unnamed_addr #1

declare i32 @OPENSSL_sk_push(%struct.stack_st* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_CMS_RevocationInfoChoice_sk_type(%struct.stack_st_CMS_RevocationInfoChoice* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_CMS_RevocationInfoChoice* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

; Function Attrs: noinline nounwind uwtable
define i32 @CMS_add0_crl(%struct.CMS_ContentInfo_st* nocapture noundef readonly %cms, %struct.X509_crl_st* noundef %crl) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.CMS_RevocationInfoChoice_st* @CMS_add0_RevocationInfoChoice(%struct.CMS_ContentInfo_st* noundef %cms) #6
  %tobool.not = icmp eq %struct.CMS_RevocationInfoChoice_st* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct.CMS_RevocationInfoChoice_st, %struct.CMS_RevocationInfoChoice_st* %call, i64 0, i32 0
  store i32 0, i32* %type, align 8, !tbaa !45
  %crl1 = getelementptr inbounds %struct.CMS_RevocationInfoChoice_st, %struct.CMS_RevocationInfoChoice_st* %call, i64 0, i32 1, i32 0
  store %struct.X509_crl_st* %crl, %struct.X509_crl_st** %crl1, align 8, !tbaa !14
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @CMS_add1_crl(%struct.CMS_ContentInfo_st* nocapture noundef readonly %cms, %struct.X509_crl_st* noundef %crl) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @CMS_add0_crl(%struct.CMS_ContentInfo_st* noundef %cms, %struct.X509_crl_st* noundef %crl) #6
  %cmp = icmp sgt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = tail call i32 @X509_CRL_up_ref(%struct.X509_crl_st* noundef %crl) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 %call
}

declare i32 @X509_CRL_up_ref(%struct.X509_crl_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define %struct.stack_st_X509* @CMS_get1_certs(%struct.CMS_ContentInfo_st* nocapture noundef readonly %cms) local_unnamed_addr #0 {
entry:
  %certs = alloca %struct.stack_st_X509*, align 8
  %0 = bitcast %struct.stack_st_X509** %certs to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7
  store %struct.stack_st_X509* null, %struct.stack_st_X509** %certs, align 8, !tbaa !4
  %call = tail call fastcc %struct.stack_st_CMS_CertificateChoices** @cms_get0_certificate_choices(%struct.CMS_ContentInfo_st* noundef %cms) #6
  %cmp = icmp eq %struct.stack_st_CMS_CertificateChoices** %call, null
  br i1 %cmp, label %cleanup, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %1 = load %struct.stack_st_CMS_CertificateChoices*, %struct.stack_st_CMS_CertificateChoices** %call, align 8, !tbaa !4
  %call123 = call fastcc i32 @sk_CMS_CertificateChoices_num(%struct.stack_st_CMS_CertificateChoices* noundef %1) #6
  %cmp224 = icmp sgt i32 %call123, 0
  br i1 %cmp224, label %for.body, label %cleanup

for.body:                                         ; preds = %for.cond.preheader, %for.inc
  %i.025 = phi i32 [ %inc, %for.inc ], [ 0, %for.cond.preheader ]
  %2 = load %struct.stack_st_CMS_CertificateChoices*, %struct.stack_st_CMS_CertificateChoices** %call, align 8, !tbaa !4
  %call3 = call fastcc %struct.CMS_CertificateChoices* @sk_CMS_CertificateChoices_value(%struct.stack_st_CMS_CertificateChoices* noundef %2, i32 noundef %i.025) #6
  %type = getelementptr inbounds %struct.CMS_CertificateChoices, %struct.CMS_CertificateChoices* %call3, i64 0, i32 0
  %3 = load i32, i32* %type, align 8, !tbaa !11
  %cmp4 = icmp eq i32 %3, 0
  br i1 %cmp4, label %if.then5, label %for.inc

if.then5:                                         ; preds = %for.body
  %certificate = getelementptr inbounds %struct.CMS_CertificateChoices, %struct.CMS_CertificateChoices* %call3, i64 0, i32 1, i32 0
  %4 = load %struct.x509_st*, %struct.x509_st** %certificate, align 8, !tbaa !14
  %call6 = call i32 @ossl_x509_add_cert_new(%struct.stack_st_X509** noundef nonnull %certs, %struct.x509_st* noundef %4, i32 noundef 1) #5
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %if.then7, label %for.inc

if.then7:                                         ; preds = %if.then5
  %5 = load %struct.stack_st_X509*, %struct.stack_st_X509** %certs, align 8, !tbaa !4
  %call8 = call fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef %5) #6
  call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call8, void (i8*)* noundef bitcast (void (%struct.x509_st*)* @X509_free to void (i8*)*)) #5
  br label %cleanup

for.inc:                                          ; preds = %for.body, %if.then5
  %inc = add nuw nsw i32 %i.025, 1
  %6 = load %struct.stack_st_CMS_CertificateChoices*, %struct.stack_st_CMS_CertificateChoices** %call, align 8, !tbaa !4
  %call1 = call fastcc i32 @sk_CMS_CertificateChoices_num(%struct.stack_st_CMS_CertificateChoices* noundef %6) #6
  %cmp2 = icmp slt i32 %inc, %call1
  br i1 %cmp2, label %for.body, label %for.end.loopexit, !llvm.loop !47

for.end.loopexit:                                 ; preds = %for.inc
  %.pre = load %struct.stack_st_X509*, %struct.stack_st_X509** %certs, align 8, !tbaa !4
  br label %cleanup

cleanup:                                          ; preds = %for.cond.preheader, %for.end.loopexit, %entry, %if.then7
  %retval.0 = phi %struct.stack_st_X509* [ null, %if.then7 ], [ null, %entry ], [ %.pre, %for.end.loopexit ], [ null, %for.cond.preheader ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7
  ret %struct.stack_st_X509* %retval.0
}

declare i32 @ossl_x509_add_cert_new(%struct.stack_st_X509** noundef, %struct.x509_st* noundef, i32 noundef) local_unnamed_addr #1

declare void @OPENSSL_sk_pop_free(%struct.stack_st* noundef, void (i8*)* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_X509* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare void @X509_free(%struct.x509_st* noundef) #1

; Function Attrs: noinline nounwind uwtable
define %struct.stack_st_X509_CRL* @CMS_get1_crls(%struct.CMS_ContentInfo_st* nocapture noundef readonly %cms) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc %struct.stack_st_CMS_RevocationInfoChoice** @cms_get0_revocation_choices(%struct.CMS_ContentInfo_st* noundef %cms) #6
  %cmp = icmp eq %struct.stack_st_CMS_RevocationInfoChoice** %call, null
  br i1 %cmp, label %cleanup, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %0 = load %struct.stack_st_CMS_RevocationInfoChoice*, %struct.stack_st_CMS_RevocationInfoChoice** %call, align 8, !tbaa !4
  %call143 = tail call fastcc %struct.stack_st* @ossl_check_const_CMS_RevocationInfoChoice_sk_type(%struct.stack_st_CMS_RevocationInfoChoice* noundef %0) #6
  %call244 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call143) #5
  %cmp345 = icmp sgt i32 %call244, 0
  br i1 %cmp345, label %for.body, label %cleanup

for.body:                                         ; preds = %for.cond.preheader, %for.inc
  %i.047 = phi i32 [ %inc, %for.inc ], [ 0, %for.cond.preheader ]
  %crls.046 = phi %struct.stack_st_X509_CRL* [ %crls.2, %for.inc ], [ null, %for.cond.preheader ]
  %1 = load %struct.stack_st_CMS_RevocationInfoChoice*, %struct.stack_st_CMS_RevocationInfoChoice** %call, align 8, !tbaa !4
  %call4 = tail call fastcc %struct.stack_st* @ossl_check_const_CMS_RevocationInfoChoice_sk_type(%struct.stack_st_CMS_RevocationInfoChoice* noundef %1) #6
  %call5 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call4, i32 noundef %i.047) #5
  %type = bitcast i8* %call5 to i32*
  %2 = load i32, i32* %type, align 8, !tbaa !45
  %cmp6 = icmp eq i32 %2, 0
  br i1 %cmp6, label %if.then7, label %for.inc

if.then7:                                         ; preds = %for.body
  %tobool.not = icmp eq %struct.stack_st_X509_CRL* %crls.046, null
  br i1 %tobool.not, label %if.then8, label %if.end13

if.then8:                                         ; preds = %if.then7
  %call9 = tail call %struct.stack_st* @OPENSSL_sk_new_null() #5
  %3 = bitcast %struct.stack_st* %call9 to %struct.stack_st_X509_CRL*
  %tobool10.not = icmp eq %struct.stack_st* %call9, null
  br i1 %tobool10.not, label %cleanup, label %if.end13

if.end13:                                         ; preds = %if.then8, %if.then7
  %crls.1 = phi %struct.stack_st_X509_CRL* [ %crls.046, %if.then7 ], [ %3, %if.then8 ]
  %call14 = tail call fastcc %struct.stack_st* @ossl_check_X509_CRL_sk_type(%struct.stack_st_X509_CRL* noundef %crls.1) #6
  %d = getelementptr inbounds i8, i8* %call5, i64 8
  %4 = bitcast i8* %d to i8**
  %5 = load i8*, i8** %4, align 8, !tbaa !14
  %call16 = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call14, i8* noundef %5) #5
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.then18, label %if.end21

if.then18:                                        ; preds = %if.end13
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call14, void (i8*)* noundef bitcast (void (%struct.X509_crl_st*)* @X509_CRL_free to void (i8*)*)) #5
  br label %cleanup

if.end21:                                         ; preds = %if.end13
  %crl = bitcast i8* %d to %struct.X509_crl_st**
  %6 = load %struct.X509_crl_st*, %struct.X509_crl_st** %crl, align 8, !tbaa !14
  %call24 = tail call i32 @X509_CRL_up_ref(%struct.X509_crl_st* noundef %6) #5
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.end21
  %crls.2 = phi %struct.stack_st_X509_CRL* [ %crls.1, %if.end21 ], [ %crls.046, %for.body ]
  %inc = add nuw nsw i32 %i.047, 1
  %7 = load %struct.stack_st_CMS_RevocationInfoChoice*, %struct.stack_st_CMS_RevocationInfoChoice** %call, align 8, !tbaa !4
  %call1 = tail call fastcc %struct.stack_st* @ossl_check_const_CMS_RevocationInfoChoice_sk_type(%struct.stack_st_CMS_RevocationInfoChoice* noundef %7) #6
  %call2 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call1) #5
  %cmp3 = icmp slt i32 %inc, %call2
  br i1 %cmp3, label %for.body, label %cleanup, !llvm.loop !48

cleanup:                                          ; preds = %if.then8, %for.inc, %for.cond.preheader, %entry, %if.then18
  %retval.0 = phi %struct.stack_st_X509_CRL* [ null, %if.then18 ], [ null, %entry ], [ null, %for.cond.preheader ], [ null, %if.then8 ], [ %crls.2, %for.inc ]
  ret %struct.stack_st_X509_CRL* %retval.0
}

declare i32 @OPENSSL_sk_num(%struct.stack_st* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_CMS_RevocationInfoChoice_sk_type(%struct.stack_st_CMS_RevocationInfoChoice* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_CMS_RevocationInfoChoice* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare i8* @OPENSSL_sk_value(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_X509_CRL_sk_type(%struct.stack_st_X509_CRL* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_X509_CRL* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare void @X509_CRL_free(%struct.X509_crl_st* noundef) #1

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_cms_ias_cert_cmp(%struct.CMS_IssuerAndSerialNumber_st* nocapture noundef readonly %ias, %struct.x509_st* noundef %cert) local_unnamed_addr #0 {
entry:
  %issuer = getelementptr inbounds %struct.CMS_IssuerAndSerialNumber_st, %struct.CMS_IssuerAndSerialNumber_st* %ias, i64 0, i32 0
  %0 = load %struct.X509_name_st*, %struct.X509_name_st** %issuer, align 8, !tbaa !49
  %call = tail call %struct.X509_name_st* @X509_get_issuer_name(%struct.x509_st* noundef %cert) #5
  %call1 = tail call i32 @X509_NAME_cmp(%struct.X509_name_st* noundef %0, %struct.X509_name_st* noundef %call) #5
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %serialNumber = getelementptr inbounds %struct.CMS_IssuerAndSerialNumber_st, %struct.CMS_IssuerAndSerialNumber_st* %ias, i64 0, i32 1
  %1 = load %struct.asn1_string_st*, %struct.asn1_string_st** %serialNumber, align 8, !tbaa !51
  %call2 = tail call %struct.asn1_string_st* @X509_get0_serialNumber(%struct.x509_st* noundef %cert) #5
  %call3 = tail call i32 @ASN1_INTEGER_cmp(%struct.asn1_string_st* noundef %1, %struct.asn1_string_st* noundef %call2) #5
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call3, %if.end ], [ %call1, %entry ]
  ret i32 %retval.0
}

declare i32 @X509_NAME_cmp(%struct.X509_name_st* noundef, %struct.X509_name_st* noundef) local_unnamed_addr #1

declare %struct.X509_name_st* @X509_get_issuer_name(%struct.x509_st* noundef) local_unnamed_addr #1

declare i32 @ASN1_INTEGER_cmp(%struct.asn1_string_st* noundef, %struct.asn1_string_st* noundef) local_unnamed_addr #1

declare %struct.asn1_string_st* @X509_get0_serialNumber(%struct.x509_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_cms_keyid_cert_cmp(%struct.asn1_string_st* noundef %keyid, %struct.x509_st* noundef %cert) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.asn1_string_st* @X509_get0_subject_key_id(%struct.x509_st* noundef %cert) #5
  %cmp = icmp eq %struct.asn1_string_st* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @ASN1_OCTET_STRING_cmp(%struct.asn1_string_st* noundef %keyid, %struct.asn1_string_st* noundef nonnull %call) #5
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call1, %if.end ], [ -1, %entry ]
  ret i32 %retval.0
}

declare %struct.asn1_string_st* @X509_get0_subject_key_id(%struct.x509_st* noundef) local_unnamed_addr #1

declare i32 @ASN1_OCTET_STRING_cmp(%struct.asn1_string_st* noundef, %struct.asn1_string_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_cms_set1_ias(%struct.CMS_IssuerAndSerialNumber_st** nocapture noundef %pias, %struct.x509_st* noundef %cert) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.ASN1_ITEM_st* @CMS_IssuerAndSerialNumber_it() #5
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef %call) #5
  %0 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.CMS_IssuerAndSerialNumber_st*
  %tobool.not = icmp eq %struct.ASN1_VALUE_st* %call1, null
  br i1 %tobool.not, label %err, label %if.end

if.end:                                           ; preds = %entry
  %issuer = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.X509_name_st**
  %call2 = tail call %struct.X509_name_st* @X509_get_issuer_name(%struct.x509_st* noundef %cert) #5
  %call3 = tail call i32 @X509_NAME_set(%struct.X509_name_st** noundef nonnull %issuer, %struct.X509_name_st* noundef %call2) #5
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %err, label %if.end6

if.end6:                                          ; preds = %if.end
  %serialNumber = getelementptr inbounds %struct.CMS_IssuerAndSerialNumber_st, %struct.CMS_IssuerAndSerialNumber_st* %0, i64 0, i32 1
  %1 = load %struct.asn1_string_st*, %struct.asn1_string_st** %serialNumber, align 8, !tbaa !51
  %call7 = tail call %struct.asn1_string_st* @X509_get0_serialNumber(%struct.x509_st* noundef %cert) #5
  %call8 = tail call i32 @ASN1_STRING_copy(%struct.asn1_string_st* noundef %1, %struct.asn1_string_st* noundef %call7) #5
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %err, label %if.end11

if.end11:                                         ; preds = %if.end6
  %2 = bitcast %struct.CMS_IssuerAndSerialNumber_st** %pias to %struct.ASN1_VALUE_st**
  %3 = load %struct.ASN1_VALUE_st*, %struct.ASN1_VALUE_st** %2, align 8, !tbaa !4
  %call12 = tail call %struct.ASN1_ITEM_st* @CMS_IssuerAndSerialNumber_it() #5
  tail call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef %3, %struct.ASN1_ITEM_st* noundef %call12) #5
  store %struct.ASN1_VALUE_st* %call1, %struct.ASN1_VALUE_st** %2, align 8, !tbaa !4
  br label %cleanup

err:                                              ; preds = %if.end6, %if.end, %entry
  %call13 = tail call %struct.ASN1_ITEM_st* @CMS_IssuerAndSerialNumber_it() #5
  tail call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef %call1, %struct.ASN1_ITEM_st* noundef %call13) #5
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 707, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.ossl_cms_set1_ias, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 46, i32 noundef 786688, i8* noundef null) #5
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end11
  %retval.0 = phi i32 [ 1, %if.end11 ], [ 0, %err ]
  ret i32 %retval.0
}

declare %struct.ASN1_ITEM_st* @CMS_IssuerAndSerialNumber_it() local_unnamed_addr #1

declare i32 @X509_NAME_set(%struct.X509_name_st** noundef, %struct.X509_name_st* noundef) local_unnamed_addr #1

declare i32 @ASN1_STRING_copy(%struct.asn1_string_st* noundef, %struct.asn1_string_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_cms_set1_keyid(%struct.asn1_string_st** nocapture noundef %pkeyid, %struct.x509_st* noundef %cert) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.asn1_string_st* @X509_get0_subject_key_id(%struct.x509_st* noundef %cert) #5
  %cmp = icmp eq %struct.asn1_string_st* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 717, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.ossl_cms_set1_keyid, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 46, i32 noundef 160, i8* noundef null) #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call %struct.asn1_string_st* @ASN1_STRING_dup(%struct.asn1_string_st* noundef nonnull %call) #5
  %tobool.not = icmp eq %struct.asn1_string_st* %call1, null
  br i1 %tobool.not, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 722, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.ossl_cms_set1_keyid, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 46, i32 noundef 786688, i8* noundef null) #5
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %0 = load %struct.asn1_string_st*, %struct.asn1_string_st** %pkeyid, align 8, !tbaa !4
  tail call void @ASN1_OCTET_STRING_free(%struct.asn1_string_st* noundef %0) #5
  store %struct.asn1_string_st* %call1, %struct.asn1_string_st** %pkeyid, align 8, !tbaa !4
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.then2, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.end3 ], [ 0, %if.then2 ]
  ret i32 %retval.0
}

declare %struct.asn1_string_st* @ASN1_STRING_dup(%struct.asn1_string_st* noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-builtins" }
attributes #6 = { nobuiltin "no-builtins" }
attributes #7 = { nounwind }

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
!9 = !{!"CMS_CTX_st", !5, i64 0, !5, i64 8}
!10 = !{!9, !5, i64 8}
!11 = !{!12, !13, i64 0}
!12 = !{!"CMS_CertificateChoices", !13, i64 0, !6, i64 8}
!13 = !{!"int", !6, i64 0}
!14 = !{!6, !6, i64 0}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.mustprogress"}
!17 = !{!18, !5, i64 16}
!18 = !{!"CMS_ContentInfo_st", !5, i64 0, !6, i64 8, !9, i64 16}
!19 = !{!18, !5, i64 24}
!20 = !{!18, !5, i64 0}
!21 = !{!22, !5, i64 8}
!22 = !{!"CMS_EnvelopedData_st", !13, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32}
!23 = !{!24, !5, i64 8}
!24 = !{!"CMS_AuthEnvelopedData_st", !13, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !5, i64 40, !5, i64 48}
!25 = !{!26, !27, i64 16}
!26 = !{!"asn1_string_st", !13, i64 0, !13, i64 4, !5, i64 8, !27, i64 16}
!27 = !{!"long", !6, i64 0}
!28 = !{!26, !5, i64 8}
!29 = !{!26, !13, i64 0}
!30 = !{!31, !5, i64 16}
!31 = !{!"CMS_SignedData_st", !13, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !5, i64 40}
!32 = !{!22, !5, i64 24}
!33 = !{!34, !5, i64 16}
!34 = !{!"CMS_DigestedData_st", !13, i64 0, !5, i64 8, !5, i64 16, !5, i64 24}
!35 = !{!36, !5, i64 8}
!36 = !{!"CMS_EncryptedData_st", !13, i64 0, !5, i64 8, !5, i64 16}
!37 = !{!24, !5, i64 24}
!38 = !{!39, !5, i64 40}
!39 = !{!"CMS_AuthenticatedData_st", !13, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !5, i64 40, !5, i64 48, !5, i64 56, !5, i64 64}
!40 = !{!41, !5, i64 24}
!41 = !{!"CMS_CompressedData_st", !13, i64 0, !5, i64 8, !5, i64 16, !5, i64 24}
!42 = !{!43, !13, i64 0}
!43 = !{!"asn1_type_st", !13, i64 0, !6, i64 8}
!44 = distinct !{!44, !16}
!45 = !{!46, !13, i64 0}
!46 = !{!"CMS_RevocationInfoChoice_st", !13, i64 0, !6, i64 8}
!47 = distinct !{!47, !16}
!48 = distinct !{!48, !16}
!49 = !{!50, !5, i64 0}
!50 = !{!"CMS_IssuerAndSerialNumber_st", !5, i64 0, !5, i64 8}
!51 = !{!50, !5, i64 8}
