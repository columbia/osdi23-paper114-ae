; ModuleID = 'crypto/asn1/asn1_item_list.c'
source_filename = "crypto/asn1/asn1_item_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ASN1_ITEM_st = type { i8, i64, %struct.ASN1_TEMPLATE_st*, i64, i8*, i64, i8* }
%struct.ASN1_TEMPLATE_st = type { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }

@asn1_item_list = internal unnamed_addr constant [145 x %struct.ASN1_ITEM_st* ()*] [%struct.ASN1_ITEM_st* ()* @ACCESS_DESCRIPTION_it, %struct.ASN1_ITEM_st* ()* @ASIdOrRange_it, %struct.ASN1_ITEM_st* ()* @ASIdentifierChoice_it, %struct.ASN1_ITEM_st* ()* @ASIdentifiers_it, %struct.ASN1_ITEM_st* ()* @ASN1_ANY_it, %struct.ASN1_ITEM_st* ()* @ASN1_BIT_STRING_it, %struct.ASN1_ITEM_st* ()* @ASN1_BMPSTRING_it, %struct.ASN1_ITEM_st* ()* @ASN1_BOOLEAN_it, %struct.ASN1_ITEM_st* ()* @ASN1_ENUMERATED_it, %struct.ASN1_ITEM_st* ()* @ASN1_FBOOLEAN_it, %struct.ASN1_ITEM_st* ()* @ASN1_GENERALIZEDTIME_it, %struct.ASN1_ITEM_st* ()* @ASN1_GENERALSTRING_it, %struct.ASN1_ITEM_st* ()* @ASN1_IA5STRING_it, %struct.ASN1_ITEM_st* ()* @ASN1_INTEGER_it, %struct.ASN1_ITEM_st* ()* @ASN1_NULL_it, %struct.ASN1_ITEM_st* ()* @ASN1_OBJECT_it, %struct.ASN1_ITEM_st* ()* @ASN1_OCTET_STRING_NDEF_it, %struct.ASN1_ITEM_st* ()* @ASN1_OCTET_STRING_it, %struct.ASN1_ITEM_st* ()* @ASN1_PRINTABLESTRING_it, %struct.ASN1_ITEM_st* ()* @ASN1_PRINTABLE_it, %struct.ASN1_ITEM_st* ()* @ASN1_SEQUENCE_ANY_it, %struct.ASN1_ITEM_st* ()* @ASN1_SEQUENCE_it, %struct.ASN1_ITEM_st* ()* @ASN1_SET_ANY_it, %struct.ASN1_ITEM_st* ()* @ASN1_T61STRING_it, %struct.ASN1_ITEM_st* ()* @ASN1_TBOOLEAN_it, %struct.ASN1_ITEM_st* ()* @ASN1_TIME_it, %struct.ASN1_ITEM_st* ()* @ASN1_UNIVERSALSTRING_it, %struct.ASN1_ITEM_st* ()* @ASN1_UTCTIME_it, %struct.ASN1_ITEM_st* ()* @ASN1_UTF8STRING_it, %struct.ASN1_ITEM_st* ()* @ASN1_VISIBLESTRING_it, %struct.ASN1_ITEM_st* ()* @ASRange_it, %struct.ASN1_ITEM_st* ()* @AUTHORITY_INFO_ACCESS_it, %struct.ASN1_ITEM_st* ()* @AUTHORITY_KEYID_it, %struct.ASN1_ITEM_st* ()* @BASIC_CONSTRAINTS_it, %struct.ASN1_ITEM_st* ()* @BIGNUM_it, %struct.ASN1_ITEM_st* ()* @CBIGNUM_it, %struct.ASN1_ITEM_st* ()* @CERTIFICATEPOLICIES_it, %struct.ASN1_ITEM_st* ()* @CMS_ContentInfo_it, %struct.ASN1_ITEM_st* ()* @CMS_ReceiptRequest_it, %struct.ASN1_ITEM_st* ()* @CRL_DIST_POINTS_it, %struct.ASN1_ITEM_st* ()* @DHparams_it, %struct.ASN1_ITEM_st* ()* @DIRECTORYSTRING_it, %struct.ASN1_ITEM_st* ()* @DISPLAYTEXT_it, %struct.ASN1_ITEM_st* ()* @DIST_POINT_NAME_it, %struct.ASN1_ITEM_st* ()* @DIST_POINT_it, %struct.ASN1_ITEM_st* ()* @ECPARAMETERS_it, %struct.ASN1_ITEM_st* ()* @ECPKPARAMETERS_it, %struct.ASN1_ITEM_st* ()* @EDIPARTYNAME_it, %struct.ASN1_ITEM_st* ()* @EXTENDED_KEY_USAGE_it, %struct.ASN1_ITEM_st* ()* @GENERAL_NAMES_it, %struct.ASN1_ITEM_st* ()* @GENERAL_NAME_it, %struct.ASN1_ITEM_st* ()* @GENERAL_SUBTREE_it, %struct.ASN1_ITEM_st* ()* @IPAddressChoice_it, %struct.ASN1_ITEM_st* ()* @IPAddressFamily_it, %struct.ASN1_ITEM_st* ()* @IPAddressOrRange_it, %struct.ASN1_ITEM_st* ()* @IPAddressRange_it, %struct.ASN1_ITEM_st* ()* @ISSUING_DIST_POINT_it, %struct.ASN1_ITEM_st* ()* @LONG_it, %struct.ASN1_ITEM_st* ()* @NAME_CONSTRAINTS_it, %struct.ASN1_ITEM_st* ()* @NETSCAPE_CERT_SEQUENCE_it, %struct.ASN1_ITEM_st* ()* @NETSCAPE_SPKAC_it, %struct.ASN1_ITEM_st* ()* @NETSCAPE_SPKI_it, %struct.ASN1_ITEM_st* ()* @NOTICEREF_it, %struct.ASN1_ITEM_st* ()* @OCSP_BASICRESP_it, %struct.ASN1_ITEM_st* ()* @OCSP_CERTID_it, %struct.ASN1_ITEM_st* ()* @OCSP_CERTSTATUS_it, %struct.ASN1_ITEM_st* ()* @OCSP_CRLID_it, %struct.ASN1_ITEM_st* ()* @OCSP_ONEREQ_it, %struct.ASN1_ITEM_st* ()* @OCSP_REQINFO_it, %struct.ASN1_ITEM_st* ()* @OCSP_REQUEST_it, %struct.ASN1_ITEM_st* ()* @OCSP_RESPBYTES_it, %struct.ASN1_ITEM_st* ()* @OCSP_RESPDATA_it, %struct.ASN1_ITEM_st* ()* @OCSP_RESPID_it, %struct.ASN1_ITEM_st* ()* @OCSP_RESPONSE_it, %struct.ASN1_ITEM_st* ()* @OCSP_REVOKEDINFO_it, %struct.ASN1_ITEM_st* ()* @OCSP_SERVICELOC_it, %struct.ASN1_ITEM_st* ()* @OCSP_SIGNATURE_it, %struct.ASN1_ITEM_st* ()* @OCSP_SINGLERESP_it, %struct.ASN1_ITEM_st* ()* @OTHERNAME_it, %struct.ASN1_ITEM_st* ()* @PBE2PARAM_it, %struct.ASN1_ITEM_st* ()* @PBEPARAM_it, %struct.ASN1_ITEM_st* ()* @PBKDF2PARAM_it, %struct.ASN1_ITEM_st* ()* @PKCS12_AUTHSAFES_it, %struct.ASN1_ITEM_st* ()* @PKCS12_BAGS_it, %struct.ASN1_ITEM_st* ()* @PKCS12_MAC_DATA_it, %struct.ASN1_ITEM_st* ()* @PKCS12_SAFEBAGS_it, %struct.ASN1_ITEM_st* ()* @PKCS12_SAFEBAG_it, %struct.ASN1_ITEM_st* ()* @PKCS12_it, %struct.ASN1_ITEM_st* ()* @PKCS7_ATTR_SIGN_it, %struct.ASN1_ITEM_st* ()* @PKCS7_ATTR_VERIFY_it, %struct.ASN1_ITEM_st* ()* @PKCS7_DIGEST_it, %struct.ASN1_ITEM_st* ()* @PKCS7_ENCRYPT_it, %struct.ASN1_ITEM_st* ()* @PKCS7_ENC_CONTENT_it, %struct.ASN1_ITEM_st* ()* @PKCS7_ENVELOPE_it, %struct.ASN1_ITEM_st* ()* @PKCS7_ISSUER_AND_SERIAL_it, %struct.ASN1_ITEM_st* ()* @PKCS7_RECIP_INFO_it, %struct.ASN1_ITEM_st* ()* @PKCS7_SIGNED_it, %struct.ASN1_ITEM_st* ()* @PKCS7_SIGNER_INFO_it, %struct.ASN1_ITEM_st* ()* @PKCS7_SIGN_ENVELOPE_it, %struct.ASN1_ITEM_st* ()* @PKCS7_it, %struct.ASN1_ITEM_st* ()* @PKCS8_PRIV_KEY_INFO_it, %struct.ASN1_ITEM_st* ()* @PKEY_USAGE_PERIOD_it, %struct.ASN1_ITEM_st* ()* @POLICYINFO_it, %struct.ASN1_ITEM_st* ()* @POLICYQUALINFO_it, %struct.ASN1_ITEM_st* ()* @POLICY_CONSTRAINTS_it, %struct.ASN1_ITEM_st* ()* @POLICY_MAPPINGS_it, %struct.ASN1_ITEM_st* ()* @POLICY_MAPPING_it, %struct.ASN1_ITEM_st* ()* @PROXY_CERT_INFO_EXTENSION_it, %struct.ASN1_ITEM_st* ()* @PROXY_POLICY_it, %struct.ASN1_ITEM_st* ()* @RSAPrivateKey_it, %struct.ASN1_ITEM_st* ()* @RSAPublicKey_it, %struct.ASN1_ITEM_st* ()* @RSA_OAEP_PARAMS_it, %struct.ASN1_ITEM_st* ()* @RSA_PSS_PARAMS_it, %struct.ASN1_ITEM_st* ()* @SCRYPT_PARAMS_it, %struct.ASN1_ITEM_st* ()* @SXNETID_it, %struct.ASN1_ITEM_st* ()* @SXNET_it, %struct.ASN1_ITEM_st* ()* @ISSUER_SIGN_TOOL_it, %struct.ASN1_ITEM_st* ()* @USERNOTICE_it, %struct.ASN1_ITEM_st* ()* @X509_ALGORS_it, %struct.ASN1_ITEM_st* ()* @X509_ALGOR_it, %struct.ASN1_ITEM_st* ()* @X509_ATTRIBUTE_it, %struct.ASN1_ITEM_st* ()* @X509_CERT_AUX_it, %struct.ASN1_ITEM_st* ()* @X509_CINF_it, %struct.ASN1_ITEM_st* ()* @X509_CRL_INFO_it, %struct.ASN1_ITEM_st* ()* @X509_CRL_it, %struct.ASN1_ITEM_st* ()* @X509_EXTENSIONS_it, %struct.ASN1_ITEM_st* ()* @X509_EXTENSION_it, %struct.ASN1_ITEM_st* ()* @X509_NAME_ENTRY_it, %struct.ASN1_ITEM_st* ()* @X509_NAME_it, %struct.ASN1_ITEM_st* ()* @X509_PUBKEY_it, %struct.ASN1_ITEM_st* ()* @X509_REQ_INFO_it, %struct.ASN1_ITEM_st* ()* @X509_REQ_it, %struct.ASN1_ITEM_st* ()* @X509_REVOKED_it, %struct.ASN1_ITEM_st* ()* @X509_SIG_it, %struct.ASN1_ITEM_st* ()* @X509_VAL_it, %struct.ASN1_ITEM_st* ()* @X509_it, %struct.ASN1_ITEM_st* ()* @ZLONG_it, %struct.ASN1_ITEM_st* ()* @INT32_it, %struct.ASN1_ITEM_st* ()* @UINT32_it, %struct.ASN1_ITEM_st* ()* @ZINT32_it, %struct.ASN1_ITEM_st* ()* @ZUINT32_it, %struct.ASN1_ITEM_st* ()* @INT64_it, %struct.ASN1_ITEM_st* ()* @UINT64_it, %struct.ASN1_ITEM_st* ()* @ZINT64_it, %struct.ASN1_ITEM_st* ()* @ZUINT64_it], align 16

