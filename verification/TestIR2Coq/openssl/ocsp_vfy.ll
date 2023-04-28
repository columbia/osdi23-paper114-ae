; ModuleID = 'crypto/ocsp/ocsp_vfy.c'
source_filename = "crypto/ocsp/ocsp_vfy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocsp_basic_response_st = type { %struct.ocsp_response_data_st, %struct.X509_algor_st, %struct.asn1_string_st*, %struct.stack_st_X509* }
%struct.ocsp_response_data_st = type { %struct.asn1_string_st*, %struct.ocsp_responder_id_st, %struct.asn1_string_st*, %struct.stack_st_OCSP_SINGLERESP*, %struct.stack_st_X509_EXTENSION* }
%struct.ocsp_responder_id_st = type { i32, %union.anon }
%union.anon = type { %struct.X509_name_st* }
%struct.X509_name_st = type { %struct.stack_st_X509_NAME_ENTRY*, i32, %struct.buf_mem_st*, i8*, i32 }
%struct.stack_st_X509_NAME_ENTRY = type opaque
%struct.buf_mem_st = type { i64, i8*, i64, i64 }
%struct.stack_st_OCSP_SINGLERESP = type opaque
%struct.stack_st_X509_EXTENSION = type opaque
%struct.X509_algor_st = type { %struct.asn1_object_st*, %struct.asn1_type_st* }
%struct.asn1_object_st = type opaque
%struct.asn1_type_st = type { i32, %union.anon.0 }
%union.anon.0 = type { i8* }
%struct.asn1_string_st = type { i32, i32, i8*, i64 }
%struct.stack_st_X509 = type opaque
%struct.x509_store_st = type opaque
%struct.x509_st = type { %struct.x509_cinf_st, %struct.X509_algor_st, %struct.asn1_string_st, %struct.x509_sig_info_st, i32, %struct.crypto_ex_data_st, i64, i64, i32, i32, i32, i32, %struct.asn1_string_st*, %struct.AUTHORITY_KEYID_st*, %struct.X509_POLICY_CACHE_st*, %struct.stack_st_DIST_POINT*, %struct.stack_st_GENERAL_NAME*, %struct.NAME_CONSTRAINTS_st*, %struct.stack_st_IPAddressFamily*, %struct.ASIdentifiers_st*, [20 x i8], %struct.x509_cert_aux_st*, i8*, i32, %struct.asn1_string_st*, %struct.ossl_lib_ctx_st*, i8* }
%struct.x509_cinf_st = type { %struct.asn1_string_st*, %struct.asn1_string_st, %struct.X509_algor_st, %struct.X509_name_st*, %struct.X509_val_st, %struct.X509_name_st*, %struct.X509_pubkey_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.stack_st_X509_EXTENSION*, %struct.ASN1_ENCODING_st }
%struct.X509_val_st = type { %struct.asn1_string_st*, %struct.asn1_string_st* }
%struct.X509_pubkey_st = type opaque
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
%struct.ASIdentifierChoice_st = type { i32, %union.anon.1 }
%union.anon.1 = type { i32* }
%struct.x509_cert_aux_st = type { %struct.stack_st_ASN1_OBJECT*, %struct.stack_st_ASN1_OBJECT*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.stack_st_X509_ALGOR* }
%struct.stack_st_ASN1_OBJECT = type opaque
%struct.stack_st_X509_ALGOR = type opaque
%struct.ossl_lib_ctx_st = type opaque
%struct.ocsp_request_st = type { %struct.ocsp_req_info_st, %struct.ocsp_signature_st* }
%struct.ocsp_req_info_st = type { %struct.asn1_string_st*, %struct.GENERAL_NAME_st*, %struct.stack_st_OCSP_ONEREQ*, %struct.stack_st_X509_EXTENSION* }
%struct.GENERAL_NAME_st = type { i32, %union.anon.2 }
%union.anon.2 = type { i8* }
%struct.stack_st_OCSP_ONEREQ = type opaque
%struct.ocsp_signature_st = type { %struct.X509_algor_st, %struct.asn1_string_st*, %struct.stack_st_X509* }
%struct.stack_st = type opaque
%struct.evp_pkey_st = type opaque
%struct.ASN1_ITEM_st = type opaque
%struct.x509_store_ctx_st = type { %struct.x509_store_st*, %struct.x509_st*, %struct.stack_st_X509*, %struct.stack_st_X509_CRL*, %struct.X509_VERIFY_PARAM_st*, i8*, i32 (%struct.x509_store_ctx_st*)*, i32 (i32, %struct.x509_store_ctx_st*)*, i32 (%struct.x509_st**, %struct.x509_store_ctx_st*, %struct.x509_st*)*, i32 (%struct.x509_store_ctx_st*, %struct.x509_st*, %struct.x509_st*)*, i32 (%struct.x509_store_ctx_st*)*, i32 (%struct.x509_store_ctx_st*, %struct.X509_crl_st**, %struct.x509_st*)*, i32 (%struct.x509_store_ctx_st*, %struct.X509_crl_st*)*, i32 (%struct.x509_store_ctx_st*, %struct.X509_crl_st*, %struct.x509_st*)*, i32 (%struct.x509_store_ctx_st*)*, %struct.stack_st_X509* (%struct.x509_store_ctx_st*, %struct.X509_name_st*)*, %struct.stack_st_X509_CRL* (%struct.x509_store_ctx_st*, %struct.X509_name_st*)*, i32 (%struct.x509_store_ctx_st*)*, i32, i32, %struct.stack_st_X509*, %struct.X509_POLICY_TREE_st*, i32, i32, i32, %struct.x509_st*, %struct.x509_st*, %struct.X509_crl_st*, i32, i32, %struct.x509_store_ctx_st*, %struct.crypto_ex_data_st, %struct.ssl_dane_st*, i32, %struct.ossl_lib_ctx_st*, i8* }
%struct.stack_st_X509_CRL = type opaque
%struct.X509_VERIFY_PARAM_st = type opaque
%struct.X509_POLICY_TREE_st = type opaque
%struct.X509_crl_st = type { %struct.X509_crl_info_st, %struct.X509_algor_st, %struct.asn1_string_st, i32, i32, %struct.AUTHORITY_KEYID_st*, %struct.ISSUING_DIST_POINT_st*, i32, i32, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.stack_st_GENERAL_NAMES*, [20 x i8], %struct.x509_crl_method_st*, i8*, i8*, %struct.ossl_lib_ctx_st*, i8* }
%struct.X509_crl_info_st = type { %struct.asn1_string_st*, %struct.X509_algor_st, %struct.X509_name_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.stack_st_X509_REVOKED*, %struct.stack_st_X509_EXTENSION*, %struct.ASN1_ENCODING_st }
%struct.stack_st_X509_REVOKED = type opaque
%struct.ISSUING_DIST_POINT_st = type { %struct.DIST_POINT_NAME_st*, i32, i32, %struct.asn1_string_st*, i32, i32 }
%struct.DIST_POINT_NAME_st = type { i32, %union.anon.3, %struct.X509_name_st* }
%union.anon.3 = type { %struct.stack_st_GENERAL_NAME* }
%struct.stack_st_GENERAL_NAMES = type opaque
%struct.x509_crl_method_st = type opaque
%struct.ssl_dane_st = type opaque
%struct.ocsp_cert_id_st = type { %struct.X509_algor_st, %struct.asn1_string_st, %struct.asn1_string_st, %struct.asn1_string_st }
%struct.evp_md_st = type opaque

