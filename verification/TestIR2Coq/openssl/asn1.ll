; ModuleID = 'fuzz/asn1.c'
source_filename = "fuzz/asn1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asn1_pctx_st = type opaque
%struct.ASN1_ITEM_st = type { i8, i64, %struct.ASN1_TEMPLATE_st*, i64, i8*, i64, i8* }
%struct.ASN1_TEMPLATE_st = type { i64, i64, i64, i8*, {}* }
%struct.ossl_init_settings_st = type opaque
%struct.ASN1_VALUE_st = type opaque
%struct.bio_method_st = type opaque
%struct.bio_st = type opaque
%struct.TS_req_st = type opaque
%struct.TS_msg_imprint_st = type opaque
%struct.TS_resp_st = type opaque
%struct.TS_status_info_st = type opaque
%struct.TS_tst_info_st = type opaque
%struct.TS_accuracy_st = type opaque
%struct.ESS_issuer_serial = type opaque
%struct.ESS_cert_id = type opaque
%struct.ESS_signing_cert = type opaque
%struct.ESS_cert_id_v2_st = type opaque
%struct.ESS_signing_cert_v2_st = type opaque
%struct.dh_st = type opaque
%struct.DSA_SIG_st = type opaque
%struct.dsa_st = type opaque
%struct.rsa_st = type opaque
%struct.ec_group_st = type opaque
%struct.ec_key_st = type opaque
%struct.ECDSA_SIG_st = type opaque
%struct.evp_pkey_st = type opaque
%struct.ssl_session_st = type opaque

@pctx = internal unnamed_addr global %struct.asn1_pctx_st* null, align 8
@item_type = internal unnamed_addr constant [144 x %struct.ASN1_ITEM_st* ()*] [%struct.ASN1_ITEM_st* ()* @ACCESS_DESCRIPTION_it, %struct.ASN1_ITEM_st* ()* @ASIdentifierChoice_it, %struct.ASN1_ITEM_st* ()* @ASIdentifiers_it, %struct.ASN1_ITEM_st* ()* @ASIdOrRange_it, %struct.ASN1_ITEM_st* ()* @ASN1_ANY_it, %struct.ASN1_ITEM_st* ()* @ASN1_BIT_STRING_it, %struct.ASN1_ITEM_st* ()* @ASN1_BMPSTRING_it, %struct.ASN1_ITEM_st* ()* @ASN1_BOOLEAN_it, %struct.ASN1_ITEM_st* ()* @ASN1_ENUMERATED_it, %struct.ASN1_ITEM_st* ()* @ASN1_FBOOLEAN_it, %struct.ASN1_ITEM_st* ()* @ASN1_GENERALIZEDTIME_it, %struct.ASN1_ITEM_st* ()* @ASN1_GENERALSTRING_it, %struct.ASN1_ITEM_st* ()* @ASN1_IA5STRING_it, %struct.ASN1_ITEM_st* ()* @ASN1_INTEGER_it, %struct.ASN1_ITEM_st* ()* @ASN1_NULL_it, %struct.ASN1_ITEM_st* ()* @ASN1_OBJECT_it, %struct.ASN1_ITEM_st* ()* @ASN1_OCTET_STRING_it, %struct.ASN1_ITEM_st* ()* @ASN1_OCTET_STRING_NDEF_it, %struct.ASN1_ITEM_st* ()* @ASN1_PRINTABLE_it, %struct.ASN1_ITEM_st* ()* @ASN1_PRINTABLESTRING_it, %struct.ASN1_ITEM_st* ()* @ASN1_SEQUENCE_it, %struct.ASN1_ITEM_st* ()* @ASN1_SEQUENCE_ANY_it, %struct.ASN1_ITEM_st* ()* @ASN1_SET_ANY_it, %struct.ASN1_ITEM_st* ()* @ASN1_T61STRING_it, %struct.ASN1_ITEM_st* ()* @ASN1_TBOOLEAN_it, %struct.ASN1_ITEM_st* ()* @ASN1_TIME_it, %struct.ASN1_ITEM_st* ()* @ASN1_UNIVERSALSTRING_it, %struct.ASN1_ITEM_st* ()* @ASN1_UTCTIME_it, %struct.ASN1_ITEM_st* ()* @ASN1_UTF8STRING_it, %struct.ASN1_ITEM_st* ()* @ASN1_VISIBLESTRING_it, %struct.ASN1_ITEM_st* ()* @ASRange_it, %struct.ASN1_ITEM_st* ()* @AUTHORITY_INFO_ACCESS_it, %struct.ASN1_ITEM_st* ()* @AUTHORITY_KEYID_it, %struct.ASN1_ITEM_st* ()* @BASIC_CONSTRAINTS_it, %struct.ASN1_ITEM_st* ()* @BIGNUM_it, %struct.ASN1_ITEM_st* ()* @CBIGNUM_it, %struct.ASN1_ITEM_st* ()* @CERTIFICATEPOLICIES_it, %struct.ASN1_ITEM_st* ()* @CMS_ContentInfo_it, %struct.ASN1_ITEM_st* ()* @CMS_ReceiptRequest_it, %struct.ASN1_ITEM_st* ()* @CRL_DIST_POINTS_it, %struct.ASN1_ITEM_st* ()* @DHparams_it, %struct.ASN1_ITEM_st* ()* @DIRECTORYSTRING_it, %struct.ASN1_ITEM_st* ()* @DISPLAYTEXT_it, %struct.ASN1_ITEM_st* ()* @DIST_POINT_it, %struct.ASN1_ITEM_st* ()* @DIST_POINT_NAME_it, %struct.ASN1_ITEM_st* ()* @ECPARAMETERS_it, %struct.ASN1_ITEM_st* ()* @ECPKPARAMETERS_it, %struct.ASN1_ITEM_st* ()* @EDIPARTYNAME_it, %struct.ASN1_ITEM_st* ()* @EXTENDED_KEY_USAGE_it, %struct.ASN1_ITEM_st* ()* @GENERAL_NAME_it, %struct.ASN1_ITEM_st* ()* @GENERAL_NAMES_it, %struct.ASN1_ITEM_st* ()* @GENERAL_SUBTREE_it, %struct.ASN1_ITEM_st* ()* @IPAddressChoice_it, %struct.ASN1_ITEM_st* ()* @IPAddressFamily_it, %struct.ASN1_ITEM_st* ()* @IPAddressOrRange_it, %struct.ASN1_ITEM_st* ()* @IPAddressRange_it, %struct.ASN1_ITEM_st* ()* @ISSUING_DIST_POINT_it, %struct.ASN1_ITEM_st* ()* @LONG_it, %struct.ASN1_ITEM_st* ()* @NAME_CONSTRAINTS_it, %struct.ASN1_ITEM_st* ()* @NETSCAPE_CERT_SEQUENCE_it, %struct.ASN1_ITEM_st* ()* @NETSCAPE_SPKAC_it, %struct.ASN1_ITEM_st* ()* @NETSCAPE_SPKI_it, %struct.ASN1_ITEM_st* ()* @NOTICEREF_it, %struct.ASN1_ITEM_st* ()* @OCSP_BASICRESP_it, %struct.ASN1_ITEM_st* ()* @OCSP_CERTID_it, %struct.ASN1_ITEM_st* ()* @OCSP_CERTSTATUS_it, %struct.ASN1_ITEM_st* ()* @OCSP_CRLID_it, %struct.ASN1_ITEM_st* ()* @OCSP_ONEREQ_it, %struct.ASN1_ITEM_st* ()* @OCSP_REQINFO_it, %struct.ASN1_ITEM_st* ()* @OCSP_REQUEST_it, %struct.ASN1_ITEM_st* ()* @OCSP_RESPBYTES_it, %struct.ASN1_ITEM_st* ()* @OCSP_RESPDATA_it, %struct.ASN1_ITEM_st* ()* @OCSP_RESPID_it, %struct.ASN1_ITEM_st* ()* @OCSP_RESPONSE_it, %struct.ASN1_ITEM_st* ()* @OCSP_REVOKEDINFO_it, %struct.ASN1_ITEM_st* ()* @OCSP_SERVICELOC_it, %struct.ASN1_ITEM_st* ()* @OCSP_SIGNATURE_it, %struct.ASN1_ITEM_st* ()* @OCSP_SINGLERESP_it, %struct.ASN1_ITEM_st* ()* @OTHERNAME_it, %struct.ASN1_ITEM_st* ()* @PBE2PARAM_it, %struct.ASN1_ITEM_st* ()* @PBEPARAM_it, %struct.ASN1_ITEM_st* ()* @PBKDF2PARAM_it, %struct.ASN1_ITEM_st* ()* @PKCS12_it, %struct.ASN1_ITEM_st* ()* @PKCS12_AUTHSAFES_it, %struct.ASN1_ITEM_st* ()* @PKCS12_BAGS_it, %struct.ASN1_ITEM_st* ()* @PKCS12_MAC_DATA_it, %struct.ASN1_ITEM_st* ()* @PKCS12_SAFEBAG_it, %struct.ASN1_ITEM_st* ()* @PKCS12_SAFEBAGS_it, %struct.ASN1_ITEM_st* ()* @PKCS7_it, %struct.ASN1_ITEM_st* ()* @PKCS7_ATTR_SIGN_it, %struct.ASN1_ITEM_st* ()* @PKCS7_ATTR_VERIFY_it, %struct.ASN1_ITEM_st* ()* @PKCS7_DIGEST_it, %struct.ASN1_ITEM_st* ()* @PKCS7_ENC_CONTENT_it, %struct.ASN1_ITEM_st* ()* @PKCS7_ENCRYPT_it, %struct.ASN1_ITEM_st* ()* @PKCS7_ENVELOPE_it, %struct.ASN1_ITEM_st* ()* @PKCS7_ISSUER_AND_SERIAL_it, %struct.ASN1_ITEM_st* ()* @PKCS7_RECIP_INFO_it, %struct.ASN1_ITEM_st* ()* @PKCS7_SIGNED_it, %struct.ASN1_ITEM_st* ()* @PKCS7_SIGN_ENVELOPE_it, %struct.ASN1_ITEM_st* ()* @PKCS7_SIGNER_INFO_it, %struct.ASN1_ITEM_st* ()* @PKCS8_PRIV_KEY_INFO_it, %struct.ASN1_ITEM_st* ()* @PKEY_USAGE_PERIOD_it, %struct.ASN1_ITEM_st* ()* @POLICY_CONSTRAINTS_it, %struct.ASN1_ITEM_st* ()* @POLICYINFO_it, %struct.ASN1_ITEM_st* ()* @POLICY_MAPPING_it, %struct.ASN1_ITEM_st* ()* @POLICY_MAPPINGS_it, %struct.ASN1_ITEM_st* ()* @POLICYQUALINFO_it, %struct.ASN1_ITEM_st* ()* @PROXY_CERT_INFO_EXTENSION_it, %struct.ASN1_ITEM_st* ()* @PROXY_POLICY_it, %struct.ASN1_ITEM_st* ()* @RSA_OAEP_PARAMS_it, %struct.ASN1_ITEM_st* ()* @RSA_PSS_PARAMS_it, %struct.ASN1_ITEM_st* ()* @RSAPrivateKey_it, %struct.ASN1_ITEM_st* ()* @RSAPublicKey_it, %struct.ASN1_ITEM_st* ()* @SXNET_it, %struct.ASN1_ITEM_st* ()* @SXNETID_it, %struct.ASN1_ITEM_st* ()* @USERNOTICE_it, %struct.ASN1_ITEM_st* ()* @X509_it, %struct.ASN1_ITEM_st* ()* @X509_ALGOR_it, %struct.ASN1_ITEM_st* ()* @X509_ALGORS_it, %struct.ASN1_ITEM_st* ()* @X509_ATTRIBUTE_it, %struct.ASN1_ITEM_st* ()* @X509_CERT_AUX_it, %struct.ASN1_ITEM_st* ()* @X509_CINF_it, %struct.ASN1_ITEM_st* ()* @X509_CRL_it, %struct.ASN1_ITEM_st* ()* @X509_CRL_INFO_it, %struct.ASN1_ITEM_st* ()* @X509_EXTENSION_it, %struct.ASN1_ITEM_st* ()* @X509_EXTENSIONS_it, %struct.ASN1_ITEM_st* ()* @X509_NAME_it, %struct.ASN1_ITEM_st* ()* @X509_NAME_ENTRY_it, %struct.ASN1_ITEM_st* ()* @X509_PUBKEY_it, %struct.ASN1_ITEM_st* ()* @X509_REQ_it, %struct.ASN1_ITEM_st* ()* @X509_REQ_INFO_it, %struct.ASN1_ITEM_st* ()* @X509_REVOKED_it, %struct.ASN1_ITEM_st* ()* @X509_SIG_it, %struct.ASN1_ITEM_st* ()* @X509_VAL_it, %struct.ASN1_ITEM_st* ()* @ZLONG_it, %struct.ASN1_ITEM_st* ()* @INT32_it, %struct.ASN1_ITEM_st* ()* @ZINT32_it, %struct.ASN1_ITEM_st* ()* @UINT32_it, %struct.ASN1_ITEM_st* ()* @ZUINT32_it, %struct.ASN1_ITEM_st* ()* @INT64_it, %struct.ASN1_ITEM_st* ()* @ZINT64_it, %struct.ASN1_ITEM_st* ()* @UINT64_it, %struct.ASN1_ITEM_st* ()* @ZUINT64_it, %struct.ASN1_ITEM_st* ()* null], align 16
@.str = private unnamed_addr constant [12 x i8] c"fuzz/asn1.c\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @FuzzerInitialize(i32* nocapture noundef readnone %argc, i8*** nocapture noundef readnone %argv) local_unnamed_addr #0 {
entry:
  tail call void @FuzzerSetRand() #3
  %call = tail call %struct.asn1_pctx_st* @ASN1_PCTX_new() #3
  store %struct.asn1_pctx_st* %call, %struct.asn1_pctx_st** @pctx, align 8, !tbaa !3
  tail call void @ASN1_PCTX_set_flags(%struct.asn1_pctx_st* noundef %call, i64 noundef 143) #3
  %0 = load %struct.asn1_pctx_st*, %struct.asn1_pctx_st** @pctx, align 8, !tbaa !3
  tail call void @ASN1_PCTX_set_str_flags(%struct.asn1_pctx_st* noundef %0, i64 noundef 208) #3
  %call1 = tail call i32 @OPENSSL_init_crypto(i64 noundef 2, %struct.ossl_init_settings_st* noundef null) #3
  %call2 = tail call i32 @OPENSSL_init_ssl(i64 noundef 2097152, %struct.ossl_init_settings_st* noundef null) #3
  tail call void @ERR_clear_error() #3
  %call3 = tail call i32 @CRYPTO_free_ex_index(i32 noundef 0, i32 noundef -1) #3
  ret i32 1
}

