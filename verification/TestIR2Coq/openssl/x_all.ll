; ModuleID = 'crypto/x509/x_all.c'
source_filename = "crypto/x509/x_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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
%struct.asn1_object_st = type opaque
%struct.asn1_type_st = type { i32, %union.anon }
%union.anon = type { i8* }
%struct.asn1_string_st = type { i32, i32, i8*, i64 }
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
%struct.ASIdentifierChoice_st = type { i32, %union.anon.0 }
%union.anon.0 = type { i32* }
%struct.x509_cert_aux_st = type { %struct.stack_st_ASN1_OBJECT*, %struct.stack_st_ASN1_OBJECT*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.stack_st_X509_ALGOR* }
%struct.stack_st_ASN1_OBJECT = type opaque
%struct.stack_st_X509_ALGOR = type opaque
%struct.ossl_lib_ctx_st = type opaque
%struct.evp_pkey_st = type opaque
%struct.ASN1_ITEM_st = type opaque
%struct.X509_req_st = type { %struct.X509_req_info_st, %struct.X509_algor_st, %struct.asn1_string_st*, i32, i8*, %struct.asn1_string_st*, %struct.ossl_lib_ctx_st*, i8* }
%struct.X509_req_info_st = type { %struct.ASN1_ENCODING_st, %struct.asn1_string_st*, %struct.X509_name_st*, %struct.X509_pubkey_st*, %struct.stack_st_X509_ATTRIBUTE* }
%struct.stack_st_X509_ATTRIBUTE = type opaque
%struct.Netscape_spki_st = type { %struct.Netscape_spkac_st*, %struct.X509_algor_st, %struct.asn1_string_st* }
%struct.Netscape_spkac_st = type { %struct.X509_pubkey_st*, %struct.asn1_string_st* }
%struct.evp_md_st = type opaque
%struct.evp_md_ctx_st = type opaque
%struct.bio_st = type opaque
%struct.ASN1_VALUE_st = type opaque
%struct.stack_st_CONF_VALUE = type opaque
%struct.X509_crl_st = type { %struct.X509_crl_info_st, %struct.X509_algor_st, %struct.asn1_string_st, i32, i32, %struct.AUTHORITY_KEYID_st*, %struct.ISSUING_DIST_POINT_st*, i32, i32, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.stack_st_GENERAL_NAMES*, [20 x i8], %struct.x509_crl_method_st*, i8*, i8*, %struct.ossl_lib_ctx_st*, i8* }
%struct.X509_crl_info_st = type { %struct.asn1_string_st*, %struct.X509_algor_st, %struct.X509_name_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.stack_st_X509_REVOKED*, %struct.stack_st_X509_EXTENSION*, %struct.ASN1_ENCODING_st }
%struct.stack_st_X509_REVOKED = type opaque
%struct.ISSUING_DIST_POINT_st = type { %struct.DIST_POINT_NAME_st*, i32, i32, %struct.asn1_string_st*, i32, i32 }
%struct.DIST_POINT_NAME_st = type { i32, %union.anon.1, %struct.X509_name_st* }
%union.anon.1 = type { %struct.stack_st_GENERAL_NAME* }
%struct.stack_st_GENERAL_NAMES = type opaque
%struct.x509_crl_method_st = type opaque
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.pkcs7_st = type { i8*, i64, i32, i32, %struct.asn1_object_st*, %union.anon.2, %struct.PKCS7_CTX_st }
%union.anon.2 = type { i8* }
%struct.PKCS7_CTX_st = type { %struct.ossl_lib_ctx_st*, i8* }
%struct.rsa_st = type opaque
%struct.dsa_st = type opaque
%struct.ec_key_st = type opaque
%struct.engine_st = type opaque
%struct.rsa_pss_params_st = type { %struct.X509_algor_st*, %struct.X509_algor_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.X509_algor_st* }
%struct.pkcs7_issuer_and_serial_st = type { %struct.X509_name_st*, %struct.asn1_string_st* }
%struct.X509_sig_st = type { %struct.X509_algor_st*, %struct.asn1_string_st* }
%struct.pkcs8_priv_key_info_st = type { %struct.asn1_string_st*, %struct.X509_algor_st*, %struct.asn1_string_st*, %struct.stack_st_X509_ATTRIBUTE* }
%struct.bio_method_st = type opaque

@.str = private unnamed_addr constant [5 x i8] c"SHA1\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"crypto/x509/x_all.c\00", align 1
@__func__.X509_digest_sig = private unnamed_addr constant [16 x i8] c"X509_digest_sig\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"SHA512\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"SHAKE256\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"SHA256\00", align 1
@__func__.X509_CRL_digest = private unnamed_addr constant [16 x i8] c"X509_CRL_digest\00", align 1
@__func__.d2i_PrivateKey_ex_fp = private unnamed_addr constant [21 x i8] c"d2i_PrivateKey_ex_fp\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @X509_verify(%struct.x509_st* noundef %a, %struct.evp_pkey_st* noundef %r) local_unnamed_addr #0 {
entry:
  %sig_alg = getelementptr inbounds %struct.x509_st, %struct.x509_st* %a, i64 0, i32 1
  %signature = getelementptr inbounds %struct.x509_st, %struct.x509_st* %a, i64 0, i32 0, i32 2
  %call = tail call i32 @X509_ALGOR_cmp(%struct.X509_algor_st* noundef nonnull %sig_alg, %struct.X509_algor_st* noundef nonnull %signature) #4
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %call1 = tail call %struct.ASN1_ITEM_st* @X509_CINF_it() #4
  %signature3 = getelementptr inbounds %struct.x509_st, %struct.x509_st* %a, i64 0, i32 2
  %0 = bitcast %struct.x509_st* %a to i8*
  %distinguishing_id = getelementptr inbounds %struct.x509_st, %struct.x509_st* %a, i64 0, i32 24
  %1 = load %struct.asn1_string_st*, %struct.asn1_string_st** %distinguishing_id, align 8, !tbaa !4
  %libctx = getelementptr inbounds %struct.x509_st, %struct.x509_st* %a, i64 0, i32 25
  %2 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !18
  %propq = getelementptr inbounds %struct.x509_st, %struct.x509_st* %a, i64 0, i32 26
  %3 = load i8*, i8** %propq, align 8, !tbaa !19
  %call5 = tail call i32 @ASN1_item_verify_ex(%struct.ASN1_ITEM_st* noundef %call1, %struct.X509_algor_st* noundef nonnull %sig_alg, %struct.asn1_string_st* noundef nonnull %signature3, i8* noundef %0, %struct.asn1_string_st* noundef %1, %struct.evp_pkey_st* noundef %r, %struct.ossl_lib_ctx_st* noundef %2, i8* noundef %3) #4
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call5, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

declare i32 @X509_ALGOR_cmp(%struct.X509_algor_st* noundef, %struct.X509_algor_st* noundef) local_unnamed_addr #1

declare i32 @ASN1_item_verify_ex(%struct.ASN1_ITEM_st* noundef, %struct.X509_algor_st* noundef, %struct.asn1_string_st* noundef, i8* noundef, %struct.asn1_string_st* noundef, %struct.evp_pkey_st* noundef, %struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #1

declare %struct.ASN1_ITEM_st* @X509_CINF_it() local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @X509_REQ_verify_ex(%struct.X509_req_st* noundef %a, %struct.evp_pkey_st* noundef %r, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.ASN1_ITEM_st* @X509_REQ_INFO_it() #4
  %sig_alg = getelementptr inbounds %struct.X509_req_st, %struct.X509_req_st* %a, i64 0, i32 1
  %signature = getelementptr inbounds %struct.X509_req_st, %struct.X509_req_st* %a, i64 0, i32 2
  %0 = load %struct.asn1_string_st*, %struct.asn1_string_st** %signature, align 8, !tbaa !20
  %1 = bitcast %struct.X509_req_st* %a to i8*
  %distinguishing_id = getelementptr inbounds %struct.X509_req_st, %struct.X509_req_st* %a, i64 0, i32 5
  %2 = load %struct.asn1_string_st*, %struct.asn1_string_st** %distinguishing_id, align 8, !tbaa !23
  %call1 = tail call i32 @ASN1_item_verify_ex(%struct.ASN1_ITEM_st* noundef %call, %struct.X509_algor_st* noundef nonnull %sig_alg, %struct.asn1_string_st* noundef %0, i8* noundef %1, %struct.asn1_string_st* noundef %2, %struct.evp_pkey_st* noundef %r, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) #4
  ret i32 %call1
}

declare %struct.ASN1_ITEM_st* @X509_REQ_INFO_it() local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @X509_REQ_verify(%struct.X509_req_st* noundef %a, %struct.evp_pkey_st* noundef %r) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @X509_REQ_verify_ex(%struct.X509_req_st* noundef %a, %struct.evp_pkey_st* noundef %r, %struct.ossl_lib_ctx_st* noundef null, i8* noundef null) #5
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @NETSCAPE_SPKI_verify(%struct.Netscape_spki_st* noundef %a, %struct.evp_pkey_st* noundef %r) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.ASN1_ITEM_st* @NETSCAPE_SPKAC_it() #4
  %sig_algor = getelementptr inbounds %struct.Netscape_spki_st, %struct.Netscape_spki_st* %a, i64 0, i32 1
  %signature = getelementptr inbounds %struct.Netscape_spki_st, %struct.Netscape_spki_st* %a, i64 0, i32 2
  %0 = load %struct.asn1_string_st*, %struct.asn1_string_st** %signature, align 8, !tbaa !24
  %1 = bitcast %struct.Netscape_spki_st* %a to i8**
  %2 = load i8*, i8** %1, align 8, !tbaa !26
  %call1 = tail call i32 @ASN1_item_verify(%struct.ASN1_ITEM_st* noundef %call, %struct.X509_algor_st* noundef nonnull %sig_algor, %struct.asn1_string_st* noundef %0, i8* noundef %2, %struct.evp_pkey_st* noundef %r) #4
  ret i32 %call1
}

declare i32 @ASN1_item_verify(%struct.ASN1_ITEM_st* noundef, %struct.X509_algor_st* noundef, %struct.asn1_string_st* noundef, i8* noundef, %struct.evp_pkey_st* noundef) local_unnamed_addr #1

declare %struct.ASN1_ITEM_st* @NETSCAPE_SPKAC_it() local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @X509_sign(%struct.x509_st* noundef %x, %struct.evp_pkey_st* noundef %pkey, %struct.evp_md_st* noundef %md) local_unnamed_addr #0 {
entry:
  %modified = getelementptr inbounds %struct.x509_st, %struct.x509_st* %x, i64 0, i32 0, i32 10, i32 2
  store i32 1, i32* %modified, align 8, !tbaa !27
  %call = tail call %struct.ASN1_ITEM_st* @X509_CINF_it() #4
  %signature = getelementptr inbounds %struct.x509_st, %struct.x509_st* %x, i64 0, i32 0, i32 2
  %sig_alg = getelementptr inbounds %struct.x509_st, %struct.x509_st* %x, i64 0, i32 1
  %signature2 = getelementptr inbounds %struct.x509_st, %struct.x509_st* %x, i64 0, i32 2
  %0 = bitcast %struct.x509_st* %x to i8*
  %libctx = getelementptr inbounds %struct.x509_st, %struct.x509_st* %x, i64 0, i32 25
  %1 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !18
  %propq = getelementptr inbounds %struct.x509_st, %struct.x509_st* %x, i64 0, i32 26
  %2 = load i8*, i8** %propq, align 8, !tbaa !19
  %call4 = tail call i32 @ASN1_item_sign_ex(%struct.ASN1_ITEM_st* noundef %call, %struct.X509_algor_st* noundef nonnull %signature, %struct.X509_algor_st* noundef nonnull %sig_alg, %struct.asn1_string_st* noundef nonnull %signature2, i8* noundef %0, %struct.asn1_string_st* noundef null, %struct.evp_pkey_st* noundef %pkey, %struct.evp_md_st* noundef %md, %struct.ossl_lib_ctx_st* noundef %1, i8* noundef %2) #4
  ret i32 %call4
}