@.str = private unnamed_addr constant [23 x i8] c"crypto/ocsp/ocsp_vfy.c\00", align 1
@__func__.OCSP_basic_verify = private unnamed_addr constant [18 x i8] c"OCSP_basic_verify\00", align 1
@__func__.OCSP_request_verify = private unnamed_addr constant [20 x i8] c"OCSP_request_verify\00", align 1
@__func__.ocsp_verify = private unnamed_addr constant [12 x i8] c"ocsp_verify\00", align 1
@__func__.ocsp_verify_signer = private unnamed_addr constant [19 x i8] c"ocsp_verify_signer\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"Verify error: %s\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"SHA1\00", align 1
@__func__.ocsp_check_issuer = private unnamed_addr constant [18 x i8] c"ocsp_check_issuer\00", align 1
@__func__.ocsp_check_ids = private unnamed_addr constant [15 x i8] c"ocsp_check_ids\00", align 1
@__func__.ocsp_match_issuerid = private unnamed_addr constant [20 x i8] c"ocsp_match_issuerid\00", align 1
@__func__.ocsp_check_delegated = private unnamed_addr constant [21 x i8] c"ocsp_check_delegated\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @OCSP_basic_verify(%struct.ocsp_basic_response_st* noundef %bs, %struct.stack_st_X509* noundef %certs, %struct.x509_store_st* noundef %st, i64 noundef %flags) local_unnamed_addr #0 {
entry:
  %signer = alloca %struct.x509_st*, align 8
  %chain = alloca %struct.stack_st_X509*, align 8
  %0 = bitcast %struct.x509_st** %signer to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #5
  %1 = bitcast %struct.stack_st_X509** %chain to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #5
  store %struct.stack_st_X509* null, %struct.stack_st_X509** %chain, align 8, !tbaa !4
  %call = call fastcc i32 @ocsp_find_signer(%struct.x509_st** noundef nonnull %signer, %struct.ocsp_basic_response_st* noundef %bs, %struct.stack_st_X509* noundef %certs, i64 noundef %flags) #6
  switch i32 %call, label %if.end4 [
    i32 0, label %if.then
    i32 2, label %land.lhs.true
  ]

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 106, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.OCSP_basic_verify, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 39, i32 noundef 118, i8* noundef null) #7
  br label %end

land.lhs.true:                                    ; preds = %entry
  %and = lshr i64 %flags, 5
  %2 = and i64 %and, 16
  %3 = or i64 %2, %flags
  br label %if.end4

if.end4:                                          ; preds = %land.lhs.true, %entry
  %flags.addr.0 = phi i64 [ %flags, %entry ], [ %3, %land.lhs.true ]
  %4 = load %struct.x509_st*, %struct.x509_st** %signer, align 8, !tbaa !4
  %call5 = tail call fastcc i32 @ocsp_verify(%struct.ocsp_request_st* noundef null, %struct.ocsp_basic_response_st* noundef %bs, %struct.x509_st* noundef %4, i64 noundef %flags.addr.0) #6
  %cmp6 = icmp sgt i32 %call5, 0
  %and9 = and i64 %flags.addr.0, 16
  %cmp10 = icmp eq i64 %and9, 0
  %or.cond = and i1 %cmp10, %cmp6
  br i1 %or.cond, label %if.then11, label %end

if.then11:                                        ; preds = %if.end4
  %and12 = and i64 %flags.addr.0, 8
  %cmp13 = icmp eq i64 %and12, 0
  br i1 %cmp13, label %if.then14, label %if.end24

if.then14:                                        ; preds = %if.then11
  %certs15 = getelementptr inbounds %struct.ocsp_basic_response_st, %struct.ocsp_basic_response_st* %bs, i64 0, i32 3
  %5 = load %struct.stack_st_X509*, %struct.stack_st_X509** %certs15, align 8, !tbaa !8
  %call16 = tail call fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef %5) #6
  %call17 = tail call %struct.stack_st* @OPENSSL_sk_dup(%struct.stack_st* noundef %call16) #7
  %6 = bitcast %struct.stack_st* %call17 to %struct.stack_st_X509*
  %cmp18 = icmp eq %struct.stack_st* %call17, null
  br i1 %cmp18, label %end, label %if.end20

if.end20:                                         ; preds = %if.then14
  %call21 = tail call i32 @X509_add_certs(%struct.stack_st_X509* noundef nonnull %6, %struct.stack_st_X509* noundef %certs, i32 noundef 0) #7
  %tobool.not = icmp eq i32 %call21, 0
  br i1 %tobool.not, label %end, label %if.end24

if.end24:                                         ; preds = %if.end20, %if.then11
  %untrusted.0 = phi %struct.stack_st_X509* [ %6, %if.end20 ], [ null, %if.then11 ]
  %call25 = call fastcc i32 @ocsp_verify_signer(%struct.x509_st* noundef %4, i32 noundef 1, %struct.x509_store_st* noundef %st, i64 noundef %flags.addr.0, %struct.stack_st_X509* noundef %untrusted.0, %struct.stack_st_X509** noundef nonnull %chain) #6
  %cmp26 = icmp slt i32 %call25, 1
  br i1 %cmp26, label %end, label %if.end28

if.end28:                                         ; preds = %if.end24
  %and29 = and i64 %flags.addr.0, 256
  %cmp30.not = icmp eq i64 %and29, 0
  br i1 %cmp30.not, label %if.end32, label %end

if.end32:                                         ; preds = %if.end28
  %7 = load %struct.stack_st_X509*, %struct.stack_st_X509** %chain, align 8, !tbaa !4
  %call33 = call fastcc i32 @ocsp_check_issuer(%struct.ocsp_basic_response_st* noundef %bs, %struct.stack_st_X509* noundef %7) #6
  %cmp34.not = icmp eq i32 %call33, 0
  br i1 %cmp34.not, label %if.end36, label %end

if.end36:                                         ; preds = %if.end32
  %and37 = and i64 %flags.addr.0, 32
  %cmp38.not = icmp eq i64 %and37, 0
  br i1 %cmp38.not, label %if.end40, label %end

if.end40:                                         ; preds = %if.end36
  %8 = load %struct.stack_st_X509*, %struct.stack_st_X509** %chain, align 8, !tbaa !4
  %call41 = call fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef %8) #6
  %call43 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call41) #7
  %sub = add nsw i32 %call43, -1
  %call44 = call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call41, i32 noundef %sub) #7
  %9 = bitcast i8* %call44 to %struct.x509_st*
  %call45 = call i32 @X509_check_trust(%struct.x509_st* noundef %9, i32 noundef 180, i32 noundef 0) #7
  %cmp46.not = icmp eq i32 %call45, 1
  br i1 %cmp46.not, label %end, label %if.then47

if.then47:                                        ; preds = %if.end40
  call void @ERR_new() #7
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 148, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.OCSP_basic_verify, i64 0, i64 0)) #7
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 39, i32 noundef 112, i8* noundef null) #7
  br label %end

end:                                              ; preds = %if.end40, %if.end28, %if.end36, %if.end32, %if.end24, %if.end20, %if.then14, %if.end4, %if.then47, %if.then
  %untrusted.1 = phi %struct.stack_st_X509* [ null, %if.then ], [ null, %if.end4 ], [ null, %if.then14 ], [ %untrusted.0, %if.end24 ], [ %untrusted.0, %if.end32 ], [ %untrusted.0, %if.end36 ], [ %untrusted.0, %if.then47 ], [ %6, %if.end20 ], [ %untrusted.0, %if.end28 ], [ %untrusted.0, %if.end40 ]
  %ret.0 = phi i32 [ 0, %if.then ], [ %call5, %if.end4 ], [ -1, %if.then14 ], [ %call25, %if.end24 ], [ %call33, %if.end32 ], [ 0, %if.end36 ], [ 0, %if.then47 ], [ -1, %if.end20 ], [ 1, %if.end28 ], [ 1, %if.end40 ]
  %10 = load %struct.stack_st_X509*, %struct.stack_st_X509** %chain, align 8, !tbaa !4
  %call50 = call fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef %10) #6
  call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call50, void (i8*)* noundef bitcast (void (%struct.x509_st*)* @X509_free to void (i8*)*)) #7
  %call52 = call fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef %untrusted.1) #6
  call void @OPENSSL_sk_free(%struct.stack_st* noundef %call52) #7
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #5
  ret i32 %ret.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @ocsp_find_signer(%struct.x509_st** nocapture noundef writeonly %psigner, %struct.ocsp_basic_response_st* nocapture noundef readonly %bs, %struct.stack_st_X509* noundef %certs, i64 noundef %flags) unnamed_addr #0 {