; Function Attrs: noinline nounwind uwtable
define %struct.ASN1_ITEM_st* @ASN1_ITEM_lookup(i8* noundef readonly %name) local_unnamed_addr #0 {
entry:
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i64 %i.09, 1
  %exitcond.not = icmp eq i64 %inc, 145
  br i1 %exitcond.not, label %cleanup3, label %for.body, !llvm.loop !4

for.body:                                         ; preds = %entry, %for.cond
  %i.09 = phi i64 [ 0, %entry ], [ %inc, %for.cond ]
  %arrayidx = getelementptr inbounds [145 x %struct.ASN1_ITEM_st* ()*], [145 x %struct.ASN1_ITEM_st* ()*]* @asn1_item_list, i64 0, i64 %i.09
  %0 = load %struct.ASN1_ITEM_st* ()*, %struct.ASN1_ITEM_st* ()** %arrayidx, align 8, !tbaa !6
  %call = tail call %struct.ASN1_ITEM_st* %0() #3
  %sname = getelementptr inbounds %struct.ASN1_ITEM_st, %struct.ASN1_ITEM_st* %call, i64 0, i32 6
  %1 = load i8*, i8** %sname, align 8, !tbaa !10
  %call1 = tail call i32 @strcmp(i8* noundef %1, i8* noundef %name) #4
  %cmp2 = icmp eq i32 %call1, 0
  br i1 %cmp2, label %cleanup3, label %for.cond

