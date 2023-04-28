; ModuleID = 'crypto/cmp/cmp_msg.c'
source_filename = "crypto/cmp/cmp_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ossl_cmp_msg_st = type { %struct.ossl_cmp_pkiheader_st*, %struct.ossl_cmp_pkibody_st*, %struct.asn1_string_st*, %struct.stack_st_X509*, %struct.ossl_lib_ctx_st*, i8* }
%struct.ossl_cmp_pkiheader_st = type { %struct.asn1_string_st*, %struct.GENERAL_NAME_st*, %struct.GENERAL_NAME_st*, %struct.asn1_string_st*, %struct.X509_algor_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.stack_st_ASN1_UTF8STRING*, %struct.stack_st_OSSL_CMP_ITAV* }
%struct.GENERAL_NAME_st = type { i32, %union.anon }
%union.anon = type { i8* }
%struct.X509_algor_st = type { %struct.asn1_object_st*, %struct.asn1_type_st* }
%struct.asn1_object_st = type opaque
%struct.asn1_type_st = type { i32, %union.anon.0 }
%union.anon.0 = type { i8* }
%struct.stack_st_ASN1_UTF8STRING = type opaque
%struct.stack_st_OSSL_CMP_ITAV = type opaque
%struct.ossl_cmp_pkibody_st = type { i32, %union.anon.1 }
%union.anon.1 = type { %struct.stack_st_OSSL_CRMF_MSG* }
%struct.stack_st_OSSL_CRMF_MSG = type opaque
%struct.asn1_string_st = type { i32, i32, i8*, i64 }
%struct.stack_st_X509 = type opaque
%struct.ossl_lib_ctx_st = type opaque
%struct.ASN1_ITEM_st = type { i8, i64, %struct.ASN1_TEMPLATE_st*, i64, i8*, i64, i8* }
%struct.ASN1_TEMPLATE_st = type { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }
%struct.ASN1_VALUE_st = type opaque
%struct.ossl_cmp_ctx_st = type { %struct.ossl_lib_ctx_st*, i8*, i32 (i8*, i8*, i32, i32, i8*)*, i32, %struct.ossl_cmp_msg_st* (%struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_msg_st*)*, i8*, %struct.ossl_http_req_ctx_st*, i8*, i8*, i32, i8*, i8*, i32, i32, i32, i64, %struct.bio_st* (%struct.bio_st*, i8*, i32, i32)*, i8*, i32, %struct.x509_st*, %struct.x509_st*, %struct.X509_name_st*, %struct.x509_store_st*, %struct.stack_st_X509*, i32, i32, i32, %struct.x509_st*, %struct.stack_st_X509*, %struct.evp_pkey_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, i64, %struct.evp_md_st*, i32, i32, %struct.X509_name_st*, %struct.evp_md_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.stack_st_OSSL_CMP_ITAV*, i32, i32, %struct.stack_st_X509*, %struct.evp_pkey_st*, i32, %struct.X509_name_st*, i32, %struct.X509_name_st*, %struct.stack_st_GENERAL_NAME*, i32, i32, %struct.stack_st_X509_EXTENSION*, %struct.stack_st_POLICYINFO*, i32, i32, %struct.x509_st*, %struct.X509_req_st*, i32, %struct.stack_st_OSSL_CMP_ITAV*, i32, %struct.stack_st_ASN1_UTF8STRING*, i32, %struct.x509_st*, %struct.stack_st_X509*, %struct.stack_st_X509*, %struct.stack_st_X509*, i32 (%struct.ossl_cmp_ctx_st*, %struct.x509_st*, i32, i8**)*, i8* }
%struct.ossl_http_req_ctx_st = type opaque
%struct.bio_st = type opaque
%struct.x509_store_st = type opaque
%struct.evp_md_st = type opaque
%struct.evp_pkey_st = type opaque
%struct.X509_name_st = type { %struct.stack_st_X509_NAME_ENTRY*, i32, %struct.buf_mem_st*, i8*, i32 }
%struct.stack_st_X509_NAME_ENTRY = type opaque
%struct.buf_mem_st = type { i64, i8*, i64, i64 }
%struct.stack_st_GENERAL_NAME = type opaque
%struct.stack_st_X509_EXTENSION = type opaque
%struct.stack_st_POLICYINFO = type opaque
%struct.X509_req_st = type { %struct.X509_req_info_st, %struct.X509_algor_st, %struct.asn1_string_st*, i32, i8*, %struct.asn1_string_st*, %struct.ossl_lib_ctx_st*, i8* }
%struct.X509_req_info_st = type { %struct.ASN1_ENCODING_st, %struct.asn1_string_st*, %struct.X509_name_st*, %struct.X509_pubkey_st*, %struct.stack_st_X509_ATTRIBUTE* }
%struct.ASN1_ENCODING_st = type { i8*, i64, i32 }
%struct.X509_pubkey_st = type opaque
%struct.stack_st_X509_ATTRIBUTE = type opaque
%struct.x509_st = type { %struct.x509_cinf_st, %struct.X509_algor_st, %struct.asn1_string_st, %struct.x509_sig_info_st, i32, %struct.crypto_ex_data_st, i64, i64, i32, i32, i32, i32, %struct.asn1_string_st*, %struct.AUTHORITY_KEYID_st*, %struct.X509_POLICY_CACHE_st*, %struct.stack_st_DIST_POINT*, %struct.stack_st_GENERAL_NAME*, %struct.NAME_CONSTRAINTS_st*, %struct.stack_st_IPAddressFamily*, %struct.ASIdentifiers_st*, [20 x i8], %struct.x509_cert_aux_st*, i8*, i32, %struct.asn1_string_st*, %struct.ossl_lib_ctx_st*, i8* }
%struct.x509_cinf_st = type { %struct.asn1_string_st*, %struct.asn1_string_st, %struct.X509_algor_st, %struct.X509_name_st*, %struct.X509_val_st, %struct.X509_name_st*, %struct.X509_pubkey_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.stack_st_X509_EXTENSION*, %struct.ASN1_ENCODING_st }
%struct.X509_val_st = type { %struct.asn1_string_st*, %struct.asn1_string_st* }
%struct.x509_sig_info_st = type { i32, i32, i32, i32 }
%struct.crypto_ex_data_st = type { %struct.ossl_lib_ctx_st*, %struct.stack_st_void* }
%struct.stack_st_void = type opaque
%struct.AUTHORITY_KEYID_st = type { %struct.asn1_string_st*, %struct.stack_st_GENERAL_NAME*, %struct.asn1_string_st* }
%struct.X509_POLICY_CACHE_st = type opaque
%struct.stack_st_DIST_POINT = type opaque
%struct.NAME_CONSTRAINTS_st = type { %struct.stack_st_GENERAL_SUBTREE*, %struct.stack_st_GENERAL_SUBTREE* }
%struct.stack_st_GENERAL_SUBTREE = type opaque
%struct.stack_st_IPAddressFamily = type opaque
%struct.ASIdentifiers_st = type { %struct.ASIdentifierChoice_st*, %struct.ASIdentifierChoice_st* }
%struct.ASIdentifierChoice_st = type { i32, %union.anon.2 }
%union.anon.2 = type { i32* }
%struct.x509_cert_aux_st = type { %struct.stack_st_ASN1_OBJECT*, %struct.stack_st_ASN1_OBJECT*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.stack_st_X509_ALGOR* }
%struct.stack_st_ASN1_OBJECT = type opaque
%struct.stack_st_X509_ALGOR = type opaque
%struct.ossl_cmp_certrepmessage_st = type { %struct.stack_st_X509*, %struct.stack_st_OSSL_CMP_CERTRESPONSE* }
%struct.stack_st_OSSL_CMP_CERTRESPONSE = type opaque
%struct.stack_st_OSSL_CMP_REVDETAILS = type opaque
%struct.ossl_cmp_revrepcontent_st = type { %struct.stack_st_OSSL_CMP_PKISI*, %struct.stack_st_OSSL_CRMF_CERTID*, %struct.stack_st_X509_CRL* }
%struct.stack_st_OSSL_CMP_PKISI = type opaque
%struct.stack_st_OSSL_CRMF_CERTID = type opaque
%struct.stack_st_X509_CRL = type opaque
%struct.stack_st = type opaque
%struct.stack_st_OSSL_CMP_POLLREQ = type opaque
%struct.stack_st_OSSL_CMP_POLLREP = type opaque
%struct.ossl_cmp_errormsgcontent_st = type { %struct.ossl_cmp_pkisi_st*, %struct.asn1_string_st*, %struct.stack_st_ASN1_UTF8STRING* }
%struct.ossl_cmp_pkisi_st = type { %struct.asn1_string_st*, %struct.stack_st_ASN1_UTF8STRING*, %struct.asn1_string_st* }
%struct.ossl_crmf_msg_st = type opaque
%struct.X509_name_entry_st = type { %struct.asn1_object_st*, %struct.asn1_string_st*, i32, i32 }
%struct.ossl_crmf_certtemplate_st = type opaque
%struct.ossl_crmf_certid_st = type opaque
%struct.X509_extension_st = type opaque
%struct.ossl_cmp_certresponse_st = type { %struct.asn1_string_st*, %struct.ossl_cmp_pkisi_st*, %struct.ossl_cmp_certifiedkeypair_st*, %struct.asn1_string_st* }
%struct.ossl_cmp_certifiedkeypair_st = type { %struct.ossl_cmp_certorenccert_st*, %struct.ossl_crmf_encryptedvalue_st*, %struct.ossl_crmf_pkipublicationinfo_st* }
%struct.ossl_cmp_certorenccert_st = type { i32, %union.anon.3 }
%union.anon.3 = type { %struct.x509_st* }
%struct.ossl_crmf_encryptedvalue_st = type opaque
%struct.ossl_crmf_pkipublicationinfo_st = type opaque
%struct.ossl_cmp_revdetails_st = type { %struct.ossl_crmf_certtemplate_st*, %struct.stack_st_X509_EXTENSION* }
%struct.ossl_cmp_itav_st = type { %struct.asn1_object_st*, %union.anon.4 }
%union.anon.4 = type { i8* }
%struct.ossl_cmp_certstatus_st = type { %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.ossl_cmp_pkisi_st* }
%struct.stack_st_OSSL_CMP_CERTSTATUS = type opaque
%struct.ossl_cmp_pollreq_st = type { %struct.asn1_string_st* }
%struct.ossl_cmp_pollrep_st = type { %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.stack_st_ASN1_UTF8STRING* }