entry:
  %responderId = getelementptr inbounds %struct.ocsp_basic_response_st, %struct.ocsp_basic_response_st* %bs, i64 0, i32 0, i32 1
  %call = tail call fastcc %struct.x509_st* @ocsp_find_signer_sk(%struct.stack_st_X509* noundef %certs, %struct.ocsp_responder_id_st* noundef nonnull %responderId) #6
  %cmp.not = icmp eq %struct.x509_st* %call, null
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %and = and i64 %flags, 2
  %cmp1 = icmp eq i64 %and, 0
  br i1 %cmp1, label %land.lhs.true, label %if.end5

land.lhs.true:                                    ; preds = %if.end
  %certs2 = getelementptr inbounds %struct.ocsp_basic_response_st, %struct.ocsp_basic_response_st* %bs, i64 0, i32 3
  %0 = load %struct.stack_st_X509*, %struct.stack_st_X509** %certs2, align 8, !tbaa !8
  %call3 = tail call fastcc %struct.x509_st* @ocsp_find_signer_sk(%struct.stack_st_X509* noundef %0, %struct.ocsp_responder_id_st* noundef nonnull %responderId) #6
  %tobool.not = icmp eq %struct.x509_st* %call3, null
  br i1 %tobool.not, label %if.end5, label %cleanup

if.end5:                                          ; preds = %land.lhs.true, %if.end
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true, %entry, %if.end5
  %.sink = phi %struct.x509_st* [ null, %if.end5 ], [ %call, %entry ], [ %call3, %land.lhs.true ]
  %retval.0 = phi i32 [ 0, %if.end5 ], [ 2, %entry ], [ 1, %land.lhs.true ]
  store %struct.x509_st* %.sink, %struct.x509_st** %psigner, align 8, !tbaa !4
  ret i32 %retval.0
}

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @ocsp_verify(%struct.ocsp_request_st* noundef %req, %struct.ocsp_basic_response_st* noundef %bs, %struct.x509_st* noundef %signer, i64 noundef %flags) unnamed_addr #0 {
entry:
  %and = and i64 %flags, 4
  %cmp = icmp eq i64 %and, 0
  br i1 %cmp, label %if.then, label %cleanup

if.then:                                          ; preds = %entry
  %call = tail call %struct.evp_pkey_st* @X509_get0_pubkey(%struct.x509_st* noundef %signer) #7
  %cmp1 = icmp eq %struct.evp_pkey_st* %call, null
  br i1 %cmp1, label %cleanup.sink.split, label %if.end

if.end:                                           ; preds = %if.then
  %cmp3.not = icmp eq %struct.ocsp_request_st* %req, null
  br i1 %cmp3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.end
  %call5 = tail call %struct.ASN1_ITEM_st* @OCSP_REQINFO_it() #7
  %optionalSignature = getelementptr inbounds %struct.ocsp_request_st, %struct.ocsp_request_st* %req, i64 0, i32 1
  %0 = load %struct.ocsp_signature_st*, %struct.ocsp_signature_st** %optionalSignature, align 8, !tbaa !14
  %signatureAlgorithm = getelementptr inbounds %struct.ocsp_signature_st, %struct.ocsp_signature_st* %0, i64 0, i32 0
  %signature = getelementptr inbounds %struct.ocsp_signature_st, %struct.ocsp_signature_st* %0, i64 0, i32 1
  %1 = load %struct.asn1_string_st*, %struct.asn1_string_st** %signature, align 8, !tbaa !17
  %2 = bitcast %struct.ocsp_request_st* %req to i8*
  %libctx = getelementptr inbounds %struct.x509_st, %struct.x509_st* %signer, i64 0, i32 25
  %3 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !19
  %propq = getelementptr inbounds %struct.x509_st, %struct.x509_st* %signer, i64 0, i32 26
  %4 = load i8*, i8** %propq, align 8, !tbaa !28
  %call7 = tail call i32 @ASN1_item_verify_ex(%struct.ASN1_ITEM_st* noundef %call5, %struct.X509_algor_st* noundef %signatureAlgorithm, %struct.asn1_string_st* noundef %1, i8* noundef nonnull %2, %struct.asn1_string_st* noundef null, %struct.evp_pkey_st* noundef nonnull %call, %struct.ossl_lib_ctx_st* noundef %3, i8* noundef %4) #7
  br label %if.end14

if.else:                                          ; preds = %if.end
  %call8 = tail call %struct.ASN1_ITEM_st* @OCSP_RESPDATA_it() #7
  %signatureAlgorithm9 = getelementptr inbounds %struct.ocsp_basic_response_st, %struct.ocsp_basic_response_st* %bs, i64 0, i32 1
  %signature10 = getelementptr inbounds %struct.ocsp_basic_response_st, %struct.ocsp_basic_response_st* %bs, i64 0, i32 2
  %5 = load %struct.asn1_string_st*, %struct.asn1_string_st** %signature10, align 8, !tbaa !29
  %6 = bitcast %struct.ocsp_basic_response_st* %bs to i8*
  %libctx11 = getelementptr inbounds %struct.x509_st, %struct.x509_st* %signer, i64 0, i32 25
  %7 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx11, align 8, !tbaa !19
  %propq12 = getelementptr inbounds %struct.x509_st, %struct.x509_st* %signer, i64 0, i32 26
  %8 = load i8*, i8** %propq12, align 8, !tbaa !28
  %call13 = tail call i32 @ASN1_item_verify_ex(%struct.ASN1_ITEM_st* noundef %call8, %struct.X509_algor_st* noundef nonnull %signatureAlgorithm9, %struct.asn1_string_st* noundef %5, i8* noundef %6, %struct.asn1_string_st* noundef null, %struct.evp_pkey_st* noundef nonnull %call, %struct.ossl_lib_ctx_st* noundef %7, i8* noundef %8) #7
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.then4
  %ret.0 = phi i32 [ %call7, %if.then4 ], [ %call13, %if.else ]
  %cmp15 = icmp slt i32 %ret.0, 1
  br i1 %cmp15, label %cleanup.sink.split, label %cleanup

