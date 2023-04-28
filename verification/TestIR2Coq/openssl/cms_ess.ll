; ModuleID = 'crypto/cms/cms_ess.c'
source_filename = "crypto/cms/cms_ess.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.CMS_ReceiptRequest_st = type { %struct.asn1_string_st*, %struct.CMS_ReceiptsFrom_st*, %struct.stack_st_GENERAL_NAMES* }
%struct.asn1_string_st = type { i32, i32, i8*, i64 }
%struct.CMS_ReceiptsFrom_st = type { i32, %union.anon }
%union.anon = type { %struct.stack_st_GENERAL_NAMES* }
%struct.stack_st_GENERAL_NAMES = type opaque
%struct.ASN1_VALUE_st = type opaque
%struct.ASN1_ITEM_st = type { i8, i64, %struct.ASN1_TEMPLATE_st*, i64, i8*, i64, i8* }
%struct.ASN1_TEMPLATE_st = type { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }
%struct.CMS_SignerInfo_st = type { i32, %struct.CMS_SignerIdentifier_st*, %struct.X509_algor_st*, %struct.stack_st_X509_ATTRIBUTE*, %struct.X509_algor_st*, %struct.asn1_string_st*, %struct.stack_st_X509_ATTRIBUTE*, %struct.x509_st*, %struct.evp_pkey_st*, %struct.evp_md_ctx_st*, %struct.evp_pkey_ctx_st*, %struct.CMS_CTX_st* }
%struct.CMS_SignerIdentifier_st = type { i32, %union.anon.0 }
%union.anon.0 = type { %struct.CMS_IssuerAndSerialNumber_st* }
%struct.CMS_IssuerAndSerialNumber_st = type { %struct.X509_name_st*, %struct.asn1_string_st* }
%struct.X509_name_st = type { %struct.stack_st_X509_NAME_ENTRY*, i32, %struct.buf_mem_st*, i8*, i32 }
%struct.stack_st_X509_NAME_ENTRY = type opaque
%struct.buf_mem_st = type { i64, i8*, i64, i64 }
%struct.X509_algor_st = type { %struct.asn1_object_st*, %struct.asn1_type_st* }
%struct.asn1_object_st = type opaque
%struct.asn1_type_st = type { i32, %union.anon.1 }
%union.anon.1 = type { i8* }
%struct.stack_st_X509_ATTRIBUTE = type opaque
%struct.x509_st = type { %struct.x509_cinf_st, %struct.X509_algor_st, %struct.asn1_string_st, %struct.x509_sig_info_st, i32, %struct.crypto_ex_data_st, i64, i64, i32, i32, i32, i32, %struct.asn1_string_st*, %struct.AUTHORITY_KEYID_st*, %struct.X509_POLICY_CACHE_st*, %struct.stack_st_DIST_POINT*, %struct.stack_st_GENERAL_NAME*, %struct.NAME_CONSTRAINTS_st*, %struct.stack_st_IPAddressFamily*, %struct.ASIdentifiers_st*, [20 x i8], %struct.x509_cert_aux_st*, i8*, i32, %struct.asn1_string_st*, %struct.ossl_lib_ctx_st*, i8* }
%struct.x509_cinf_st = type { %struct.asn1_string_st*, %struct.asn1_string_st, %struct.X509_algor_st, %struct.X509_name_st*, %struct.X509_val_st, %struct.X509_name_st*, %struct.X509_pubkey_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.stack_st_X509_EXTENSION*, %struct.ASN1_ENCODING_st }
%struct.X509_val_st = type { %struct.asn1_string_st*, %struct.asn1_string_st* }
%struct.X509_pubkey_st = type opaque
%struct.stack_st_X509_EXTENSION = type opaque
%struct.ASN1_ENCODING_st = type { i8*, i64, i32 }
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
%struct.ossl_lib_ctx_st = type opaque
%struct.evp_pkey_st = type opaque
%struct.evp_md_ctx_st = type opaque
%struct.evp_pkey_ctx_st = type opaque
%struct.CMS_CTX_st = type { %struct.ossl_lib_ctx_st*, i8* }
%struct.stack_st_X509 = type opaque
%struct.ESS_signing_cert = type { %struct.stack_st_ESS_CERT_ID*, %struct.stack_st_POLICYINFO* }
%struct.stack_st_ESS_CERT_ID = type opaque
%struct.stack_st_POLICYINFO = type opaque
%struct.ESS_signing_cert_v2_st = type { %struct.stack_st_ESS_CERT_ID_V2*, %struct.stack_st_POLICYINFO* }
%struct.stack_st_ESS_CERT_ID_V2 = type opaque
%struct.stack_st = type opaque
%struct.evp_md_st = type opaque
%struct.CMS_ContentInfo_st = type { %struct.asn1_object_st*, %union.anon.3, %struct.CMS_CTX_st }
%union.anon.3 = type { %struct.asn1_string_st* }
%struct.stack_st_CMS_SignerInfo = type opaque
%struct.CMS_Receipt_st = type { i32, %struct.asn1_object_st*, %struct.asn1_string_st*, %struct.asn1_string_st* }

@.str = private unnamed_addr constant [21 x i8] c"crypto/cms/cms_ess.c\00", align 1
@__func__.CMS_ReceiptRequest_create0_ex = private unnamed_addr constant [30 x i8] c"CMS_ReceiptRequest_create0_ex\00", align 1
@__func__.CMS_add1_ReceiptRequest = private unnamed_addr constant [24 x i8] c"CMS_add1_ReceiptRequest\00", align 1
@__func__.ossl_cms_msgSigDigest_add1 = private unnamed_addr constant [27 x i8] c"ossl_cms_msgSigDigest_add1\00", align 1
@__func__.ossl_cms_Receipt_verify = private unnamed_addr constant [24 x i8] c"ossl_cms_Receipt_verify\00", align 1
@__func__.ossl_cms_encode_Receipt = private unnamed_addr constant [24 x i8] c"ossl_cms_encode_Receipt\00", align 1

; Function Attrs: noinline nounwind uwtable
define %struct.CMS_ReceiptRequest_st* @d2i_CMS_ReceiptRequest(%struct.CMS_ReceiptRequest_st** noundef %a, i8** noundef %in, i64 noundef %len) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.CMS_ReceiptRequest_st** %a to %struct.ASN1_VALUE_st**
  %call = tail call %struct.ASN1_ITEM_st* @CMS_ReceiptRequest_it() #6
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef %0, i8** noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* noundef %call) #6
  %1 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.CMS_ReceiptRequest_st*
  ret %struct.CMS_ReceiptRequest_st* %1
}

declare %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef, i8** noundef, i64 noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #1

declare %struct.ASN1_ITEM_st* @CMS_ReceiptRequest_it() local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_CMS_ReceiptRequest(%struct.CMS_ReceiptRequest_st* noundef %a, i8** noundef %out) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.CMS_ReceiptRequest_st* %a to %struct.ASN1_VALUE_st*
  %call = tail call %struct.ASN1_ITEM_st* @CMS_ReceiptRequest_it() #6
  %call1 = tail call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %0, i8** noundef %out, %struct.ASN1_ITEM_st* noundef %call) #6
  ret i32 %call1
}