declare i32 @ASN1_item_sign_ex(%struct.ASN1_ITEM_st* noundef, %struct.X509_algor_st* noundef, %struct.X509_algor_st* noundef, %struct.asn1_string_st* noundef, i8* noundef, %struct.asn1_string_st* noundef, %struct.evp_pkey_st* noundef, %struct.evp_md_st* noundef, %struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @X509_sign_ctx(%struct.x509_st* noundef %x, %struct.evp_md_ctx_st* noundef %ctx) local_unnamed_addr #0 {
entry:
  %modified = getelementptr inbounds %struct.x509_st, %struct.x509_st* %x, i64 0, i32 0, i32 10, i32 2
  store i32 1, i32* %modified, align 8, !tbaa !27
  %call = tail call %struct.ASN1_ITEM_st* @X509_CINF_it() #4
  %signature = getelementptr inbounds %struct.x509_st, %struct.x509_st* %x, i64 0, i32 0, i32 2
  %sig_alg = getelementptr inbounds %struct.x509_st, %struct.x509_st* %x, i64 0, i32 1
  %signature2 = getelementptr inbounds %struct.x509_st, %struct.x509_st* %x, i64 0, i32 2
  %0 = bitcast %struct.x509_st* %x to i8*
  %call4 = tail call i32 @ASN1_item_sign_ctx(%struct.ASN1_ITEM_st* noundef %call, %struct.X509_algor_st* noundef nonnull %signature, %struct.X509_algor_st* noundef nonnull %sig_alg, %struct.asn1_string_st* noundef nonnull %signature2, i8* noundef %0, %struct.evp_md_ctx_st* noundef %ctx) #4
  ret i32 %call4
}

declare i32 @ASN1_item_sign_ctx(%struct.ASN1_ITEM_st* noundef, %struct.X509_algor_st* noundef, %struct.X509_algor_st* noundef, %struct.asn1_string_st* noundef, i8* noundef, %struct.evp_md_ctx_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define %struct.x509_st* @X509_load_http(i8* noundef %url, %struct.bio_st* noundef %bio, %struct.bio_st* noundef %rbio, i32 noundef %timeout) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.ASN1_ITEM_st* @X509_it() #4
  %call1 = tail call fastcc %struct.ASN1_VALUE_st* @simple_get_asn1(i8* noundef %url, %struct.bio_st* noundef %bio, %struct.bio_st* noundef %rbio, i32 noundef %timeout, %struct.ASN1_ITEM_st* noundef %call) #5
  %0 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.x509_st*
  ret %struct.x509_st* %0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.ASN1_VALUE_st* @simple_get_asn1(i8* noundef %url, %struct.bio_st* noundef %bio, %struct.bio_st* noundef %rbio, i32 noundef %timeout, %struct.ASN1_ITEM_st* noundef %it) unnamed_addr #0 {
entry:
  %call = tail call %struct.bio_st* @OSSL_HTTP_get(i8* noundef %url, i8* noundef null, i8* noundef null, %struct.bio_st* noundef %bio, %struct.bio_st* noundef %rbio, %struct.bio_st* (%struct.bio_st*, i8*, i32, i32)* noundef null, i8* noundef null, i32 noundef 1024, %struct.stack_st_CONF_VALUE* noundef null, i8* noundef null, i32 noundef 1, i64 noundef 102400, i32 noundef %timeout) #4
  %call1 = tail call i8* @ASN1_item_d2i_bio(%struct.ASN1_ITEM_st* noundef %it, %struct.bio_st* noundef %call, i8* noundef null) #4
  %0 = bitcast i8* %call1 to %struct.ASN1_VALUE_st*
  %call2 = tail call i32 @BIO_free(%struct.bio_st* noundef %call) #4
  ret %struct.ASN1_VALUE_st* %0
}

declare %struct.ASN1_ITEM_st* @X509_it() local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @X509_REQ_sign(%struct.X509_req_st* noundef %x, %struct.evp_pkey_st* noundef %pkey, %struct.evp_md_st* noundef %md) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.ASN1_ITEM_st* @X509_REQ_INFO_it() #4
  %sig_alg = getelementptr inbounds %struct.X509_req_st, %struct.X509_req_st* %x, i64 0, i32 1
  %signature = getelementptr inbounds %struct.X509_req_st, %struct.X509_req_st* %x, i64 0, i32 2
  %0 = load %struct.asn1_string_st*, %struct.asn1_string_st** %signature, align 8, !tbaa !20
  %1 = bitcast %struct.X509_req_st* %x to i8*
  %libctx = getelementptr inbounds %struct.X509_req_st, %struct.X509_req_st* %x, i64 0, i32 6
  %2 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !28
  %propq = getelementptr inbounds %struct.X509_req_st, %struct.X509_req_st* %x, i64 0, i32 7
  %3 = load i8*, i8** %propq, align 8, !tbaa !29
  %call1 = tail call i32 @ASN1_item_sign_ex(%struct.ASN1_ITEM_st* noundef %call, %struct.X509_algor_st* noundef nonnull %sig_alg, %struct.X509_algor_st* noundef null, %struct.asn1_string_st* noundef %0, i8* noundef %1, %struct.asn1_string_st* noundef null, %struct.evp_pkey_st* noundef %pkey, %struct.evp_md_st* noundef %md, %struct.ossl_lib_ctx_st* noundef %2, i8* noundef %3) #4
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define i32 @X509_REQ_sign_ctx(%struct.X509_req_st* noundef %x, %struct.evp_md_ctx_st* noundef %ctx) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.ASN1_ITEM_st* @X509_REQ_INFO_it() #4
  %sig_alg = getelementptr inbounds %struct.X509_req_st, %struct.X509_req_st* %x, i64 0, i32 1
  %signature = getelementptr inbounds %struct.X509_req_st, %struct.X509_req_st* %x, i64 0, i32 2
  %0 = load %struct.asn1_string_st*, %struct.asn1_string_st** %signature, align 8, !tbaa !20
  %1 = bitcast %struct.X509_req_st* %x to i8*
  %call1 = tail call i32 @ASN1_item_sign_ctx(%struct.ASN1_ITEM_st* noundef %call, %struct.X509_algor_st* noundef nonnull %sig_alg, %struct.X509_algor_st* noundef null, %struct.asn1_string_st* noundef %0, i8* noundef %1, %struct.evp_md_ctx_st* noundef %ctx) #4
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define i32 @X509_CRL_sign(%struct.X509_crl_st* noundef %x, %struct.evp_pkey_st* noundef %pkey, %struct.evp_md_st* noundef %md) local_unnamed_addr #0 {
entry:
  %modified = getelementptr inbounds %struct.X509_crl_st, %struct.X509_crl_st* %x, i64 0, i32 0, i32 7, i32 2
  store i32 1, i32* %modified, align 8, !tbaa !30
  %call = tail call %struct.ASN1_ITEM_st* @X509_CRL_INFO_it() #4
  %sig_alg = getelementptr inbounds %struct.X509_crl_st, %struct.X509_crl_st* %x, i64 0, i32 0, i32 1
  %sig_alg2 = getelementptr inbounds %struct.X509_crl_st, %struct.X509_crl_st* %x, i64 0, i32 1
  %signature = getelementptr inbounds %struct.X509_crl_st, %struct.X509_crl_st* %x, i64 0, i32 2
  %0 = bitcast %struct.X509_crl_st* %x to i8*
  %libctx = getelementptr inbounds %struct.X509_crl_st, %struct.X509_crl_st* %x, i64 0, i32 16
  %1 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !33
  %propq = getelementptr inbounds %struct.X509_crl_st, %struct.X509_crl_st* %x, i64 0, i32 17
  %2 = load i8*, i8** %propq, align 8, !tbaa !34
  %call4 = tail call i32 @ASN1_item_sign_ex(%struct.ASN1_ITEM_st* noundef %call, %struct.X509_algor_st* noundef nonnull %sig_alg, %struct.X509_algor_st* noundef nonnull %sig_alg2, %struct.asn1_string_st* noundef nonnull %signature, i8* noundef %0, %struct.asn1_string_st* noundef null, %struct.evp_pkey_st* noundef %pkey, %struct.evp_md_st* noundef %md, %struct.ossl_lib_ctx_st* noundef %1, i8* noundef %2) #4
  ret i32 %call4
}

declare %struct.ASN1_ITEM_st* @X509_CRL_INFO_it() local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @X509_CRL_sign_ctx(%struct.X509_crl_st* noundef %x, %struct.evp_md_ctx_st* noundef %ctx) local_unnamed_addr #0 {
entry:
  %modified = getelementptr inbounds %struct.X509_crl_st, %struct.X509_crl_st* %x, i64 0, i32 0, i32 7, i32 2
  store i32 1, i32* %modified, align 8, !tbaa !30
  %call = tail call %struct.ASN1_ITEM_st* @X509_CRL_INFO_it() #4
  %sig_alg = getelementptr inbounds %struct.X509_crl_st, %struct.X509_crl_st* %x, i64 0, i32 0, i32 1
  %sig_alg2 = getelementptr inbounds %struct.X509_crl_st, %struct.X509_crl_st* %x, i64 0, i32 1
  %signature = getelementptr inbounds %struct.X509_crl_st, %struct.X509_crl_st* %x, i64 0, i32 2
  %0 = bitcast %struct.X509_crl_st* %x to i8*
  %call4 = tail call i32 @ASN1_item_sign_ctx(%struct.ASN1_ITEM_st* noundef %call, %struct.X509_algor_st* noundef nonnull %sig_alg, %struct.X509_algor_st* noundef nonnull %sig_alg2, %struct.asn1_string_st* noundef nonnull %signature, i8* noundef %0, %struct.evp_md_ctx_st* noundef %ctx) #4
  ret i32 %call4
}

; Function Attrs: noinline nounwind uwtable
define %struct.X509_crl_st* @X509_CRL_load_http(i8* noundef %url, %struct.bio_st* noundef %bio, %struct.bio_st* noundef %rbio, i32 noundef %timeout) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.ASN1_ITEM_st* @X509_CRL_it() #4
  %call1 = tail call fastcc %struct.ASN1_VALUE_st* @simple_get_asn1(i8* noundef %url, %struct.bio_st* noundef %bio, %struct.bio_st* noundef %rbio, i32 noundef %timeout, %struct.ASN1_ITEM_st* noundef %call) #5
  %0 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.X509_crl_st*
  ret %struct.X509_crl_st* %0
}

declare %struct.ASN1_ITEM_st* @X509_CRL_it() local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @NETSCAPE_SPKI_sign(%struct.Netscape_spki_st* noundef %x, %struct.evp_pkey_st* noundef %pkey, %struct.evp_md_st* noundef %md) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.ASN1_ITEM_st* @NETSCAPE_SPKAC_it() #4
  %sig_algor = getelementptr inbounds %struct.Netscape_spki_st, %struct.Netscape_spki_st* %x, i64 0, i32 1
  %signature = getelementptr inbounds %struct.Netscape_spki_st, %struct.Netscape_spki_st* %x, i64 0, i32 2
  %0 = load %struct.asn1_string_st*, %struct.asn1_string_st** %signature, align 8, !tbaa !24
  %1 = bitcast %struct.Netscape_spki_st* %x to i8**
  %2 = load i8*, i8** %1, align 8, !tbaa !26
  %call1 = tail call i32 @ASN1_item_sign_ex(%struct.ASN1_ITEM_st* noundef %call, %struct.X509_algor_st* noundef nonnull %sig_algor, %struct.X509_algor_st* noundef null, %struct.asn1_string_st* noundef %0, i8* noundef %2, %struct.asn1_string_st* noundef null, %struct.evp_pkey_st* noundef %pkey, %struct.evp_md_st* noundef %md, %struct.ossl_lib_ctx_st* noundef null, i8* noundef null) #4
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define %struct.x509_st* @d2i_X509_fp(%struct._IO_FILE* noundef %fp, %struct.x509_st** noundef %x509) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.ASN1_ITEM_st* @X509_it() #4
  %0 = bitcast %struct.x509_st** %x509 to i8*
  %call1 = tail call i8* @ASN1_item_d2i_fp(%struct.ASN1_ITEM_st* noundef %call, %struct._IO_FILE* noundef %fp, i8* noundef %0) #4
  %1 = bitcast i8* %call1 to %struct.x509_st*
  ret %struct.x509_st* %1
}

declare i8* @ASN1_item_d2i_fp(%struct.ASN1_ITEM_st* noundef, %struct._IO_FILE* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_X509_fp(%struct._IO_FILE* noundef %fp, %struct.x509_st* noundef %x509) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.ASN1_ITEM_st* @X509_it() #4
  %0 = bitcast %struct.x509_st* %x509 to i8*
  %call1 = tail call i32 @ASN1_item_i2d_fp(%struct.ASN1_ITEM_st* noundef %call, %struct._IO_FILE* noundef %fp, i8* noundef %0) #4
  ret i32 %call1
}

declare i32 @ASN1_item_i2d_fp(%struct.ASN1_ITEM_st* noundef, %struct._IO_FILE* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define %struct.x509_st* @d2i_X509_bio(%struct.bio_st* noundef %bp, %struct.x509_st** noundef %x509) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.ASN1_ITEM_st* @X509_it() #4
  %0 = bitcast %struct.x509_st** %x509 to i8*
  %call1 = tail call i8* @ASN1_item_d2i_bio(%struct.ASN1_ITEM_st* noundef %call, %struct.bio_st* noundef %bp, i8* noundef %0) #4
  %1 = bitcast i8* %call1 to %struct.x509_st*
  ret %struct.x509_st* %1
}