cleanup.sink.split:                               ; preds = %if.end14, %if.then
  %.sink33 = phi i32 [ 83, %if.then ], [ 91, %if.end14 ]
  %.sink = phi i32 [ 130, %if.then ], [ 117, %if.end14 ]
  %retval.0.ph = phi i32 [ -1, %if.then ], [ %ret.0, %if.end14 ]
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef %.sink33, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.ocsp_verify, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 39, i32 noundef %.sink, i8* noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry, %if.end14
  %retval.0 = phi i32 [ %ret.0, %if.end14 ], [ 1, %entry ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

declare %struct.stack_st* @OPENSSL_sk_dup(%struct.stack_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_X509* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare i32 @X509_add_certs(%struct.stack_st_X509* noundef, %struct.stack_st_X509* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @ocsp_verify_signer(%struct.x509_st* noundef %signer, i32 noundef %response, %struct.x509_store_st* noundef %st, i64 noundef %flags, %struct.stack_st_X509* noundef %untrusted, %struct.stack_st_X509** noundef writeonly %chain) unnamed_addr #0 {
entry:
  %call = tail call %struct.x509_store_ctx_st* @X509_STORE_CTX_new() #7
  %cmp = icmp eq %struct.x509_store_ctx_st* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 39, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.ocsp_verify_signer, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 39, i32 noundef 786688, i8* noundef null) #7
  br label %end

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @X509_STORE_CTX_init(%struct.x509_store_ctx_st* noundef nonnull %call, %struct.x509_store_st* noundef %st, %struct.x509_st* noundef %signer, %struct.stack_st_X509* noundef %untrusted) #7
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 43, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.ocsp_verify_signer, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 39, i32 noundef 524299, i8* noundef null) #7
  br label %end

if.end3:                                          ; preds = %if.end
  %call4 = tail call %struct.X509_VERIFY_PARAM_st* @X509_STORE_CTX_get0_param(%struct.x509_store_ctx_st* noundef nonnull %call) #7
  %cmp5 = icmp eq %struct.X509_VERIFY_PARAM_st* %call4, null
  br i1 %cmp5, label %end, label %if.end7

if.end7:                                          ; preds = %if.end3
  %and = and i64 %flags, 4096
  %cmp8.not = icmp eq i64 %and, 0
  br i1 %cmp8.not, label %if.end11, label %if.then9

if.then9:                                         ; preds = %if.end7
  %call10 = tail call i32 @X509_VERIFY_PARAM_set_flags(%struct.X509_VERIFY_PARAM_st* noundef nonnull %call4, i64 noundef 524288) #7
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end7
  %tobool12.not = icmp eq i32 %response, 0
  br i1 %tobool12.not, label %if.end17, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end11
  %call13 = tail call i32 @X509_get_ext_by_NID(%struct.x509_st* noundef %signer, i32 noundef 369, i32 noundef -1) #7
  %cmp14 = icmp sgt i32 %call13, -1
  br i1 %cmp14, label %if.then15, label %if.end17

if.then15:                                        ; preds = %land.lhs.true
  %call16 = tail call i32 @X509_VERIFY_PARAM_clear_flags(%struct.X509_VERIFY_PARAM_st* noundef nonnull %call4, i64 noundef 4) #7
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %land.lhs.true, %if.end11
  %call18 = tail call i32 @X509_STORE_CTX_set_purpose(%struct.x509_store_ctx_st* noundef nonnull %call, i32 noundef 8) #7
  %call19 = tail call i32 @X509_STORE_CTX_set_trust(%struct.x509_store_ctx_st* noundef nonnull %call, i32 noundef 7) #7
  %call20 = tail call i32 @X509_verify_cert(%struct.x509_store_ctx_st* noundef nonnull %call) #7
  %cmp21 = icmp slt i32 %call20, 1
  br i1 %cmp21, label %if.then22, label %if.end25

if.then22:                                        ; preds = %if.end17
  %call23 = tail call i32 @X509_STORE_CTX_get_error(%struct.x509_store_ctx_st* noundef nonnull %call) #7
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 63, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.ocsp_verify_signer, i64 0, i64 0)) #7
  %conv = sext i32 %call23 to i64
  %call24 = tail call i8* @X509_verify_cert_error_string(i64 noundef %conv) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 39, i32 noundef 101, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* noundef %call24) #7
  br label %end

if.end25:                                         ; preds = %if.end17
  %cmp26.not = icmp eq %struct.stack_st_X509** %chain, null
  br i1 %cmp26.not, label %end, label %if.then28

if.then28:                                        ; preds = %if.end25
  %call29 = tail call %struct.stack_st_X509* @X509_STORE_CTX_get1_chain(%struct.x509_store_ctx_st* noundef nonnull %call) #7
  store %struct.stack_st_X509* %call29, %struct.stack_st_X509** %chain, align 8, !tbaa !4
  br label %end

end:                                              ; preds = %if.end25, %if.then28, %if.end3, %if.then22, %if.then2, %if.then
  %ret.0 = phi i32 [ -1, %if.then ], [ -1, %if.end3 ], [ %call23, %if.then22 ], [ %call20, %if.then28 ], [ %call20, %if.end25 ], [ -1, %if.then2 ]
  tail call void @X509_STORE_CTX_free(%struct.x509_store_ctx_st* noundef %call) #7
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @ocsp_check_issuer(%struct.ocsp_basic_response_st* nocapture noundef readonly %bs, %struct.stack_st_X509* noundef %chain) unnamed_addr #0 {
entry:
  %caid = alloca %struct.ocsp_cert_id_st*, align 8
  %responses = getelementptr inbounds %struct.ocsp_basic_response_st, %struct.ocsp_basic_response_st* %bs, i64 0, i32 0, i32 3
  %0 = load %struct.stack_st_OCSP_SINGLERESP*, %struct.stack_st_OCSP_SINGLERESP** %responses, align 8, !tbaa !30
  %1 = bitcast %struct.ocsp_cert_id_st** %caid to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #5
  store %struct.ocsp_cert_id_st* null, %struct.ocsp_cert_id_st** %caid, align 8, !tbaa !4
  %call = tail call fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef %chain) #6
  %call1 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #7
  %cmp = icmp slt i32 %call1, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 229, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.ocsp_check_issuer, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 39, i32 noundef 105, i8* noundef null) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = call fastcc i32 @ocsp_check_ids(%struct.stack_st_OCSP_SINGLERESP* noundef %0, %struct.ocsp_cert_id_st** noundef nonnull %caid) #6
  %cmp3 = icmp slt i32 %call2, 1
  br i1 %cmp3, label %cleanup, label %if.end5

if.end5:                                          ; preds = %if.end
  %call7 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call, i32 noundef 0) #7
  %2 = bitcast i8* %call7 to %struct.x509_st*
  %call9 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #7
  %cmp10 = icmp sgt i32 %call9, 1
  br i1 %cmp10, label %if.then11, label %if.end5.if.end24_crit_edge

if.end5.if.end24_crit_edge:                       ; preds = %if.end5
  %.pre = load %struct.ocsp_cert_id_st*, %struct.ocsp_cert_id_st** %caid, align 8, !tbaa !4
  br label %if.end24

if.then11:                                        ; preds = %if.end5
  %call13 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call, i32 noundef 1) #7
  %3 = bitcast i8* %call13 to %struct.x509_st*
  %4 = load %struct.ocsp_cert_id_st*, %struct.ocsp_cert_id_st** %caid, align 8, !tbaa !4
  %call14 = tail call fastcc i32 @ocsp_match_issuerid(%struct.x509_st* noundef %3, %struct.ocsp_cert_id_st* noundef %4, %struct.stack_st_OCSP_SINGLERESP* noundef %0) #6
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %cleanup, label %if.end17

if.end17:                                         ; preds = %if.then11
  %cmp18.not = icmp eq i32 %call14, 0
  br i1 %cmp18.not, label %if.end24, label %if.then19

if.then19:                                        ; preds = %if.end17
  %call20 = tail call fastcc i32 @ocsp_check_delegated(%struct.x509_st* noundef %2) #6
  %tobool.not = icmp ne i32 %call20, 0
  %. = zext i1 %tobool.not to i32
  br label %cleanup

if.end24:                                         ; preds = %if.end5.if.end24_crit_edge, %if.end17
  %5 = phi %struct.ocsp_cert_id_st* [ %.pre, %if.end5.if.end24_crit_edge ], [ %4, %if.end17 ]
  %call25 = tail call fastcc i32 @ocsp_match_issuerid(%struct.x509_st* noundef %2, %struct.ocsp_cert_id_st* noundef %5, %struct.stack_st_OCSP_SINGLERESP* noundef %0) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then19, %if.then11, %if.end, %if.end24, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ %call25, %if.end24 ], [ %call2, %if.end ], [ -1, %if.then11 ], [ %., %if.then19 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #5
  ret i32 %retval.0
}