declare dso_local void @FuzzerSetRand() local_unnamed_addr #1

declare dso_local %struct.asn1_pctx_st* @ASN1_PCTX_new() local_unnamed_addr #1

declare dso_local void @ASN1_PCTX_set_flags(%struct.asn1_pctx_st* noundef, i64 noundef) local_unnamed_addr #1

declare dso_local void @ASN1_PCTX_set_str_flags(%struct.asn1_pctx_st* noundef, i64 noundef) local_unnamed_addr #1

declare dso_local i32 @OPENSSL_init_crypto(i64 noundef, %struct.ossl_init_settings_st* noundef) local_unnamed_addr #1

declare dso_local i32 @OPENSSL_init_ssl(i64 noundef, %struct.ossl_init_settings_st* noundef) local_unnamed_addr #1

declare dso_local void @ERR_clear_error() local_unnamed_addr #1

declare dso_local i32 @CRYPTO_free_ex_index(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @FuzzerTestOneInput(i8* noundef %buf, i64 noundef %len) local_unnamed_addr #0 {
entry:
  %b = alloca i8*, align 8
  %der = alloca i8*, align 8
  %p = alloca i8*, align 8
  %der10 = alloca i8*, align 8
  %p24 = alloca i8*, align 8
  %der25 = alloca i8*, align 8
  %p41 = alloca i8*, align 8
  %der42 = alloca i8*, align 8
  %p58 = alloca i8*, align 8
  %der59 = alloca i8*, align 8
  %p75 = alloca i8*, align 8
  %der76 = alloca i8*, align 8
  %p92 = alloca i8*, align 8
  %der93 = alloca i8*, align 8
  %p104 = alloca i8*, align 8
  %der105 = alloca i8*, align 8
  %p116 = alloca i8*, align 8
  %der117 = alloca i8*, align 8
  %p128 = alloca i8*, align 8
  %der129 = alloca i8*, align 8
  %p140 = alloca i8*, align 8
  %der141 = alloca i8*, align 8
  %p152 = alloca i8*, align 8
  %der153 = alloca i8*, align 8
  %p164 = alloca i8*, align 8
  %der165 = alloca i8*, align 8
  %p176 = alloca i8*, align 8
  %der177 = alloca i8*, align 8
  %p188 = alloca i8*, align 8
  %der189 = alloca i8*, align 8
  %p200 = alloca i8*, align 8
  %der201 = alloca i8*, align 8
  %p212 = alloca i8*, align 8
  %der213 = alloca i8*, align 8
  %p224 = alloca i8*, align 8
  %der225 = alloca i8*, align 8
  %p236 = alloca i8*, align 8
  %der237 = alloca i8*, align 8
  %p248 = alloca i8*, align 8
  %der249 = alloca i8*, align 8
  %p261 = alloca i8*, align 8
  %der262 = alloca i8*, align 8
  %p274 = alloca i8*, align 8
  %der275 = alloca i8*, align 8
  %p291 = alloca i8*, align 8
  %der292 = alloca i8*, align 8
  %p303 = alloca i8*, align 8
  %der304 = alloca i8*, align 8
  %p316 = alloca i8*, align 8
  %der317 = alloca i8*, align 8
  %0 = bitcast i8** %b to i8*
  %1 = bitcast i8** %der to i8*
  br label %for.body

for.body:                                         ; preds = %entry, %if.end
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %if.end ]
  %arrayidx = getelementptr inbounds [144 x %struct.ASN1_ITEM_st* ()*], [144 x %struct.ASN1_ITEM_st* ()*]* @item_type, i64 0, i64 %indvars.iv
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #4
  store i8* %buf, i8** %b, align 8, !tbaa !3
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #4
  store i8* null, i8** %der, align 8, !tbaa !3
  %2 = load %struct.ASN1_ITEM_st* ()*, %struct.ASN1_ITEM_st* ()** %arrayidx, align 8, !tbaa !3
  %call = call %struct.ASN1_ITEM_st* %2() #3
  %call3 = call %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef null, i8** noundef nonnull %b, i64 noundef %len, %struct.ASN1_ITEM_st* noundef %call) #3
  %cmp4.not = icmp eq %struct.ASN1_VALUE_st* %call3, null
  br i1 %cmp4.not, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  %call5 = call %struct.bio_method_st* @BIO_s_null() #3
  %call6 = call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call5) #3
  %3 = load %struct.asn1_pctx_st*, %struct.asn1_pctx_st** @pctx, align 8, !tbaa !3
  %call7 = call i32 @ASN1_item_print(%struct.bio_st* noundef %call6, %struct.ASN1_VALUE_st* noundef nonnull %call3, i32 noundef 4, %struct.ASN1_ITEM_st* noundef %call, %struct.asn1_pctx_st* noundef %3) #3
  %call8 = call i32 @BIO_free(%struct.bio_st* noundef %call6) #3
  %call9 = call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef nonnull %call3, i8** noundef nonnull %der, %struct.ASN1_ITEM_st* noundef %call) #3
  %4 = load i8*, i8** %der, align 8, !tbaa !3
  call void @CRYPTO_free(i8* noundef %4, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 noundef 314) #3
  call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef nonnull %call3, %struct.ASN1_ITEM_st* noundef %call) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %cmp.not = icmp eq i64 %indvars.iv.next, 143
  br i1 %cmp.not, label %for.end, label %for.body, !llvm.loop !7