declare i8* @ASN1_item_d2i_bio(%struct.ASN1_ITEM_st* noundef, %struct.bio_st* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_X509_bio(%struct.bio_st* noundef %bp, %struct.x509_st* noundef %x509) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.ASN1_ITEM_st* @X509_it() #4
  %0 = bitcast %struct.x509_st* %x509 to i8*
  %call1 = tail call i32 @ASN1_item_i2d_bio(%struct.ASN1_ITEM_st* noundef %call, %struct.bio_st* noundef %bp, i8* noundef %0) #4
  ret i32 %call1
}

declare i32 @ASN1_item_i2d_bio(%struct.ASN1_ITEM_st* noundef, %struct.bio_st* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define %struct.X509_crl_st* @d2i_X509_CRL_fp(%struct._IO_FILE* noundef %fp, %struct.X509_crl_st** noundef %crl) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.ASN1_ITEM_st* @X509_CRL_it() #4
  %0 = bitcast %struct.X509_crl_st** %crl to i8*
  %call1 = tail call i8* @ASN1_item_d2i_fp(%struct.ASN1_ITEM_st* noundef %call, %struct._IO_FILE* noundef %fp, i8* noundef %0) #4
  %1 = bitcast i8* %call1 to %struct.X509_crl_st*
  ret %struct.X509_crl_st* %1
}

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_X509_CRL_fp(%struct._IO_FILE* noundef %fp, %struct.X509_crl_st* noundef %crl) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.ASN1_ITEM_st* @X509_CRL_it() #4
  %0 = bitcast %struct.X509_crl_st* %crl to i8*
  %call1 = tail call i32 @ASN1_item_i2d_fp(%struct.ASN1_ITEM_st* noundef %call, %struct._IO_FILE* noundef %fp, i8* noundef %0) #4
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define %struct.X509_crl_st* @d2i_X509_CRL_bio(%struct.bio_st* noundef %bp, %struct.X509_crl_st** noundef %crl) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.ASN1_ITEM_st* @X509_CRL_it() #4
  %0 = bitcast %struct.X509_crl_st** %crl to i8*
  %call1 = tail call i8* @ASN1_item_d2i_bio(%struct.ASN1_ITEM_st* noundef %call, %struct.bio_st* noundef %bp, i8* noundef %0) #4
  %1 = bitcast i8* %call1 to %struct.X509_crl_st*
  ret %struct.X509_crl_st* %1
}

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_X509_CRL_bio(%struct.bio_st* noundef %bp, %struct.X509_crl_st* noundef %crl) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.ASN1_ITEM_st* @X509_CRL_it() #4
  %0 = bitcast %struct.X509_crl_st* %crl to i8*
  %call1 = tail call i32 @ASN1_item_i2d_bio(%struct.ASN1_ITEM_st* noundef %call, %struct.bio_st* noundef %bp, i8* noundef %0) #4
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define %struct.pkcs7_st* @d2i_PKCS7_fp(%struct._IO_FILE* noundef %fp, %struct.pkcs7_st** noundef %p7) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq %struct.pkcs7_st** %p7, null
  br i1 %cmp.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %0 = load %struct.pkcs7_st*, %struct.pkcs7_st** %p7, align 8, !tbaa !35
  %cmp1.not = icmp eq %struct.pkcs7_st* %0, null
  br i1 %cmp1.not, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %libctx2 = getelementptr inbounds %struct.pkcs7_st, %struct.pkcs7_st* %0, i64 0, i32 6, i32 0
  %1 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx2, align 8, !tbaa !36
  %propq4 = getelementptr inbounds %struct.pkcs7_st, %struct.pkcs7_st* %0, i64 0, i32 6, i32 1
  %2 = load i8*, i8** %propq4, align 8, !tbaa !39
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %libctx.0 = phi %struct.ossl_lib_ctx_st* [ %1, %if.then ], [ null, %land.lhs.true ], [ null, %entry ]
  %propq.0 = phi i8* [ %2, %if.then ], [ null, %land.lhs.true ], [ null, %entry ]
  %call = tail call %struct.ASN1_ITEM_st* @PKCS7_it() #4
  %3 = bitcast %struct.pkcs7_st** %p7 to i8*
  %call5 = tail call i8* @ASN1_item_d2i_fp_ex(%struct.ASN1_ITEM_st* noundef %call, %struct._IO_FILE* noundef %fp, i8* noundef %3, %struct.ossl_lib_ctx_st* noundef %libctx.0, i8* noundef %propq.0) #4
  %4 = bitcast i8* %call5 to %struct.pkcs7_st*
  %cmp6.not = icmp eq i8* %call5, null
  br i1 %cmp6.not, label %if.end8, label %if.then7

if.then7:                                         ; preds = %if.end
  tail call void @ossl_pkcs7_resolve_libctx(%struct.pkcs7_st* noundef nonnull %4) #4
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end
  ret %struct.pkcs7_st* %4
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare i8* @ASN1_item_d2i_fp_ex(%struct.ASN1_ITEM_st* noundef, %struct._IO_FILE* noundef, i8* noundef, %struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #1

declare %struct.ASN1_ITEM_st* @PKCS7_it() local_unnamed_addr #1

declare void @ossl_pkcs7_resolve_libctx(%struct.pkcs7_st* noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_PKCS7_fp(%struct._IO_FILE* noundef %fp, %struct.pkcs7_st* noundef %p7) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.ASN1_ITEM_st* @PKCS7_it() #4
  %0 = bitcast %struct.pkcs7_st* %p7 to i8*
  %call1 = tail call i32 @ASN1_item_i2d_fp(%struct.ASN1_ITEM_st* noundef %call, %struct._IO_FILE* noundef %fp, i8* noundef %0) #4
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define %struct.pkcs7_st* @d2i_PKCS7_bio(%struct.bio_st* noundef %bp, %struct.pkcs7_st** noundef %p7) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq %struct.pkcs7_st** %p7, null
  br i1 %cmp.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %0 = load %struct.pkcs7_st*, %struct.pkcs7_st** %p7, align 8, !tbaa !35
  %cmp1.not = icmp eq %struct.pkcs7_st* %0, null
  br i1 %cmp1.not, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %libctx2 = getelementptr inbounds %struct.pkcs7_st, %struct.pkcs7_st* %0, i64 0, i32 6, i32 0
  %1 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx2, align 8, !tbaa !36
  %propq4 = getelementptr inbounds %struct.pkcs7_st, %struct.pkcs7_st* %0, i64 0, i32 6, i32 1
  %2 = load i8*, i8** %propq4, align 8, !tbaa !39
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %libctx.0 = phi %struct.ossl_lib_ctx_st* [ %1, %if.then ], [ null, %land.lhs.true ], [ null, %entry ]
  %propq.0 = phi i8* [ %2, %if.then ], [ null, %land.lhs.true ], [ null, %entry ]
  %call = tail call %struct.ASN1_ITEM_st* @PKCS7_it() #4
  %3 = bitcast %struct.pkcs7_st** %p7 to i8*
  %call5 = tail call i8* @ASN1_item_d2i_bio_ex(%struct.ASN1_ITEM_st* noundef %call, %struct.bio_st* noundef %bp, i8* noundef %3, %struct.ossl_lib_ctx_st* noundef %libctx.0, i8* noundef %propq.0) #4
  %4 = bitcast i8* %call5 to %struct.pkcs7_st*
  %cmp6.not = icmp eq i8* %call5, null
  br i1 %cmp6.not, label %if.end8, label %if.then7

if.then7:                                         ; preds = %if.end
  tail call void @ossl_pkcs7_resolve_libctx(%struct.pkcs7_st* noundef nonnull %4) #4
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end
  ret %struct.pkcs7_st* %4
}

declare i8* @ASN1_item_d2i_bio_ex(%struct.ASN1_ITEM_st* noundef, %struct.bio_st* noundef, i8* noundef, %struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_PKCS7_bio(%struct.bio_st* noundef %bp, %struct.pkcs7_st* noundef %p7) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.ASN1_ITEM_st* @PKCS7_it() #4
  %0 = bitcast %struct.pkcs7_st* %p7 to i8*
  %call1 = tail call i32 @ASN1_item_i2d_bio(%struct.ASN1_ITEM_st* noundef %call, %struct.bio_st* noundef %bp, i8* noundef %0) #4
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define %struct.X509_req_st* @d2i_X509_REQ_fp(%struct._IO_FILE* noundef %fp, %struct.X509_req_st** noundef %req) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.ASN1_ITEM_st* @X509_REQ_it() #4
  %0 = bitcast %struct.X509_req_st** %req to i8*
  %call1 = tail call i8* @ASN1_item_d2i_fp(%struct.ASN1_ITEM_st* noundef %call, %struct._IO_FILE* noundef %fp, i8* noundef %0) #4
  %1 = bitcast i8* %call1 to %struct.X509_req_st*
  ret %struct.X509_req_st* %1
}

declare %struct.ASN1_ITEM_st* @X509_REQ_it() local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_X509_REQ_fp(%struct._IO_FILE* noundef %fp, %struct.X509_req_st* noundef %req) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.ASN1_ITEM_st* @X509_REQ_it() #4
  %0 = bitcast %struct.X509_req_st* %req to i8*
  %call1 = tail call i32 @ASN1_item_i2d_fp(%struct.ASN1_ITEM_st* noundef %call, %struct._IO_FILE* noundef %fp, i8* noundef %0) #4
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define %struct.X509_req_st* @d2i_X509_REQ_bio(%struct.bio_st* noundef %bp, %struct.X509_req_st** noundef %req) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq %struct.X509_req_st** %req, null
  br i1 %cmp.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %0 = load %struct.X509_req_st*, %struct.X509_req_st** %req, align 8, !tbaa !35
  %cmp1.not = icmp eq %struct.X509_req_st* %0, null
  br i1 %cmp1.not, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %libctx2 = getelementptr inbounds %struct.X509_req_st, %struct.X509_req_st* %0, i64 0, i32 6
  %1 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx2, align 8, !tbaa !28
  %propq3 = getelementptr inbounds %struct.X509_req_st, %struct.X509_req_st* %0, i64 0, i32 7
  %2 = load i8*, i8** %propq3, align 8, !tbaa !29
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %libctx.0 = phi %struct.ossl_lib_ctx_st* [ %1, %if.then ], [ null, %land.lhs.true ], [ null, %entry ]
  %propq.0 = phi i8* [ %2, %if.then ], [ null, %land.lhs.true ], [ null, %entry ]
  %call = tail call %struct.ASN1_ITEM_st* @X509_REQ_it() #4
  %3 = bitcast %struct.X509_req_st** %req to i8*
  %call4 = tail call i8* @ASN1_item_d2i_bio_ex(%struct.ASN1_ITEM_st* noundef %call, %struct.bio_st* noundef %bp, i8* noundef %3, %struct.ossl_lib_ctx_st* noundef %libctx.0, i8* noundef %propq.0) #4
  %4 = bitcast i8* %call4 to %struct.X509_req_st*
  ret %struct.X509_req_st* %4
}

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_X509_REQ_bio(%struct.bio_st* noundef %bp, %struct.X509_req_st* noundef %req) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.ASN1_ITEM_st* @X509_REQ_it() #4
  %0 = bitcast %struct.X509_req_st* %req to i8*
  %call1 = tail call i32 @ASN1_item_i2d_bio(%struct.ASN1_ITEM_st* noundef %call, %struct.bio_st* noundef %bp, i8* noundef %0) #4
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define %struct.rsa_st* @d2i_RSAPrivateKey_fp(%struct._IO_FILE* noundef %fp, %struct.rsa_st** noundef %rsa) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.ASN1_ITEM_st* @RSAPrivateKey_it() #4
  %0 = bitcast %struct.rsa_st** %rsa to i8*
  %call1 = tail call i8* @ASN1_item_d2i_fp(%struct.ASN1_ITEM_st* noundef %call, %struct._IO_FILE* noundef %fp, i8* noundef %0) #4
  %1 = bitcast i8* %call1 to %struct.rsa_st*
  ret %struct.rsa_st* %1
}

declare %struct.ASN1_ITEM_st* @RSAPrivateKey_it() local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_RSAPrivateKey_fp(%struct._IO_FILE* noundef %fp, %struct.rsa_st* noundef %rsa) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.ASN1_ITEM_st* @RSAPrivateKey_it() #4
  %0 = bitcast %struct.rsa_st* %rsa to i8*
  %call1 = tail call i32 @ASN1_item_i2d_fp(%struct.ASN1_ITEM_st* noundef %call, %struct._IO_FILE* noundef %fp, i8* noundef %0) #4
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define %struct.rsa_st* @d2i_RSAPublicKey_fp(%struct._IO_FILE* noundef %fp, %struct.rsa_st** noundef %rsa) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.ASN1_ITEM_st* @RSAPublicKey_it() #4
  %0 = bitcast %struct.rsa_st** %rsa to i8*
  %call1 = tail call i8* @ASN1_item_d2i_fp(%struct.ASN1_ITEM_st* noundef %call, %struct._IO_FILE* noundef %fp, i8* noundef %0) #4
  %1 = bitcast i8* %call1 to %struct.rsa_st*
  ret %struct.rsa_st* %1
}