@.str = private unnamed_addr constant [21 x i8] c"crypto/cmp/cmp_msg.c\00", align 1
@__func__.OSSL_CMP_MSG_get0_header = private unnamed_addr constant [25 x i8] c"OSSL_CMP_MSG_get0_header\00", align 1
@reltable.ossl_cmp_bodytype_to_string = internal unnamed_addr constant [27 x i32] [i32 trunc (i64 sub (i64 ptrtoint ([3 x i8]* @.str.1 to i64), i64 ptrtoint ([27 x i32]* @reltable.ossl_cmp_bodytype_to_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([3 x i8]* @.str.2 to i64), i64 ptrtoint ([27 x i32]* @reltable.ossl_cmp_bodytype_to_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([3 x i8]* @.str.3 to i64), i64 ptrtoint ([27 x i32]* @reltable.ossl_cmp_bodytype_to_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([3 x i8]* @.str.4 to i64), i64 ptrtoint ([27 x i32]* @reltable.ossl_cmp_bodytype_to_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([6 x i8]* @.str.5 to i64), i64 ptrtoint ([27 x i32]* @reltable.ossl_cmp_bodytype_to_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([8 x i8]* @.str.6 to i64), i64 ptrtoint ([27 x i32]* @reltable.ossl_cmp_bodytype_to_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([8 x i8]* @.str.7 to i64), i64 ptrtoint ([27 x i32]* @reltable.ossl_cmp_bodytype_to_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([4 x i8]* @.str.8 to i64), i64 ptrtoint ([27 x i32]* @reltable.ossl_cmp_bodytype_to_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([4 x i8]* @.str.9 to i64), i64 ptrtoint ([27 x i32]* @reltable.ossl_cmp_bodytype_to_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([4 x i8]* @.str.10 to i64), i64 ptrtoint ([27 x i32]* @reltable.ossl_cmp_bodytype_to_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([4 x i8]* @.str.11 to i64), i64 ptrtoint ([27 x i32]* @reltable.ossl_cmp_bodytype_to_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([3 x i8]* @.str.12 to i64), i64 ptrtoint ([27 x i32]* @reltable.ossl_cmp_bodytype_to_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([3 x i8]* @.str.13 to i64), i64 ptrtoint ([27 x i32]* @reltable.ossl_cmp_bodytype_to_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([4 x i8]* @.str.14 to i64), i64 ptrtoint ([27 x i32]* @reltable.ossl_cmp_bodytype_to_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([4 x i8]* @.str.15 to i64), i64 ptrtoint ([27 x i32]* @reltable.ossl_cmp_bodytype_to_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([7 x i8]* @.str.16 to i64), i64 ptrtoint ([27 x i32]* @reltable.ossl_cmp_bodytype_to_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([5 x i8]* @.str.17 to i64), i64 ptrtoint ([27 x i32]* @reltable.ossl_cmp_bodytype_to_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([5 x i8]* @.str.18 to i64), i64 ptrtoint ([27 x i32]* @reltable.ossl_cmp_bodytype_to_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([7 x i8]* @.str.19 to i64), i64 ptrtoint ([27 x i32]* @reltable.ossl_cmp_bodytype_to_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([8 x i8]* @.str.20 to i64), i64 ptrtoint ([27 x i32]* @reltable.ossl_cmp_bodytype_to_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([7 x i8]* @.str.21 to i64), i64 ptrtoint ([27 x i32]* @reltable.ossl_cmp_bodytype_to_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([5 x i8]* @.str.22 to i64), i64 ptrtoint ([27 x i32]* @reltable.ossl_cmp_bodytype_to_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([5 x i8]* @.str.23 to i64), i64 ptrtoint ([27 x i32]* @reltable.ossl_cmp_bodytype_to_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([6 x i8]* @.str.24 to i64), i64 ptrtoint ([27 x i32]* @reltable.ossl_cmp_bodytype_to_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([9 x i8]* @.str.25 to i64), i64 ptrtoint ([27 x i32]* @reltable.ossl_cmp_bodytype_to_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([8 x i8]* @.str.26 to i64), i64 ptrtoint ([27 x i32]* @reltable.ossl_cmp_bodytype_to_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([8 x i8]* @.str.27 to i64), i64 ptrtoint ([27 x i32]* @reltable.ossl_cmp_bodytype_to_string to i64)) to i32)], align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"IR\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"IP\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"CR\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"CP\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"P10CR\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"POPDECC\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"POPDECR\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"KUR\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"KUP\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"KRR\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"KRP\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"RR\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"RP\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"CCR\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"CCP\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"CKUANN\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"CANN\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"RANN\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"CRLANN\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"PKICONF\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"NESTED\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"GENM\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"GENP\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"ERROR\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"CERTCONF\00", align 1
@.str.26 = private unnamed_addr constant [8 x i8] c"POLLREQ\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"POLLREP\00", align 1
@.str.28 = private unnamed_addr constant [18 x i8] c"illegal body type\00", align 1
@__func__.ossl_cmp_msg_create = private unnamed_addr constant [20 x i8] c"ossl_cmp_msg_create\00", align 1
@__func__.OSSL_CMP_CTX_setup_CRM = private unnamed_addr constant [23 x i8] c"OSSL_CMP_CTX_setup_CRM\00", align 1
@__func__.ossl_cmp_certreq_new = private unnamed_addr constant [21 x i8] c"ossl_cmp_certreq_new\00", align 1
@__func__.ossl_cmp_certrep_new = private unnamed_addr constant [21 x i8] c"ossl_cmp_certrep_new\00", align 1
@__func__.ossl_cmp_rr_new = private unnamed_addr constant [16 x i8] c"ossl_cmp_rr_new\00", align 1
@__func__.ossl_cmp_rp_new = private unnamed_addr constant [16 x i8] c"ossl_cmp_rp_new\00", align 1
@__func__.ossl_cmp_pkiconf_new = private unnamed_addr constant [21 x i8] c"ossl_cmp_pkiconf_new\00", align 1
@__func__.ossl_cmp_msg_gen_push0_ITAV = private unnamed_addr constant [28 x i8] c"ossl_cmp_msg_gen_push0_ITAV\00", align 1
@__func__.ossl_cmp_error_new = private unnamed_addr constant [19 x i8] c"ossl_cmp_error_new\00", align 1
@__func__.ossl_cmp_certConf_new = private unnamed_addr constant [22 x i8] c"ossl_cmp_certConf_new\00", align 1
@__func__.ossl_cmp_pollReq_new = private unnamed_addr constant [21 x i8] c"ossl_cmp_pollReq_new\00", align 1
@__func__.ossl_cmp_pollRep_new = private unnamed_addr constant [21 x i8] c"ossl_cmp_pollRep_new\00", align 1
@__func__.ossl_cmp_revrepcontent_get_pkisi = private unnamed_addr constant [33 x i8] c"ossl_cmp_revrepcontent_get_pkisi\00", align 1
@__func__.ossl_cmp_revrepcontent_get_CertId = private unnamed_addr constant [34 x i8] c"ossl_cmp_revrepcontent_get_CertId\00", align 1
@__func__.ossl_cmp_pollrepcontent_get0_pollrep = private unnamed_addr constant [37 x i8] c"ossl_cmp_pollrepcontent_get0_pollrep\00", align 1
@.str.29 = private unnamed_addr constant [24 x i8] c"expected certReqId = %d\00", align 1
@__func__.ossl_cmp_certrepmessage_get0_certresponse = private unnamed_addr constant [42 x i8] c"ossl_cmp_certrepmessage_get0_certresponse\00", align 1
@__func__.ossl_cmp_certresponse_get1_cert = private unnamed_addr constant [32 x i8] c"ossl_cmp_certresponse_get1_cert\00", align 1
@__func__.OSSL_CMP_MSG_update_transactionID = private unnamed_addr constant [34 x i8] c"OSSL_CMP_MSG_update_transactionID\00", align 1
@__func__.OSSL_CMP_MSG_read = private unnamed_addr constant [18 x i8] c"OSSL_CMP_MSG_read\00", align 1
@.str.30 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@__func__.OSSL_CMP_MSG_write = private unnamed_addr constant [19 x i8] c"OSSL_CMP_MSG_write\00", align 1
@.str.31 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@__func__.gen_new = private unnamed_addr constant [8 x i8] c"gen_new\00", align 1
@__func__.suitable_rid = private unnamed_addr constant [13 x i8] c"suitable_rid\00", align 1

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_cmp_msg_st* @OSSL_CMP_MSG_new(%struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.ASN1_ITEM_st* @OSSL_CMP_MSG_it() #8
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_new_ex(%struct.ASN1_ITEM_st* noundef %call, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) #8
  %0 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.ossl_cmp_msg_st*
  %call2 = tail call i32 @ossl_cmp_msg_set0_libctx(%struct.ossl_cmp_msg_st* noundef %0, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) #9
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @OSSL_CMP_MSG_free(%struct.ossl_cmp_msg_st* noundef %0) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %msg.0 = phi %struct.ossl_cmp_msg_st* [ %0, %entry ], [ null, %if.then ]
  ret %struct.ossl_cmp_msg_st* %msg.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare %struct.ASN1_VALUE_st* @ASN1_item_new_ex(%struct.ASN1_ITEM_st* noundef, %struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #2

declare %struct.ASN1_ITEM_st* @OSSL_CMP_MSG_it() local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_cmp_msg_set0_libctx(%struct.ossl_cmp_msg_st* noundef %msg, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq %struct.ossl_cmp_msg_st* %msg, null
  br i1 %cmp.not, label %if.end11, label %if.then

if.then:                                          ; preds = %entry
  %libctx1 = getelementptr inbounds %struct.ossl_cmp_msg_st, %struct.ossl_cmp_msg_st* %msg, i64 0, i32 4
  store %struct.ossl_lib_ctx_st* %libctx, %struct.ossl_lib_ctx_st** %libctx1, align 8, !tbaa !4
  %propq2 = getelementptr inbounds %struct.ossl_cmp_msg_st, %struct.ossl_cmp_msg_st* %msg, i64 0, i32 5
  %0 = load i8*, i8** %propq2, align 8, !tbaa !9
  tail call void @CRYPTO_free(i8* noundef %0, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 51) #8
  store i8* null, i8** %propq2, align 8, !tbaa !9
  %cmp4.not = icmp eq i8* %propq, null
  br i1 %cmp4.not, label %if.end11, label %if.then5

if.then5:                                         ; preds = %if.then
  %call = tail call i8* @CRYPTO_strdup(i8* noundef nonnull %propq, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 54) #8
  store i8* %call, i8** %propq2, align 8, !tbaa !9
  %cmp8 = icmp eq i8* %call, null
  br i1 %cmp8, label %return, label %if.end11

if.end11:                                         ; preds = %if.then, %if.then5, %entry
  br label %return

return:                                           ; preds = %if.then5, %if.end11
  %retval.0 = phi i32 [ 1, %if.end11 ], [ 0, %if.then5 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define void @OSSL_CMP_MSG_free(%struct.ossl_cmp_msg_st* noundef %msg) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.ossl_cmp_msg_st* %msg to %struct.ASN1_VALUE_st*
  %call = tail call %struct.ASN1_ITEM_st* @OSSL_CMP_MSG_it() #8
  tail call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef %0, %struct.ASN1_ITEM_st* noundef %call) #8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

declare void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i8* @CRYPTO_strdup(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_cmp_pkiheader_st* @OSSL_CMP_MSG_get0_header(%struct.ossl_cmp_msg_st* noundef readonly %msg) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.ossl_cmp_msg_st* %msg, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 66, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.OSSL_CMP_MSG_get0_header, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 103, i8* noundef null) #8
  br label %return

if.end:                                           ; preds = %entry
  %header = getelementptr inbounds %struct.ossl_cmp_msg_st, %struct.ossl_cmp_msg_st* %msg, i64 0, i32 0
  %0 = load %struct.ossl_cmp_pkiheader_st*, %struct.ossl_cmp_pkiheader_st** %header, align 8, !tbaa !10
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi %struct.ossl_cmp_pkiheader_st* [ null, %if.then ], [ %0, %if.end ]
  ret %struct.ossl_cmp_pkiheader_st* %retval.0
}

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define i8* @ossl_cmp_bodytype_to_string(i32 noundef %type) local_unnamed_addr #3 {
entry:
  %0 = icmp ugt i32 %type, 26
  br i1 %0, label %return, label %if.end

if.end:                                           ; preds = %entry
  %idxprom4 = zext i32 %type to i64
  %reltable.shift = shl i64 %idxprom4, 2
  %reltable.intrinsic = call i8* @llvm.load.relative.i64(i8* bitcast ([27 x i32]* @reltable.ossl_cmp_bodytype_to_string to i8*), i64 %reltable.shift)
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i8* [ %reltable.intrinsic, %if.end ], [ getelementptr inbounds ([18 x i8], [18 x i8]* @.str.28, i64 0, i64 0), %entry ]
  ret i8* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define i32 @ossl_cmp_msg_set_bodytype(%struct.ossl_cmp_msg_st* noundef readonly %msg, i32 noundef %type) local_unnamed_addr #4 {
entry:
  %cmp.not = icmp eq %struct.ossl_cmp_msg_st* %msg, null
  br i1 %cmp.not, label %return, label %land.rhs

land.rhs:                                         ; preds = %entry
  %body = getelementptr inbounds %struct.ossl_cmp_msg_st, %struct.ossl_cmp_msg_st* %msg, i64 0, i32 1
  %0 = load %struct.ossl_cmp_pkibody_st*, %struct.ossl_cmp_pkibody_st** %body, align 8, !tbaa !11
  %cmp1.not = icmp eq %struct.ossl_cmp_pkibody_st* %0, null
  br i1 %cmp1.not, label %return, label %if.end

if.end:                                           ; preds = %land.rhs
  %type4 = getelementptr inbounds %struct.ossl_cmp_pkibody_st, %struct.ossl_cmp_pkibody_st* %0, i64 0, i32 0
  store i32 %type, i32* %type4, align 8, !tbaa !12
  br label %return

return:                                           ; preds = %entry, %land.rhs, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %land.rhs ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @OSSL_CMP_MSG_get_bodytype(%struct.ossl_cmp_msg_st* noundef readonly %msg) local_unnamed_addr #5 {
entry:
  %cmp.not = icmp eq %struct.ossl_cmp_msg_st* %msg, null
  br i1 %cmp.not, label %return, label %land.rhs

land.rhs:                                         ; preds = %entry
  %body = getelementptr inbounds %struct.ossl_cmp_msg_st, %struct.ossl_cmp_msg_st* %msg, i64 0, i32 1
  %0 = load %struct.ossl_cmp_pkibody_st*, %struct.ossl_cmp_pkibody_st** %body, align 8, !tbaa !11
  %cmp1.not = icmp eq %struct.ossl_cmp_pkibody_st* %0, null
  br i1 %cmp1.not, label %return, label %if.end

if.end:                                           ; preds = %land.rhs
  %type = getelementptr inbounds %struct.ossl_cmp_pkibody_st, %struct.ossl_cmp_pkibody_st* %0, i64 0, i32 0
  %1 = load i32, i32* %type, align 8, !tbaa !12
  br label %return

return:                                           ; preds = %entry, %land.rhs, %if.end
  %retval.0 = phi i32 [ %1, %if.end ], [ -1, %land.rhs ], [ -1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_cmp_msg_st* @ossl_cmp_msg_create(%struct.ossl_cmp_ctx_st* noundef %ctx, i32 noundef %bodytype) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq %struct.ossl_cmp_ctx_st* %ctx, null
  br i1 %cmp.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %libctx = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 0
  %0 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !15
  %propq = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 1
  %1 = load i8*, i8** %propq, align 8, !tbaa !18
  %call = tail call %struct.ossl_cmp_msg_st* @OSSL_CMP_MSG_new(%struct.ossl_lib_ctx_st* noundef %0, i8* noundef %1) #9
  %cmp3 = icmp eq %struct.ossl_cmp_msg_st* %call, null
  br i1 %cmp3, label %cleanup, label %if.end6

if.end6:                                          ; preds = %if.end
  %header = getelementptr inbounds %struct.ossl_cmp_msg_st, %struct.ossl_cmp_msg_st* %call, i64 0, i32 0
  %2 = load %struct.ossl_cmp_pkiheader_st*, %struct.ossl_cmp_pkiheader_st** %header, align 8, !tbaa !10
  %call7 = tail call i32 @ossl_cmp_hdr_init(%struct.ossl_cmp_ctx_st* noundef nonnull %ctx, %struct.ossl_cmp_pkiheader_st* noundef %2) #8
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end6
  %call8 = tail call i32 @ossl_cmp_msg_set_bodytype(%struct.ossl_cmp_msg_st* noundef nonnull %call, i32 noundef %bodytype) #9
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %err, label %if.end11

if.end11:                                         ; preds = %lor.lhs.false
  %geninfo_ITAVs = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 42
  %3 = load %struct.stack_st_OSSL_CMP_ITAV*, %struct.stack_st_OSSL_CMP_ITAV** %geninfo_ITAVs, align 8, !tbaa !19
  %cmp12.not = icmp eq %struct.stack_st_OSSL_CMP_ITAV* %3, null
  br i1 %cmp12.not, label %if.end19, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end11
  %4 = load %struct.ossl_cmp_pkiheader_st*, %struct.ossl_cmp_pkiheader_st** %header, align 8, !tbaa !10
  %call16 = tail call i32 @ossl_cmp_hdr_generalInfo_push1_items(%struct.ossl_cmp_pkiheader_st* noundef %4, %struct.stack_st_OSSL_CMP_ITAV* noundef nonnull %3) #8
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %err, label %if.end19

if.end19:                                         ; preds = %land.lhs.true, %if.end11
  switch i32 %bodytype, label %err.sink.split [
    i32 0, label %sw.bb
    i32 2, label %sw.bb
    i32 7, label %sw.bb
    i32 4, label %sw.bb25
    i32 1, label %sw.bb38
    i32 3, label %sw.bb38
    i32 8, label %sw.bb38
    i32 11, label %sw.bb46
    i32 12, label %sw.bb54
    i32 24, label %sw.bb62
    i32 19, label %sw.bb70
    i32 25, label %sw.bb81
    i32 26, label %sw.bb89
    i32 21, label %sw.bb97
    i32 22, label %sw.bb97
    i32 23, label %sw.bb105
  ]

sw.bb:                                            ; preds = %if.end19, %if.end19, %if.end19
  %call20 = tail call %struct.stack_st_OSSL_CRMF_MSG* @OSSL_CRMF_MSGS_new() #8
  %body = getelementptr inbounds %struct.ossl_cmp_msg_st, %struct.ossl_cmp_msg_st* %call, i64 0, i32 1
  %5 = load %struct.ossl_cmp_pkibody_st*, %struct.ossl_cmp_pkibody_st** %body, align 8, !tbaa !11
  %ir = getelementptr inbounds %struct.ossl_cmp_pkibody_st, %struct.ossl_cmp_pkibody_st* %5, i64 0, i32 1, i32 0
  store %struct.stack_st_OSSL_CRMF_MSG* %call20, %struct.stack_st_OSSL_CRMF_MSG** %ir, align 8, !tbaa !20
  %cmp21 = icmp eq %struct.stack_st_OSSL_CRMF_MSG* %call20, null
  br i1 %cmp21, label %err, label %cleanup

sw.bb25:                                          ; preds = %if.end19
  %p10CSR = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 59
  %6 = load %struct.X509_req_st*, %struct.X509_req_st** %p10CSR, align 8, !tbaa !21
  %cmp26 = icmp eq %struct.X509_req_st* %6, null
  br i1 %cmp26, label %err.sink.split, label %if.end29

if.end29:                                         ; preds = %sw.bb25
  %call31 = tail call %struct.X509_req_st* @X509_REQ_dup(%struct.X509_req_st* noundef nonnull %6) #8
  %body32 = getelementptr inbounds %struct.ossl_cmp_msg_st, %struct.ossl_cmp_msg_st* %call, i64 0, i32 1
  %7 = load %struct.ossl_cmp_pkibody_st*, %struct.ossl_cmp_pkibody_st** %body32, align 8, !tbaa !11
  %value33 = getelementptr inbounds %struct.ossl_cmp_pkibody_st, %struct.ossl_cmp_pkibody_st* %7, i64 0, i32 1
  %p10cr = bitcast %union.anon.1* %value33 to %struct.X509_req_st**
  store %struct.X509_req_st* %call31, %struct.X509_req_st** %p10cr, align 8, !tbaa !20
  %cmp34 = icmp eq %struct.X509_req_st* %call31, null
  br i1 %cmp34, label %err, label %cleanup

sw.bb38:                                          ; preds = %if.end19, %if.end19, %if.end19
  %call39 = tail call %struct.ossl_cmp_certrepmessage_st* @OSSL_CMP_CERTREPMESSAGE_new() #8
  %body40 = getelementptr inbounds %struct.ossl_cmp_msg_st, %struct.ossl_cmp_msg_st* %call, i64 0, i32 1
  %8 = load %struct.ossl_cmp_pkibody_st*, %struct.ossl_cmp_pkibody_st** %body40, align 8, !tbaa !11
  %value41 = getelementptr inbounds %struct.ossl_cmp_pkibody_st, %struct.ossl_cmp_pkibody_st* %8, i64 0, i32 1
  %ip = bitcast %union.anon.1* %value41 to %struct.ossl_cmp_certrepmessage_st**
  store %struct.ossl_cmp_certrepmessage_st* %call39, %struct.ossl_cmp_certrepmessage_st** %ip, align 8, !tbaa !20
  %cmp42 = icmp eq %struct.ossl_cmp_certrepmessage_st* %call39, null
  br i1 %cmp42, label %err, label %cleanup

sw.bb46:                                          ; preds = %if.end19
  %call47 = tail call fastcc %struct.stack_st_OSSL_CMP_REVDETAILS* @sk_OSSL_CMP_REVDETAILS_new_null() #9
  %body48 = getelementptr inbounds %struct.ossl_cmp_msg_st, %struct.ossl_cmp_msg_st* %call, i64 0, i32 1
  %9 = load %struct.ossl_cmp_pkibody_st*, %struct.ossl_cmp_pkibody_st** %body48, align 8, !tbaa !11
  %value49 = getelementptr inbounds %struct.ossl_cmp_pkibody_st, %struct.ossl_cmp_pkibody_st* %9, i64 0, i32 1
  %rr = bitcast %union.anon.1* %value49 to %struct.stack_st_OSSL_CMP_REVDETAILS**
  store %struct.stack_st_OSSL_CMP_REVDETAILS* %call47, %struct.stack_st_OSSL_CMP_REVDETAILS** %rr, align 8, !tbaa !20
  %cmp50 = icmp eq %struct.stack_st_OSSL_CMP_REVDETAILS* %call47, null
  br i1 %cmp50, label %err, label %cleanup

sw.bb54:                                          ; preds = %if.end19
  %call55 = tail call %struct.ossl_cmp_revrepcontent_st* @OSSL_CMP_REVREPCONTENT_new() #8
  %body56 = getelementptr inbounds %struct.ossl_cmp_msg_st, %struct.ossl_cmp_msg_st* %call, i64 0, i32 1
  %10 = load %struct.ossl_cmp_pkibody_st*, %struct.ossl_cmp_pkibody_st** %body56, align 8, !tbaa !11
  %value57 = getelementptr inbounds %struct.ossl_cmp_pkibody_st, %struct.ossl_cmp_pkibody_st* %10, i64 0, i32 1
  %rp = bitcast %union.anon.1* %value57 to %struct.ossl_cmp_revrepcontent_st**
  store %struct.ossl_cmp_revrepcontent_st* %call55, %struct.ossl_cmp_revrepcontent_st** %rp, align 8, !tbaa !20
  %cmp58 = icmp eq %struct.ossl_cmp_revrepcontent_st* %call55, null
  br i1 %cmp58, label %err, label %cleanup

sw.bb62:                                          ; preds = %if.end19
  %call63 = tail call %struct.stack_st* @OPENSSL_sk_new_null() #8
  %body64 = getelementptr inbounds %struct.ossl_cmp_msg_st, %struct.ossl_cmp_msg_st* %call, i64 0, i32 1
  %11 = load %struct.ossl_cmp_pkibody_st*, %struct.ossl_cmp_pkibody_st** %body64, align 8, !tbaa !11
  %value65 = getelementptr inbounds %struct.ossl_cmp_pkibody_st, %struct.ossl_cmp_pkibody_st* %11, i64 0, i32 1
  %12 = bitcast %union.anon.1* %value65 to %struct.stack_st**
  store %struct.stack_st* %call63, %struct.stack_st** %12, align 8, !tbaa !20
  %cmp66 = icmp eq %struct.stack_st* %call63, null
  br i1 %cmp66, label %err, label %cleanup

sw.bb70:                                          ; preds = %if.end19
  %call71 = tail call %struct.asn1_type_st* @ASN1_TYPE_new() #8
  %body72 = getelementptr inbounds %struct.ossl_cmp_msg_st, %struct.ossl_cmp_msg_st* %call, i64 0, i32 1
  %13 = load %struct.ossl_cmp_pkibody_st*, %struct.ossl_cmp_pkibody_st** %body72, align 8, !tbaa !11
  %value73 = getelementptr inbounds %struct.ossl_cmp_pkibody_st, %struct.ossl_cmp_pkibody_st* %13, i64 0, i32 1
  %pkiconf = bitcast %union.anon.1* %value73 to %struct.asn1_type_st**
  store %struct.asn1_type_st* %call71, %struct.asn1_type_st** %pkiconf, align 8, !tbaa !20
  %cmp74 = icmp eq %struct.asn1_type_st* %call71, null
  br i1 %cmp74, label %err, label %if.end77

if.end77:                                         ; preds = %sw.bb70
  %14 = load %struct.ossl_cmp_pkibody_st*, %struct.ossl_cmp_pkibody_st** %body72, align 8, !tbaa !11
  %value79 = getelementptr inbounds %struct.ossl_cmp_pkibody_st, %struct.ossl_cmp_pkibody_st* %14, i64 0, i32 1
  %pkiconf80 = bitcast %union.anon.1* %value79 to %struct.asn1_type_st**
  %15 = load %struct.asn1_type_st*, %struct.asn1_type_st** %pkiconf80, align 8, !tbaa !20
  tail call void @ASN1_TYPE_set(%struct.asn1_type_st* noundef %15, i32 noundef 5, i8* noundef null) #8
  br label %cleanup

sw.bb81:                                          ; preds = %if.end19
  %call82 = tail call fastcc %struct.stack_st_OSSL_CMP_POLLREQ* @sk_OSSL_CMP_POLLREQ_new_null() #9
  %body83 = getelementptr inbounds %struct.ossl_cmp_msg_st, %struct.ossl_cmp_msg_st* %call, i64 0, i32 1
  %16 = load %struct.ossl_cmp_pkibody_st*, %struct.ossl_cmp_pkibody_st** %body83, align 8, !tbaa !11
  %value84 = getelementptr inbounds %struct.ossl_cmp_pkibody_st, %struct.ossl_cmp_pkibody_st* %16, i64 0, i32 1
  %pollReq = bitcast %union.anon.1* %value84 to %struct.stack_st_OSSL_CMP_POLLREQ**
  store %struct.stack_st_OSSL_CMP_POLLREQ* %call82, %struct.stack_st_OSSL_CMP_POLLREQ** %pollReq, align 8, !tbaa !20
  %cmp85 = icmp eq %struct.stack_st_OSSL_CMP_POLLREQ* %call82, null
  br i1 %cmp85, label %err, label %cleanup

sw.bb89:                                          ; preds = %if.end19
  %call90 = tail call fastcc %struct.stack_st_OSSL_CMP_POLLREP* @sk_OSSL_CMP_POLLREP_new_null() #9
  %body91 = getelementptr inbounds %struct.ossl_cmp_msg_st, %struct.ossl_cmp_msg_st* %call, i64 0, i32 1
  %17 = load %struct.ossl_cmp_pkibody_st*, %struct.ossl_cmp_pkibody_st** %body91, align 8, !tbaa !11
  %value92 = getelementptr inbounds %struct.ossl_cmp_pkibody_st, %struct.ossl_cmp_pkibody_st* %17, i64 0, i32 1
  %pollRep = bitcast %union.anon.1* %value92 to %struct.stack_st_OSSL_CMP_POLLREP**
  store %struct.stack_st_OSSL_CMP_POLLREP* %call90, %struct.stack_st_OSSL_CMP_POLLREP** %pollRep, align 8, !tbaa !20
  %cmp93 = icmp eq %struct.stack_st_OSSL_CMP_POLLREP* %call90, null
  br i1 %cmp93, label %err, label %cleanup

sw.bb97:                                          ; preds = %if.end19, %if.end19
  %call98 = tail call %struct.stack_st* @OPENSSL_sk_new_null() #8
  %body99 = getelementptr inbounds %struct.ossl_cmp_msg_st, %struct.ossl_cmp_msg_st* %call, i64 0, i32 1
  %18 = load %struct.ossl_cmp_pkibody_st*, %struct.ossl_cmp_pkibody_st** %body99, align 8, !tbaa !11
  %value100 = getelementptr inbounds %struct.ossl_cmp_pkibody_st, %struct.ossl_cmp_pkibody_st* %18, i64 0, i32 1
  %19 = bitcast %union.anon.1* %value100 to %struct.stack_st**
  store %struct.stack_st* %call98, %struct.stack_st** %19, align 8, !tbaa !20
  %cmp101 = icmp eq %struct.stack_st* %call98, null
  br i1 %cmp101, label %err, label %cleanup

sw.bb105:                                         ; preds = %if.end19
  %call106 = tail call %struct.ossl_cmp_errormsgcontent_st* @OSSL_CMP_ERRORMSGCONTENT_new() #8
  %body107 = getelementptr inbounds %struct.ossl_cmp_msg_st, %struct.ossl_cmp_msg_st* %call, i64 0, i32 1
  %20 = load %struct.ossl_cmp_pkibody_st*, %struct.ossl_cmp_pkibody_st** %body107, align 8, !tbaa !11
  %value108 = getelementptr inbounds %struct.ossl_cmp_pkibody_st, %struct.ossl_cmp_pkibody_st* %20, i64 0, i32 1
  %error = bitcast %union.anon.1* %value108 to %struct.ossl_cmp_errormsgcontent_st**
  store %struct.ossl_cmp_errormsgcontent_st* %call106, %struct.ossl_cmp_errormsgcontent_st** %error, align 8, !tbaa !20
  %cmp109 = icmp eq %struct.ossl_cmp_errormsgcontent_st* %call106, null
  br i1 %cmp109, label %err, label %cleanup

err.sink.split:                                   ; preds = %if.end19, %sw.bb25
  %.sink149 = phi i32 [ 188, %sw.bb25 ], [ 243, %if.end19 ]
  %.sink = phi i32 [ 121, %sw.bb25 ], [ 133, %if.end19 ]
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef %.sink149, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.ossl_cmp_msg_create, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef %.sink, i8* noundef null) #8
  br label %err

err:                                              ; preds = %err.sink.split, %sw.bb105, %sw.bb97, %sw.bb89, %sw.bb81, %sw.bb70, %sw.bb62, %sw.bb54, %sw.bb46, %sw.bb38, %if.end29, %sw.bb, %land.lhs.true, %if.end6, %lor.lhs.false
  tail call void @OSSL_CMP_MSG_free(%struct.ossl_cmp_msg_st* noundef nonnull %call) #9
  br label %cleanup

cleanup:                                          ; preds = %sw.bb105, %sw.bb97, %sw.bb89, %sw.bb81, %sw.bb62, %sw.bb54, %sw.bb46, %sw.bb38, %if.end29, %sw.bb, %if.end, %entry, %err, %if.end77
  %retval.0 = phi %struct.ossl_cmp_msg_st* [ null, %err ], [ %call, %if.end77 ], [ null, %entry ], [ null, %if.end ], [ %call, %sw.bb ], [ %call, %if.end29 ], [ %call, %sw.bb38 ], [ %call, %sw.bb46 ], [ %call, %sw.bb54 ], [ %call, %sw.bb62 ], [ %call, %sw.bb81 ], [ %call, %sw.bb89 ], [ %call, %sw.bb97 ], [ %call, %sw.bb105 ]
  ret %struct.ossl_cmp_msg_st* %retval.0
}

declare i32 @ossl_cmp_hdr_init(%struct.ossl_cmp_ctx_st* noundef, %struct.ossl_cmp_pkiheader_st* noundef) local_unnamed_addr #2

declare i32 @ossl_cmp_hdr_generalInfo_push1_items(%struct.ossl_cmp_pkiheader_st* noundef, %struct.stack_st_OSSL_CMP_ITAV* noundef) local_unnamed_addr #2

declare %struct.stack_st_OSSL_CRMF_MSG* @OSSL_CRMF_MSGS_new() local_unnamed_addr #2

declare %struct.X509_req_st* @X509_REQ_dup(%struct.X509_req_st* noundef) local_unnamed_addr #2

declare %struct.ossl_cmp_certrepmessage_st* @OSSL_CMP_CERTREPMESSAGE_new() local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.stack_st_OSSL_CMP_REVDETAILS* @sk_OSSL_CMP_REVDETAILS_new_null() unnamed_addr #0 {
entry:
  %call = tail call %struct.stack_st* @OPENSSL_sk_new_null() #8
  %0 = bitcast %struct.stack_st* %call to %struct.stack_st_OSSL_CMP_REVDETAILS*
  ret %struct.stack_st_OSSL_CMP_REVDETAILS* %0
}

declare %struct.ossl_cmp_revrepcontent_st* @OSSL_CMP_REVREPCONTENT_new() local_unnamed_addr #2

declare %struct.stack_st* @OPENSSL_sk_new_null() local_unnamed_addr #2

declare %struct.asn1_type_st* @ASN1_TYPE_new() local_unnamed_addr #2

declare void @ASN1_TYPE_set(%struct.asn1_type_st* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.stack_st_OSSL_CMP_POLLREQ* @sk_OSSL_CMP_POLLREQ_new_null() unnamed_addr #0 {
entry:
  %call = tail call %struct.stack_st* @OPENSSL_sk_new_null() #8
  %0 = bitcast %struct.stack_st* %call to %struct.stack_st_OSSL_CMP_POLLREQ*
  ret %struct.stack_st_OSSL_CMP_POLLREQ* %0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.stack_st_OSSL_CMP_POLLREP* @sk_OSSL_CMP_POLLREP_new_null() unnamed_addr #0 {
entry:
  %call = tail call %struct.stack_st* @OPENSSL_sk_new_null() #8
  %0 = bitcast %struct.stack_st* %call to %struct.stack_st_OSSL_CMP_POLLREP*
  ret %struct.stack_st_OSSL_CMP_POLLREP* %0
}

declare %struct.ossl_cmp_errormsgcontent_st* @OSSL_CMP_ERRORMSGCONTENT_new() local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_crmf_msg_st* @OSSL_CMP_CTX_setup_CRM(%struct.ossl_cmp_ctx_st* noundef %ctx, i32 noundef %for_KUR, i32 noundef %rid) local_unnamed_addr #0 {
entry:
  %exts = alloca %struct.stack_st_X509_EXTENSION*, align 8
  %oldCert = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 58
  %0 = load %struct.x509_st*, %struct.x509_st** %oldCert, align 8, !tbaa !22
  %cmp.not = icmp eq %struct.x509_st* %0, null
  br i1 %cmp.not, label %cond.false, label %cond.end

cond.false:                                       ; preds = %entry
  %cert = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 27
  %1 = load %struct.x509_st*, %struct.x509_st** %cert, align 8, !tbaa !23
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.false
  %cond = phi %struct.x509_st* [ %1, %cond.false ], [ %0, %entry ]
  %call = tail call %struct.evp_pkey_st* @OSSL_CMP_CTX_get0_newPkey(%struct.ossl_cmp_ctx_st* noundef nonnull %ctx, i32 noundef 0) #8
  %p10CSR = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 59
  %2 = load %struct.X509_req_st*, %struct.X509_req_st** %p10CSR, align 8, !tbaa !21
  %cmp2.not = icmp eq %struct.X509_req_st* %2, null
  br i1 %cmp2.not, label %cond.false6, label %cond.true3

cond.true3:                                       ; preds = %cond.end
  %call5 = tail call %struct.X509_name_st* @X509_REQ_get_subject_name(%struct.X509_req_st* noundef nonnull %2) #8
  br label %cond.end13

cond.false6:                                      ; preds = %cond.end
  %cmp7.not = icmp eq %struct.x509_st* %cond, null
  br i1 %cmp7.not, label %cond.end13, label %cond.true8

cond.true8:                                       ; preds = %cond.false6
  %call9 = tail call %struct.X509_name_st* @X509_get_subject_name(%struct.x509_st* noundef nonnull %cond) #8
  br label %cond.end13

cond.end13:                                       ; preds = %cond.true8, %cond.false6, %cond.true3
  %cond14 = phi %struct.X509_name_st* [ %call5, %cond.true3 ], [ %call9, %cond.true8 ], [ null, %cond.false6 ]
  %call15 = tail call fastcc %struct.X509_name_st* @determine_subj(%struct.ossl_cmp_ctx_st* noundef nonnull %ctx, %struct.X509_name_st* noundef %cond14, i32 noundef %for_KUR) #9
  %issuer16 = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 48
  %3 = load %struct.X509_name_st*, %struct.X509_name_st** %issuer16, align 8, !tbaa !24
  %cmp17 = icmp ne %struct.X509_name_st* %3, null
  %cmp18 = icmp eq %struct.x509_st* %cond, null
  %or.cond = select i1 %cmp17, i1 true, i1 %cmp18
  br i1 %or.cond, label %cond.true19, label %cond.false28

cond.true19:                                      ; preds = %cond.end13
  %call21 = tail call %struct.X509_name_entry_st* @X509_NAME_get_entry(%struct.X509_name_st* noundef %3, i32 noundef 0) #8
  %cmp22 = icmp eq %struct.X509_name_entry_st* %call21, null
  br i1 %cmp22, label %cond.end30, label %cond.false24

cond.false24:                                     ; preds = %cond.true19
  %4 = load %struct.X509_name_st*, %struct.X509_name_st** %issuer16, align 8, !tbaa !24
  br label %cond.end30

cond.false28:                                     ; preds = %cond.end13
  %call29 = tail call %struct.X509_name_st* @X509_get_issuer_name(%struct.x509_st* noundef nonnull %cond) #8
  br label %cond.end30

cond.end30:                                       ; preds = %cond.false24, %cond.true19, %cond.false28
  %cond31 = phi %struct.X509_name_st* [ %call29, %cond.false28 ], [ %4, %cond.false24 ], [ null, %cond.true19 ]
  %setSubjectAltNameCritical = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 53
  %5 = load i32, i32* %setSubjectAltNameCritical, align 4, !tbaa !25
  %tobool = icmp ne i32 %5, 0
  %cmp32 = icmp eq %struct.X509_name_st* %call15, null
  %6 = select i1 %tobool, i1 true, i1 %cmp32
  %lor.ext = zext i1 %6 to i32
  %7 = bitcast %struct.stack_st_X509_EXTENSION** %exts to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #10
  store %struct.stack_st_X509_EXTENSION* null, %struct.stack_st_X509_EXTENSION** %exts, align 8, !tbaa !26
  %cmp33 = icmp eq %struct.evp_pkey_st* %call, null
  br i1 %cmp33, label %land.lhs.true, label %if.end43

land.lhs.true:                                    ; preds = %cond.end30
  %8 = load %struct.X509_req_st*, %struct.X509_req_st** %p10CSR, align 8, !tbaa !21
  %cmp35.not = icmp eq %struct.X509_req_st* %8, null
  br i1 %cmp35.not, label %if.end40, label %if.end

if.end:                                           ; preds = %land.lhs.true
  %call37 = tail call %struct.evp_pkey_st* @X509_REQ_get0_pubkey(%struct.X509_req_st* noundef nonnull %8) #8
  %cmp38 = icmp eq %struct.evp_pkey_st* %call37, null
  br i1 %cmp38, label %if.end40, label %if.end43

if.end40:                                         ; preds = %land.lhs.true, %if.end
  %pkey = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 29
  %9 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey, align 8, !tbaa !27
  %cmp41 = icmp eq %struct.evp_pkey_st* %9, null
  br i1 %cmp41, label %if.then42, label %if.end43

if.then42:                                        ; preds = %if.end40
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 296, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.OSSL_CMP_CTX_setup_CRM, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 103, i8* noundef null) #8
  br label %cleanup160

if.end43:                                         ; preds = %cond.end30, %if.end, %if.end40
  %rkey.1261 = phi %struct.evp_pkey_st* [ %9, %if.end40 ], [ %call37, %if.end ], [ %call, %cond.end30 ]
  %tobool44 = icmp ne i32 %for_KUR, 0
  %or.cond169 = select i1 %tobool44, i1 %cmp18, i1 false
  br i1 %or.cond169, label %land.lhs.true47, label %if.end51

land.lhs.true47:                                  ; preds = %if.end43
  %10 = load %struct.X509_req_st*, %struct.X509_req_st** %p10CSR, align 8, !tbaa !21
  %cmp49 = icmp eq %struct.X509_req_st* %10, null
  br i1 %cmp49, label %if.then50, label %if.end51

if.then50:                                        ; preds = %land.lhs.true47
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 301, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.OSSL_CMP_CTX_setup_CRM, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 168, i8* noundef null) #8
  br label %cleanup160

if.end51:                                         ; preds = %land.lhs.true47, %if.end43
  %call52 = tail call %struct.ossl_crmf_msg_st* @OSSL_CRMF_MSG_new() #8
  %cmp53 = icmp eq %struct.ossl_crmf_msg_st* %call52, null
  br i1 %cmp53, label %cleanup160, label %if.end55

if.end55:                                         ; preds = %if.end51
  %call56 = tail call i32 @OSSL_CRMF_MSG_set_certReqId(%struct.ossl_crmf_msg_st* noundef nonnull %call52, i32 noundef %rid) #8
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %err, label %lor.lhs.false58

lor.lhs.false58:                                  ; preds = %if.end55
  %call59 = tail call %struct.ossl_crmf_certtemplate_st* @OSSL_CRMF_MSG_get0_tmpl(%struct.ossl_crmf_msg_st* noundef nonnull %call52) #8
  %call60 = tail call i32 @OSSL_CRMF_CERTTEMPLATE_fill(%struct.ossl_crmf_certtemplate_st* noundef %call59, %struct.evp_pkey_st* noundef nonnull %rkey.1261, %struct.X509_name_st* noundef %call15, %struct.X509_name_st* noundef %cond31, %struct.asn1_string_st* noundef null) #8
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %err, label %if.end63

if.end63:                                         ; preds = %lor.lhs.false58
  %days = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 49
  %11 = load i32, i32* %days, align 8, !tbaa !28
  %cmp64.not = icmp eq i32 %11, 0
  br i1 %cmp64.not, label %if.end80, label %if.then65

if.then65:                                        ; preds = %if.end63
  %call66 = tail call i64 @time(i64* noundef null) #8
  %call67 = tail call %struct.asn1_string_st* @ASN1_TIME_adj(%struct.asn1_string_st* noundef null, i64 noundef %call66, i32 noundef 0, i64 noundef 0) #8
  %12 = load i32, i32* %days, align 8, !tbaa !28
  %call69 = tail call %struct.asn1_string_st* @ASN1_TIME_adj(%struct.asn1_string_st* noundef null, i64 noundef %call66, i32 noundef %12, i64 noundef 0) #8
  %cmp70 = icmp eq %struct.asn1_string_st* %call67, null
  %cmp72 = icmp eq %struct.asn1_string_st* %call69, null
  %or.cond170 = select i1 %cmp70, i1 true, i1 %cmp72
  br i1 %or.cond170, label %cleanup, label %lor.lhs.false73

lor.lhs.false73:                                  ; preds = %if.then65
  %call74 = tail call i32 @OSSL_CRMF_MSG_set0_validity(%struct.ossl_crmf_msg_st* noundef nonnull %call52, %struct.asn1_string_st* noundef nonnull %call67, %struct.asn1_string_st* noundef nonnull %call69) #8
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %cleanup, label %if.end80

cleanup:                                          ; preds = %if.then65, %lor.lhs.false73
  tail call void @ASN1_TIME_free(%struct.asn1_string_st* noundef %call67) #8
  tail call void @ASN1_TIME_free(%struct.asn1_string_st* noundef %call69) #8
  br label %err

if.end80:                                         ; preds = %lor.lhs.false73, %if.end63
  %cmp81 = icmp ne %struct.x509_st* %cond, null
  br i1 %cmp81, label %land.lhs.true82, label %if.end87

land.lhs.true82:                                  ; preds = %if.end80
  %SubjectAltName_nodefault = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 52
  %13 = load i32, i32* %SubjectAltName_nodefault, align 8, !tbaa !29
  %tobool83.not = icmp eq i32 %13, 0
  br i1 %tobool83.not, label %if.then84, label %if.end87

if.then84:                                        ; preds = %land.lhs.true82
  %call85 = tail call %struct.stack_st_X509_EXTENSION* @X509_get0_extensions(%struct.x509_st* noundef nonnull %cond) #8
  %call86 = tail call i8* @X509V3_get_d2i(%struct.stack_st_X509_EXTENSION* noundef %call85, i32 noundef 85, i32* noundef null, i32* noundef null) #8
  %14 = bitcast i8* %call86 to %struct.stack_st_GENERAL_NAME*
  br label %if.end87

if.end87:                                         ; preds = %if.then84, %land.lhs.true82, %if.end80
  %default_sans.0 = phi %struct.stack_st_GENERAL_NAME* [ null, %land.lhs.true82 ], [ %14, %if.then84 ], [ null, %if.end80 ]
  %15 = load %struct.X509_req_st*, %struct.X509_req_st** %p10CSR, align 8, !tbaa !21
  %cmp89.not = icmp eq %struct.X509_req_st* %15, null
  br i1 %cmp89.not, label %if.end95, label %land.lhs.true90

land.lhs.true90:                                  ; preds = %if.end87
  %call92 = tail call %struct.stack_st_X509_EXTENSION* @X509_REQ_get_extensions(%struct.X509_req_st* noundef nonnull %15) #8
  store %struct.stack_st_X509_EXTENSION* %call92, %struct.stack_st_X509_EXTENSION** %exts, align 8, !tbaa !26
  %cmp93 = icmp eq %struct.stack_st_X509_EXTENSION* %call92, null
  br i1 %cmp93, label %err, label %if.end95

if.end95:                                         ; preds = %land.lhs.true90, %if.end87
  %reqExtensions = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 54
  %16 = load %struct.stack_st_X509_EXTENSION*, %struct.stack_st_X509_EXTENSION** %reqExtensions, align 8, !tbaa !30
  %cmp96.not = icmp eq %struct.stack_st_X509_EXTENSION* %16, null
  br i1 %cmp96.not, label %if.end102, label %land.lhs.true97

land.lhs.true97:                                  ; preds = %if.end95
  %call99 = call fastcc i32 @add_extensions(%struct.stack_st_X509_EXTENSION** noundef nonnull %exts, %struct.stack_st_X509_EXTENSION* noundef nonnull %16) #9
  %tobool100.not = icmp eq i32 %call99, 0
  br i1 %tobool100.not, label %err, label %if.end102

if.end102:                                        ; preds = %land.lhs.true97, %if.end95
  %subjectAltNames = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 51
  %17 = load %struct.stack_st_GENERAL_NAME*, %struct.stack_st_GENERAL_NAME** %subjectAltNames, align 8, !tbaa !31
  %call103 = call fastcc %struct.stack_st* @ossl_check_const_GENERAL_NAME_sk_type(%struct.stack_st_GENERAL_NAME* noundef %17) #9
  %call104 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call103) #8
  %cmp105 = icmp sgt i32 %call104, 0
  br i1 %cmp105, label %land.lhs.true106, label %if.end111

land.lhs.true106:                                 ; preds = %if.end102
  %18 = bitcast %struct.stack_st_GENERAL_NAME** %subjectAltNames to i8**
  %19 = load i8*, i8** %18, align 8, !tbaa !31
  %call108 = call fastcc i32 @add1_extension(%struct.stack_st_X509_EXTENSION** noundef nonnull %exts, i32 noundef 85, i32 noundef %lor.ext, i8* noundef %19) #9
  %tobool109.not = icmp eq i32 %call108, 0
  br i1 %tobool109.not, label %err, label %if.end111

if.end111:                                        ; preds = %land.lhs.true106, %if.end102
  %20 = load %struct.stack_st_GENERAL_NAME*, %struct.stack_st_GENERAL_NAME** %subjectAltNames, align 8, !tbaa !31
  %call113 = call fastcc %struct.stack_st* @ossl_check_const_GENERAL_NAME_sk_type(%struct.stack_st_GENERAL_NAME* noundef %20) #9
  %call114 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call113) #8
  %cmp115 = icmp sgt i32 %call114, 0
  br i1 %cmp115, label %if.end125, label %lor.lhs.false116

lor.lhs.false116:                                 ; preds = %if.end111
  %call117 = call i32 @OSSL_CMP_CTX_reqExtensions_have_SAN(%struct.ossl_cmp_ctx_st* noundef nonnull %ctx) #8
  %cmp118 = icmp ne i32 %call117, 1
  %cmp120 = icmp ne %struct.stack_st_GENERAL_NAME* %default_sans.0, null
  %or.cond171 = select i1 %cmp118, i1 %cmp120, i1 false
  br i1 %or.cond171, label %land.lhs.true121, label %if.end125

land.lhs.true121:                                 ; preds = %lor.lhs.false116
  %21 = bitcast %struct.stack_st_GENERAL_NAME* %default_sans.0 to i8*
  %call122 = call fastcc i32 @add1_extension(%struct.stack_st_X509_EXTENSION** noundef nonnull %exts, i32 noundef 85, i32 noundef %lor.ext, i8* noundef nonnull %21) #9
  %tobool123.not = icmp eq i32 %call122, 0
  br i1 %tobool123.not, label %err, label %if.end125

if.end125:                                        ; preds = %land.lhs.true121, %lor.lhs.false116, %if.end111
  %policies = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 55
  %22 = load %struct.stack_st_POLICYINFO*, %struct.stack_st_POLICYINFO** %policies, align 8, !tbaa !32
  %cmp126.not = icmp eq %struct.stack_st_POLICYINFO* %22, null
  br i1 %cmp126.not, label %if.end132, label %land.lhs.true127

land.lhs.true127:                                 ; preds = %if.end125
  %setPoliciesCritical = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 56
  %23 = load i32, i32* %setPoliciesCritical, align 8, !tbaa !33
  %24 = bitcast %struct.stack_st_POLICYINFO* %22 to i8*
  %call129 = call fastcc i32 @add1_extension(%struct.stack_st_X509_EXTENSION** noundef nonnull %exts, i32 noundef 89, i32 noundef %23, i8* noundef nonnull %24) #9
  %tobool130.not = icmp eq i32 %call129, 0
  br i1 %tobool130.not, label %err, label %if.end132

if.end132:                                        ; preds = %land.lhs.true127, %if.end125
  %25 = load %struct.stack_st_X509_EXTENSION*, %struct.stack_st_X509_EXTENSION** %exts, align 8, !tbaa !26
  %call133 = call i32 @OSSL_CRMF_MSG_set0_extensions(%struct.ossl_crmf_msg_st* noundef nonnull %call52, %struct.stack_st_X509_EXTENSION* noundef %25) #8
  %tobool134.not = icmp eq i32 %call133, 0
  br i1 %tobool134.not, label %err, label %if.end136

if.end136:                                        ; preds = %if.end132
  store %struct.stack_st_X509_EXTENSION* null, %struct.stack_st_X509_EXTENSION** %exts, align 8, !tbaa !26
  %or.cond172 = select i1 %tobool44, i1 %cmp81, i1 false
  br i1 %or.cond172, label %if.then140, label %end

if.then140:                                       ; preds = %if.end136
  %call141 = call %struct.X509_name_st* @X509_get_issuer_name(%struct.x509_st* noundef nonnull %cond) #8
  %call142 = call %struct.asn1_string_st* @X509_get0_serialNumber(%struct.x509_st* noundef nonnull %cond) #8
  %call143 = call %struct.ossl_crmf_certid_st* @OSSL_CRMF_CERTID_gen(%struct.X509_name_st* noundef %call141, %struct.asn1_string_st* noundef %call142) #8
  %cmp144 = icmp eq %struct.ossl_crmf_certid_st* %call143, null
  br i1 %cmp144, label %err, label %if.end146

if.end146:                                        ; preds = %if.then140
  %call147 = call i32 @OSSL_CRMF_MSG_set1_regCtrl_oldCertID(%struct.ossl_crmf_msg_st* noundef nonnull %call52, %struct.ossl_crmf_certid_st* noundef nonnull %call143) #8
  call void @OSSL_CRMF_CERTID_free(%struct.ossl_crmf_certid_st* noundef nonnull %call143) #8
  %cmp148 = icmp eq i32 %call147, 0
  br i1 %cmp148, label %err, label %end

err:                                              ; preds = %if.end146, %if.then140, %cleanup, %if.end132, %land.lhs.true127, %land.lhs.true121, %land.lhs.true106, %land.lhs.true97, %land.lhs.true90, %if.end55, %lor.lhs.false58
  %default_sans.1 = phi %struct.stack_st_GENERAL_NAME* [ null, %cleanup ], [ %default_sans.0, %land.lhs.true90 ], [ %default_sans.0, %if.end132 ], [ %default_sans.0, %land.lhs.true127 ], [ %default_sans.0, %land.lhs.true121 ], [ %default_sans.0, %land.lhs.true106 ], [ %default_sans.0, %land.lhs.true97 ], [ null, %lor.lhs.false58 ], [ null, %if.end55 ], [ %default_sans.0, %if.then140 ], [ %default_sans.0, %if.end146 ]
  call void @OSSL_CRMF_MSG_free(%struct.ossl_crmf_msg_st* noundef nonnull %call52) #8
  br label %end

end:                                              ; preds = %if.end146, %if.end136, %err
  %default_sans.2 = phi %struct.stack_st_GENERAL_NAME* [ %default_sans.1, %err ], [ %default_sans.0, %if.end136 ], [ %default_sans.0, %if.end146 ]
  %crm.0 = phi %struct.ossl_crmf_msg_st* [ null, %err ], [ %call52, %if.end136 ], [ %call52, %if.end146 ]
  %26 = load %struct.stack_st_X509_EXTENSION*, %struct.stack_st_X509_EXTENSION** %exts, align 8, !tbaa !26
  %call156 = call fastcc %struct.stack_st* @ossl_check_X509_EXTENSION_sk_type(%struct.stack_st_X509_EXTENSION* noundef %26) #9
  call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call156, void (i8*)* noundef bitcast (void (%struct.X509_extension_st*)* @X509_EXTENSION_free to void (i8*)*)) #8
  %call158 = call fastcc %struct.stack_st* @ossl_check_GENERAL_NAME_sk_type(%struct.stack_st_GENERAL_NAME* noundef %default_sans.2) #9
  call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call158, void (i8*)* noundef bitcast (void (%struct.GENERAL_NAME_st*)* @GENERAL_NAME_free to void (i8*)*)) #8
  br label %cleanup160

cleanup160:                                       ; preds = %if.end51, %end, %if.then50, %if.then42
  %retval.0 = phi %struct.ossl_crmf_msg_st* [ null, %if.then42 ], [ null, %if.then50 ], [ %crm.0, %end ], [ null, %if.end51 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #10
  ret %struct.ossl_crmf_msg_st* %retval.0
}

declare %struct.evp_pkey_st* @OSSL_CMP_CTX_get0_newPkey(%struct.ossl_cmp_ctx_st* noundef, i32 noundef) local_unnamed_addr #2

declare %struct.X509_name_st* @X509_REQ_get_subject_name(%struct.X509_req_st* noundef) local_unnamed_addr #2

declare %struct.X509_name_st* @X509_get_subject_name(%struct.x509_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.X509_name_st* @determine_subj(%struct.ossl_cmp_ctx_st* noundef %ctx, %struct.X509_name_st* noundef readnone %ref_subj, i32 noundef %for_KUR) unnamed_addr #0 {
entry:
  %subjectName = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 50
  %0 = load %struct.X509_name_st*, %struct.X509_name_st** %subjectName, align 8, !tbaa !34
  %cmp.not = icmp eq %struct.X509_name_st* %0, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call %struct.X509_name_entry_st* @X509_NAME_get_entry(%struct.X509_name_st* noundef nonnull %0, i32 noundef 0) #8
  %cmp2 = icmp eq %struct.X509_name_entry_st* %call, null
  br i1 %cmp2, label %return, label %cond.false

cond.false:                                       ; preds = %if.then
  %1 = load %struct.X509_name_st*, %struct.X509_name_st** %subjectName, align 8, !tbaa !34
  br label %return

if.end:                                           ; preds = %entry
  %cmp4.not = icmp eq %struct.X509_name_st* %ref_subj, null
  br i1 %cmp4.not, label %if.end12, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %tobool.not = icmp eq i32 %for_KUR, 0
  br i1 %tobool.not, label %lor.lhs.false, label %return

lor.lhs.false:                                    ; preds = %land.lhs.true
  %subjectAltNames = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 51
  %2 = load %struct.stack_st_GENERAL_NAME*, %struct.stack_st_GENERAL_NAME** %subjectAltNames, align 8, !tbaa !31
  %call5 = tail call fastcc %struct.stack_st* @ossl_check_const_GENERAL_NAME_sk_type(%struct.stack_st_GENERAL_NAME* noundef %2) #9
  %call6 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call5) #8
  %cmp7 = icmp sgt i32 %call6, 0
  br i1 %cmp7, label %if.end12, label %lor.lhs.false8

lor.lhs.false8:                                   ; preds = %lor.lhs.false
  %call9 = tail call i32 @OSSL_CMP_CTX_reqExtensions_have_SAN(%struct.ossl_cmp_ctx_st* noundef nonnull %ctx) #8
  %cmp10 = icmp eq i32 %call9, 1
  br i1 %cmp10, label %if.end12, label %return

if.end12:                                         ; preds = %lor.lhs.false8, %lor.lhs.false, %if.end
  br label %return

return:                                           ; preds = %land.lhs.true, %lor.lhs.false8, %cond.false, %if.then, %if.end12
  %retval.0 = phi %struct.X509_name_st* [ null, %if.end12 ], [ %1, %cond.false ], [ null, %if.then ], [ %ref_subj, %lor.lhs.false8 ], [ %ref_subj, %land.lhs.true ]
  ret %struct.X509_name_st* %retval.0
}

declare %struct.X509_name_entry_st* @X509_NAME_get_entry(%struct.X509_name_st* noundef, i32 noundef) local_unnamed_addr #2

declare %struct.X509_name_st* @X509_get_issuer_name(%struct.x509_st* noundef) local_unnamed_addr #2

declare %struct.evp_pkey_st* @X509_REQ_get0_pubkey(%struct.X509_req_st* noundef) local_unnamed_addr #2

declare %struct.ossl_crmf_msg_st* @OSSL_CRMF_MSG_new() local_unnamed_addr #2

declare i32 @OSSL_CRMF_MSG_set_certReqId(%struct.ossl_crmf_msg_st* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @OSSL_CRMF_CERTTEMPLATE_fill(%struct.ossl_crmf_certtemplate_st* noundef, %struct.evp_pkey_st* noundef, %struct.X509_name_st* noundef, %struct.X509_name_st* noundef, %struct.asn1_string_st* noundef) local_unnamed_addr #2

declare %struct.ossl_crmf_certtemplate_st* @OSSL_CRMF_MSG_get0_tmpl(%struct.ossl_crmf_msg_st* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @time(i64* noundef) local_unnamed_addr #6

declare %struct.asn1_string_st* @ASN1_TIME_adj(%struct.asn1_string_st* noundef, i64 noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

declare i32 @OSSL_CRMF_MSG_set0_validity(%struct.ossl_crmf_msg_st* noundef, %struct.asn1_string_st* noundef, %struct.asn1_string_st* noundef) local_unnamed_addr #2

declare void @ASN1_TIME_free(%struct.asn1_string_st* noundef) local_unnamed_addr #2

declare i8* @X509V3_get_d2i(%struct.stack_st_X509_EXTENSION* noundef, i32 noundef, i32* noundef, i32* noundef) local_unnamed_addr #2

declare %struct.stack_st_X509_EXTENSION* @X509_get0_extensions(%struct.x509_st* noundef) local_unnamed_addr #2

declare %struct.stack_st_X509_EXTENSION* @X509_REQ_get_extensions(%struct.X509_req_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @add_extensions(%struct.stack_st_X509_EXTENSION** noundef %target, %struct.stack_st_X509_EXTENSION* noundef %exts) unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.stack_st_X509_EXTENSION** %target, null
  br i1 %cmp, label %cleanup19, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %call = tail call fastcc %struct.stack_st* @ossl_check_const_X509_EXTENSION_sk_type(%struct.stack_st_X509_EXTENSION* noundef %exts) #9
  %call135 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #8
  %cmp236 = icmp sgt i32 %call135, 0
  br i1 %cmp236, label %for.body, label %cleanup19

for.cond:                                         ; preds = %if.end13
  %call1 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #8
  %cmp2 = icmp slt i32 %inc, %call1
  br i1 %cmp2, label %for.body, label %cleanup19, !llvm.loop !35

for.body:                                         ; preds = %for.cond.preheader, %for.cond
  %i.037 = phi i32 [ %inc, %for.cond ], [ 0, %for.cond.preheader ]
  %call4 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call, i32 noundef %i.037) #8
  %0 = bitcast i8* %call4 to %struct.X509_extension_st*
  %call5 = tail call %struct.asn1_object_st* @X509_EXTENSION_get_object(%struct.X509_extension_st* noundef %0) #8
  %1 = load %struct.stack_st_X509_EXTENSION*, %struct.stack_st_X509_EXTENSION** %target, align 8, !tbaa !26
  %call6 = tail call i32 @X509v3_get_ext_by_OBJ(%struct.stack_st_X509_EXTENSION* noundef %1, %struct.asn1_object_st* noundef %call5, i32 noundef -1) #8
  %cmp7.not = icmp eq i32 %call6, -1
  br i1 %cmp7.not, label %if.end13, label %do.body

do.body:                                          ; preds = %for.body, %do.body
  %idx.0 = phi i32 [ %call11, %do.body ], [ %call6, %for.body ]
  %2 = load %struct.stack_st_X509_EXTENSION*, %struct.stack_st_X509_EXTENSION** %target, align 8, !tbaa !26
  %call9 = tail call fastcc %struct.stack_st* @ossl_check_X509_EXTENSION_sk_type(%struct.stack_st_X509_EXTENSION* noundef %2) #9
  %call10 = tail call i8* @OPENSSL_sk_delete(%struct.stack_st* noundef %call9, i32 noundef %idx.0) #8
  %3 = bitcast i8* %call10 to %struct.X509_extension_st*
  tail call void @X509_EXTENSION_free(%struct.X509_extension_st* noundef %3) #8
  %4 = load %struct.stack_st_X509_EXTENSION*, %struct.stack_st_X509_EXTENSION** %target, align 8, !tbaa !26
  %call11 = tail call i32 @X509v3_get_ext_by_OBJ(%struct.stack_st_X509_EXTENSION* noundef %4, %struct.asn1_object_st* noundef %call5, i32 noundef -1) #8
  %cmp12.not = icmp eq i32 %call11, -1
  br i1 %cmp12.not, label %if.end13, label %do.body, !llvm.loop !37

if.end13:                                         ; preds = %do.body, %for.body
  %call14 = tail call %struct.stack_st_X509_EXTENSION* @X509v3_add_ext(%struct.stack_st_X509_EXTENSION** noundef nonnull %target, %struct.X509_extension_st* noundef %0, i32 noundef -1) #8
  %tobool.not = icmp eq %struct.stack_st_X509_EXTENSION* %call14, null
  %inc = add nuw nsw i32 %i.037, 1
  br i1 %tobool.not, label %cleanup19, label %for.cond

cleanup19:                                        ; preds = %if.end13, %for.cond, %for.cond.preheader, %entry
  %retval.2 = phi i32 [ 0, %entry ], [ 1, %for.cond.preheader ], [ 0, %if.end13 ], [ 1, %for.cond ]
  ret i32 %retval.2
}

declare i32 @OPENSSL_sk_num(%struct.stack_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_GENERAL_NAME_sk_type(%struct.stack_st_GENERAL_NAME* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_GENERAL_NAME* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @add1_extension(%struct.stack_st_X509_EXTENSION** noundef %pexts, i32 noundef %nid, i32 noundef %crit, i8* noundef %ex) unnamed_addr #0 {
entry:
  %cmp.not = icmp eq %struct.stack_st_X509_EXTENSION** %pexts, null
  br i1 %cmp.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call %struct.X509_extension_st* @X509V3_EXT_i2d(i32 noundef %nid, i32 noundef %crit, i8* noundef %ex) #8
  %cmp3 = icmp eq %struct.X509_extension_st* %call, null
  br i1 %cmp3, label %cleanup, label %if.end6

if.end6:                                          ; preds = %if.end
  %call7 = tail call %struct.stack_st_X509_EXTENSION* @X509v3_add_ext(%struct.stack_st_X509_EXTENSION** noundef nonnull %pexts, %struct.X509_extension_st* noundef nonnull %call, i32 noundef 0) #8
  %cmp8 = icmp ne %struct.stack_st_X509_EXTENSION* %call7, null
  %conv9 = zext i1 %cmp8 to i32
  tail call void @X509_EXTENSION_free(%struct.X509_extension_st* noundef nonnull %call) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end6
  %retval.0 = phi i32 [ %conv9, %if.end6 ], [ 0, %entry ], [ 0, %if.end ]
  ret i32 %retval.0
}

declare i32 @OSSL_CMP_CTX_reqExtensions_have_SAN(%struct.ossl_cmp_ctx_st* noundef) local_unnamed_addr #2

declare i32 @OSSL_CRMF_MSG_set0_extensions(%struct.ossl_crmf_msg_st* noundef, %struct.stack_st_X509_EXTENSION* noundef) local_unnamed_addr #2

declare %struct.ossl_crmf_certid_st* @OSSL_CRMF_CERTID_gen(%struct.X509_name_st* noundef, %struct.asn1_string_st* noundef) local_unnamed_addr #2

declare %struct.asn1_string_st* @X509_get0_serialNumber(%struct.x509_st* noundef) local_unnamed_addr #2

declare i32 @OSSL_CRMF_MSG_set1_regCtrl_oldCertID(%struct.ossl_crmf_msg_st* noundef, %struct.ossl_crmf_certid_st* noundef) local_unnamed_addr #2

declare void @OSSL_CRMF_CERTID_free(%struct.ossl_crmf_certid_st* noundef) local_unnamed_addr #2

declare void @OSSL_CRMF_MSG_free(%struct.ossl_crmf_msg_st* noundef) local_unnamed_addr #2

declare void @OPENSSL_sk_pop_free(%struct.stack_st* noundef, void (i8*)* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_X509_EXTENSION_sk_type(%struct.stack_st_X509_EXTENSION* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_X509_EXTENSION* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare void @X509_EXTENSION_free(%struct.X509_extension_st* noundef) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_GENERAL_NAME_sk_type(%struct.stack_st_GENERAL_NAME* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_GENERAL_NAME* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare void @GENERAL_NAME_free(%struct.GENERAL_NAME_st* noundef) #2

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_cmp_msg_st* @ossl_cmp_certreq_new(%struct.ossl_cmp_ctx_st* noundef %ctx, i32 noundef %type, %struct.ossl_crmf_msg_st* noundef %crm) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq %struct.ossl_cmp_ctx_st* %ctx, null
  br i1 %cmp.not, label %cleanup80, label %if.end

if.end:                                           ; preds = %entry
  %cmp11.not = icmp eq i32 %type, 4
  switch i32 %type, label %if.then13 [
    i32 7, label %if.end14
    i32 4, label %if.end14
    i32 2, label %if.end14
    i32 0, label %if.end14
  ]

if.then13:                                        ; preds = %if.end
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 393, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.ossl_cmp_certreq_new, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 100, i8* noundef null) #8
  br label %cleanup80

if.end14:                                         ; preds = %if.end, %if.end, %if.end, %if.end
  %cmp18 = icmp ne %struct.ossl_crmf_msg_st* %crm, null
  %or.cond84 = and i1 %cmp11.not, %cmp18
  br i1 %or.cond84, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.end14
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 397, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.ossl_cmp_certreq_new, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 100, i8* noundef null) #8
  br label %cleanup80

if.end21:                                         ; preds = %if.end14
  %call = tail call %struct.ossl_cmp_msg_st* @ossl_cmp_msg_create(%struct.ossl_cmp_ctx_st* noundef nonnull %ctx, i32 noundef %type) #9
  %cmp22 = icmp eq %struct.ossl_cmp_msg_st* %call, null
  br i1 %cmp22, label %err, label %if.end25

if.end25:                                         ; preds = %if.end21
  %implicitConfirm = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 43
  %0 = load i32, i32* %implicitConfirm, align 8, !tbaa !38
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.end30, label %land.lhs.true26

land.lhs.true26:                                  ; preds = %if.end25
  %header = getelementptr inbounds %struct.ossl_cmp_msg_st, %struct.ossl_cmp_msg_st* %call, i64 0, i32 0
  %1 = load %struct.ossl_cmp_pkiheader_st*, %struct.ossl_cmp_pkiheader_st** %header, align 8, !tbaa !10
  %call27 = tail call i32 @ossl_cmp_hdr_set_implicitConfirm(%struct.ossl_cmp_pkiheader_st* noundef %1) #8
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %err, label %if.end30

if.end30:                                         ; preds = %land.lhs.true26, %if.end25
  br i1 %cmp11.not, label %if.end75, label %if.then33

if.then33:                                        ; preds = %if.end30
  %call34 = tail call %struct.evp_pkey_st* @OSSL_CMP_CTX_get0_newPkey(%struct.ossl_cmp_ctx_st* noundef nonnull %ctx, i32 noundef 1) #8
  %cmp35 = icmp eq %struct.evp_pkey_st* %call34, null
  br i1 %cmp35, label %land.lhs.true37, label %if.end42.thread

if.end42.thread:                                  ; preds = %if.then33
  %popoMethod121 = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 57
  br label %if.end49

land.lhs.true37:                                  ; preds = %if.then33
  %call38 = tail call %struct.evp_pkey_st* @OSSL_CMP_CTX_get0_newPkey(%struct.ossl_cmp_ctx_st* noundef nonnull %ctx, i32 noundef 0) #8
  %cmp39 = icmp eq %struct.evp_pkey_st* %call38, null
  br i1 %cmp39, label %if.then41, label %if.end42

if.then41:                                        ; preds = %land.lhs.true37
  %pkey = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 29
  %2 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey, align 8, !tbaa !27
  br label %if.end42

if.end42:                                         ; preds = %if.then41, %land.lhs.true37
  %privkey.0 = phi %struct.evp_pkey_st* [ %2, %if.then41 ], [ null, %land.lhs.true37 ]
  %popoMethod = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 57
  %3 = load i32, i32* %popoMethod, align 4, !tbaa !39
  %cmp43 = icmp eq i32 %3, 1
  %cmp46 = icmp eq %struct.evp_pkey_st* %privkey.0, null
  %or.cond85 = select i1 %cmp43, i1 %cmp46, i1 false
  br i1 %or.cond85, label %if.then48, label %if.end49

if.then48:                                        ; preds = %if.end42
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 421, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.ossl_cmp_certreq_new, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 131, i8* noundef null) #8
  br label %err

if.end49:                                         ; preds = %if.end42.thread, %if.end42
  %popoMethod126 = phi i32* [ %popoMethod121, %if.end42.thread ], [ %popoMethod, %if.end42 ]
  %privkey.0125 = phi %struct.evp_pkey_st* [ %call34, %if.end42.thread ], [ %privkey.0, %if.end42 ]
  %cmp50 = icmp eq %struct.ossl_crmf_msg_st* %crm, null
  br i1 %cmp50, label %if.then52, label %if.else

if.then52:                                        ; preds = %if.end49
  %cmp53 = icmp eq i32 %type, 7
  %conv54 = zext i1 %cmp53 to i32
  %call55 = tail call %struct.ossl_crmf_msg_st* @OSSL_CMP_CTX_setup_CRM(%struct.ossl_cmp_ctx_st* noundef nonnull %ctx, i32 noundef %conv54, i32 noundef 0) #9
  %cmp56 = icmp eq %struct.ossl_crmf_msg_st* %call55, null
  br i1 %cmp56, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then52
  %4 = load i32, i32* %popoMethod126, align 4, !tbaa !39
  %digest = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 37
  %5 = load %struct.evp_md_st*, %struct.evp_md_st** %digest, align 8, !tbaa !40
  %libctx = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 0
  %6 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !15
  %propq = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 1
  %7 = load i8*, i8** %propq, align 8, !tbaa !18
  %call59 = tail call i32 @OSSL_CRMF_MSG_create_popo(i32 noundef %4, %struct.ossl_crmf_msg_st* noundef nonnull %call55, %struct.evp_pkey_st* noundef %privkey.0125, %struct.evp_md_st* noundef %5, %struct.ossl_lib_ctx_st* noundef %6, i8* noundef %7) #8
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %err, label %if.end68

if.else:                                          ; preds = %if.end49
  %call63 = tail call %struct.ossl_crmf_msg_st* @OSSL_CRMF_MSG_dup(%struct.ossl_crmf_msg_st* noundef nonnull %crm) #8
  %cmp64 = icmp eq %struct.ossl_crmf_msg_st* %call63, null
  br i1 %cmp64, label %err, label %if.end68

if.end68:                                         ; preds = %if.else, %lor.lhs.false
  %local_crm.0 = phi %struct.ossl_crmf_msg_st* [ %call55, %lor.lhs.false ], [ %call63, %if.else ]
  %body = getelementptr inbounds %struct.ossl_cmp_msg_st, %struct.ossl_cmp_msg_st* %call, i64 0, i32 1
  %8 = load %struct.ossl_cmp_pkibody_st*, %struct.ossl_cmp_pkibody_st** %body, align 8, !tbaa !11
  %ir = getelementptr inbounds %struct.ossl_cmp_pkibody_st, %struct.ossl_cmp_pkibody_st* %8, i64 0, i32 1, i32 0
  %9 = load %struct.stack_st_OSSL_CRMF_MSG*, %struct.stack_st_OSSL_CRMF_MSG** %ir, align 8, !tbaa !20
  %call69 = tail call fastcc %struct.stack_st* @ossl_check_OSSL_CRMF_MSG_sk_type(%struct.stack_st_OSSL_CRMF_MSG* noundef %9) #9
  %10 = bitcast %struct.ossl_crmf_msg_st* %local_crm.0 to i8*
  %call71 = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call69, i8* noundef %10) #8
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %err, label %if.end75

if.end75:                                         ; preds = %if.end68, %if.end30
  %call76 = tail call i32 @ossl_cmp_msg_protect(%struct.ossl_cmp_ctx_st* noundef nonnull %ctx, %struct.ossl_cmp_msg_st* noundef nonnull %call) #8
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %err, label %cleanup80

err:                                              ; preds = %if.end68, %if.else, %if.then52, %lor.lhs.false, %if.then48, %if.end75, %land.lhs.true26, %if.end21
  %local_crm.3 = phi %struct.ossl_crmf_msg_st* [ null, %if.end21 ], [ null, %if.end75 ], [ null, %land.lhs.true26 ], [ null, %if.else ], [ null, %if.then52 ], [ %call55, %lor.lhs.false ], [ null, %if.then48 ], [ %local_crm.0, %if.end68 ]
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 450, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.ossl_cmp_certreq_new, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 163, i8* noundef null) #8
  tail call void @OSSL_CRMF_MSG_free(%struct.ossl_crmf_msg_st* noundef %local_crm.3) #8
  tail call void @OSSL_CMP_MSG_free(%struct.ossl_cmp_msg_st* noundef %call) #9
  br label %cleanup80

cleanup80:                                        ; preds = %if.end75, %entry, %err, %if.then20, %if.then13
  %retval.0 = phi %struct.ossl_cmp_msg_st* [ null, %if.then13 ], [ null, %if.then20 ], [ null, %err ], [ null, %entry ], [ %call, %if.end75 ]
  ret %struct.ossl_cmp_msg_st* %retval.0
}

declare i32 @ossl_cmp_hdr_set_implicitConfirm(%struct.ossl_cmp_pkiheader_st* noundef) local_unnamed_addr #2

declare i32 @OSSL_CRMF_MSG_create_popo(i32 noundef, %struct.ossl_crmf_msg_st* noundef, %struct.evp_pkey_st* noundef, %struct.evp_md_st* noundef, %struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #2

declare %struct.ossl_crmf_msg_st* @OSSL_CRMF_MSG_dup(%struct.ossl_crmf_msg_st* noundef) local_unnamed_addr #2

declare i32 @OPENSSL_sk_push(%struct.stack_st* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_OSSL_CRMF_MSG_sk_type(%struct.stack_st_OSSL_CRMF_MSG* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_OSSL_CRMF_MSG* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare i32 @ossl_cmp_msg_protect(%struct.ossl_cmp_ctx_st* noundef, %struct.ossl_cmp_msg_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_cmp_msg_st* @ossl_cmp_certrep_new(%struct.ossl_cmp_ctx_st* noundef %ctx, i32 noundef %bodytype, i32 noundef %certReqId, %struct.ossl_cmp_pkisi_st* noundef %si, %struct.x509_st* noundef %cert, %struct.x509_st* noundef readnone %encryption_recip, %struct.stack_st_X509* noundef %chain, %struct.stack_st_X509* noundef %caPubs, i32 noundef %unprotectedErrors) local_unnamed_addr #0 {
entry:
  %cmp = icmp ne %struct.ossl_cmp_ctx_st* %ctx, null
  %cmp1 = icmp ne %struct.ossl_cmp_pkisi_st* %si, null
  %0 = and i1 %cmp, %cmp1
  br i1 %0, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call %struct.ossl_cmp_msg_st* @ossl_cmp_msg_create(%struct.ossl_cmp_ctx_st* noundef nonnull %ctx, i32 noundef %bodytype) #9
  %cmp3 = icmp eq %struct.ossl_cmp_msg_st* %call, null
  br i1 %cmp3, label %err, label %if.end5

if.end5:                                          ; preds = %if.end
  %body = getelementptr inbounds %struct.ossl_cmp_msg_st, %struct.ossl_cmp_msg_st* %call, i64 0, i32 1
  %1 = load %struct.ossl_cmp_pkibody_st*, %struct.ossl_cmp_pkibody_st** %body, align 8, !tbaa !11
  %value = getelementptr inbounds %struct.ossl_cmp_pkibody_st, %struct.ossl_cmp_pkibody_st* %1, i64 0, i32 1
  %ip = bitcast %union.anon.1* %value to %struct.ossl_cmp_certrepmessage_st**
  %2 = load %struct.ossl_cmp_certrepmessage_st*, %struct.ossl_cmp_certrepmessage_st** %ip, align 8, !tbaa !20
  %implicitConfirm = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 43
  %3 = load i32, i32* %implicitConfirm, align 8, !tbaa !38
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end9, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end5
  %header = getelementptr inbounds %struct.ossl_cmp_msg_st, %struct.ossl_cmp_msg_st* %call, i64 0, i32 0
  %4 = load %struct.ossl_cmp_pkiheader_st*, %struct.ossl_cmp_pkiheader_st** %header, align 8, !tbaa !10
  %call6 = tail call i32 @ossl_cmp_hdr_set_implicitConfirm(%struct.ossl_cmp_pkiheader_st* noundef %4) #8
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %err, label %if.end9

if.end9:                                          ; preds = %land.lhs.true, %if.end5
  %call10 = tail call %struct.ossl_cmp_certresponse_st* @OSSL_CMP_CERTRESPONSE_new() #8
  %cmp11 = icmp eq %struct.ossl_cmp_certresponse_st* %call10, null
  br i1 %cmp11, label %err, label %if.end13

if.end13:                                         ; preds = %if.end9
  %status14 = getelementptr inbounds %struct.ossl_cmp_certresponse_st, %struct.ossl_cmp_certresponse_st* %call10, i64 0, i32 1
  %5 = load %struct.ossl_cmp_pkisi_st*, %struct.ossl_cmp_pkisi_st** %status14, align 8, !tbaa !41
  tail call void @OSSL_CMP_PKISI_free(%struct.ossl_cmp_pkisi_st* noundef %5) #8
  %call15 = tail call %struct.ossl_cmp_pkisi_st* @OSSL_CMP_PKISI_dup(%struct.ossl_cmp_pkisi_st* noundef nonnull %si) #8
  store %struct.ossl_cmp_pkisi_st* %call15, %struct.ossl_cmp_pkisi_st** %status14, align 8, !tbaa !41
  %cmp17 = icmp eq %struct.ossl_cmp_pkisi_st* %call15, null
  br i1 %cmp17, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end13
  %certReqId18 = getelementptr inbounds %struct.ossl_cmp_certresponse_st, %struct.ossl_cmp_certresponse_st* %call10, i64 0, i32 0
  %6 = load %struct.asn1_string_st*, %struct.asn1_string_st** %certReqId18, align 8, !tbaa !43
  %conv = sext i32 %certReqId to i64
  %call19 = tail call i32 @ASN1_INTEGER_set(%struct.asn1_string_st* noundef %6, i64 noundef %conv) #8
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %err, label %if.end22

if.end22:                                         ; preds = %lor.lhs.false
  %7 = load %struct.ossl_cmp_pkisi_st*, %struct.ossl_cmp_pkisi_st** %status14, align 8, !tbaa !41
  %call24 = tail call i32 @ossl_cmp_pkisi_get_status(%struct.ossl_cmp_pkisi_st* noundef %7) #8
  %8 = and i32 %call24, -2
  %9 = icmp ne i32 %8, 2
  %cmp31 = icmp ne %struct.x509_st* %cert, null
  %or.cond93 = and i1 %cmp31, %9
  br i1 %or.cond93, label %if.then33, label %if.end51

if.then33:                                        ; preds = %if.end22
  %cmp34.not = icmp eq %struct.x509_st* %encryption_recip, null
  br i1 %cmp34.not, label %if.end37, label %if.then36

if.then36:                                        ; preds = %if.then33
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 490, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.ossl_cmp_certrep_new, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 524556, i8* noundef null) #8
  br label %err

if.end37:                                         ; preds = %if.then33
  %call38 = tail call %struct.ossl_cmp_certifiedkeypair_st* @OSSL_CMP_CERTIFIEDKEYPAIR_new() #8
  %certifiedKeyPair = getelementptr inbounds %struct.ossl_cmp_certresponse_st, %struct.ossl_cmp_certresponse_st* %call10, i64 0, i32 2
  store %struct.ossl_cmp_certifiedkeypair_st* %call38, %struct.ossl_cmp_certifiedkeypair_st** %certifiedKeyPair, align 8, !tbaa !44
  %cmp39 = icmp eq %struct.ossl_cmp_certifiedkeypair_st* %call38, null
  br i1 %cmp39, label %err, label %if.end42

if.end42:                                         ; preds = %if.end37
  %certOrEncCert = getelementptr inbounds %struct.ossl_cmp_certifiedkeypair_st, %struct.ossl_cmp_certifiedkeypair_st* %call38, i64 0, i32 0
  %10 = load %struct.ossl_cmp_certorenccert_st*, %struct.ossl_cmp_certorenccert_st** %certOrEncCert, align 8, !tbaa !45
  %type = getelementptr inbounds %struct.ossl_cmp_certorenccert_st, %struct.ossl_cmp_certorenccert_st* %10, i64 0, i32 0
  store i32 0, i32* %type, align 8, !tbaa !47
  %call44 = tail call i32 @X509_up_ref(%struct.x509_st* noundef nonnull %cert) #8
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %err, label %if.end47

if.end47:                                         ; preds = %if.end42
  %11 = load %struct.ossl_cmp_certifiedkeypair_st*, %struct.ossl_cmp_certifiedkeypair_st** %certifiedKeyPair, align 8, !tbaa !44
  %certOrEncCert49 = getelementptr inbounds %struct.ossl_cmp_certifiedkeypair_st, %struct.ossl_cmp_certifiedkeypair_st* %11, i64 0, i32 0
  %12 = load %struct.ossl_cmp_certorenccert_st*, %struct.ossl_cmp_certorenccert_st** %certOrEncCert49, align 8, !tbaa !45
  %certificate = getelementptr inbounds %struct.ossl_cmp_certorenccert_st, %struct.ossl_cmp_certorenccert_st* %12, i64 0, i32 1, i32 0
  store %struct.x509_st* %cert, %struct.x509_st** %certificate, align 8, !tbaa !20
  br label %if.end51

if.end51:                                         ; preds = %if.end47, %if.end22
  %response = getelementptr inbounds %struct.ossl_cmp_certrepmessage_st, %struct.ossl_cmp_certrepmessage_st* %2, i64 0, i32 1
  %13 = load %struct.stack_st_OSSL_CMP_CERTRESPONSE*, %struct.stack_st_OSSL_CMP_CERTRESPONSE** %response, align 8, !tbaa !49
  %call52 = tail call fastcc %struct.stack_st* @ossl_check_OSSL_CMP_CERTRESPONSE_sk_type(%struct.stack_st_OSSL_CMP_CERTRESPONSE* noundef %13) #9
  %14 = bitcast %struct.ossl_cmp_certresponse_st* %call10 to i8*
  %call54 = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call52, i8* noundef nonnull %14) #8
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %err, label %if.end57

if.end57:                                         ; preds = %if.end51
  %cmp58 = icmp eq i32 %bodytype, 1
  %cmp61 = icmp ne %struct.stack_st_X509* %caPubs, null
  %or.cond94 = and i1 %cmp58, %cmp61
  br i1 %or.cond94, label %land.lhs.true63, label %if.end69

land.lhs.true63:                                  ; preds = %if.end57
  %call64 = tail call %struct.stack_st_X509* @X509_chain_up_ref(%struct.stack_st_X509* noundef nonnull %caPubs) #8
  %caPubs65 = getelementptr inbounds %struct.ossl_cmp_certrepmessage_st, %struct.ossl_cmp_certrepmessage_st* %2, i64 0, i32 0
  store %struct.stack_st_X509* %call64, %struct.stack_st_X509** %caPubs65, align 8, !tbaa !51
  %cmp66 = icmp eq %struct.stack_st_X509* %call64, null
  br i1 %cmp66, label %err, label %if.end69

if.end69:                                         ; preds = %land.lhs.true63, %if.end57
  %call70 = tail call fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef %chain) #9
  %call71 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call70) #8
  %cmp72 = icmp sgt i32 %call71, 0
  br i1 %cmp72, label %land.lhs.true74, label %if.end78

land.lhs.true74:                                  ; preds = %if.end69
  %extraCerts = getelementptr inbounds %struct.ossl_cmp_msg_st, %struct.ossl_cmp_msg_st* %call, i64 0, i32 3
  %call75 = tail call i32 @ossl_x509_add_certs_new(%struct.stack_st_X509** noundef nonnull %extraCerts, %struct.stack_st_X509* noundef %chain, i32 noundef 5) #8
  %tobool76.not = icmp eq i32 %call75, 0
  br i1 %tobool76.not, label %err, label %if.end78

if.end78:                                         ; preds = %land.lhs.true74, %if.end69
  %tobool79.not = icmp eq i32 %unprotectedErrors, 0
  br i1 %tobool79.not, label %if.then84, label %lor.lhs.false80

lor.lhs.false80:                                  ; preds = %if.end78
  %call81 = tail call i32 @ossl_cmp_pkisi_get_status(%struct.ossl_cmp_pkisi_st* noundef nonnull %si) #8
  %cmp82.not = icmp eq i32 %call81, 2
  br i1 %cmp82.not, label %cleanup, label %if.then84

if.then84:                                        ; preds = %lor.lhs.false80, %if.end78
  %call85 = tail call i32 @ossl_cmp_msg_protect(%struct.ossl_cmp_ctx_st* noundef nonnull %ctx, %struct.ossl_cmp_msg_st* noundef nonnull %call) #8
  %tobool86.not = icmp eq i32 %call85, 0
  br i1 %tobool86.not, label %err, label %cleanup

err:                                              ; preds = %if.then84, %land.lhs.true74, %land.lhs.true63, %if.end51, %if.end42, %if.end37, %if.end13, %lor.lhs.false, %if.end9, %land.lhs.true, %if.end, %if.then36
  %resp.0 = phi %struct.ossl_cmp_certresponse_st* [ null, %if.end ], [ null, %if.end9 ], [ %call10, %if.end13 ], [ %call10, %if.then36 ], [ %call10, %if.end37 ], [ null, %land.lhs.true63 ], [ null, %if.then84 ], [ null, %land.lhs.true74 ], [ %call10, %if.end51 ], [ %call10, %if.end42 ], [ %call10, %lor.lhs.false ], [ null, %land.lhs.true ]
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 524, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.ossl_cmp_certrep_new, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 117, i8* noundef null) #8
  tail call void @OSSL_CMP_CERTRESPONSE_free(%struct.ossl_cmp_certresponse_st* noundef %resp.0) #8
  tail call void @OSSL_CMP_MSG_free(%struct.ossl_cmp_msg_st* noundef %call) #9
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false80, %if.then84, %entry, %err
  %retval.0 = phi %struct.ossl_cmp_msg_st* [ null, %err ], [ null, %entry ], [ %call, %if.then84 ], [ %call, %lor.lhs.false80 ]
  ret %struct.ossl_cmp_msg_st* %retval.0
}

declare %struct.ossl_cmp_certresponse_st* @OSSL_CMP_CERTRESPONSE_new() local_unnamed_addr #2

declare void @OSSL_CMP_PKISI_free(%struct.ossl_cmp_pkisi_st* noundef) local_unnamed_addr #2

declare %struct.ossl_cmp_pkisi_st* @OSSL_CMP_PKISI_dup(%struct.ossl_cmp_pkisi_st* noundef) local_unnamed_addr #2

declare i32 @ASN1_INTEGER_set(%struct.asn1_string_st* noundef, i64 noundef) local_unnamed_addr #2

declare i32 @ossl_cmp_pkisi_get_status(%struct.ossl_cmp_pkisi_st* noundef) local_unnamed_addr #2

declare %struct.ossl_cmp_certifiedkeypair_st* @OSSL_CMP_CERTIFIEDKEYPAIR_new() local_unnamed_addr #2

declare i32 @X509_up_ref(%struct.x509_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_OSSL_CMP_CERTRESPONSE_sk_type(%struct.stack_st_OSSL_CMP_CERTRESPONSE* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_OSSL_CMP_CERTRESPONSE* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare %struct.stack_st_X509* @X509_chain_up_ref(%struct.stack_st_X509* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_X509* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare i32 @ossl_x509_add_certs_new(%struct.stack_st_X509** noundef, %struct.stack_st_X509* noundef, i32 noundef) local_unnamed_addr #2

declare void @OSSL_CMP_CERTRESPONSE_free(%struct.ossl_cmp_certresponse_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_cmp_msg_st* @ossl_cmp_rr_new(%struct.ossl_cmp_ctx_st* noundef %ctx) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq %struct.ossl_cmp_ctx_st* %ctx, null
  br i1 %cmp.not, label %cleanup, label %land.rhs

land.rhs:                                         ; preds = %entry
  %oldCert = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 58
  %0 = load %struct.x509_st*, %struct.x509_st** %oldCert, align 8, !tbaa !22
  %cmp1.not = icmp eq %struct.x509_st* %0, null
  br i1 %cmp1.not, label %lor.rhs, label %if.end

lor.rhs:                                          ; preds = %land.rhs
  %p10CSR = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 59
  %1 = load %struct.X509_req_st*, %struct.X509_req_st** %p10CSR, align 8, !tbaa !21
  %cmp2.not = icmp eq %struct.X509_req_st* %1, null
  br i1 %cmp2.not, label %cleanup, label %if.end

if.end:                                           ; preds = %land.rhs, %lor.rhs
  %call = tail call %struct.ossl_cmp_revdetails_st* @OSSL_CMP_REVDETAILS_new() #8
  %cmp4 = icmp eq %struct.ossl_cmp_revdetails_st* %call, null
  br i1 %cmp4, label %err, label %if.end6

if.end6:                                          ; preds = %if.end
  %2 = load %struct.x509_st*, %struct.x509_st** %oldCert, align 8, !tbaa !22
  %cmp8.not = icmp eq %struct.x509_st* %2, null
  %certDetails14 = getelementptr inbounds %struct.ossl_cmp_revdetails_st, %struct.ossl_cmp_revdetails_st* %call, i64 0, i32 0
  %3 = load %struct.ossl_crmf_certtemplate_st*, %struct.ossl_crmf_certtemplate_st** %certDetails14, align 8, !tbaa !52
  br i1 %cmp8.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end6
  %call10 = tail call %struct.X509_name_st* @X509_get_issuer_name(%struct.x509_st* noundef nonnull %2) #8
  %4 = load %struct.x509_st*, %struct.x509_st** %oldCert, align 8, !tbaa !22
  %call12 = tail call %struct.asn1_string_st* @X509_get0_serialNumber(%struct.x509_st* noundef %4) #8
  %call13 = tail call i32 @OSSL_CRMF_CERTTEMPLATE_fill(%struct.ossl_crmf_certtemplate_st* noundef %3, %struct.evp_pkey_st* noundef null, %struct.X509_name_st* noundef null, %struct.X509_name_st* noundef %call10, %struct.asn1_string_st* noundef %call12) #8
  br label %cond.end

cond.false:                                       ; preds = %if.end6
  %p10CSR15 = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 59
  %5 = load %struct.X509_req_st*, %struct.X509_req_st** %p10CSR15, align 8, !tbaa !21
  %call16 = tail call %struct.evp_pkey_st* @X509_REQ_get0_pubkey(%struct.X509_req_st* noundef %5) #8
  %6 = load %struct.X509_req_st*, %struct.X509_req_st** %p10CSR15, align 8, !tbaa !21
  %call18 = tail call %struct.X509_name_st* @X509_REQ_get_subject_name(%struct.X509_req_st* noundef %6) #8
  %call19 = tail call i32 @OSSL_CRMF_CERTTEMPLATE_fill(%struct.ossl_crmf_certtemplate_st* noundef %3, %struct.evp_pkey_st* noundef %call16, %struct.X509_name_st* noundef %call18, %struct.X509_name_st* noundef null, %struct.asn1_string_st* noundef null) #8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call13, %cond.true ], [ %call19, %cond.false ]
  %tobool.not = icmp eq i32 %cond, 0
  br i1 %tobool.not, label %err, label %if.end21

if.end21:                                         ; preds = %cond.end
  %revocationReason = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 60
  %7 = load i32, i32* %revocationReason, align 8, !tbaa !54
  %cmp22.not = icmp eq i32 %7, -1
  br i1 %cmp22.not, label %if.end27, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end21
  %crlEntryDetails = getelementptr inbounds %struct.ossl_cmp_revdetails_st, %struct.ossl_cmp_revdetails_st* %call, i64 0, i32 1
  %call24 = tail call fastcc i32 @add_crl_reason_extension(%struct.stack_st_X509_EXTENSION** noundef nonnull %crlEntryDetails, i32 noundef %7) #9
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %err, label %if.end27

if.end27:                                         ; preds = %land.lhs.true, %if.end21
  %call28 = tail call %struct.ossl_cmp_msg_st* @ossl_cmp_msg_create(%struct.ossl_cmp_ctx_st* noundef nonnull %ctx, i32 noundef 11) #9
  %cmp29 = icmp eq %struct.ossl_cmp_msg_st* %call28, null
  br i1 %cmp29, label %err, label %if.end31

if.end31:                                         ; preds = %if.end27
  %body = getelementptr inbounds %struct.ossl_cmp_msg_st, %struct.ossl_cmp_msg_st* %call28, i64 0, i32 1
  %8 = load %struct.ossl_cmp_pkibody_st*, %struct.ossl_cmp_pkibody_st** %body, align 8, !tbaa !11
  %value = getelementptr inbounds %struct.ossl_cmp_pkibody_st, %struct.ossl_cmp_pkibody_st* %8, i64 0, i32 1
  %rr = bitcast %union.anon.1* %value to %struct.stack_st_OSSL_CMP_REVDETAILS**
  %9 = load %struct.stack_st_OSSL_CMP_REVDETAILS*, %struct.stack_st_OSSL_CMP_REVDETAILS** %rr, align 8, !tbaa !20
  %call32 = tail call fastcc i32 @sk_OSSL_CMP_REVDETAILS_push(%struct.stack_st_OSSL_CMP_REVDETAILS* noundef %9, %struct.ossl_cmp_revdetails_st* noundef nonnull %call) #9
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %err, label %if.end35

if.end35:                                         ; preds = %if.end31
  %call36 = tail call i32 @ossl_cmp_msg_protect(%struct.ossl_cmp_ctx_st* noundef nonnull %ctx, %struct.ossl_cmp_msg_st* noundef nonnull %call28) #8
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %err, label %cleanup

err:                                              ; preds = %if.end35, %if.end31, %if.end27, %land.lhs.true, %cond.end, %if.end
  %msg.0 = phi %struct.ossl_cmp_msg_st* [ null, %if.end ], [ null, %if.end27 ], [ %call28, %if.end35 ], [ %call28, %if.end31 ], [ null, %land.lhs.true ], [ null, %cond.end ]
  %rd.0 = phi %struct.ossl_cmp_revdetails_st* [ null, %if.end ], [ %call, %if.end27 ], [ null, %if.end35 ], [ %call, %if.end31 ], [ %call, %land.lhs.true ], [ %call, %cond.end ]
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 576, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.ossl_cmp_rr_new, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 126, i8* noundef null) #8
  tail call void @OSSL_CMP_MSG_free(%struct.ossl_cmp_msg_st* noundef %msg.0) #9
  tail call void @OSSL_CMP_REVDETAILS_free(%struct.ossl_cmp_revdetails_st* noundef %rd.0) #8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end35, %lor.rhs, %err
  %retval.0 = phi %struct.ossl_cmp_msg_st* [ null, %err ], [ null, %lor.rhs ], [ %call28, %if.end35 ], [ null, %entry ]
  ret %struct.ossl_cmp_msg_st* %retval.0
}

declare %struct.ossl_cmp_revdetails_st* @OSSL_CMP_REVDETAILS_new() local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @add_crl_reason_extension(%struct.stack_st_X509_EXTENSION** noundef %pexts, i32 noundef %reason_code) unnamed_addr #0 {
entry:
  %call = tail call %struct.asn1_string_st* @ASN1_ENUMERATED_new() #8
  %cmp.not = icmp eq %struct.asn1_string_st* %call, null
  br i1 %cmp.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %conv = sext i32 %reason_code to i64
  %call1 = tail call i32 @ASN1_ENUMERATED_set(%struct.asn1_string_st* noundef nonnull %call, i64 noundef %conv) #8
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %0 = bitcast %struct.asn1_string_st* %call to i8*
  %call2 = tail call fastcc i32 @add1_extension(%struct.stack_st_X509_EXTENSION** noundef %pexts, i32 noundef 141, i32 noundef 0, i8* noundef nonnull %0) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %res.0 = phi i32 [ %call2, %if.then ], [ 0, %land.lhs.true ], [ 0, %entry ]
  tail call void @ASN1_ENUMERATED_free(%struct.asn1_string_st* noundef %call) #8
  ret i32 %res.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @sk_OSSL_CMP_REVDETAILS_push(%struct.stack_st_OSSL_CMP_REVDETAILS* noundef %sk, %struct.ossl_cmp_revdetails_st* noundef %ptr) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_OSSL_CMP_REVDETAILS* %sk to %struct.stack_st*
  %1 = bitcast %struct.ossl_cmp_revdetails_st* %ptr to i8*
  %call = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %0, i8* noundef %1) #8
  ret i32 %call
}

declare void @OSSL_CMP_REVDETAILS_free(%struct.ossl_cmp_revdetails_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_cmp_msg_st* @ossl_cmp_rp_new(%struct.ossl_cmp_ctx_st* noundef %ctx, %struct.ossl_cmp_pkisi_st* noundef %si, %struct.ossl_crmf_certid_st* noundef %cid, i32 noundef %unprotectedErrors) local_unnamed_addr #0 {
entry:
  %cmp = icmp ne %struct.ossl_cmp_ctx_st* %ctx, null
  %cmp1 = icmp ne %struct.ossl_cmp_pkisi_st* %si, null
  %0 = and i1 %cmp, %cmp1
  br i1 %0, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call %struct.ossl_cmp_msg_st* @ossl_cmp_msg_create(%struct.ossl_cmp_ctx_st* noundef nonnull %ctx, i32 noundef 12) #9
  %cmp3 = icmp eq %struct.ossl_cmp_msg_st* %call, null
  br i1 %cmp3, label %err, label %if.end5

if.end5:                                          ; preds = %if.end
  %body = getelementptr inbounds %struct.ossl_cmp_msg_st, %struct.ossl_cmp_msg_st* %call, i64 0, i32 1
  %1 = load %struct.ossl_cmp_pkibody_st*, %struct.ossl_cmp_pkibody_st** %body, align 8, !tbaa !11
  %value = getelementptr inbounds %struct.ossl_cmp_pkibody_st, %struct.ossl_cmp_pkibody_st* %1, i64 0, i32 1
  %rp = bitcast %union.anon.1* %value to %struct.ossl_cmp_revrepcontent_st**
  %2 = load %struct.ossl_cmp_revrepcontent_st*, %struct.ossl_cmp_revrepcontent_st** %rp, align 8, !tbaa !20
  %call6 = tail call %struct.ossl_cmp_pkisi_st* @OSSL_CMP_PKISI_dup(%struct.ossl_cmp_pkisi_st* noundef nonnull %si) #8
  %cmp7 = icmp eq %struct.ossl_cmp_pkisi_st* %call6, null
  br i1 %cmp7, label %err, label %if.end9

if.end9:                                          ; preds = %if.end5
  %status = getelementptr inbounds %struct.ossl_cmp_revrepcontent_st, %struct.ossl_cmp_revrepcontent_st* %2, i64 0, i32 0
  %3 = load %struct.stack_st_OSSL_CMP_PKISI*, %struct.stack_st_OSSL_CMP_PKISI** %status, align 8, !tbaa !55
  %call10 = tail call fastcc %struct.stack_st* @ossl_check_OSSL_CMP_PKISI_sk_type(%struct.stack_st_OSSL_CMP_PKISI* noundef %3) #9
  %4 = bitcast %struct.ossl_cmp_pkisi_st* %call6 to i8*
  %call12 = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call10, i8* noundef nonnull %4) #8
  %tobool.not = icmp eq i32 %call12, 0
  br i1 %tobool.not, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end9
  tail call void @OSSL_CMP_PKISI_free(%struct.ossl_cmp_pkisi_st* noundef nonnull %call6) #8
  br label %err

if.end14:                                         ; preds = %if.end9
  %call15 = tail call %struct.stack_st* @OPENSSL_sk_new_null() #8
  %revCerts = getelementptr inbounds %struct.ossl_cmp_revrepcontent_st, %struct.ossl_cmp_revrepcontent_st* %2, i64 0, i32 1
  %5 = bitcast %struct.stack_st_OSSL_CRMF_CERTID** %revCerts to %struct.stack_st**
  store %struct.stack_st* %call15, %struct.stack_st** %5, align 8, !tbaa !57
  %cmp16 = icmp eq %struct.stack_st* %call15, null
  br i1 %cmp16, label %err, label %if.end18

if.end18:                                         ; preds = %if.end14
  %cmp19.not = icmp eq %struct.ossl_crmf_certid_st* %cid, null
  br i1 %cmp19.not, label %if.end32, label %if.then20

if.then20:                                        ; preds = %if.end18
  %call21 = tail call %struct.ossl_crmf_certid_st* @OSSL_CRMF_CERTID_dup(%struct.ossl_crmf_certid_st* noundef nonnull %cid) #8
  %cmp22 = icmp eq %struct.ossl_crmf_certid_st* %call21, null
  br i1 %cmp22, label %err, label %if.end24

if.end24:                                         ; preds = %if.then20
  %6 = load %struct.stack_st_OSSL_CRMF_CERTID*, %struct.stack_st_OSSL_CRMF_CERTID** %revCerts, align 8, !tbaa !57
  %call26 = tail call fastcc %struct.stack_st* @ossl_check_OSSL_CRMF_CERTID_sk_type(%struct.stack_st_OSSL_CRMF_CERTID* noundef %6) #9
  %7 = bitcast %struct.ossl_crmf_certid_st* %call21 to i8*
  %call28 = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call26, i8* noundef nonnull %7) #8
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.then30, label %if.end32

if.then30:                                        ; preds = %if.end24
  tail call void @OSSL_CRMF_CERTID_free(%struct.ossl_crmf_certid_st* noundef nonnull %call21) #8
  br label %err

if.end32:                                         ; preds = %if.end24, %if.end18
  %tobool33.not = icmp eq i32 %unprotectedErrors, 0
  br i1 %tobool33.not, label %if.then36, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end32
  %call34 = tail call i32 @ossl_cmp_pkisi_get_status(%struct.ossl_cmp_pkisi_st* noundef nonnull %si) #8
  %cmp35.not = icmp eq i32 %call34, 2
  br i1 %cmp35.not, label %cleanup, label %if.then36

if.then36:                                        ; preds = %lor.lhs.false, %if.end32
  %call37 = tail call i32 @ossl_cmp_msg_protect(%struct.ossl_cmp_ctx_st* noundef nonnull %ctx, %struct.ossl_cmp_msg_st* noundef nonnull %call) #8
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %err, label %cleanup

err:                                              ; preds = %if.then36, %if.then20, %if.end14, %if.end5, %if.end, %if.then30, %if.then13
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 624, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.ossl_cmp_rp_new, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 125, i8* noundef null) #8
  tail call void @OSSL_CMP_MSG_free(%struct.ossl_cmp_msg_st* noundef %call) #9
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false, %if.then36, %entry, %err
  %retval.0 = phi %struct.ossl_cmp_msg_st* [ null, %err ], [ null, %entry ], [ %call, %if.then36 ], [ %call, %lor.lhs.false ]
  ret %struct.ossl_cmp_msg_st* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_OSSL_CMP_PKISI_sk_type(%struct.stack_st_OSSL_CMP_PKISI* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_OSSL_CMP_PKISI* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare %struct.ossl_crmf_certid_st* @OSSL_CRMF_CERTID_dup(%struct.ossl_crmf_certid_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_OSSL_CRMF_CERTID_sk_type(%struct.stack_st_OSSL_CRMF_CERTID* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_OSSL_CRMF_CERTID* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_cmp_msg_st* @ossl_cmp_pkiconf_new(%struct.ossl_cmp_ctx_st* noundef %ctx) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq %struct.ossl_cmp_ctx_st* %ctx, null
  br i1 %cmp.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call %struct.ossl_cmp_msg_st* @ossl_cmp_msg_create(%struct.ossl_cmp_ctx_st* noundef nonnull %ctx, i32 noundef 19) #9
  %cmp3 = icmp eq %struct.ossl_cmp_msg_st* %call, null
  br i1 %cmp3, label %err, label %if.end6

if.end6:                                          ; preds = %if.end
  %call7 = tail call i32 @ossl_cmp_msg_protect(%struct.ossl_cmp_ctx_st* noundef nonnull %ctx, %struct.ossl_cmp_msg_st* noundef nonnull %call) #8
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %err, label %cleanup

err:                                              ; preds = %if.end6, %if.end
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 642, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.ossl_cmp_pkiconf_new, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 122, i8* noundef null) #8
  tail call void @OSSL_CMP_MSG_free(%struct.ossl_cmp_msg_st* noundef %call) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %entry, %err
  %retval.0 = phi %struct.ossl_cmp_msg_st* [ null, %err ], [ null, %entry ], [ %call, %if.end6 ]
  ret %struct.ossl_cmp_msg_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_cmp_msg_gen_push0_ITAV(%struct.ossl_cmp_msg_st* noundef %msg, %struct.ossl_cmp_itav_st* noundef %itav) local_unnamed_addr #0 {
entry:
  %cmp = icmp ne %struct.ossl_cmp_msg_st* %msg, null
  %cmp1 = icmp ne %struct.ossl_cmp_itav_st* %itav, null
  %0 = and i1 %cmp, %cmp1
  br i1 %0, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @OSSL_CMP_MSG_get_bodytype(%struct.ossl_cmp_msg_st* noundef nonnull %msg) #9
  %1 = add i32 %call, -23
  %2 = icmp ult i32 %1, -2
  br i1 %2, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 657, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.ossl_cmp_msg_gen_push0_ITAV, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 100, i8* noundef null) #8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %body = getelementptr inbounds %struct.ossl_cmp_msg_st, %struct.ossl_cmp_msg_st* %msg, i64 0, i32 1
  %3 = load %struct.ossl_cmp_pkibody_st*, %struct.ossl_cmp_pkibody_st** %body, align 8, !tbaa !11
  %value = getelementptr inbounds %struct.ossl_cmp_pkibody_st, %struct.ossl_cmp_pkibody_st* %3, i64 0, i32 1
  %genm = bitcast %union.anon.1* %value to %struct.stack_st_OSSL_CMP_ITAV**
  %call7 = tail call i32 @OSSL_CMP_ITAV_push0_stack_item(%struct.stack_st_OSSL_CMP_ITAV** noundef nonnull %genm, %struct.ossl_cmp_itav_st* noundef nonnull %itav) #8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end6, %if.then5
  %retval.0 = phi i32 [ 0, %if.then5 ], [ %call7, %if.end6 ], [ 0, %entry ]
  ret i32 %retval.0
}

declare i32 @OSSL_CMP_ITAV_push0_stack_item(%struct.stack_st_OSSL_CMP_ITAV** noundef, %struct.ossl_cmp_itav_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_cmp_msg_gen_push1_ITAVs(%struct.ossl_cmp_msg_st* noundef %msg, %struct.stack_st_OSSL_CMP_ITAV* noundef %itavs) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq %struct.ossl_cmp_msg_st* %msg, null
  br i1 %cmp.not, label %cleanup, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %call = tail call fastcc %struct.stack_st* @ossl_check_const_OSSL_CMP_ITAV_sk_type(%struct.stack_st_OSSL_CMP_ITAV* noundef %itavs) #9
  %call323 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #8
  %cmp424 = icmp sgt i32 %call323, 0
  br i1 %cmp424, label %for.body, label %cleanup

for.cond:                                         ; preds = %lor.lhs.false
  %call3 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #8
  %cmp4 = icmp slt i32 %inc, %call3
  br i1 %cmp4, label %for.body, label %cleanup, !llvm.loop !58

for.body:                                         ; preds = %for.cond.preheader, %for.cond
  %i.025 = phi i32 [ %inc, %for.cond ], [ 0, %for.cond.preheader ]
  %call7 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call, i32 noundef %i.025) #8
  %0 = bitcast i8* %call7 to %struct.ossl_cmp_itav_st*
  %call8 = tail call %struct.ossl_cmp_itav_st* @OSSL_CMP_ITAV_dup(%struct.ossl_cmp_itav_st* noundef %0) #8
  %cmp9 = icmp eq %struct.ossl_cmp_itav_st* %call8, null
  br i1 %cmp9, label %if.then12, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %call11 = tail call i32 @ossl_cmp_msg_gen_push0_ITAV(%struct.ossl_cmp_msg_st* noundef nonnull %msg, %struct.ossl_cmp_itav_st* noundef nonnull %call8) #9
  %tobool.not = icmp eq i32 %call11, 0
  %inc = add nuw nsw i32 %i.025, 1
  br i1 %tobool.not, label %if.then12, label %for.cond

if.then12:                                        ; preds = %lor.lhs.false, %for.body
  tail call void @OSSL_CMP_ITAV_free(%struct.ossl_cmp_itav_st* noundef %call8) #8
  br label %cleanup

cleanup:                                          ; preds = %for.cond, %for.cond.preheader, %entry, %if.then12
  %retval.0 = phi i32 [ 0, %if.then12 ], [ 0, %entry ], [ 1, %for.cond.preheader ], [ 1, %for.cond ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_OSSL_CMP_ITAV_sk_type(%struct.stack_st_OSSL_CMP_ITAV* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_OSSL_CMP_ITAV* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare %struct.ossl_cmp_itav_st* @OSSL_CMP_ITAV_dup(%struct.ossl_cmp_itav_st* noundef) local_unnamed_addr #2

declare i8* @OPENSSL_sk_value(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #2

declare void @OSSL_CMP_ITAV_free(%struct.ossl_cmp_itav_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_cmp_msg_st* @ossl_cmp_genm_new(%struct.ossl_cmp_ctx_st* noundef %ctx) local_unnamed_addr #0 {
entry:
  %genm_ITAVs = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 61
  %0 = load %struct.stack_st_OSSL_CMP_ITAV*, %struct.stack_st_OSSL_CMP_ITAV** %genm_ITAVs, align 8, !tbaa !59
  %call = tail call fastcc %struct.ossl_cmp_msg_st* @gen_new(%struct.ossl_cmp_ctx_st* noundef %ctx, %struct.stack_st_OSSL_CMP_ITAV* noundef %0, i32 noundef 21, i32 noundef 119) #9
  ret %struct.ossl_cmp_msg_st* %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.ossl_cmp_msg_st* @gen_new(%struct.ossl_cmp_ctx_st* noundef %ctx, %struct.stack_st_OSSL_CMP_ITAV* noundef %itavs, i32 noundef %body_type, i32 noundef %err_code) unnamed_addr #0 {
entry:
  %cmp.not = icmp eq %struct.ossl_cmp_ctx_st* %ctx, null
  br i1 %cmp.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call %struct.ossl_cmp_msg_st* @ossl_cmp_msg_create(%struct.ossl_cmp_ctx_st* noundef nonnull %ctx, i32 noundef %body_type) #9
  %cmp3 = icmp eq %struct.ossl_cmp_msg_st* %call, null
  br i1 %cmp3, label %cleanup, label %if.end6

if.end6:                                          ; preds = %if.end
  %genm_ITAVs = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 61
  %0 = load %struct.stack_st_OSSL_CMP_ITAV*, %struct.stack_st_OSSL_CMP_ITAV** %genm_ITAVs, align 8, !tbaa !59
  %cmp7.not = icmp eq %struct.stack_st_OSSL_CMP_ITAV* %0, null
  br i1 %cmp7.not, label %if.end11, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end6
  %call9 = tail call i32 @ossl_cmp_msg_gen_push1_ITAVs(%struct.ossl_cmp_msg_st* noundef nonnull %call, %struct.stack_st_OSSL_CMP_ITAV* noundef %itavs) #9
  %tobool.not = icmp eq i32 %call9, 0
  br i1 %tobool.not, label %err, label %if.end11

if.end11:                                         ; preds = %land.lhs.true, %if.end6
  %call12 = tail call i32 @ossl_cmp_msg_protect(%struct.ossl_cmp_ctx_st* noundef nonnull %ctx, %struct.ossl_cmp_msg_st* noundef nonnull %call) #8
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %err, label %cleanup

err:                                              ; preds = %if.end11, %land.lhs.true
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 711, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @__func__.gen_new, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef %err_code, i8* noundef null) #8
  tail call void @OSSL_CMP_MSG_free(%struct.ossl_cmp_msg_st* noundef nonnull %call) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.end, %entry, %err
  %retval.0 = phi %struct.ossl_cmp_msg_st* [ null, %err ], [ null, %entry ], [ null, %if.end ], [ %call, %if.end11 ]
  ret %struct.ossl_cmp_msg_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_cmp_msg_st* @ossl_cmp_genp_new(%struct.ossl_cmp_ctx_st* noundef %ctx, %struct.stack_st_OSSL_CMP_ITAV* noundef %itavs) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc %struct.ossl_cmp_msg_st* @gen_new(%struct.ossl_cmp_ctx_st* noundef %ctx, %struct.stack_st_OSSL_CMP_ITAV* noundef %itavs, i32 noundef 22, i32 noundef 120) #9
  ret %struct.ossl_cmp_msg_st* %call
}

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_cmp_msg_st* @ossl_cmp_error_new(%struct.ossl_cmp_ctx_st* noundef %ctx, %struct.ossl_cmp_pkisi_st* noundef %si, i64 noundef %errorCode, i8* noundef %details, i32 noundef %unprotected) local_unnamed_addr #0 {
entry:
  %cmp = icmp ne %struct.ossl_cmp_ctx_st* %ctx, null
  %cmp1 = icmp ne %struct.ossl_cmp_pkisi_st* %si, null
  %0 = and i1 %cmp, %cmp1
  br i1 %0, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call %struct.ossl_cmp_msg_st* @ossl_cmp_msg_create(%struct.ossl_cmp_ctx_st* noundef nonnull %ctx, i32 noundef 23) #9
  %cmp3 = icmp eq %struct.ossl_cmp_msg_st* %call, null
  br i1 %cmp3, label %err, label %if.end5

if.end5:                                          ; preds = %if.end
  %body = getelementptr inbounds %struct.ossl_cmp_msg_st, %struct.ossl_cmp_msg_st* %call, i64 0, i32 1
  %1 = load %struct.ossl_cmp_pkibody_st*, %struct.ossl_cmp_pkibody_st** %body, align 8, !tbaa !11
  %value = getelementptr inbounds %struct.ossl_cmp_pkibody_st, %struct.ossl_cmp_pkibody_st* %1, i64 0, i32 1
  %error = bitcast %union.anon.1* %value to %struct.ossl_cmp_errormsgcontent_st**
  %2 = load %struct.ossl_cmp_errormsgcontent_st*, %struct.ossl_cmp_errormsgcontent_st** %error, align 8, !tbaa !20
  %pKIStatusInfo = getelementptr inbounds %struct.ossl_cmp_errormsgcontent_st, %struct.ossl_cmp_errormsgcontent_st* %2, i64 0, i32 0
  %3 = load %struct.ossl_cmp_pkisi_st*, %struct.ossl_cmp_pkisi_st** %pKIStatusInfo, align 8, !tbaa !60
  tail call void @OSSL_CMP_PKISI_free(%struct.ossl_cmp_pkisi_st* noundef %3) #8
  %call6 = tail call %struct.ossl_cmp_pkisi_st* @OSSL_CMP_PKISI_dup(%struct.ossl_cmp_pkisi_st* noundef nonnull %si) #8
  %4 = load %struct.ossl_cmp_pkibody_st*, %struct.ossl_cmp_pkibody_st** %body, align 8, !tbaa !11
  %value8 = getelementptr inbounds %struct.ossl_cmp_pkibody_st, %struct.ossl_cmp_pkibody_st* %4, i64 0, i32 1
  %error9 = bitcast %union.anon.1* %value8 to %struct.ossl_cmp_errormsgcontent_st**
  %5 = load %struct.ossl_cmp_errormsgcontent_st*, %struct.ossl_cmp_errormsgcontent_st** %error9, align 8, !tbaa !20
  %pKIStatusInfo10 = getelementptr inbounds %struct.ossl_cmp_errormsgcontent_st, %struct.ossl_cmp_errormsgcontent_st* %5, i64 0, i32 0
  store %struct.ossl_cmp_pkisi_st* %call6, %struct.ossl_cmp_pkisi_st** %pKIStatusInfo10, align 8, !tbaa !60
  %cmp11 = icmp eq %struct.ossl_cmp_pkisi_st* %call6, null
  br i1 %cmp11, label %err, label %if.end13

if.end13:                                         ; preds = %if.end5
  %call14 = tail call %struct.asn1_string_st* @ASN1_INTEGER_new() #8
  %6 = load %struct.ossl_cmp_pkibody_st*, %struct.ossl_cmp_pkibody_st** %body, align 8, !tbaa !11
  %value16 = getelementptr inbounds %struct.ossl_cmp_pkibody_st, %struct.ossl_cmp_pkibody_st* %6, i64 0, i32 1
  %error17 = bitcast %union.anon.1* %value16 to %struct.ossl_cmp_errormsgcontent_st**
  %7 = load %struct.ossl_cmp_errormsgcontent_st*, %struct.ossl_cmp_errormsgcontent_st** %error17, align 8, !tbaa !20
  %errorCode18 = getelementptr inbounds %struct.ossl_cmp_errormsgcontent_st, %struct.ossl_cmp_errormsgcontent_st* %7, i64 0, i32 1
  store %struct.asn1_string_st* %call14, %struct.asn1_string_st** %errorCode18, align 8, !tbaa !62
  %cmp19 = icmp eq %struct.asn1_string_st* %call14, null
  br i1 %cmp19, label %err, label %if.end21

if.end21:                                         ; preds = %if.end13
  %8 = load %struct.ossl_cmp_errormsgcontent_st*, %struct.ossl_cmp_errormsgcontent_st** %error17, align 8, !tbaa !20
  %errorCode25 = getelementptr inbounds %struct.ossl_cmp_errormsgcontent_st, %struct.ossl_cmp_errormsgcontent_st* %8, i64 0, i32 1
  %9 = load %struct.asn1_string_st*, %struct.asn1_string_st** %errorCode25, align 8, !tbaa !62
  %call26 = tail call i32 @ASN1_INTEGER_set_int64(%struct.asn1_string_st* noundef %9, i64 noundef %errorCode) #8
  %tobool.not = icmp eq i32 %call26, 0
  br i1 %tobool.not, label %err, label %if.end28

if.end28:                                         ; preds = %if.end21
  %10 = add i64 %errorCode, -1
  %11 = icmp ult i64 %10, 4294967295
  br i1 %11, label %if.then31, label %if.end34

if.then31:                                        ; preds = %if.end28
  %call32 = tail call i8* @ERR_lib_error_string(i64 noundef %errorCode) #8
  %call33 = tail call i8* @ERR_reason_error_string(i64 noundef %errorCode) #8
  br label %if.end34

if.end34:                                         ; preds = %if.then31, %if.end28
  %lib.0 = phi i8* [ %call32, %if.then31 ], [ null, %if.end28 ]
  %reason.0 = phi i8* [ %call33, %if.then31 ], [ null, %if.end28 ]
  %cmp35 = icmp ne i8* %lib.0, null
  %cmp36 = icmp ne i8* %reason.0, null
  %or.cond84 = select i1 %cmp35, i1 true, i1 %cmp36
  %cmp38 = icmp ne i8* %details, null
  %or.cond85 = or i1 %cmp38, %or.cond84
  br i1 %or.cond85, label %if.then39, label %if.end74

if.then39:                                        ; preds = %if.end34
  %call40 = tail call %struct.stack_st* @OPENSSL_sk_new_null() #8
  %12 = bitcast %struct.stack_st* %call40 to %struct.stack_st_ASN1_UTF8STRING*
  %cmp41 = icmp eq %struct.stack_st* %call40, null
  br i1 %cmp41, label %err, label %if.end43

if.end43:                                         ; preds = %if.then39
  %13 = load %struct.ossl_cmp_pkibody_st*, %struct.ossl_cmp_pkibody_st** %body, align 8, !tbaa !11
  %value45 = getelementptr inbounds %struct.ossl_cmp_pkibody_st, %struct.ossl_cmp_pkibody_st* %13, i64 0, i32 1
  %error46 = bitcast %union.anon.1* %value45 to %struct.ossl_cmp_errormsgcontent_st**
  %14 = load %struct.ossl_cmp_errormsgcontent_st*, %struct.ossl_cmp_errormsgcontent_st** %error46, align 8, !tbaa !20
  %errorDetails = getelementptr inbounds %struct.ossl_cmp_errormsgcontent_st, %struct.ossl_cmp_errormsgcontent_st* %14, i64 0, i32 2
  %15 = bitcast %struct.stack_st_ASN1_UTF8STRING** %errorDetails to %struct.stack_st**
  store %struct.stack_st* %call40, %struct.stack_st** %15, align 8, !tbaa !63
  br i1 %cmp35, label %land.lhs.true48, label %if.end55

land.lhs.true48:                                  ; preds = %if.end43
  %16 = load i8, i8* %lib.0, align 1, !tbaa !20
  %cmp49.not = icmp eq i8 %16, 0
  br i1 %cmp49.not, label %if.end55, label %land.lhs.true51

land.lhs.true51:                                  ; preds = %land.lhs.true48
  %call52 = tail call i32 @ossl_cmp_sk_ASN1_UTF8STRING_push_str(%struct.stack_st_ASN1_UTF8STRING* noundef nonnull %12, i8* noundef nonnull %lib.0, i32 noundef -1) #8
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %err, label %if.end55

if.end55:                                         ; preds = %land.lhs.true51, %land.lhs.true48, %if.end43
  br i1 %cmp36, label %land.lhs.true58, label %if.end66

land.lhs.true58:                                  ; preds = %if.end55
  %17 = load i8, i8* %reason.0, align 1, !tbaa !20
  %cmp60.not = icmp eq i8 %17, 0
  br i1 %cmp60.not, label %if.end66, label %land.lhs.true62

land.lhs.true62:                                  ; preds = %land.lhs.true58
  %call63 = tail call i32 @ossl_cmp_sk_ASN1_UTF8STRING_push_str(%struct.stack_st_ASN1_UTF8STRING* noundef nonnull %12, i8* noundef nonnull %reason.0, i32 noundef -1) #8
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %err, label %if.end66

if.end66:                                         ; preds = %land.lhs.true62, %land.lhs.true58, %if.end55
  br i1 %cmp38, label %land.lhs.true69, label %if.end74

land.lhs.true69:                                  ; preds = %if.end66
  %call70 = tail call i32 @ossl_cmp_sk_ASN1_UTF8STRING_push_str(%struct.stack_st_ASN1_UTF8STRING* noundef nonnull %12, i8* noundef nonnull %details, i32 noundef -1) #8
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %err, label %if.end74

if.end74:                                         ; preds = %if.end66, %land.lhs.true69, %if.end34
  %tobool75.not = icmp eq i32 %unprotected, 0
  br i1 %tobool75.not, label %land.lhs.true76, label %cleanup

land.lhs.true76:                                  ; preds = %if.end74
  %call77 = tail call i32 @ossl_cmp_msg_protect(%struct.ossl_cmp_ctx_st* noundef nonnull %ctx, %struct.ossl_cmp_msg_st* noundef nonnull %call) #8
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %err, label %cleanup

err:                                              ; preds = %land.lhs.true76, %land.lhs.true69, %land.lhs.true62, %land.lhs.true51, %if.then39, %if.end21, %if.end13, %if.end5, %if.end
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 776, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.ossl_cmp_error_new, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 118, i8* noundef null) #8
  tail call void @OSSL_CMP_MSG_free(%struct.ossl_cmp_msg_st* noundef %call) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end74, %land.lhs.true76, %entry, %err
  %retval.0 = phi %struct.ossl_cmp_msg_st* [ null, %err ], [ null, %entry ], [ %call, %land.lhs.true76 ], [ %call, %if.end74 ]
  ret %struct.ossl_cmp_msg_st* %retval.0
}

declare %struct.asn1_string_st* @ASN1_INTEGER_new() local_unnamed_addr #2

declare i32 @ASN1_INTEGER_set_int64(%struct.asn1_string_st* noundef, i64 noundef) local_unnamed_addr #2

declare i8* @ERR_lib_error_string(i64 noundef) local_unnamed_addr #2

declare i8* @ERR_reason_error_string(i64 noundef) local_unnamed_addr #2

declare i32 @ossl_cmp_sk_ASN1_UTF8STRING_push_str(%struct.stack_st_ASN1_UTF8STRING* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_cmp_certstatus_set0_certHash(%struct.ossl_cmp_certstatus_st* noundef %certStatus, %struct.asn1_string_st* noundef %hash) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq %struct.ossl_cmp_certstatus_st* %certStatus, null
  br i1 %cmp.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %certHash = getelementptr inbounds %struct.ossl_cmp_certstatus_st, %struct.ossl_cmp_certstatus_st* %certStatus, i64 0, i32 0
  %0 = load %struct.asn1_string_st*, %struct.asn1_string_st** %certHash, align 8, !tbaa !64
  tail call void @ASN1_OCTET_STRING_free(%struct.asn1_string_st* noundef %0) #8
  store %struct.asn1_string_st* %hash, %struct.asn1_string_st** %certHash, align 8, !tbaa !64
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

declare void @ASN1_OCTET_STRING_free(%struct.asn1_string_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_cmp_msg_st* @ossl_cmp_certConf_new(%struct.ossl_cmp_ctx_st* noundef %ctx, i32 noundef %fail_info, i8* noundef %text) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq %struct.ossl_cmp_ctx_st* %ctx, null
  br i1 %cmp.not, label %cleanup, label %land.rhs

land.rhs:                                         ; preds = %entry
  %newCert = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 65
  %0 = load %struct.x509_st*, %struct.x509_st** %newCert, align 8, !tbaa !66
  %cmp1.not = icmp eq %struct.x509_st* %0, null
  br i1 %cmp1.not, label %cleanup, label %if.end

if.end:                                           ; preds = %land.rhs
  %cmp3 = icmp ugt i32 %fail_info, 134217727
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 808, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.ossl_cmp_certConf_new, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 129, i8* noundef null) #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call = tail call %struct.ossl_cmp_msg_st* @ossl_cmp_msg_create(%struct.ossl_cmp_ctx_st* noundef nonnull %ctx, i32 noundef 24) #9
  %cmp6 = icmp eq %struct.ossl_cmp_msg_st* %call, null
  br i1 %cmp6, label %err, label %if.end8

if.end8:                                          ; preds = %if.end5
  %call9 = tail call %struct.ossl_cmp_certstatus_st* @OSSL_CMP_CERTSTATUS_new() #8
  %cmp10 = icmp eq %struct.ossl_cmp_certstatus_st* %call9, null
  br i1 %cmp10, label %err, label %if.end12

if.end12:                                         ; preds = %if.end8
  %body = getelementptr inbounds %struct.ossl_cmp_msg_st, %struct.ossl_cmp_msg_st* %call, i64 0, i32 1
  %1 = load %struct.ossl_cmp_pkibody_st*, %struct.ossl_cmp_pkibody_st** %body, align 8, !tbaa !11
  %value = getelementptr inbounds %struct.ossl_cmp_pkibody_st, %struct.ossl_cmp_pkibody_st* %1, i64 0, i32 1
  %certConf = bitcast %union.anon.1* %value to %struct.stack_st_OSSL_CMP_CERTSTATUS**
  %2 = load %struct.stack_st_OSSL_CMP_CERTSTATUS*, %struct.stack_st_OSSL_CMP_CERTSTATUS** %certConf, align 8, !tbaa !20
  %call13 = tail call fastcc %struct.stack_st* @ossl_check_OSSL_CMP_CERTSTATUS_sk_type(%struct.stack_st_OSSL_CMP_CERTSTATUS* noundef %2) #9
  %3 = bitcast %struct.ossl_cmp_certstatus_st* %call9 to i8*
  %call15 = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call13, i8* noundef nonnull %3) #8
  %tobool.not = icmp eq i32 %call15, 0
  br i1 %tobool.not, label %err, label %if.end17

if.end17:                                         ; preds = %if.end12
  %certReqId = getelementptr inbounds %struct.ossl_cmp_certstatus_st, %struct.ossl_cmp_certstatus_st* %call9, i64 0, i32 1
  %4 = load %struct.asn1_string_st*, %struct.asn1_string_st** %certReqId, align 8, !tbaa !67
  %call18 = tail call i32 @ASN1_INTEGER_set(%struct.asn1_string_st* noundef %4, i64 noundef 0) #8
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %err, label %if.end21

if.end21:                                         ; preds = %if.end17
  %5 = load %struct.x509_st*, %struct.x509_st** %newCert, align 8, !tbaa !66
  %call23 = tail call %struct.asn1_string_st* @X509_digest_sig(%struct.x509_st* noundef %5, %struct.evp_md_st** noundef null, i32* noundef null) #8
  %cmp24 = icmp eq %struct.asn1_string_st* %call23, null
  br i1 %cmp24, label %err, label %if.end26

if.end26:                                         ; preds = %if.end21
  %call27 = tail call i32 @ossl_cmp_certstatus_set0_certHash(%struct.ossl_cmp_certstatus_st* noundef nonnull %call9, %struct.asn1_string_st* noundef nonnull %call23) #9
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %err, label %if.end30

if.end30:                                         ; preds = %if.end26
  %cmp31.not = icmp eq i32 %fail_info, 0
  br i1 %cmp31.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end30
  %call32 = tail call %struct.ossl_cmp_pkisi_st* @OSSL_CMP_STATUSINFO_new(i32 noundef 2, i32 noundef %fail_info, i8* noundef %text) #8
  br label %cond.end

cond.false:                                       ; preds = %if.end30
  %call33 = tail call %struct.ossl_cmp_pkisi_st* @OSSL_CMP_STATUSINFO_new(i32 noundef 0, i32 noundef 0, i8* noundef %text) #8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.ossl_cmp_pkisi_st* [ %call32, %cond.true ], [ %call33, %cond.false ]
  %cmp34 = icmp eq %struct.ossl_cmp_pkisi_st* %cond, null
  br i1 %cmp34, label %err, label %if.end36

if.end36:                                         ; preds = %cond.end
  %statusInfo = getelementptr inbounds %struct.ossl_cmp_certstatus_st, %struct.ossl_cmp_certstatus_st* %call9, i64 0, i32 2
  store %struct.ossl_cmp_pkisi_st* %cond, %struct.ossl_cmp_pkisi_st** %statusInfo, align 8, !tbaa !68
  %call37 = tail call i32 @ossl_cmp_msg_protect(%struct.ossl_cmp_ctx_st* noundef nonnull %ctx, %struct.ossl_cmp_msg_st* noundef nonnull %call) #8
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %err, label %cleanup

err:                                              ; preds = %if.end36, %cond.end, %if.end26, %if.end21, %if.end17, %if.end12, %if.end8, %if.end5
  %certHash.0 = phi %struct.asn1_string_st* [ null, %if.end5 ], [ null, %if.end8 ], [ null, %if.end21 ], [ null, %cond.end ], [ null, %if.end36 ], [ %call23, %if.end26 ], [ null, %if.end17 ], [ null, %if.end12 ]
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 854, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.ossl_cmp_certConf_new, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 116, i8* noundef null) #8
  tail call void @OSSL_CMP_MSG_free(%struct.ossl_cmp_msg_st* noundef %call) #9
  tail call void @ASN1_OCTET_STRING_free(%struct.asn1_string_st* noundef %certHash.0) #8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end36, %land.rhs, %err, %if.then4
  %retval.0 = phi %struct.ossl_cmp_msg_st* [ null, %if.then4 ], [ null, %err ], [ null, %land.rhs ], [ %call, %if.end36 ], [ null, %entry ]
  ret %struct.ossl_cmp_msg_st* %retval.0
}

declare %struct.ossl_cmp_certstatus_st* @OSSL_CMP_CERTSTATUS_new() local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_OSSL_CMP_CERTSTATUS_sk_type(%struct.stack_st_OSSL_CMP_CERTSTATUS* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_OSSL_CMP_CERTSTATUS* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare %struct.asn1_string_st* @X509_digest_sig(%struct.x509_st* noundef, %struct.evp_md_st** noundef, i32* noundef) local_unnamed_addr #2

declare %struct.ossl_cmp_pkisi_st* @OSSL_CMP_STATUSINFO_new(i32 noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_cmp_msg_st* @ossl_cmp_pollReq_new(%struct.ossl_cmp_ctx_st* noundef %ctx, i32 noundef %crid) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq %struct.ossl_cmp_ctx_st* %ctx, null
  br i1 %cmp.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call %struct.ossl_cmp_msg_st* @ossl_cmp_msg_create(%struct.ossl_cmp_ctx_st* noundef nonnull %ctx, i32 noundef 25) #9
  %cmp3 = icmp eq %struct.ossl_cmp_msg_st* %call, null
  br i1 %cmp3, label %err, label %if.end6

if.end6:                                          ; preds = %if.end
  %call7 = tail call %struct.ossl_cmp_pollreq_st* @OSSL_CMP_POLLREQ_new() #8
  %cmp8 = icmp eq %struct.ossl_cmp_pollreq_st* %call7, null
  br i1 %cmp8, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end6
  %certReqId = getelementptr inbounds %struct.ossl_cmp_pollreq_st, %struct.ossl_cmp_pollreq_st* %call7, i64 0, i32 0
  %0 = load %struct.asn1_string_st*, %struct.asn1_string_st** %certReqId, align 8, !tbaa !69
  %conv10 = sext i32 %crid to i64
  %call11 = tail call i32 @ASN1_INTEGER_set(%struct.asn1_string_st* noundef %0, i64 noundef %conv10) #8
  %tobool.not = icmp eq i32 %call11, 0
  br i1 %tobool.not, label %err, label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %lor.lhs.false
  %body = getelementptr inbounds %struct.ossl_cmp_msg_st, %struct.ossl_cmp_msg_st* %call, i64 0, i32 1
  %1 = load %struct.ossl_cmp_pkibody_st*, %struct.ossl_cmp_pkibody_st** %body, align 8, !tbaa !11
  %value = getelementptr inbounds %struct.ossl_cmp_pkibody_st, %struct.ossl_cmp_pkibody_st* %1, i64 0, i32 1
  %pollReq = bitcast %union.anon.1* %value to %struct.stack_st_OSSL_CMP_POLLREQ**
  %2 = load %struct.stack_st_OSSL_CMP_POLLREQ*, %struct.stack_st_OSSL_CMP_POLLREQ** %pollReq, align 8, !tbaa !20
  %call13 = tail call fastcc i32 @sk_OSSL_CMP_POLLREQ_push(%struct.stack_st_OSSL_CMP_POLLREQ* noundef %2, %struct.ossl_cmp_pollreq_st* noundef nonnull %call7) #9
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %err, label %if.end16

if.end16:                                         ; preds = %lor.lhs.false12
  %call17 = tail call i32 @ossl_cmp_msg_protect(%struct.ossl_cmp_ctx_st* noundef nonnull %ctx, %struct.ossl_cmp_msg_st* noundef nonnull %call) #8
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %err, label %cleanup

err:                                              ; preds = %if.end16, %if.end6, %lor.lhs.false, %lor.lhs.false12, %if.end
  %preq.0 = phi %struct.ossl_cmp_pollreq_st* [ null, %if.end ], [ null, %if.end6 ], [ null, %if.end16 ], [ %call7, %lor.lhs.false12 ], [ %call7, %lor.lhs.false ]
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 883, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.ossl_cmp_pollReq_new, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 124, i8* noundef null) #8
  tail call void @OSSL_CMP_POLLREQ_free(%struct.ossl_cmp_pollreq_st* noundef %preq.0) #8
  tail call void @OSSL_CMP_MSG_free(%struct.ossl_cmp_msg_st* noundef %call) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %entry, %err
  %retval.0 = phi %struct.ossl_cmp_msg_st* [ null, %err ], [ null, %entry ], [ %call, %if.end16 ]
  ret %struct.ossl_cmp_msg_st* %retval.0
}

declare %struct.ossl_cmp_pollreq_st* @OSSL_CMP_POLLREQ_new() local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @sk_OSSL_CMP_POLLREQ_push(%struct.stack_st_OSSL_CMP_POLLREQ* noundef %sk, %struct.ossl_cmp_pollreq_st* noundef %ptr) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_OSSL_CMP_POLLREQ* %sk to %struct.stack_st*
  %1 = bitcast %struct.ossl_cmp_pollreq_st* %ptr to i8*
  %call = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %0, i8* noundef %1) #8
  ret i32 %call
}

declare void @OSSL_CMP_POLLREQ_free(%struct.ossl_cmp_pollreq_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_cmp_msg_st* @ossl_cmp_pollRep_new(%struct.ossl_cmp_ctx_st* noundef %ctx, i32 noundef %crid, i64 noundef %poll_after) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq %struct.ossl_cmp_ctx_st* %ctx, null
  br i1 %cmp.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call %struct.ossl_cmp_msg_st* @ossl_cmp_msg_create(%struct.ossl_cmp_ctx_st* noundef nonnull %ctx, i32 noundef 26) #9
  %cmp3 = icmp eq %struct.ossl_cmp_msg_st* %call, null
  br i1 %cmp3, label %err, label %if.end6

if.end6:                                          ; preds = %if.end
  %call7 = tail call %struct.ossl_cmp_pollrep_st* @OSSL_CMP_POLLREP_new() #8
  %cmp8 = icmp eq %struct.ossl_cmp_pollrep_st* %call7, null
  br i1 %cmp8, label %err, label %if.end11

if.end11:                                         ; preds = %if.end6
  %body = getelementptr inbounds %struct.ossl_cmp_msg_st, %struct.ossl_cmp_msg_st* %call, i64 0, i32 1
  %0 = load %struct.ossl_cmp_pkibody_st*, %struct.ossl_cmp_pkibody_st** %body, align 8, !tbaa !11
  %value = getelementptr inbounds %struct.ossl_cmp_pkibody_st, %struct.ossl_cmp_pkibody_st* %0, i64 0, i32 1
  %pollRep = bitcast %union.anon.1* %value to %struct.stack_st_OSSL_CMP_POLLREP**
  %1 = load %struct.stack_st_OSSL_CMP_POLLREP*, %struct.stack_st_OSSL_CMP_POLLREP** %pollRep, align 8, !tbaa !20
  %call12 = tail call fastcc i32 @sk_OSSL_CMP_POLLREP_push(%struct.stack_st_OSSL_CMP_POLLREP* noundef %1, %struct.ossl_cmp_pollrep_st* noundef nonnull %call7) #9
  %tobool.not = icmp eq i32 %call12, 0
  br i1 %tobool.not, label %err, label %if.end14

if.end14:                                         ; preds = %if.end11
  %certReqId = getelementptr inbounds %struct.ossl_cmp_pollrep_st, %struct.ossl_cmp_pollrep_st* %call7, i64 0, i32 0
  %2 = load %struct.asn1_string_st*, %struct.asn1_string_st** %certReqId, align 8, !tbaa !71
  %conv15 = sext i32 %crid to i64
  %call16 = tail call i32 @ASN1_INTEGER_set(%struct.asn1_string_st* noundef %2, i64 noundef %conv15) #8
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %err, label %if.end19

if.end19:                                         ; preds = %if.end14
  %checkAfter = getelementptr inbounds %struct.ossl_cmp_pollrep_st, %struct.ossl_cmp_pollrep_st* %call7, i64 0, i32 1
  %3 = load %struct.asn1_string_st*, %struct.asn1_string_st** %checkAfter, align 8, !tbaa !73
  %call20 = tail call i32 @ASN1_INTEGER_set_int64(%struct.asn1_string_st* noundef %3, i64 noundef %poll_after) #8
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %err, label %if.end23

if.end23:                                         ; preds = %if.end19
  %call24 = tail call i32 @ossl_cmp_msg_protect(%struct.ossl_cmp_ctx_st* noundef nonnull %ctx, %struct.ossl_cmp_msg_st* noundef nonnull %call) #8
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %err, label %cleanup

err:                                              ; preds = %if.end23, %if.end19, %if.end14, %if.end11, %if.end6, %if.end
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 914, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.ossl_cmp_pollRep_new, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 123, i8* noundef null) #8
  tail call void @OSSL_CMP_MSG_free(%struct.ossl_cmp_msg_st* noundef %call) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %entry, %err
  %retval.0 = phi %struct.ossl_cmp_msg_st* [ null, %err ], [ null, %entry ], [ %call, %if.end23 ]
  ret %struct.ossl_cmp_msg_st* %retval.0
}

declare %struct.ossl_cmp_pollrep_st* @OSSL_CMP_POLLREP_new() local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @sk_OSSL_CMP_POLLREP_push(%struct.stack_st_OSSL_CMP_POLLREP* noundef %sk, %struct.ossl_cmp_pollrep_st* noundef %ptr) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_OSSL_CMP_POLLREP* %sk to %struct.stack_st*
  %1 = bitcast %struct.ossl_cmp_pollrep_st* %ptr to i8*
  %call = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %0, i8* noundef %1) #8
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_cmp_pkisi_st* @ossl_cmp_revrepcontent_get_pkisi(%struct.ossl_cmp_revrepcontent_st* noundef readonly %rrep, i32 noundef %rsid) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq %struct.ossl_cmp_revrepcontent_st* %rrep, null
  br i1 %cmp.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %status3 = getelementptr inbounds %struct.ossl_cmp_revrepcontent_st, %struct.ossl_cmp_revrepcontent_st* %rrep, i64 0, i32 0
  %0 = load %struct.stack_st_OSSL_CMP_PKISI*, %struct.stack_st_OSSL_CMP_PKISI** %status3, align 8, !tbaa !55
  %call = tail call fastcc %struct.stack_st* @ossl_check_const_OSSL_CMP_PKISI_sk_type(%struct.stack_st_OSSL_CMP_PKISI* noundef %0) #9
  %call4 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call, i32 noundef %rsid) #8
  %cmp5.not = icmp eq i8* %call4, null
  br i1 %cmp5.not, label %if.end8, label %if.then7

if.then7:                                         ; preds = %if.end
  %1 = bitcast i8* %call4 to %struct.ossl_cmp_pkisi_st*
  br label %cleanup

if.end8:                                          ; preds = %if.end
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 937, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.ossl_cmp_revrepcontent_get_pkisi, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 132, i8* noundef null) #8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end8, %if.then7
  %retval.0 = phi %struct.ossl_cmp_pkisi_st* [ %1, %if.then7 ], [ null, %if.end8 ], [ null, %entry ]
  ret %struct.ossl_cmp_pkisi_st* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_OSSL_CMP_PKISI_sk_type(%struct.stack_st_OSSL_CMP_PKISI* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_OSSL_CMP_PKISI* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_crmf_certid_st* @ossl_cmp_revrepcontent_get_CertId(%struct.ossl_cmp_revrepcontent_st* noundef readonly %rrep, i32 noundef %rsid) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq %struct.ossl_cmp_revrepcontent_st* %rrep, null
  br i1 %cmp.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %revCerts = getelementptr inbounds %struct.ossl_cmp_revrepcontent_st, %struct.ossl_cmp_revrepcontent_st* %rrep, i64 0, i32 1
  %0 = load %struct.stack_st_OSSL_CRMF_CERTID*, %struct.stack_st_OSSL_CRMF_CERTID** %revCerts, align 8, !tbaa !57
  %call = tail call fastcc %struct.stack_st* @ossl_check_const_OSSL_CRMF_CERTID_sk_type(%struct.stack_st_OSSL_CRMF_CERTID* noundef %0) #9
  %call3 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call, i32 noundef %rsid) #8
  %cmp4.not = icmp eq i8* %call3, null
  br i1 %cmp4.not, label %if.end7, label %if.then6

if.then6:                                         ; preds = %if.end
  %1 = bitcast i8* %call3 to %struct.ossl_crmf_certid_st*
  br label %cleanup

if.end7:                                          ; preds = %if.end
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 959, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.ossl_cmp_revrepcontent_get_CertId, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 109, i8* noundef null) #8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end7, %if.then6
  %retval.0 = phi %struct.ossl_crmf_certid_st* [ %1, %if.then6 ], [ null, %if.end7 ], [ null, %entry ]
  ret %struct.ossl_crmf_certid_st* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_OSSL_CRMF_CERTID_sk_type(%struct.stack_st_OSSL_CRMF_CERTID* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_OSSL_CRMF_CERTID* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_cmp_pollrep_st* @ossl_cmp_pollrepcontent_get0_pollrep(%struct.stack_st_OSSL_CMP_POLLREP* noundef %prc, i32 noundef %rid) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq %struct.stack_st_OSSL_CMP_POLLREP* %prc, null
  br i1 %cmp.not, label %cleanup, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %call18 = tail call fastcc i32 @sk_OSSL_CMP_POLLREP_num(%struct.stack_st_OSSL_CMP_POLLREP* noundef nonnull %prc) #9
  %cmp319 = icmp sgt i32 %call18, 0
  br i1 %cmp319, label %for.body, label %for.end

for.cond:                                         ; preds = %for.body
  %call = tail call fastcc i32 @sk_OSSL_CMP_POLLREP_num(%struct.stack_st_OSSL_CMP_POLLREP* noundef nonnull %prc) #9
  %cmp3 = icmp slt i32 %inc, %call
  br i1 %cmp3, label %for.body, label %for.end, !llvm.loop !74

for.body:                                         ; preds = %for.cond.preheader, %for.cond
  %i.020 = phi i32 [ %inc, %for.cond ], [ 0, %for.cond.preheader ]
  %call5 = tail call fastcc %struct.ossl_cmp_pollrep_st* @sk_OSSL_CMP_POLLREP_value(%struct.stack_st_OSSL_CMP_POLLREP* noundef nonnull %prc, i32 noundef %i.020) #9
  %certReqId = getelementptr inbounds %struct.ossl_cmp_pollrep_st, %struct.ossl_cmp_pollrep_st* %call5, i64 0, i32 0
  %0 = load %struct.asn1_string_st*, %struct.asn1_string_st** %certReqId, align 8, !tbaa !71
  %call6 = tail call fastcc i32 @suitable_rid(%struct.asn1_string_st* noundef %0, i32 noundef %rid) #9
  %tobool.not = icmp eq i32 %call6, 0
  %inc = add nuw nsw i32 %i.020, 1
  br i1 %tobool.not, label %for.cond, label %cleanup

for.end:                                          ; preds = %for.cond, %for.cond.preheader
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 1000, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @__func__.ossl_cmp_pollrepcontent_get0_pollrep, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 113, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.29, i64 0, i64 0), i32 noundef %rid) #8
  br label %cleanup

cleanup:                                          ; preds = %for.body, %entry, %for.end
  %retval.0 = phi %struct.ossl_cmp_pollrep_st* [ null, %for.end ], [ null, %entry ], [ %call5, %for.body ]
  ret %struct.ossl_cmp_pollrep_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @sk_OSSL_CMP_POLLREP_num(%struct.stack_st_OSSL_CMP_POLLREP* noundef %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_OSSL_CMP_POLLREP* %sk to %struct.stack_st*
  %call = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %0) #8
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.ossl_cmp_pollrep_st* @sk_OSSL_CMP_POLLREP_value(%struct.stack_st_OSSL_CMP_POLLREP* noundef %sk, i32 noundef %idx) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_OSSL_CMP_POLLREP* %sk to %struct.stack_st*
  %call = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %0, i32 noundef %idx) #8
  %1 = bitcast i8* %call to %struct.ossl_cmp_pollrep_st*
  ret %struct.ossl_cmp_pollrep_st* %1
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @suitable_rid(%struct.asn1_string_st* noundef %certReqId, i32 noundef %rid) unnamed_addr #0 {
entry:
  %cmp = icmp eq i32 %rid, -1
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call i32 @ossl_cmp_asn1_get_int(%struct.asn1_string_st* noundef %certReqId) #8
  %cmp1 = icmp eq i32 %call, -1
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 973, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.suitable_rid, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 108, i8* noundef null) #8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %cmp4 = icmp eq i32 %call, %rid
  %conv = zext i1 %cmp4 to i32
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end3, %if.then2
  %retval.0 = phi i32 [ 0, %if.then2 ], [ %conv, %if.end3 ], [ 1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_cmp_certresponse_st* @ossl_cmp_certrepmessage_get0_certresponse(%struct.ossl_cmp_certrepmessage_st* noundef readonly %crm, i32 noundef %rid) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq %struct.ossl_cmp_certrepmessage_st* %crm, null
  br i1 %cmp.not, label %cleanup, label %land.rhs

land.rhs:                                         ; preds = %entry
  %response = getelementptr inbounds %struct.ossl_cmp_certrepmessage_st, %struct.ossl_cmp_certrepmessage_st* %crm, i64 0, i32 1
  %0 = load %struct.stack_st_OSSL_CMP_CERTRESPONSE*, %struct.stack_st_OSSL_CMP_CERTRESPONSE** %response, align 8, !tbaa !49
  %cmp1.not = icmp eq %struct.stack_st_OSSL_CMP_CERTRESPONSE* %0, null
  br i1 %cmp1.not, label %cleanup, label %for.cond.preheader

for.cond.preheader:                               ; preds = %land.rhs
  %call22 = tail call fastcc %struct.stack_st* @ossl_check_const_OSSL_CMP_CERTRESPONSE_sk_type(%struct.stack_st_OSSL_CMP_CERTRESPONSE* noundef nonnull %0) #9
  %call423 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call22) #8
  %cmp524 = icmp sgt i32 %call423, 0
  br i1 %cmp524, label %for.body, label %for.end

for.cond:                                         ; preds = %for.body
  %1 = load %struct.stack_st_OSSL_CMP_CERTRESPONSE*, %struct.stack_st_OSSL_CMP_CERTRESPONSE** %response, align 8, !tbaa !49
  %call = tail call fastcc %struct.stack_st* @ossl_check_const_OSSL_CMP_CERTRESPONSE_sk_type(%struct.stack_st_OSSL_CMP_CERTRESPONSE* noundef %1) #9
  %call4 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #8
  %cmp5 = icmp slt i32 %inc, %call4
  br i1 %cmp5, label %for.body, label %for.end, !llvm.loop !75

for.body:                                         ; preds = %for.cond.preheader, %for.cond
  %i.025 = phi i32 [ %inc, %for.cond ], [ 0, %for.cond.preheader ]
  %2 = load %struct.stack_st_OSSL_CMP_CERTRESPONSE*, %struct.stack_st_OSSL_CMP_CERTRESPONSE** %response, align 8, !tbaa !49
  %call7 = tail call fastcc %struct.stack_st* @ossl_check_const_OSSL_CMP_CERTRESPONSE_sk_type(%struct.stack_st_OSSL_CMP_CERTRESPONSE* noundef %2) #9
  %call8 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call7, i32 noundef %i.025) #8
  %certReqId = bitcast i8* %call8 to %struct.asn1_string_st**
  %3 = load %struct.asn1_string_st*, %struct.asn1_string_st** %certReqId, align 8, !tbaa !43
  %call9 = tail call fastcc i32 @suitable_rid(%struct.asn1_string_st* noundef %3, i32 noundef %rid) #9
  %tobool.not = icmp eq i32 %call9, 0
  %inc = add nuw nsw i32 %i.025, 1
  br i1 %tobool.not, label %for.cond, label %if.then10

if.then10:                                        ; preds = %for.body
  %4 = bitcast i8* %call8 to %struct.ossl_cmp_certresponse_st*
  br label %cleanup

for.end:                                          ; preds = %for.cond, %for.cond.preheader
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 1026, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @__func__.ossl_cmp_certrepmessage_get0_certresponse, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 113, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.29, i64 0, i64 0), i32 noundef %rid) #8
  br label %cleanup