declare i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef, i8** noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define %struct.CMS_ReceiptRequest_st* @CMS_ReceiptRequest_new() local_unnamed_addr #0 {
entry:
  %call = tail call %struct.ASN1_ITEM_st* @CMS_ReceiptRequest_it() #6
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef %call) #6
  %0 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.CMS_ReceiptRequest_st*
  ret %struct.CMS_ReceiptRequest_st* %0
}

declare %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define void @CMS_ReceiptRequest_free(%struct.CMS_ReceiptRequest_st* noundef %a) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.CMS_ReceiptRequest_st* %a to %struct.ASN1_VALUE_st*
  %call = tail call %struct.ASN1_ITEM_st* @CMS_ReceiptRequest_it() #6
  tail call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef %0, %struct.ASN1_ITEM_st* noundef %call) #6
  ret void
}

declare void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @CMS_get1_ReceiptRequest(%struct.CMS_SignerInfo_st* noundef %si, %struct.CMS_ReceiptRequest_st** noundef writeonly %prr) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef 212) #6
  %cmp.not = icmp eq %struct.CMS_ReceiptRequest_st** %prr, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct.CMS_ReceiptRequest_st* null, %struct.CMS_ReceiptRequest_st** %prr, align 8, !tbaa !4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call1 = tail call i8* @CMS_signed_get0_data_by_OBJ(%struct.CMS_SignerInfo_st* noundef %si, %struct.asn1_object_st* noundef %call, i32 noundef -3, i32 noundef 16) #6
  %cmp2 = icmp eq i8* %call1, null
  br i1 %cmp2, label %cleanup, label %if.end4

if.end4:                                          ; preds = %if.end
  %0 = bitcast i8* %call1 to %struct.asn1_string_st*
  %call5 = tail call %struct.ASN1_ITEM_st* @CMS_ReceiptRequest_it() #6
  %call6 = tail call i8* @ASN1_item_unpack(%struct.asn1_string_st* noundef nonnull %0, %struct.ASN1_ITEM_st* noundef %call5) #6
  %1 = bitcast i8* %call6 to %struct.CMS_ReceiptRequest_st*
  %cmp7 = icmp eq i8* %call6, null
  br i1 %cmp7, label %cleanup, label %if.end9

if.end9:                                          ; preds = %if.end4
  br i1 %cmp.not, label %if.else, label %if.then11

if.then11:                                        ; preds = %if.end9
  %2 = bitcast %struct.CMS_ReceiptRequest_st** %prr to i8**
  store i8* %call6, i8** %2, align 8, !tbaa !4
  br label %cleanup

if.else:                                          ; preds = %if.end9
  tail call void @CMS_ReceiptRequest_free(%struct.CMS_ReceiptRequest_st* noundef nonnull %1) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then11, %if.else, %if.end4, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ -1, %if.end4 ], [ 1, %if.else ], [ 1, %if.then11 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef) local_unnamed_addr #1

declare i8* @CMS_signed_get0_data_by_OBJ(%struct.CMS_SignerInfo_st* noundef, %struct.asn1_object_st* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i8* @ASN1_item_unpack(%struct.asn1_string_st* noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_cms_check_signing_certs(%struct.CMS_SignerInfo_st* noundef %si, %struct.stack_st_X509* noundef %chain) local_unnamed_addr #0 {
entry:
  %ss = alloca %struct.ESS_signing_cert*, align 8
  %ssv2 = alloca %struct.ESS_signing_cert_v2_st*, align 8
  %0 = bitcast %struct.ESS_signing_cert** %ss to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8
  store %struct.ESS_signing_cert* null, %struct.ESS_signing_cert** %ss, align 8, !tbaa !4
  %1 = bitcast %struct.ESS_signing_cert_v2_st** %ssv2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #8
  store %struct.ESS_signing_cert_v2_st* null, %struct.ESS_signing_cert_v2_st** %ssv2, align 8, !tbaa !4
  %call = call fastcc i32 @ossl_cms_signerinfo_get_signing_cert(%struct.CMS_SignerInfo_st* noundef %si, %struct.ESS_signing_cert** noundef nonnull %ss) #7
  %cmp = icmp sgt i32 %call, -1
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %entry
  %call1 = call fastcc i32 @ossl_cms_signerinfo_get_signing_cert_v2(%struct.CMS_SignerInfo_st* noundef %si, %struct.ESS_signing_cert_v2_st** noundef nonnull %ssv2) #7
  %cmp2 = icmp sgt i32 %call1, -1
  br i1 %cmp2, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %2 = load %struct.ESS_signing_cert*, %struct.ESS_signing_cert** %ss, align 8, !tbaa !4
  %3 = load %struct.ESS_signing_cert_v2_st*, %struct.ESS_signing_cert_v2_st** %ssv2, align 8, !tbaa !4
  %call3 = call i32 @OSSL_ESS_check_signing_certs(%struct.ESS_signing_cert* noundef %2, %struct.ESS_signing_cert_v2_st* noundef %3, %struct.stack_st_X509* noundef %chain, i32 noundef 1) #6
  %cmp4 = icmp sgt i32 %call3, 0
  %phi.cast = zext i1 %cmp4 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %entry
  %4 = phi i32 [ 0, %land.lhs.true ], [ 0, %entry ], [ %phi.cast, %land.rhs ]
  %5 = load %struct.ESS_signing_cert*, %struct.ESS_signing_cert** %ss, align 8, !tbaa !4
  call void @ESS_SIGNING_CERT_free(%struct.ESS_signing_cert* noundef %5) #6
  %6 = load %struct.ESS_signing_cert_v2_st*, %struct.ESS_signing_cert_v2_st** %ssv2, align 8, !tbaa !4
  call void @ESS_SIGNING_CERT_V2_free(%struct.ESS_signing_cert_v2_st* noundef %6) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8
  ret i32 %4
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @ossl_cms_signerinfo_get_signing_cert(%struct.CMS_SignerInfo_st* noundef %si, %struct.ESS_signing_cert** noundef writeonly %psc) unnamed_addr #0 {
entry:
  %call = tail call %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef 223) #6
  %cmp.not = icmp eq %struct.ESS_signing_cert** %psc, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct.ESS_signing_cert* null, %struct.ESS_signing_cert** %psc, align 8, !tbaa !4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call1 = tail call i8* @CMS_signed_get0_data_by_OBJ(%struct.CMS_SignerInfo_st* noundef %si, %struct.asn1_object_st* noundef %call, i32 noundef -3, i32 noundef 16) #6
  %cmp2 = icmp eq i8* %call1, null
  br i1 %cmp2, label %cleanup, label %if.end4

if.end4:                                          ; preds = %if.end
  %0 = bitcast i8* %call1 to %struct.asn1_string_st*
  %call5 = tail call %struct.ASN1_ITEM_st* @ESS_SIGNING_CERT_it() #6
  %call6 = tail call i8* @ASN1_item_unpack(%struct.asn1_string_st* noundef nonnull %0, %struct.ASN1_ITEM_st* noundef %call5) #6
  %1 = bitcast i8* %call6 to %struct.ESS_signing_cert*
  %cmp7 = icmp eq i8* %call6, null
  br i1 %cmp7, label %cleanup, label %if.end9

if.end9:                                          ; preds = %if.end4
  br i1 %cmp.not, label %if.else, label %if.then11

if.then11:                                        ; preds = %if.end9
  %2 = bitcast %struct.ESS_signing_cert** %psc to i8**
  store i8* %call6, i8** %2, align 8, !tbaa !4
  br label %cleanup

if.else:                                          ; preds = %if.end9
  tail call void @ESS_SIGNING_CERT_free(%struct.ESS_signing_cert* noundef nonnull %1) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then11, %if.else, %if.end4, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ -1, %if.end4 ], [ 1, %if.else ], [ 1, %if.then11 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @ossl_cms_signerinfo_get_signing_cert_v2(%struct.CMS_SignerInfo_st* noundef %si, %struct.ESS_signing_cert_v2_st** noundef writeonly %psc) unnamed_addr #0 {
entry:
  %call = tail call %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef 1086) #6
  %cmp.not = icmp eq %struct.ESS_signing_cert_v2_st** %psc, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct.ESS_signing_cert_v2_st* null, %struct.ESS_signing_cert_v2_st** %psc, align 8, !tbaa !4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call1 = tail call i8* @CMS_signed_get0_data_by_OBJ(%struct.CMS_SignerInfo_st* noundef %si, %struct.asn1_object_st* noundef %call, i32 noundef -3, i32 noundef 16) #6
  %cmp2 = icmp eq i8* %call1, null
  br i1 %cmp2, label %cleanup, label %if.end4