cleanup3:                                         ; preds = %for.cond, %for.body
  %retval.2 = phi %struct.ASN1_ITEM_st* [ %call, %for.body ], [ null, %for.cond ]
  ret %struct.ASN1_ITEM_st* %retval.2
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @strcmp(i8* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define %struct.ASN1_ITEM_st* @ASN1_ITEM_get(i64 noundef %i) local_unnamed_addr #0 {
entry:
  %cmp = icmp ugt i64 %i, 144
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr inbounds [145 x %struct.ASN1_ITEM_st* ()*], [145 x %struct.ASN1_ITEM_st* ()*]* @asn1_item_list, i64 0, i64 %i
  %0 = load %struct.ASN1_ITEM_st* ()*, %struct.ASN1_ITEM_st* ()** %arrayidx, align 8, !tbaa !6
  %call = tail call %struct.ASN1_ITEM_st* %0() #3
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi %struct.ASN1_ITEM_st* [ %call, %if.end ], [ null, %entry ]
  ret %struct.ASN1_ITEM_st* %retval.0
}

declare %struct.ASN1_ITEM_st* @ACCESS_DESCRIPTION_it() #2

declare %struct.ASN1_ITEM_st* @ASIdOrRange_it() #2

declare %struct.ASN1_ITEM_st* @ASIdentifierChoice_it() #2