declare i8* @OPENSSL_sk_value(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @OPENSSL_sk_num(%struct.stack_st* noundef) local_unnamed_addr #2

declare i32 @X509_check_trust(%struct.x509_st* noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @OPENSSL_sk_pop_free(%struct.stack_st* noundef, void (i8*)* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_X509* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare void @X509_free(%struct.x509_st* noundef) #2

declare void @OPENSSL_sk_free(%struct.stack_st* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define i32 @OCSP_resp_get0_signer(%struct.ocsp_basic_response_st* nocapture noundef readonly %bs, %struct.x509_st** nocapture noundef writeonly %signer, %struct.stack_st_X509* noundef %extra_certs) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i32 @ocsp_find_signer(%struct.x509_st** noundef %signer, %struct.ocsp_basic_response_st* noundef %bs, %struct.stack_st_X509* noundef %extra_certs, i64 noundef 0) #6
  %cmp = icmp sgt i32 %call, 0
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind uwtable
define i32 @OCSP_request_verify(%struct.ocsp_request_st* noundef %req, %struct.stack_st_X509* noundef %certs, %struct.x509_store_st* noundef %store, i64 noundef %flags) local_unnamed_addr #0 {
entry:
  %signer = alloca %struct.x509_st*, align 8
  %0 = bitcast %struct.x509_st** %signer to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #5
  %optionalSignature = getelementptr inbounds %struct.ocsp_request_st, %struct.ocsp_request_st* %req, i64 0, i32 1
  %1 = load %struct.ocsp_signature_st*, %struct.ocsp_signature_st** %optionalSignature, align 8, !tbaa !14
  %tobool.not = icmp eq %struct.ocsp_signature_st* %1, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 393, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.OCSP_request_verify, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 39, i32 noundef 128, i8* noundef null) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %requestorName = getelementptr inbounds %struct.ocsp_request_st, %struct.ocsp_request_st* %req, i64 0, i32 0, i32 1
  %2 = load %struct.GENERAL_NAME_st*, %struct.GENERAL_NAME_st** %requestorName, align 8, !tbaa !31
  %tobool1.not = icmp eq %struct.GENERAL_NAME_st* %2, null
  br i1 %tobool1.not, label %if.then2, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %type = getelementptr inbounds %struct.GENERAL_NAME_st, %struct.GENERAL_NAME_st* %2, i64 0, i32 0
  %3 = load i32, i32* %type, align 8, !tbaa !32
  %cmp.not = icmp eq i32 %3, 4
  br i1 %cmp.not, label %if.end3, label %if.then2

if.then2:                                         ; preds = %lor.lhs.false, %if.end
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 398, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.OCSP_request_verify, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 39, i32 noundef 129, i8* noundef null) #7
  br label %cleanup

if.end3:                                          ; preds = %lor.lhs.false
  %d = getelementptr inbounds %struct.GENERAL_NAME_st, %struct.GENERAL_NAME_st* %2, i64 0, i32 1
  %directoryName = bitcast %union.anon.2* %d to %struct.X509_name_st**
  %4 = load %struct.X509_name_st*, %struct.X509_name_st** %directoryName, align 8, !tbaa !34
  %call = call fastcc i32 @ocsp_req_find_signer(%struct.x509_st** noundef nonnull %signer, %struct.ocsp_request_st* noundef nonnull %req, %struct.X509_name_st* noundef %4, %struct.stack_st_X509* noundef %certs, i64 noundef %flags) #6
  %cmp4 = icmp slt i32 %call, 1
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end3
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 404, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.OCSP_request_verify, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 39, i32 noundef 118, i8* noundef null) #7
  br label %cleanup

if.end6:                                          ; preds = %if.end3
  %cmp7 = icmp ne i32 %call, 2
  %and = and i64 %flags, 512
  %cmp8.not = icmp eq i64 %and, 0
  %or.cond = or i1 %cmp8.not, %cmp7
  %or = or i64 %flags, 16
  %flags.addr.0 = select i1 %or.cond, i64 %flags, i64 %or
  %5 = load %struct.x509_st*, %struct.x509_st** %signer, align 8, !tbaa !4
  %call11 = tail call fastcc i32 @ocsp_verify(%struct.ocsp_request_st* noundef nonnull %req, %struct.ocsp_basic_response_st* noundef null, %struct.x509_st* noundef %5, i64 noundef %flags.addr.0) #6
  %cmp12 = icmp slt i32 %call11, 1
  br i1 %cmp12, label %cleanup, label %if.end14

if.end14:                                         ; preds = %if.end6
  %and15 = and i64 %flags.addr.0, 16
  %cmp16.not = icmp eq i64 %and15, 0
  br i1 %cmp16.not, label %if.end18, label %cleanup

if.end18:                                         ; preds = %if.end14
  %and19 = and i64 %flags.addr.0, 8
  %cmp20.not = icmp eq i64 %and19, 0
  br i1 %cmp20.not, label %cond.false, label %cond.end

cond.false:                                       ; preds = %if.end18
  %6 = load %struct.ocsp_signature_st*, %struct.ocsp_signature_st** %optionalSignature, align 8, !tbaa !14
  %certs22 = getelementptr inbounds %struct.ocsp_signature_st, %struct.ocsp_signature_st* %6, i64 0, i32 2
  %7 = load %struct.stack_st_X509*, %struct.stack_st_X509** %certs22, align 8, !tbaa !35
  br label %cond.end

cond.end:                                         ; preds = %if.end18, %cond.false
  %cond = phi %struct.stack_st_X509* [ %7, %cond.false ], [ null, %if.end18 ]
  %call23 = tail call fastcc i32 @ocsp_verify_signer(%struct.x509_st* noundef %5, i32 noundef 0, %struct.x509_store_st* noundef %store, i64 noundef %flags.addr.0, %struct.stack_st_X509* noundef %cond, %struct.stack_st_X509** noundef null) #6
  %cmp24 = icmp sgt i32 %call23, 0
  %conv = zext i1 %cmp24 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.end6, %cond.end, %if.then5, %if.then2, %if.then
  %retval.0 = phi i32 [ 0, %if.then2 ], [ 0, %if.then5 ], [ %conv, %cond.end ], [ 0, %if.then ], [ 0, %if.end6 ], [ 1, %if.end14 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #5
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @ocsp_req_find_signer(%struct.x509_st** nocapture noundef writeonly %psigner, %struct.ocsp_request_st* nocapture noundef readonly %req, %struct.X509_name_st* noundef %nm, %struct.stack_st_X509* noundef %certs, i64 noundef %flags) unnamed_addr #0 {
entry:
  %and = and i64 %flags, 2
  %cmp = icmp eq i64 %and, 0
  br i1 %cmp, label %if.then, label %if.end4

if.then:                                          ; preds = %entry
  %optionalSignature = getelementptr inbounds %struct.ocsp_request_st, %struct.ocsp_request_st* %req, i64 0, i32 1
  %0 = load %struct.ocsp_signature_st*, %struct.ocsp_signature_st** %optionalSignature, align 8, !tbaa !14
  %certs1 = getelementptr inbounds %struct.ocsp_signature_st, %struct.ocsp_signature_st* %0, i64 0, i32 2
  %1 = load %struct.stack_st_X509*, %struct.stack_st_X509** %certs1, align 8, !tbaa !35
  %call = tail call %struct.x509_st* @X509_find_by_subject(%struct.stack_st_X509* noundef %1, %struct.X509_name_st* noundef %nm) #7
  %cmp2.not = icmp eq %struct.x509_st* %call, null
  br i1 %cmp2.not, label %if.end4, label %cleanup.sink.split

if.end4:                                          ; preds = %if.then, %entry
  %call5 = tail call %struct.x509_st* @X509_find_by_subject(%struct.stack_st_X509* noundef %certs, %struct.X509_name_st* noundef %nm) #7
  %cmp6.not = icmp eq %struct.x509_st* %call5, null
  br i1 %cmp6.not, label %cleanup, label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end4, %if.then
  %call5.sink = phi %struct.x509_st* [ %call, %if.then ], [ %call5, %if.end4 ]
  %retval.0.ph = phi i32 [ 1, %if.then ], [ 2, %if.end4 ]
  store %struct.x509_st* %call5.sink, %struct.x509_st** %psigner, align 8, !tbaa !4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end4
  %retval.0 = phi i32 [ 0, %if.end4 ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

declare %struct.evp_pkey_st* @X509_get0_pubkey(%struct.x509_st* noundef) local_unnamed_addr #2

declare i32 @ASN1_item_verify_ex(%struct.ASN1_ITEM_st* noundef, %struct.X509_algor_st* noundef, %struct.asn1_string_st* noundef, i8* noundef, %struct.asn1_string_st* noundef, %struct.evp_pkey_st* noundef, %struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #2

declare %struct.ASN1_ITEM_st* @OCSP_REQINFO_it() local_unnamed_addr #2

declare %struct.ASN1_ITEM_st* @OCSP_RESPDATA_it() local_unnamed_addr #2

declare %struct.x509_store_ctx_st* @X509_STORE_CTX_new() local_unnamed_addr #2

declare i32 @X509_STORE_CTX_init(%struct.x509_store_ctx_st* noundef, %struct.x509_store_st* noundef, %struct.x509_st* noundef, %struct.stack_st_X509* noundef) local_unnamed_addr #2

declare %struct.X509_VERIFY_PARAM_st* @X509_STORE_CTX_get0_param(%struct.x509_store_ctx_st* noundef) local_unnamed_addr #2

declare i32 @X509_VERIFY_PARAM_set_flags(%struct.X509_VERIFY_PARAM_st* noundef, i64 noundef) local_unnamed_addr #2

declare i32 @X509_get_ext_by_NID(%struct.x509_st* noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @X509_VERIFY_PARAM_clear_flags(%struct.X509_VERIFY_PARAM_st* noundef, i64 noundef) local_unnamed_addr #2

declare i32 @X509_STORE_CTX_set_purpose(%struct.x509_store_ctx_st* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @X509_STORE_CTX_set_trust(%struct.x509_store_ctx_st* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @X509_verify_cert(%struct.x509_store_ctx_st* noundef) local_unnamed_addr #2

declare i32 @X509_STORE_CTX_get_error(%struct.x509_store_ctx_st* noundef) local_unnamed_addr #2

declare i8* @X509_verify_cert_error_string(i64 noundef) local_unnamed_addr #2

declare %struct.stack_st_X509* @X509_STORE_CTX_get1_chain(%struct.x509_store_ctx_st* noundef) local_unnamed_addr #2

declare void @X509_STORE_CTX_free(%struct.x509_store_ctx_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.x509_st* @ocsp_find_signer_sk(%struct.stack_st_X509* noundef %certs, %struct.ocsp_responder_id_st* nocapture noundef readonly %id) unnamed_addr #0 {
entry:
  %tmphash = alloca [20 x i8], align 16
  %0 = getelementptr inbounds [20 x i8], [20 x i8]* %tmphash, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %0) #5
  %type = getelementptr inbounds %struct.ocsp_responder_id_st, %struct.ocsp_responder_id_st* %id, i64 0, i32 0
  %1 = load i32, i32* %type, align 8, !tbaa !36
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %byName = getelementptr inbounds %struct.ocsp_responder_id_st, %struct.ocsp_responder_id_st* %id, i64 0, i32 1, i32 0
  %2 = load %struct.X509_name_st*, %struct.X509_name_st** %byName, align 8, !tbaa !34
  %call = tail call %struct.x509_st* @X509_find_by_subject(%struct.stack_st_X509* noundef %certs, %struct.X509_name_st* noundef %2) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %value1 = getelementptr inbounds %struct.ocsp_responder_id_st, %struct.ocsp_responder_id_st* %id, i64 0, i32 1
  %byKey = bitcast %union.anon* %value1 to %struct.asn1_string_st**
  %3 = load %struct.asn1_string_st*, %struct.asn1_string_st** %byKey, align 8, !tbaa !34
  %length = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %3, i64 0, i32 0
  %4 = load i32, i32* %length, align 8, !tbaa !37
  %cmp2.not = icmp eq i32 %4, 20
  br i1 %cmp2.not, label %if.end4, label %cleanup

if.end4:                                          ; preds = %if.end
  %data = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %3, i64 0, i32 2
  %5 = load i8*, i8** %data, align 8, !tbaa !38
  %call7 = call fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef %certs) #6
  %call854 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call7) #7
  %cmp955 = icmp sgt i32 %call854, 0
  br i1 %cmp955, label %for.body, label %cleanup

for.body:                                         ; preds = %if.end4, %for.inc
  %i.056 = phi i32 [ %inc, %for.inc ], [ 0, %if.end4 ]
  %call11 = call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call7, i32 noundef %i.056) #7
  %6 = bitcast i8* %call11 to %struct.x509_st*
  %cmp12.not = icmp eq i8* %call11, null
  br i1 %cmp12.not, label %for.inc, label %if.then13

if.then13:                                        ; preds = %for.body
  %libctx = getelementptr inbounds i8, i8* %call11, i64 368
  %7 = bitcast i8* %libctx to %struct.ossl_lib_ctx_st**
  %8 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %7, align 8, !tbaa !19
  %propq = getelementptr inbounds i8, i8* %call11, i64 376
  %9 = bitcast i8* %propq to i8**
  %10 = load i8*, i8** %9, align 8, !tbaa !28
  %call14 = call %struct.evp_md_st* @EVP_MD_fetch(%struct.ossl_lib_ctx_st* noundef %8, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* noundef %10) #7
  %cmp15 = icmp eq %struct.evp_md_st* %call14, null
  br i1 %cmp15, label %cleanup, label %if.end17

if.end17:                                         ; preds = %if.then13
  %call18 = call i32 @X509_pubkey_digest(%struct.x509_st* noundef nonnull %6, %struct.evp_md_st* noundef nonnull %call14, i8* noundef nonnull %0, i32* noundef null) #7
  call void @EVP_MD_free(%struct.evp_md_st* noundef nonnull %call14) #7
  %tobool.not = icmp eq i32 %call18, 0
  br i1 %tobool.not, label %cleanup, label %if.end20

if.end20:                                         ; preds = %if.end17
  %call22 = call i32 @memcmp(i8* noundef %5, i8* noundef nonnull %0, i64 noundef 20) #8
  %cmp23 = icmp eq i32 %call22, 0
  br i1 %cmp23, label %cleanup.loopexit.split.loop.exit, label %for.inc

for.inc:                                          ; preds = %for.body, %if.end20
  %inc = add nuw nsw i32 %i.056, 1
  %call8 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call7) #7
  %cmp9 = icmp slt i32 %inc, %call8
  br i1 %cmp9, label %for.body, label %cleanup, !llvm.loop !39

cleanup.loopexit.split.loop.exit:                 ; preds = %if.end20
  %11 = bitcast i8* %call11 to %struct.x509_st*
  br label %cleanup

cleanup:                                          ; preds = %for.inc, %if.then13, %if.end17, %cleanup.loopexit.split.loop.exit, %if.end4, %if.end, %if.then
  %retval.0 = phi %struct.x509_st* [ %call, %if.then ], [ null, %if.end ], [ null, %if.end4 ], [ %11, %cleanup.loopexit.split.loop.exit ], [ null, %if.end17 ], [ null, %if.then13 ], [ null, %for.inc ]
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %0) #5
  ret %struct.x509_st* %retval.0
}

declare %struct.x509_st* @X509_find_by_subject(%struct.stack_st_X509* noundef, %struct.X509_name_st* noundef) local_unnamed_addr #2

declare %struct.evp_md_st* @EVP_MD_fetch(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

declare i32 @X509_pubkey_digest(%struct.x509_st* noundef, %struct.evp_md_st* noundef, i8* noundef, i32* noundef) local_unnamed_addr #2

declare void @EVP_MD_free(%struct.evp_md_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @ocsp_check_ids(%struct.stack_st_OCSP_SINGLERESP* noundef %sresp, %struct.ocsp_cert_id_st** nocapture noundef writeonly %ret) unnamed_addr #0 {
entry:
  %call = tail call fastcc %struct.stack_st* @ossl_check_const_OCSP_SINGLERESP_sk_type(%struct.stack_st_OCSP_SINGLERESP* noundef %sresp) #6
  %call1 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #7
  %cmp = icmp slt i32 %call1, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 273, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.ocsp_check_ids, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 39, i32 noundef 111, i8* noundef null) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call, i32 noundef 0) #7
  %certId = bitcast i8* %call3 to %struct.ocsp_cert_id_st**
  %0 = load %struct.ocsp_cert_id_st*, %struct.ocsp_cert_id_st** %certId, align 8, !tbaa !41
  store %struct.ocsp_cert_id_st* null, %struct.ocsp_cert_id_st** %ret, align 8, !tbaa !4
  %cmp433.not = icmp eq i32 %call1, 1
  br i1 %cmp433.not, label %for.end, label %for.body

for.cond:                                         ; preds = %for.body
  %exitcond.not = icmp eq i32 %inc, %call1
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !43

for.body:                                         ; preds = %if.end, %for.cond
  %i.034 = phi i32 [ %inc, %for.cond ], [ 1, %if.end ]
  %call6 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call, i32 noundef %i.034) #7
  %certId7 = bitcast i8* %call6 to %struct.ocsp_cert_id_st**
  %1 = load %struct.ocsp_cert_id_st*, %struct.ocsp_cert_id_st** %certId7, align 8, !tbaa !41
  %call8 = tail call i32 @OCSP_id_issuer_cmp(%struct.ocsp_cert_id_st* noundef %0, %struct.ocsp_cert_id_st* noundef %1) #7
  %tobool.not = icmp eq i32 %call8, 0
  %inc = add nuw nsw i32 %i.034, 1
  br i1 %tobool.not, label %for.cond, label %if.then9