if.end4:                                          ; preds = %if.end
  %0 = bitcast i8* %call1 to %struct.asn1_string_st*
  %call5 = tail call %struct.ASN1_ITEM_st* @ESS_SIGNING_CERT_V2_it() #6
  %call6 = tail call i8* @ASN1_item_unpack(%struct.asn1_string_st* noundef nonnull %0, %struct.ASN1_ITEM_st* noundef %call5) #6
  %1 = bitcast i8* %call6 to %struct.ESS_signing_cert_v2_st*
  %cmp7 = icmp eq i8* %call6, null
  br i1 %cmp7, label %cleanup, label %if.end9

if.end9:                                          ; preds = %if.end4
  br i1 %cmp.not, label %if.else, label %if.then11

if.then11:                                        ; preds = %if.end9
  %2 = bitcast %struct.ESS_signing_cert_v2_st** %psc to i8**
  store i8* %call6, i8** %2, align 8, !tbaa !4
  br label %cleanup

if.else:                                          ; preds = %if.end9
  tail call void @ESS_SIGNING_CERT_V2_free(%struct.ESS_signing_cert_v2_st* noundef nonnull %1) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then11, %if.else, %if.end4, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ -1, %if.end4 ], [ 1, %if.else ], [ 1, %if.then11 ]
  ret i32 %retval.0
}

declare i32 @OSSL_ESS_check_signing_certs(%struct.ESS_signing_cert* noundef, %struct.ESS_signing_cert_v2_st* noundef, %struct.stack_st_X509* noundef, i32 noundef) local_unnamed_addr #1

declare void @ESS_SIGNING_CERT_free(%struct.ESS_signing_cert* noundef) local_unnamed_addr #1

declare void @ESS_SIGNING_CERT_V2_free(%struct.ESS_signing_cert_v2_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define %struct.CMS_ReceiptRequest_st* @CMS_ReceiptRequest_create0_ex(i8* noundef %id, i32 noundef %idlen, i32 noundef %allorfirst, %struct.stack_st_GENERAL_NAMES* noundef %receiptList, %struct.stack_st_GENERAL_NAMES* noundef %receiptsTo, %struct.ossl_lib_ctx_st* noundef %libctx) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.CMS_ReceiptRequest_st* @CMS_ReceiptRequest_new() #7
  %cmp = icmp eq %struct.CMS_ReceiptRequest_st* %call, null
  br i1 %cmp, label %merr, label %if.end

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq i8* %id, null
  %signedContentIdentifier2 = getelementptr inbounds %struct.CMS_ReceiptRequest_st, %struct.CMS_ReceiptRequest_st* %call, i64 0, i32 0
  %0 = load %struct.asn1_string_st*, %struct.asn1_string_st** %signedContentIdentifier2, align 8, !tbaa !8
  br i1 %tobool.not, label %if.else, label %if.then1

if.then1:                                         ; preds = %if.end
  tail call void @ASN1_STRING_set0(%struct.asn1_string_st* noundef %0, i8* noundef nonnull %id, i32 noundef %idlen) #6
  br label %if.end12

if.else:                                          ; preds = %if.end
  %call3 = tail call i32 @ASN1_STRING_set(%struct.asn1_string_st* noundef %0, i8* noundef null, i32 noundef 32) #6
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %merr, label %if.end6

if.end6:                                          ; preds = %if.else
  %1 = load %struct.asn1_string_st*, %struct.asn1_string_st** %signedContentIdentifier2, align 8, !tbaa !8
  %data = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %1, i64 0, i32 2
  %2 = load i8*, i8** %data, align 8, !tbaa !10
  %call8 = tail call i32 @RAND_bytes_ex(%struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %2, i64 noundef 32, i32 noundef 0) #6
  %cmp9 = icmp slt i32 %call8, 1
  br i1 %cmp9, label %err, label %if.end12

if.end12:                                         ; preds = %if.end6, %if.then1
  %receiptsTo13 = getelementptr inbounds %struct.CMS_ReceiptRequest_st, %struct.CMS_ReceiptRequest_st* %call, i64 0, i32 2
  %3 = load %struct.stack_st_GENERAL_NAMES*, %struct.stack_st_GENERAL_NAMES** %receiptsTo13, align 8, !tbaa !14
  %call14 = tail call fastcc %struct.stack_st* @ossl_check_GENERAL_NAMES_sk_type(%struct.stack_st_GENERAL_NAMES* noundef %3) #7
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call14, void (i8*)* noundef bitcast (void (%struct.stack_st_GENERAL_NAME*)* @GENERAL_NAMES_free to void (i8*)*)) #6
  store %struct.stack_st_GENERAL_NAMES* %receiptsTo, %struct.stack_st_GENERAL_NAMES** %receiptsTo13, align 8, !tbaa !14
  %cmp17.not = icmp eq %struct.stack_st_GENERAL_NAMES* %receiptList, null
  %receiptsFrom22 = getelementptr inbounds %struct.CMS_ReceiptRequest_st, %struct.CMS_ReceiptRequest_st* %call, i64 0, i32 1
  %4 = load %struct.CMS_ReceiptsFrom_st*, %struct.CMS_ReceiptsFrom_st** %receiptsFrom22, align 8, !tbaa !15
  %type23 = getelementptr inbounds %struct.CMS_ReceiptsFrom_st, %struct.CMS_ReceiptsFrom_st* %4, i64 0, i32 0
  br i1 %cmp17.not, label %if.else21, label %if.then18