cleanup:                                          ; preds = %entry, %land.rhs, %for.end, %if.then10
  %retval.0 = phi %struct.ossl_cmp_certresponse_st* [ %4, %if.then10 ], [ null, %for.end ], [ null, %land.rhs ], [ null, %entry ]
  ret %struct.ossl_cmp_certresponse_st* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_OSSL_CMP_CERTRESPONSE_sk_type(%struct.stack_st_OSSL_CMP_CERTRESPONSE* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_OSSL_CMP_CERTRESPONSE* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

; Function Attrs: noinline nounwind uwtable
define %struct.x509_st* @ossl_cmp_certresponse_get1_cert(%struct.ossl_cmp_certresponse_st* noundef readonly %crep, %struct.ossl_cmp_ctx_st* noundef readonly %ctx, %struct.evp_pkey_st* noundef %pkey) local_unnamed_addr #0 {
entry:
  %cmp = icmp ne %struct.ossl_cmp_certresponse_st* %crep, null
  %cmp1 = icmp ne %struct.ossl_cmp_ctx_st* %ctx, null
  %0 = and i1 %cmp, %cmp1
  br i1 %0, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %certifiedKeyPair = getelementptr inbounds %struct.ossl_cmp_certresponse_st, %struct.ossl_cmp_certresponse_st* %crep, i64 0, i32 2
  %1 = load %struct.ossl_cmp_certifiedkeypair_st*, %struct.ossl_cmp_certifiedkeypair_st** %certifiedKeyPair, align 8, !tbaa !44
  %tobool.not = icmp eq %struct.ossl_cmp_certifiedkeypair_st* %1, null
  br i1 %tobool.not, label %if.then14, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %certOrEncCert = getelementptr inbounds %struct.ossl_cmp_certifiedkeypair_st, %struct.ossl_cmp_certifiedkeypair_st* %1, i64 0, i32 0
  %2 = load %struct.ossl_cmp_certorenccert_st*, %struct.ossl_cmp_certorenccert_st** %certOrEncCert, align 8, !tbaa !45
  %cmp4.not = icmp eq %struct.ossl_cmp_certorenccert_st* %2, null
  br i1 %cmp4.not, label %if.then14, label %if.then5

if.then5:                                         ; preds = %land.lhs.true
  %type = getelementptr inbounds %struct.ossl_cmp_certorenccert_st, %struct.ossl_cmp_certorenccert_st* %2, i64 0, i32 0
  %3 = load i32, i32* %type, align 8, !tbaa !47
  switch i32 %3, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb6
  ]