declare %struct.ASN1_ITEM_st* @ASIdentifiers_it() #2

declare %struct.ASN1_ITEM_st* @ASN1_ANY_it() #2

declare %struct.ASN1_ITEM_st* @ASN1_BIT_STRING_it() #2

declare %struct.ASN1_ITEM_st* @ASN1_BMPSTRING_it() #2

declare %struct.ASN1_ITEM_st* @ASN1_BOOLEAN_it() #2

declare %struct.ASN1_ITEM_st* @ASN1_ENUMERATED_it() #2

declare %struct.ASN1_ITEM_st* @ASN1_FBOOLEAN_it() #2

declare %struct.ASN1_ITEM_st* @ASN1_GENERALIZEDTIME_it() #2

declare %struct.ASN1_ITEM_st* @ASN1_GENERALSTRING_it() #2

declare %struct.ASN1_ITEM_st* @ASN1_IA5STRING_it() #2

declare %struct.ASN1_ITEM_st* @ASN1_INTEGER_it() #2

declare %struct.ASN1_ITEM_st* @ASN1_NULL_it() #2

declare %struct.ASN1_ITEM_st* @ASN1_OBJECT_it() #2

declare %struct.ASN1_ITEM_st* @ASN1_OCTET_STRING_NDEF_it() #2