if.then18:                                        ; preds = %if.end12
  store i32 1, i32* %type23, align 8, !tbaa !16
  %receiptList20 = getelementptr inbounds %struct.CMS_ReceiptsFrom_st, %struct.CMS_ReceiptsFrom_st* %4, i64 0, i32 1, i32 0
  store %struct.stack_st_GENERAL_NAMES* %receiptList, %struct.stack_st_GENERAL_NAMES** %receiptList20, align 8, !tbaa !18
  br label %cleanup

if.else21:                                        ; preds = %if.end12
  store i32 0, i32* %type23, align 8, !tbaa !16
  %d25 = getelementptr inbounds %struct.CMS_ReceiptsFrom_st, %struct.CMS_ReceiptsFrom_st* %4, i64 0, i32 1
  %allOrFirstTier = bitcast %union.anon* %d25 to i32*
  store i32 %allorfirst, i32* %allOrFirstTier, align 8, !tbaa !18
  br label %cleanup

merr:                                             ; preds = %if.else, %entry
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 150, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.CMS_ReceiptRequest_create0_ex, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 46, i32 noundef 786688, i8* noundef null) #6
  br label %err

err:                                              ; preds = %if.end6, %merr
  tail call void @CMS_ReceiptRequest_free(%struct.CMS_ReceiptRequest_st* noundef %call) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then18, %if.else21, %err
  %retval.0 = phi %struct.CMS_ReceiptRequest_st* [ null, %err ], [ %call, %if.else21 ], [ %call, %if.then18 ]
  ret %struct.CMS_ReceiptRequest_st* %retval.0
}