sw.bb:                                            ; preds = %if.then5
  %certificate = getelementptr inbounds %struct.ossl_cmp_certorenccert_st, %struct.ossl_cmp_certorenccert_st* %2, i64 0, i32 1, i32 0
  %4 = load %struct.x509_st*, %struct.x509_st** %certificate, align 8, !tbaa !20
  %call = tail call %struct.x509_st* @X509_dup(%struct.x509_st* noundef %4) #8
  br label %if.end12

sw.bb6:                                           ; preds = %if.then5
  %cmp7 = icmp eq %struct.evp_pkey_st* %pkey, null
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %sw.bb6
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 1054, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.ossl_cmp_certresponse_get1_cert, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 131, i8* noundef null) #8
  br label %cleanup

if.end9:                                          ; preds = %sw.bb6
  %value10 = getelementptr inbounds %struct.ossl_cmp_certorenccert_st, %struct.ossl_cmp_certorenccert_st* %2, i64 0, i32 1
  %encryptedCert = bitcast %union.anon.3* %value10 to %struct.ossl_crmf_encryptedvalue_st**
  %5 = load %struct.ossl_crmf_encryptedvalue_st*, %struct.ossl_crmf_encryptedvalue_st** %encryptedCert, align 8, !tbaa !20
  %libctx = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 0
  %6 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !15
  %propq = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 1
  %7 = load i8*, i8** %propq, align 8, !tbaa !18
  %call11 = tail call %struct.x509_st* @OSSL_CRMF_ENCRYPTEDVALUE_get1_encCert(%struct.ossl_crmf_encryptedvalue_st* noundef %5, %struct.ossl_lib_ctx_st* noundef %6, i8* noundef %7, %struct.evp_pkey_st* noundef nonnull %pkey) #8
  br label %if.end12