declare %struct.ASN1_ITEM_st* @RSAPublicKey_it() local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define %struct.rsa_st* @d2i_RSA_PUBKEY_fp(%struct._IO_FILE* noundef %fp, %struct.rsa_st** noundef %rsa) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.rsa_st** %rsa to i8**
  %call = tail call i8* @ASN1_d2i_fp(i8* ()* noundef bitcast (%struct.rsa_st* ()* @RSA_new to i8* ()*), i8* (i8**, i8**, i64)* noundef bitcast (%struct.rsa_st* (%struct.rsa_st**, i8**, i64)* @d2i_RSA_PUBKEY to i8* (i8**, i8**, i64)*), %struct._IO_FILE* noundef %fp, i8** noundef %0) #4
  %1 = bitcast i8* %call to %struct.rsa_st*
  ret %struct.rsa_st* %1
}

declare i8* @ASN1_d2i_fp(i8* ()* noundef, i8* (i8**, i8**, i64)* noundef, %struct._IO_FILE* noundef, i8** noundef) local_unnamed_addr #1

declare %struct.rsa_st* @RSA_new() #1

declare %struct.rsa_st* @d2i_RSA_PUBKEY(%struct.rsa_st** noundef, i8** noundef, i64 noundef) #1

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_RSAPublicKey_fp(%struct._IO_FILE* noundef %fp, %struct.rsa_st* noundef %rsa) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.ASN1_ITEM_st* @RSAPublicKey_it() #4
  %0 = bitcast %struct.rsa_st* %rsa to i8*
  %call1 = tail call i32 @ASN1_item_i2d_fp(%struct.ASN1_ITEM_st* noundef %call, %struct._IO_FILE* noundef %fp, i8* noundef %0) #4
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_RSA_PUBKEY_fp(%struct._IO_FILE* noundef %fp, %struct.rsa_st* noundef %rsa) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.rsa_st* %rsa to i8*
  %call = tail call i32 @ASN1_i2d_fp(i32 (i8*, i8**)* noundef bitcast (i32 (%struct.rsa_st*, i8**)* @i2d_RSA_PUBKEY to i32 (i8*, i8**)*), %struct._IO_FILE* noundef %fp, i8* noundef %0) #4
  ret i32 %call
}

declare i32 @ASN1_i2d_fp(i32 (i8*, i8**)* noundef, %struct._IO_FILE* noundef, i8* noundef) local_unnamed_addr #1

declare i32 @i2d_RSA_PUBKEY(%struct.rsa_st* noundef, i8** noundef) #1

; Function Attrs: noinline nounwind uwtable
define %struct.rsa_st* @d2i_RSAPrivateKey_bio(%struct.bio_st* noundef %bp, %struct.rsa_st** noundef %rsa) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.ASN1_ITEM_st* @RSAPrivateKey_it() #4
  %0 = bitcast %struct.rsa_st** %rsa to i8*
  %call1 = tail call i8* @ASN1_item_d2i_bio(%struct.ASN1_ITEM_st* noundef %call, %struct.bio_st* noundef %bp, i8* noundef %0) #4
  %1 = bitcast i8* %call1 to %struct.rsa_st*
  ret %struct.rsa_st* %1
}

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_RSAPrivateKey_bio(%struct.bio_st* noundef %bp, %struct.rsa_st* noundef %rsa) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.ASN1_ITEM_st* @RSAPrivateKey_it() #4
  %0 = bitcast %struct.rsa_st* %rsa to i8*
  %call1 = tail call i32 @ASN1_item_i2d_bio(%struct.ASN1_ITEM_st* noundef %call, %struct.bio_st* noundef %bp, i8* noundef %0) #4
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define %struct.rsa_st* @d2i_RSAPublicKey_bio(%struct.bio_st* noundef %bp, %struct.rsa_st** noundef %rsa) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.ASN1_ITEM_st* @RSAPublicKey_it() #4
  %0 = bitcast %struct.rsa_st** %rsa to i8*
  %call1 = tail call i8* @ASN1_item_d2i_bio(%struct.ASN1_ITEM_st* noundef %call, %struct.bio_st* noundef %bp, i8* noundef %0) #4
  %1 = bitcast i8* %call1 to %struct.rsa_st*
  ret %struct.rsa_st* %1
}

; Function Attrs: noinline nounwind uwtable
define %struct.rsa_st* @d2i_RSA_PUBKEY_bio(%struct.bio_st* noundef %bp, %struct.rsa_st** noundef %rsa) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.rsa_st** %rsa to i8**
  %call = tail call i8* @ASN1_d2i_bio(i8* ()* noundef bitcast (%struct.rsa_st* ()* @RSA_new to i8* ()*), i8* (i8**, i8**, i64)* noundef bitcast (%struct.rsa_st* (%struct.rsa_st**, i8**, i64)* @d2i_RSA_PUBKEY to i8* (i8**, i8**, i64)*), %struct.bio_st* noundef %bp, i8** noundef %0) #4
  %1 = bitcast i8* %call to %struct.rsa_st*
  ret %struct.rsa_st* %1
}

declare i8* @ASN1_d2i_bio(i8* ()* noundef, i8* (i8**, i8**, i64)* noundef, %struct.bio_st* noundef, i8** noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_RSAPublicKey_bio(%struct.bio_st* noundef %bp, %struct.rsa_st* noundef %rsa) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.ASN1_ITEM_st* @RSAPublicKey_it() #4
  %0 = bitcast %struct.rsa_st* %rsa to i8*
  %call1 = tail call i32 @ASN1_item_i2d_bio(%struct.ASN1_ITEM_st* noundef %call, %struct.bio_st* noundef %bp, i8* noundef %0) #4
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_RSA_PUBKEY_bio(%struct.bio_st* noundef %bp, %struct.rsa_st* noundef %rsa) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.rsa_st* %rsa to i8*
  %call = tail call i32 @ASN1_i2d_bio(i32 (i8*, i8**)* noundef bitcast (i32 (%struct.rsa_st*, i8**)* @i2d_RSA_PUBKEY to i32 (i8*, i8**)*), %struct.bio_st* noundef %bp, i8* noundef %0) #4
  ret i32 %call
}

declare i32 @ASN1_i2d_bio(i32 (i8*, i8**)* noundef, %struct.bio_st* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define %struct.dsa_st* @d2i_DSAPrivateKey_fp(%struct._IO_FILE* noundef %fp, %struct.dsa_st** noundef %dsa) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.dsa_st** %dsa to i8**
  %call = tail call i8* @ASN1_d2i_fp(i8* ()* noundef bitcast (%struct.dsa_st* ()* @DSA_new to i8* ()*), i8* (i8**, i8**, i64)* noundef bitcast (%struct.dsa_st* (%struct.dsa_st**, i8**, i64)* @d2i_DSAPrivateKey to i8* (i8**, i8**, i64)*), %struct._IO_FILE* noundef %fp, i8** noundef %0) #4
  %1 = bitcast i8* %call to %struct.dsa_st*
  ret %struct.dsa_st* %1
}

declare %struct.dsa_st* @DSA_new() #1

declare %struct.dsa_st* @d2i_DSAPrivateKey(%struct.dsa_st** noundef, i8** noundef, i64 noundef) #1

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_DSAPrivateKey_fp(%struct._IO_FILE* noundef %fp, %struct.dsa_st* noundef %dsa) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.dsa_st* %dsa to i8*
  %call = tail call i32 @ASN1_i2d_fp(i32 (i8*, i8**)* noundef bitcast (i32 (%struct.dsa_st*, i8**)* @i2d_DSAPrivateKey to i32 (i8*, i8**)*), %struct._IO_FILE* noundef %fp, i8* noundef %0) #4
  ret i32 %call
}

declare i32 @i2d_DSAPrivateKey(%struct.dsa_st* noundef, i8** noundef) #1

; Function Attrs: noinline nounwind uwtable
define %struct.dsa_st* @d2i_DSA_PUBKEY_fp(%struct._IO_FILE* noundef %fp, %struct.dsa_st** noundef %dsa) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.dsa_st** %dsa to i8**
  %call = tail call i8* @ASN1_d2i_fp(i8* ()* noundef bitcast (%struct.dsa_st* ()* @DSA_new to i8* ()*), i8* (i8**, i8**, i64)* noundef bitcast (%struct.dsa_st* (%struct.dsa_st**, i8**, i64)* @d2i_DSA_PUBKEY to i8* (i8**, i8**, i64)*), %struct._IO_FILE* noundef %fp, i8** noundef %0) #4
  %1 = bitcast i8* %call to %struct.dsa_st*
  ret %struct.dsa_st* %1
}

declare %struct.dsa_st* @d2i_DSA_PUBKEY(%struct.dsa_st** noundef, i8** noundef, i64 noundef) #1

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_DSA_PUBKEY_fp(%struct._IO_FILE* noundef %fp, %struct.dsa_st* noundef %dsa) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.dsa_st* %dsa to i8*
  %call = tail call i32 @ASN1_i2d_fp(i32 (i8*, i8**)* noundef bitcast (i32 (%struct.dsa_st*, i8**)* @i2d_DSA_PUBKEY to i32 (i8*, i8**)*), %struct._IO_FILE* noundef %fp, i8* noundef %0) #4
  ret i32 %call
}

declare i32 @i2d_DSA_PUBKEY(%struct.dsa_st* noundef, i8** noundef) #1

; Function Attrs: noinline nounwind uwtable
define %struct.dsa_st* @d2i_DSAPrivateKey_bio(%struct.bio_st* noundef %bp, %struct.dsa_st** noundef %dsa) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.dsa_st** %dsa to i8**
  %call = tail call i8* @ASN1_d2i_bio(i8* ()* noundef bitcast (%struct.dsa_st* ()* @DSA_new to i8* ()*), i8* (i8**, i8**, i64)* noundef bitcast (%struct.dsa_st* (%struct.dsa_st**, i8**, i64)* @d2i_DSAPrivateKey to i8* (i8**, i8**, i64)*), %struct.bio_st* noundef %bp, i8** noundef %0) #4
  %1 = bitcast i8* %call to %struct.dsa_st*
  ret %struct.dsa_st* %1
}

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_DSAPrivateKey_bio(%struct.bio_st* noundef %bp, %struct.dsa_st* noundef %dsa) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.dsa_st* %dsa to i8*
  %call = tail call i32 @ASN1_i2d_bio(i32 (i8*, i8**)* noundef bitcast (i32 (%struct.dsa_st*, i8**)* @i2d_DSAPrivateKey to i32 (i8*, i8**)*), %struct.bio_st* noundef %bp, i8* noundef %0) #4
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define %struct.dsa_st* @d2i_DSA_PUBKEY_bio(%struct.bio_st* noundef %bp, %struct.dsa_st** noundef %dsa) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.dsa_st** %dsa to i8**
  %call = tail call i8* @ASN1_d2i_bio(i8* ()* noundef bitcast (%struct.dsa_st* ()* @DSA_new to i8* ()*), i8* (i8**, i8**, i64)* noundef bitcast (%struct.dsa_st* (%struct.dsa_st**, i8**, i64)* @d2i_DSA_PUBKEY to i8* (i8**, i8**, i64)*), %struct.bio_st* noundef %bp, i8** noundef %0) #4
  %1 = bitcast i8* %call to %struct.dsa_st*
  ret %struct.dsa_st* %1
}

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_DSA_PUBKEY_bio(%struct.bio_st* noundef %bp, %struct.dsa_st* noundef %dsa) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.dsa_st* %dsa to i8*
  %call = tail call i32 @ASN1_i2d_bio(i32 (i8*, i8**)* noundef bitcast (i32 (%struct.dsa_st*, i8**)* @i2d_DSA_PUBKEY to i32 (i8*, i8**)*), %struct.bio_st* noundef %bp, i8* noundef %0) #4
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define %struct.ec_key_st* @d2i_EC_PUBKEY_fp(%struct._IO_FILE* noundef %fp, %struct.ec_key_st** noundef %eckey) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.ec_key_st** %eckey to i8**
  %call = tail call i8* @ASN1_d2i_fp(i8* ()* noundef bitcast (%struct.ec_key_st* ()* @EC_KEY_new to i8* ()*), i8* (i8**, i8**, i64)* noundef bitcast (%struct.ec_key_st* (%struct.ec_key_st**, i8**, i64)* @d2i_EC_PUBKEY to i8* (i8**, i8**, i64)*), %struct._IO_FILE* noundef %fp, i8** noundef %0) #4
  %1 = bitcast i8* %call to %struct.ec_key_st*
  ret %struct.ec_key_st* %1
}