for.end:                                          ; preds = %if.end
  %5 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #4
  store i8* %buf, i8** %p, align 8, !tbaa !3
  %6 = bitcast i8** %der10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #4
  store i8* null, i8** %der10, align 8, !tbaa !3
  %call11 = call %struct.TS_req_st* @d2i_TS_REQ(%struct.TS_req_st** noundef null, i8** noundef nonnull %p, i64 noundef %len) #3
  %cmp12.not = icmp eq %struct.TS_req_st* %call11, null
  br i1 %cmp12.not, label %if.end23, label %if.then13

if.then13:                                        ; preds = %for.end
  %call15 = call %struct.bio_method_st* @BIO_s_null() #3
  %call16 = call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call15) #3
  %call17 = call i32 @TS_REQ_print_bio(%struct.bio_st* noundef %call16, %struct.TS_req_st* noundef nonnull %call11) #3
  %call18 = call i32 @BIO_free(%struct.bio_st* noundef %call16) #3
  %call19 = call i32 @i2d_TS_REQ(%struct.TS_req_st* noundef nonnull %call11, i8** noundef nonnull %der10) #3
  %7 = load i8*, i8** %der10, align 8, !tbaa !3
  call void @CRYPTO_free(i8* noundef %7, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 noundef 320) #3
  call void @TS_REQ_free(%struct.TS_req_st* noundef nonnull %call11) #3
  br label %if.end23

if.end23:                                         ; preds = %if.then13, %for.end
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #4
  %8 = bitcast i8** %p24 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #4
  store i8* %buf, i8** %p24, align 8, !tbaa !3
  %9 = bitcast i8** %der25 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %9) #4
  store i8* null, i8** %der25, align 8, !tbaa !3
  %call27 = call %struct.TS_msg_imprint_st* @d2i_TS_MSG_IMPRINT(%struct.TS_msg_imprint_st** noundef null, i8** noundef nonnull %p24, i64 noundef %len) #3
  %cmp28.not = icmp eq %struct.TS_msg_imprint_st* %call27, null
  br i1 %cmp28.not, label %if.end40, label %if.then29

if.then29:                                        ; preds = %if.end23
  %call32 = call %struct.bio_method_st* @BIO_s_null() #3
  %call33 = call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call32) #3
  %call34 = call i32 @TS_MSG_IMPRINT_print_bio(%struct.bio_st* noundef %call33, %struct.TS_msg_imprint_st* noundef nonnull %call27) #3
  %call35 = call i32 @BIO_free(%struct.bio_st* noundef %call33) #3
  %call36 = call i32 @i2d_TS_MSG_IMPRINT(%struct.TS_msg_imprint_st* noundef nonnull %call27, i8** noundef nonnull %der25) #3
  %10 = load i8*, i8** %der25, align 8, !tbaa !3
  call void @CRYPTO_free(i8* noundef %10, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 noundef 321) #3
  call void @TS_MSG_IMPRINT_free(%struct.TS_msg_imprint_st* noundef nonnull %call27) #3
  br label %if.end40

if.end40:                                         ; preds = %if.then29, %if.end23
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %9) #4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #4
  %11 = bitcast i8** %p41 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %11) #4
  store i8* %buf, i8** %p41, align 8, !tbaa !3
  %12 = bitcast i8** %der42 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %12) #4
  store i8* null, i8** %der42, align 8, !tbaa !3
  %call44 = call %struct.TS_resp_st* @d2i_TS_RESP(%struct.TS_resp_st** noundef null, i8** noundef nonnull %p41, i64 noundef %len) #3
  %cmp45.not = icmp eq %struct.TS_resp_st* %call44, null
  br i1 %cmp45.not, label %if.end57, label %if.then46

if.then46:                                        ; preds = %if.end40
  %call49 = call %struct.bio_method_st* @BIO_s_null() #3
  %call50 = call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call49) #3
  %call51 = call i32 @TS_RESP_print_bio(%struct.bio_st* noundef %call50, %struct.TS_resp_st* noundef nonnull %call44) #3
  %call52 = call i32 @BIO_free(%struct.bio_st* noundef %call50) #3
  %call53 = call i32 @i2d_TS_RESP(%struct.TS_resp_st* noundef nonnull %call44, i8** noundef nonnull %der42) #3
  %13 = load i8*, i8** %der42, align 8, !tbaa !3
  call void @CRYPTO_free(i8* noundef %13, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 noundef 322) #3
  call void @TS_RESP_free(%struct.TS_resp_st* noundef nonnull %call44) #3
  br label %if.end57

if.end57:                                         ; preds = %if.then46, %if.end40
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %12) #4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %11) #4
  %14 = bitcast i8** %p58 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %14) #4
  store i8* %buf, i8** %p58, align 8, !tbaa !3
  %15 = bitcast i8** %der59 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %15) #4
  store i8* null, i8** %der59, align 8, !tbaa !3
  %call61 = call %struct.TS_status_info_st* @d2i_TS_STATUS_INFO(%struct.TS_status_info_st** noundef null, i8** noundef nonnull %p58, i64 noundef %len) #3
  %cmp62.not = icmp eq %struct.TS_status_info_st* %call61, null
  br i1 %cmp62.not, label %if.end74, label %if.then63

if.then63:                                        ; preds = %if.end57
  %call66 = call %struct.bio_method_st* @BIO_s_null() #3
  %call67 = call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call66) #3
  %call68 = call i32 @TS_STATUS_INFO_print_bio(%struct.bio_st* noundef %call67, %struct.TS_status_info_st* noundef nonnull %call61) #3
  %call69 = call i32 @BIO_free(%struct.bio_st* noundef %call67) #3
  %call70 = call i32 @i2d_TS_STATUS_INFO(%struct.TS_status_info_st* noundef nonnull %call61, i8** noundef nonnull %der59) #3
  %16 = load i8*, i8** %der59, align 8, !tbaa !3
  call void @CRYPTO_free(i8* noundef %16, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 noundef 323) #3
  call void @TS_STATUS_INFO_free(%struct.TS_status_info_st* noundef nonnull %call61) #3
  br label %if.end74

if.end74:                                         ; preds = %if.then63, %if.end57
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %15) #4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %14) #4
  %17 = bitcast i8** %p75 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %17) #4
  store i8* %buf, i8** %p75, align 8, !tbaa !3
  %18 = bitcast i8** %der76 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %18) #4
  store i8* null, i8** %der76, align 8, !tbaa !3
  %call78 = call %struct.TS_tst_info_st* @d2i_TS_TST_INFO(%struct.TS_tst_info_st** noundef null, i8** noundef nonnull %p75, i64 noundef %len) #3
  %cmp79.not = icmp eq %struct.TS_tst_info_st* %call78, null
  br i1 %cmp79.not, label %if.end91, label %if.then80

if.then80:                                        ; preds = %if.end74
  %call83 = call %struct.bio_method_st* @BIO_s_null() #3
  %call84 = call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call83) #3
  %call85 = call i32 @TS_TST_INFO_print_bio(%struct.bio_st* noundef %call84, %struct.TS_tst_info_st* noundef nonnull %call78) #3
  %call86 = call i32 @BIO_free(%struct.bio_st* noundef %call84) #3
  %call87 = call i32 @i2d_TS_TST_INFO(%struct.TS_tst_info_st* noundef nonnull %call78, i8** noundef nonnull %der76) #3
  %19 = load i8*, i8** %der76, align 8, !tbaa !3
  call void @CRYPTO_free(i8* noundef %19, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 noundef 324) #3
  call void @TS_TST_INFO_free(%struct.TS_tst_info_st* noundef nonnull %call78) #3
  br label %if.end91

if.end91:                                         ; preds = %if.then80, %if.end74
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %17) #4
  %20 = bitcast i8** %p92 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %20) #4
  store i8* %buf, i8** %p92, align 8, !tbaa !3
  %21 = bitcast i8** %der93 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %21) #4
  store i8* null, i8** %der93, align 8, !tbaa !3
  %call95 = call %struct.TS_accuracy_st* @d2i_TS_ACCURACY(%struct.TS_accuracy_st** noundef null, i8** noundef nonnull %p92, i64 noundef %len) #3
  %cmp96.not = icmp eq %struct.TS_accuracy_st* %call95, null
  br i1 %cmp96.not, label %if.end103, label %if.then97

if.then97:                                        ; preds = %if.end91
  %call99 = call %struct.bio_method_st* @BIO_s_null() #3
  %call100 = call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call99) #3
  %call101 = call i32 @BIO_free(%struct.bio_st* noundef %call100) #3
  %call102 = call i32 @i2d_TS_ACCURACY(%struct.TS_accuracy_st* noundef nonnull %call95, i8** noundef nonnull %der93) #3
  %22 = load i8*, i8** %der93, align 8, !tbaa !3
  call void @CRYPTO_free(i8* noundef %22, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 noundef 325) #3
  call void @TS_ACCURACY_free(%struct.TS_accuracy_st* noundef nonnull %call95) #3
  br label %if.end103

if.end103:                                        ; preds = %if.then97, %if.end91
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %21) #4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %20) #4
  %23 = bitcast i8** %p104 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #4
  store i8* %buf, i8** %p104, align 8, !tbaa !3
  %24 = bitcast i8** %der105 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %24) #4
  store i8* null, i8** %der105, align 8, !tbaa !3
  %call107 = call %struct.ESS_issuer_serial* @d2i_ESS_ISSUER_SERIAL(%struct.ESS_issuer_serial** noundef null, i8** noundef nonnull %p104, i64 noundef %len) #3
  %cmp108.not = icmp eq %struct.ESS_issuer_serial* %call107, null
  br i1 %cmp108.not, label %if.end115, label %if.then109

if.then109:                                       ; preds = %if.end103
  %call111 = call %struct.bio_method_st* @BIO_s_null() #3
  %call112 = call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call111) #3
  %call113 = call i32 @BIO_free(%struct.bio_st* noundef %call112) #3
  %call114 = call i32 @i2d_ESS_ISSUER_SERIAL(%struct.ESS_issuer_serial* noundef nonnull %call107, i8** noundef nonnull %der105) #3
  %25 = load i8*, i8** %der105, align 8, !tbaa !3
  call void @CRYPTO_free(i8* noundef %25, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 noundef 327) #3
  call void @ESS_ISSUER_SERIAL_free(%struct.ESS_issuer_serial* noundef nonnull %call107) #3
  br label %if.end115