sw.default:                                       ; preds = %if.then5
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 1063, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.ossl_cmp_certresponse_get1_cert, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 135, i8* noundef null) #8
  br label %cleanup

if.end12:                                         ; preds = %sw.bb, %if.end9
  %crt.0 = phi %struct.x509_st* [ %call11, %if.end9 ], [ %call, %sw.bb ]
  %cmp13 = icmp eq %struct.x509_st* %crt.0, null
  br i1 %cmp13, label %if.then14, label %if.else

if.then14:                                        ; preds = %if.end, %land.lhs.true, %if.end12
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 1068, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.ossl_cmp_certresponse_get1_cert, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 112, i8* noundef null) #8
  br label %cleanup

if.else:                                          ; preds = %if.end12
  %libctx15 = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 0
  %8 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx15, align 8, !tbaa !15
  %propq16 = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 1
  %9 = load i8*, i8** %propq16, align 8, !tbaa !18
  %call17 = tail call i32 @ossl_x509_set0_libctx(%struct.x509_st* noundef nonnull %crt.0, %struct.ossl_lib_ctx_st* noundef %8, i8* noundef %9) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then14, %if.else, %entry, %sw.default, %if.then8
  %retval.0 = phi %struct.x509_st* [ null, %sw.default ], [ null, %if.then8 ], [ null, %entry ], [ %crt.0, %if.else ], [ null, %if.then14 ]
  ret %struct.x509_st* %retval.0
}