declare %struct.ASN1_ITEM_st* @ASN1_OCTET_STRING_it() #2

declare %struct.ASN1_ITEM_st* @ASN1_PRINTABLESTRING_it() #2

declare %struct.ASN1_ITEM_st* @ASN1_PRINTABLE_it() #2

declare %struct.ASN1_ITEM_st* @ASN1_SEQUENCE_ANY_it() #2

declare %struct.ASN1_ITEM_st* @ASN1_SEQUENCE_it() #2

declare %struct.ASN1_ITEM_st* @ASN1_SET_ANY_it() #2

declare %struct.ASN1_ITEM_st* @ASN1_T61STRING_it() #2

declare %struct.ASN1_ITEM_st* @ASN1_TBOOLEAN_it() #2

declare %struct.ASN1_ITEM_st* @ASN1_TIME_it() #2

declare %struct.ASN1_ITEM_st* @ASN1_UNIVERSALSTRING_it() #2

declare %struct.ASN1_ITEM_st* @ASN1_UTCTIME_it() #2

declare %struct.ASN1_ITEM_st* @ASN1_UTF8STRING_it() #2

declare %struct.ASN1_ITEM_st* @ASN1_VISIBLESTRING_it() #2

declare %struct.ASN1_ITEM_st* @ASRange_it() #2

declare %struct.ASN1_ITEM_st* @AUTHORITY_INFO_ACCESS_it() #2

declare %struct.ASN1_ITEM_st* @AUTHORITY_KEYID_it() #2

declare %struct.ASN1_ITEM_st* @BASIC_CONSTRAINTS_it() #2

declare %struct.ASN1_ITEM_st* @BIGNUM_it() #2

declare %struct.ASN1_ITEM_st* @CBIGNUM_it() #2

declare %struct.ASN1_ITEM_st* @CERTIFICATEPOLICIES_it() #2

declare %struct.ASN1_ITEM_st* @CMS_ContentInfo_it() #2

declare %struct.ASN1_ITEM_st* @CMS_ReceiptRequest_it() #2

declare %struct.ASN1_ITEM_st* @CRL_DIST_POINTS_it() #2

declare %struct.ASN1_ITEM_st* @DHparams_it() #2

declare %struct.ASN1_ITEM_st* @DIRECTORYSTRING_it() #2

declare %struct.ASN1_ITEM_st* @DISPLAYTEXT_it() #2

declare %struct.ASN1_ITEM_st* @DIST_POINT_NAME_it() #2

declare %struct.ASN1_ITEM_st* @DIST_POINT_it() #2

declare %struct.ASN1_ITEM_st* @ECPARAMETERS_it() #2

declare %struct.ASN1_ITEM_st* @ECPKPARAMETERS_it() #2

declare %struct.ASN1_ITEM_st* @EDIPARTYNAME_it() #2

declare %struct.ASN1_ITEM_st* @EXTENDED_KEY_USAGE_it() #2

declare %struct.ASN1_ITEM_st* @GENERAL_NAMES_it() #2

declare %struct.ASN1_ITEM_st* @GENERAL_NAME_it() #2

declare %struct.ASN1_ITEM_st* @GENERAL_SUBTREE_it() #2

declare %struct.ASN1_ITEM_st* @IPAddressChoice_it() #2

declare %struct.ASN1_ITEM_st* @IPAddressFamily_it() #2

declare %struct.ASN1_ITEM_st* @IPAddressOrRange_it() #2

declare %struct.ASN1_ITEM_st* @IPAddressRange_it() #2

declare %struct.ASN1_ITEM_st* @ISSUING_DIST_POINT_it() #2