if.end115:                                        ; preds = %if.then109, %if.end103
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %24) #4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #4
  %26 = bitcast i8** %p116 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %26) #4
  store i8* %buf, i8** %p116, align 8, !tbaa !3
  %27 = bitcast i8** %der117 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %27) #4
  store i8* null, i8** %der117, align 8, !tbaa !3
  %call119 = call %struct.ESS_cert_id* @d2i_ESS_CERT_ID(%struct.ESS_cert_id** noundef null, i8** noundef nonnull %p116, i64 noundef %len) #3
  %cmp120.not = icmp eq %struct.ESS_cert_id* %call119, null
  br i1 %cmp120.not, label %if.end127, label %if.then121

if.then121:                                       ; preds = %if.end115
  %call123 = call %struct.bio_method_st* @BIO_s_null() #3
  %call124 = call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call123) #3
  %call125 = call i32 @BIO_free(%struct.bio_st* noundef %call124) #3
  %call126 = call i32 @i2d_ESS_CERT_ID(%struct.ESS_cert_id* noundef nonnull %call119, i8** noundef nonnull %der117) #3
  %28 = load i8*, i8** %der117, align 8, !tbaa !3
  call void @CRYPTO_free(i8* noundef %28, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 noundef 328) #3
  call void @ESS_CERT_ID_free(%struct.ESS_cert_id* noundef nonnull %call119) #3
  br label %if.end127

if.end127:                                        ; preds = %if.then121, %if.end115
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %27) #4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %26) #4
  %29 = bitcast i8** %p128 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %29) #4
  store i8* %buf, i8** %p128, align 8, !tbaa !3
  %30 = bitcast i8** %der129 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %30) #4
  store i8* null, i8** %der129, align 8, !tbaa !3
  %call131 = call %struct.ESS_signing_cert* @d2i_ESS_SIGNING_CERT(%struct.ESS_signing_cert** noundef null, i8** noundef nonnull %p128, i64 noundef %len) #3
  %cmp132.not = icmp eq %struct.ESS_signing_cert* %call131, null
  br i1 %cmp132.not, label %if.end139, label %if.then133

if.then133:                                       ; preds = %if.end127
  %call135 = call %struct.bio_method_st* @BIO_s_null() #3
  %call136 = call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call135) #3
  %call137 = call i32 @BIO_free(%struct.bio_st* noundef %call136) #3
  %call138 = call i32 @i2d_ESS_SIGNING_CERT(%struct.ESS_signing_cert* noundef nonnull %call131, i8** noundef nonnull %der129) #3
  %31 = load i8*, i8** %der129, align 8, !tbaa !3
  call void @CRYPTO_free(i8* noundef %31, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 noundef 329) #3
  call void @ESS_SIGNING_CERT_free(%struct.ESS_signing_cert* noundef nonnull %call131) #3
  br label %if.end139

if.end139:                                        ; preds = %if.then133, %if.end127
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %30) #4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %29) #4
  %32 = bitcast i8** %p140 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %32) #4
  store i8* %buf, i8** %p140, align 8, !tbaa !3
  %33 = bitcast i8** %der141 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %33) #4
  store i8* null, i8** %der141, align 8, !tbaa !3
  %call143 = call %struct.ESS_cert_id_v2_st* @d2i_ESS_CERT_ID_V2(%struct.ESS_cert_id_v2_st** noundef null, i8** noundef nonnull %p140, i64 noundef %len) #3
  %cmp144.not = icmp eq %struct.ESS_cert_id_v2_st* %call143, null
  br i1 %cmp144.not, label %if.end151, label %if.then145

if.then145:                                       ; preds = %if.end139
  %call147 = call %struct.bio_method_st* @BIO_s_null() #3
  %call148 = call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call147) #3
  %call149 = call i32 @BIO_free(%struct.bio_st* noundef %call148) #3
  %call150 = call i32 @i2d_ESS_CERT_ID_V2(%struct.ESS_cert_id_v2_st* noundef nonnull %call143, i8** noundef nonnull %der141) #3
  %34 = load i8*, i8** %der141, align 8, !tbaa !3
  call void @CRYPTO_free(i8* noundef %34, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 noundef 330) #3
  call void @ESS_CERT_ID_V2_free(%struct.ESS_cert_id_v2_st* noundef nonnull %call143) #3
  br label %if.end151

if.end151:                                        ; preds = %if.then145, %if.end139
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %33) #4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #4
  %35 = bitcast i8** %p152 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %35) #4
  store i8* %buf, i8** %p152, align 8, !tbaa !3
  %36 = bitcast i8** %der153 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %36) #4
  store i8* null, i8** %der153, align 8, !tbaa !3
  %call155 = call %struct.ESS_signing_cert_v2_st* @d2i_ESS_SIGNING_CERT_V2(%struct.ESS_signing_cert_v2_st** noundef null, i8** noundef nonnull %p152, i64 noundef %len) #3
  %cmp156.not = icmp eq %struct.ESS_signing_cert_v2_st* %call155, null
  br i1 %cmp156.not, label %if.end163, label %if.then157

if.then157:                                       ; preds = %if.end151
  %call159 = call %struct.bio_method_st* @BIO_s_null() #3
  %call160 = call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call159) #3
  %call161 = call i32 @BIO_free(%struct.bio_st* noundef %call160) #3
  %call162 = call i32 @i2d_ESS_SIGNING_CERT_V2(%struct.ESS_signing_cert_v2_st* noundef nonnull %call155, i8** noundef nonnull %der153) #3
  %37 = load i8*, i8** %der153, align 8, !tbaa !3
  call void @CRYPTO_free(i8* noundef %37, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 noundef 331) #3
  call void @ESS_SIGNING_CERT_V2_free(%struct.ESS_signing_cert_v2_st* noundef nonnull %call155) #3
  br label %if.end163

if.end163:                                        ; preds = %if.then157, %if.end151
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %36) #4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %35) #4
  %38 = bitcast i8** %p164 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %38) #4
  store i8* %buf, i8** %p164, align 8, !tbaa !3
  %39 = bitcast i8** %der165 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %39) #4
  store i8* null, i8** %der165, align 8, !tbaa !3
  %call167 = call %struct.dh_st* @d2i_DHparams(%struct.dh_st** noundef null, i8** noundef nonnull %p164, i64 noundef %len) #3
  %cmp168.not = icmp eq %struct.dh_st* %call167, null
  br i1 %cmp168.not, label %if.end175, label %if.then169

if.then169:                                       ; preds = %if.end163
  %call171 = call %struct.bio_method_st* @BIO_s_null() #3
  %call172 = call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call171) #3
  %call173 = call i32 @BIO_free(%struct.bio_st* noundef %call172) #3
  %call174 = call i32 @i2d_DHparams(%struct.dh_st* noundef nonnull %call167, i8** noundef nonnull %der165) #3
  %40 = load i8*, i8** %der165, align 8, !tbaa !3
  call void @CRYPTO_free(i8* noundef %40, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 noundef 333) #3
  call void @DH_free(%struct.dh_st* noundef nonnull %call167) #3
  br label %if.end175

if.end175:                                        ; preds = %if.then169, %if.end163
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %39) #4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %38) #4
  %41 = bitcast i8** %p176 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %41) #4
  store i8* %buf, i8** %p176, align 8, !tbaa !3
  %42 = bitcast i8** %der177 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %42) #4
  store i8* null, i8** %der177, align 8, !tbaa !3
  %call179 = call %struct.dh_st* @d2i_DHxparams(%struct.dh_st** noundef null, i8** noundef nonnull %p176, i64 noundef %len) #3
  %cmp180.not = icmp eq %struct.dh_st* %call179, null
  br i1 %cmp180.not, label %if.end187, label %if.then181

if.then181:                                       ; preds = %if.end175
  %call183 = call %struct.bio_method_st* @BIO_s_null() #3
  %call184 = call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call183) #3
  %call185 = call i32 @BIO_free(%struct.bio_st* noundef %call184) #3
  %call186 = call i32 @i2d_DHxparams(%struct.dh_st* noundef nonnull %call179, i8** noundef nonnull %der177) #3
  %43 = load i8*, i8** %der177, align 8, !tbaa !3
  call void @CRYPTO_free(i8* noundef %43, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 noundef 334) #3
  call void @DH_free(%struct.dh_st* noundef nonnull %call179) #3
  br label %if.end187

if.end187:                                        ; preds = %if.then181, %if.end175
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %42) #4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %41) #4
  %44 = bitcast i8** %p188 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %44) #4
  store i8* %buf, i8** %p188, align 8, !tbaa !3
  %45 = bitcast i8** %der189 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %45) #4
  store i8* null, i8** %der189, align 8, !tbaa !3
  %call191 = call %struct.DSA_SIG_st* @d2i_DSA_SIG(%struct.DSA_SIG_st** noundef null, i8** noundef nonnull %p188, i64 noundef %len) #3
  %cmp192.not = icmp eq %struct.DSA_SIG_st* %call191, null
  br i1 %cmp192.not, label %if.end199, label %if.then193

if.then193:                                       ; preds = %if.end187
  %call195 = call %struct.bio_method_st* @BIO_s_null() #3
  %call196 = call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call195) #3
  %call197 = call i32 @BIO_free(%struct.bio_st* noundef %call196) #3
  %call198 = call i32 @i2d_DSA_SIG(%struct.DSA_SIG_st* noundef nonnull %call191, i8** noundef nonnull %der189) #3
  %46 = load i8*, i8** %der189, align 8, !tbaa !3
  call void @CRYPTO_free(i8* noundef %46, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 noundef 337) #3
  call void @DSA_SIG_free(%struct.DSA_SIG_st* noundef nonnull %call191) #3
  br label %if.end199

if.end199:                                        ; preds = %if.then193, %if.end187
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %45) #4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %44) #4
  %47 = bitcast i8** %p200 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %47) #4
  store i8* %buf, i8** %p200, align 8, !tbaa !3
  %48 = bitcast i8** %der201 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %48) #4
  store i8* null, i8** %der201, align 8, !tbaa !3
  %call203 = call %struct.dsa_st* @d2i_DSAPrivateKey(%struct.dsa_st** noundef null, i8** noundef nonnull %p200, i64 noundef %len) #3
  %cmp204.not = icmp eq %struct.dsa_st* %call203, null
  br i1 %cmp204.not, label %if.end211, label %if.then205