declare %struct.x509_st* @X509_dup(%struct.x509_st* noundef) local_unnamed_addr #2

declare %struct.x509_st* @OSSL_CRMF_ENCRYPTEDVALUE_get1_encCert(%struct.ossl_crmf_encryptedvalue_st* noundef, %struct.ossl_lib_ctx_st* noundef, i8* noundef, %struct.evp_pkey_st* noundef) local_unnamed_addr #2

declare i32 @ossl_x509_set0_libctx(%struct.x509_st* noundef, %struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @OSSL_CMP_MSG_update_transactionID(%struct.ossl_cmp_ctx_st* noundef %ctx, %struct.ossl_cmp_msg_st* noundef %msg) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.ossl_cmp_ctx_st* %ctx, null
  %cmp1 = icmp eq %struct.ossl_cmp_msg_st* %msg, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 1077, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.OSSL_CMP_MSG_update_transactionID, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 103, i8* noundef null) #8
  br label %return

if.end:                                           ; preds = %entry
  %header = getelementptr inbounds %struct.ossl_cmp_msg_st, %struct.ossl_cmp_msg_st* %msg, i64 0, i32 0
  %0 = load %struct.ossl_cmp_pkiheader_st*, %struct.ossl_cmp_pkiheader_st** %header, align 8, !tbaa !10
  %call = tail call i32 @ossl_cmp_hdr_set_transactionID(%struct.ossl_cmp_ctx_st* noundef nonnull %ctx, %struct.ossl_cmp_pkiheader_st* noundef %0) #8
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %if.end3