if.then9:                                         ; preds = %for.body
  %algorithm = getelementptr inbounds %struct.ocsp_cert_id_st, %struct.ocsp_cert_id_st* %1, i64 0, i32 0, i32 0
  %2 = load %struct.asn1_object_st*, %struct.asn1_object_st** %algorithm, align 8, !tbaa !44
  %algorithm11 = getelementptr inbounds %struct.ocsp_cert_id_st, %struct.ocsp_cert_id_st* %0, i64 0, i32 0, i32 0
  %3 = load %struct.asn1_object_st*, %struct.asn1_object_st** %algorithm11, align 8, !tbaa !44
  %call12 = tail call i32 @OBJ_cmp(%struct.asn1_object_st* noundef %2, %struct.asn1_object_st* noundef %3) #7
  %tobool13.not = icmp eq i32 %call12, 0
  %. = select i1 %tobool13.not, i32 0, i32 2
  br label %cleanup

for.end:                                          ; preds = %for.cond, %if.end
  store %struct.ocsp_cert_id_st* %0, %struct.ocsp_cert_id_st** %ret, align 8, !tbaa !4
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %for.end, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ 1, %for.end ], [ %., %if.then9 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @ocsp_match_issuerid(%struct.x509_st* noundef %cert, %struct.ocsp_cert_id_st* noundef readonly %cid, %struct.stack_st_OCSP_SINGLERESP* noundef %sresp) unnamed_addr #0 {
entry:
  %name = alloca [50 x i8], align 16
  %md = alloca [64 x i8], align 16
  %cmp.not = icmp eq %struct.ocsp_cert_id_st* %cid, null
  br i1 %cmp.not, label %for.cond.preheader, label %if.then

for.cond.preheader:                               ; preds = %entry
  %call49 = tail call fastcc %struct.stack_st* @ossl_check_const_OCSP_SINGLERESP_sk_type(%struct.stack_st_OCSP_SINGLERESP* noundef %sresp) #6
  %call50100 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call49) #7
  %cmp51101 = icmp sgt i32 %call50100, 0
  br i1 %cmp51101, label %for.body, label %cleanup64