if.then205:                                       ; preds = %if.end199
  %call207 = call %struct.bio_method_st* @BIO_s_null() #3
  %call208 = call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call207) #3
  %call209 = call i32 @BIO_free(%struct.bio_st* noundef %call208) #3
  %call210 = call i32 @i2d_DSAPrivateKey(%struct.dsa_st* noundef nonnull %call203, i8** noundef nonnull %der201) #3
  %49 = load i8*, i8** %der201, align 8, !tbaa !3
  call void @CRYPTO_free(i8* noundef %49, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 noundef 339) #3
  call void @DSA_free(%struct.dsa_st* noundef nonnull %call203) #3
  br label %if.end211

if.end211:                                        ; preds = %if.then205, %if.end199
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %48) #4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %47) #4
  %50 = bitcast i8** %p212 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %50) #4
  store i8* %buf, i8** %p212, align 8, !tbaa !3
  %51 = bitcast i8** %der213 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %51) #4
  store i8* null, i8** %der213, align 8, !tbaa !3
  %call215 = call %struct.dsa_st* @d2i_DSAPublicKey(%struct.dsa_st** noundef null, i8** noundef nonnull %p212, i64 noundef %len) #3
  %cmp216.not = icmp eq %struct.dsa_st* %call215, null
  br i1 %cmp216.not, label %if.end223, label %if.then217

if.then217:                                       ; preds = %if.end211
  %call219 = call %struct.bio_method_st* @BIO_s_null() #3
  %call220 = call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call219) #3
  %call221 = call i32 @BIO_free(%struct.bio_st* noundef %call220) #3
  %call222 = call i32 @i2d_DSAPublicKey(%struct.dsa_st* noundef nonnull %call215, i8** noundef nonnull %der213) #3
  %52 = load i8*, i8** %der213, align 8, !tbaa !3
  call void @CRYPTO_free(i8* noundef %52, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 noundef 340) #3
  call void @DSA_free(%struct.dsa_st* noundef nonnull %call215) #3
  br label %if.end223

if.end223:                                        ; preds = %if.then217, %if.end211
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %51) #4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %50) #4
  %53 = bitcast i8** %p224 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %53) #4
  store i8* %buf, i8** %p224, align 8, !tbaa !3
  %54 = bitcast i8** %der225 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %54) #4
  store i8* null, i8** %der225, align 8, !tbaa !3
  %call227 = call %struct.dsa_st* @d2i_DSAparams(%struct.dsa_st** noundef null, i8** noundef nonnull %p224, i64 noundef %len) #3
  %cmp228.not = icmp eq %struct.dsa_st* %call227, null
  br i1 %cmp228.not, label %if.end235, label %if.then229

if.then229:                                       ; preds = %if.end223
  %call231 = call %struct.bio_method_st* @BIO_s_null() #3
  %call232 = call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call231) #3
  %call233 = call i32 @BIO_free(%struct.bio_st* noundef %call232) #3
  %call234 = call i32 @i2d_DSAparams(%struct.dsa_st* noundef nonnull %call227, i8** noundef nonnull %der225) #3
  %55 = load i8*, i8** %der225, align 8, !tbaa !3
  call void @CRYPTO_free(i8* noundef %55, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 noundef 341) #3
  call void @DSA_free(%struct.dsa_st* noundef nonnull %call227) #3
  br label %if.end235

if.end235:                                        ; preds = %if.then229, %if.end223
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %54) #4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %53) #4
  %56 = bitcast i8** %p236 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %56) #4
  store i8* %buf, i8** %p236, align 8, !tbaa !3
  %57 = bitcast i8** %der237 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %57) #4
  store i8* null, i8** %der237, align 8, !tbaa !3
  %call239 = call %struct.rsa_st* @d2i_RSAPublicKey(%struct.rsa_st** noundef null, i8** noundef nonnull %p236, i64 noundef %len) #3
  %cmp240.not = icmp eq %struct.rsa_st* %call239, null
  br i1 %cmp240.not, label %if.end247, label %if.then241

if.then241:                                       ; preds = %if.end235
  %call243 = call %struct.bio_method_st* @BIO_s_null() #3
  %call244 = call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call243) #3
  %call245 = call i32 @BIO_free(%struct.bio_st* noundef %call244) #3
  %call246 = call i32 @i2d_RSAPublicKey(%struct.rsa_st* noundef nonnull %call239, i8** noundef nonnull %der237) #3
  %58 = load i8*, i8** %der237, align 8, !tbaa !3
  call void @CRYPTO_free(i8* noundef %58, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 noundef 345) #3
  call void @RSA_free(%struct.rsa_st* noundef nonnull %call239) #3
  br label %if.end247

if.end247:                                        ; preds = %if.then241, %if.end235
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %57) #4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %56) #4
  %59 = bitcast i8** %p248 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %59) #4
  store i8* %buf, i8** %p248, align 8, !tbaa !3
  %60 = bitcast i8** %der249 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %60) #4
  store i8* null, i8** %der249, align 8, !tbaa !3
  %call251 = call %struct.ec_group_st* @d2i_ECPKParameters(%struct.ec_group_st** noundef null, i8** noundef nonnull %p248, i64 noundef %len) #3
  %cmp252.not = icmp eq %struct.ec_group_st* %call251, null
  br i1 %cmp252.not, label %if.end260, label %if.then253

if.then253:                                       ; preds = %if.end247
  %call255 = call %struct.bio_method_st* @BIO_s_null() #3
  %call256 = call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call255) #3
  %call257 = call i32 @ECPKParameters_print(%struct.bio_st* noundef %call256, %struct.ec_group_st* noundef nonnull %call251, i32 noundef 0) #3
  %call258 = call i32 @BIO_free(%struct.bio_st* noundef %call256) #3
  %call259 = call i32 @i2d_ECPKParameters(%struct.ec_group_st* noundef nonnull %call251, i8** noundef nonnull %der249) #3
  %61 = load i8*, i8** %der249, align 8, !tbaa !3
  call void @CRYPTO_free(i8* noundef %61, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 noundef 349) #3
  call void @EC_GROUP_free(%struct.ec_group_st* noundef nonnull %call251) #3
  br label %if.end260

if.end260:                                        ; preds = %if.then253, %if.end247
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %60) #4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %59) #4
  %62 = bitcast i8** %p261 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %62) #4
  store i8* %buf, i8** %p261, align 8, !tbaa !3
  %63 = bitcast i8** %der262 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %63) #4
  store i8* null, i8** %der262, align 8, !tbaa !3
  %call264 = call %struct.ec_key_st* @d2i_ECPrivateKey(%struct.ec_key_st** noundef null, i8** noundef nonnull %p261, i64 noundef %len) #3
  %cmp265.not = icmp eq %struct.ec_key_st* %call264, null
  br i1 %cmp265.not, label %if.end273, label %if.then266

if.then266:                                       ; preds = %if.end260
  %call268 = call %struct.bio_method_st* @BIO_s_null() #3
  %call269 = call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call268) #3
  %call270 = call i32 @EC_KEY_print(%struct.bio_st* noundef %call269, %struct.ec_key_st* noundef nonnull %call264, i32 noundef 0) #3
  %call271 = call i32 @BIO_free(%struct.bio_st* noundef %call269) #3
  %call272 = call i32 @i2d_ECPrivateKey(%struct.ec_key_st* noundef nonnull %call264, i8** noundef nonnull %der262) #3
  %64 = load i8*, i8** %der262, align 8, !tbaa !3
  call void @CRYPTO_free(i8* noundef %64, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 noundef 350) #3
  call void @EC_KEY_free(%struct.ec_key_st* noundef nonnull %call264) #3
  br label %if.end273

if.end273:                                        ; preds = %if.then266, %if.end260
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %63) #4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %62) #4
  %65 = bitcast i8** %p274 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %65) #4
  store i8* %buf, i8** %p274, align 8, !tbaa !3
  %66 = bitcast i8** %der275 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %66) #4
  store i8* null, i8** %der275, align 8, !tbaa !3
  %call277 = call %struct.ec_key_st* @d2i_ECParameters(%struct.ec_key_st** noundef null, i8** noundef nonnull %p274, i64 noundef %len) #3
  %cmp278.not = icmp eq %struct.ec_key_st* %call277, null
  br i1 %cmp278.not, label %if.end290, label %if.then279

if.then279:                                       ; preds = %if.end273
  %call282 = call %struct.bio_method_st* @BIO_s_null() #3
  %call283 = call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call282) #3
  %call284 = call i32 @ECParameters_print(%struct.bio_st* noundef %call283, %struct.ec_key_st* noundef nonnull %call277) #3
  %call285 = call i32 @BIO_free(%struct.bio_st* noundef %call283) #3
  %call286 = call i32 @i2d_ECParameters(%struct.ec_key_st* noundef nonnull %call277, i8** noundef nonnull %der275) #3
  %67 = load i8*, i8** %der275, align 8, !tbaa !3
  call void @CRYPTO_free(i8* noundef %67, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 noundef 351) #3
  call void @EC_KEY_free(%struct.ec_key_st* noundef nonnull %call277) #3
  br label %if.end290

if.end290:                                        ; preds = %if.then279, %if.end273
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %66) #4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %65) #4
  %68 = bitcast i8** %p291 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %68) #4
  store i8* %buf, i8** %p291, align 8, !tbaa !3
  %69 = bitcast i8** %der292 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %69) #4
  store i8* null, i8** %der292, align 8, !tbaa !3
  %call294 = call %struct.ECDSA_SIG_st* @d2i_ECDSA_SIG(%struct.ECDSA_SIG_st** noundef null, i8** noundef nonnull %p291, i64 noundef %len) #3
  %cmp295.not = icmp eq %struct.ECDSA_SIG_st* %call294, null
  br i1 %cmp295.not, label %if.end302, label %if.then296

if.then296:                                       ; preds = %if.end290
  %call298 = call %struct.bio_method_st* @BIO_s_null() #3
  %call299 = call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call298) #3
  %call300 = call i32 @BIO_free(%struct.bio_st* noundef %call299) #3
  %call301 = call i32 @i2d_ECDSA_SIG(%struct.ECDSA_SIG_st* noundef nonnull %call294, i8** noundef nonnull %der292) #3
  %70 = load i8*, i8** %der292, align 8, !tbaa !3
  call void @CRYPTO_free(i8* noundef %70, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 noundef 352) #3
  call void @ECDSA_SIG_free(%struct.ECDSA_SIG_st* noundef nonnull %call294) #3
  br label %if.end302