declare %struct.ec_key_st* @EC_KEY_new() #1

declare %struct.ec_key_st* @d2i_EC_PUBKEY(%struct.ec_key_st** noundef, i8** noundef, i64 noundef) #1

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_EC_PUBKEY_fp(%struct._IO_FILE* noundef %fp, %struct.ec_key_st* noundef %eckey) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.ec_key_st* %eckey to i8*
  %call = tail call i32 @ASN1_i2d_fp(i32 (i8*, i8**)* noundef bitcast (i32 (%struct.ec_key_st*, i8**)* @i2d_EC_PUBKEY to i32 (i8*, i8**)*), %struct._IO_FILE* noundef %fp, i8* noundef %0) #4
  ret i32 %call
}

declare i32 @i2d_EC_PUBKEY(%struct.ec_key_st* noundef, i8** noundef) #1

; Function Attrs: noinline nounwind uwtable
define %struct.ec_key_st* @d2i_ECPrivateKey_fp(%struct._IO_FILE* noundef %fp, %struct.ec_key_st** noundef %eckey) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.ec_key_st** %eckey to i8**
  %call = tail call i8* @ASN1_d2i_fp(i8* ()* noundef bitcast (%struct.ec_key_st* ()* @EC_KEY_new to i8* ()*), i8* (i8**, i8**, i64)* noundef bitcast (%struct.ec_key_st* (%struct.ec_key_st**, i8**, i64)* @d2i_ECPrivateKey to i8* (i8**, i8**, i64)*), %struct._IO_FILE* noundef %fp, i8** noundef %0) #4
  %1 = bitcast i8* %call to %struct.ec_key_st*
  ret %struct.ec_key_st* %1
}

declare %struct.ec_key_st* @d2i_ECPrivateKey(%struct.ec_key_st** noundef, i8** noundef, i64 noundef) #1

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_ECPrivateKey_fp(%struct._IO_FILE* noundef %fp, %struct.ec_key_st* noundef %eckey) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.ec_key_st* %eckey to i8*
  %call = tail call i32 @ASN1_i2d_fp(i32 (i8*, i8**)* noundef bitcast (i32 (%struct.ec_key_st*, i8**)* @i2d_ECPrivateKey to i32 (i8*, i8**)*), %struct._IO_FILE* noundef %fp, i8* noundef %0) #4
  ret i32 %call
}

declare i32 @i2d_ECPrivateKey(%struct.ec_key_st* noundef, i8** noundef) #1

; Function Attrs: noinline nounwind uwtable
define %struct.ec_key_st* @d2i_EC_PUBKEY_bio(%struct.bio_st* noundef %bp, %struct.ec_key_st** noundef %eckey) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.ec_key_st** %eckey to i8**
  %call = tail call i8* @ASN1_d2i_bio(i8* ()* noundef bitcast (%struct.ec_key_st* ()* @EC_KEY_new to i8* ()*), i8* (i8**, i8**, i64)* noundef bitcast (%struct.ec_key_st* (%struct.ec_key_st**, i8**, i64)* @d2i_EC_PUBKEY to i8* (i8**, i8**, i64)*), %struct.bio_st* noundef %bp, i8** noundef %0) #4
  %1 = bitcast i8* %call to %struct.ec_key_st*
  ret %struct.ec_key_st* %1
}

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_EC_PUBKEY_bio(%struct.bio_st* noundef %bp, %struct.ec_key_st* noundef %ecdsa) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.ec_key_st* %ecdsa to i8*
  %call = tail call i32 @ASN1_i2d_bio(i32 (i8*, i8**)* noundef bitcast (i32 (%struct.ec_key_st*, i8**)* @i2d_EC_PUBKEY to i32 (i8*, i8**)*), %struct.bio_st* noundef %bp, i8* noundef %0) #4
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define %struct.ec_key_st* @d2i_ECPrivateKey_bio(%struct.bio_st* noundef %bp, %struct.ec_key_st** noundef %eckey) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.ec_key_st** %eckey to i8**
  %call = tail call i8* @ASN1_d2i_bio(i8* ()* noundef bitcast (%struct.ec_key_st* ()* @EC_KEY_new to i8* ()*), i8* (i8**, i8**, i64)* noundef bitcast (%struct.ec_key_st* (%struct.ec_key_st**, i8**, i64)* @d2i_ECPrivateKey to i8* (i8**, i8**, i64)*), %struct.bio_st* noundef %bp, i8** noundef %0) #4
  %1 = bitcast i8* %call to %struct.ec_key_st*
  ret %struct.ec_key_st* %1
}

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_ECPrivateKey_bio(%struct.bio_st* noundef %bp, %struct.ec_key_st* noundef %eckey) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.ec_key_st* %eckey to i8*
  %call = tail call i32 @ASN1_i2d_bio(i32 (i8*, i8**)* noundef bitcast (i32 (%struct.ec_key_st*, i8**)* @i2d_ECPrivateKey to i32 (i8*, i8**)*), %struct.bio_st* noundef %bp, i8* noundef %0) #4
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @X509_pubkey_digest(%struct.x509_st* noundef %data, %struct.evp_md_st* noundef %type, i8* noundef %md, i32* noundef %len) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.asn1_string_st* @X509_get0_pubkey_bitstr(%struct.x509_st* noundef %data) #4
  %tobool.not = icmp eq %struct.asn1_string_st* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %data1 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %call, i64 0, i32 2
  %0 = load i8*, i8** %data1, align 8, !tbaa !40
  %length = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %call, i64 0, i32 0
  %1 = load i32, i32* %length, align 8, !tbaa !41
  %conv = sext i32 %1 to i64
  %call2 = tail call i32 @EVP_Digest(i8* noundef %0, i64 noundef %conv, i8* noundef %md, i32* noundef %len, %struct.evp_md_st* noundef %type, %struct.engine_st* noundef null) #4
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call2, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

declare %struct.asn1_string_st* @X509_get0_pubkey_bitstr(%struct.x509_st* noundef) local_unnamed_addr #1

declare i32 @EVP_Digest(i8* noundef, i64 noundef, i8* noundef, i32* noundef, %struct.evp_md_st* noundef, %struct.engine_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @X509_digest(%struct.x509_st* noundef %cert, %struct.evp_md_st* noundef %md, i8* noundef %data, i32* noundef %len) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @EVP_MD_is_a(%struct.evp_md_st* noundef %md, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0)) #4
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end8, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %ex_flags = getelementptr inbounds %struct.x509_st, %struct.x509_st* %cert, i64 0, i32 8
  %0 = load i32, i32* %ex_flags, align 8, !tbaa !42
  %1 = and i32 %0, 1048832
  %2 = icmp eq i32 %1, 256
  br i1 %2, label %if.then, label %if.end8

if.then:                                          ; preds = %land.lhs.true
  %cmp5.not = icmp eq i32* %len, null
  br i1 %cmp5.not, label %if.end, label %if.then6

if.then6:                                         ; preds = %if.then
  store i32 20, i32* %len, align 4, !tbaa !43
  br label %if.end

if.end:                                           ; preds = %if.then6, %if.then
  %arraydecay = getelementptr inbounds %struct.x509_st, %struct.x509_st* %cert, i64 0, i32 20, i64 0
  %call7 = tail call i8* @memcpy(i8* noundef %data, i8* noundef nonnull %arraydecay, i64 noundef 20) #4
  br label %return

if.end8:                                          ; preds = %land.lhs.true, %entry
  %call9 = tail call %struct.ASN1_ITEM_st* @X509_it() #4
  %3 = bitcast %struct.x509_st* %cert to i8*
  %libctx = getelementptr inbounds %struct.x509_st, %struct.x509_st* %cert, i64 0, i32 25
  %4 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !18
  %propq = getelementptr inbounds %struct.x509_st, %struct.x509_st* %cert, i64 0, i32 26
  %5 = load i8*, i8** %propq, align 8, !tbaa !19
  %call10 = tail call i32 @ossl_asn1_item_digest_ex(%struct.ASN1_ITEM_st* noundef %call9, %struct.evp_md_st* noundef %md, i8* noundef %3, i8* noundef %data, i32* noundef %len, %struct.ossl_lib_ctx_st* noundef %4, i8* noundef %5) #4
  br label %return

return:                                           ; preds = %if.end8, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ %call10, %if.end8 ]
  ret i32 %retval.0
}

declare i32 @EVP_MD_is_a(%struct.evp_md_st* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

declare i32 @ossl_asn1_item_digest_ex(%struct.ASN1_ITEM_st* noundef, %struct.evp_md_st* noundef, i8* noundef, i8* noundef, i32* noundef, %struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define %struct.asn1_string_st* @X509_digest_sig(%struct.x509_st* noundef %cert, %struct.evp_md_st** noundef writeonly %md_used, i32* noundef writeonly %md_is_fallback) local_unnamed_addr #0 {
entry:
  %len = alloca i32, align 4
  %hash = alloca [64 x i8], align 16
  %mdnid = alloca i32, align 4
  %pknid = alloca i32, align 4
  %mgf1md = alloca %struct.evp_md_st*, align 8
  %mmd = alloca %struct.evp_md_st*, align 8
  %saltlen = alloca i32, align 4
  %trailerfield = alloca i32, align 4
  %0 = bitcast i32* %len to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #6
  %1 = getelementptr inbounds [64 x i8], [64 x i8]* %hash, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %1) #6
  %2 = bitcast i32* %mdnid to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #6
  %3 = bitcast i32* %pknid to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #6
  %cmp.not = icmp eq %struct.evp_md_st** %md_used, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct.evp_md_st* null, %struct.evp_md_st** %md_used, align 8, !tbaa !35
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %cmp1.not = icmp eq i32* %md_is_fallback, null
  br i1 %cmp1.not, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %md_is_fallback, align 4, !tbaa !43
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  %cmp4 = icmp eq %struct.x509_st* %cert, null
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end3
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 noundef 453, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.X509_digest_sig, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 11, i32 noundef 786690, i8* noundef null) #4
  br label %cleanup74

if.end6:                                          ; preds = %if.end3
  %call = tail call i32 @X509_get_signature_nid(%struct.x509_st* noundef nonnull %cert) #4
  %call7 = call i32 @OBJ_find_sigid_algs(i32 noundef %call, i32* noundef nonnull %mdnid, i32* noundef nonnull %pknid) #4
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end6
  call void @ERR_new() #4
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 noundef 458, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.X509_digest_sig, i64 0, i64 0)) #4
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 11, i32 noundef 144, i8* noundef null) #4
  br label %cleanup74

if.end9:                                          ; preds = %if.end6
  %4 = load i32, i32* %mdnid, align 4, !tbaa !43
  %cmp10 = icmp eq i32 %4, 0
  br i1 %cmp10, label %if.then11, label %if.else46

if.then11:                                        ; preds = %if.end9
  %5 = load i32, i32* %pknid, align 4, !tbaa !43
  switch i32 %5, label %sw.default [
    i32 912, label %if.then13
    i32 0, label %if.else43
    i32 1087, label %sw.epilog
    i32 1088, label %sw.bb33
  ]

if.then13:                                        ; preds = %if.then11
  %sig_alg = getelementptr inbounds %struct.x509_st, %struct.x509_st* %cert, i64 0, i32 1
  %call14 = call %struct.rsa_pss_params_st* @ossl_rsa_pss_decode(%struct.X509_algor_st* noundef nonnull %sig_alg) #4
  %6 = bitcast %struct.evp_md_st** %mgf1md to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #6
  %7 = bitcast %struct.evp_md_st** %mmd to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #6
  store %struct.evp_md_st* null, %struct.evp_md_st** %mmd, align 8, !tbaa !35
  %8 = bitcast i32* %saltlen to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %8) #6
  %9 = bitcast i32* %trailerfield to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %9) #6
  %cmp15 = icmp eq %struct.rsa_pss_params_st* %call14, null
  br i1 %cmp15, label %cleanup.thread, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then13
  %call16 = call i32 @ossl_rsa_pss_get_param_unverified(%struct.rsa_pss_params_st* noundef nonnull %call14, %struct.evp_md_st** noundef nonnull %mmd, %struct.evp_md_st** noundef nonnull %mgf1md, i32* noundef nonnull %saltlen, i32* noundef nonnull %trailerfield) #4
  %tobool17 = icmp eq i32 %call16, 0
  %10 = load %struct.evp_md_st*, %struct.evp_md_st** %mmd, align 8
  %cmp19 = icmp eq %struct.evp_md_st* %10, null
  %or.cond = select i1 %tobool17, i1 true, i1 %cmp19
  br i1 %or.cond, label %cleanup.thread, label %cleanup