declare %struct.ASN1_ITEM_st* @LONG_it() #2

declare %struct.ASN1_ITEM_st* @NAME_CONSTRAINTS_it() #2

declare %struct.ASN1_ITEM_st* @NETSCAPE_CERT_SEQUENCE_it() #2

declare %struct.ASN1_ITEM_st* @NETSCAPE_SPKAC_it() #2

declare %struct.ASN1_ITEM_st* @NETSCAPE_SPKI_it() #2

declare %struct.ASN1_ITEM_st* @NOTICEREF_it() #2

declare %struct.ASN1_ITEM_st* @OCSP_BASICRESP_it() #2

declare %struct.ASN1_ITEM_st* @OCSP_CERTID_it() #2

declare %struct.ASN1_ITEM_st* @OCSP_CERTSTATUS_it() #2

declare %struct.ASN1_ITEM_st* @OCSP_CRLID_it() #2

declare %struct.ASN1_ITEM_st* @OCSP_ONEREQ_it() #2

declare %struct.ASN1_ITEM_st* @OCSP_REQINFO_it() #2

declare %struct.ASN1_ITEM_st* @OCSP_REQUEST_it() #2

declare %struct.ASN1_ITEM_st* @OCSP_RESPBYTES_it() #2

declare %struct.ASN1_ITEM_st* @OCSP_RESPDATA_it() #2

declare %struct.ASN1_ITEM_st* @OCSP_RESPID_it() #2

declare %struct.ASN1_ITEM_st* @OCSP_RESPONSE_it() #2

declare %struct.ASN1_ITEM_st* @OCSP_REVOKEDINFO_it() #2

declare %struct.ASN1_ITEM_st* @OCSP_SERVICELOC_it() #2

declare %struct.ASN1_ITEM_st* @OCSP_SIGNATURE_it() #2

declare %struct.ASN1_ITEM_st* @OCSP_SINGLERESP_it() #2

declare %struct.ASN1_ITEM_st* @OTHERNAME_it() #2

declare %struct.ASN1_ITEM_st* @PBE2PARAM_it() #2

declare %struct.ASN1_ITEM_st* @PBEPARAM_it() #2

declare %struct.ASN1_ITEM_st* @PBKDF2PARAM_it() #2

declare %struct.ASN1_ITEM_st* @PKCS12_AUTHSAFES_it() #2

declare %struct.ASN1_ITEM_st* @PKCS12_BAGS_it() #2

declare %struct.ASN1_ITEM_st* @PKCS12_MAC_DATA_it() #2

declare %struct.ASN1_ITEM_st* @PKCS12_SAFEBAGS_it() #2

declare %struct.ASN1_ITEM_st* @PKCS12_SAFEBAG_it() #2

declare %struct.ASN1_ITEM_st* @PKCS12_it() #2

declare %struct.ASN1_ITEM_st* @PKCS7_ATTR_SIGN_it() #2

declare %struct.ASN1_ITEM_st* @PKCS7_ATTR_VERIFY_it() #2

declare %struct.ASN1_ITEM_st* @PKCS7_DIGEST_it() #2

declare %struct.ASN1_ITEM_st* @PKCS7_ENCRYPT_it() #2

declare %struct.ASN1_ITEM_st* @PKCS7_ENC_CONTENT_it() #2

declare %struct.ASN1_ITEM_st* @PKCS7_ENVELOPE_it() #2

declare %struct.ASN1_ITEM_st* @PKCS7_ISSUER_AND_SERIAL_it() #2

declare %struct.ASN1_ITEM_st* @PKCS7_RECIP_INFO_it() #2

declare %struct.ASN1_ITEM_st* @PKCS7_SIGNED_it() #2

declare %struct.ASN1_ITEM_st* @PKCS7_SIGNER_INFO_it() #2

declare %struct.ASN1_ITEM_st* @PKCS7_SIGN_ENVELOPE_it() #2

declare %struct.ASN1_ITEM_st* @PKCS7_it() #2

declare %struct.ASN1_ITEM_st* @PKCS8_PRIV_KEY_INFO_it() #2