if.end302:                                        ; preds = %if.then296, %if.end290
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %69) #4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %68) #4
  %71 = bitcast i8** %p303 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %71) #4
  store i8* %buf, i8** %p303, align 8, !tbaa !3
  %72 = bitcast i8** %der304 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %72) #4
  store i8* null, i8** %der304, align 8, !tbaa !3
  %call306 = call %struct.evp_pkey_st* @d2i_AutoPrivateKey(%struct.evp_pkey_st** noundef null, i8** noundef nonnull %p303, i64 noundef %len) #3
  %cmp307.not = icmp eq %struct.evp_pkey_st* %call306, null
  br i1 %cmp307.not, label %if.end315, label %if.then308

if.then308:                                       ; preds = %if.end302
  %call310 = call %struct.bio_method_st* @BIO_s_null() #3
  %call311 = call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call310) #3
  %73 = load %struct.asn1_pctx_st*, %struct.asn1_pctx_st** @pctx, align 8, !tbaa !3
  %call312 = call i32 @EVP_PKEY_print_private(%struct.bio_st* noundef %call311, %struct.evp_pkey_st* noundef nonnull %call306, i32 noundef 0, %struct.asn1_pctx_st* noundef %73) #3
  %call313 = call i32 @BIO_free(%struct.bio_st* noundef %call311) #3
  %call314 = call i32 @i2d_PrivateKey(%struct.evp_pkey_st* noundef nonnull %call306, i8** noundef nonnull %der304) #3
  %74 = load i8*, i8** %der304, align 8, !tbaa !3
  call void @CRYPTO_free(i8* noundef %74, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 noundef 355) #3
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef nonnull %call306) #3
  br label %if.end315

if.end315:                                        ; preds = %if.then308, %if.end302
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %72) #4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %71) #4
  %75 = bitcast i8** %p316 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %75) #4
  store i8* %buf, i8** %p316, align 8, !tbaa !3
  %76 = bitcast i8** %der317 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %76) #4
  store i8* null, i8** %der317, align 8, !tbaa !3
  %call319 = call %struct.ssl_session_st* @d2i_SSL_SESSION(%struct.ssl_session_st** noundef null, i8** noundef nonnull %p316, i64 noundef %len) #3
  %cmp320.not = icmp eq %struct.ssl_session_st* %call319, null
  br i1 %cmp320.not, label %if.end332, label %if.then321

if.then321:                                       ; preds = %if.end315
  %call324 = call %struct.bio_method_st* @BIO_s_null() #3
  %call325 = call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call324) #3
  %call326 = call i32 @SSL_SESSION_print(%struct.bio_st* noundef %call325, %struct.ssl_session_st* noundef nonnull %call319) #3
  %call327 = call i32 @BIO_free(%struct.bio_st* noundef %call325) #3
  %call328 = call i32 @i2d_SSL_SESSION(%struct.ssl_session_st* noundef nonnull %call319, i8** noundef nonnull %der317) #3
  %77 = load i8*, i8** %der317, align 8, !tbaa !3
  call void @CRYPTO_free(i8* noundef %77, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 noundef 356) #3
  call void @SSL_SESSION_free(%struct.ssl_session_st* noundef nonnull %call319) #3
  br label %if.end332

if.end332:                                        ; preds = %if.then321, %if.end315
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %76) #4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %75) #4
  call void @ERR_clear_error() #3
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare dso_local %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef, i8** noundef, i64 noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #1

declare dso_local %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef) local_unnamed_addr #1

declare dso_local %struct.bio_method_st* @BIO_s_null() local_unnamed_addr #1

declare dso_local i32 @ASN1_item_print(%struct.bio_st* noundef, %struct.ASN1_VALUE_st* noundef, i32 noundef, %struct.ASN1_ITEM_st* noundef, %struct.asn1_pctx_st* noundef) local_unnamed_addr #1

declare dso_local i32 @BIO_free(%struct.bio_st* noundef) local_unnamed_addr #1

declare dso_local i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef, i8** noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #1

declare dso_local void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

declare dso_local %struct.TS_req_st* @d2i_TS_REQ(%struct.TS_req_st** noundef, i8** noundef, i64 noundef) local_unnamed_addr #1

declare dso_local i32 @TS_REQ_print_bio(%struct.bio_st* noundef, %struct.TS_req_st* noundef) local_unnamed_addr #1

declare dso_local i32 @i2d_TS_REQ(%struct.TS_req_st* noundef, i8** noundef) local_unnamed_addr #1

declare dso_local void @TS_REQ_free(%struct.TS_req_st* noundef) local_unnamed_addr #1

declare dso_local %struct.TS_msg_imprint_st* @d2i_TS_MSG_IMPRINT(%struct.TS_msg_imprint_st** noundef, i8** noundef, i64 noundef) local_unnamed_addr #1

declare dso_local i32 @TS_MSG_IMPRINT_print_bio(%struct.bio_st* noundef, %struct.TS_msg_imprint_st* noundef) local_unnamed_addr #1

declare dso_local i32 @i2d_TS_MSG_IMPRINT(%struct.TS_msg_imprint_st* noundef, i8** noundef) local_unnamed_addr #1

declare dso_local void @TS_MSG_IMPRINT_free(%struct.TS_msg_imprint_st* noundef) local_unnamed_addr #1

declare dso_local %struct.TS_resp_st* @d2i_TS_RESP(%struct.TS_resp_st** noundef, i8** noundef, i64 noundef) local_unnamed_addr #1

declare dso_local i32 @TS_RESP_print_bio(%struct.bio_st* noundef, %struct.TS_resp_st* noundef) local_unnamed_addr #1

declare dso_local i32 @i2d_TS_RESP(%struct.TS_resp_st* noundef, i8** noundef) local_unnamed_addr #1

declare dso_local void @TS_RESP_free(%struct.TS_resp_st* noundef) local_unnamed_addr #1

declare dso_local %struct.TS_status_info_st* @d2i_TS_STATUS_INFO(%struct.TS_status_info_st** noundef, i8** noundef, i64 noundef) local_unnamed_addr #1

declare dso_local i32 @TS_STATUS_INFO_print_bio(%struct.bio_st* noundef, %struct.TS_status_info_st* noundef) local_unnamed_addr #1

declare dso_local i32 @i2d_TS_STATUS_INFO(%struct.TS_status_info_st* noundef, i8** noundef) local_unnamed_addr #1

declare dso_local void @TS_STATUS_INFO_free(%struct.TS_status_info_st* noundef) local_unnamed_addr #1

declare dso_local %struct.TS_tst_info_st* @d2i_TS_TST_INFO(%struct.TS_tst_info_st** noundef, i8** noundef, i64 noundef) local_unnamed_addr #1

declare dso_local i32 @TS_TST_INFO_print_bio(%struct.bio_st* noundef, %struct.TS_tst_info_st* noundef) local_unnamed_addr #1

declare dso_local i32 @i2d_TS_TST_INFO(%struct.TS_tst_info_st* noundef, i8** noundef) local_unnamed_addr #1

declare dso_local void @TS_TST_INFO_free(%struct.TS_tst_info_st* noundef) local_unnamed_addr #1

declare dso_local %struct.TS_accuracy_st* @d2i_TS_ACCURACY(%struct.TS_accuracy_st** noundef, i8** noundef, i64 noundef) local_unnamed_addr #1

declare dso_local i32 @i2d_TS_ACCURACY(%struct.TS_accuracy_st* noundef, i8** noundef) local_unnamed_addr #1

declare dso_local void @TS_ACCURACY_free(%struct.TS_accuracy_st* noundef) local_unnamed_addr #1

declare dso_local %struct.ESS_issuer_serial* @d2i_ESS_ISSUER_SERIAL(%struct.ESS_issuer_serial** noundef, i8** noundef, i64 noundef) local_unnamed_addr #1

declare dso_local i32 @i2d_ESS_ISSUER_SERIAL(%struct.ESS_issuer_serial* noundef, i8** noundef) local_unnamed_addr #1

declare dso_local void @ESS_ISSUER_SERIAL_free(%struct.ESS_issuer_serial* noundef) local_unnamed_addr #1

declare dso_local %struct.ESS_cert_id* @d2i_ESS_CERT_ID(%struct.ESS_cert_id** noundef, i8** noundef, i64 noundef) local_unnamed_addr #1

declare dso_local i32 @i2d_ESS_CERT_ID(%struct.ESS_cert_id* noundef, i8** noundef) local_unnamed_addr #1

declare dso_local void @ESS_CERT_ID_free(%struct.ESS_cert_id* noundef) local_unnamed_addr #1

declare dso_local %struct.ESS_signing_cert* @d2i_ESS_SIGNING_CERT(%struct.ESS_signing_cert** noundef, i8** noundef, i64 noundef) local_unnamed_addr #1

declare dso_local i32 @i2d_ESS_SIGNING_CERT(%struct.ESS_signing_cert* noundef, i8** noundef) local_unnamed_addr #1

declare dso_local void @ESS_SIGNING_CERT_free(%struct.ESS_signing_cert* noundef) local_unnamed_addr #1

declare dso_local %struct.ESS_cert_id_v2_st* @d2i_ESS_CERT_ID_V2(%struct.ESS_cert_id_v2_st** noundef, i8** noundef, i64 noundef) local_unnamed_addr #1

declare dso_local i32 @i2d_ESS_CERT_ID_V2(%struct.ESS_cert_id_v2_st* noundef, i8** noundef) local_unnamed_addr #1

declare dso_local void @ESS_CERT_ID_V2_free(%struct.ESS_cert_id_v2_st* noundef) local_unnamed_addr #1

declare dso_local %struct.ESS_signing_cert_v2_st* @d2i_ESS_SIGNING_CERT_V2(%struct.ESS_signing_cert_v2_st** noundef, i8** noundef, i64 noundef) local_unnamed_addr #1

declare dso_local i32 @i2d_ESS_SIGNING_CERT_V2(%struct.ESS_signing_cert_v2_st* noundef, i8** noundef) local_unnamed_addr #1