if.end3:                                          ; preds = %if.end
  %1 = load %struct.ossl_cmp_pkiheader_st*, %struct.ossl_cmp_pkiheader_st** %header, align 8, !tbaa !10
  %protectionAlg = getelementptr inbounds %struct.ossl_cmp_pkiheader_st, %struct.ossl_cmp_pkiheader_st* %1, i64 0, i32 4
  %2 = load %struct.X509_algor_st*, %struct.X509_algor_st** %protectionAlg, align 8, !tbaa !76
  %cmp5 = icmp eq %struct.X509_algor_st* %2, null
  br i1 %cmp5, label %return, label %lor.rhs

lor.rhs:                                          ; preds = %if.end3
  %call6 = tail call i32 @ossl_cmp_msg_protect(%struct.ossl_cmp_ctx_st* noundef nonnull %ctx, %struct.ossl_cmp_msg_st* noundef nonnull %msg) #8
  %tobool7 = icmp ne i32 %call6, 0
  %phi.cast = zext i1 %tobool7 to i32
  br label %return

return:                                           ; preds = %if.end3, %lor.rhs, %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.end ], [ 1, %if.end3 ], [ %phi.cast, %lor.rhs ]
  ret i32 %retval.0
}

declare i32 @ossl_cmp_hdr_set_transactionID(%struct.ossl_cmp_ctx_st* noundef, %struct.ossl_cmp_pkiheader_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_cmp_msg_st* @OSSL_CMP_MSG_read(i8* noundef %file, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) local_unnamed_addr #0 {
entry:
  %msg = alloca %struct.ossl_cmp_msg_st*, align 8
  %0 = bitcast %struct.ossl_cmp_msg_st** %msg to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #10
  %cmp = icmp eq i8* %file, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 1093, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.OSSL_CMP_MSG_read, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 103, i8* noundef null) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call %struct.ossl_cmp_msg_st* @OSSL_CMP_MSG_new(%struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) #9
  store %struct.ossl_cmp_msg_st* %call, %struct.ossl_cmp_msg_st** %msg, align 8, !tbaa !26
  %cmp1 = icmp eq %struct.ossl_cmp_msg_st* %call, null
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 1099, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.OSSL_CMP_MSG_read, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 786688, i8* noundef null) #8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call4 = tail call %struct.bio_st* @BIO_new_file(i8* noundef nonnull %file, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i64 0, i64 0)) #8
  %cmp5 = icmp eq %struct.bio_st* %call4, null
  br i1 %cmp5, label %cleanup, label %if.end7