if.then:                                          ; preds = %entry
  %0 = getelementptr inbounds [50 x i8], [50 x i8]* %name, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 50, i8* nonnull %0) #5
  %1 = getelementptr inbounds [64 x i8], [64 x i8]* %md, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %1) #5
  %algorithm = getelementptr inbounds %struct.ocsp_cert_id_st, %struct.ocsp_cert_id_st* %cid, i64 0, i32 0, i32 0
  %2 = load %struct.asn1_object_st*, %struct.asn1_object_st** %algorithm, align 8, !tbaa !44
  %call = call i32 @OBJ_obj2txt(i8* noundef nonnull %0, i32 noundef 50, %struct.asn1_object_st* noundef %2, i32 noundef 0) #7
  %call1 = call i32 @ERR_set_mark() #7
  %call3 = call %struct.evp_md_st* @EVP_MD_fetch(%struct.ossl_lib_ctx_st* noundef null, i8* noundef nonnull %0, i8* noundef null) #7
  %cmp4 = icmp eq %struct.evp_md_st* %call3, null
  br i1 %cmp4, label %if.end, label %if.end11

if.end:                                           ; preds = %if.then
  %call7 = call %struct.evp_md_st* @EVP_get_digestbyname(i8* noundef nonnull %0) #7
  %cmp8 = icmp eq %struct.evp_md_st* %call7, null
  br i1 %cmp8, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end
  %call10 = call i32 @ERR_clear_last_mark() #7
  call void @ERR_new() #7
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 324, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.ocsp_match_issuerid, i64 0, i64 0)) #7
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 39, i32 noundef 119, i8* noundef null) #7
  br label %cleanup

if.end11:                                         ; preds = %if.then, %if.end
  %dgst.098 = phi %struct.evp_md_st* [ %call7, %if.end ], [ %call3, %if.then ]
  %call12 = call i32 @ERR_pop_to_mark() #7
  %call13 = call i32 @EVP_MD_get_size(%struct.evp_md_st* noundef nonnull %dgst.098) #7
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end11
  call void @ERR_new() #7
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 331, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.ocsp_match_issuerid, i64 0, i64 0)) #7
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 39, i32 noundef 107, i8* noundef null) #7
  br label %cleanup

if.end16:                                         ; preds = %if.end11
  %length = getelementptr inbounds %struct.ocsp_cert_id_st, %struct.ocsp_cert_id_st* %cid, i64 0, i32 1, i32 0
  %3 = load i32, i32* %length, align 8, !tbaa !46
  %cmp17.not = icmp eq i32 %3, %call13
  br i1 %cmp17.not, label %lor.lhs.false, label %cleanup

lor.lhs.false:                                    ; preds = %if.end16
  %length18 = getelementptr inbounds %struct.ocsp_cert_id_st, %struct.ocsp_cert_id_st* %cid, i64 0, i32 2, i32 0
  %4 = load i32, i32* %length18, align 8, !tbaa !47
  %cmp19.not = icmp eq i32 %4, %call13
  br i1 %cmp19.not, label %if.end21, label %cleanup

if.end21:                                         ; preds = %lor.lhs.false
  %call22 = call %struct.X509_name_st* @X509_get_subject_name(%struct.x509_st* noundef %cert) #7
  %call24 = call i32 @X509_NAME_digest(%struct.X509_name_st* noundef %call22, %struct.evp_md_st* noundef nonnull %dgst.098, i8* noundef nonnull %1, i32* noundef null) #7
  %tobool.not = icmp eq i32 %call24, 0
  br i1 %tobool.not, label %cleanup, label %if.end26

if.end26:                                         ; preds = %if.end21
  %data = getelementptr inbounds %struct.ocsp_cert_id_st, %struct.ocsp_cert_id_st* %cid, i64 0, i32 1, i32 2
  %5 = load i8*, i8** %data, align 8, !tbaa !48
  %conv99 = zext i32 %call13 to i64
  %call29 = call i32 @memcmp(i8* noundef nonnull %1, i8* noundef %5, i64 noundef %conv99) #8
  %cmp30.not = icmp eq i32 %call29, 0
  br i1 %cmp30.not, label %if.end33, label %cleanup

if.end33:                                         ; preds = %if.end26
  %call35 = call i32 @X509_pubkey_digest(%struct.x509_st* noundef %cert, %struct.evp_md_st* noundef nonnull %dgst.098, i8* noundef nonnull %1, i32* noundef null) #7
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.then37, label %if.end38

if.then37:                                        ; preds = %if.end33
  call void @ERR_new() #7
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 347, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.ocsp_match_issuerid, i64 0, i64 0)) #7
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 39, i32 noundef 102, i8* noundef null) #7
  br label %cleanup