declare dso_local void @ESS_SIGNING_CERT_V2_free(%struct.ESS_signing_cert_v2_st* noundef) local_unnamed_addr #1

declare dso_local %struct.dh_st* @d2i_DHparams(%struct.dh_st** noundef, i8** noundef, i64 noundef) local_unnamed_addr #1

declare dso_local i32 @i2d_DHparams(%struct.dh_st* noundef, i8** noundef) local_unnamed_addr #1

declare dso_local void @DH_free(%struct.dh_st* noundef) local_unnamed_addr #1

declare dso_local %struct.dh_st* @d2i_DHxparams(%struct.dh_st** noundef, i8** noundef, i64 noundef) local_unnamed_addr #1

declare dso_local i32 @i2d_DHxparams(%struct.dh_st* noundef, i8** noundef) local_unnamed_addr #1

declare dso_local %struct.DSA_SIG_st* @d2i_DSA_SIG(%struct.DSA_SIG_st** noundef, i8** noundef, i64 noundef) local_unnamed_addr #1

declare dso_local i32 @i2d_DSA_SIG(%struct.DSA_SIG_st* noundef, i8** noundef) local_unnamed_addr #1

declare dso_local void @DSA_SIG_free(%struct.DSA_SIG_st* noundef) local_unnamed_addr #1

declare dso_local %struct.dsa_st* @d2i_DSAPrivateKey(%struct.dsa_st** noundef, i8** noundef, i64 noundef) local_unnamed_addr #1

declare dso_local i32 @i2d_DSAPrivateKey(%struct.dsa_st* noundef, i8** noundef) local_unnamed_addr #1

declare dso_local void @DSA_free(%struct.dsa_st* noundef) local_unnamed_addr #1

declare dso_local %struct.dsa_st* @d2i_DSAPublicKey(%struct.dsa_st** noundef, i8** noundef, i64 noundef) local_unnamed_addr #1

declare dso_local i32 @i2d_DSAPublicKey(%struct.dsa_st* noundef, i8** noundef) local_unnamed_addr #1

declare dso_local %struct.dsa_st* @d2i_DSAparams(%struct.dsa_st** noundef, i8** noundef, i64 noundef) local_unnamed_addr #1

declare dso_local i32 @i2d_DSAparams(%struct.dsa_st* noundef, i8** noundef) local_unnamed_addr #1

declare dso_local %struct.rsa_st* @d2i_RSAPublicKey(%struct.rsa_st** noundef, i8** noundef, i64 noundef) local_unnamed_addr #1

declare dso_local i32 @i2d_RSAPublicKey(%struct.rsa_st* noundef, i8** noundef) local_unnamed_addr #1

declare dso_local void @RSA_free(%struct.rsa_st* noundef) local_unnamed_addr #1

declare dso_local %struct.ec_group_st* @d2i_ECPKParameters(%struct.ec_group_st** noundef, i8** noundef, i64 noundef) local_unnamed_addr #1