if.end7:                                          ; preds = %if.end3
  %call8 = call %struct.ossl_cmp_msg_st* @d2i_OSSL_CMP_MSG_bio(%struct.bio_st* noundef nonnull %call4, %struct.ossl_cmp_msg_st** noundef nonnull %msg) #9
  %cmp9 = icmp eq %struct.ossl_cmp_msg_st* %call8, null
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end7
  %1 = load %struct.ossl_cmp_msg_st*, %struct.ossl_cmp_msg_st** %msg, align 8, !tbaa !26
  call void @OSSL_CMP_MSG_free(%struct.ossl_cmp_msg_st* noundef %1) #9
  store %struct.ossl_cmp_msg_st* null, %struct.ossl_cmp_msg_st** %msg, align 8, !tbaa !26
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end7
  %call12 = call i32 @BIO_free(%struct.bio_st* noundef nonnull %call4) #8
  %2 = load %struct.ossl_cmp_msg_st*, %struct.ossl_cmp_msg_st** %msg, align 8, !tbaa !26
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end11, %if.then2, %if.then
  %retval.0 = phi %struct.ossl_cmp_msg_st* [ null, %if.then ], [ null, %if.then2 ], [ %2, %if.end11 ], [ null, %if.end3 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #10
  ret %struct.ossl_cmp_msg_st* %retval.0
}

declare %struct.bio_st* @BIO_new_file(i8* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_cmp_msg_st* @d2i_OSSL_CMP_MSG_bio(%struct.bio_st* noundef %bio, %struct.ossl_cmp_msg_st** noundef %msg) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq %struct.ossl_cmp_msg_st** %msg, null
  br i1 %cmp.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %0 = load %struct.ossl_cmp_msg_st*, %struct.ossl_cmp_msg_st** %msg, align 8, !tbaa !26
  %cmp1.not = icmp eq %struct.ossl_cmp_msg_st* %0, null
  br i1 %cmp1.not, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %libctx2 = getelementptr inbounds %struct.ossl_cmp_msg_st, %struct.ossl_cmp_msg_st* %0, i64 0, i32 4
  %1 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx2, align 8, !tbaa !4
  %propq3 = getelementptr inbounds %struct.ossl_cmp_msg_st, %struct.ossl_cmp_msg_st* %0, i64 0, i32 5
  %2 = load i8*, i8** %propq3, align 8, !tbaa !9
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %libctx.0 = phi %struct.ossl_lib_ctx_st* [ %1, %if.then ], [ null, %land.lhs.true ], [ null, %entry ]
  %propq.0 = phi i8* [ %2, %if.then ], [ null, %land.lhs.true ], [ null, %entry ]
  %call = tail call %struct.ASN1_ITEM_st* @OSSL_CMP_MSG_it() #8
  %3 = bitcast %struct.ossl_cmp_msg_st** %msg to i8*
  %call4 = tail call i8* @ASN1_item_d2i_bio_ex(%struct.ASN1_ITEM_st* noundef %call, %struct.bio_st* noundef %bio, i8* noundef %3, %struct.ossl_lib_ctx_st* noundef %libctx.0, i8* noundef %propq.0) #8
  %4 = bitcast i8* %call4 to %struct.ossl_cmp_msg_st*
  ret %struct.ossl_cmp_msg_st* %4
}

declare i32 @BIO_free(%struct.bio_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @OSSL_CMP_MSG_write(i8* noundef %file, %struct.ossl_cmp_msg_st* noundef %msg) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq i8* %file, null
  %cmp1 = icmp eq %struct.ossl_cmp_msg_st* %msg, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 1119, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.OSSL_CMP_MSG_write, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 103, i8* noundef null) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call %struct.bio_st* @BIO_new_file(i8* noundef nonnull %file, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.31, i64 0, i64 0)) #8
  %cmp2 = icmp eq %struct.bio_st* %call, null
  br i1 %cmp2, label %cleanup, label %if.end4

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @i2d_OSSL_CMP_MSG_bio(%struct.bio_st* noundef nonnull %call, %struct.ossl_cmp_msg_st* noundef nonnull %msg) #9
  %call6 = tail call i32 @BIO_free(%struct.bio_st* noundef nonnull %call) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.end4, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ %call5, %if.end4 ], [ -2, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_OSSL_CMP_MSG_bio(%struct.bio_st* noundef %bio, %struct.ossl_cmp_msg_st* noundef %msg) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.ossl_cmp_msg_st* %msg to i8*
  %call = tail call i32 @ASN1_i2d_bio(i32 (i8*, i8**)* noundef bitcast (i32 (%struct.ossl_cmp_msg_st*, i8**)* @i2d_OSSL_CMP_MSG to i32 (i8*, i8**)*), %struct.bio_st* noundef %bio, i8* noundef %0) #8
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_cmp_msg_st* @d2i_OSSL_CMP_MSG(%struct.ossl_cmp_msg_st** noundef %msg, i8** noundef %in, i64 noundef %len) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq %struct.ossl_cmp_msg_st** %msg, null
  br i1 %cmp.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %0 = load %struct.ossl_cmp_msg_st*, %struct.ossl_cmp_msg_st** %msg, align 8, !tbaa !26
  %cmp1.not = icmp eq %struct.ossl_cmp_msg_st* %0, null
  br i1 %cmp1.not, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %libctx2 = getelementptr inbounds %struct.ossl_cmp_msg_st, %struct.ossl_cmp_msg_st* %0, i64 0, i32 4
  %1 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx2, align 8, !tbaa !4
  %propq3 = getelementptr inbounds %struct.ossl_cmp_msg_st, %struct.ossl_cmp_msg_st* %0, i64 0, i32 5
  %2 = load i8*, i8** %propq3, align 8, !tbaa !9
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %libctx.0 = phi %struct.ossl_lib_ctx_st* [ %1, %if.then ], [ null, %land.lhs.true ], [ null, %entry ]
  %propq.0 = phi i8* [ %2, %if.then ], [ null, %land.lhs.true ], [ null, %entry ]
  %3 = bitcast %struct.ossl_cmp_msg_st** %msg to %struct.ASN1_VALUE_st**
  %call = tail call %struct.ASN1_ITEM_st* @OSSL_CMP_MSG_it() #8
  %call4 = tail call %struct.ASN1_VALUE_st* @ASN1_item_d2i_ex(%struct.ASN1_VALUE_st** noundef %3, i8** noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* noundef %call, %struct.ossl_lib_ctx_st* noundef %libctx.0, i8* noundef %propq.0) #8
  %4 = bitcast %struct.ASN1_VALUE_st* %call4 to %struct.ossl_cmp_msg_st*
  ret %struct.ossl_cmp_msg_st* %4
}

declare %struct.ASN1_VALUE_st* @ASN1_item_d2i_ex(%struct.ASN1_VALUE_st** noundef, i8** noundef, i64 noundef, %struct.ASN1_ITEM_st* noundef, %struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_OSSL_CMP_MSG(%struct.ossl_cmp_msg_st* noundef %msg, i8** noundef %out) #0 {
entry:
  %0 = bitcast %struct.ossl_cmp_msg_st* %msg to %struct.ASN1_VALUE_st*
  %call = tail call %struct.ASN1_ITEM_st* @OSSL_CMP_MSG_it() #8
  %call1 = tail call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %0, i8** noundef %out, %struct.ASN1_ITEM_st* noundef %call) #8
  ret i32 %call1
}

declare i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef, i8** noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

declare i8* @ASN1_item_d2i_bio_ex(%struct.ASN1_ITEM_st* noundef, %struct.bio_st* noundef, i8* noundef, %struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #2

declare i32 @ASN1_i2d_bio(i32 (i8*, i8**)* noundef, %struct.bio_st* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_X509_EXTENSION_sk_type(%struct.stack_st_X509_EXTENSION* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_X509_EXTENSION* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare %struct.asn1_object_st* @X509_EXTENSION_get_object(%struct.X509_extension_st* noundef) local_unnamed_addr #2

declare i32 @X509v3_get_ext_by_OBJ(%struct.stack_st_X509_EXTENSION* noundef, %struct.asn1_object_st* noundef, i32 noundef) local_unnamed_addr #2

declare i8* @OPENSSL_sk_delete(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #2

declare %struct.stack_st_X509_EXTENSION* @X509v3_add_ext(%struct.stack_st_X509_EXTENSION** noundef, %struct.X509_extension_st* noundef, i32 noundef) local_unnamed_addr #2

declare %struct.X509_extension_st* @X509V3_EXT_i2d(i32 noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare %struct.asn1_string_st* @ASN1_ENUMERATED_new() local_unnamed_addr #2

declare i32 @ASN1_ENUMERATED_set(%struct.asn1_string_st* noundef, i64 noundef) local_unnamed_addr #2

declare void @ASN1_ENUMERATED_free(%struct.asn1_string_st* noundef) local_unnamed_addr #2

declare i32 @ossl_cmp_asn1_get_int(%struct.asn1_string_st* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nosync nounwind readonly willreturn
declare i8* @llvm.load.relative.i64(i8*, i64) #7

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { argmemonly nofree nosync nounwind readonly willreturn }
attributes #8 = { nobuiltin nounwind "no-builtins" }
attributes #9 = { nobuiltin "no-builtins" }
attributes #10 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !6, i64 32}
!5 = !{!"ossl_cmp_msg_st", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!5, !6, i64 40}
!10 = !{!5, !6, i64 0}
!11 = !{!5, !6, i64 8}
!12 = !{!13, !14, i64 0}
!13 = !{!"ossl_cmp_pkibody_st", !14, i64 0, !7, i64 8}
!14 = !{!"int", !7, i64 0}
!15 = !{!16, !6, i64 0}
!16 = !{!"ossl_cmp_ctx_st", !6, i64 0, !6, i64 8, !6, i64 16, !14, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !14, i64 72, !6, i64 80, !6, i64 88, !14, i64 96, !14, i64 100, !14, i64 104, !17, i64 112, !6, i64 120, !6, i64 128, !14, i64 136, !6, i64 144, !6, i64 152, !6, i64 160, !6, i64 168, !6, i64 176, !14, i64 184, !14, i64 188, !14, i64 192, !6, i64 200, !6, i64 208, !6, i64 216, !6, i64 224, !6, i64 232, !17, i64 240, !6, i64 248, !14, i64 256, !14, i64 260, !6, i64 264, !6, i64 272, !6, i64 280, !6, i64 288, !6, i64 296, !6, i64 304, !6, i64 312, !14, i64 320, !14, i64 324, !6, i64 328, !6, i64 336, !14, i64 344, !6, i64 352, !14, i64 360, !6, i64 368, !6, i64 376, !14, i64 384, !14, i64 388, !6, i64 392, !6, i64 400, !14, i64 408, !14, i64 412, !6, i64 416, !6, i64 424, !14, i64 432, !6, i64 440, !14, i64 448, !6, i64 456, !14, i64 464, !6, i64 472, !6, i64 480, !6, i64 488, !6, i64 496, !6, i64 504, !6, i64 512}
!17 = !{!"long", !7, i64 0}
!18 = !{!16, !6, i64 8}
!19 = !{!16, !6, i64 312}
!20 = !{!7, !7, i64 0}
!21 = !{!16, !6, i64 424}
!22 = !{!16, !6, i64 416}
!23 = !{!16, !6, i64 200}
!24 = !{!16, !6, i64 352}
!25 = !{!16, !14, i64 388}
!26 = !{!6, !6, i64 0}
!27 = !{!16, !6, i64 216}
!28 = !{!16, !14, i64 360}
!29 = !{!16, !14, i64 384}
!30 = !{!16, !6, i64 392}
!31 = !{!16, !6, i64 376}
!32 = !{!16, !6, i64 400}
!33 = !{!16, !14, i64 408}
!34 = !{!16, !6, i64 368}
!35 = distinct !{!35, !36}
!36 = !{!"llvm.loop.mustprogress"}
!37 = distinct !{!37, !36}
!38 = !{!16, !14, i64 320}
!39 = !{!16, !14, i64 412}
!40 = !{!16, !6, i64 272}
!41 = !{!42, !6, i64 8}
!42 = !{!"ossl_cmp_certresponse_st", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24}
!43 = !{!42, !6, i64 0}
!44 = !{!42, !6, i64 16}
!45 = !{!46, !6, i64 0}
!46 = !{!"ossl_cmp_certifiedkeypair_st", !6, i64 0, !6, i64 8, !6, i64 16}
!47 = !{!48, !14, i64 0}
!48 = !{!"ossl_cmp_certorenccert_st", !14, i64 0, !7, i64 8}
!49 = !{!50, !6, i64 8}
!50 = !{!"ossl_cmp_certrepmessage_st", !6, i64 0, !6, i64 8}
!51 = !{!50, !6, i64 0}
!52 = !{!53, !6, i64 0}
!53 = !{!"ossl_cmp_revdetails_st", !6, i64 0, !6, i64 8}
!54 = !{!16, !14, i64 432}
!55 = !{!56, !6, i64 0}
!56 = !{!"ossl_cmp_revrepcontent_st", !6, i64 0, !6, i64 8, !6, i64 16}
!57 = !{!56, !6, i64 8}
!58 = distinct !{!58, !36}
!59 = !{!16, !6, i64 440}
!60 = !{!61, !6, i64 0}
!61 = !{!"ossl_cmp_errormsgcontent_st", !6, i64 0, !6, i64 8, !6, i64 16}
!62 = !{!61, !6, i64 8}
!63 = !{!61, !6, i64 16}
!64 = !{!65, !6, i64 0}
!65 = !{!"ossl_cmp_certstatus_st", !6, i64 0, !6, i64 8, !6, i64 16}
!66 = !{!16, !6, i64 472}
!67 = !{!65, !6, i64 8}
!68 = !{!65, !6, i64 16}
!69 = !{!70, !6, i64 0}
!70 = !{!"ossl_cmp_pollreq_st", !6, i64 0}
!71 = !{!72, !6, i64 0}
!72 = !{!"ossl_cmp_pollrep_st", !6, i64 0, !6, i64 8, !6, i64 16}
!73 = !{!72, !6, i64 8}
!74 = distinct !{!74, !36}
!75 = distinct !{!75, !36}
!76 = !{!77, !6, i64 32}
!77 = !{!"ossl_cmp_pkiheader_st", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88}