declare void @ASN1_STRING_set0(%struct.asn1_string_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare i32 @ASN1_STRING_set(%struct.asn1_string_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare i32 @RAND_bytes_ex(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

declare void @OPENSSL_sk_pop_free(%struct.stack_st* noundef, void (i8*)* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_GENERAL_NAMES_sk_type(%struct.stack_st_GENERAL_NAMES* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_GENERAL_NAMES* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare void @GENERAL_NAMES_free(%struct.stack_st_GENERAL_NAME* noundef) #1

declare void @ERR_new() local_unnamed_addr #1

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define %struct.CMS_ReceiptRequest_st* @CMS_ReceiptRequest_create0(i8* noundef %id, i32 noundef %idlen, i32 noundef %allorfirst, %struct.stack_st_GENERAL_NAMES* noundef %receiptList, %struct.stack_st_GENERAL_NAMES* noundef %receiptsTo) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.CMS_ReceiptRequest_st* @CMS_ReceiptRequest_create0_ex(i8* noundef %id, i32 noundef %idlen, i32 noundef %allorfirst, %struct.stack_st_GENERAL_NAMES* noundef %receiptList, %struct.stack_st_GENERAL_NAMES* noundef %receiptsTo, %struct.ossl_lib_ctx_st* noundef null) #7
  ret %struct.CMS_ReceiptRequest_st* %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @CMS_add1_ReceiptRequest(%struct.CMS_SignerInfo_st* noundef %si, %struct.CMS_ReceiptRequest_st* noundef %rr) local_unnamed_addr #0 {
entry:
  %rrder = alloca i8*, align 8
  %0 = bitcast i8** %rrder to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8
  store i8* null, i8** %rrder, align 8, !tbaa !4
  %call = call i32 @i2d_CMS_ReceiptRequest(%struct.CMS_ReceiptRequest_st* noundef %rr, i8** noundef nonnull %rrder) #7
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then5, label %merr

merr:                                             ; preds = %entry
  %1 = load i8*, i8** %rrder, align 8, !tbaa !4
  %call1 = call i32 @CMS_signed_add1_attr_by_NID(%struct.CMS_SignerInfo_st* noundef %si, i32 noundef 212, i32 noundef 16, i8* noundef %1, i32 noundef %call) #6
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then5, label %if.end6

if.then5:                                         ; preds = %entry, %merr
  call void @ERR_new() #6
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 183, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.CMS_add1_ReceiptRequest, i64 0, i64 0)) #6
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 46, i32 noundef 786688, i8* noundef null) #6
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %merr
  %r.014 = phi i32 [ 0, %if.then5 ], [ 1, %merr ]
  %2 = load i8*, i8** %rrder, align 8, !tbaa !4
  call void @CRYPTO_free(i8* noundef %2, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 185) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8
  ret i32 %r.014
}

declare i32 @CMS_signed_add1_attr_by_NID(%struct.CMS_SignerInfo_st* noundef, i32 noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define void @CMS_ReceiptRequest_get0_values(%struct.CMS_ReceiptRequest_st* nocapture noundef readonly %rr, %struct.asn1_string_st** noundef writeonly %pcid, i32* noundef writeonly %pallorfirst, %struct.stack_st_GENERAL_NAMES** noundef writeonly %plist, %struct.stack_st_GENERAL_NAMES** noundef writeonly %prto) local_unnamed_addr #4 {
entry:
  %cmp.not = icmp eq %struct.asn1_string_st** %pcid, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %signedContentIdentifier = getelementptr inbounds %struct.CMS_ReceiptRequest_st, %struct.CMS_ReceiptRequest_st* %rr, i64 0, i32 0
  %0 = load %struct.asn1_string_st*, %struct.asn1_string_st** %signedContentIdentifier, align 8, !tbaa !8
  store %struct.asn1_string_st* %0, %struct.asn1_string_st** %pcid, align 8, !tbaa !4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %receiptsFrom = getelementptr inbounds %struct.CMS_ReceiptRequest_st, %struct.CMS_ReceiptRequest_st* %rr, i64 0, i32 1
  %1 = load %struct.CMS_ReceiptsFrom_st*, %struct.CMS_ReceiptsFrom_st** %receiptsFrom, align 8, !tbaa !15
  %type = getelementptr inbounds %struct.CMS_ReceiptsFrom_st, %struct.CMS_ReceiptsFrom_st* %1, i64 0, i32 0
  %2 = load i32, i32* %type, align 8, !tbaa !16
  %cmp1 = icmp eq i32 %2, 0
  %cmp3.not = icmp eq i32* %pallorfirst, null
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  br i1 %cmp3.not, label %if.end6, label %if.then4

if.then4:                                         ; preds = %if.then2
  %d = getelementptr inbounds %struct.CMS_ReceiptsFrom_st, %struct.CMS_ReceiptsFrom_st* %1, i64 0, i32 1
  %allOrFirstTier = bitcast %union.anon* %d to i32*
  %3 = load i32, i32* %allOrFirstTier, align 8, !tbaa !18
  store i32 %3, i32* %pallorfirst, align 4, !tbaa !19
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.then2
  %cmp7.not = icmp eq %struct.stack_st_GENERAL_NAMES** %plist, null
  br i1 %cmp7.not, label %if.end18, label %if.end18.sink.split

if.else:                                          ; preds = %if.end
  br i1 %cmp3.not, label %if.end12, label %if.then11

if.then11:                                        ; preds = %if.else
  store i32 -1, i32* %pallorfirst, align 4, !tbaa !19
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.else
  %cmp13.not = icmp eq %struct.stack_st_GENERAL_NAMES** %plist, null
  br i1 %cmp13.not, label %if.end18, label %if.then14

if.then14:                                        ; preds = %if.end12
  %receiptList = getelementptr inbounds %struct.CMS_ReceiptsFrom_st, %struct.CMS_ReceiptsFrom_st* %1, i64 0, i32 1, i32 0
  %4 = load %struct.stack_st_GENERAL_NAMES*, %struct.stack_st_GENERAL_NAMES** %receiptList, align 8, !tbaa !18
  br label %if.end18.sink.split

if.end18.sink.split:                              ; preds = %if.end6, %if.then14
  %.sink = phi %struct.stack_st_GENERAL_NAMES* [ %4, %if.then14 ], [ null, %if.end6 ]
  store %struct.stack_st_GENERAL_NAMES* %.sink, %struct.stack_st_GENERAL_NAMES** %plist, align 8, !tbaa !4
  br label %if.end18

if.end18:                                         ; preds = %if.end18.sink.split, %if.end12, %if.end6
  %cmp19.not = icmp eq %struct.stack_st_GENERAL_NAMES** %prto, null
  br i1 %cmp19.not, label %if.end21, label %if.then20

if.then20:                                        ; preds = %if.end18
  %receiptsTo = getelementptr inbounds %struct.CMS_ReceiptRequest_st, %struct.CMS_ReceiptRequest_st* %rr, i64 0, i32 2
  %5 = load %struct.stack_st_GENERAL_NAMES*, %struct.stack_st_GENERAL_NAMES** %receiptsTo, align 8, !tbaa !14
  store %struct.stack_st_GENERAL_NAMES* %5, %struct.stack_st_GENERAL_NAMES** %prto, align 8, !tbaa !4
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %if.end18
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_cms_msgSigDigest_add1(%struct.CMS_SignerInfo_st* noundef %dest, %struct.CMS_SignerInfo_st* nocapture noundef readonly %src) local_unnamed_addr #0 {
entry:
  %dig = alloca [64 x i8], align 16
  %diglen = alloca i32, align 4
  %0 = getelementptr inbounds [64 x i8], [64 x i8]* %dig, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %0) #8
  %1 = bitcast i32* %diglen to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #8
  %call = call fastcc i32 @cms_msgSigDigest(%struct.CMS_SignerInfo_st* noundef %src, i8* noundef nonnull %0, i32* noundef nonnull %diglen) #7
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup.sink.split, label %if.end

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %diglen, align 4, !tbaa !19
  %call2 = call i32 @CMS_signed_add1_attr_by_NID(%struct.CMS_SignerInfo_st* noundef %dest, i32 noundef 216, i32 noundef 4, i8* noundef nonnull %0, i32 noundef %2) #6
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %cleanup.sink.split, label %cleanup

cleanup.sink.split:                               ; preds = %if.end, %entry
  %.sink7 = phi i32 [ 239, %entry ], [ 244, %if.end ]
  %.sink = phi i32 [ 172, %entry ], [ 786688, %if.end ]
  call void @ERR_new() #6
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef %.sink7, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.ossl_cms_msgSigDigest_add1, i64 0, i64 0)) #6
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 46, i32 noundef %.sink, i8* noundef null) #6
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #8
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %0) #8
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @cms_msgSigDigest(%struct.CMS_SignerInfo_st* nocapture noundef readonly %si, i8* noundef %dig, i32* noundef %diglen) unnamed_addr #0 {
entry:
  %digestAlgorithm = getelementptr inbounds %struct.CMS_SignerInfo_st, %struct.CMS_SignerInfo_st* %si, i64 0, i32 2
  %0 = load %struct.X509_algor_st*, %struct.X509_algor_st** %digestAlgorithm, align 8, !tbaa !20
  %algorithm = getelementptr inbounds %struct.X509_algor_st, %struct.X509_algor_st* %0, i64 0, i32 0
  %1 = load %struct.asn1_object_st*, %struct.asn1_object_st** %algorithm, align 8, !tbaa !22
  %call = tail call i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef %1) #6
  %call1 = tail call i8* @OBJ_nid2sn(i32 noundef %call) #6
  %call2 = tail call %struct.evp_md_st* @EVP_get_digestbyname(i8* noundef %call1) #6
  %cmp = icmp eq %struct.evp_md_st* %call2, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call3 = tail call %struct.ASN1_ITEM_st* @CMS_Attributes_Verify_it() #6
  %signedAttrs = getelementptr inbounds %struct.CMS_SignerInfo_st, %struct.CMS_SignerInfo_st* %si, i64 0, i32 3
  %2 = bitcast %struct.stack_st_X509_ATTRIBUTE** %signedAttrs to i8**
  %3 = load i8*, i8** %2, align 8, !tbaa !24
  %cms_ctx = getelementptr inbounds %struct.CMS_SignerInfo_st, %struct.CMS_SignerInfo_st* %si, i64 0, i32 11
  %4 = load %struct.CMS_CTX_st*, %struct.CMS_CTX_st** %cms_ctx, align 8, !tbaa !25
  %call4 = tail call %struct.ossl_lib_ctx_st* @ossl_cms_ctx_get0_libctx(%struct.CMS_CTX_st* noundef %4) #6
  %5 = load %struct.CMS_CTX_st*, %struct.CMS_CTX_st** %cms_ctx, align 8, !tbaa !25
  %call6 = tail call i8* @ossl_cms_ctx_get0_propq(%struct.CMS_CTX_st* noundef %5) #6
  %call7 = tail call i32 @ossl_asn1_item_digest_ex(%struct.ASN1_ITEM_st* noundef %call3, %struct.evp_md_st* noundef nonnull %call2, i8* noundef %3, i8* noundef %dig, i32* noundef %diglen, %struct.ossl_lib_ctx_st* noundef %call4, i8* noundef %call6) #6
  %tobool.not = icmp ne i32 %call7, 0
  %. = zext i1 %tobool.not to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ %., %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_cms_Receipt_verify(%struct.CMS_ContentInfo_st* noundef %cms, %struct.CMS_ContentInfo_st* noundef %req_cms) local_unnamed_addr #0 {
entry:
  %rr = alloca %struct.CMS_ReceiptRequest_st*, align 8
  %dig = alloca [64 x i8], align 16
  %diglen = alloca i32, align 4
  %0 = bitcast %struct.CMS_ReceiptRequest_st** %rr to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8
  store %struct.CMS_ReceiptRequest_st* null, %struct.CMS_ReceiptRequest_st** %rr, align 8, !tbaa !4
  %1 = getelementptr inbounds [64 x i8], [64 x i8]* %dig, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %1) #8
  %2 = bitcast i32* %diglen to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #8
  %call = tail call %struct.stack_st_CMS_SignerInfo* @CMS_get0_SignerInfos(%struct.CMS_ContentInfo_st* noundef %req_cms) #6
  %call1 = tail call %struct.stack_st_CMS_SignerInfo* @CMS_get0_SignerInfos(%struct.CMS_ContentInfo_st* noundef %cms) #6
  %tobool = icmp ne %struct.stack_st_CMS_SignerInfo* %call, null
  %tobool2 = icmp ne %struct.stack_st_CMS_SignerInfo* %call1, null
  %or.cond = select i1 %tobool, i1 %tobool2, i1 false
  br i1 %or.cond, label %if.end, label %err