cleanup.thread:                                   ; preds = %if.then13, %lor.lhs.false
  call void @RSA_PSS_PARAMS_free(%struct.rsa_pss_params_st* noundef %call14) #4
  call void @ERR_new() #4
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 noundef 474, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.X509_digest_sig, i64 0, i64 0)) #4
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 11, i32 noundef 111, i8* noundef null) #4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %9) #6
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %8) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #6
  br label %cleanup74

cleanup:                                          ; preds = %lor.lhs.false
  call void @RSA_PSS_PARAMS_free(%struct.rsa_pss_params_st* noundef nonnull %call14) #4
  %libctx = getelementptr inbounds %struct.x509_st, %struct.x509_st* %cert, i64 0, i32 25
  %11 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !18
  %12 = load %struct.evp_md_st*, %struct.evp_md_st** %mmd, align 8, !tbaa !35
  %call22 = call i8* @EVP_MD_get0_name(%struct.evp_md_st* noundef %12) #4
  %propq = getelementptr inbounds %struct.x509_st, %struct.x509_st* %cert, i64 0, i32 26
  %13 = load i8*, i8** %propq, align 8, !tbaa !19
  %call23 = call %struct.evp_md_st* @EVP_MD_fetch(%struct.ossl_lib_ctx_st* noundef %11, i8* noundef %call22, i8* noundef %13) #4
  %cmp24.not = icmp eq %struct.evp_md_st* %call23, null
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %9) #6
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %8) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #6
  br i1 %cmp24.not, label %cleanup74, label %if.end57

sw.bb33:                                          ; preds = %if.then11
  br label %sw.epilog

sw.default:                                       ; preds = %if.then11
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then11, %sw.default, %sw.bb33
  %md_name.0 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), %sw.default ], [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), %sw.bb33 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), %if.then11 ]
  %libctx34 = getelementptr inbounds %struct.x509_st, %struct.x509_st* %cert, i64 0, i32 25
  %14 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx34, align 8, !tbaa !18
  %propq35 = getelementptr inbounds %struct.x509_st, %struct.x509_st* %cert, i64 0, i32 26
  %15 = load i8*, i8** %propq35, align 8, !tbaa !19
  %call36 = call %struct.evp_md_st* @EVP_MD_fetch(%struct.ossl_lib_ctx_st* noundef %14, i8* noundef nonnull %md_name.0, i8* noundef %15) #4
  %cmp37 = icmp eq %struct.evp_md_st* %call36, null
  br i1 %cmp37, label %cleanup74, label %if.end39

if.end39:                                         ; preds = %sw.epilog
  br i1 %cmp1.not, label %if.end57, label %if.then41

if.then41:                                        ; preds = %if.end39
  store i32 1, i32* %md_is_fallback, align 4, !tbaa !43
  br label %if.end57

if.else43:                                        ; preds = %if.then11
  call void @ERR_new() #4
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 noundef 503, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.X509_digest_sig, i64 0, i64 0)) #4
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 11, i32 noundef 111, i8* noundef null) #4
  br label %cleanup74

if.else46:                                        ; preds = %if.end9
  %libctx47 = getelementptr inbounds %struct.x509_st, %struct.x509_st* %cert, i64 0, i32 25
  %16 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx47, align 8, !tbaa !18
  %call48 = call i8* @OBJ_nid2sn(i32 noundef %4) #4
  %propq49 = getelementptr inbounds %struct.x509_st, %struct.x509_st* %cert, i64 0, i32 26
  %17 = load i8*, i8** %propq49, align 8, !tbaa !19
  %call50 = call %struct.evp_md_st* @EVP_MD_fetch(%struct.ossl_lib_ctx_st* noundef %16, i8* noundef %call48, i8* noundef %17) #4
  %cmp51 = icmp eq %struct.evp_md_st* %call50, null
  br i1 %cmp51, label %land.lhs.true, label %if.end57

land.lhs.true:                                    ; preds = %if.else46
  %18 = load i32, i32* %mdnid, align 4, !tbaa !43
  %call52 = call i8* @OBJ_nid2sn(i32 noundef %18) #4
  %call53 = call %struct.evp_md_st* @EVP_get_digestbyname(i8* noundef %call52) #4
  %cmp54 = icmp eq %struct.evp_md_st* %call53, null
  br i1 %cmp54, label %if.then55, label %if.end57

if.then55:                                        ; preds = %land.lhs.true
  call void @ERR_new() #4
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 noundef 509, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.X509_digest_sig, i64 0, i64 0)) #4
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 11, i32 noundef 111, i8* noundef null) #4
  br label %cleanup74

if.end57:                                         ; preds = %if.else46, %land.lhs.true, %cleanup, %if.end39, %if.then41
  %md.1 = phi %struct.evp_md_st* [ %call23, %cleanup ], [ %call36, %if.then41 ], [ %call36, %if.end39 ], [ %call53, %land.lhs.true ], [ %call50, %if.else46 ]
  %call58 = call i32 @X509_digest(%struct.x509_st* noundef nonnull %cert, %struct.evp_md_st* noundef nonnull %md.1, i8* noundef nonnull %1, i32* noundef nonnull %len) #5
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %err, label %lor.lhs.false60

lor.lhs.false60:                                  ; preds = %if.end57
  %call61 = call %struct.asn1_string_st* @ASN1_OCTET_STRING_new() #4
  %cmp62 = icmp eq %struct.asn1_string_st* %call61, null
  br i1 %cmp62, label %err, label %if.end64

if.end64:                                         ; preds = %lor.lhs.false60
  %19 = load i32, i32* %len, align 4, !tbaa !43
  %call66 = call i32 @ASN1_OCTET_STRING_set(%struct.asn1_string_st* noundef nonnull %call61, i8* noundef nonnull %1, i32 noundef %19) #4
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %if.end73, label %if.then68

if.then68:                                        ; preds = %if.end64
  br i1 %cmp.not, label %if.else71, label %if.then70

if.then70:                                        ; preds = %if.then68
  store %struct.evp_md_st* %md.1, %struct.evp_md_st** %md_used, align 8, !tbaa !35
  br label %cleanup74

if.else71:                                        ; preds = %if.then68
  call void @EVP_MD_free(%struct.evp_md_st* noundef nonnull %md.1) #4
  br label %cleanup74

if.end73:                                         ; preds = %if.end64
  call void @ASN1_OCTET_STRING_free(%struct.asn1_string_st* noundef nonnull %call61) #4
  br label %err

err:                                              ; preds = %if.end57, %lor.lhs.false60, %if.end73
  call void @EVP_MD_free(%struct.evp_md_st* noundef nonnull %md.1) #4
  br label %cleanup74

cleanup74:                                        ; preds = %cleanup.thread, %if.then70, %if.else71, %sw.epilog, %cleanup, %err, %if.then55, %if.else43, %if.then8, %if.then5
  %retval.1 = phi %struct.asn1_string_st* [ null, %if.then5 ], [ null, %err ], [ null, %cleanup ], [ null, %if.else43 ], [ null, %if.then55 ], [ null, %if.then8 ], [ null, %sw.epilog ], [ %call61, %if.else71 ], [ %call61, %if.then70 ], [ null, %cleanup.thread ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #6
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #6
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %1) #6
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #6
  ret %struct.asn1_string_st* %retval.1
}

declare void @ERR_new() local_unnamed_addr #1

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

declare i32 @OBJ_find_sigid_algs(i32 noundef, i32* noundef, i32* noundef) local_unnamed_addr #1

declare i32 @X509_get_signature_nid(%struct.x509_st* noundef) local_unnamed_addr #1

declare %struct.rsa_pss_params_st* @ossl_rsa_pss_decode(%struct.X509_algor_st* noundef) local_unnamed_addr #1

declare i32 @ossl_rsa_pss_get_param_unverified(%struct.rsa_pss_params_st* noundef, %struct.evp_md_st** noundef, %struct.evp_md_st** noundef, i32* noundef, i32* noundef) local_unnamed_addr #1

declare void @RSA_PSS_PARAMS_free(%struct.rsa_pss_params_st* noundef) local_unnamed_addr #1

declare %struct.evp_md_st* @EVP_MD_fetch(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare i8* @EVP_MD_get0_name(%struct.evp_md_st* noundef) local_unnamed_addr #1

declare i8* @OBJ_nid2sn(i32 noundef) local_unnamed_addr #1

declare %struct.evp_md_st* @EVP_get_digestbyname(i8* noundef) local_unnamed_addr #1

declare %struct.asn1_string_st* @ASN1_OCTET_STRING_new() local_unnamed_addr #1

declare i32 @ASN1_OCTET_STRING_set(%struct.asn1_string_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare void @EVP_MD_free(%struct.evp_md_st* noundef) local_unnamed_addr #1

declare void @ASN1_OCTET_STRING_free(%struct.asn1_string_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @X509_CRL_digest(%struct.X509_crl_st* noundef %data, %struct.evp_md_st* noundef %type, i8* noundef %md, i32* noundef %len) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.evp_md_st* %type, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 noundef 532, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.X509_CRL_digest, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 11, i32 noundef 786690, i8* noundef null) #4
  br label %return

if.end:                                           ; preds = %entry
  %call = tail call i32 @EVP_MD_is_a(%struct.evp_md_st* noundef nonnull %type, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0)) #4
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end11, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %flags = getelementptr inbounds %struct.X509_crl_st, %struct.X509_crl_st* %data, i64 0, i32 4
  %0 = load i32, i32* %flags, align 4, !tbaa !44
  %1 = and i32 %0, 1048832
  %2 = icmp eq i32 %1, 256
  br i1 %2, label %if.then6, label %if.end11

if.then6:                                         ; preds = %land.lhs.true
  %cmp7.not = icmp eq i32* %len, null
  br i1 %cmp7.not, label %if.end9, label %if.then8

if.then8:                                         ; preds = %if.then6
  store i32 20, i32* %len, align 4, !tbaa !43
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.then6
  %arraydecay = getelementptr inbounds %struct.X509_crl_st, %struct.X509_crl_st* %data, i64 0, i32 12, i64 0
  %call10 = tail call i8* @memcpy(i8* noundef %md, i8* noundef nonnull %arraydecay, i64 noundef 20) #4
  br label %return

if.end11:                                         ; preds = %land.lhs.true, %if.end
  %call12 = tail call %struct.ASN1_ITEM_st* @X509_CRL_it() #4
  %3 = bitcast %struct.X509_crl_st* %data to i8*
  %libctx = getelementptr inbounds %struct.X509_crl_st, %struct.X509_crl_st* %data, i64 0, i32 16
  %4 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !33
  %propq = getelementptr inbounds %struct.X509_crl_st, %struct.X509_crl_st* %data, i64 0, i32 17
  %5 = load i8*, i8** %propq, align 8, !tbaa !34
  %call13 = tail call i32 @ossl_asn1_item_digest_ex(%struct.ASN1_ITEM_st* noundef %call12, %struct.evp_md_st* noundef nonnull %type, i8* noundef %3, i8* noundef %md, i32* noundef %len, %struct.ossl_lib_ctx_st* noundef %4, i8* noundef %5) #4
  br label %return

return:                                           ; preds = %if.end11, %if.end9, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.end9 ], [ %call13, %if.end11 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @X509_REQ_digest(%struct.X509_req_st* noundef %data, %struct.evp_md_st* noundef %type, i8* noundef %md, i32* noundef %len) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.ASN1_ITEM_st* @X509_REQ_it() #4
  %0 = bitcast %struct.X509_req_st* %data to i8*
  %libctx = getelementptr inbounds %struct.X509_req_st, %struct.X509_req_st* %data, i64 0, i32 6
  %1 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !28
  %propq = getelementptr inbounds %struct.X509_req_st, %struct.X509_req_st* %data, i64 0, i32 7
  %2 = load i8*, i8** %propq, align 8, !tbaa !29
  %call1 = tail call i32 @ossl_asn1_item_digest_ex(%struct.ASN1_ITEM_st* noundef %call, %struct.evp_md_st* noundef %type, i8* noundef %0, i8* noundef %md, i32* noundef %len, %struct.ossl_lib_ctx_st* noundef %1, i8* noundef %2) #4
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define i32 @X509_NAME_digest(%struct.X509_name_st* noundef %data, %struct.evp_md_st* noundef %type, i8* noundef %md, i32* noundef %len) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.ASN1_ITEM_st* @X509_NAME_it() #4
  %0 = bitcast %struct.X509_name_st* %data to i8*
  %call1 = tail call i32 @ASN1_item_digest(%struct.ASN1_ITEM_st* noundef %call, %struct.evp_md_st* noundef %type, i8* noundef %0, i8* noundef %md, i32* noundef %len) #4
  ret i32 %call1
}

declare i32 @ASN1_item_digest(%struct.ASN1_ITEM_st* noundef, %struct.evp_md_st* noundef, i8* noundef, i8* noundef, i32* noundef) local_unnamed_addr #1