declare dso_local i32 @ECPKParameters_print(%struct.bio_st* noundef, %struct.ec_group_st* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @i2d_ECPKParameters(%struct.ec_group_st* noundef, i8** noundef) local_unnamed_addr #1

declare dso_local void @EC_GROUP_free(%struct.ec_group_st* noundef) local_unnamed_addr #1

declare dso_local %struct.ec_key_st* @d2i_ECPrivateKey(%struct.ec_key_st** noundef, i8** noundef, i64 noundef) local_unnamed_addr #1

declare dso_local i32 @EC_KEY_print(%struct.bio_st* noundef, %struct.ec_key_st* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @i2d_ECPrivateKey(%struct.ec_key_st* noundef, i8** noundef) local_unnamed_addr #1

declare dso_local void @EC_KEY_free(%struct.ec_key_st* noundef) local_unnamed_addr #1

declare dso_local %struct.ec_key_st* @d2i_ECParameters(%struct.ec_key_st** noundef, i8** noundef, i64 noundef) local_unnamed_addr #1

declare dso_local i32 @ECParameters_print(%struct.bio_st* noundef, %struct.ec_key_st* noundef) local_unnamed_addr #1

declare dso_local i32 @i2d_ECParameters(%struct.ec_key_st* noundef, i8** noundef) local_unnamed_addr #1

declare dso_local %struct.ECDSA_SIG_st* @d2i_ECDSA_SIG(%struct.ECDSA_SIG_st** noundef, i8** noundef, i64 noundef) local_unnamed_addr #1

declare dso_local i32 @i2d_ECDSA_SIG(%struct.ECDSA_SIG_st* noundef, i8** noundef) local_unnamed_addr #1

declare dso_local void @ECDSA_SIG_free(%struct.ECDSA_SIG_st* noundef) local_unnamed_addr #1

declare dso_local %struct.evp_pkey_st* @d2i_AutoPrivateKey(%struct.evp_pkey_st** noundef, i8** noundef, i64 noundef) local_unnamed_addr #1

declare dso_local i32 @EVP_PKEY_print_private(%struct.bio_st* noundef, %struct.evp_pkey_st* noundef, i32 noundef, %struct.asn1_pctx_st* noundef) local_unnamed_addr #1

declare dso_local i32 @i2d_PrivateKey(%struct.evp_pkey_st* noundef, i8** noundef) local_unnamed_addr #1

declare dso_local void @EVP_PKEY_free(%struct.evp_pkey_st* noundef) local_unnamed_addr #1

declare dso_local %struct.ssl_session_st* @d2i_SSL_SESSION(%struct.ssl_session_st** noundef, i8** noundef, i64 noundef) local_unnamed_addr #1

declare dso_local i32 @SSL_SESSION_print(%struct.bio_st* noundef, %struct.ssl_session_st* noundef) local_unnamed_addr #1

declare dso_local i32 @i2d_SSL_SESSION(%struct.ssl_session_st* noundef, i8** noundef) local_unnamed_addr #1

declare dso_local void @SSL_SESSION_free(%struct.ssl_session_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @FuzzerCleanup() local_unnamed_addr #0 {
entry:
  %0 = load %struct.asn1_pctx_st*, %struct.asn1_pctx_st** @pctx, align 8, !tbaa !3
  tail call void @ASN1_PCTX_free(%struct.asn1_pctx_st* noundef %0) #3
  tail call void @FuzzerClearRand() #3
  ret void
}

declare dso_local void @ASN1_PCTX_free(%struct.asn1_pctx_st* noundef) local_unnamed_addr #1

declare dso_local void @FuzzerClearRand() local_unnamed_addr #1

declare dso_local %struct.ASN1_ITEM_st* @ACCESS_DESCRIPTION_it() #1

declare dso_local %struct.ASN1_ITEM_st* @ASIdentifierChoice_it() #1

declare dso_local %struct.ASN1_ITEM_st* @ASIdentifiers_it() #1

declare dso_local %struct.ASN1_ITEM_st* @ASIdOrRange_it() #1

declare dso_local %struct.ASN1_ITEM_st* @ASN1_ANY_it() #1

declare dso_local %struct.ASN1_ITEM_st* @ASN1_BIT_STRING_it() #1

declare dso_local %struct.ASN1_ITEM_st* @ASN1_BMPSTRING_it() #1

declare dso_local %struct.ASN1_ITEM_st* @ASN1_BOOLEAN_it() #1

declare dso_local %struct.ASN1_ITEM_st* @ASN1_ENUMERATED_it() #1

declare dso_local %struct.ASN1_ITEM_st* @ASN1_FBOOLEAN_it() #1

declare dso_local %struct.ASN1_ITEM_st* @ASN1_GENERALIZEDTIME_it() #1

declare dso_local %struct.ASN1_ITEM_st* @ASN1_GENERALSTRING_it() #1

declare dso_local %struct.ASN1_ITEM_st* @ASN1_IA5STRING_it() #1

declare dso_local %struct.ASN1_ITEM_st* @ASN1_INTEGER_it() #1

declare dso_local %struct.ASN1_ITEM_st* @ASN1_NULL_it() #1

declare dso_local %struct.ASN1_ITEM_st* @ASN1_OBJECT_it() #1

declare dso_local %struct.ASN1_ITEM_st* @ASN1_OCTET_STRING_it() #1

declare dso_local %struct.ASN1_ITEM_st* @ASN1_OCTET_STRING_NDEF_it() #1

declare dso_local %struct.ASN1_ITEM_st* @ASN1_PRINTABLE_it() #1

declare dso_local %struct.ASN1_ITEM_st* @ASN1_PRINTABLESTRING_it() #1

declare dso_local %struct.ASN1_ITEM_st* @ASN1_SEQUENCE_it() #1

declare dso_local %struct.ASN1_ITEM_st* @ASN1_SEQUENCE_ANY_it() #1

declare dso_local %struct.ASN1_ITEM_st* @ASN1_SET_ANY_it() #1

declare dso_local %struct.ASN1_ITEM_st* @ASN1_T61STRING_it() #1

declare dso_local %struct.ASN1_ITEM_st* @ASN1_TBOOLEAN_it() #1

declare dso_local %struct.ASN1_ITEM_st* @ASN1_TIME_it() #1

declare dso_local %struct.ASN1_ITEM_st* @ASN1_UNIVERSALSTRING_it() #1

declare dso_local %struct.ASN1_ITEM_st* @ASN1_UTCTIME_it() #1

declare dso_local %struct.ASN1_ITEM_st* @ASN1_UTF8STRING_it() #1

declare dso_local %struct.ASN1_ITEM_st* @ASN1_VISIBLESTRING_it() #1

declare dso_local %struct.ASN1_ITEM_st* @ASRange_it() #1

declare dso_local %struct.ASN1_ITEM_st* @AUTHORITY_INFO_ACCESS_it() #1

declare dso_local %struct.ASN1_ITEM_st* @AUTHORITY_KEYID_it() #1

declare dso_local %struct.ASN1_ITEM_st* @BASIC_CONSTRAINTS_it() #1

declare dso_local %struct.ASN1_ITEM_st* @BIGNUM_it() #1

declare dso_local %struct.ASN1_ITEM_st* @CBIGNUM_it() #1

declare dso_local %struct.ASN1_ITEM_st* @CERTIFICATEPOLICIES_it() #1

declare dso_local %struct.ASN1_ITEM_st* @CMS_ContentInfo_it() #1

declare dso_local %struct.ASN1_ITEM_st* @CMS_ReceiptRequest_it() #1

declare dso_local %struct.ASN1_ITEM_st* @CRL_DIST_POINTS_it() #1

declare dso_local %struct.ASN1_ITEM_st* @DHparams_it() #1

declare dso_local %struct.ASN1_ITEM_st* @DIRECTORYSTRING_it() #1

declare dso_local %struct.ASN1_ITEM_st* @DISPLAYTEXT_it() #1

declare dso_local %struct.ASN1_ITEM_st* @DIST_POINT_it() #1

declare dso_local %struct.ASN1_ITEM_st* @DIST_POINT_NAME_it() #1

declare dso_local %struct.ASN1_ITEM_st* @ECPARAMETERS_it() #1

declare dso_local %struct.ASN1_ITEM_st* @ECPKPARAMETERS_it() #1

declare dso_local %struct.ASN1_ITEM_st* @EDIPARTYNAME_it() #1

declare dso_local %struct.ASN1_ITEM_st* @EXTENDED_KEY_USAGE_it() #1

declare dso_local %struct.ASN1_ITEM_st* @GENERAL_NAME_it() #1

declare dso_local %struct.ASN1_ITEM_st* @GENERAL_NAMES_it() #1

declare dso_local %struct.ASN1_ITEM_st* @GENERAL_SUBTREE_it() #1

declare dso_local %struct.ASN1_ITEM_st* @IPAddressChoice_it() #1

declare dso_local %struct.ASN1_ITEM_st* @IPAddressFamily_it() #1

declare dso_local %struct.ASN1_ITEM_st* @IPAddressOrRange_it() #1

declare dso_local %struct.ASN1_ITEM_st* @IPAddressRange_it() #1

declare dso_local %struct.ASN1_ITEM_st* @ISSUING_DIST_POINT_it() #1

declare dso_local %struct.ASN1_ITEM_st* @LONG_it() #1

declare dso_local %struct.ASN1_ITEM_st* @NAME_CONSTRAINTS_it() #1

declare dso_local %struct.ASN1_ITEM_st* @NETSCAPE_CERT_SEQUENCE_it() #1

declare dso_local %struct.ASN1_ITEM_st* @NETSCAPE_SPKAC_it() #1

declare dso_local %struct.ASN1_ITEM_st* @NETSCAPE_SPKI_it() #1

declare dso_local %struct.ASN1_ITEM_st* @NOTICEREF_it() #1

declare dso_local %struct.ASN1_ITEM_st* @OCSP_BASICRESP_it() #1

declare dso_local %struct.ASN1_ITEM_st* @OCSP_CERTID_it() #1

declare dso_local %struct.ASN1_ITEM_st* @OCSP_CERTSTATUS_it() #1

declare dso_local %struct.ASN1_ITEM_st* @OCSP_CRLID_it() #1

declare dso_local %struct.ASN1_ITEM_st* @OCSP_ONEREQ_it() #1

declare dso_local %struct.ASN1_ITEM_st* @OCSP_REQINFO_it() #1

declare dso_local %struct.ASN1_ITEM_st* @OCSP_REQUEST_it() #1

declare dso_local %struct.ASN1_ITEM_st* @OCSP_RESPBYTES_it() #1

declare dso_local %struct.ASN1_ITEM_st* @OCSP_RESPDATA_it() #1

declare dso_local %struct.ASN1_ITEM_st* @OCSP_RESPID_it() #1

declare dso_local %struct.ASN1_ITEM_st* @OCSP_RESPONSE_it() #1

declare dso_local %struct.ASN1_ITEM_st* @OCSP_REVOKEDINFO_it() #1

declare dso_local %struct.ASN1_ITEM_st* @OCSP_SERVICELOC_it() #1

declare dso_local %struct.ASN1_ITEM_st* @OCSP_SIGNATURE_it() #1

declare dso_local %struct.ASN1_ITEM_st* @OCSP_SINGLERESP_it() #1

declare dso_local %struct.ASN1_ITEM_st* @OTHERNAME_it() #1

declare dso_local %struct.ASN1_ITEM_st* @PBE2PARAM_it() #1

declare dso_local %struct.ASN1_ITEM_st* @PBEPARAM_it() #1

declare dso_local %struct.ASN1_ITEM_st* @PBKDF2PARAM_it() #1

declare dso_local %struct.ASN1_ITEM_st* @PKCS12_it() #1

declare dso_local %struct.ASN1_ITEM_st* @PKCS12_AUTHSAFES_it() #1

declare dso_local %struct.ASN1_ITEM_st* @PKCS12_BAGS_it() #1

declare dso_local %struct.ASN1_ITEM_st* @PKCS12_MAC_DATA_it() #1

declare dso_local %struct.ASN1_ITEM_st* @PKCS12_SAFEBAG_it() #1

declare dso_local %struct.ASN1_ITEM_st* @PKCS12_SAFEBAGS_it() #1

declare dso_local %struct.ASN1_ITEM_st* @PKCS7_it() #1

declare dso_local %struct.ASN1_ITEM_st* @PKCS7_ATTR_SIGN_it() #1

declare dso_local %struct.ASN1_ITEM_st* @PKCS7_ATTR_VERIFY_it() #1

declare dso_local %struct.ASN1_ITEM_st* @PKCS7_DIGEST_it() #1

declare dso_local %struct.ASN1_ITEM_st* @PKCS7_ENC_CONTENT_it() #1

declare dso_local %struct.ASN1_ITEM_st* @PKCS7_ENCRYPT_it() #1

declare dso_local %struct.ASN1_ITEM_st* @PKCS7_ENVELOPE_it() #1

declare dso_local %struct.ASN1_ITEM_st* @PKCS7_ISSUER_AND_SERIAL_it() #1

declare dso_local %struct.ASN1_ITEM_st* @PKCS7_RECIP_INFO_it() #1

declare dso_local %struct.ASN1_ITEM_st* @PKCS7_SIGNED_it() #1

declare dso_local %struct.ASN1_ITEM_st* @PKCS7_SIGN_ENVELOPE_it() #1

declare dso_local %struct.ASN1_ITEM_st* @PKCS7_SIGNER_INFO_it() #1

declare dso_local %struct.ASN1_ITEM_st* @PKCS8_PRIV_KEY_INFO_it() #1

declare dso_local %struct.ASN1_ITEM_st* @PKEY_USAGE_PERIOD_it() #1

declare dso_local %struct.ASN1_ITEM_st* @POLICY_CONSTRAINTS_it() #1

declare dso_local %struct.ASN1_ITEM_st* @POLICYINFO_it() #1

declare dso_local %struct.ASN1_ITEM_st* @POLICY_MAPPING_it() #1

declare dso_local %struct.ASN1_ITEM_st* @POLICY_MAPPINGS_it() #1

declare dso_local %struct.ASN1_ITEM_st* @POLICYQUALINFO_it() #1

declare dso_local %struct.ASN1_ITEM_st* @PROXY_CERT_INFO_EXTENSION_it() #1

declare dso_local %struct.ASN1_ITEM_st* @PROXY_POLICY_it() #1

declare dso_local %struct.ASN1_ITEM_st* @RSA_OAEP_PARAMS_it() #1

declare dso_local %struct.ASN1_ITEM_st* @RSA_PSS_PARAMS_it() #1

declare dso_local %struct.ASN1_ITEM_st* @RSAPrivateKey_it() #1

declare dso_local %struct.ASN1_ITEM_st* @RSAPublicKey_it() #1

declare dso_local %struct.ASN1_ITEM_st* @SXNET_it() #1

declare dso_local %struct.ASN1_ITEM_st* @SXNETID_it() #1

declare dso_local %struct.ASN1_ITEM_st* @USERNOTICE_it() #1

declare dso_local %struct.ASN1_ITEM_st* @X509_it() #1

declare dso_local %struct.ASN1_ITEM_st* @X509_ALGOR_it() #1

declare dso_local %struct.ASN1_ITEM_st* @X509_ALGORS_it() #1

declare dso_local %struct.ASN1_ITEM_st* @X509_ATTRIBUTE_it() #1

declare dso_local %struct.ASN1_ITEM_st* @X509_CERT_AUX_it() #1

declare dso_local %struct.ASN1_ITEM_st* @X509_CINF_it() #1

declare dso_local %struct.ASN1_ITEM_st* @X509_CRL_it() #1

declare dso_local %struct.ASN1_ITEM_st* @X509_CRL_INFO_it() #1

declare dso_local %struct.ASN1_ITEM_st* @X509_EXTENSION_it() #1

declare dso_local %struct.ASN1_ITEM_st* @X509_EXTENSIONS_it() #1

declare dso_local %struct.ASN1_ITEM_st* @X509_NAME_it() #1

declare dso_local %struct.ASN1_ITEM_st* @X509_NAME_ENTRY_it() #1

declare dso_local %struct.ASN1_ITEM_st* @X509_PUBKEY_it() #1

declare dso_local %struct.ASN1_ITEM_st* @X509_REQ_it() #1

declare dso_local %struct.ASN1_ITEM_st* @X509_REQ_INFO_it() #1

declare dso_local %struct.ASN1_ITEM_st* @X509_REVOKED_it() #1

declare dso_local %struct.ASN1_ITEM_st* @X509_SIG_it() #1

declare dso_local %struct.ASN1_ITEM_st* @X509_VAL_it() #1

declare dso_local %struct.ASN1_ITEM_st* @ZLONG_it() #1

declare dso_local %struct.ASN1_ITEM_st* @INT32_it() #1

declare dso_local %struct.ASN1_ITEM_st* @ZINT32_it() #1

declare dso_local %struct.ASN1_ITEM_st* @UINT32_it() #1

declare dso_local %struct.ASN1_ITEM_st* @ZUINT32_it() #1

declare dso_local %struct.ASN1_ITEM_st* @INT64_it() #1

declare dso_local %struct.ASN1_ITEM_st* @ZINT64_it() #1

declare dso_local %struct.ASN1_ITEM_st* @UINT64_it() #1

declare dso_local %struct.ASN1_ITEM_st* @ZUINT64_it() #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { nobuiltin nounwind "no-builtins" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.0"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.mustprogress"}