if.end:                                           ; preds = %entry
  %call3 = tail call fastcc %struct.stack_st* @ossl_check_const_CMS_SignerInfo_sk_type(%struct.stack_st_CMS_SignerInfo* noundef nonnull %call1) #7
  %call4 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call3) #6
  %cmp.not = icmp eq i32 %call4, 1
  br i1 %cmp.not, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.end
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 271, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.ossl_cms_Receipt_verify, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 46, i32 noundef 164, i8* noundef null) #6
  br label %err

if.end6:                                          ; preds = %if.end
  %call7 = tail call %struct.asn1_object_st* @CMS_get0_eContentType(%struct.CMS_ContentInfo_st* noundef %cms) #6
  %call8 = tail call i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef %call7) #6
  %cmp9.not = icmp eq i32 %call8, 204
  br i1 %cmp9.not, label %if.end11, label %if.then10

if.then10:                                        ; preds = %if.end6
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 277, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.ossl_cms_Receipt_verify, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 46, i32 noundef 165, i8* noundef null) #6
  br label %err

if.end11:                                         ; preds = %if.end6
  %call12 = tail call %struct.asn1_string_st** @CMS_get0_content(%struct.CMS_ContentInfo_st* noundef %cms) #6
  %cmp13 = icmp eq %struct.asn1_string_st** %call12, null
  br i1 %cmp13, label %if.then16, label %lor.lhs.false14

lor.lhs.false14:                                  ; preds = %if.end11
  %3 = load %struct.asn1_string_st*, %struct.asn1_string_st** %call12, align 8, !tbaa !4
  %cmp15 = icmp eq %struct.asn1_string_st* %3, null
  br i1 %cmp15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %lor.lhs.false14, %if.end11
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 284, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.ossl_cms_Receipt_verify, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 46, i32 noundef 127, i8* noundef null) #6
  br label %err

if.end17:                                         ; preds = %lor.lhs.false14
  %call18 = tail call %struct.ASN1_ITEM_st* @CMS_Receipt_it() #6
  %call19 = tail call i8* @ASN1_item_unpack(%struct.asn1_string_st* noundef nonnull %3, %struct.ASN1_ITEM_st* noundef %call18) #6
  %tobool20.not = icmp eq i8* %call19, null
  br i1 %tobool20.not, label %if.then21, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end17
  %call23 = tail call fastcc %struct.stack_st* @ossl_check_const_CMS_SignerInfo_sk_type(%struct.stack_st_CMS_SignerInfo* noundef nonnull %call) #7
  %call24116 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call23) #6
  %cmp25117 = icmp sgt i32 %call24116, 0
  br i1 %cmp25117, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %originatorSignatureValue = getelementptr inbounds i8, i8* %call19, i64 24
  %4 = bitcast i8* %originatorSignatureValue to %struct.asn1_string_st**
  br label %for.body

if.then21:                                        ; preds = %if.end17
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 291, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.ossl_cms_Receipt_verify, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 46, i32 noundef 169, i8* noundef null) #6
  br label %err

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %i.0118 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc ]
  %call27 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call23, i32 noundef %i.0118) #6
  %signature = getelementptr inbounds i8, i8* %call27, i64 40
  %5 = bitcast i8* %signature to %struct.asn1_string_st**
  %6 = load %struct.asn1_string_st*, %struct.asn1_string_st** %5, align 8, !tbaa !26
  %7 = load %struct.asn1_string_st*, %struct.asn1_string_st** %4, align 8, !tbaa !27
  %call28 = tail call i32 @ASN1_STRING_cmp(%struct.asn1_string_st* noundef %6, %struct.asn1_string_st* noundef %7) #6
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %for.end.split.loop.exit, label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.0118, 1
  %call24 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call23) #6
  %cmp25 = icmp slt i32 %inc, %call24
  br i1 %cmp25, label %for.body, label %for.cond.for.end.split.loop.exit112_crit_edge, !llvm.loop !29

for.end.split.loop.exit:                          ; preds = %for.body
  %8 = bitcast i8* %call27 to %struct.CMS_SignerInfo_st*
  br label %for.end

for.cond.for.end.split.loop.exit112_crit_edge:    ; preds = %for.inc
  %9 = bitcast i8* %call27 to %struct.CMS_SignerInfo_st*
  br label %for.end

for.end:                                          ; preds = %for.cond.preheader, %for.cond.for.end.split.loop.exit112_crit_edge, %for.end.split.loop.exit
  %i.0.lcssa = phi i32 [ %i.0118, %for.end.split.loop.exit ], [ %inc, %for.cond.for.end.split.loop.exit112_crit_edge ], [ 0, %for.cond.preheader ]
  %osi.1 = phi %struct.CMS_SignerInfo_st* [ %8, %for.end.split.loop.exit ], [ %9, %for.cond.for.end.split.loop.exit112_crit_edge ], [ null, %for.cond.preheader ]
  %call33 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call23) #6
  %cmp34 = icmp eq i32 %i.0.lcssa, %call33
  br i1 %cmp34, label %if.then35, label %if.end36

if.then35:                                        ; preds = %for.end
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 304, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.ossl_cms_Receipt_verify, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 46, i32 noundef 166, i8* noundef null) #6
  br label %err

if.end36:                                         ; preds = %for.end
  %call38 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call3, i32 noundef 0) #6
  %10 = bitcast i8* %call38 to %struct.CMS_SignerInfo_st*
  %call39 = tail call %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef 216) #6
  %call40 = tail call i8* @CMS_signed_get0_data_by_OBJ(%struct.CMS_SignerInfo_st* noundef %10, %struct.asn1_object_st* noundef %call39, i32 noundef -3, i32 noundef 4) #6
  %tobool41.not = icmp eq i8* %call40, null
  br i1 %tobool41.not, label %if.then42, label %if.end43

if.then42:                                        ; preds = %if.end36
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 318, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.ossl_cms_Receipt_verify, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 46, i32 noundef 167, i8* noundef null) #6
  br label %err

if.end43:                                         ; preds = %if.end36
  %call44 = call fastcc i32 @cms_msgSigDigest(%struct.CMS_SignerInfo_st* noundef %osi.1, i8* noundef nonnull %1, i32* noundef nonnull %diglen) #7
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.then46, label %if.end47

if.then46:                                        ; preds = %if.end43
  call void @ERR_new() #6
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 323, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.ossl_cms_Receipt_verify, i64 0, i64 0)) #6
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 46, i32 noundef 172, i8* noundef null) #6
  br label %err

if.end47:                                         ; preds = %if.end43
  %11 = load i32, i32* %diglen, align 4, !tbaa !19
  %length = bitcast i8* %call40 to i32*
  %12 = load i32, i32* %length, align 8, !tbaa !31
  %cmp48.not = icmp eq i32 %11, %12
  br i1 %cmp48.not, label %if.end50, label %if.then49

if.then49:                                        ; preds = %if.end47
  call void @ERR_new() #6
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 328, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.ossl_cms_Receipt_verify, i64 0, i64 0)) #6
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 46, i32 noundef 163, i8* noundef null) #6
  br label %err