declare %struct.ASN1_ITEM_st* @X509_NAME_it() local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @PKCS7_ISSUER_AND_SERIAL_digest(%struct.pkcs7_issuer_and_serial_st* noundef %data, %struct.evp_md_st* noundef %type, i8* noundef %md, i32* noundef %len) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.ASN1_ITEM_st* @PKCS7_ISSUER_AND_SERIAL_it() #4
  %0 = bitcast %struct.pkcs7_issuer_and_serial_st* %data to i8*
  %call1 = tail call i32 @ASN1_item_digest(%struct.ASN1_ITEM_st* noundef %call, %struct.evp_md_st* noundef %type, i8* noundef %0, i8* noundef %md, i32* noundef %len) #4
  ret i32 %call1
}

declare %struct.ASN1_ITEM_st* @PKCS7_ISSUER_AND_SERIAL_it() local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define %struct.X509_sig_st* @d2i_PKCS8_fp(%struct._IO_FILE* noundef %fp, %struct.X509_sig_st** noundef %p8) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.X509_sig_st** %p8 to i8**
  %call = tail call i8* @ASN1_d2i_fp(i8* ()* noundef bitcast (%struct.X509_sig_st* ()* @X509_SIG_new to i8* ()*), i8* (i8**, i8**, i64)* noundef bitcast (%struct.X509_sig_st* (%struct.X509_sig_st**, i8**, i64)* @d2i_X509_SIG to i8* (i8**, i8**, i64)*), %struct._IO_FILE* noundef %fp, i8** noundef %0) #4
  %1 = bitcast i8* %call to %struct.X509_sig_st*
  ret %struct.X509_sig_st* %1
}

declare %struct.X509_sig_st* @X509_SIG_new() #1

declare %struct.X509_sig_st* @d2i_X509_SIG(%struct.X509_sig_st** noundef, i8** noundef, i64 noundef) #1

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_PKCS8_fp(%struct._IO_FILE* noundef %fp, %struct.X509_sig_st* noundef %p8) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.X509_sig_st* %p8 to i8*
  %call = tail call i32 @ASN1_i2d_fp(i32 (i8*, i8**)* noundef bitcast (i32 (%struct.X509_sig_st*, i8**)* @i2d_X509_SIG to i32 (i8*, i8**)*), %struct._IO_FILE* noundef %fp, i8* noundef %0) #4
  ret i32 %call
}

declare i32 @i2d_X509_SIG(%struct.X509_sig_st* noundef, i8** noundef) #1

; Function Attrs: noinline nounwind uwtable
define %struct.X509_sig_st* @d2i_PKCS8_bio(%struct.bio_st* noundef %bp, %struct.X509_sig_st** noundef %p8) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.X509_sig_st** %p8 to i8**
  %call = tail call i8* @ASN1_d2i_bio(i8* ()* noundef bitcast (%struct.X509_sig_st* ()* @X509_SIG_new to i8* ()*), i8* (i8**, i8**, i64)* noundef bitcast (%struct.X509_sig_st* (%struct.X509_sig_st**, i8**, i64)* @d2i_X509_SIG to i8* (i8**, i8**, i64)*), %struct.bio_st* noundef %bp, i8** noundef %0) #4
  %1 = bitcast i8* %call to %struct.X509_sig_st*
  ret %struct.X509_sig_st* %1
}

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_PKCS8_bio(%struct.bio_st* noundef %bp, %struct.X509_sig_st* noundef %p8) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.X509_sig_st* %p8 to i8*
  %call = tail call i32 @ASN1_i2d_bio(i32 (i8*, i8**)* noundef bitcast (i32 (%struct.X509_sig_st*, i8**)* @i2d_X509_SIG to i32 (i8*, i8**)*), %struct.bio_st* noundef %bp, i8* noundef %0) #4
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define %struct.X509_pubkey_st* @d2i_X509_PUBKEY_fp(%struct._IO_FILE* noundef %fp, %struct.X509_pubkey_st** noundef %xpk) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.X509_pubkey_st** %xpk to i8**
  %call = tail call i8* @ASN1_d2i_fp(i8* ()* noundef bitcast (%struct.X509_pubkey_st* ()* @X509_PUBKEY_new to i8* ()*), i8* (i8**, i8**, i64)* noundef bitcast (%struct.X509_pubkey_st* (%struct.X509_pubkey_st**, i8**, i64)* @d2i_X509_PUBKEY to i8* (i8**, i8**, i64)*), %struct._IO_FILE* noundef %fp, i8** noundef %0) #4
  %1 = bitcast i8* %call to %struct.X509_pubkey_st*
  ret %struct.X509_pubkey_st* %1
}

declare %struct.X509_pubkey_st* @X509_PUBKEY_new() #1

declare %struct.X509_pubkey_st* @d2i_X509_PUBKEY(%struct.X509_pubkey_st** noundef, i8** noundef, i64 noundef) #1

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_X509_PUBKEY_fp(%struct._IO_FILE* noundef %fp, %struct.X509_pubkey_st* noundef %xpk) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.X509_pubkey_st* %xpk to i8*
  %call = tail call i32 @ASN1_i2d_fp(i32 (i8*, i8**)* noundef bitcast (i32 (%struct.X509_pubkey_st*, i8**)* @i2d_X509_PUBKEY to i32 (i8*, i8**)*), %struct._IO_FILE* noundef %fp, i8* noundef %0) #4
  ret i32 %call
}

declare i32 @i2d_X509_PUBKEY(%struct.X509_pubkey_st* noundef, i8** noundef) #1

; Function Attrs: noinline nounwind uwtable
define %struct.X509_pubkey_st* @d2i_X509_PUBKEY_bio(%struct.bio_st* noundef %bp, %struct.X509_pubkey_st** noundef %xpk) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.X509_pubkey_st** %xpk to i8**
  %call = tail call i8* @ASN1_d2i_bio(i8* ()* noundef bitcast (%struct.X509_pubkey_st* ()* @X509_PUBKEY_new to i8* ()*), i8* (i8**, i8**, i64)* noundef bitcast (%struct.X509_pubkey_st* (%struct.X509_pubkey_st**, i8**, i64)* @d2i_X509_PUBKEY to i8* (i8**, i8**, i64)*), %struct.bio_st* noundef %bp, i8** noundef %0) #4
  %1 = bitcast i8* %call to %struct.X509_pubkey_st*
  ret %struct.X509_pubkey_st* %1
}

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_X509_PUBKEY_bio(%struct.bio_st* noundef %bp, %struct.X509_pubkey_st* noundef %xpk) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.X509_pubkey_st* %xpk to i8*
  %call = tail call i32 @ASN1_i2d_bio(i32 (i8*, i8**)* noundef bitcast (i32 (%struct.X509_pubkey_st*, i8**)* @i2d_X509_PUBKEY to i32 (i8*, i8**)*), %struct.bio_st* noundef %bp, i8* noundef %0) #4
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define %struct.pkcs8_priv_key_info_st* @d2i_PKCS8_PRIV_KEY_INFO_fp(%struct._IO_FILE* noundef %fp, %struct.pkcs8_priv_key_info_st** noundef %p8inf) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.pkcs8_priv_key_info_st** %p8inf to i8**
  %call = tail call i8* @ASN1_d2i_fp(i8* ()* noundef bitcast (%struct.pkcs8_priv_key_info_st* ()* @PKCS8_PRIV_KEY_INFO_new to i8* ()*), i8* (i8**, i8**, i64)* noundef bitcast (%struct.pkcs8_priv_key_info_st* (%struct.pkcs8_priv_key_info_st**, i8**, i64)* @d2i_PKCS8_PRIV_KEY_INFO to i8* (i8**, i8**, i64)*), %struct._IO_FILE* noundef %fp, i8** noundef %0) #4
  %1 = bitcast i8* %call to %struct.pkcs8_priv_key_info_st*
  ret %struct.pkcs8_priv_key_info_st* %1
}

declare %struct.pkcs8_priv_key_info_st* @PKCS8_PRIV_KEY_INFO_new() #1

declare %struct.pkcs8_priv_key_info_st* @d2i_PKCS8_PRIV_KEY_INFO(%struct.pkcs8_priv_key_info_st** noundef, i8** noundef, i64 noundef) #1

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_PKCS8_PRIV_KEY_INFO_fp(%struct._IO_FILE* noundef %fp, %struct.pkcs8_priv_key_info_st* noundef %p8inf) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.pkcs8_priv_key_info_st* %p8inf to i8*
  %call = tail call i32 @ASN1_i2d_fp(i32 (i8*, i8**)* noundef bitcast (i32 (%struct.pkcs8_priv_key_info_st*, i8**)* @i2d_PKCS8_PRIV_KEY_INFO to i32 (i8*, i8**)*), %struct._IO_FILE* noundef %fp, i8* noundef %0) #4
  ret i32 %call
}

declare i32 @i2d_PKCS8_PRIV_KEY_INFO(%struct.pkcs8_priv_key_info_st* noundef, i8** noundef) #1

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_PKCS8PrivateKeyInfo_fp(%struct._IO_FILE* noundef %fp, %struct.evp_pkey_st* noundef %key) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.pkcs8_priv_key_info_st* @EVP_PKEY2PKCS8(%struct.evp_pkey_st* noundef %key) #4
  %cmp = icmp eq %struct.pkcs8_priv_key_info_st* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @i2d_PKCS8_PRIV_KEY_INFO_fp(%struct._IO_FILE* noundef %fp, %struct.pkcs8_priv_key_info_st* noundef nonnull %call) #5
  tail call void @PKCS8_PRIV_KEY_INFO_free(%struct.pkcs8_priv_key_info_st* noundef nonnull %call) #4
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

declare %struct.pkcs8_priv_key_info_st* @EVP_PKEY2PKCS8(%struct.evp_pkey_st* noundef) local_unnamed_addr #1

declare void @PKCS8_PRIV_KEY_INFO_free(%struct.pkcs8_priv_key_info_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_PrivateKey_fp(%struct._IO_FILE* noundef %fp, %struct.evp_pkey_st* noundef %pkey) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.evp_pkey_st* %pkey to i8*
  %call = tail call i32 @ASN1_i2d_fp(i32 (i8*, i8**)* noundef bitcast (i32 (%struct.evp_pkey_st*, i8**)* @i2d_PrivateKey to i32 (i8*, i8**)*), %struct._IO_FILE* noundef %fp, i8* noundef %0) #4
  ret i32 %call
}

declare i32 @i2d_PrivateKey(%struct.evp_pkey_st* noundef, i8** noundef) #1

; Function Attrs: noinline nounwind uwtable
define %struct.evp_pkey_st* @d2i_PrivateKey_fp(%struct._IO_FILE* noundef %fp, %struct.evp_pkey_st** noundef %a) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.evp_pkey_st** %a to i8**
  %call = tail call i8* @ASN1_d2i_fp(i8* ()* noundef bitcast (%struct.evp_pkey_st* ()* @EVP_PKEY_new to i8* ()*), i8* (i8**, i8**, i64)* noundef bitcast (%struct.evp_pkey_st* (%struct.evp_pkey_st**, i8**, i64)* @d2i_AutoPrivateKey to i8* (i8**, i8**, i64)*), %struct._IO_FILE* noundef %fp, i8** noundef %0) #4
  %1 = bitcast i8* %call to %struct.evp_pkey_st*
  ret %struct.evp_pkey_st* %1
}

declare %struct.evp_pkey_st* @EVP_PKEY_new() #1

declare %struct.evp_pkey_st* @d2i_AutoPrivateKey(%struct.evp_pkey_st** noundef, i8** noundef, i64 noundef) #1

; Function Attrs: noinline nounwind uwtable
define %struct.evp_pkey_st* @d2i_PrivateKey_ex_fp(%struct._IO_FILE* noundef %fp, %struct.evp_pkey_st** noundef %a, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.bio_method_st* @BIO_s_file() #4
  %call1 = tail call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call) #4
  %cmp = icmp eq %struct.bio_st* %call1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 noundef 660, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.d2i_PrivateKey_ex_fp, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 11, i32 noundef 524295, i8* noundef null) #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = bitcast %struct._IO_FILE* %fp to i8*
  %call2 = tail call i64 @BIO_ctrl(%struct.bio_st* noundef nonnull %call1, i32 noundef 106, i64 noundef 0, i8* noundef %0) #4
  %call3 = tail call %struct.evp_pkey_st* @d2i_PrivateKey_ex_bio(%struct.bio_st* noundef nonnull %call1, %struct.evp_pkey_st** noundef %a, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) #5
  %call4 = tail call i32 @BIO_free(%struct.bio_st* noundef nonnull %call1) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi %struct.evp_pkey_st* [ null, %if.then ], [ %call3, %if.end ]
  ret %struct.evp_pkey_st* %retval.0
}