declare %struct.ASN1_ITEM_st* @PKEY_USAGE_PERIOD_it() #2

declare %struct.ASN1_ITEM_st* @POLICYINFO_it() #2

declare %struct.ASN1_ITEM_st* @POLICYQUALINFO_it() #2

declare %struct.ASN1_ITEM_st* @POLICY_CONSTRAINTS_it() #2

declare %struct.ASN1_ITEM_st* @POLICY_MAPPINGS_it() #2

declare %struct.ASN1_ITEM_st* @POLICY_MAPPING_it() #2

declare %struct.ASN1_ITEM_st* @PROXY_CERT_INFO_EXTENSION_it() #2

declare %struct.ASN1_ITEM_st* @PROXY_POLICY_it() #2

declare %struct.ASN1_ITEM_st* @RSAPrivateKey_it() #2

declare %struct.ASN1_ITEM_st* @RSAPublicKey_it() #2

declare %struct.ASN1_ITEM_st* @RSA_OAEP_PARAMS_it() #2

declare %struct.ASN1_ITEM_st* @RSA_PSS_PARAMS_it() #2

declare %struct.ASN1_ITEM_st* @SCRYPT_PARAMS_it() #2

declare %struct.ASN1_ITEM_st* @SXNETID_it() #2

declare %struct.ASN1_ITEM_st* @SXNET_it() #2

declare %struct.ASN1_ITEM_st* @ISSUER_SIGN_TOOL_it() #2

declare %struct.ASN1_ITEM_st* @USERNOTICE_it() #2

declare %struct.ASN1_ITEM_st* @X509_ALGORS_it() #2

declare %struct.ASN1_ITEM_st* @X509_ALGOR_it() #2

declare %struct.ASN1_ITEM_st* @X509_ATTRIBUTE_it() #2

declare %struct.ASN1_ITEM_st* @X509_CERT_AUX_it() #2

declare %struct.ASN1_ITEM_st* @X509_CINF_it() #2

declare %struct.ASN1_ITEM_st* @X509_CRL_INFO_it() #2

declare %struct.ASN1_ITEM_st* @X509_CRL_it() #2

declare %struct.ASN1_ITEM_st* @X509_EXTENSIONS_it() #2

declare %struct.ASN1_ITEM_st* @X509_EXTENSION_it() #2

declare %struct.ASN1_ITEM_st* @X509_NAME_ENTRY_it() #2

declare %struct.ASN1_ITEM_st* @X509_NAME_it() #2

declare %struct.ASN1_ITEM_st* @X509_PUBKEY_it() #2

declare %struct.ASN1_ITEM_st* @X509_REQ_INFO_it() #2

declare %struct.ASN1_ITEM_st* @X509_REQ_it() #2

declare %struct.ASN1_ITEM_st* @X509_REVOKED_it() #2

declare %struct.ASN1_ITEM_st* @X509_SIG_it() #2

declare %struct.ASN1_ITEM_st* @X509_VAL_it() #2

declare %struct.ASN1_ITEM_st* @X509_it() #2

declare %struct.ASN1_ITEM_st* @ZLONG_it() #2

declare %struct.ASN1_ITEM_st* @INT32_it() #2

declare %struct.ASN1_ITEM_st* @UINT32_it() #2

declare %struct.ASN1_ITEM_st* @ZINT32_it() #2

declare %struct.ASN1_ITEM_st* @ZUINT32_it() #2

declare %struct.ASN1_ITEM_st* @INT64_it() #2

declare %struct.ASN1_ITEM_st* @UINT64_it() #2

declare %struct.ASN1_ITEM_st* @ZINT64_it() #2

declare %struct.ASN1_ITEM_st* @ZUINT64_it() #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin nounwind "no-builtins" }
attributes #4 = { nobuiltin nounwind readonly willreturn "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = !{!7, !7, i64 0}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !7, i64 48}
!11 = !{!"ASN1_ITEM_st", !8, i64 0, !12, i64 8, !7, i64 16, !12, i64 24, !7, i64 32, !12, i64 40, !7, i64 48}
!12 = !{!"long", !8, i64 0}