if.end50:                                         ; preds = %if.end47
  %data = getelementptr inbounds i8, i8* %call40, i64 8
  %13 = bitcast i8* %data to i8**
  %14 = load i8*, i8** %13, align 8, !tbaa !10
  %conv = zext i32 %11 to i64
  %call52 = call i32 @memcmp(i8* noundef nonnull %1, i8* noundef %14, i64 noundef %conv) #9
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.end55, label %if.then54

if.then54:                                        ; preds = %if.end50
  call void @ERR_new() #6
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 333, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.ossl_cms_Receipt_verify, i64 0, i64 0)) #6
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 46, i32 noundef 162, i8* noundef null) #6
  br label %err

if.end55:                                         ; preds = %if.end50
  %call56 = call %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef 50) #6
  %call57 = call i8* @CMS_signed_get0_data_by_OBJ(%struct.CMS_SignerInfo_st* noundef %osi.1, %struct.asn1_object_st* noundef %call56, i32 noundef -3, i32 noundef 6) #6
  %tobool58.not = icmp eq i8* %call57, null
  br i1 %tobool58.not, label %if.then59, label %if.end60

if.then59:                                        ; preds = %if.end55
  call void @ERR_new() #6
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 343, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.ossl_cms_Receipt_verify, i64 0, i64 0)) #6
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 46, i32 noundef 173, i8* noundef null) #6
  br label %err

if.end60:                                         ; preds = %if.end55
  %15 = bitcast i8* %call57 to %struct.asn1_object_st*
  %contentType = getelementptr inbounds i8, i8* %call19, i64 8
  %16 = bitcast i8* %contentType to %struct.asn1_object_st**
  %17 = load %struct.asn1_object_st*, %struct.asn1_object_st** %16, align 8, !tbaa !32
  %call61 = call i32 @OBJ_cmp(%struct.asn1_object_st* noundef nonnull %15, %struct.asn1_object_st* noundef %17) #6
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %if.end64, label %if.then63

if.then63:                                        ; preds = %if.end60
  call void @ERR_new() #6
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 350, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.ossl_cms_Receipt_verify, i64 0, i64 0)) #6
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 46, i32 noundef 171, i8* noundef null) #6
  br label %err

if.end64:                                         ; preds = %if.end60
  %call65 = call i32 @CMS_get1_ReceiptRequest(%struct.CMS_SignerInfo_st* noundef %osi.1, %struct.CMS_ReceiptRequest_st** noundef nonnull %rr) #7
  %cmp66 = icmp slt i32 %call65, 1
  br i1 %cmp66, label %if.then68, label %if.end69

if.then68:                                        ; preds = %if.end64
  call void @ERR_new() #6
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 357, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.ossl_cms_Receipt_verify, i64 0, i64 0)) #6
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 46, i32 noundef 168, i8* noundef null) #6
  br label %err

if.end69:                                         ; preds = %if.end64
  %18 = load %struct.CMS_ReceiptRequest_st*, %struct.CMS_ReceiptRequest_st** %rr, align 8, !tbaa !4
  %signedContentIdentifier = getelementptr inbounds %struct.CMS_ReceiptRequest_st, %struct.CMS_ReceiptRequest_st* %18, i64 0, i32 0
  %19 = load %struct.asn1_string_st*, %struct.asn1_string_st** %signedContentIdentifier, align 8, !tbaa !8
  %signedContentIdentifier70 = getelementptr inbounds i8, i8* %call19, i64 16
  %20 = bitcast i8* %signedContentIdentifier70 to %struct.asn1_string_st**
  %21 = load %struct.asn1_string_st*, %struct.asn1_string_st** %20, align 8, !tbaa !33
  %call71 = call i32 @ASN1_STRING_cmp(%struct.asn1_string_st* noundef %19, %struct.asn1_string_st* noundef %21) #6
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %err, label %if.then73

if.then73:                                        ; preds = %if.end69
  call void @ERR_new() #6
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 363, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.ossl_cms_Receipt_verify, i64 0, i64 0)) #6
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 46, i32 noundef 170, i8* noundef null) #6
  br label %err

err:                                              ; preds = %if.end69, %entry, %if.then73, %if.then68, %if.then63, %if.then59, %if.then54, %if.then49, %if.then46, %if.then42, %if.then35, %if.then21, %if.then16, %if.then10, %if.then5
  %22 = phi i8* [ null, %if.then5 ], [ null, %if.then10 ], [ null, %if.then16 ], [ %call19, %if.then35 ], [ %call19, %if.then49 ], [ %call19, %if.then54 ], [ %call19, %if.then63 ], [ %call19, %if.then68 ], [ %call19, %if.then73 ], [ %call19, %if.then59 ], [ %call19, %if.then46 ], [ %call19, %if.then42 ], [ null, %if.then21 ], [ null, %entry ], [ %call19, %if.end69 ]
  %r.0 = phi i32 [ 0, %if.then5 ], [ 0, %if.then10 ], [ 0, %if.then16 ], [ 0, %if.then35 ], [ 0, %if.then49 ], [ 0, %if.then54 ], [ 0, %if.then63 ], [ 0, %if.then68 ], [ 0, %if.then73 ], [ 0, %if.then59 ], [ 0, %if.then46 ], [ 0, %if.then42 ], [ 0, %if.then21 ], [ 0, %entry ], [ 1, %if.end69 ]
  %23 = load %struct.CMS_ReceiptRequest_st*, %struct.CMS_ReceiptRequest_st** %rr, align 8, !tbaa !4
  call void @CMS_ReceiptRequest_free(%struct.CMS_ReceiptRequest_st* noundef %23) #7
  %24 = bitcast i8* %22 to %struct.ASN1_VALUE_st*
  %call75 = call %struct.ASN1_ITEM_st* @CMS_Receipt_it() #6
  call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef %24, %struct.ASN1_ITEM_st* noundef %call75) #6
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #8
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %1) #8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8
  ret i32 %r.0
}

declare %struct.stack_st_CMS_SignerInfo* @CMS_get0_SignerInfos(%struct.CMS_ContentInfo_st* noundef) local_unnamed_addr #1