declare %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef) local_unnamed_addr #1

declare %struct.bio_method_st* @BIO_s_file() local_unnamed_addr #1

declare i64 @BIO_ctrl(%struct.bio_st* noundef, i32 noundef, i64 noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define %struct.evp_pkey_st* @d2i_PrivateKey_ex_bio(%struct.bio_st* noundef %bp, %struct.evp_pkey_st** noundef %a, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) local_unnamed_addr #0 {
entry:
  %b = alloca %struct.buf_mem_st*, align 8
  %p = alloca i8*, align 8
  %0 = bitcast %struct.buf_mem_st** %b to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #6
  store %struct.buf_mem_st* null, %struct.buf_mem_st** %b, align 8, !tbaa !35
  %1 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #6
  %call = call i32 @asn1_d2i_read_bio(%struct.bio_st* noundef %bp, %struct.buf_mem_st** noundef nonnull %b) #4
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %err, label %if.end

if.end:                                           ; preds = %entry
  %2 = load %struct.buf_mem_st*, %struct.buf_mem_st** %b, align 8, !tbaa !35
  %data = getelementptr inbounds %struct.buf_mem_st, %struct.buf_mem_st* %2, i64 0, i32 1
  %3 = load i8*, i8** %data, align 8, !tbaa !45
  store i8* %3, i8** %p, align 8, !tbaa !35
  %conv5 = zext i32 %call to i64
  %call1 = call %struct.evp_pkey_st* @d2i_AutoPrivateKey_ex(%struct.evp_pkey_st** noundef %a, i8** noundef nonnull %p, i64 noundef %conv5, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) #4
  br label %err

err:                                              ; preds = %entry, %if.end
  %4 = phi %struct.evp_pkey_st* [ null, %entry ], [ %call1, %if.end ]
  %5 = load %struct.buf_mem_st*, %struct.buf_mem_st** %b, align 8, !tbaa !35
  call void @BUF_MEM_free(%struct.buf_mem_st* noundef %5) #4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #6
  ret %struct.evp_pkey_st* %4
}

declare i32 @BIO_free(%struct.bio_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_PUBKEY_fp(%struct._IO_FILE* noundef %fp, %struct.evp_pkey_st* noundef %pkey) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.evp_pkey_st* %pkey to i8*
  %call = tail call i32 @ASN1_i2d_fp(i32 (i8*, i8**)* noundef bitcast (i32 (%struct.evp_pkey_st*, i8**)* @i2d_PUBKEY to i32 (i8*, i8**)*), %struct._IO_FILE* noundef %fp, i8* noundef %0) #4
  ret i32 %call
}

declare i32 @i2d_PUBKEY(%struct.evp_pkey_st* noundef, i8** noundef) #1

; Function Attrs: noinline nounwind uwtable
define %struct.evp_pkey_st* @d2i_PUBKEY_fp(%struct._IO_FILE* noundef %fp, %struct.evp_pkey_st** noundef %a) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.evp_pkey_st** %a to i8**
  %call = tail call i8* @ASN1_d2i_fp(i8* ()* noundef bitcast (%struct.evp_pkey_st* ()* @EVP_PKEY_new to i8* ()*), i8* (i8**, i8**, i64)* noundef bitcast (%struct.evp_pkey_st* (%struct.evp_pkey_st**, i8**, i64)* @d2i_PUBKEY to i8* (i8**, i8**, i64)*), %struct._IO_FILE* noundef %fp, i8** noundef %0) #4
  %1 = bitcast i8* %call to %struct.evp_pkey_st*
  ret %struct.evp_pkey_st* %1
}

declare %struct.evp_pkey_st* @d2i_PUBKEY(%struct.evp_pkey_st** noundef, i8** noundef, i64 noundef) #1

; Function Attrs: noinline nounwind uwtable
define %struct.pkcs8_priv_key_info_st* @d2i_PKCS8_PRIV_KEY_INFO_bio(%struct.bio_st* noundef %bp, %struct.pkcs8_priv_key_info_st** noundef %p8inf) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.pkcs8_priv_key_info_st** %p8inf to i8**
  %call = tail call i8* @ASN1_d2i_bio(i8* ()* noundef bitcast (%struct.pkcs8_priv_key_info_st* ()* @PKCS8_PRIV_KEY_INFO_new to i8* ()*), i8* (i8**, i8**, i64)* noundef bitcast (%struct.pkcs8_priv_key_info_st* (%struct.pkcs8_priv_key_info_st**, i8**, i64)* @d2i_PKCS8_PRIV_KEY_INFO to i8* (i8**, i8**, i64)*), %struct.bio_st* noundef %bp, i8** noundef %0) #4
  %1 = bitcast i8* %call to %struct.pkcs8_priv_key_info_st*
  ret %struct.pkcs8_priv_key_info_st* %1
}

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_PKCS8_PRIV_KEY_INFO_bio(%struct.bio_st* noundef %bp, %struct.pkcs8_priv_key_info_st* noundef %p8inf) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.pkcs8_priv_key_info_st* %p8inf to i8*
  %call = tail call i32 @ASN1_i2d_bio(i32 (i8*, i8**)* noundef bitcast (i32 (%struct.pkcs8_priv_key_info_st*, i8**)* @i2d_PKCS8_PRIV_KEY_INFO to i32 (i8*, i8**)*), %struct.bio_st* noundef %bp, i8* noundef %0) #4
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_PKCS8PrivateKeyInfo_bio(%struct.bio_st* noundef %bp, %struct.evp_pkey_st* noundef %key) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.pkcs8_priv_key_info_st* @EVP_PKEY2PKCS8(%struct.evp_pkey_st* noundef %key) #4
  %cmp = icmp eq %struct.pkcs8_priv_key_info_st* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @i2d_PKCS8_PRIV_KEY_INFO_bio(%struct.bio_st* noundef %bp, %struct.pkcs8_priv_key_info_st* noundef nonnull %call) #5
  tail call void @PKCS8_PRIV_KEY_INFO_free(%struct.pkcs8_priv_key_info_st* noundef nonnull %call) #4
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_PrivateKey_bio(%struct.bio_st* noundef %bp, %struct.evp_pkey_st* noundef %pkey) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.evp_pkey_st* %pkey to i8*
  %call = tail call i32 @ASN1_i2d_bio(i32 (i8*, i8**)* noundef bitcast (i32 (%struct.evp_pkey_st*, i8**)* @i2d_PrivateKey to i32 (i8*, i8**)*), %struct.bio_st* noundef %bp, i8* noundef %0) #4
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define %struct.evp_pkey_st* @d2i_PrivateKey_bio(%struct.bio_st* noundef %bp, %struct.evp_pkey_st** noundef %a) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.evp_pkey_st** %a to i8**
  %call = tail call i8* @ASN1_d2i_bio(i8* ()* noundef bitcast (%struct.evp_pkey_st* ()* @EVP_PKEY_new to i8* ()*), i8* (i8**, i8**, i64)* noundef bitcast (%struct.evp_pkey_st* (%struct.evp_pkey_st**, i8**, i64)* @d2i_AutoPrivateKey to i8* (i8**, i8**, i64)*), %struct.bio_st* noundef %bp, i8** noundef %0) #4
  %1 = bitcast i8* %call to %struct.evp_pkey_st*
  ret %struct.evp_pkey_st* %1
}

declare i32 @asn1_d2i_read_bio(%struct.bio_st* noundef, %struct.buf_mem_st** noundef) local_unnamed_addr #1

declare %struct.evp_pkey_st* @d2i_AutoPrivateKey_ex(%struct.evp_pkey_st** noundef, i8** noundef, i64 noundef, %struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #1

declare void @BUF_MEM_free(%struct.buf_mem_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_PUBKEY_bio(%struct.bio_st* noundef %bp, %struct.evp_pkey_st* noundef %pkey) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.evp_pkey_st* %pkey to i8*
  %call = tail call i32 @ASN1_i2d_bio(i32 (i8*, i8**)* noundef bitcast (i32 (%struct.evp_pkey_st*, i8**)* @i2d_PUBKEY to i32 (i8*, i8**)*), %struct.bio_st* noundef %bp, i8* noundef %0) #4
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define %struct.evp_pkey_st* @d2i_PUBKEY_bio(%struct.bio_st* noundef %bp, %struct.evp_pkey_st** noundef %a) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.evp_pkey_st** %a to i8**
  %call = tail call i8* @ASN1_d2i_bio(i8* ()* noundef bitcast (%struct.evp_pkey_st* ()* @EVP_PKEY_new to i8* ()*), i8* (i8**, i8**, i64)* noundef bitcast (%struct.evp_pkey_st* (%struct.evp_pkey_st**, i8**, i64)* @d2i_PUBKEY to i8* (i8**, i8**, i64)*), %struct.bio_st* noundef %bp, i8** noundef %0) #4
  %1 = bitcast i8* %call to %struct.evp_pkey_st*
  ret %struct.evp_pkey_st* %1
}

declare %struct.bio_st* @OSSL_HTTP_get(i8* noundef, i8* noundef, i8* noundef, %struct.bio_st* noundef, %struct.bio_st* noundef, %struct.bio_st* (%struct.bio_st*, i8*, i32, i32)* noundef, i8* noundef, i32 noundef, %struct.stack_st_CONF_VALUE* noundef, i8* noundef, i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-builtins" }
attributes #5 = { nobuiltin "no-builtins" }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !7, i64 360}
!5 = !{!"x509_st", !6, i64 0, !13, i64 136, !10, i64 152, !16, i64 176, !8, i64 192, !17, i64 200, !12, i64 216, !12, i64 224, !11, i64 232, !11, i64 236, !11, i64 240, !11, i64 244, !7, i64 248, !7, i64 256, !7, i64 264, !7, i64 272, !7, i64 280, !7, i64 288, !7, i64 296, !7, i64 304, !8, i64 312, !7, i64 336, !7, i64 344, !11, i64 352, !7, i64 360, !7, i64 368, !7, i64 376}
!6 = !{!"x509_cinf_st", !7, i64 0, !10, i64 8, !13, i64 32, !7, i64 48, !14, i64 56, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !15, i64 112}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"asn1_string_st", !11, i64 0, !11, i64 4, !7, i64 8, !12, i64 16}
!11 = !{!"int", !8, i64 0}
!12 = !{!"long", !8, i64 0}
!13 = !{!"X509_algor_st", !7, i64 0, !7, i64 8}
!14 = !{!"X509_val_st", !7, i64 0, !7, i64 8}
!15 = !{!"ASN1_ENCODING_st", !7, i64 0, !12, i64 8, !11, i64 16}
!16 = !{!"x509_sig_info_st", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12}
!17 = !{!"crypto_ex_data_st", !7, i64 0, !7, i64 8}
!18 = !{!5, !7, i64 368}
!19 = !{!5, !7, i64 376}
!20 = !{!21, !7, i64 72}
!21 = !{!"X509_req_st", !22, i64 0, !13, i64 56, !7, i64 72, !8, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112}
!22 = !{!"X509_req_info_st", !15, i64 0, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48}
!23 = !{!21, !7, i64 96}
!24 = !{!25, !7, i64 24}
!25 = !{!"Netscape_spki_st", !7, i64 0, !13, i64 8, !7, i64 24}
!26 = !{!25, !7, i64 0}
!27 = !{!5, !11, i64 128}
!28 = !{!21, !7, i64 104}
!29 = !{!21, !7, i64 112}
!30 = !{!31, !11, i64 80}
!31 = !{!"X509_crl_st", !32, i64 0, !13, i64 88, !10, i64 104, !8, i64 128, !11, i64 132, !7, i64 136, !7, i64 144, !11, i64 152, !11, i64 156, !7, i64 160, !7, i64 168, !7, i64 176, !8, i64 184, !7, i64 208, !7, i64 216, !7, i64 224, !7, i64 232, !7, i64 240}
!32 = !{!"X509_crl_info_st", !7, i64 0, !13, i64 8, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !15, i64 64}
!33 = !{!31, !7, i64 232}
!34 = !{!31, !7, i64 240}
!35 = !{!7, !7, i64 0}
!36 = !{!37, !7, i64 40}
!37 = !{!"pkcs7_st", !7, i64 0, !12, i64 8, !11, i64 16, !11, i64 20, !7, i64 24, !8, i64 32, !38, i64 40}
!38 = !{!"PKCS7_CTX_st", !7, i64 0, !7, i64 8}
!39 = !{!37, !7, i64 48}
!40 = !{!10, !7, i64 8}
!41 = !{!10, !11, i64 0}
!42 = !{!5, !11, i64 232}
!43 = !{!11, !11, i64 0}
!44 = !{!31, !11, i64 132}
!45 = !{!46, !7, i64 8}
!46 = !{!"buf_mem_st", !12, i64 0, !7, i64 8, !12, i64 16, !12, i64 24}