if.end38:                                         ; preds = %if.end33
  %data41 = getelementptr inbounds %struct.ocsp_cert_id_st, %struct.ocsp_cert_id_st* %cid, i64 0, i32 2, i32 2
  %6 = load i8*, i8** %data41, align 8, !tbaa !49
  %call43 = call i32 @memcmp(i8* noundef nonnull %1, i8* noundef %6, i64 noundef %conv99) #8
  %cmp44 = icmp eq i32 %call43, 0
  %conv45 = zext i1 %cmp44 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %if.end21, %if.end16, %lor.lhs.false, %if.end38, %if.then37, %if.then15, %if.then9
  %dgst.097 = phi %struct.evp_md_st* [ null, %if.then9 ], [ %dgst.098, %if.then15 ], [ %dgst.098, %if.end38 ], [ %dgst.098, %if.then37 ], [ %dgst.098, %lor.lhs.false ], [ %dgst.098, %if.end16 ], [ %dgst.098, %if.end21 ], [ %dgst.098, %if.end26 ]
  %ret.0 = phi i32 [ -1, %if.then9 ], [ -1, %if.then15 ], [ %conv45, %if.end38 ], [ -1, %if.then37 ], [ 0, %lor.lhs.false ], [ 0, %if.end16 ], [ -1, %if.end21 ], [ 0, %if.end26 ]
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %1) #5
  call void @llvm.lifetime.end.p0i8(i64 50, i8* nonnull %0) #5
  call void @EVP_MD_free(%struct.evp_md_st* noundef %dgst.097) #7
  br label %cleanup64

for.cond:                                         ; preds = %for.body
  %call50 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call49) #7
  %cmp51 = icmp slt i32 %inc, %call50
  br i1 %cmp51, label %for.body, label %cleanup64, !llvm.loop !50

for.body:                                         ; preds = %for.cond.preheader, %for.cond
  %i.0102 = phi i32 [ %inc, %for.cond ], [ 0, %for.cond.preheader ]
  %call54 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call49, i32 noundef %i.0102) #7
  %certId = bitcast i8* %call54 to %struct.ocsp_cert_id_st**
  %7 = load %struct.ocsp_cert_id_st*, %struct.ocsp_cert_id_st** %certId, align 8, !tbaa !41
  %call55 = tail call fastcc i32 @ocsp_match_issuerid(%struct.x509_st* noundef %cert, %struct.ocsp_cert_id_st* noundef %7, %struct.stack_st_OCSP_SINGLERESP* noundef null) #6
  %cmp56 = icmp slt i32 %call55, 1
  %inc = add nuw nsw i32 %i.0102, 1
  br i1 %cmp56, label %cleanup64, label %for.cond

cleanup64:                                        ; preds = %for.cond, %for.body, %for.cond.preheader, %cleanup
  %retval.1 = phi i32 [ %ret.0, %cleanup ], [ 1, %for.cond.preheader ], [ 1, %for.cond ], [ %call55, %for.body ]
  ret i32 %retval.1
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @ocsp_check_delegated(%struct.x509_st* noundef %x) unnamed_addr #0 {
entry:
  %call = tail call i32 @X509_get_extension_flags(%struct.x509_st* noundef %x) #7
  %and = and i32 %call, 4
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @X509_get_extended_key_usage(%struct.x509_st* noundef %x) #7
  %and2 = and i32 %call1, 32
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.end, label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 375, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.ocsp_check_delegated, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 39, i32 noundef 103, i8* noundef null) #7
  br label %return

return:                                           ; preds = %land.lhs.true, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ 1, %land.lhs.true ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_OCSP_SINGLERESP_sk_type(%struct.stack_st_OCSP_SINGLERESP* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_OCSP_SINGLERESP* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare i32 @OCSP_id_issuer_cmp(%struct.ocsp_cert_id_st* noundef, %struct.ocsp_cert_id_st* noundef) local_unnamed_addr #2

declare i32 @OBJ_cmp(%struct.asn1_object_st* noundef, %struct.asn1_object_st* noundef) local_unnamed_addr #2

declare i32 @OBJ_obj2txt(i8* noundef, i32 noundef, %struct.asn1_object_st* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ERR_set_mark() local_unnamed_addr #2

declare %struct.evp_md_st* @EVP_get_digestbyname(i8* noundef) local_unnamed_addr #2

declare i32 @ERR_clear_last_mark() local_unnamed_addr #2

declare i32 @ERR_pop_to_mark() local_unnamed_addr #2

declare i32 @EVP_MD_get_size(%struct.evp_md_st* noundef) local_unnamed_addr #2

declare %struct.X509_name_st* @X509_get_subject_name(%struct.x509_st* noundef) local_unnamed_addr #2

declare i32 @X509_NAME_digest(%struct.X509_name_st* noundef, %struct.evp_md_st* noundef, i8* noundef, i32* noundef) local_unnamed_addr #2

declare i32 @X509_get_extension_flags(%struct.x509_st* noundef) local_unnamed_addr #2

declare i32 @X509_get_extended_key_usage(%struct.x509_st* noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { nobuiltin "no-builtins" }
attributes #7 = { nobuiltin nounwind "no-builtins" }
attributes #8 = { nobuiltin nounwind readonly willreturn "no-builtins" }

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
!8 = !{!9, !5, i64 72}
!9 = !{!"ocsp_basic_response_st", !10, i64 0, !13, i64 48, !5, i64 64, !5, i64 72}
!10 = !{!"ocsp_response_data_st", !5, i64 0, !11, i64 8, !5, i64 24, !5, i64 32, !5, i64 40}
!11 = !{!"ocsp_responder_id_st", !12, i64 0, !6, i64 8}
!12 = !{!"int", !6, i64 0}
!13 = !{!"X509_algor_st", !5, i64 0, !5, i64 8}
!14 = !{!15, !5, i64 32}
!15 = !{!"ocsp_request_st", !16, i64 0, !5, i64 32}
!16 = !{!"ocsp_req_info_st", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24}
!17 = !{!18, !5, i64 16}
!18 = !{!"ocsp_signature_st", !13, i64 0, !5, i64 16, !5, i64 24}
!19 = !{!20, !5, i64 368}
!20 = !{!"x509_st", !21, i64 0, !13, i64 136, !22, i64 152, !26, i64 176, !6, i64 192, !27, i64 200, !23, i64 216, !23, i64 224, !12, i64 232, !12, i64 236, !12, i64 240, !12, i64 244, !5, i64 248, !5, i64 256, !5, i64 264, !5, i64 272, !5, i64 280, !5, i64 288, !5, i64 296, !5, i64 304, !6, i64 312, !5, i64 336, !5, i64 344, !12, i64 352, !5, i64 360, !5, i64 368, !5, i64 376}
!21 = !{!"x509_cinf_st", !5, i64 0, !22, i64 8, !13, i64 32, !5, i64 48, !24, i64 56, !5, i64 72, !5, i64 80, !5, i64 88, !5, i64 96, !5, i64 104, !25, i64 112}
!22 = !{!"asn1_string_st", !12, i64 0, !12, i64 4, !5, i64 8, !23, i64 16}
!23 = !{!"long", !6, i64 0}
!24 = !{!"X509_val_st", !5, i64 0, !5, i64 8}
!25 = !{!"ASN1_ENCODING_st", !5, i64 0, !23, i64 8, !12, i64 16}
!26 = !{!"x509_sig_info_st", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12}
!27 = !{!"crypto_ex_data_st", !5, i64 0, !5, i64 8}
!28 = !{!20, !5, i64 376}
!29 = !{!9, !5, i64 64}
!30 = !{!9, !5, i64 32}
!31 = !{!15, !5, i64 8}
!32 = !{!33, !12, i64 0}
!33 = !{!"GENERAL_NAME_st", !12, i64 0, !6, i64 8}
!34 = !{!6, !6, i64 0}
!35 = !{!18, !5, i64 24}
!36 = !{!11, !12, i64 0}
!37 = !{!22, !12, i64 0}
!38 = !{!22, !5, i64 8}
!39 = distinct !{!39, !40}
!40 = !{!"llvm.loop.mustprogress"}
!41 = !{!42, !5, i64 0}
!42 = !{!"ocsp_single_response_st", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32}
!43 = distinct !{!43, !40}
!44 = !{!45, !5, i64 0}
!45 = !{!"ocsp_cert_id_st", !13, i64 0, !22, i64 16, !22, i64 40, !22, i64 64}
!46 = !{!45, !12, i64 16}
!47 = !{!45, !12, i64 40}
!48 = !{!45, !5, i64 24}
!49 = !{!45, !5, i64 48}
!50 = distinct !{!50, !40}