declare i32 @OPENSSL_sk_num(%struct.stack_st* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_CMS_SignerInfo_sk_type(%struct.stack_st_CMS_SignerInfo* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_CMS_SignerInfo* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef) local_unnamed_addr #1

declare %struct.asn1_object_st* @CMS_get0_eContentType(%struct.CMS_ContentInfo_st* noundef) local_unnamed_addr #1

declare %struct.asn1_string_st** @CMS_get0_content(%struct.CMS_ContentInfo_st* noundef) local_unnamed_addr #1

declare %struct.ASN1_ITEM_st* @CMS_Receipt_it() local_unnamed_addr #1

declare i8* @OPENSSL_sk_value(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #1

declare i32 @ASN1_STRING_cmp(%struct.asn1_string_st* noundef, %struct.asn1_string_st* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #5

declare i32 @OBJ_cmp(%struct.asn1_object_st* noundef, %struct.asn1_object_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define %struct.asn1_string_st* @ossl_cms_encode_Receipt(%struct.CMS_SignerInfo_st* noundef %si) local_unnamed_addr #0 {
entry:
  %rct = alloca %struct.CMS_Receipt_st, align 8
  %rr = alloca %struct.CMS_ReceiptRequest_st*, align 8
  %0 = bitcast %struct.CMS_Receipt_st* %rct to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #8
  %1 = bitcast %struct.CMS_ReceiptRequest_st** %rr to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #8
  store %struct.CMS_ReceiptRequest_st* null, %struct.CMS_ReceiptRequest_st** %rr, align 8, !tbaa !4
  %call = call i32 @CMS_get1_ReceiptRequest(%struct.CMS_SignerInfo_st* noundef %si, %struct.CMS_ReceiptRequest_st** noundef nonnull %rr) #7
  %cmp = icmp slt i32 %call, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @ERR_new() #6
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 393, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.ossl_cms_encode_Receipt, i64 0, i64 0)) #6
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 46, i32 noundef 168, i8* noundef null) #6
  br label %err

if.end:                                           ; preds = %entry
  %call1 = call %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef 50) #6
  %call2 = call i8* @CMS_signed_get0_data_by_OBJ(%struct.CMS_SignerInfo_st* noundef %si, %struct.asn1_object_st* noundef %call1, i32 noundef -3, i32 noundef 6) #6
  %tobool.not = icmp eq i8* %call2, null
  br i1 %tobool.not, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @ERR_new() #6
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 403, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.ossl_cms_encode_Receipt, i64 0, i64 0)) #6
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 46, i32 noundef 173, i8* noundef null) #6
  br label %err

if.end4:                                          ; preds = %if.end
  %version = getelementptr inbounds %struct.CMS_Receipt_st, %struct.CMS_Receipt_st* %rct, i64 0, i32 0
  store i32 1, i32* %version, align 8, !tbaa !34
  %contentType = getelementptr inbounds %struct.CMS_Receipt_st, %struct.CMS_Receipt_st* %rct, i64 0, i32 1
  %2 = bitcast %struct.asn1_object_st** %contentType to i8**
  store i8* %call2, i8** %2, align 8, !tbaa !32
  %3 = load %struct.CMS_ReceiptRequest_st*, %struct.CMS_ReceiptRequest_st** %rr, align 8, !tbaa !4
  %signedContentIdentifier = getelementptr inbounds %struct.CMS_ReceiptRequest_st, %struct.CMS_ReceiptRequest_st* %3, i64 0, i32 0
  %4 = load %struct.asn1_string_st*, %struct.asn1_string_st** %signedContentIdentifier, align 8, !tbaa !8
  %signedContentIdentifier5 = getelementptr inbounds %struct.CMS_Receipt_st, %struct.CMS_Receipt_st* %rct, i64 0, i32 2
  store %struct.asn1_string_st* %4, %struct.asn1_string_st** %signedContentIdentifier5, align 8, !tbaa !33
  %signature = getelementptr inbounds %struct.CMS_SignerInfo_st, %struct.CMS_SignerInfo_st* %si, i64 0, i32 5
  %5 = load %struct.asn1_string_st*, %struct.asn1_string_st** %signature, align 8, !tbaa !26
  %originatorSignatureValue = getelementptr inbounds %struct.CMS_Receipt_st, %struct.CMS_Receipt_st* %rct, i64 0, i32 3
  store %struct.asn1_string_st* %5, %struct.asn1_string_st** %originatorSignatureValue, align 8, !tbaa !27
  %call6 = call %struct.ASN1_ITEM_st* @CMS_Receipt_it() #6
  %call7 = call %struct.asn1_string_st* @ASN1_item_pack(i8* noundef nonnull %0, %struct.ASN1_ITEM_st* noundef %call6, %struct.asn1_string_st** noundef null) #6
  br label %err

err:                                              ; preds = %if.end4, %if.then3, %if.then
  %os.0 = phi %struct.asn1_string_st* [ null, %if.then ], [ %call7, %if.end4 ], [ null, %if.then3 ]
  %6 = load %struct.CMS_ReceiptRequest_st*, %struct.CMS_ReceiptRequest_st** %rr, align 8, !tbaa !4
  call void @CMS_ReceiptRequest_free(%struct.CMS_ReceiptRequest_st* noundef %6) #7
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #8
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #8
  ret %struct.asn1_string_st* %os.0
}

declare %struct.asn1_string_st* @ASN1_item_pack(i8* noundef, %struct.ASN1_ITEM_st* noundef, %struct.asn1_string_st** noundef) local_unnamed_addr #1

declare %struct.ASN1_ITEM_st* @ESS_SIGNING_CERT_it() local_unnamed_addr #1

declare %struct.ASN1_ITEM_st* @ESS_SIGNING_CERT_V2_it() local_unnamed_addr #1

declare %struct.evp_md_st* @EVP_get_digestbyname(i8* noundef) local_unnamed_addr #1

declare i8* @OBJ_nid2sn(i32 noundef) local_unnamed_addr #1

declare i32 @ossl_asn1_item_digest_ex(%struct.ASN1_ITEM_st* noundef, %struct.evp_md_st* noundef, i8* noundef, i8* noundef, i32* noundef, %struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #1

declare %struct.ASN1_ITEM_st* @CMS_Attributes_Verify_it() local_unnamed_addr #1

declare %struct.ossl_lib_ctx_st* @ossl_cms_ctx_get0_libctx(%struct.CMS_CTX_st* noundef) local_unnamed_addr #1

declare i8* @ossl_cms_ctx_get0_propq(%struct.CMS_CTX_st* noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!4 = !{!5, !5, i64 0}
!5 = !{!"any pointer", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !5, i64 0}
!9 = !{!"CMS_ReceiptRequest_st", !5, i64 0, !5, i64 8, !5, i64 16}
!10 = !{!11, !5, i64 8}
!11 = !{!"asn1_string_st", !12, i64 0, !12, i64 4, !5, i64 8, !13, i64 16}
!12 = !{!"int", !6, i64 0}
!13 = !{!"long", !6, i64 0}
!14 = !{!9, !5, i64 16}
!15 = !{!9, !5, i64 8}
!16 = !{!17, !12, i64 0}
!17 = !{!"CMS_ReceiptsFrom_st", !12, i64 0, !6, i64 8}
!18 = !{!6, !6, i64 0}
!19 = !{!12, !12, i64 0}
!20 = !{!21, !5, i64 16}
!21 = !{!"CMS_SignerInfo_st", !12, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !5, i64 40, !5, i64 48, !5, i64 56, !5, i64 64, !5, i64 72, !5, i64 80, !5, i64 88}
!22 = !{!23, !5, i64 0}
!23 = !{!"X509_algor_st", !5, i64 0, !5, i64 8}
!24 = !{!21, !5, i64 24}
!25 = !{!21, !5, i64 88}
!26 = !{!21, !5, i64 40}
!27 = !{!28, !5, i64 24}
!28 = !{!"CMS_Receipt_st", !12, i64 0, !5, i64 8, !5, i64 16, !5, i64 24}
!29 = distinct !{!29, !30}
!30 = !{!"llvm.loop.mustprogress"}
!31 = !{!11, !12, i64 0}
!32 = !{!28, !5, i64 8}
!33 = !{!28, !5, i64 16}
!34 = !{!28, !12, i64 0}
