; ModuleID = 'test/cmp_ctx_test.c'
source_filename = "test/cmp_ctx_test.c"
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
%struct.test_fixture = type { i8*, %struct.ossl_cmp_ctx_st* }
%struct.ossl_cmp_ctx_st = type { %struct.ossl_lib_ctx_st*, i8*, i32 (i8*, i8*, i32, i32, i8*)*, i32, %struct.ossl_cmp_msg_st* (%struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_msg_st*)*, i8*, %struct.ossl_http_req_ctx_st*, i8*, i8*, i32, i8*, i8*, i32, i32, i32, i64, %struct.bio_st* (%struct.bio_st*, i8*, i32, i32)*, i8*, i32, %struct.x509_st*, %struct.x509_st*, %struct.X509_name_st*, %struct.x509_store_st*, %struct.stack_st_X509*, i32, i32, i32, %struct.x509_st*, %struct.stack_st_X509*, %struct.evp_pkey_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, i64, %struct.evp_md_st*, i32, i32, %struct.X509_name_st*, %struct.evp_md_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.stack_st_OSSL_CMP_ITAV*, i32, i32, %struct.stack_st_X509*, %struct.evp_pkey_st*, i32, %struct.X509_name_st*, i32, %struct.X509_name_st*, %struct.stack_st_GENERAL_NAME*, i32, i32, %struct.stack_st_X509_EXTENSION*, %struct.stack_st_POLICYINFO*, i32, i32, %struct.x509_st*, %struct.X509_req_st*, i32, %struct.stack_st_OSSL_CMP_ITAV*, i32, %struct.stack_st_ASN1_UTF8STRING*, i32, %struct.x509_st*, %struct.stack_st_X509*, %struct.stack_st_X509*, %struct.stack_st_X509*, i32 (%struct.ossl_cmp_ctx_st*, %struct.x509_st*, i32, i8**)*, i8* }
%struct.ossl_cmp_msg_st = type { %struct.ossl_cmp_pkiheader_st*, %struct.ossl_cmp_pkibody_st*, %struct.asn1_string_st*, %struct.stack_st_X509*, %struct.ossl_lib_ctx_st*, i8* }
%struct.ossl_cmp_pkiheader_st = type { %struct.asn1_string_st*, %struct.GENERAL_NAME_st*, %struct.GENERAL_NAME_st*, %struct.asn1_string_st*, %struct.X509_algor_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.stack_st_ASN1_UTF8STRING*, %struct.stack_st_OSSL_CMP_ITAV* }
%struct.GENERAL_NAME_st = type { i32, %union.anon.1 }
%union.anon.1 = type { i8* }
%struct.ossl_cmp_pkibody_st = type { i32, %union.anon.2 }
%union.anon.2 = type { %struct.stack_st_OSSL_CRMF_MSG* }
%struct.stack_st_OSSL_CRMF_MSG = type opaque
%struct.ossl_http_req_ctx_st = type opaque
%struct.bio_st = type opaque
%struct.x509_store_st = type opaque
%struct.evp_md_st = type opaque
%struct.evp_pkey_st = type opaque
%struct.stack_st_POLICYINFO = type opaque
%struct.X509_req_st = type { %struct.X509_req_info_st, %struct.X509_algor_st, %struct.asn1_string_st*, i32, i8*, %struct.asn1_string_st*, %struct.ossl_lib_ctx_st*, i8* }
%struct.X509_req_info_st = type { %struct.ASN1_ENCODING_st, %struct.asn1_string_st*, %struct.X509_name_st*, %struct.X509_pubkey_st*, %struct.stack_st_X509_ATTRIBUTE* }
%struct.stack_st_X509_ATTRIBUTE = type opaque
%struct.stack_st_OSSL_CMP_ITAV = type opaque
%struct.stack_st_ASN1_UTF8STRING = type opaque
%struct.stack_st_X509 = type opaque
%struct.stack_st = type opaque
%struct.X509_VERIFY_PARAM_st = type opaque
%struct.ossl_cmp_itav_st = type { %struct.asn1_object_st*, %union.anon.3 }
%union.anon.3 = type { i8* }
%struct.X509_extension_st = type opaque
%struct.POLICYINFO_st = type { %struct.asn1_object_st*, %struct.stack_st_POLICYQUALINFO* }
%struct.stack_st_POLICYQUALINFO = type opaque

@.str = private unnamed_addr constant [20 x i8] c"test/cmp_ctx_test.c\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Error parsing test options\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"cert_file = test_get_argument(0)\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"test_cert = load_cert_pem(cert_file, NULL)\00", align 1
@test_cert = internal unnamed_addr global %struct.x509_st* null, align 8
@.str.4 = private unnamed_addr constant [16 x i8] c"test_CTX_reinit\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"test_CTX_set_get_option_35\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"test_CTX_set_get_log_cb\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"test_cmp_ctx_log_cb\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"test_CTX_print_errors\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"test_CTX_set1_get0_serverPath\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"test_CTX_set1_get0_server\00", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"test_CTX_set_get_serverPort\00", align 1
@.str.12 = private unnamed_addr constant [25 x i8] c"test_CTX_set1_get0_proxy\00", align 1
@.str.13 = private unnamed_addr constant [28 x i8] c"test_CTX_set1_get0_no_proxy\00", align 1
@.str.14 = private unnamed_addr constant [25 x i8] c"test_CTX_set_get_http_cb\00", align 1
@.str.15 = private unnamed_addr constant [29 x i8] c"test_CTX_set_get_http_cb_arg\00", align 1
@.str.16 = private unnamed_addr constant [29 x i8] c"test_CTX_set_get_transfer_cb\00", align 1
@.str.17 = private unnamed_addr constant [33 x i8] c"test_CTX_set_get_transfer_cb_arg\00", align 1
@.str.18 = private unnamed_addr constant [27 x i8] c"test_CTX_set1_get0_srvCert\00", align 1
@.str.19 = private unnamed_addr constant [36 x i8] c"test_CTX_set0_get0_validatedSrvCert\00", align 1
@.str.20 = private unnamed_addr constant [35 x i8] c"test_CTX_set1_get0_expected_sender\00", align 1
@.str.21 = private unnamed_addr constant [32 x i8] c"test_CTX_set0_get0_trustedStore\00", align 1
@.str.22 = private unnamed_addr constant [29 x i8] c"test_CTX_set1_get0_untrusted\00", align 1
@.str.23 = private unnamed_addr constant [24 x i8] c"test_CTX_set1_get0_cert\00", align 1
@.str.24 = private unnamed_addr constant [24 x i8] c"test_CTX_set1_get0_pkey\00", align 1
@.str.25 = private unnamed_addr constant [38 x i8] c"test_CTX_set1_get1_referenceValue_str\00", align 1
@.str.26 = private unnamed_addr constant [35 x i8] c"test_CTX_set1_get1_secretValue_str\00", align 1
@.str.27 = private unnamed_addr constant [29 x i8] c"test_CTX_set1_get0_recipient\00", align 1
@.str.28 = private unnamed_addr constant [28 x i8] c"test_CTX_push0_geninfo_ITAV\00", align 1
@.str.29 = private unnamed_addr constant [33 x i8] c"test_CTX_set1_get0_extraCertsOut\00", align 1
@.str.30 = private unnamed_addr constant [29 x i8] c"test_CTX_set0_get0_newPkey_1\00", align 1
@.str.31 = private unnamed_addr constant [29 x i8] c"test_CTX_set0_get0_newPkey_0\00", align 1
@.str.32 = private unnamed_addr constant [26 x i8] c"test_CTX_set1_get0_issuer\00", align 1
@.str.33 = private unnamed_addr constant [31 x i8] c"test_CTX_set1_get0_subjectName\00", align 1
@.str.34 = private unnamed_addr constant [33 x i8] c"test_CTX_set0_get0_reqExtensions\00", align 1
@.str.35 = private unnamed_addr constant [32 x i8] c"test_CTX_reqExtensions_have_SAN\00", align 1
@.str.36 = private unnamed_addr constant [22 x i8] c"test_CTX_push0_policy\00", align 1
@.str.37 = private unnamed_addr constant [27 x i8] c"test_CTX_set1_get0_oldCert\00", align 1
@.str.38 = private unnamed_addr constant [25 x i8] c"test_CTX_push0_genm_ITAV\00", align 1
@.str.39 = private unnamed_addr constant [29 x i8] c"test_CTX_set_get_certConf_cb\00", align 1
@.str.40 = private unnamed_addr constant [33 x i8] c"test_CTX_set_get_certConf_cb_arg\00", align 1
@.str.41 = private unnamed_addr constant [24 x i8] c"test_CTX_set_get_status\00", align 1
@.str.42 = private unnamed_addr constant [32 x i8] c"test_CTX_set0_get0_statusString\00", align 1
@.str.43 = private unnamed_addr constant [30 x i8] c"test_CTX_set_get_failInfoCode\00", align 1
@.str.44 = private unnamed_addr constant [27 x i8] c"test_CTX_set0_get0_newCert\00", align 1
@.str.45 = private unnamed_addr constant [28 x i8] c"test_CTX_set1_get1_newChain\00", align 1
@.str.46 = private unnamed_addr constant [26 x i8] c"test_CTX_set1_get1_caPubs\00", align 1
@.str.47 = private unnamed_addr constant [32 x i8] c"test_CTX_set1_get1_extraCertsIn\00", align 1
@.str.48 = private unnamed_addr constant [33 x i8] c"test_CTX_set1_get0_transactionID\00", align 1
@.str.49 = private unnamed_addr constant [31 x i8] c"test_CTX_set1_get0_senderNonce\00", align 1
@.str.50 = private unnamed_addr constant [30 x i8] c"test_CTX_set1_get0_recipNonce\00", align 1
@.str.51 = private unnamed_addr constant [43 x i8] c"fixture = OPENSSL_zalloc(sizeof(*fixture))\00", align 1
@.str.52 = private unnamed_addr constant [44 x i8] c"fixture->ctx = OSSL_CMP_CTX_new(NULL, NULL)\00", align 1
@.str.53 = private unnamed_addr constant [24 x i8] c"certs = sk_X509_new_1()\00", align 1
@.str.54 = private unnamed_addr constant [32 x i8] c"bytes = ASN1_OCTET_STRING_new()\00", align 1
@.str.55 = private unnamed_addr constant [25 x i8] c"OSSL_CMP_CTX_reinit(ctx)\00", align 1
@.str.56 = private unnamed_addr constant [293 x i8] c"ctx->status == -1 && ctx->failInfoCode == -1 && ctx->statusString == NULL && ctx->newCert == NULL && ctx->newChain == NULL && ctx->caPubs == NULL && ctx->extraCertsIn == NULL && ctx->validatedSrvCert == NULL && ctx->transactionID == NULL && ctx->senderNonce == NULL && ctx->recipNonce == NULL\00", align 1
@.str.57 = private unnamed_addr constant [17 x i8] c"ERR_peek_error()\00", align 1
@.str.58 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.59 = private unnamed_addr constant [43 x i8] c"setter did not return error on ctx == NULL\00", align 1
@.str.60 = private unnamed_addr constant [43 x i8] c"getter did not return error on ctx == NULL\00", align 1
@.str.61 = private unnamed_addr constant [26 x i8] c"did not get default value\00", align 1
@.str.62 = private unnamed_addr constant [27 x i8] c"setting first value failed\00", align 1
@.str.63 = private unnamed_addr constant [34 x i8] c"set/get first value did not match\00", align 1
@.str.64 = private unnamed_addr constant [28 x i8] c"setting second value failed\00", align 1
@.str.65 = private unnamed_addr constant [27 x i8] c"second set reset the value\00", align 1
@.str.66 = private unnamed_addr constant [35 x i8] c"set/get second value did not match\00", align 1
@.str.67 = private unnamed_addr constant [26 x i8] c"third set reset the value\00", align 1
@.str.68 = private unnamed_addr constant [31 x i8] c"third get gave different value\00", align 1
@.str.69 = private unnamed_addr constant [4 x i8] c"res\00", align 1
@__func__.OSSL_CMP_CTX_get_log_cb = private unnamed_addr constant [24 x i8] c"OSSL_CMP_CTX_get_log_cb\00", align 1
@.str.70 = private unnamed_addr constant [5 x i8] c"func\00", align 1
@.str.71 = private unnamed_addr constant [30 x i8] c"\22execute_cmp_ctx_log_cb_test\22\00", align 1
@.str.72 = private unnamed_addr constant [28 x i8] c"execute_cmp_ctx_log_cb_test\00", align 1
@.str.73 = private unnamed_addr constant [21 x i8] c"\22(unknown function)\22\00", align 1
@.str.74 = private unnamed_addr constant [19 x i8] c"(unknown function)\00", align 1
@.str.75 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.76 = private unnamed_addr constant [13 x i8] c"OPENSSL_FILE\00", align 1
@.str.77 = private unnamed_addr constant [12 x i8] c"\22(no file)\22\00", align 1
@.str.78 = private unnamed_addr constant [10 x i8] c"(no file)\00", align 1
@.str.79 = private unnamed_addr constant [5 x i8] c"line\00", align 1
@.str.80 = private unnamed_addr constant [14 x i8] c"test_log_line\00", align 1
@test_log_line = internal unnamed_addr global i32 0, align 4
@.str.81 = private unnamed_addr constant [6 x i8] c"level\00", align 1
@.str.82 = private unnamed_addr constant [18 x i8] c"OSSL_CMP_LOG_INFO\00", align 1
@.str.83 = private unnamed_addr constant [3 x i8] c"-1\00", align 1
@.str.84 = private unnamed_addr constant [4 x i8] c"msg\00", align 1
@.str.85 = private unnamed_addr constant [5 x i8] c"\22ok\22\00", align 1
@.str.86 = private unnamed_addr constant [3 x i8] c"ok\00", align 1
@test_log_cb_res = internal unnamed_addr global i32 0, align 4
@.str.87 = private unnamed_addr constant [35 x i8] c"OSSL_CMP_CTX_set_log_cb(ctx, NULL)\00", align 1
@.str.88 = private unnamed_addr constant [6 x i8] c"ERROR\00", align 1
@.str.89 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.90 = private unnamed_addr constant [44 x i8] c"this should be printed as CMP error message\00", align 1
@.str.91 = private unnamed_addr constant [5 x i8] c"WARN\00", align 1
@.str.92 = private unnamed_addr constant [46 x i8] c"this should be printed as CMP warning message\00", align 1
@.str.93 = private unnamed_addr constant [6 x i8] c"DEBUG\00", align 1
@.str.94 = private unnamed_addr constant [27 x i8] c"this should not be printed\00", align 1
@.str.95 = private unnamed_addr constant [56 x i8] c"OSSL_CMP_CTX_set_log_verbosity(ctx, OSSL_CMP_LOG_DEBUG)\00", align 1
@.str.96 = private unnamed_addr constant [44 x i8] c"this should be printed as CMP debug message\00", align 1
@.str.97 = private unnamed_addr constant [55 x i8] c"OSSL_CMP_CTX_set_log_verbosity(ctx, OSSL_CMP_LOG_INFO)\00", align 1
@.str.98 = private unnamed_addr constant [42 x i8] c"OSSL_CMP_CTX_set_log_cb(ctx, test_log_cb)\00", align 1
@.str.99 = private unnamed_addr constant [5 x i8] c"INFO\00", align 1
@.str.100 = private unnamed_addr constant [5 x i8] c"%s%c\00", align 1
@.str.101 = private unnamed_addr constant [2 x i8] c"o\00", align 1
@.str.102 = private unnamed_addr constant [16 x i8] c"test_log_cb_res\00", align 1
@.str.103 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.104 = private unnamed_addr constant [20 x i8] c"ctx->log_cb == NULL\00", align 1
@__func__.execute_CTX_print_errors_test = private unnamed_addr constant [30 x i8] c"execute_CTX_print_errors_test\00", align 1
@.str.105 = private unnamed_addr constant [52 x i8] c"OSSL_CMP_CTX_set_log_cb(ctx, msg_total_size_log_cb)\00", align 1
@.str.106 = private unnamed_addr constant [37 x i8] c"ctx->log_cb == msg_total_size_log_cb\00", align 1
@.str.107 = private unnamed_addr constant [13 x i8] c"INVALID_ARGS\00", align 1
@.str.108 = private unnamed_addr constant [14 x i8] c"NULL_ARGUMENT\00", align 1
@.str.109 = private unnamed_addr constant [4 x i8] c" : \00", align 1
@.str.110 = private unnamed_addr constant [6 x i8] c"data1\00", align 1
@.str.111 = private unnamed_addr constant [7 x i8] c":data1\00", align 1
@.str.112 = private unnamed_addr constant [6 x i8] c"data2\00", align 1
@.str.113 = private unnamed_addr constant [9 x i8] c" : data2\00", align 1
@.str.114 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.115 = private unnamed_addr constant [9 x i8] c"new line\00", align 1
@.str.116 = private unnamed_addr constant [10 x i8] c"\0Anew line\00", align 1
@.str.117 = private unnamed_addr constant [15 x i8] c"msg_total_size\00", align 1
@.str.118 = private unnamed_addr constant [14 x i8] c"expected_size\00", align 1
@msg_total_size = internal unnamed_addr global i32 0, align 4
@.str.119 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.120 = private unnamed_addr constant [6 x i8] c"<SEP>\00", align 1
@.str.121 = private unnamed_addr constant [510 x i8] c"This is a 64 bytes looooooooooooooooooooooooooooooooong string.\0AThis is a 64 bytes looooooooooooooooooooooooooooooooong string.\0AThis is a 64 bytes looooooooooooooooooooooooooooooooong string.\0AThis is a 64 bytes looooooooooooooooooooooooooooooooong string.\0AThis is a 64 bytes looooooooooooooooooooooooooooooooong string.\0AThis is a 64 bytes looooooooooooooooooooooooooooooooong string.\0AThis is a 64 bytes looooooooooooooooooooooooooooooooong string.\0AThis is a 61 bytes loooooooooooooooooooooooooooooong string.\0A\00", align 1
@.str.122 = private unnamed_addr constant [27 x i8] c"total=%d len=%zu msg='%s'\0A\00", align 1
@.str.123 = private unnamed_addr constant [32 x i8] c"first set did not dup the value\00", align 1
@.str.124 = private unnamed_addr constant [24 x i8] c"first set had no effect\00", align 1
@.str.125 = private unnamed_addr constant [33 x i8] c"second set did not dup the value\00", align 1
@.str.126 = private unnamed_addr constant [36 x i8] c"second value is same as first value\00", align 1
@__func__.OSSL_CMP_CTX_get0_serverPath = private unnamed_addr constant [29 x i8] c"OSSL_CMP_CTX_get0_serverPath\00", align 1
@.str.127 = private unnamed_addr constant [5 x i8] c"test\00", align 1
@__func__.OSSL_CMP_CTX_get0_server = private unnamed_addr constant [25 x i8] c"OSSL_CMP_CTX_get0_server\00", align 1
@__func__.OSSL_CMP_CTX_get_serverPort = private unnamed_addr constant [28 x i8] c"OSSL_CMP_CTX_get_serverPort\00", align 1
@__func__.OSSL_CMP_CTX_get0_proxy = private unnamed_addr constant [24 x i8] c"OSSL_CMP_CTX_get0_proxy\00", align 1
@__func__.OSSL_CMP_CTX_get0_no_proxy = private unnamed_addr constant [27 x i8] c"OSSL_CMP_CTX_get0_no_proxy\00", align 1
@__func__.OSSL_CMP_CTX_get_http_cb = private unnamed_addr constant [25 x i8] c"OSSL_CMP_CTX_get_http_cb\00", align 1
@__func__.OSSL_CMP_CTX_get_transfer_cb = private unnamed_addr constant [29 x i8] c"OSSL_CMP_CTX_get_transfer_cb\00", align 1
@__func__.OSSL_CMP_CTX_get0_srvCert = private unnamed_addr constant [26 x i8] c"OSSL_CMP_CTX_get0_srvCert\00", align 1
@__func__.OSSL_CMP_CTX_get0_validatedSrvCert = private unnamed_addr constant [35 x i8] c"OSSL_CMP_CTX_get0_validatedSrvCert\00", align 1
@__func__.OSSL_CMP_CTX_get0_expected_sender = private unnamed_addr constant [34 x i8] c"OSSL_CMP_CTX_get0_expected_sender\00", align 1
@__func__.OSSL_CMP_CTX_get0_cert = private unnamed_addr constant [23 x i8] c"OSSL_CMP_CTX_get0_cert\00", align 1
@__func__.OSSL_CMP_CTX_get0_pkey = private unnamed_addr constant [23 x i8] c"OSSL_CMP_CTX_get0_pkey\00", align 1
@.str.128 = private unnamed_addr constant [38 x i8] c"second get returned same as first get\00", align 1
@.str.129 = private unnamed_addr constant [35 x i8] c"third get did not create a new dup\00", align 1
@__func__.OSSL_CMP_CTX_get1_referenceValue_str = private unnamed_addr constant [37 x i8] c"OSSL_CMP_CTX_get1_referenceValue_str\00", align 1
@__func__.OSSL_CMP_CTX_get1_secretValue_str = private unnamed_addr constant [34 x i8] c"OSSL_CMP_CTX_get1_secretValue_str\00", align 1
@__func__.OSSL_CMP_CTX_get0_recipient = private unnamed_addr constant [28 x i8] c"OSSL_CMP_CTX_get0_recipient\00", align 1
@.str.130 = private unnamed_addr constant [43 x i8] c"pusher did not return error on ctx == NULL\00", align 1
@.str.131 = private unnamed_addr constant [42 x i8] c"did not get default value for stack field\00", align 1
@.str.132 = private unnamed_addr constant [27 x i8] c"pushing first value failed\00", align 1
@.str.133 = private unnamed_addr constant [45 x i8] c"pushing first value did not increment number\00", align 1
@.str.134 = private unnamed_addr constant [38 x i8] c"push/sk_top first value did not match\00", align 1
@.str.135 = private unnamed_addr constant [29 x i8] c"pushting second value failed\00", align 1
@.str.136 = private unnamed_addr constant [46 x i8] c"pushing second value did not increment number\00", align 1
@.str.137 = private unnamed_addr constant [39 x i8] c"push/sk_top second value did not match\00", align 1
@__func__.OSSL_CMP_CTX_get0_extraCertsOut = private unnamed_addr constant [32 x i8] c"OSSL_CMP_CTX_get0_extraCertsOut\00", align 1
@__func__.OSSL_CMP_CTX_get0_issuer = private unnamed_addr constant [25 x i8] c"OSSL_CMP_CTX_get0_issuer\00", align 1
@__func__.OSSL_CMP_CTX_get0_subjectName = private unnamed_addr constant [30 x i8] c"OSSL_CMP_CTX_get0_subjectName\00", align 1
@__func__.OSSL_CMP_CTX_get0_reqExtensions = private unnamed_addr constant [32 x i8] c"OSSL_CMP_CTX_get0_reqExtensions\00", align 1
@.str.138 = private unnamed_addr constant [41 x i8] c"OSSL_CMP_CTX_reqExtensions_have_SAN(ctx)\00", align 1
@.str.139 = private unnamed_addr constant [21 x i8] c"RAND_bytes(str, len)\00", align 1
@.str.140 = private unnamed_addr constant [31 x i8] c"data = ASN1_OCTET_STRING_new()\00", align 1
@.str.141 = private unnamed_addr constant [38 x i8] c"ASN1_OCTET_STRING_set(data, str, len)\00", align 1
@.str.142 = private unnamed_addr constant [4 x i8] c"ext\00", align 1
@.str.143 = private unnamed_addr constant [36 x i8] c"exts = sk_X509_EXTENSION_new_null()\00", align 1
@.str.144 = private unnamed_addr constant [34 x i8] c"sk_X509_EXTENSION_push(exts, ext)\00", align 1
@.str.145 = private unnamed_addr constant [43 x i8] c"OSSL_CMP_CTX_set0_reqExtensions(ctx, exts)\00", align 1
@__func__.OSSL_CMP_CTX_get0_oldCert = private unnamed_addr constant [26 x i8] c"OSSL_CMP_CTX_get0_oldCert\00", align 1
@__func__.OSSL_CMP_CTX_get_certConf_cb = private unnamed_addr constant [29 x i8] c"OSSL_CMP_CTX_get_certConf_cb\00", align 1
@__func__.OSSL_CMP_CTX_get0_transactionID = private unnamed_addr constant [32 x i8] c"OSSL_CMP_CTX_get0_transactionID\00", align 1
@__func__.OSSL_CMP_CTX_get0_senderNonce = private unnamed_addr constant [30 x i8] c"OSSL_CMP_CTX_get0_senderNonce\00", align 1
@__func__.OSSL_CMP_CTX_get0_recipNonce = private unnamed_addr constant [29 x i8] c"OSSL_CMP_CTX_get0_recipNonce\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local void @cleanup_tests() local_unnamed_addr #0 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @setup_tests() local_unnamed_addr #1 {
entry:
  %call = tail call i32 @test_skip_common_options() #5
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 797, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0)) #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i8* @test_get_argument(i64 noundef 0) #5
  %call2 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 801, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i8* noundef %call1) #5
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %call4 = tail call %struct.x509_st* @load_cert_pem(i8* noundef %call1, %struct.ossl_lib_ctx_st* noundef null) #5
  store %struct.x509_st* %call4, %struct.x509_st** @test_cert, align 8, !tbaa !3
  %0 = bitcast %struct.x509_st* %call4 to i8*
  %call5 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 802, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i8* noundef %0) #5
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %cleanup, label %if.end8

if.end8:                                          ; preds = %lor.lhs.false
  tail call void @add_test(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 ()* noundef nonnull @test_CTX_reinit) #5
  tail call void @add_test(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i32 ()* noundef nonnull @test_CTX_set_get_option_35) #5
  tail call void @add_test(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i32 ()* noundef nonnull @test_CTX_set_get_log_cb) #5
  tail call void @add_test(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i32 ()* noundef nonnull @test_cmp_ctx_log_cb) #5
  tail call void @add_test(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0), i32 ()* noundef nonnull @test_CTX_print_errors) #5
  tail call void @add_test(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0), i32 ()* noundef nonnull @test_CTX_set1_get0_serverPath) #5
  tail call void @add_test(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 ()* noundef nonnull @test_CTX_set1_get0_server) #5
  tail call void @add_test(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i64 0, i64 0), i32 ()* noundef nonnull @test_CTX_set_get_serverPort) #5
  tail call void @add_test(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i64 0, i64 0), i32 ()* noundef nonnull @test_CTX_set1_get0_proxy) #5
  tail call void @add_test(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.13, i64 0, i64 0), i32 ()* noundef nonnull @test_CTX_set1_get0_no_proxy) #5
  tail call void @add_test(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i64 0, i64 0), i32 ()* noundef nonnull @test_CTX_set_get_http_cb) #5
  tail call void @add_test(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.15, i64 0, i64 0), i32 ()* noundef nonnull @test_CTX_set_get_http_cb_arg) #5
  tail call void @add_test(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.16, i64 0, i64 0), i32 ()* noundef nonnull @test_CTX_set_get_transfer_cb) #5
  tail call void @add_test(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.17, i64 0, i64 0), i32 ()* noundef nonnull @test_CTX_set_get_transfer_cb_arg) #5
  tail call void @add_test(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.18, i64 0, i64 0), i32 ()* noundef nonnull @test_CTX_set1_get0_srvCert) #5
  tail call void @add_test(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.19, i64 0, i64 0), i32 ()* noundef nonnull @test_CTX_set0_get0_validatedSrvCert) #5
  tail call void @add_test(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.20, i64 0, i64 0), i32 ()* noundef nonnull @test_CTX_set1_get0_expected_sender) #5
  tail call void @add_test(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.21, i64 0, i64 0), i32 ()* noundef nonnull @test_CTX_set0_get0_trustedStore) #5
  tail call void @add_test(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22, i64 0, i64 0), i32 ()* noundef nonnull @test_CTX_set1_get0_untrusted) #5
  tail call void @add_test(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.23, i64 0, i64 0), i32 ()* noundef nonnull @test_CTX_set1_get0_cert) #5
  tail call void @add_test(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.24, i64 0, i64 0), i32 ()* noundef nonnull @test_CTX_set1_get0_pkey) #5
  tail call void @add_test(i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.25, i64 0, i64 0), i32 ()* noundef nonnull @test_CTX_set1_get1_referenceValue_str) #5
  tail call void @add_test(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.26, i64 0, i64 0), i32 ()* noundef nonnull @test_CTX_set1_get1_secretValue_str) #5
  tail call void @add_test(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.27, i64 0, i64 0), i32 ()* noundef nonnull @test_CTX_set1_get0_recipient) #5
  tail call void @add_test(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.28, i64 0, i64 0), i32 ()* noundef nonnull @test_CTX_push0_geninfo_ITAV) #5
  tail call void @add_test(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.29, i64 0, i64 0), i32 ()* noundef nonnull @test_CTX_set1_get0_extraCertsOut) #5
  tail call void @add_test(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.30, i64 0, i64 0), i32 ()* noundef nonnull @test_CTX_set0_get0_newPkey_1) #5
  tail call void @add_test(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.31, i64 0, i64 0), i32 ()* noundef nonnull @test_CTX_set0_get0_newPkey_0) #5
  tail call void @add_test(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.32, i64 0, i64 0), i32 ()* noundef nonnull @test_CTX_set1_get0_issuer) #5
  tail call void @add_test(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.33, i64 0, i64 0), i32 ()* noundef nonnull @test_CTX_set1_get0_subjectName) #5
  tail call void @add_test(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.34, i64 0, i64 0), i32 ()* noundef nonnull @test_CTX_set0_get0_reqExtensions) #5
  tail call void @add_test(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.35, i64 0, i64 0), i32 ()* noundef nonnull @test_CTX_reqExtensions_have_SAN) #5
  tail call void @add_test(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.36, i64 0, i64 0), i32 ()* noundef nonnull @test_CTX_push0_policy) #5
  tail call void @add_test(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.37, i64 0, i64 0), i32 ()* noundef nonnull @test_CTX_set1_get0_oldCert) #5
  tail call void @add_test(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.38, i64 0, i64 0), i32 ()* noundef nonnull @test_CTX_push0_genm_ITAV) #5
  tail call void @add_test(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.39, i64 0, i64 0), i32 ()* noundef nonnull @test_CTX_set_get_certConf_cb) #5
  tail call void @add_test(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.40, i64 0, i64 0), i32 ()* noundef nonnull @test_CTX_set_get_certConf_cb_arg) #5
  tail call void @add_test(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.41, i64 0, i64 0), i32 ()* noundef nonnull @test_CTX_set_get_status) #5
  tail call void @add_test(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.42, i64 0, i64 0), i32 ()* noundef nonnull @test_CTX_set0_get0_statusString) #5
  tail call void @add_test(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.43, i64 0, i64 0), i32 ()* noundef nonnull @test_CTX_set_get_failInfoCode) #5
  tail call void @add_test(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.44, i64 0, i64 0), i32 ()* noundef nonnull @test_CTX_set0_get0_newCert) #5
  tail call void @add_test(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.45, i64 0, i64 0), i32 ()* noundef nonnull @test_CTX_set1_get1_newChain) #5
  tail call void @add_test(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.46, i64 0, i64 0), i32 ()* noundef nonnull @test_CTX_set1_get1_caPubs) #5
  tail call void @add_test(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.47, i64 0, i64 0), i32 ()* noundef nonnull @test_CTX_set1_get1_extraCertsIn) #5
  tail call void @add_test(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.48, i64 0, i64 0), i32 ()* noundef nonnull @test_CTX_set1_get0_transactionID) #5
  tail call void @add_test(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.49, i64 0, i64 0), i32 ()* noundef nonnull @test_CTX_set1_get0_senderNonce) #5
  tail call void @add_test(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.50, i64 0, i64 0), i32 ()* noundef nonnull @test_CTX_set1_get0_recipNonce) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false, %if.end8, %if.then
  %retval.0 = phi i32 [ 1, %if.end8 ], [ 0, %if.then ], [ 0, %lor.lhs.false ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare dso_local i32 @test_skip_common_options() local_unnamed_addr #3

declare dso_local void @test_error(i8* noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #3

declare dso_local i32 @test_ptr(i8* noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local i8* @test_get_argument(i64 noundef) local_unnamed_addr #3

declare dso_local %struct.x509_st* @load_cert_pem(i8* noundef, %struct.ossl_lib_ctx_st* noundef) local_unnamed_addr #3

declare dso_local void @add_test(i8* noundef, i32 ()* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_CTX_reinit() #1 {
entry:
  %call = tail call fastcc %struct.test_fixture* @set_up(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0)) #6
  %cmp = icmp eq %struct.test_fixture* %call, null
  br i1 %cmp, label %cleanup, label %if.then2

if.then2:                                         ; preds = %entry
  %call3 = tail call fastcc i32 @execute_CTX_reinit_test(%struct.test_fixture* noundef nonnull %call) #6
  tail call fastcc void @tear_down(%struct.test_fixture* noundef nonnull %call) #6
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.then2
  %retval.0 = phi i32 [ %call3, %if.then2 ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_CTX_set_get_option_35() #1 {
entry:
  %call = tail call fastcc %struct.test_fixture* @set_up(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0)) #6
  %cmp = icmp eq %struct.test_fixture* %call, null
  br i1 %cmp, label %cleanup, label %if.then2

if.then2:                                         ; preds = %entry
  %call3 = tail call fastcc i32 @execute_CTX_set_get_option_35(%struct.test_fixture* noundef nonnull %call) #6
  tail call fastcc void @tear_down(%struct.test_fixture* noundef nonnull %call) #6
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.then2
  %retval.0 = phi i32 [ %call3, %if.then2 ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_CTX_set_get_log_cb() #1 {
entry:
  %call = tail call fastcc %struct.test_fixture* @set_up(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0)) #6
  %cmp = icmp eq %struct.test_fixture* %call, null
  br i1 %cmp, label %cleanup, label %if.then2

if.then2:                                         ; preds = %entry
  %call3 = tail call fastcc i32 @execute_CTX_set_get_log_cb(%struct.test_fixture* noundef nonnull %call) #6
  tail call fastcc void @tear_down(%struct.test_fixture* noundef nonnull %call) #6
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.then2
  %retval.0 = phi i32 [ %call3, %if.then2 ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_cmp_ctx_log_cb() #1 {
entry:
  %call = tail call fastcc %struct.test_fixture* @set_up(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0)) #6
  %cmp = icmp eq %struct.test_fixture* %call, null
  br i1 %cmp, label %cleanup, label %if.then2

if.then2:                                         ; preds = %entry
  %call3 = tail call fastcc i32 @execute_cmp_ctx_log_cb_test(%struct.test_fixture* noundef nonnull %call) #6
  tail call fastcc void @tear_down(%struct.test_fixture* noundef nonnull %call) #6
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.then2
  %retval.0 = phi i32 [ %call3, %if.then2 ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_CTX_print_errors() #1 {
entry:
  %call = tail call fastcc %struct.test_fixture* @set_up(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0)) #6
  %cmp = icmp eq %struct.test_fixture* %call, null
  br i1 %cmp, label %cleanup, label %if.then2

if.then2:                                         ; preds = %entry
  %call3 = tail call fastcc i32 @execute_CTX_print_errors_test(%struct.test_fixture* noundef nonnull %call) #6
  tail call fastcc void @tear_down(%struct.test_fixture* noundef nonnull %call) #6
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.then2
  %retval.0 = phi i32 [ %call3, %if.then2 ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_CTX_set1_get0_serverPath() #1 {
entry:
  %call = tail call fastcc %struct.test_fixture* @set_up(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0)) #6
  %cmp = icmp eq %struct.test_fixture* %call, null
  br i1 %cmp, label %cleanup, label %if.then2

if.then2:                                         ; preds = %entry
  %call3 = tail call fastcc i32 @execute_CTX_set1_get0_serverPath(%struct.test_fixture* noundef nonnull %call) #6
  tail call fastcc void @tear_down(%struct.test_fixture* noundef nonnull %call) #6
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.then2
  %retval.0 = phi i32 [ %call3, %if.then2 ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_CTX_set1_get0_server() #1 {
entry:
  %call = tail call fastcc %struct.test_fixture* @set_up(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0)) #6
  %cmp = icmp eq %struct.test_fixture* %call, null
  br i1 %cmp, label %cleanup, label %if.then2

if.then2:                                         ; preds = %entry
  %call3 = tail call fastcc i32 @execute_CTX_set1_get0_server(%struct.test_fixture* noundef nonnull %call) #6
  tail call fastcc void @tear_down(%struct.test_fixture* noundef nonnull %call) #6
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.then2
  %retval.0 = phi i32 [ %call3, %if.then2 ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_CTX_set_get_serverPort() #1 {
entry:
  %call = tail call fastcc %struct.test_fixture* @set_up(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i64 0, i64 0)) #6
  %cmp = icmp eq %struct.test_fixture* %call, null
  br i1 %cmp, label %cleanup, label %if.then2

if.then2:                                         ; preds = %entry
  %call3 = tail call fastcc i32 @execute_CTX_set_get_serverPort(%struct.test_fixture* noundef nonnull %call) #6
  tail call fastcc void @tear_down(%struct.test_fixture* noundef nonnull %call) #6
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.then2
  %retval.0 = phi i32 [ %call3, %if.then2 ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_CTX_set1_get0_proxy() #1 {
entry:
  %call = tail call fastcc %struct.test_fixture* @set_up(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i64 0, i64 0)) #6
  %cmp = icmp eq %struct.test_fixture* %call, null
  br i1 %cmp, label %cleanup, label %if.then2

if.then2:                                         ; preds = %entry
  %call3 = tail call fastcc i32 @execute_CTX_set1_get0_proxy(%struct.test_fixture* noundef nonnull %call) #6
  tail call fastcc void @tear_down(%struct.test_fixture* noundef nonnull %call) #6
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.then2
  %retval.0 = phi i32 [ %call3, %if.then2 ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_CTX_set1_get0_no_proxy() #1 {
entry:
  %call = tail call fastcc %struct.test_fixture* @set_up(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.13, i64 0, i64 0)) #6
  %cmp = icmp eq %struct.test_fixture* %call, null
  br i1 %cmp, label %cleanup, label %if.then2

if.then2:                                         ; preds = %entry
  %call3 = tail call fastcc i32 @execute_CTX_set1_get0_no_proxy(%struct.test_fixture* noundef nonnull %call) #6
  tail call fastcc void @tear_down(%struct.test_fixture* noundef nonnull %call) #6
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.then2
  %retval.0 = phi i32 [ %call3, %if.then2 ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_CTX_set_get_http_cb() #1 {
entry:
  %call = tail call fastcc %struct.test_fixture* @set_up(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i64 0, i64 0)) #6
  %cmp = icmp eq %struct.test_fixture* %call, null
  br i1 %cmp, label %cleanup, label %if.then2

if.then2:                                         ; preds = %entry
  %call3 = tail call fastcc i32 @execute_CTX_set_get_http_cb(%struct.test_fixture* noundef nonnull %call) #6
  tail call fastcc void @tear_down(%struct.test_fixture* noundef nonnull %call) #6
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.then2
  %retval.0 = phi i32 [ %call3, %if.then2 ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_CTX_set_get_http_cb_arg() #1 {
entry:
  %call = tail call fastcc %struct.test_fixture* @set_up(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.15, i64 0, i64 0)) #6
  %cmp = icmp eq %struct.test_fixture* %call, null
  br i1 %cmp, label %cleanup, label %if.then2

if.then2:                                         ; preds = %entry
  %call3 = tail call fastcc i32 @execute_CTX_set_get_http_cb_arg(%struct.test_fixture* noundef nonnull %call) #6
  tail call fastcc void @tear_down(%struct.test_fixture* noundef nonnull %call) #6
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.then2
  %retval.0 = phi i32 [ %call3, %if.then2 ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_CTX_set_get_transfer_cb() #1 {
entry:
  %call = tail call fastcc %struct.test_fixture* @set_up(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.16, i64 0, i64 0)) #6
  %cmp = icmp eq %struct.test_fixture* %call, null
  br i1 %cmp, label %cleanup, label %if.then2

if.then2:                                         ; preds = %entry
  %call3 = tail call fastcc i32 @execute_CTX_set_get_transfer_cb(%struct.test_fixture* noundef nonnull %call) #6
  tail call fastcc void @tear_down(%struct.test_fixture* noundef nonnull %call) #6
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.then2
  %retval.0 = phi i32 [ %call3, %if.then2 ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_CTX_set_get_transfer_cb_arg() #1 {
entry:
  %call = tail call fastcc %struct.test_fixture* @set_up(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.17, i64 0, i64 0)) #6
  %cmp = icmp eq %struct.test_fixture* %call, null
  br i1 %cmp, label %cleanup, label %if.then2

if.then2:                                         ; preds = %entry
  %call3 = tail call fastcc i32 @execute_CTX_set_get_transfer_cb_arg(%struct.test_fixture* noundef nonnull %call) #6
  tail call fastcc void @tear_down(%struct.test_fixture* noundef nonnull %call) #6
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.then2
  %retval.0 = phi i32 [ %call3, %if.then2 ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_CTX_set1_get0_srvCert() #1 {
entry:
  %call = tail call fastcc %struct.test_fixture* @set_up(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.18, i64 0, i64 0)) #6
  %cmp = icmp eq %struct.test_fixture* %call, null
  br i1 %cmp, label %cleanup, label %if.then2

if.then2:                                         ; preds = %entry
  %call3 = tail call fastcc i32 @execute_CTX_set1_get0_srvCert(%struct.test_fixture* noundef nonnull %call) #6
  tail call fastcc void @tear_down(%struct.test_fixture* noundef nonnull %call) #6
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.then2
  %retval.0 = phi i32 [ %call3, %if.then2 ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_CTX_set0_get0_validatedSrvCert() #1 {
entry:
  %call = tail call fastcc %struct.test_fixture* @set_up(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.19, i64 0, i64 0)) #6
  %cmp = icmp eq %struct.test_fixture* %call, null
  br i1 %cmp, label %cleanup, label %if.then2

if.then2:                                         ; preds = %entry
  %call3 = tail call fastcc i32 @execute_CTX_set0_get0_validatedSrvCert(%struct.test_fixture* noundef nonnull %call) #6
  tail call fastcc void @tear_down(%struct.test_fixture* noundef nonnull %call) #6
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.then2
  %retval.0 = phi i32 [ %call3, %if.then2 ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_CTX_set1_get0_expected_sender() #1 {
entry:
  %call = tail call fastcc %struct.test_fixture* @set_up(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.20, i64 0, i64 0)) #6
  %cmp = icmp eq %struct.test_fixture* %call, null
  br i1 %cmp, label %cleanup, label %if.then2

if.then2:                                         ; preds = %entry
  %call3 = tail call fastcc i32 @execute_CTX_set1_get0_expected_sender(%struct.test_fixture* noundef nonnull %call) #6
  tail call fastcc void @tear_down(%struct.test_fixture* noundef nonnull %call) #6
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.then2
  %retval.0 = phi i32 [ %call3, %if.then2 ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_CTX_set0_get0_trustedStore() #1 {
entry:
  %call = tail call fastcc %struct.test_fixture* @set_up(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.21, i64 0, i64 0)) #6
  %cmp = icmp eq %struct.test_fixture* %call, null
  br i1 %cmp, label %cleanup, label %if.then2

if.then2:                                         ; preds = %entry
  %call3 = tail call fastcc i32 @execute_CTX_set0_get0_trustedStore(%struct.test_fixture* noundef nonnull %call) #6
  tail call fastcc void @tear_down(%struct.test_fixture* noundef nonnull %call) #6
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.then2
  %retval.0 = phi i32 [ %call3, %if.then2 ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_CTX_set1_get0_untrusted() #1 {
entry:
  %call = tail call fastcc %struct.test_fixture* @set_up(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22, i64 0, i64 0)) #6
  %cmp = icmp eq %struct.test_fixture* %call, null
  br i1 %cmp, label %cleanup, label %if.then2

if.then2:                                         ; preds = %entry
  %call3 = tail call fastcc i32 @execute_CTX_set1_get0_untrusted(%struct.test_fixture* noundef nonnull %call) #6
  tail call fastcc void @tear_down(%struct.test_fixture* noundef nonnull %call) #6
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.then2
  %retval.0 = phi i32 [ %call3, %if.then2 ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_CTX_set1_get0_cert() #1 {
entry:
  %call = tail call fastcc %struct.test_fixture* @set_up(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.23, i64 0, i64 0)) #6
  %cmp = icmp eq %struct.test_fixture* %call, null
  br i1 %cmp, label %cleanup, label %if.then2

if.then2:                                         ; preds = %entry
  %call3 = tail call fastcc i32 @execute_CTX_set1_get0_cert(%struct.test_fixture* noundef nonnull %call) #6
  tail call fastcc void @tear_down(%struct.test_fixture* noundef nonnull %call) #6
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.then2
  %retval.0 = phi i32 [ %call3, %if.then2 ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_CTX_set1_get0_pkey() #1 {
entry:
  %call = tail call fastcc %struct.test_fixture* @set_up(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.24, i64 0, i64 0)) #6
  %cmp = icmp eq %struct.test_fixture* %call, null
  br i1 %cmp, label %cleanup, label %if.then2

if.then2:                                         ; preds = %entry
  %call3 = tail call fastcc i32 @execute_CTX_set1_get0_pkey(%struct.test_fixture* noundef nonnull %call) #6
  tail call fastcc void @tear_down(%struct.test_fixture* noundef nonnull %call) #6
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.then2
  %retval.0 = phi i32 [ %call3, %if.then2 ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_CTX_set1_get1_referenceValue_str() #1 {
entry:
  %call = tail call fastcc %struct.test_fixture* @set_up(i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.25, i64 0, i64 0)) #6
  %cmp = icmp eq %struct.test_fixture* %call, null
  br i1 %cmp, label %cleanup, label %if.then2

if.then2:                                         ; preds = %entry
  %call3 = tail call fastcc i32 @execute_CTX_set1_get1_referenceValue_str(%struct.test_fixture* noundef nonnull %call) #6
  tail call fastcc void @tear_down(%struct.test_fixture* noundef nonnull %call) #6
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.then2
  %retval.0 = phi i32 [ %call3, %if.then2 ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_CTX_set1_get1_secretValue_str() #1 {
entry:
  %call = tail call fastcc %struct.test_fixture* @set_up(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.26, i64 0, i64 0)) #6
  %cmp = icmp eq %struct.test_fixture* %call, null
  br i1 %cmp, label %cleanup, label %if.then2

if.then2:                                         ; preds = %entry
  %call3 = tail call fastcc i32 @execute_CTX_set1_get1_secretValue_str(%struct.test_fixture* noundef nonnull %call) #6
  tail call fastcc void @tear_down(%struct.test_fixture* noundef nonnull %call) #6
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.then2
  %retval.0 = phi i32 [ %call3, %if.then2 ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_CTX_set1_get0_recipient() #1 {
entry:
  %call = tail call fastcc %struct.test_fixture* @set_up(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.27, i64 0, i64 0)) #6
  %cmp = icmp eq %struct.test_fixture* %call, null
  br i1 %cmp, label %cleanup, label %if.then2

if.then2:                                         ; preds = %entry
  %call3 = tail call fastcc i32 @execute_CTX_set1_get0_recipient(%struct.test_fixture* noundef nonnull %call) #6
  tail call fastcc void @tear_down(%struct.test_fixture* noundef nonnull %call) #6
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.then2
  %retval.0 = phi i32 [ %call3, %if.then2 ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_CTX_push0_geninfo_ITAV() #1 {
entry:
  %call = tail call fastcc %struct.test_fixture* @set_up(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.28, i64 0, i64 0)) #6
  %cmp = icmp eq %struct.test_fixture* %call, null
  br i1 %cmp, label %cleanup, label %if.then2

if.then2:                                         ; preds = %entry
  %call3 = tail call fastcc i32 @execute_CTX_push0_geninfo_ITAV(%struct.test_fixture* noundef nonnull %call) #6
  tail call fastcc void @tear_down(%struct.test_fixture* noundef nonnull %call) #6
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.then2
  %retval.0 = phi i32 [ %call3, %if.then2 ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_CTX_set1_get0_extraCertsOut() #1 {
entry:
  %call = tail call fastcc %struct.test_fixture* @set_up(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.29, i64 0, i64 0)) #6
  %cmp = icmp eq %struct.test_fixture* %call, null
  br i1 %cmp, label %cleanup, label %if.then2

if.then2:                                         ; preds = %entry
  %call3 = tail call fastcc i32 @execute_CTX_set1_get0_extraCertsOut(%struct.test_fixture* noundef nonnull %call) #6
  tail call fastcc void @tear_down(%struct.test_fixture* noundef nonnull %call) #6
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.then2
  %retval.0 = phi i32 [ %call3, %if.then2 ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_CTX_set0_get0_newPkey_1() #1 {
entry:
  %call = tail call fastcc %struct.test_fixture* @set_up(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.30, i64 0, i64 0)) #6
  %cmp = icmp eq %struct.test_fixture* %call, null
  br i1 %cmp, label %cleanup, label %if.then2

if.then2:                                         ; preds = %entry
  %call3 = tail call fastcc i32 @execute_CTX_set0_get0_newPkey_1(%struct.test_fixture* noundef nonnull %call) #6
  tail call fastcc void @tear_down(%struct.test_fixture* noundef nonnull %call) #6
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.then2
  %retval.0 = phi i32 [ %call3, %if.then2 ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_CTX_set0_get0_newPkey_0() #1 {
entry:
  %call = tail call fastcc %struct.test_fixture* @set_up(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.31, i64 0, i64 0)) #6
  %cmp = icmp eq %struct.test_fixture* %call, null
  br i1 %cmp, label %cleanup, label %if.then2

if.then2:                                         ; preds = %entry
  %call3 = tail call fastcc i32 @execute_CTX_set0_get0_newPkey_0(%struct.test_fixture* noundef nonnull %call) #6
  tail call fastcc void @tear_down(%struct.test_fixture* noundef nonnull %call) #6
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.then2
  %retval.0 = phi i32 [ %call3, %if.then2 ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_CTX_set1_get0_issuer() #1 {
entry:
  %call = tail call fastcc %struct.test_fixture* @set_up(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.32, i64 0, i64 0)) #6
  %cmp = icmp eq %struct.test_fixture* %call, null
  br i1 %cmp, label %cleanup, label %if.then2

if.then2:                                         ; preds = %entry
  %call3 = tail call fastcc i32 @execute_CTX_set1_get0_issuer(%struct.test_fixture* noundef nonnull %call) #6
  tail call fastcc void @tear_down(%struct.test_fixture* noundef nonnull %call) #6
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.then2
  %retval.0 = phi i32 [ %call3, %if.then2 ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_CTX_set1_get0_subjectName() #1 {
entry:
  %call = tail call fastcc %struct.test_fixture* @set_up(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.33, i64 0, i64 0)) #6
  %cmp = icmp eq %struct.test_fixture* %call, null
  br i1 %cmp, label %cleanup, label %if.then2

if.then2:                                         ; preds = %entry
  %call3 = tail call fastcc i32 @execute_CTX_set1_get0_subjectName(%struct.test_fixture* noundef nonnull %call) #6
  tail call fastcc void @tear_down(%struct.test_fixture* noundef nonnull %call) #6
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.then2
  %retval.0 = phi i32 [ %call3, %if.then2 ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_CTX_set0_get0_reqExtensions() #1 {
entry:
  %call = tail call fastcc %struct.test_fixture* @set_up(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.34, i64 0, i64 0)) #6
  %cmp = icmp eq %struct.test_fixture* %call, null
  br i1 %cmp, label %cleanup, label %if.then2

if.then2:                                         ; preds = %entry
  %call3 = tail call fastcc i32 @execute_CTX_set0_get0_reqExtensions(%struct.test_fixture* noundef nonnull %call) #6
  tail call fastcc void @tear_down(%struct.test_fixture* noundef nonnull %call) #6
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.then2
  %retval.0 = phi i32 [ %call3, %if.then2 ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_CTX_reqExtensions_have_SAN() #1 {
entry:
  %call = tail call fastcc %struct.test_fixture* @set_up(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.35, i64 0, i64 0)) #6
  %cmp = icmp eq %struct.test_fixture* %call, null
  br i1 %cmp, label %cleanup, label %if.then2

if.then2:                                         ; preds = %entry
  %call3 = tail call fastcc i32 @execute_CTX_reqExtensions_have_SAN_test(%struct.test_fixture* noundef nonnull %call) #6
  tail call fastcc void @tear_down(%struct.test_fixture* noundef nonnull %call) #6
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.then2
  %retval.0 = phi i32 [ %call3, %if.then2 ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_CTX_push0_policy() #1 {
entry:
  %call = tail call fastcc %struct.test_fixture* @set_up(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.36, i64 0, i64 0)) #6
  %cmp = icmp eq %struct.test_fixture* %call, null
  br i1 %cmp, label %cleanup, label %if.then2

if.then2:                                         ; preds = %entry
  %call3 = tail call fastcc i32 @execute_CTX_push0_policy(%struct.test_fixture* noundef nonnull %call) #6
  tail call fastcc void @tear_down(%struct.test_fixture* noundef nonnull %call) #6
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.then2
  %retval.0 = phi i32 [ %call3, %if.then2 ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_CTX_set1_get0_oldCert() #1 {
entry:
  %call = tail call fastcc %struct.test_fixture* @set_up(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.37, i64 0, i64 0)) #6
  %cmp = icmp eq %struct.test_fixture* %call, null
  br i1 %cmp, label %cleanup, label %if.then2

if.then2:                                         ; preds = %entry
  %call3 = tail call fastcc i32 @execute_CTX_set1_get0_oldCert(%struct.test_fixture* noundef nonnull %call) #6
  tail call fastcc void @tear_down(%struct.test_fixture* noundef nonnull %call) #6
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.then2
  %retval.0 = phi i32 [ %call3, %if.then2 ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_CTX_push0_genm_ITAV() #1 {
entry:
  %call = tail call fastcc %struct.test_fixture* @set_up(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.38, i64 0, i64 0)) #6
  %cmp = icmp eq %struct.test_fixture* %call, null
  br i1 %cmp, label %cleanup, label %if.then2

if.then2:                                         ; preds = %entry
  %call3 = tail call fastcc i32 @execute_CTX_push0_genm_ITAV(%struct.test_fixture* noundef nonnull %call) #6
  tail call fastcc void @tear_down(%struct.test_fixture* noundef nonnull %call) #6
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.then2
  %retval.0 = phi i32 [ %call3, %if.then2 ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_CTX_set_get_certConf_cb() #1 {
entry:
  %call = tail call fastcc %struct.test_fixture* @set_up(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.39, i64 0, i64 0)) #6
  %cmp = icmp eq %struct.test_fixture* %call, null
  br i1 %cmp, label %cleanup, label %if.then2

if.then2:                                         ; preds = %entry
  %call3 = tail call fastcc i32 @execute_CTX_set_get_certConf_cb(%struct.test_fixture* noundef nonnull %call) #6
  tail call fastcc void @tear_down(%struct.test_fixture* noundef nonnull %call) #6
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.then2
  %retval.0 = phi i32 [ %call3, %if.then2 ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_CTX_set_get_certConf_cb_arg() #1 {
entry:
  %call = tail call fastcc %struct.test_fixture* @set_up(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.40, i64 0, i64 0)) #6
  %cmp = icmp eq %struct.test_fixture* %call, null
  br i1 %cmp, label %cleanup, label %if.then2

if.then2:                                         ; preds = %entry
  %call3 = tail call fastcc i32 @execute_CTX_set_get_certConf_cb_arg(%struct.test_fixture* noundef nonnull %call) #6
  tail call fastcc void @tear_down(%struct.test_fixture* noundef nonnull %call) #6
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.then2
  %retval.0 = phi i32 [ %call3, %if.then2 ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_CTX_set_get_status() #1 {
entry:
  %call = tail call fastcc %struct.test_fixture* @set_up(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.41, i64 0, i64 0)) #6
  %cmp = icmp eq %struct.test_fixture* %call, null
  br i1 %cmp, label %cleanup, label %if.then2

if.then2:                                         ; preds = %entry
  %call3 = tail call fastcc i32 @execute_CTX_set_get_status(%struct.test_fixture* noundef nonnull %call) #6
  tail call fastcc void @tear_down(%struct.test_fixture* noundef nonnull %call) #6
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.then2
  %retval.0 = phi i32 [ %call3, %if.then2 ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_CTX_set0_get0_statusString() #1 {
entry:
  %call = tail call fastcc %struct.test_fixture* @set_up(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.42, i64 0, i64 0)) #6
  %cmp = icmp eq %struct.test_fixture* %call, null
  br i1 %cmp, label %cleanup, label %if.then2

if.then2:                                         ; preds = %entry
  %call3 = tail call fastcc i32 @execute_CTX_set0_get0_statusString(%struct.test_fixture* noundef nonnull %call) #6
  tail call fastcc void @tear_down(%struct.test_fixture* noundef nonnull %call) #6
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.then2
  %retval.0 = phi i32 [ %call3, %if.then2 ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_CTX_set_get_failInfoCode() #1 {
entry:
  %call = tail call fastcc %struct.test_fixture* @set_up(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.43, i64 0, i64 0)) #6
  %cmp = icmp eq %struct.test_fixture* %call, null
  br i1 %cmp, label %cleanup, label %if.then2

if.then2:                                         ; preds = %entry
  %call3 = tail call fastcc i32 @execute_CTX_set_get_failInfoCode(%struct.test_fixture* noundef nonnull %call) #6
  tail call fastcc void @tear_down(%struct.test_fixture* noundef nonnull %call) #6
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.then2
  %retval.0 = phi i32 [ %call3, %if.then2 ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_CTX_set0_get0_newCert() #1 {
entry:
  %call = tail call fastcc %struct.test_fixture* @set_up(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.44, i64 0, i64 0)) #6
  %cmp = icmp eq %struct.test_fixture* %call, null
  br i1 %cmp, label %cleanup, label %if.then2

if.then2:                                         ; preds = %entry
  %call3 = tail call fastcc i32 @execute_CTX_set0_get0_newCert(%struct.test_fixture* noundef nonnull %call) #6
  tail call fastcc void @tear_down(%struct.test_fixture* noundef nonnull %call) #6
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.then2
  %retval.0 = phi i32 [ %call3, %if.then2 ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_CTX_set1_get1_newChain() #1 {
entry:
  %call = tail call fastcc %struct.test_fixture* @set_up(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.45, i64 0, i64 0)) #6
  %cmp = icmp eq %struct.test_fixture* %call, null
  br i1 %cmp, label %cleanup, label %if.then2

if.then2:                                         ; preds = %entry
  %call3 = tail call fastcc i32 @execute_CTX_set1_get1_newChain(%struct.test_fixture* noundef nonnull %call) #6
  tail call fastcc void @tear_down(%struct.test_fixture* noundef nonnull %call) #6
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.then2
  %retval.0 = phi i32 [ %call3, %if.then2 ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_CTX_set1_get1_caPubs() #1 {
entry:
  %call = tail call fastcc %struct.test_fixture* @set_up(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.46, i64 0, i64 0)) #6
  %cmp = icmp eq %struct.test_fixture* %call, null
  br i1 %cmp, label %cleanup, label %if.then2

if.then2:                                         ; preds = %entry
  %call3 = tail call fastcc i32 @execute_CTX_set1_get1_caPubs(%struct.test_fixture* noundef nonnull %call) #6
  tail call fastcc void @tear_down(%struct.test_fixture* noundef nonnull %call) #6
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.then2
  %retval.0 = phi i32 [ %call3, %if.then2 ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_CTX_set1_get1_extraCertsIn() #1 {
entry:
  %call = tail call fastcc %struct.test_fixture* @set_up(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.47, i64 0, i64 0)) #6
  %cmp = icmp eq %struct.test_fixture* %call, null
  br i1 %cmp, label %cleanup, label %if.then2

if.then2:                                         ; preds = %entry
  %call3 = tail call fastcc i32 @execute_CTX_set1_get1_extraCertsIn(%struct.test_fixture* noundef nonnull %call) #6
  tail call fastcc void @tear_down(%struct.test_fixture* noundef nonnull %call) #6
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.then2
  %retval.0 = phi i32 [ %call3, %if.then2 ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_CTX_set1_get0_transactionID() #1 {
entry:
  %call = tail call fastcc %struct.test_fixture* @set_up(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.48, i64 0, i64 0)) #6
  %cmp = icmp eq %struct.test_fixture* %call, null
  br i1 %cmp, label %cleanup, label %if.then2

if.then2:                                         ; preds = %entry
  %call3 = tail call fastcc i32 @execute_CTX_set1_get0_transactionID(%struct.test_fixture* noundef nonnull %call) #6
  tail call fastcc void @tear_down(%struct.test_fixture* noundef nonnull %call) #6
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.then2
  %retval.0 = phi i32 [ %call3, %if.then2 ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_CTX_set1_get0_senderNonce() #1 {
entry:
  %call = tail call fastcc %struct.test_fixture* @set_up(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.49, i64 0, i64 0)) #6
  %cmp = icmp eq %struct.test_fixture* %call, null
  br i1 %cmp, label %cleanup, label %if.then2

if.then2:                                         ; preds = %entry
  %call3 = tail call fastcc i32 @execute_CTX_set1_get0_senderNonce(%struct.test_fixture* noundef nonnull %call) #6
  tail call fastcc void @tear_down(%struct.test_fixture* noundef nonnull %call) #6
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.then2
  %retval.0 = phi i32 [ %call3, %if.then2 ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_CTX_set1_get0_recipNonce() #1 {
entry:
  %call = tail call fastcc %struct.test_fixture* @set_up(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.50, i64 0, i64 0)) #6
  %cmp = icmp eq %struct.test_fixture* %call, null
  br i1 %cmp, label %cleanup, label %if.then2

if.then2:                                         ; preds = %entry
  %call3 = tail call fastcc i32 @execute_CTX_set1_get0_recipNonce(%struct.test_fixture* noundef nonnull %call) #6
  tail call fastcc void @tear_down(%struct.test_fixture* noundef nonnull %call) #6
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.then2
  %retval.0 = phi i32 [ %call3, %if.then2 ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.test_fixture* @set_up(i8* noundef %test_case_name) unnamed_addr #1 {
entry:
  %call = tail call i8* @CRYPTO_zalloc(i64 noundef 16, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 37) #5
  %0 = bitcast i8* %call to %struct.test_fixture*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 37, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.51, i64 0, i64 0), i8* noundef %call) #5
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call2 = tail call %struct.ossl_cmp_ctx_st* @OSSL_CMP_CTX_new(%struct.ossl_lib_ctx_st* noundef null, i8* noundef null) #5
  %ctx = getelementptr inbounds i8, i8* %call, i64 8
  %1 = bitcast i8* %ctx to %struct.ossl_cmp_ctx_st**
  store %struct.ossl_cmp_ctx_st* %call2, %struct.ossl_cmp_ctx_st** %1, align 8, !tbaa !7
  %2 = bitcast %struct.ossl_cmp_ctx_st* %call2 to i8*
  %call3 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 39, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.52, i64 0, i64 0), i8* noundef %2) #5
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  tail call fastcc void @tear_down(%struct.test_fixture* noundef nonnull %0) #6
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %test_case_name7 = bitcast i8* %call to i8**
  store i8* %test_case_name, i8** %test_case_name7, align 8, !tbaa !9
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end6, %if.then5
  %retval.0 = phi %struct.test_fixture* [ %0, %if.end6 ], [ null, %if.then5 ], [ null, %entry ]
  ret %struct.test_fixture* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @execute_CTX_reinit_test(%struct.test_fixture* nocapture noundef readonly %fixture) unnamed_addr #1 {
entry:
  %ctx1 = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %fixture, i64 0, i32 1
  %0 = load %struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_ctx_st** %ctx1, align 8, !tbaa !7
  %status = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %0, i64 0, i32 62
  store i32 1, i32* %status, align 8, !tbaa !10
  %failInfoCode = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %0, i64 0, i32 64
  store i32 1, i32* %failInfoCode, align 8, !tbaa !14
  %call = tail call %struct.stack_st* @OPENSSL_sk_new_null() #5
  %1 = bitcast %struct.stack_st* %call to %struct.stack_st_ASN1_UTF8STRING*
  %call2 = tail call i32 @ossl_cmp_ctx_set0_statusString(%struct.ossl_cmp_ctx_st* noundef %0, %struct.stack_st_ASN1_UTF8STRING* noundef %1) #5
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.x509_st*, %struct.x509_st** @test_cert, align 8, !tbaa !3
  %call3 = tail call %struct.x509_st* @X509_dup(%struct.x509_st* noundef %2) #5
  %call4 = tail call i32 @ossl_cmp_ctx_set0_newCert(%struct.ossl_cmp_ctx_st* noundef nonnull %0, %struct.x509_st* noundef %call3) #5
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %err, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %call7 = tail call fastcc %struct.stack_st_X509* @sk_X509_new_1() #6
  %3 = bitcast %struct.stack_st_X509* %call7 to i8*
  %call8 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 77, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.53, i64 0, i64 0), i8* noundef %3) #5
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %err, label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %lor.lhs.false6
  %call11 = tail call i32 @ossl_cmp_ctx_set1_newChain(%struct.ossl_cmp_ctx_st* noundef nonnull %0, %struct.stack_st_X509* noundef %call7) #5
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %err, label %lor.lhs.false13

lor.lhs.false13:                                  ; preds = %lor.lhs.false10
  %call14 = tail call i32 @ossl_cmp_ctx_set1_caPubs(%struct.ossl_cmp_ctx_st* noundef nonnull %0, %struct.stack_st_X509* noundef %call7) #5
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %err, label %lor.lhs.false16

lor.lhs.false16:                                  ; preds = %lor.lhs.false13
  %call17 = tail call i32 @ossl_cmp_ctx_set1_extraCertsIn(%struct.ossl_cmp_ctx_st* noundef nonnull %0, %struct.stack_st_X509* noundef %call7) #5
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %err, label %lor.lhs.false19

lor.lhs.false19:                                  ; preds = %lor.lhs.false16
  %4 = load %struct.x509_st*, %struct.x509_st** @test_cert, align 8, !tbaa !3
  %call20 = tail call %struct.x509_st* @X509_dup(%struct.x509_st* noundef %4) #5
  %call21 = tail call i32 @ossl_cmp_ctx_set0_validatedSrvCert(%struct.ossl_cmp_ctx_st* noundef nonnull %0, %struct.x509_st* noundef %call20) #5
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %err, label %lor.lhs.false23

lor.lhs.false23:                                  ; preds = %lor.lhs.false19
  %call24 = tail call %struct.asn1_string_st* @ASN1_OCTET_STRING_new() #5
  %5 = bitcast %struct.asn1_string_st* %call24 to i8*
  %call25 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 82, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.54, i64 0, i64 0), i8* noundef %5) #5
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %err, label %lor.lhs.false27

lor.lhs.false27:                                  ; preds = %lor.lhs.false23
  %call28 = tail call i32 @OSSL_CMP_CTX_set1_transactionID(%struct.ossl_cmp_ctx_st* noundef nonnull %0, %struct.asn1_string_st* noundef %call24) #5
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %err, label %lor.lhs.false30

lor.lhs.false30:                                  ; preds = %lor.lhs.false27
  %call31 = tail call i32 @OSSL_CMP_CTX_set1_senderNonce(%struct.ossl_cmp_ctx_st* noundef nonnull %0, %struct.asn1_string_st* noundef %call24) #5
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %err, label %lor.lhs.false33

lor.lhs.false33:                                  ; preds = %lor.lhs.false30
  %call34 = tail call i32 @ossl_cmp_ctx_set1_recipNonce(%struct.ossl_cmp_ctx_st* noundef nonnull %0, %struct.asn1_string_st* noundef %call24) #5
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %err, label %if.end

if.end:                                           ; preds = %lor.lhs.false33
  %call36 = tail call i32 @OSSL_CMP_CTX_reinit(%struct.ossl_cmp_ctx_st* noundef nonnull %0) #5
  %cmp = icmp ne i32 %call36, 0
  %conv = zext i1 %cmp to i32
  %call37 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 88, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.55, i64 0, i64 0), i32 noundef %conv) #5
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %err, label %if.end40

if.end40:                                         ; preds = %if.end
  %6 = load i32, i32* %status, align 8, !tbaa !10
  %cmp42 = icmp eq i32 %6, -1
  br i1 %cmp42, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %if.end40
  %7 = load i32, i32* %failInfoCode, align 8, !tbaa !14
  %cmp45 = icmp eq i32 %7, -1
  br i1 %cmp45, label %land.lhs.true47, label %land.end

land.lhs.true47:                                  ; preds = %land.lhs.true
  %statusString = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %0, i64 0, i32 63
  %8 = load %struct.stack_st_ASN1_UTF8STRING*, %struct.stack_st_ASN1_UTF8STRING** %statusString, align 8, !tbaa !15
  %cmp48 = icmp eq %struct.stack_st_ASN1_UTF8STRING* %8, null
  br i1 %cmp48, label %land.lhs.true50, label %land.end

land.lhs.true50:                                  ; preds = %land.lhs.true47
  %newCert = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %0, i64 0, i32 65
  %9 = load %struct.x509_st*, %struct.x509_st** %newCert, align 8, !tbaa !16
  %cmp51 = icmp eq %struct.x509_st* %9, null
  br i1 %cmp51, label %land.lhs.true53, label %land.end

land.lhs.true53:                                  ; preds = %land.lhs.true50
  %newChain = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %0, i64 0, i32 66
  %10 = load %struct.stack_st_X509*, %struct.stack_st_X509** %newChain, align 8, !tbaa !17
  %cmp54 = icmp eq %struct.stack_st_X509* %10, null
  br i1 %cmp54, label %land.lhs.true56, label %land.end

land.lhs.true56:                                  ; preds = %land.lhs.true53
  %caPubs = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %0, i64 0, i32 67
  %11 = load %struct.stack_st_X509*, %struct.stack_st_X509** %caPubs, align 8, !tbaa !18
  %cmp57 = icmp eq %struct.stack_st_X509* %11, null
  br i1 %cmp57, label %land.lhs.true59, label %land.end

land.lhs.true59:                                  ; preds = %land.lhs.true56
  %extraCertsIn = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %0, i64 0, i32 68
  %12 = load %struct.stack_st_X509*, %struct.stack_st_X509** %extraCertsIn, align 8, !tbaa !19
  %cmp60 = icmp eq %struct.stack_st_X509* %12, null
  br i1 %cmp60, label %land.lhs.true62, label %land.end

land.lhs.true62:                                  ; preds = %land.lhs.true59
  %validatedSrvCert = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %0, i64 0, i32 20
  %13 = load %struct.x509_st*, %struct.x509_st** %validatedSrvCert, align 8, !tbaa !20
  %cmp63 = icmp eq %struct.x509_st* %13, null
  br i1 %cmp63, label %land.lhs.true65, label %land.end

land.lhs.true65:                                  ; preds = %land.lhs.true62
  %transactionID = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %0, i64 0, i32 38
  %14 = load %struct.asn1_string_st*, %struct.asn1_string_st** %transactionID, align 8, !tbaa !21
  %cmp66 = icmp eq %struct.asn1_string_st* %14, null
  br i1 %cmp66, label %land.lhs.true68, label %land.end

land.lhs.true68:                                  ; preds = %land.lhs.true65
  %senderNonce = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %0, i64 0, i32 39
  %15 = load %struct.asn1_string_st*, %struct.asn1_string_st** %senderNonce, align 8, !tbaa !22
  %cmp69 = icmp eq %struct.asn1_string_st* %15, null
  br i1 %cmp69, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true68
  %recipNonce = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %0, i64 0, i32 40
  %16 = load %struct.asn1_string_st*, %struct.asn1_string_st** %recipNonce, align 8, !tbaa !23
  %cmp71 = icmp eq %struct.asn1_string_st* %16, null
  %phi.cast = zext i1 %cmp71 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true68, %land.lhs.true65, %land.lhs.true62, %land.lhs.true59, %land.lhs.true56, %land.lhs.true53, %land.lhs.true50, %land.lhs.true47, %land.lhs.true, %if.end40
  %17 = phi i32 [ 0, %land.lhs.true68 ], [ 0, %land.lhs.true65 ], [ 0, %land.lhs.true62 ], [ 0, %land.lhs.true59 ], [ 0, %land.lhs.true56 ], [ 0, %land.lhs.true53 ], [ 0, %land.lhs.true50 ], [ 0, %land.lhs.true47 ], [ 0, %land.lhs.true ], [ 0, %if.end40 ], [ %phi.cast, %land.rhs ]
  %call75 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 102, i8* noundef getelementptr inbounds ([293 x i8], [293 x i8]* @.str.56, i64 0, i64 0), i32 noundef %17) #5
  %tobool76.not = icmp ne i32 %call75, 0
  %spec.select = zext i1 %tobool76.not to i32
  br label %err

err:                                              ; preds = %land.end, %if.end, %entry, %lor.lhs.false, %lor.lhs.false6, %lor.lhs.false10, %lor.lhs.false13, %lor.lhs.false16, %lor.lhs.false19, %lor.lhs.false23, %lor.lhs.false27, %lor.lhs.false30, %lor.lhs.false33
  %bytes.0 = phi %struct.asn1_string_st* [ %call24, %if.end ], [ %call24, %lor.lhs.false33 ], [ %call24, %lor.lhs.false30 ], [ %call24, %lor.lhs.false27 ], [ %call24, %lor.lhs.false23 ], [ null, %lor.lhs.false19 ], [ null, %lor.lhs.false16 ], [ null, %lor.lhs.false13 ], [ null, %lor.lhs.false10 ], [ null, %lor.lhs.false6 ], [ null, %lor.lhs.false ], [ null, %entry ], [ %call24, %land.end ]
  %certs.0 = phi %struct.stack_st_X509* [ %call7, %if.end ], [ %call7, %lor.lhs.false33 ], [ %call7, %lor.lhs.false30 ], [ %call7, %lor.lhs.false27 ], [ %call7, %lor.lhs.false23 ], [ %call7, %lor.lhs.false19 ], [ %call7, %lor.lhs.false16 ], [ %call7, %lor.lhs.false13 ], [ %call7, %lor.lhs.false10 ], [ %call7, %lor.lhs.false6 ], [ null, %lor.lhs.false ], [ null, %entry ], [ %call7, %land.end ]
  %res.0 = phi i32 [ 0, %if.end ], [ 0, %lor.lhs.false33 ], [ 0, %lor.lhs.false30 ], [ 0, %lor.lhs.false27 ], [ 0, %lor.lhs.false23 ], [ 0, %lor.lhs.false19 ], [ 0, %lor.lhs.false16 ], [ 0, %lor.lhs.false13 ], [ 0, %lor.lhs.false10 ], [ 0, %lor.lhs.false6 ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ %spec.select, %land.end ]
  tail call fastcc void @sk_X509_pop_X509_free(%struct.stack_st_X509* noundef %certs.0) #6
  tail call void @ASN1_OCTET_STRING_free(%struct.asn1_string_st* noundef %bytes.0) #5
  ret i32 %res.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @tear_down(%struct.test_fixture* noundef %fixture) unnamed_addr #1 {
entry:
  %cmp.not = icmp eq %struct.test_fixture* %fixture, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %ctx = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %fixture, i64 0, i32 1
  %0 = load %struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_ctx_st** %ctx, align 8, !tbaa !7
  tail call void @OSSL_CMP_CTX_free(%struct.ossl_cmp_ctx_st* noundef %0) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = bitcast %struct.test_fixture* %fixture to i8*
  tail call void @CRYPTO_free(i8* noundef %1, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 30) #5
  ret void
}

declare dso_local i8* @CRYPTO_zalloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare dso_local %struct.ossl_cmp_ctx_st* @OSSL_CMP_CTX_new(%struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local i32 @ossl_cmp_ctx_set0_statusString(%struct.ossl_cmp_ctx_st* noundef, %struct.stack_st_ASN1_UTF8STRING* noundef) local_unnamed_addr #3

declare dso_local %struct.stack_st* @OPENSSL_sk_new_null() local_unnamed_addr #3

declare dso_local i32 @ossl_cmp_ctx_set0_newCert(%struct.ossl_cmp_ctx_st* noundef, %struct.x509_st* noundef) local_unnamed_addr #3

declare dso_local %struct.x509_st* @X509_dup(%struct.x509_st* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.stack_st_X509* @sk_X509_new_1() unnamed_addr #1 {
entry:
  %call = tail call %struct.stack_st* @OPENSSL_sk_new_null() #5
  %0 = bitcast %struct.stack_st* %call to %struct.stack_st_X509*
  %1 = load %struct.x509_st*, %struct.x509_st** @test_cert, align 8, !tbaa !3
  %call1 = tail call %struct.x509_st* @X509_dup(%struct.x509_st* noundef %1) #5
  %cmp = icmp eq %struct.x509_st* %call1, null
  %.pre = tail call fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef %0) #6
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = bitcast %struct.x509_st* %call1 to i8*
  %call4 = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %.pre, i8* noundef nonnull %2) #5
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry, %lor.lhs.false
  tail call void @OPENSSL_sk_free(%struct.stack_st* noundef %.pre) #5
  tail call void @X509_free(%struct.x509_st* noundef %call1) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %sk.0 = phi %struct.stack_st_X509* [ null, %if.then ], [ %0, %lor.lhs.false ]
  ret %struct.stack_st_X509* %sk.0
}

declare dso_local i32 @ossl_cmp_ctx_set1_newChain(%struct.ossl_cmp_ctx_st* noundef, %struct.stack_st_X509* noundef) local_unnamed_addr #3

declare dso_local i32 @ossl_cmp_ctx_set1_caPubs(%struct.ossl_cmp_ctx_st* noundef, %struct.stack_st_X509* noundef) local_unnamed_addr #3

declare dso_local i32 @ossl_cmp_ctx_set1_extraCertsIn(%struct.ossl_cmp_ctx_st* noundef, %struct.stack_st_X509* noundef) local_unnamed_addr #3

declare dso_local i32 @ossl_cmp_ctx_set0_validatedSrvCert(%struct.ossl_cmp_ctx_st* noundef, %struct.x509_st* noundef) local_unnamed_addr #3

declare dso_local %struct.asn1_string_st* @ASN1_OCTET_STRING_new() local_unnamed_addr #3

declare dso_local i32 @OSSL_CMP_CTX_set1_transactionID(%struct.ossl_cmp_ctx_st* noundef, %struct.asn1_string_st* noundef) local_unnamed_addr #3

declare dso_local i32 @OSSL_CMP_CTX_set1_senderNonce(%struct.ossl_cmp_ctx_st* noundef, %struct.asn1_string_st* noundef) local_unnamed_addr #3

declare dso_local i32 @ossl_cmp_ctx_set1_recipNonce(%struct.ossl_cmp_ctx_st* noundef, %struct.asn1_string_st* noundef) local_unnamed_addr #3

declare dso_local i32 @test_true(i8* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare dso_local i32 @OSSL_CMP_CTX_reinit(%struct.ossl_cmp_ctx_st* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @sk_X509_pop_X509_free(%struct.stack_st_X509* noundef %sk) unnamed_addr #1 {
entry:
  %call = tail call fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef %sk) #6
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call, void (i8*)* noundef bitcast (void (%struct.x509_st*)* @X509_free to void (i8*)*)) #5
  ret void
}

declare dso_local void @ASN1_OCTET_STRING_free(%struct.asn1_string_st* noundef) local_unnamed_addr #3

declare dso_local i32 @OPENSSL_sk_push(%struct.stack_st* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef readnone %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_X509* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare dso_local void @OPENSSL_sk_free(%struct.stack_st* noundef) local_unnamed_addr #3

declare dso_local void @X509_free(%struct.x509_st* noundef) #3

declare dso_local void @OPENSSL_sk_pop_free(%struct.stack_st* noundef, void (i8*)* noundef) local_unnamed_addr #3

declare dso_local void @OSSL_CMP_CTX_free(%struct.ossl_cmp_ctx_st* noundef) local_unnamed_addr #3

declare dso_local void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @execute_CTX_set_get_option_35(%struct.test_fixture* nocapture noundef readonly %fixture) unnamed_addr #1 {
entry:
  %ctx1 = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %fixture, i64 0, i32 1
  %0 = load %struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_ctx_st** %ctx1, align 8, !tbaa !7
  %call = tail call i64 @ERR_peek_error() #5
  %conv = trunc i64 %call to i32
  %call2 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 727, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.57, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.58, i64 0, i64 0), i32 noundef %conv, i32 noundef 0) #5
  %call3 = tail call fastcc i32 @OSSL_CMP_CTX_set_option_35(%struct.ossl_cmp_ctx_st* noundef null) #6
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %lor.lhs.false, label %if.then7

lor.lhs.false:                                    ; preds = %entry
  %tobool.not = icmp ne i32 %call2, 0
  %spec.select = zext i1 %tobool.not to i32
  %call5 = tail call i64 @ERR_peek_error() #5
  %cmp = icmp eq i64 %call5, 0
  br i1 %cmp, label %if.then7, label %if.end8

if.then7:                                         ; preds = %lor.lhs.false, %entry
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 727, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.59, i64 0, i64 0)) #5
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %lor.lhs.false
  %res.1 = phi i32 [ 0, %if.then7 ], [ %spec.select, %lor.lhs.false ]
  tail call void @ERR_clear_error() #5
  %call9 = tail call fastcc i32 @OSSL_CMP_CTX_get_option_35(%struct.ossl_cmp_ctx_st* noundef null) #6
  %cmp10.not = icmp eq i32 %call9, -1
  br i1 %cmp10.not, label %lor.lhs.false12, label %if.then16

lor.lhs.false12:                                  ; preds = %if.end8
  %call13 = tail call i64 @ERR_peek_error() #5
  %cmp14 = icmp eq i64 %call13, 0
  br i1 %cmp14, label %if.then16, label %if.end17

if.then16:                                        ; preds = %lor.lhs.false12, %if.end8
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 727, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.60, i64 0, i64 0)) #5
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %lor.lhs.false12
  %res.2 = phi i32 [ 0, %if.then16 ], [ %res.1, %lor.lhs.false12 ]
  tail call void @ERR_clear_error() #5
  %call18 = tail call fastcc i32 @OSSL_CMP_CTX_get_option_35(%struct.ossl_cmp_ctx_st* noundef %0) #6
  %cmp19 = icmp eq i32 %call18, 0
  br i1 %cmp19, label %if.end22, label %if.then21

if.then21:                                        ; preds = %if.end17
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 727, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.61, i64 0, i64 0)) #5
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %if.end17
  %res.3 = phi i32 [ %res.2, %if.end17 ], [ 0, %if.then21 ]
  %call23 = tail call fastcc i32 @OSSL_CMP_CTX_set_option_35(%struct.ossl_cmp_ctx_st* noundef %0) #6
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.then25, label %if.end26

if.then25:                                        ; preds = %if.end22
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 727, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.62, i64 0, i64 0)) #5
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %if.end22
  %res.4 = phi i32 [ %res.3, %if.end22 ], [ 0, %if.then25 ]
  %call27 = tail call fastcc i32 @OSSL_CMP_CTX_get_option_35(%struct.ossl_cmp_ctx_st* noundef %0) #6
  %cmp28.not = icmp eq i32 %call27, 1
  br i1 %cmp28.not, label %if.end31, label %if.then30

if.then30:                                        ; preds = %if.end26
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 727, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.63, i64 0, i64 0)) #5
  br label %if.end31

if.end31:                                         ; preds = %if.then30, %if.end26
  %res.5 = phi i32 [ 0, %if.then30 ], [ %res.4, %if.end26 ]
  %call32 = tail call fastcc i32 @OSSL_CMP_CTX_set_option_35(%struct.ossl_cmp_ctx_st* noundef %0) #6
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.then34, label %if.end35

if.then34:                                        ; preds = %if.end31
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 727, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.64, i64 0, i64 0)) #5
  br label %if.end35

if.end35:                                         ; preds = %if.then34, %if.end31
  %res.6 = phi i32 [ %res.5, %if.end31 ], [ 0, %if.then34 ]
  %call36 = tail call fastcc i32 @OSSL_CMP_CTX_get_option_35(%struct.ossl_cmp_ctx_st* noundef %0) #6
  switch i32 %call36, label %if.then43 [
    i32 0, label %if.end40.thread
    i32 1, label %if.end44
  ]

if.end40.thread:                                  ; preds = %if.end35
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 727, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.65, i64 0, i64 0)) #5
  br label %if.then43

if.then43:                                        ; preds = %if.end35, %if.end40.thread
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 727, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.66, i64 0, i64 0)) #5
  br label %if.end44

if.end44:                                         ; preds = %if.end35, %if.then43
  %res.8 = phi i32 [ 0, %if.then43 ], [ %res.6, %if.end35 ]
  %call45 = tail call fastcc i32 @OSSL_CMP_CTX_get_option_35(%struct.ossl_cmp_ctx_st* noundef %0) #6
  %cmp46 = icmp eq i32 %call45, 0
  br i1 %cmp46, label %if.then48, label %if.end49

if.then48:                                        ; preds = %if.end44
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 727, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.67, i64 0, i64 0)) #5
  br label %if.end49

if.end49:                                         ; preds = %if.then48, %if.end44
  %res.9 = phi i32 [ 0, %if.then48 ], [ %res.8, %if.end44 ]
  %cmp50.not = icmp eq i32 %call45, %call36
  br i1 %cmp50.not, label %if.end53, label %if.then52

if.then52:                                        ; preds = %if.end49
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 727, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.68, i64 0, i64 0)) #5
  br label %if.end53

if.end53:                                         ; preds = %if.then52, %if.end49
  %res.10 = phi i32 [ 0, %if.then52 ], [ %res.9, %if.end49 ]
  %call54 = tail call i64 @ERR_peek_error() #5
  %conv55 = trunc i64 %call54 to i32
  %call56 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 727, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.57, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.58, i64 0, i64 0), i32 noundef %conv55, i32 noundef 0) #5
  %tobool57.not = icmp ne i32 %call56, 0
  %cmp6097 = icmp ne i32 %res.10, 0
  %cmp60 = select i1 %tobool57.not, i1 %cmp6097, i1 false
  %conv61 = zext i1 %cmp60 to i32
  %call62 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 727, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.69, i64 0, i64 0), i32 noundef %conv61) #5
  ret i32 %call62
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @OSSL_CMP_CTX_set_option_35(%struct.ossl_cmp_ctx_st* noundef %ctx) unnamed_addr #1 {
entry:
  %call = tail call i32 @OSSL_CMP_CTX_set_option(%struct.ossl_cmp_ctx_st* noundef %ctx, i32 noundef 35, i32 noundef 1) #5
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @OSSL_CMP_CTX_get_option_35(%struct.ossl_cmp_ctx_st* noundef %ctx) unnamed_addr #1 {
entry:
  %call = tail call i32 @OSSL_CMP_CTX_get_option(%struct.ossl_cmp_ctx_st* noundef %ctx, i32 noundef 35) #5
  ret i32 %call
}

declare dso_local i32 @test_int_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare dso_local i64 @ERR_peek_error() local_unnamed_addr #3

declare dso_local void @ERR_clear_error() local_unnamed_addr #3

declare dso_local i32 @OSSL_CMP_CTX_set_option(%struct.ossl_cmp_ctx_st* noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare dso_local i32 @OSSL_CMP_CTX_get_option(%struct.ossl_cmp_ctx_st* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @execute_CTX_set_get_log_cb(%struct.test_fixture* nocapture noundef readonly %fixture) unnamed_addr #1 {
entry:
  %ctx1 = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %fixture, i64 0, i32 1
  %0 = load %struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_ctx_st** %ctx1, align 8, !tbaa !7
  %call = tail call i64 @ERR_peek_error() #5
  %conv = trunc i64 %call to i32
  %call2 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 729, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.57, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.58, i64 0, i64 0), i32 noundef %conv, i32 noundef 0) #5
  %call3 = tail call i32 @OSSL_CMP_CTX_set_log_cb(%struct.ossl_cmp_ctx_st* noundef null, i32 (i8*, i8*, i32, i32, i8*)* noundef nonnull @test_log_cb) #5
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %lor.lhs.false, label %if.then7

lor.lhs.false:                                    ; preds = %entry
  %tobool.not = icmp ne i32 %call2, 0
  %spec.select = zext i1 %tobool.not to i32
  %call5 = tail call i64 @ERR_peek_error() #5
  %cmp = icmp eq i64 %call5, 0
  br i1 %cmp, label %if.then7, label %if.end8

if.then7:                                         ; preds = %lor.lhs.false, %entry
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 729, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.59, i64 0, i64 0)) #5
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %lor.lhs.false
  %res.1 = phi i32 [ 0, %if.then7 ], [ %spec.select, %lor.lhs.false ]
  tail call void @ERR_clear_error() #5
  %call9 = tail call fastcc i32 (i8*, i8*, i32, i32, i8*)* @OSSL_CMP_CTX_get_log_cb(%struct.ossl_cmp_ctx_st* noundef null) #6
  %cmp10.not = icmp eq i32 (i8*, i8*, i32, i32, i8*)* %call9, null
  br i1 %cmp10.not, label %lor.lhs.false12, label %if.then16

lor.lhs.false12:                                  ; preds = %if.end8
  %call13 = tail call i64 @ERR_peek_error() #5
  %cmp14 = icmp eq i64 %call13, 0
  br i1 %cmp14, label %if.then16, label %if.end17

if.then16:                                        ; preds = %lor.lhs.false12, %if.end8
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 729, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.60, i64 0, i64 0)) #5
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %lor.lhs.false12
  %res.2 = phi i32 [ 0, %if.then16 ], [ %res.1, %lor.lhs.false12 ]
  tail call void @ERR_clear_error() #5
  %call18 = tail call fastcc i32 (i8*, i8*, i32, i32, i8*)* @OSSL_CMP_CTX_get_log_cb(%struct.ossl_cmp_ctx_st* noundef %0) #6
  %cmp19 = icmp eq i32 (i8*, i8*, i32, i32, i8*)* %call18, null
  br i1 %cmp19, label %if.end22, label %if.then21

if.then21:                                        ; preds = %if.end17
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 729, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.61, i64 0, i64 0)) #5
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %if.end17
  %res.3 = phi i32 [ %res.2, %if.end17 ], [ 0, %if.then21 ]
  %call23 = tail call i32 @OSSL_CMP_CTX_set_log_cb(%struct.ossl_cmp_ctx_st* noundef %0, i32 (i8*, i8*, i32, i32, i8*)* noundef nonnull @test_log_cb) #5
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.then25, label %if.end26

if.then25:                                        ; preds = %if.end22
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 729, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.62, i64 0, i64 0)) #5
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %if.end22
  %res.4 = phi i32 [ %res.3, %if.end22 ], [ 0, %if.then25 ]
  %call27 = tail call fastcc i32 (i8*, i8*, i32, i32, i8*)* @OSSL_CMP_CTX_get_log_cb(%struct.ossl_cmp_ctx_st* noundef %0) #6
  %cmp28.not = icmp eq i32 (i8*, i8*, i32, i32, i8*)* %call27, @test_log_cb
  br i1 %cmp28.not, label %if.end31, label %if.then30

if.then30:                                        ; preds = %if.end26
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 729, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.63, i64 0, i64 0)) #5
  br label %if.end31

if.end31:                                         ; preds = %if.then30, %if.end26
  %res.5 = phi i32 [ 0, %if.then30 ], [ %res.4, %if.end26 ]
  %call32 = tail call i32 @OSSL_CMP_CTX_set_log_cb(%struct.ossl_cmp_ctx_st* noundef %0, i32 (i8*, i8*, i32, i32, i8*)* noundef nonnull @test_log_cb) #5
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.then34, label %if.end35

if.then34:                                        ; preds = %if.end31
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 729, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.64, i64 0, i64 0)) #5
  br label %if.end35

if.end35:                                         ; preds = %if.then34, %if.end31
  %res.6 = phi i32 [ %res.5, %if.end31 ], [ 0, %if.then34 ]
  %call36 = tail call fastcc i32 (i8*, i8*, i32, i32, i8*)* @OSSL_CMP_CTX_get_log_cb(%struct.ossl_cmp_ctx_st* noundef %0) #6
  %cmp37 = icmp eq i32 (i8*, i8*, i32, i32, i8*)* %call36, null
  br i1 %cmp37, label %if.end40.thread, label %if.end40

if.end40.thread:                                  ; preds = %if.end35
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 729, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.65, i64 0, i64 0)) #5
  br label %if.then43

if.end40:                                         ; preds = %if.end35
  %cmp41.not = icmp eq i32 (i8*, i8*, i32, i32, i8*)* %call36, @test_log_cb
  br i1 %cmp41.not, label %if.end44, label %if.then43

if.then43:                                        ; preds = %if.end40.thread, %if.end40
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 729, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.66, i64 0, i64 0)) #5
  br label %if.end44

if.end44:                                         ; preds = %if.then43, %if.end40
  %res.8 = phi i32 [ 0, %if.then43 ], [ %res.6, %if.end40 ]
  %call45 = tail call fastcc i32 (i8*, i8*, i32, i32, i8*)* @OSSL_CMP_CTX_get_log_cb(%struct.ossl_cmp_ctx_st* noundef %0) #6
  %cmp46 = icmp eq i32 (i8*, i8*, i32, i32, i8*)* %call45, null
  br i1 %cmp46, label %if.then48, label %if.end49

if.then48:                                        ; preds = %if.end44
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 729, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.67, i64 0, i64 0)) #5
  br label %if.end49

if.end49:                                         ; preds = %if.then48, %if.end44
  %res.9 = phi i32 [ 0, %if.then48 ], [ %res.8, %if.end44 ]
  %cmp50.not = icmp eq i32 (i8*, i8*, i32, i32, i8*)* %call45, %call36
  br i1 %cmp50.not, label %if.end53, label %if.then52

if.then52:                                        ; preds = %if.end49
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 729, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.68, i64 0, i64 0)) #5
  br label %if.end53

if.end53:                                         ; preds = %if.then52, %if.end49
  %res.10 = phi i32 [ 0, %if.then52 ], [ %res.9, %if.end49 ]
  %call54 = tail call i64 @ERR_peek_error() #5
  %conv55 = trunc i64 %call54 to i32
  %call56 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 729, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.57, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.58, i64 0, i64 0), i32 noundef %conv55, i32 noundef 0) #5
  %tobool57.not = icmp ne i32 %call56, 0
  %cmp6097 = icmp ne i32 %res.10, 0
  %cmp60 = select i1 %tobool57.not, i1 %cmp6097, i1 false
  %conv61 = zext i1 %cmp60 to i32
  %call62 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 729, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.69, i64 0, i64 0), i32 noundef %conv61) #5
  ret i32 %call62
}

declare dso_local i32 @OSSL_CMP_CTX_set_log_cb(%struct.ossl_cmp_ctx_st* noundef, i32 (i8*, i8*, i32, i32, i8*)* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 (i8*, i8*, i32, i32, i8*)* @OSSL_CMP_CTX_get_log_cb(%struct.ossl_cmp_ctx_st* noundef readonly %ctx) unnamed_addr #1 {
entry:
  %cmp = icmp eq %struct.ossl_cmp_ctx_st* %ctx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 729, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.OSSL_CMP_CTX_get_log_cb, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 103, i8* noundef null) #5
  br label %return

if.end:                                           ; preds = %entry
  %log_cb = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 2
  %0 = load i32 (i8*, i8*, i32, i32, i8*)*, i32 (i8*, i8*, i32, i32, i8*)** %log_cb, align 8, !tbaa !24
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 (i8*, i8*, i32, i32, i8*)* [ null, %if.then ], [ %0, %if.end ]
  ret i32 (i8*, i8*, i32, i32, i8*)* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_log_cb(i8* noundef %func, i8* noundef %file, i32 noundef %line, i32 noundef %level, i8* noundef %msg) #1 {
entry:
  %call = tail call i32 @test_str_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 252, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.70, i64 0, i64 0), i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.71, i64 0, i64 0), i8* noundef %func, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.72, i64 0, i64 0)) #5
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %lor.lhs.false, label %land.lhs.true

lor.lhs.false:                                    ; preds = %entry
  %call1 = tail call i32 @test_str_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 253, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.70, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.73, i64 0, i64 0), i8* noundef %func, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.74, i64 0, i64 0)) #5
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false, %entry
  %call3 = tail call i32 @test_str_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 255, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.75, i64 0, i64 0), i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.76, i64 0, i64 0), i8* noundef %file, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0)) #5
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %lor.lhs.false5, label %land.lhs.true8

lor.lhs.false5:                                   ; preds = %land.lhs.true
  %call6 = tail call i32 @test_str_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 256, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.75, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.77, i64 0, i64 0), i8* noundef %file, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.78, i64 0, i64 0)) #5
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %land.end, label %land.lhs.true8

land.lhs.true8:                                   ; preds = %lor.lhs.false5, %land.lhs.true
  %0 = load i32, i32* @test_log_line, align 4, !tbaa !25
  %call9 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 257, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.79, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.80, i64 0, i64 0), i32 noundef %line, i32 noundef %0) #5
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %lor.lhs.false11, label %land.lhs.true14

lor.lhs.false11:                                  ; preds = %land.lhs.true8
  %call12 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 257, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.79, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.58, i64 0, i64 0), i32 noundef %line, i32 noundef 0) #5
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %land.end, label %land.lhs.true14

land.lhs.true14:                                  ; preds = %lor.lhs.false11, %land.lhs.true8
  %call15 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 258, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.81, i64 0, i64 0), i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.82, i64 0, i64 0), i32 noundef %level, i32 noundef 6) #5
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %lor.lhs.false17, label %land.rhs

lor.lhs.false17:                                  ; preds = %land.lhs.true14
  %call18 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 258, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.81, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.83, i64 0, i64 0), i32 noundef %level, i32 noundef -1) #5
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %lor.lhs.false17, %land.lhs.true14
  %call20 = tail call i32 @test_str_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 259, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.84, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.85, i64 0, i64 0), i8* noundef %msg, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.86, i64 0, i64 0)) #5
  %tobool21 = icmp ne i32 %call20, 0
  %phi.cast = zext i1 %tobool21 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.lhs.false17, %lor.lhs.false11, %lor.lhs.false5, %lor.lhs.false
  %1 = phi i32 [ 0, %lor.lhs.false17 ], [ 0, %lor.lhs.false11 ], [ 0, %lor.lhs.false5 ], [ 0, %lor.lhs.false ], [ %phi.cast, %land.rhs ]
  store i32 %1, i32* @test_log_cb_res, align 4, !tbaa !25
  ret i32 1
}

declare dso_local void @ERR_new() local_unnamed_addr #3

declare dso_local void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #3

declare dso_local void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #3

declare dso_local i32 @test_str_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i8* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @execute_cmp_ctx_log_cb_test(%struct.test_fixture* nocapture noundef readonly %fixture) unnamed_addr #1 {
entry:
  %ctx1 = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %fixture, i64 0, i32 1
  %0 = load %struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_ctx_st** %ctx1, align 8, !tbaa !7
  %call = tail call i32 @OSSL_CMP_log_open() #5
  %call2 = tail call i32 @OSSL_CMP_log_open() #5
  %call3 = tail call i32 @OSSL_CMP_CTX_set_log_cb(%struct.ossl_cmp_ctx_st* noundef %0, i32 (i8*, i8*, i32, i32, i8*)* noundef null) #5
  %cmp = icmp ne i32 %call3, 0
  %conv = zext i1 %cmp to i32
  %call4 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 273, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.87, i64 0, i64 0), i32 noundef %conv) #5
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end, label %if.else

if.else:                                          ; preds = %entry
  %call5 = tail call i32 (i32, %struct.ossl_cmp_ctx_st*, i8*, i8*, i32, i8*, i8*, ...) @ossl_cmp_print_log(i32 noundef 3, %struct.ossl_cmp_ctx_st* noundef %0, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.72, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 276, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.88, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.89, i64 0, i64 0), i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.90, i64 0, i64 0)) #5
  %call6 = tail call i32 (i32, %struct.ossl_cmp_ctx_st*, i8*, i8*, i32, i8*, i8*, ...) @ossl_cmp_print_log(i32 noundef 4, %struct.ossl_cmp_ctx_st* noundef %0, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.72, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 277, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.91, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.89, i64 0, i64 0), i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.92, i64 0, i64 0)) #5
  %call7 = tail call i32 (i32, %struct.ossl_cmp_ctx_st*, i8*, i8*, i32, i8*, i8*, ...) @ossl_cmp_print_log(i32 noundef 7, %struct.ossl_cmp_ctx_st* noundef %0, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.72, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 278, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.93, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.89, i64 0, i64 0), i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.94, i64 0, i64 0)) #5
  %call8 = tail call i32 @OSSL_CMP_CTX_set_option(%struct.ossl_cmp_ctx_st* noundef %0, i32 noundef 0, i32 noundef 7) #5
  %cmp9 = icmp ne i32 %call8, 0
  %conv10 = zext i1 %cmp9 to i32
  %call11 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 279, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.95, i64 0, i64 0), i32 noundef %conv10) #5
  %call12 = tail call i32 (i32, %struct.ossl_cmp_ctx_st*, i8*, i8*, i32, i8*, i8*, ...) @ossl_cmp_print_log(i32 noundef 7, %struct.ossl_cmp_ctx_st* noundef %0, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.72, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 280, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.93, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.89, i64 0, i64 0), i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.96, i64 0, i64 0)) #5
  %call13 = tail call i32 @OSSL_CMP_CTX_set_option(%struct.ossl_cmp_ctx_st* noundef %0, i32 noundef 0, i32 noundef 6) #5
  %cmp14 = icmp ne i32 %call13, 0
  %conv15 = zext i1 %cmp14 to i32
  %call16 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 281, i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.97, i64 0, i64 0), i32 noundef %conv15) #5
  br label %if.end

if.end:                                           ; preds = %entry, %if.else
  %res.0 = phi i32 [ 1, %if.else ], [ 0, %entry ]
  %call17 = tail call i32 @OSSL_CMP_CTX_set_log_cb(%struct.ossl_cmp_ctx_st* noundef %0, i32 (i8*, i8*, i32, i32, i8*)* noundef nonnull @test_log_cb) #5
  %cmp18 = icmp ne i32 %call17, 0
  %conv19 = zext i1 %cmp18 to i32
  %call20 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 283, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.98, i64 0, i64 0), i32 noundef %conv19) #5
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end35, label %if.else23

if.else23:                                        ; preds = %if.end
  store i32 287, i32* @test_log_line, align 4, !tbaa !25
  %call24 = tail call i32 (i32, %struct.ossl_cmp_ctx_st*, i8*, i8*, i32, i8*, i8*, ...) @ossl_cmp_print_log(i32 noundef 6, %struct.ossl_cmp_ctx_st* noundef %0, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.72, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 287, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.99, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.100, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.101, i64 0, i64 0), i32 noundef 107) #5
  %1 = load i32, i32* @test_log_cb_res, align 4, !tbaa !25
  %call25 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 288, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.102, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.103, i64 0, i64 0), i32 noundef %1, i32 noundef 1) #5
  %tobool26.not = icmp eq i32 %call25, 0
  %call29 = tail call i32 @OSSL_CMP_CTX_set_option(%struct.ossl_cmp_ctx_st* noundef %0, i32 noundef 0, i32 noundef 3) #5
  store i32 -1, i32* @test_log_cb_res, align 4, !tbaa !25
  store i32 293, i32* @test_log_line, align 4, !tbaa !25
  %call30 = tail call i32 (i32, %struct.ossl_cmp_ctx_st*, i8*, i8*, i32, i8*, i8*, ...) @ossl_cmp_print_log(i32 noundef 6, %struct.ossl_cmp_ctx_st* noundef %0, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.72, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 293, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.99, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.100, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.101, i64 0, i64 0), i32 noundef 107) #5
  %2 = load i32, i32* @test_log_cb_res, align 4, !tbaa !25
  %call31 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 294, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.102, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.83, i64 0, i64 0), i32 noundef %2, i32 noundef -1) #5
  %tobool32.not = icmp eq i32 %call31, 0
  %3 = select i1 %tobool32.not, i1 true, i1 %tobool26.not
  %spec.select48 = select i1 %3, i32 0, i32 %res.0
  br label %if.end35

if.end35:                                         ; preds = %if.else23, %if.end
  %res.2 = phi i32 [ 0, %if.end ], [ %spec.select48, %if.else23 ]
  tail call void @OSSL_CMP_log_close() #5
  tail call void @OSSL_CMP_log_close() #5
  ret i32 %res.2
}

declare dso_local i32 @OSSL_CMP_log_open() local_unnamed_addr #3

declare dso_local i32 @ossl_cmp_print_log(i32 noundef, %struct.ossl_cmp_ctx_st* noundef, i8* noundef, i8* noundef, i32 noundef, i8* noundef, i8* noundef, ...) local_unnamed_addr #3

declare dso_local void @OSSL_CMP_log_close() local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @execute_CTX_print_errors_test(%struct.test_fixture* nocapture noundef readonly %fixture) unnamed_addr #1 {
entry:
  %ctx1 = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %fixture, i64 0, i32 1
  %0 = load %struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_ctx_st** %ctx1, align 8, !tbaa !7
  %call = tail call i32 @OSSL_CMP_CTX_set_log_cb(%struct.ossl_cmp_ctx_st* noundef %0, i32 (i8*, i8*, i32, i32, i8*)* noundef null) #5
  %cmp = icmp ne i32 %call, 0
  %conv = zext i1 %cmp to i32
  %call2 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 145, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.87, i64 0, i64 0), i32 noundef %conv) #5
  %log_cb = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %0, i64 0, i32 2
  %1 = load i32 (i8*, i8*, i32, i32, i8*)*, i32 (i8*, i8*, i32, i32, i8*)** %log_cb, align 8, !tbaa !24
  %cmp3 = icmp eq i32 (i8*, i8*, i32, i32, i8*)* %1, null
  %conv4 = zext i1 %cmp3 to i32
  %call7 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 147, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.104, i64 0, i64 0), i32 noundef %conv4) #5
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 151, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.execute_CTX_print_errors_test, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 102, i8* noundef null) #5
  tail call void @OSSL_CMP_CTX_print_errors(%struct.ossl_cmp_ctx_st* noundef %0) #5
  %call11 = tail call i32 @OSSL_CMP_CTX_set_log_cb(%struct.ossl_cmp_ctx_st* noundef %0, i32 (i8*, i8*, i32, i32, i8*)* noundef nonnull @msg_total_size_log_cb) #5
  %cmp12 = icmp ne i32 %call11, 0
  %conv13 = zext i1 %cmp12 to i32
  %call14 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 156, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.105, i64 0, i64 0), i32 noundef %conv13) #5
  %2 = load i32 (i8*, i8*, i32, i32, i8*)*, i32 (i8*, i8*, i32, i32, i8*)** %log_cb, align 8, !tbaa !24
  %cmp19 = icmp eq i32 (i8*, i8*, i32, i32, i8*)* %2, @msg_total_size_log_cb
  %conv20 = zext i1 %cmp19 to i32
  %call23 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 158, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.106, i64 0, i64 0), i32 noundef %conv20) #5
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end68, label %if.else

if.else:                                          ; preds = %entry
  %tobool15.not = icmp ne i32 %call14, 0
  %tobool.not = icmp ne i32 %call2, 0
  %tobool8.not = icmp ne i32 %call7, 0
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 161, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.execute_CTX_print_errors_test, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 100, i8* noundef null) #5
  %call26 = tail call i64 @strlen(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.107, i64 0, i64 0)) #7
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 163, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.execute_CTX_print_errors_test, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 103, i8* noundef null) #5
  %call28 = tail call i64 @strlen(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.108, i64 0, i64 0)) #7
  %add = add i64 %call28, %call26
  tail call void @ERR_add_error_txt(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.109, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.110, i64 0, i64 0)) #5
  %call31 = tail call i64 @strlen(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.111, i64 0, i64 0)) #7
  %add33 = add i64 %add, %call31
  tail call void @ERR_add_error_txt(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.109, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.112, i64 0, i64 0)) #5
  %call35 = tail call i64 @strlen(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.113, i64 0, i64 0)) #7
  %add37 = add i64 %add33, %call35
  tail call void @ERR_add_error_txt(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.114, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.115, i64 0, i64 0)) #5
  %call39 = tail call i64 @strlen(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.116, i64 0, i64 0)) #7
  %add41 = add i64 %add37, %call39
  %conv42 = trunc i64 %add41 to i32
  tail call void @OSSL_CMP_CTX_print_errors(%struct.ossl_cmp_ctx_st* noundef nonnull %0) #5
  %3 = load i32, i32* @msg_total_size, align 4, !tbaa !25
  %call43 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 173, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.117, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.118, i64 0, i64 0), i32 noundef %3, i32 noundef %conv42) #5
  %tobool44.not = icmp ne i32 %call43, 0
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 176, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.execute_CTX_print_errors_test, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 100, i8* noundef null) #5
  %call47 = tail call i64 @strlen(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.107, i64 0, i64 0)) #7
  %call48 = tail call i64 @strlen(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.119, i64 0, i64 0)) #7
  %add49 = add i64 %call48, %call47
  %expected_size.094 = trunc i64 %add49 to i32
  %cmp5195 = icmp slt i32 %expected_size.094, 4096
  br i1 %cmp5195, label %while.body, label %while.end

while.body:                                       ; preds = %if.else, %while.body
  %expected_size.0.in96 = phi i64 [ %add57, %while.body ], [ %add49, %if.else ]
  tail call void @ERR_add_error_txt(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.120, i64 0, i64 0), i8* noundef getelementptr inbounds ([510 x i8], [510 x i8]* @.str.121, i64 0, i64 0)) #5
  %call53 = tail call i64 @strlen(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.120, i64 0, i64 0)) #7
  %call54 = tail call i64 @strlen(i8* noundef getelementptr inbounds ([510 x i8], [510 x i8]* @.str.121, i64 0, i64 0)) #7
  %sext = shl i64 %expected_size.0.in96, 32
  %conv56 = ashr exact i64 %sext, 32
  %add55 = add i64 %call53, %conv56
  %add57 = add i64 %add55, %call54
  %expected_size.0 = trunc i64 %add57 to i32
  %cmp51 = icmp slt i32 %expected_size.0, 4096
  br i1 %cmp51, label %while.body, label %while.end, !llvm.loop !26

while.end:                                        ; preds = %while.body, %if.else
  %expected_size.0.in.lcssa = phi i64 [ %add49, %if.else ], [ %add57, %while.body ]
  %call60 = tail call i64 @strlen(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.120, i64 0, i64 0)) #7
  %mul.neg = mul i64 %call60, -2
  %sub = add i64 %expected_size.0.in.lcssa, %add49
  %add62 = add i64 %sub, %mul.neg
  %conv63 = trunc i64 %add62 to i32
  store i32 0, i32* @msg_total_size, align 4, !tbaa !25
  tail call void @OSSL_CMP_CTX_print_errors(%struct.ossl_cmp_ctx_st* noundef %0) #5
  %4 = load i32, i32* @msg_total_size, align 4, !tbaa !25
  %call64 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 186, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.117, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.118, i64 0, i64 0), i32 noundef %4, i32 noundef %conv63) #5
  %tobool65.not = icmp ne i32 %call64, 0
  %5 = select i1 %tobool65.not, i1 %tobool44.not, i1 false
  %6 = select i1 %5, i1 %tobool15.not, i1 false
  %7 = select i1 %6, i1 %tobool8.not, i1 false
  %narrow93 = select i1 %7, i1 %tobool.not, i1 false
  %spec.select91 = zext i1 %narrow93 to i32
  br label %if.end68

if.end68:                                         ; preds = %while.end, %entry
  %res.4 = phi i32 [ 0, %entry ], [ %spec.select91, %while.end ]
  ret i32 %res.4
}

declare dso_local void @OSSL_CMP_CTX_print_errors(%struct.ossl_cmp_ctx_st* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal i32 @msg_total_size_log_cb(i8* nocapture noundef readnone %func, i8* nocapture noundef readnone %file, i32 noundef %line, i32 noundef %level, i8* noundef %msg) #1 {
entry:
  %call = tail call i64 @strlen(i8* noundef %msg) #7
  %0 = load i32, i32* @msg_total_size, align 4, !tbaa !25
  %1 = trunc i64 %call to i32
  %conv1 = add i32 %0, %1
  store i32 %conv1, i32* @msg_total_size, align 4, !tbaa !25
  %call2 = tail call i64 @strlen(i8* noundef %msg) #7
  tail call void (i8*, ...) @test_note(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.122, i64 0, i64 0), i32 noundef %conv1, i64 noundef %call2, i8* noundef %msg) #5
  ret i32 1
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) local_unnamed_addr #4

declare dso_local void @ERR_add_error_txt(i8* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local void @test_note(i8* noundef, ...) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @execute_CTX_set1_get0_serverPath(%struct.test_fixture* nocapture noundef readonly %fixture) unnamed_addr #1 {
entry:
  %ctx1 = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %fixture, i64 0, i32 1
  %0 = load %struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_ctx_st** %ctx1, align 8, !tbaa !7
  %call = tail call fastcc i8* @char_new() #6
  %call2 = tail call fastcc i8* @char_new() #6
  %call3 = tail call i64 @ERR_peek_error() #5
  %conv = trunc i64 %call3 to i32
  %call4 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 731, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.57, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.58, i64 0, i64 0), i32 noundef %conv, i32 noundef 0) #5
  %call5 = tail call i32 @OSSL_CMP_CTX_set1_serverPath(%struct.ossl_cmp_ctx_st* noundef null, i8* noundef %call) #5
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %lor.lhs.false, label %if.then9

lor.lhs.false:                                    ; preds = %entry
  %tobool.not = icmp ne i32 %call4, 0
  %spec.select = zext i1 %tobool.not to i32
  %call7 = tail call i64 @ERR_peek_error() #5
  %cmp = icmp eq i64 %call7, 0
  br i1 %cmp, label %if.then9, label %if.end10

if.then9:                                         ; preds = %lor.lhs.false, %entry
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 731, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.59, i64 0, i64 0)) #5
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %lor.lhs.false
  %res.1 = phi i32 [ 0, %if.then9 ], [ %spec.select, %lor.lhs.false ]
  tail call void @ERR_clear_error() #5
  %call11 = tail call fastcc i8* @OSSL_CMP_CTX_get0_serverPath(%struct.ossl_cmp_ctx_st* noundef null) #6
  %cmp12.not = icmp eq i8* %call11, null
  br i1 %cmp12.not, label %lor.lhs.false14, label %if.then18

lor.lhs.false14:                                  ; preds = %if.end10
  %call15 = tail call i64 @ERR_peek_error() #5
  %cmp16 = icmp eq i64 %call15, 0
  br i1 %cmp16, label %if.then18, label %if.end19

if.then18:                                        ; preds = %lor.lhs.false14, %if.end10
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 731, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.60, i64 0, i64 0)) #5
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %lor.lhs.false14
  %res.2 = phi i32 [ 0, %if.then18 ], [ %res.1, %lor.lhs.false14 ]
  tail call void @ERR_clear_error() #5
  %call20 = tail call fastcc i8* @OSSL_CMP_CTX_get0_serverPath(%struct.ossl_cmp_ctx_st* noundef %0) #6
  %cmp21 = icmp eq i8* %call20, null
  br i1 %cmp21, label %if.end24, label %if.then23

if.then23:                                        ; preds = %if.end19
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 731, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.61, i64 0, i64 0)) #5
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %if.end19
  %res.3 = phi i32 [ %res.2, %if.end19 ], [ 0, %if.then23 ]
  %call25 = tail call i32 @OSSL_CMP_CTX_set1_serverPath(%struct.ossl_cmp_ctx_st* noundef %0, i8* noundef %call) #5
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.end24
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 731, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.62, i64 0, i64 0)) #5
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %if.end24
  %res.4 = phi i32 [ %res.3, %if.end24 ], [ 0, %if.then27 ]
  %call29 = tail call fastcc i8* @OSSL_CMP_CTX_get0_serverPath(%struct.ossl_cmp_ctx_st* noundef %0) #6
  %cmp30 = icmp eq i8* %call29, %call
  br i1 %cmp30, label %if.then32, label %if.end33

if.then32:                                        ; preds = %if.end28
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 731, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.123, i64 0, i64 0)) #5
  br label %if.end33

if.end33:                                         ; preds = %if.then32, %if.end28
  %res.5 = phi i32 [ 0, %if.then32 ], [ %res.4, %if.end28 ]
  %cmp34 = icmp eq i8* %call29, null
  br i1 %cmp34, label %if.then36, label %if.end37

if.then36:                                        ; preds = %if.end33
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 731, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.124, i64 0, i64 0)) #5
  br label %if.end37

if.end37:                                         ; preds = %if.then36, %if.end33
  %res.6 = phi i32 [ 0, %if.then36 ], [ %res.5, %if.end33 ]
  %call38 = tail call i32 @OSSL_CMP_CTX_set1_serverPath(%struct.ossl_cmp_ctx_st* noundef %0, i8* noundef %call2) #5
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.then40, label %if.end41

if.then40:                                        ; preds = %if.end37
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 731, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.64, i64 0, i64 0)) #5
  br label %if.end41

if.end41:                                         ; preds = %if.then40, %if.end37
  %res.7 = phi i32 [ %res.6, %if.end37 ], [ 0, %if.then40 ]
  %call42 = tail call fastcc i8* @OSSL_CMP_CTX_get0_serverPath(%struct.ossl_cmp_ctx_st* noundef %0) #6
  %cmp43 = icmp eq i8* %call42, null
  br i1 %cmp43, label %if.then45, label %if.end46

if.then45:                                        ; preds = %if.end41
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 731, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.65, i64 0, i64 0)) #5
  br label %if.end46

if.end46:                                         ; preds = %if.then45, %if.end41
  %res.8 = phi i32 [ 0, %if.then45 ], [ %res.7, %if.end41 ]
  %cmp47 = icmp eq i8* %call42, %call2
  br i1 %cmp47, label %if.then49, label %if.end50

if.then49:                                        ; preds = %if.end46
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 731, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.125, i64 0, i64 0)) #5
  br label %if.end50

if.end50:                                         ; preds = %if.then49, %if.end46
  %res.9 = phi i32 [ 0, %if.then49 ], [ %res.8, %if.end46 ]
  %cmp51 = icmp eq i8* %call2, %call
  br i1 %cmp51, label %if.then53, label %if.end54

if.then53:                                        ; preds = %if.end50
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 731, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.126, i64 0, i64 0)) #5
  br label %if.end54

if.end54:                                         ; preds = %if.then53, %if.end50
  %res.10 = phi i32 [ 0, %if.then53 ], [ %res.9, %if.end50 ]
  %call55 = tail call fastcc i8* @OSSL_CMP_CTX_get0_serverPath(%struct.ossl_cmp_ctx_st* noundef %0) #6
  %cmp56 = icmp eq i8* %call55, null
  br i1 %cmp56, label %if.then58, label %if.end59

if.then58:                                        ; preds = %if.end54
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 731, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.67, i64 0, i64 0)) #5
  br label %if.end59

if.end59:                                         ; preds = %if.then58, %if.end54
  %res.11 = phi i32 [ 0, %if.then58 ], [ %res.10, %if.end54 ]
  %cmp60.not = icmp eq i8* %call55, %call42
  br i1 %cmp60.not, label %if.end63, label %if.then62

if.then62:                                        ; preds = %if.end59
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 731, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.68, i64 0, i64 0)) #5
  br label %if.end63

if.end63:                                         ; preds = %if.then62, %if.end59
  %res.12 = phi i32 [ 0, %if.then62 ], [ %res.11, %if.end59 ]
  %call64 = tail call i64 @ERR_peek_error() #5
  %conv65 = trunc i64 %call64 to i32
  %call66 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 731, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.57, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.58, i64 0, i64 0), i32 noundef %conv65, i32 noundef 0) #5
  %tobool67.not = icmp ne i32 %call66, 0
  tail call fastcc void @char_free(i8* noundef %call) #6
  tail call fastcc void @char_free(i8* noundef %call2) #6
  %cmp70108 = icmp ne i32 %res.12, 0
  %cmp70 = select i1 %tobool67.not, i1 %cmp70108, i1 false
  %conv71 = zext i1 %cmp70 to i32
  %call72 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 731, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.69, i64 0, i64 0), i32 noundef %conv71) #5
  ret i32 %call72
}

declare dso_local i32 @OSSL_CMP_CTX_set1_serverPath(%struct.ossl_cmp_ctx_st* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc i8* @OSSL_CMP_CTX_get0_serverPath(%struct.ossl_cmp_ctx_st* noundef readonly %ctx) unnamed_addr #1 {
entry:
  %cmp = icmp eq %struct.ossl_cmp_ctx_st* %ctx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 731, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.OSSL_CMP_CTX_get0_serverPath, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 103, i8* noundef null) #5
  br label %return

if.end:                                           ; preds = %entry
  %serverPath = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 7
  %0 = load i8*, i8** %serverPath, align 8, !tbaa !28
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i8* [ null, %if.then ], [ %0, %if.end ]
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i8* @char_new() unnamed_addr #1 {
entry:
  %call = tail call i8* @CRYPTO_strdup(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.127, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 478) #5
  ret i8* %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @char_free(i8* noundef %val) unnamed_addr #1 {
entry:
  tail call void @CRYPTO_free(i8* noundef %val, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 483) #5
  ret void
}

declare dso_local i8* @CRYPTO_strdup(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @execute_CTX_set1_get0_server(%struct.test_fixture* nocapture noundef readonly %fixture) unnamed_addr #1 {
entry:
  %ctx1 = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %fixture, i64 0, i32 1
  %0 = load %struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_ctx_st** %ctx1, align 8, !tbaa !7
  %call = tail call fastcc i8* @char_new() #6
  %call2 = tail call fastcc i8* @char_new() #6
  %call3 = tail call i64 @ERR_peek_error() #5
  %conv = trunc i64 %call3 to i32
  %call4 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 732, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.57, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.58, i64 0, i64 0), i32 noundef %conv, i32 noundef 0) #5
  %call5 = tail call i32 @OSSL_CMP_CTX_set1_server(%struct.ossl_cmp_ctx_st* noundef null, i8* noundef %call) #5
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %lor.lhs.false, label %if.then9

lor.lhs.false:                                    ; preds = %entry
  %tobool.not = icmp ne i32 %call4, 0
  %spec.select = zext i1 %tobool.not to i32
  %call7 = tail call i64 @ERR_peek_error() #5
  %cmp = icmp eq i64 %call7, 0
  br i1 %cmp, label %if.then9, label %if.end10

if.then9:                                         ; preds = %lor.lhs.false, %entry
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 732, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.59, i64 0, i64 0)) #5
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %lor.lhs.false
  %res.1 = phi i32 [ 0, %if.then9 ], [ %spec.select, %lor.lhs.false ]
  tail call void @ERR_clear_error() #5
  %call11 = tail call fastcc i8* @OSSL_CMP_CTX_get0_server(%struct.ossl_cmp_ctx_st* noundef null) #6
  %cmp12.not = icmp eq i8* %call11, null
  br i1 %cmp12.not, label %lor.lhs.false14, label %if.then18

lor.lhs.false14:                                  ; preds = %if.end10
  %call15 = tail call i64 @ERR_peek_error() #5
  %cmp16 = icmp eq i64 %call15, 0
  br i1 %cmp16, label %if.then18, label %if.end19

if.then18:                                        ; preds = %lor.lhs.false14, %if.end10
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 732, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.60, i64 0, i64 0)) #5
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %lor.lhs.false14
  %res.2 = phi i32 [ 0, %if.then18 ], [ %res.1, %lor.lhs.false14 ]
  tail call void @ERR_clear_error() #5
  %call20 = tail call fastcc i8* @OSSL_CMP_CTX_get0_server(%struct.ossl_cmp_ctx_st* noundef %0) #6
  %cmp21 = icmp eq i8* %call20, null
  br i1 %cmp21, label %if.end24, label %if.then23

if.then23:                                        ; preds = %if.end19
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 732, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.61, i64 0, i64 0)) #5
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %if.end19
  %res.3 = phi i32 [ %res.2, %if.end19 ], [ 0, %if.then23 ]
  %call25 = tail call i32 @OSSL_CMP_CTX_set1_server(%struct.ossl_cmp_ctx_st* noundef %0, i8* noundef %call) #5
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.end24
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 732, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.62, i64 0, i64 0)) #5
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %if.end24
  %res.4 = phi i32 [ %res.3, %if.end24 ], [ 0, %if.then27 ]
  %call29 = tail call fastcc i8* @OSSL_CMP_CTX_get0_server(%struct.ossl_cmp_ctx_st* noundef %0) #6
  %cmp30 = icmp eq i8* %call29, %call
  br i1 %cmp30, label %if.then32, label %if.end33

if.then32:                                        ; preds = %if.end28
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 732, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.123, i64 0, i64 0)) #5
  br label %if.end33

if.end33:                                         ; preds = %if.then32, %if.end28
  %res.5 = phi i32 [ 0, %if.then32 ], [ %res.4, %if.end28 ]
  %cmp34 = icmp eq i8* %call29, null
  br i1 %cmp34, label %if.then36, label %if.end37

if.then36:                                        ; preds = %if.end33
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 732, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.124, i64 0, i64 0)) #5
  br label %if.end37

if.end37:                                         ; preds = %if.then36, %if.end33
  %res.6 = phi i32 [ 0, %if.then36 ], [ %res.5, %if.end33 ]
  %call38 = tail call i32 @OSSL_CMP_CTX_set1_server(%struct.ossl_cmp_ctx_st* noundef %0, i8* noundef %call2) #5
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.then40, label %if.end41

if.then40:                                        ; preds = %if.end37
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 732, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.64, i64 0, i64 0)) #5
  br label %if.end41

if.end41:                                         ; preds = %if.then40, %if.end37
  %res.7 = phi i32 [ %res.6, %if.end37 ], [ 0, %if.then40 ]
  %call42 = tail call fastcc i8* @OSSL_CMP_CTX_get0_server(%struct.ossl_cmp_ctx_st* noundef %0) #6
  %cmp43 = icmp eq i8* %call42, null
  br i1 %cmp43, label %if.then45, label %if.end46

if.then45:                                        ; preds = %if.end41
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 732, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.65, i64 0, i64 0)) #5
  br label %if.end46

if.end46:                                         ; preds = %if.then45, %if.end41
  %res.8 = phi i32 [ 0, %if.then45 ], [ %res.7, %if.end41 ]
  %cmp47 = icmp eq i8* %call42, %call2
  br i1 %cmp47, label %if.then49, label %if.end50

if.then49:                                        ; preds = %if.end46
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 732, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.125, i64 0, i64 0)) #5
  br label %if.end50

if.end50:                                         ; preds = %if.then49, %if.end46
  %res.9 = phi i32 [ 0, %if.then49 ], [ %res.8, %if.end46 ]
  %cmp51 = icmp eq i8* %call2, %call
  br i1 %cmp51, label %if.then53, label %if.end54

if.then53:                                        ; preds = %if.end50
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 732, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.126, i64 0, i64 0)) #5
  br label %if.end54

if.end54:                                         ; preds = %if.then53, %if.end50
  %res.10 = phi i32 [ 0, %if.then53 ], [ %res.9, %if.end50 ]
  %call55 = tail call fastcc i8* @OSSL_CMP_CTX_get0_server(%struct.ossl_cmp_ctx_st* noundef %0) #6
  %cmp56 = icmp eq i8* %call55, null
  br i1 %cmp56, label %if.then58, label %if.end59

if.then58:                                        ; preds = %if.end54
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 732, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.67, i64 0, i64 0)) #5
  br label %if.end59

if.end59:                                         ; preds = %if.then58, %if.end54
  %res.11 = phi i32 [ 0, %if.then58 ], [ %res.10, %if.end54 ]
  %cmp60.not = icmp eq i8* %call55, %call42
  br i1 %cmp60.not, label %if.end63, label %if.then62

if.then62:                                        ; preds = %if.end59
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 732, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.68, i64 0, i64 0)) #5
  br label %if.end63

if.end63:                                         ; preds = %if.then62, %if.end59
  %res.12 = phi i32 [ 0, %if.then62 ], [ %res.11, %if.end59 ]
  %call64 = tail call i64 @ERR_peek_error() #5
  %conv65 = trunc i64 %call64 to i32
  %call66 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 732, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.57, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.58, i64 0, i64 0), i32 noundef %conv65, i32 noundef 0) #5
  %tobool67.not = icmp ne i32 %call66, 0
  tail call fastcc void @char_free(i8* noundef %call) #6
  tail call fastcc void @char_free(i8* noundef %call2) #6
  %cmp70108 = icmp ne i32 %res.12, 0
  %cmp70 = select i1 %tobool67.not, i1 %cmp70108, i1 false
  %conv71 = zext i1 %cmp70 to i32
  %call72 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 732, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.69, i64 0, i64 0), i32 noundef %conv71) #5
  ret i32 %call72
}

declare dso_local i32 @OSSL_CMP_CTX_set1_server(%struct.ossl_cmp_ctx_st* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc i8* @OSSL_CMP_CTX_get0_server(%struct.ossl_cmp_ctx_st* noundef readonly %ctx) unnamed_addr #1 {
entry:
  %cmp = icmp eq %struct.ossl_cmp_ctx_st* %ctx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 732, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.OSSL_CMP_CTX_get0_server, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 103, i8* noundef null) #5
  br label %return

if.end:                                           ; preds = %entry
  %server = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 8
  %0 = load i8*, i8** %server, align 8, !tbaa !29
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i8* [ null, %if.then ], [ %0, %if.end ]
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @execute_CTX_set_get_serverPort(%struct.test_fixture* nocapture noundef readonly %fixture) unnamed_addr #1 {
entry:
  %ctx1 = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %fixture, i64 0, i32 1
  %0 = load %struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_ctx_st** %ctx1, align 8, !tbaa !7
  %call = tail call i64 @ERR_peek_error() #5
  %conv = trunc i64 %call to i32
  %call2 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 733, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.57, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.58, i64 0, i64 0), i32 noundef %conv, i32 noundef 0) #5
  %call3 = tail call i32 @OSSL_CMP_CTX_set_serverPort(%struct.ossl_cmp_ctx_st* noundef null, i32 noundef 1) #5
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %lor.lhs.false, label %if.then7

lor.lhs.false:                                    ; preds = %entry
  %tobool.not = icmp ne i32 %call2, 0
  %spec.select = zext i1 %tobool.not to i32
  %call5 = tail call i64 @ERR_peek_error() #5
  %cmp = icmp eq i64 %call5, 0
  br i1 %cmp, label %if.then7, label %if.end8

if.then7:                                         ; preds = %lor.lhs.false, %entry
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 733, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.59, i64 0, i64 0)) #5
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %lor.lhs.false
  %res.1 = phi i32 [ 0, %if.then7 ], [ %spec.select, %lor.lhs.false ]
  tail call void @ERR_clear_error() #5
  %call9 = tail call fastcc i32 @OSSL_CMP_CTX_get_serverPort(%struct.ossl_cmp_ctx_st* noundef null) #6
  %cmp10.not = icmp eq i32 %call9, -1
  br i1 %cmp10.not, label %lor.lhs.false12, label %if.then16

lor.lhs.false12:                                  ; preds = %if.end8
  %call13 = tail call i64 @ERR_peek_error() #5
  %cmp14 = icmp eq i64 %call13, 0
  br i1 %cmp14, label %if.then16, label %if.end17

if.then16:                                        ; preds = %lor.lhs.false12, %if.end8
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 733, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.60, i64 0, i64 0)) #5
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %lor.lhs.false12
  %res.2 = phi i32 [ 0, %if.then16 ], [ %res.1, %lor.lhs.false12 ]
  tail call void @ERR_clear_error() #5
  %call18 = tail call fastcc i32 @OSSL_CMP_CTX_get_serverPort(%struct.ossl_cmp_ctx_st* noundef %0) #6
  %cmp19 = icmp eq i32 %call18, 0
  br i1 %cmp19, label %if.end22, label %if.then21

if.then21:                                        ; preds = %if.end17
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 733, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.61, i64 0, i64 0)) #5
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %if.end17
  %res.3 = phi i32 [ %res.2, %if.end17 ], [ 0, %if.then21 ]
  %call23 = tail call i32 @OSSL_CMP_CTX_set_serverPort(%struct.ossl_cmp_ctx_st* noundef %0, i32 noundef 1) #5
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.then25, label %if.end26

if.then25:                                        ; preds = %if.end22
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 733, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.62, i64 0, i64 0)) #5
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %if.end22
  %res.4 = phi i32 [ %res.3, %if.end22 ], [ 0, %if.then25 ]
  %call27 = tail call fastcc i32 @OSSL_CMP_CTX_get_serverPort(%struct.ossl_cmp_ctx_st* noundef %0) #6
  %cmp28.not = icmp eq i32 %call27, 1
  br i1 %cmp28.not, label %if.end31, label %if.then30

if.then30:                                        ; preds = %if.end26
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 733, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.63, i64 0, i64 0)) #5
  br label %if.end31

if.end31:                                         ; preds = %if.then30, %if.end26
  %res.5 = phi i32 [ 0, %if.then30 ], [ %res.4, %if.end26 ]
  %call32 = tail call i32 @OSSL_CMP_CTX_set_serverPort(%struct.ossl_cmp_ctx_st* noundef %0, i32 noundef 1) #5
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.then34, label %if.end35

if.then34:                                        ; preds = %if.end31
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 733, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.64, i64 0, i64 0)) #5
  br label %if.end35

if.end35:                                         ; preds = %if.then34, %if.end31
  %res.6 = phi i32 [ %res.5, %if.end31 ], [ 0, %if.then34 ]
  %call36 = tail call fastcc i32 @OSSL_CMP_CTX_get_serverPort(%struct.ossl_cmp_ctx_st* noundef %0) #6
  switch i32 %call36, label %if.then43 [
    i32 0, label %if.end40.thread
    i32 1, label %if.end44
  ]

if.end40.thread:                                  ; preds = %if.end35
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 733, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.65, i64 0, i64 0)) #5
  br label %if.then43

if.then43:                                        ; preds = %if.end35, %if.end40.thread
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 733, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.66, i64 0, i64 0)) #5
  br label %if.end44

if.end44:                                         ; preds = %if.end35, %if.then43
  %res.8 = phi i32 [ 0, %if.then43 ], [ %res.6, %if.end35 ]
  %call45 = tail call fastcc i32 @OSSL_CMP_CTX_get_serverPort(%struct.ossl_cmp_ctx_st* noundef %0) #6
  %cmp46 = icmp eq i32 %call45, 0
  br i1 %cmp46, label %if.then48, label %if.end49

if.then48:                                        ; preds = %if.end44
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 733, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.67, i64 0, i64 0)) #5
  br label %if.end49

if.end49:                                         ; preds = %if.then48, %if.end44
  %res.9 = phi i32 [ 0, %if.then48 ], [ %res.8, %if.end44 ]
  %cmp50.not = icmp eq i32 %call45, %call36
  br i1 %cmp50.not, label %if.end53, label %if.then52

if.then52:                                        ; preds = %if.end49
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 733, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.68, i64 0, i64 0)) #5
  br label %if.end53

if.end53:                                         ; preds = %if.then52, %if.end49
  %res.10 = phi i32 [ 0, %if.then52 ], [ %res.9, %if.end49 ]
  %call54 = tail call i64 @ERR_peek_error() #5
  %conv55 = trunc i64 %call54 to i32
  %call56 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 733, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.57, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.58, i64 0, i64 0), i32 noundef %conv55, i32 noundef 0) #5
  %tobool57.not = icmp ne i32 %call56, 0
  %cmp6097 = icmp ne i32 %res.10, 0
  %cmp60 = select i1 %tobool57.not, i1 %cmp6097, i1 false
  %conv61 = zext i1 %cmp60 to i32
  %call62 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 733, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.69, i64 0, i64 0), i32 noundef %conv61) #5
  ret i32 %call62
}

declare dso_local i32 @OSSL_CMP_CTX_set_serverPort(%struct.ossl_cmp_ctx_st* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @OSSL_CMP_CTX_get_serverPort(%struct.ossl_cmp_ctx_st* noundef readonly %ctx) unnamed_addr #1 {
entry:
  %cmp = icmp eq %struct.ossl_cmp_ctx_st* %ctx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 733, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.OSSL_CMP_CTX_get_serverPort, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 103, i8* noundef null) #5
  br label %return

if.end:                                           ; preds = %entry
  %serverPort = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 9
  %0 = load i32, i32* %serverPort, align 8, !tbaa !30
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ %0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @execute_CTX_set1_get0_proxy(%struct.test_fixture* nocapture noundef readonly %fixture) unnamed_addr #1 {
entry:
  %ctx1 = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %fixture, i64 0, i32 1
  %0 = load %struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_ctx_st** %ctx1, align 8, !tbaa !7
  %call = tail call fastcc i8* @char_new() #6
  %call2 = tail call fastcc i8* @char_new() #6
  %call3 = tail call i64 @ERR_peek_error() #5
  %conv = trunc i64 %call3 to i32
  %call4 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 734, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.57, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.58, i64 0, i64 0), i32 noundef %conv, i32 noundef 0) #5
  %call5 = tail call i32 @OSSL_CMP_CTX_set1_proxy(%struct.ossl_cmp_ctx_st* noundef null, i8* noundef %call) #5
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %lor.lhs.false, label %if.then9

lor.lhs.false:                                    ; preds = %entry
  %tobool.not = icmp ne i32 %call4, 0
  %spec.select = zext i1 %tobool.not to i32
  %call7 = tail call i64 @ERR_peek_error() #5
  %cmp = icmp eq i64 %call7, 0
  br i1 %cmp, label %if.then9, label %if.end10

if.then9:                                         ; preds = %lor.lhs.false, %entry
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 734, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.59, i64 0, i64 0)) #5
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %lor.lhs.false
  %res.1 = phi i32 [ 0, %if.then9 ], [ %spec.select, %lor.lhs.false ]
  tail call void @ERR_clear_error() #5
  %call11 = tail call fastcc i8* @OSSL_CMP_CTX_get0_proxy(%struct.ossl_cmp_ctx_st* noundef null) #6
  %cmp12.not = icmp eq i8* %call11, null
  br i1 %cmp12.not, label %lor.lhs.false14, label %if.then18

lor.lhs.false14:                                  ; preds = %if.end10
  %call15 = tail call i64 @ERR_peek_error() #5
  %cmp16 = icmp eq i64 %call15, 0
  br i1 %cmp16, label %if.then18, label %if.end19

if.then18:                                        ; preds = %lor.lhs.false14, %if.end10
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 734, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.60, i64 0, i64 0)) #5
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %lor.lhs.false14
  %res.2 = phi i32 [ 0, %if.then18 ], [ %res.1, %lor.lhs.false14 ]
  tail call void @ERR_clear_error() #5
  %call20 = tail call fastcc i8* @OSSL_CMP_CTX_get0_proxy(%struct.ossl_cmp_ctx_st* noundef %0) #6
  %cmp21 = icmp eq i8* %call20, null
  br i1 %cmp21, label %if.end24, label %if.then23

if.then23:                                        ; preds = %if.end19
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 734, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.61, i64 0, i64 0)) #5
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %if.end19
  %res.3 = phi i32 [ %res.2, %if.end19 ], [ 0, %if.then23 ]
  %call25 = tail call i32 @OSSL_CMP_CTX_set1_proxy(%struct.ossl_cmp_ctx_st* noundef %0, i8* noundef %call) #5
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.end24
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 734, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.62, i64 0, i64 0)) #5
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %if.end24
  %res.4 = phi i32 [ %res.3, %if.end24 ], [ 0, %if.then27 ]
  %call29 = tail call fastcc i8* @OSSL_CMP_CTX_get0_proxy(%struct.ossl_cmp_ctx_st* noundef %0) #6
  %cmp30 = icmp eq i8* %call29, %call
  br i1 %cmp30, label %if.then32, label %if.end33

if.then32:                                        ; preds = %if.end28
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 734, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.123, i64 0, i64 0)) #5
  br label %if.end33

if.end33:                                         ; preds = %if.then32, %if.end28
  %res.5 = phi i32 [ 0, %if.then32 ], [ %res.4, %if.end28 ]
  %cmp34 = icmp eq i8* %call29, null
  br i1 %cmp34, label %if.then36, label %if.end37

if.then36:                                        ; preds = %if.end33
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 734, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.124, i64 0, i64 0)) #5
  br label %if.end37

if.end37:                                         ; preds = %if.then36, %if.end33
  %res.6 = phi i32 [ 0, %if.then36 ], [ %res.5, %if.end33 ]
  %call38 = tail call i32 @OSSL_CMP_CTX_set1_proxy(%struct.ossl_cmp_ctx_st* noundef %0, i8* noundef %call2) #5
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.then40, label %if.end41

if.then40:                                        ; preds = %if.end37
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 734, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.64, i64 0, i64 0)) #5
  br label %if.end41

if.end41:                                         ; preds = %if.then40, %if.end37
  %res.7 = phi i32 [ %res.6, %if.end37 ], [ 0, %if.then40 ]
  %call42 = tail call fastcc i8* @OSSL_CMP_CTX_get0_proxy(%struct.ossl_cmp_ctx_st* noundef %0) #6
  %cmp43 = icmp eq i8* %call42, null
  br i1 %cmp43, label %if.then45, label %if.end46

if.then45:                                        ; preds = %if.end41
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 734, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.65, i64 0, i64 0)) #5
  br label %if.end46

if.end46:                                         ; preds = %if.then45, %if.end41
  %res.8 = phi i32 [ 0, %if.then45 ], [ %res.7, %if.end41 ]
  %cmp47 = icmp eq i8* %call42, %call2
  br i1 %cmp47, label %if.then49, label %if.end50

if.then49:                                        ; preds = %if.end46
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 734, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.125, i64 0, i64 0)) #5
  br label %if.end50

if.end50:                                         ; preds = %if.then49, %if.end46
  %res.9 = phi i32 [ 0, %if.then49 ], [ %res.8, %if.end46 ]
  %cmp51 = icmp eq i8* %call2, %call
  br i1 %cmp51, label %if.then53, label %if.end54

if.then53:                                        ; preds = %if.end50
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 734, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.126, i64 0, i64 0)) #5
  br label %if.end54

if.end54:                                         ; preds = %if.then53, %if.end50
  %res.10 = phi i32 [ 0, %if.then53 ], [ %res.9, %if.end50 ]
  %call55 = tail call fastcc i8* @OSSL_CMP_CTX_get0_proxy(%struct.ossl_cmp_ctx_st* noundef %0) #6
  %cmp56 = icmp eq i8* %call55, null
  br i1 %cmp56, label %if.then58, label %if.end59

if.then58:                                        ; preds = %if.end54
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 734, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.67, i64 0, i64 0)) #5
  br label %if.end59

if.end59:                                         ; preds = %if.then58, %if.end54
  %res.11 = phi i32 [ 0, %if.then58 ], [ %res.10, %if.end54 ]
  %cmp60.not = icmp eq i8* %call55, %call42
  br i1 %cmp60.not, label %if.end63, label %if.then62

if.then62:                                        ; preds = %if.end59
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 734, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.68, i64 0, i64 0)) #5
  br label %if.end63

if.end63:                                         ; preds = %if.then62, %if.end59
  %res.12 = phi i32 [ 0, %if.then62 ], [ %res.11, %if.end59 ]
  %call64 = tail call i64 @ERR_peek_error() #5
  %conv65 = trunc i64 %call64 to i32
  %call66 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 734, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.57, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.58, i64 0, i64 0), i32 noundef %conv65, i32 noundef 0) #5
  %tobool67.not = icmp ne i32 %call66, 0
  tail call fastcc void @char_free(i8* noundef %call) #6
  tail call fastcc void @char_free(i8* noundef %call2) #6
  %cmp70108 = icmp ne i32 %res.12, 0
  %cmp70 = select i1 %tobool67.not, i1 %cmp70108, i1 false
  %conv71 = zext i1 %cmp70 to i32
  %call72 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 734, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.69, i64 0, i64 0), i32 noundef %conv71) #5
  ret i32 %call72
}

declare dso_local i32 @OSSL_CMP_CTX_set1_proxy(%struct.ossl_cmp_ctx_st* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc i8* @OSSL_CMP_CTX_get0_proxy(%struct.ossl_cmp_ctx_st* noundef readonly %ctx) unnamed_addr #1 {
entry:
  %cmp = icmp eq %struct.ossl_cmp_ctx_st* %ctx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 734, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.OSSL_CMP_CTX_get0_proxy, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 103, i8* noundef null) #5
  br label %return

if.end:                                           ; preds = %entry
  %proxy = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 10
  %0 = load i8*, i8** %proxy, align 8, !tbaa !31
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i8* [ null, %if.then ], [ %0, %if.end ]
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @execute_CTX_set1_get0_no_proxy(%struct.test_fixture* nocapture noundef readonly %fixture) unnamed_addr #1 {
entry:
  %ctx1 = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %fixture, i64 0, i32 1
  %0 = load %struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_ctx_st** %ctx1, align 8, !tbaa !7
  %call = tail call fastcc i8* @char_new() #6
  %call2 = tail call fastcc i8* @char_new() #6
  %call3 = tail call i64 @ERR_peek_error() #5
  %conv = trunc i64 %call3 to i32
  %call4 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 735, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.57, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.58, i64 0, i64 0), i32 noundef %conv, i32 noundef 0) #5
  %call5 = tail call i32 @OSSL_CMP_CTX_set1_no_proxy(%struct.ossl_cmp_ctx_st* noundef null, i8* noundef %call) #5
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %lor.lhs.false, label %if.then9

lor.lhs.false:                                    ; preds = %entry
  %tobool.not = icmp ne i32 %call4, 0
  %spec.select = zext i1 %tobool.not to i32
  %call7 = tail call i64 @ERR_peek_error() #5
  %cmp = icmp eq i64 %call7, 0
  br i1 %cmp, label %if.then9, label %if.end10

if.then9:                                         ; preds = %lor.lhs.false, %entry
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 735, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.59, i64 0, i64 0)) #5
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %lor.lhs.false
  %res.1 = phi i32 [ 0, %if.then9 ], [ %spec.select, %lor.lhs.false ]
  tail call void @ERR_clear_error() #5
  %call11 = tail call fastcc i8* @OSSL_CMP_CTX_get0_no_proxy(%struct.ossl_cmp_ctx_st* noundef null) #6
  %cmp12.not = icmp eq i8* %call11, null
  br i1 %cmp12.not, label %lor.lhs.false14, label %if.then18

lor.lhs.false14:                                  ; preds = %if.end10
  %call15 = tail call i64 @ERR_peek_error() #5
  %cmp16 = icmp eq i64 %call15, 0
  br i1 %cmp16, label %if.then18, label %if.end19

if.then18:                                        ; preds = %lor.lhs.false14, %if.end10
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 735, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.60, i64 0, i64 0)) #5
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %lor.lhs.false14
  %res.2 = phi i32 [ 0, %if.then18 ], [ %res.1, %lor.lhs.false14 ]
  tail call void @ERR_clear_error() #5
  %call20 = tail call fastcc i8* @OSSL_CMP_CTX_get0_no_proxy(%struct.ossl_cmp_ctx_st* noundef %0) #6
  %cmp21 = icmp eq i8* %call20, null
  br i1 %cmp21, label %if.end24, label %if.then23

if.then23:                                        ; preds = %if.end19
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 735, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.61, i64 0, i64 0)) #5
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %if.end19
  %res.3 = phi i32 [ %res.2, %if.end19 ], [ 0, %if.then23 ]
  %call25 = tail call i32 @OSSL_CMP_CTX_set1_no_proxy(%struct.ossl_cmp_ctx_st* noundef %0, i8* noundef %call) #5
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.end24
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 735, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.62, i64 0, i64 0)) #5
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %if.end24
  %res.4 = phi i32 [ %res.3, %if.end24 ], [ 0, %if.then27 ]
  %call29 = tail call fastcc i8* @OSSL_CMP_CTX_get0_no_proxy(%struct.ossl_cmp_ctx_st* noundef %0) #6
  %cmp30 = icmp eq i8* %call29, %call
  br i1 %cmp30, label %if.then32, label %if.end33

if.then32:                                        ; preds = %if.end28
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 735, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.123, i64 0, i64 0)) #5
  br label %if.end33

if.end33:                                         ; preds = %if.then32, %if.end28
  %res.5 = phi i32 [ 0, %if.then32 ], [ %res.4, %if.end28 ]
  %cmp34 = icmp eq i8* %call29, null
  br i1 %cmp34, label %if.then36, label %if.end37

if.then36:                                        ; preds = %if.end33
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 735, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.124, i64 0, i64 0)) #5
  br label %if.end37

if.end37:                                         ; preds = %if.then36, %if.end33
  %res.6 = phi i32 [ 0, %if.then36 ], [ %res.5, %if.end33 ]
  %call38 = tail call i32 @OSSL_CMP_CTX_set1_no_proxy(%struct.ossl_cmp_ctx_st* noundef %0, i8* noundef %call2) #5
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.then40, label %if.end41

if.then40:                                        ; preds = %if.end37
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 735, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.64, i64 0, i64 0)) #5
  br label %if.end41

if.end41:                                         ; preds = %if.then40, %if.end37
  %res.7 = phi i32 [ %res.6, %if.end37 ], [ 0, %if.then40 ]
  %call42 = tail call fastcc i8* @OSSL_CMP_CTX_get0_no_proxy(%struct.ossl_cmp_ctx_st* noundef %0) #6
  %cmp43 = icmp eq i8* %call42, null
  br i1 %cmp43, label %if.then45, label %if.end46

if.then45:                                        ; preds = %if.end41
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 735, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.65, i64 0, i64 0)) #5
  br label %if.end46

if.end46:                                         ; preds = %if.then45, %if.end41
  %res.8 = phi i32 [ 0, %if.then45 ], [ %res.7, %if.end41 ]
  %cmp47 = icmp eq i8* %call42, %call2
  br i1 %cmp47, label %if.then49, label %if.end50

if.then49:                                        ; preds = %if.end46
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 735, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.125, i64 0, i64 0)) #5
  br label %if.end50

if.end50:                                         ; preds = %if.then49, %if.end46
  %res.9 = phi i32 [ 0, %if.then49 ], [ %res.8, %if.end46 ]
  %cmp51 = icmp eq i8* %call2, %call
  br i1 %cmp51, label %if.then53, label %if.end54

if.then53:                                        ; preds = %if.end50
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 735, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.126, i64 0, i64 0)) #5
  br label %if.end54

if.end54:                                         ; preds = %if.then53, %if.end50
  %res.10 = phi i32 [ 0, %if.then53 ], [ %res.9, %if.end50 ]
  %call55 = tail call fastcc i8* @OSSL_CMP_CTX_get0_no_proxy(%struct.ossl_cmp_ctx_st* noundef %0) #6
  %cmp56 = icmp eq i8* %call55, null
  br i1 %cmp56, label %if.then58, label %if.end59

if.then58:                                        ; preds = %if.end54
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 735, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.67, i64 0, i64 0)) #5
  br label %if.end59

if.end59:                                         ; preds = %if.then58, %if.end54
  %res.11 = phi i32 [ 0, %if.then58 ], [ %res.10, %if.end54 ]
  %cmp60.not = icmp eq i8* %call55, %call42
  br i1 %cmp60.not, label %if.end63, label %if.then62

if.then62:                                        ; preds = %if.end59
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 735, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.68, i64 0, i64 0)) #5
  br label %if.end63

if.end63:                                         ; preds = %if.then62, %if.end59
  %res.12 = phi i32 [ 0, %if.then62 ], [ %res.11, %if.end59 ]
  %call64 = tail call i64 @ERR_peek_error() #5
  %conv65 = trunc i64 %call64 to i32
  %call66 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 735, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.57, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.58, i64 0, i64 0), i32 noundef %conv65, i32 noundef 0) #5
  %tobool67.not = icmp ne i32 %call66, 0
  tail call fastcc void @char_free(i8* noundef %call) #6
  tail call fastcc void @char_free(i8* noundef %call2) #6
  %cmp70108 = icmp ne i32 %res.12, 0
  %cmp70 = select i1 %tobool67.not, i1 %cmp70108, i1 false
  %conv71 = zext i1 %cmp70 to i32
  %call72 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 735, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.69, i64 0, i64 0), i32 noundef %conv71) #5
  ret i32 %call72
}

declare dso_local i32 @OSSL_CMP_CTX_set1_no_proxy(%struct.ossl_cmp_ctx_st* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc i8* @OSSL_CMP_CTX_get0_no_proxy(%struct.ossl_cmp_ctx_st* noundef readonly %ctx) unnamed_addr #1 {
entry:
  %cmp = icmp eq %struct.ossl_cmp_ctx_st* %ctx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 735, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.OSSL_CMP_CTX_get0_no_proxy, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 103, i8* noundef null) #5
  br label %return

if.end:                                           ; preds = %entry
  %no_proxy = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 11
  %0 = load i8*, i8** %no_proxy, align 8, !tbaa !32
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i8* [ null, %if.then ], [ %0, %if.end ]
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @execute_CTX_set_get_http_cb(%struct.test_fixture* nocapture noundef readonly %fixture) unnamed_addr #1 {
entry:
  %ctx1 = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %fixture, i64 0, i32 1
  %0 = load %struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_ctx_st** %ctx1, align 8, !tbaa !7
  %call = tail call i64 @ERR_peek_error() #5
  %conv = trunc i64 %call to i32
  %call2 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 736, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.57, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.58, i64 0, i64 0), i32 noundef %conv, i32 noundef 0) #5
  %call3 = tail call i32 @OSSL_CMP_CTX_set_http_cb(%struct.ossl_cmp_ctx_st* noundef null, %struct.bio_st* (%struct.bio_st*, i8*, i32, i32)* noundef nonnull @test_http_cb) #5
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %lor.lhs.false, label %if.then7

lor.lhs.false:                                    ; preds = %entry
  %tobool.not = icmp ne i32 %call2, 0
  %spec.select = zext i1 %tobool.not to i32
  %call5 = tail call i64 @ERR_peek_error() #5
  %cmp = icmp eq i64 %call5, 0
  br i1 %cmp, label %if.then7, label %if.end8

if.then7:                                         ; preds = %lor.lhs.false, %entry
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 736, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.59, i64 0, i64 0)) #5
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %lor.lhs.false
  %res.1 = phi i32 [ 0, %if.then7 ], [ %spec.select, %lor.lhs.false ]
  tail call void @ERR_clear_error() #5
  %call9 = tail call fastcc %struct.bio_st* (%struct.bio_st*, i8*, i32, i32)* @OSSL_CMP_CTX_get_http_cb(%struct.ossl_cmp_ctx_st* noundef null) #6
  %cmp10.not = icmp eq %struct.bio_st* (%struct.bio_st*, i8*, i32, i32)* %call9, null
  br i1 %cmp10.not, label %lor.lhs.false12, label %if.then16

lor.lhs.false12:                                  ; preds = %if.end8
  %call13 = tail call i64 @ERR_peek_error() #5
  %cmp14 = icmp eq i64 %call13, 0
  br i1 %cmp14, label %if.then16, label %if.end17

if.then16:                                        ; preds = %lor.lhs.false12, %if.end8
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 736, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.60, i64 0, i64 0)) #5
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %lor.lhs.false12
  %res.2 = phi i32 [ 0, %if.then16 ], [ %res.1, %lor.lhs.false12 ]
  tail call void @ERR_clear_error() #5
  %call18 = tail call fastcc %struct.bio_st* (%struct.bio_st*, i8*, i32, i32)* @OSSL_CMP_CTX_get_http_cb(%struct.ossl_cmp_ctx_st* noundef %0) #6
  %cmp19 = icmp eq %struct.bio_st* (%struct.bio_st*, i8*, i32, i32)* %call18, null
  br i1 %cmp19, label %if.end22, label %if.then21

if.then21:                                        ; preds = %if.end17
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 736, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.61, i64 0, i64 0)) #5
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %if.end17
  %res.3 = phi i32 [ %res.2, %if.end17 ], [ 0, %if.then21 ]
  %call23 = tail call i32 @OSSL_CMP_CTX_set_http_cb(%struct.ossl_cmp_ctx_st* noundef %0, %struct.bio_st* (%struct.bio_st*, i8*, i32, i32)* noundef nonnull @test_http_cb) #5
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.then25, label %if.end26

if.then25:                                        ; preds = %if.end22
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 736, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.62, i64 0, i64 0)) #5
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %if.end22
  %res.4 = phi i32 [ %res.3, %if.end22 ], [ 0, %if.then25 ]
  %call27 = tail call fastcc %struct.bio_st* (%struct.bio_st*, i8*, i32, i32)* @OSSL_CMP_CTX_get_http_cb(%struct.ossl_cmp_ctx_st* noundef %0) #6
  %cmp28.not = icmp eq %struct.bio_st* (%struct.bio_st*, i8*, i32, i32)* %call27, @test_http_cb
  br i1 %cmp28.not, label %if.end31, label %if.then30

if.then30:                                        ; preds = %if.end26
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 736, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.63, i64 0, i64 0)) #5
  br label %if.end31

if.end31:                                         ; preds = %if.then30, %if.end26
  %res.5 = phi i32 [ 0, %if.then30 ], [ %res.4, %if.end26 ]
  %call32 = tail call i32 @OSSL_CMP_CTX_set_http_cb(%struct.ossl_cmp_ctx_st* noundef %0, %struct.bio_st* (%struct.bio_st*, i8*, i32, i32)* noundef nonnull @test_http_cb) #5
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.then34, label %if.end35

if.then34:                                        ; preds = %if.end31
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 736, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.64, i64 0, i64 0)) #5
  br label %if.end35

if.end35:                                         ; preds = %if.then34, %if.end31
  %res.6 = phi i32 [ %res.5, %if.end31 ], [ 0, %if.then34 ]
  %call36 = tail call fastcc %struct.bio_st* (%struct.bio_st*, i8*, i32, i32)* @OSSL_CMP_CTX_get_http_cb(%struct.ossl_cmp_ctx_st* noundef %0) #6
  %cmp37 = icmp eq %struct.bio_st* (%struct.bio_st*, i8*, i32, i32)* %call36, null
  br i1 %cmp37, label %if.end40.thread, label %if.end40

if.end40.thread:                                  ; preds = %if.end35
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 736, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.65, i64 0, i64 0)) #5
  br label %if.then43

if.end40:                                         ; preds = %if.end35
  %cmp41.not = icmp eq %struct.bio_st* (%struct.bio_st*, i8*, i32, i32)* %call36, @test_http_cb
  br i1 %cmp41.not, label %if.end44, label %if.then43

if.then43:                                        ; preds = %if.end40.thread, %if.end40
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 736, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.66, i64 0, i64 0)) #5
  br label %if.end44

if.end44:                                         ; preds = %if.then43, %if.end40
  %res.8 = phi i32 [ 0, %if.then43 ], [ %res.6, %if.end40 ]
  %call45 = tail call fastcc %struct.bio_st* (%struct.bio_st*, i8*, i32, i32)* @OSSL_CMP_CTX_get_http_cb(%struct.ossl_cmp_ctx_st* noundef %0) #6
  %cmp46 = icmp eq %struct.bio_st* (%struct.bio_st*, i8*, i32, i32)* %call45, null
  br i1 %cmp46, label %if.then48, label %if.end49

if.then48:                                        ; preds = %if.end44
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 736, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.67, i64 0, i64 0)) #5
  br label %if.end49

if.end49:                                         ; preds = %if.then48, %if.end44
  %res.9 = phi i32 [ 0, %if.then48 ], [ %res.8, %if.end44 ]
  %cmp50.not = icmp eq %struct.bio_st* (%struct.bio_st*, i8*, i32, i32)* %call45, %call36
  br i1 %cmp50.not, label %if.end53, label %if.then52

if.then52:                                        ; preds = %if.end49
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 736, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.68, i64 0, i64 0)) #5
  br label %if.end53

if.end53:                                         ; preds = %if.then52, %if.end49
  %res.10 = phi i32 [ 0, %if.then52 ], [ %res.9, %if.end49 ]
  %call54 = tail call i64 @ERR_peek_error() #5
  %conv55 = trunc i64 %call54 to i32
  %call56 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 736, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.57, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.58, i64 0, i64 0), i32 noundef %conv55, i32 noundef 0) #5
  %tobool57.not = icmp ne i32 %call56, 0
  %cmp6097 = icmp ne i32 %res.10, 0
  %cmp60 = select i1 %tobool57.not, i1 %cmp6097, i1 false
  %conv61 = zext i1 %cmp60 to i32
  %call62 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 736, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.69, i64 0, i64 0), i32 noundef %conv61) #5
  ret i32 %call62
}

declare dso_local i32 @OSSL_CMP_CTX_set_http_cb(%struct.ossl_cmp_ctx_st* noundef, %struct.bio_st* (%struct.bio_st*, i8*, i32, i32)* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.bio_st* (%struct.bio_st*, i8*, i32, i32)* @OSSL_CMP_CTX_get_http_cb(%struct.ossl_cmp_ctx_st* noundef readonly %ctx) unnamed_addr #1 {
entry:
  %cmp = icmp eq %struct.ossl_cmp_ctx_st* %ctx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 736, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.OSSL_CMP_CTX_get_http_cb, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 103, i8* noundef null) #5
  br label %return

if.end:                                           ; preds = %entry
  %http_cb = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 16
  %0 = load %struct.bio_st* (%struct.bio_st*, i8*, i32, i32)*, %struct.bio_st* (%struct.bio_st*, i8*, i32, i32)** %http_cb, align 8, !tbaa !33
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi %struct.bio_st* (%struct.bio_st*, i8*, i32, i32)* [ null, %if.then ], [ %0, %if.end ]
  ret %struct.bio_st* (%struct.bio_st*, i8*, i32, i32)* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal noalias %struct.bio_st* @test_http_cb(%struct.bio_st* nocapture noundef readnone %bio, i8* nocapture noundef readnone %arg, i32 noundef %use_ssl, i32 noundef %detail) #0 {
entry:
  ret %struct.bio_st* null
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @execute_CTX_set_get_http_cb_arg(%struct.test_fixture* nocapture noundef readonly %fixture) unnamed_addr #1 {
entry:
  %ctx1 = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %fixture, i64 0, i32 1
  %0 = load %struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_ctx_st** %ctx1, align 8, !tbaa !7
  %call = tail call i64 @ERR_peek_error() #5
  %conv = trunc i64 %call to i32
  %call2 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 737, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.57, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.58, i64 0, i64 0), i32 noundef %conv, i32 noundef 0) #5
  %call3 = tail call i32 @OSSL_CMP_CTX_set_http_cb_arg(%struct.ossl_cmp_ctx_st* noundef null, i8* noundef nonnull inttoptr (i64 1 to i8*)) #5
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %lor.lhs.false, label %if.then7

lor.lhs.false:                                    ; preds = %entry
  %tobool.not = icmp ne i32 %call2, 0
  %spec.select = zext i1 %tobool.not to i32
  %call5 = tail call i64 @ERR_peek_error() #5
  %cmp = icmp eq i64 %call5, 0
  br i1 %cmp, label %if.then7, label %if.end8

if.then7:                                         ; preds = %lor.lhs.false, %entry
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 737, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.59, i64 0, i64 0)) #5
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %lor.lhs.false
  %res.1 = phi i32 [ 0, %if.then7 ], [ %spec.select, %lor.lhs.false ]
  tail call void @ERR_clear_error() #5
  %call9 = tail call i8* @OSSL_CMP_CTX_get_http_cb_arg(%struct.ossl_cmp_ctx_st* noundef null) #5
  %cmp10.not = icmp eq i8* %call9, null
  br i1 %cmp10.not, label %lor.lhs.false12, label %if.then16

lor.lhs.false12:                                  ; preds = %if.end8
  %call13 = tail call i64 @ERR_peek_error() #5
  %cmp14 = icmp eq i64 %call13, 0
  br i1 %cmp14, label %if.then16, label %if.end17

if.then16:                                        ; preds = %lor.lhs.false12, %if.end8
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 737, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.60, i64 0, i64 0)) #5
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %lor.lhs.false12
  %res.2 = phi i32 [ 0, %if.then16 ], [ %res.1, %lor.lhs.false12 ]
  tail call void @ERR_clear_error() #5
  %call18 = tail call i8* @OSSL_CMP_CTX_get_http_cb_arg(%struct.ossl_cmp_ctx_st* noundef %0) #5
  %cmp19 = icmp eq i8* %call18, null
  br i1 %cmp19, label %if.end22, label %if.then21

if.then21:                                        ; preds = %if.end17
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 737, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.61, i64 0, i64 0)) #5
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %if.end17
  %res.3 = phi i32 [ %res.2, %if.end17 ], [ 0, %if.then21 ]
  %call23 = tail call i32 @OSSL_CMP_CTX_set_http_cb_arg(%struct.ossl_cmp_ctx_st* noundef %0, i8* noundef nonnull inttoptr (i64 1 to i8*)) #5
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.then25, label %if.end26

if.then25:                                        ; preds = %if.end22
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 737, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.62, i64 0, i64 0)) #5
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %if.end22
  %res.4 = phi i32 [ %res.3, %if.end22 ], [ 0, %if.then25 ]
  %call27 = tail call i8* @OSSL_CMP_CTX_get_http_cb_arg(%struct.ossl_cmp_ctx_st* noundef %0) #5
  %cmp28.not = icmp eq i8* %call27, inttoptr (i64 1 to i8*)
  br i1 %cmp28.not, label %if.end31, label %if.then30

if.then30:                                        ; preds = %if.end26
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 737, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.63, i64 0, i64 0)) #5
  br label %if.end31

if.end31:                                         ; preds = %if.then30, %if.end26
  %res.5 = phi i32 [ 0, %if.then30 ], [ %res.4, %if.end26 ]
  %call32 = tail call i32 @OSSL_CMP_CTX_set_http_cb_arg(%struct.ossl_cmp_ctx_st* noundef %0, i8* noundef nonnull inttoptr (i64 1 to i8*)) #5
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.then34, label %if.end35

if.then34:                                        ; preds = %if.end31
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 737, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.64, i64 0, i64 0)) #5
  br label %if.end35

if.end35:                                         ; preds = %if.then34, %if.end31
  %res.6 = phi i32 [ %res.5, %if.end31 ], [ 0, %if.then34 ]
  %call36 = tail call i8* @OSSL_CMP_CTX_get_http_cb_arg(%struct.ossl_cmp_ctx_st* noundef %0) #5
  %magicptr = ptrtoint i8* %call36 to i64
  switch i64 %magicptr, label %if.then43 [
    i64 0, label %if.end40.thread
    i64 1, label %if.end44
  ]

if.end40.thread:                                  ; preds = %if.end35
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 737, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.65, i64 0, i64 0)) #5
  br label %if.then43

if.then43:                                        ; preds = %if.end35, %if.end40.thread
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 737, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.66, i64 0, i64 0)) #5
  br label %if.end44

if.end44:                                         ; preds = %if.end35, %if.then43
  %res.8 = phi i32 [ 0, %if.then43 ], [ %res.6, %if.end35 ]
  %call45 = tail call i8* @OSSL_CMP_CTX_get_http_cb_arg(%struct.ossl_cmp_ctx_st* noundef %0) #5
  %cmp46 = icmp eq i8* %call45, null
  br i1 %cmp46, label %if.then48, label %if.end49

if.then48:                                        ; preds = %if.end44
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 737, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.67, i64 0, i64 0)) #5
  br label %if.end49

if.end49:                                         ; preds = %if.then48, %if.end44
  %res.9 = phi i32 [ 0, %if.then48 ], [ %res.8, %if.end44 ]
  %cmp50.not = icmp eq i8* %call45, %call36
  br i1 %cmp50.not, label %if.end53, label %if.then52

if.then52:                                        ; preds = %if.end49
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 737, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.68, i64 0, i64 0)) #5
  br label %if.end53

if.end53:                                         ; preds = %if.then52, %if.end49
  %res.10 = phi i32 [ 0, %if.then52 ], [ %res.9, %if.end49 ]
  %call54 = tail call i64 @ERR_peek_error() #5
  %conv55 = trunc i64 %call54 to i32
  %call56 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 737, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.57, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.58, i64 0, i64 0), i32 noundef %conv55, i32 noundef 0) #5
  %tobool57.not = icmp ne i32 %call56, 0
  %cmp6097 = icmp ne i32 %res.10, 0
  %cmp60 = select i1 %tobool57.not, i1 %cmp6097, i1 false
  %conv61 = zext i1 %cmp60 to i32
  %call62 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 737, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.69, i64 0, i64 0), i32 noundef %conv61) #5
  ret i32 %call62
}

declare dso_local i32 @OSSL_CMP_CTX_set_http_cb_arg(%struct.ossl_cmp_ctx_st* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local i8* @OSSL_CMP_CTX_get_http_cb_arg(%struct.ossl_cmp_ctx_st* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @execute_CTX_set_get_transfer_cb(%struct.test_fixture* nocapture noundef readonly %fixture) unnamed_addr #1 {
entry:
  %ctx1 = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %fixture, i64 0, i32 1
  %0 = load %struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_ctx_st** %ctx1, align 8, !tbaa !7
  %call = tail call i64 @ERR_peek_error() #5
  %conv = trunc i64 %call to i32
  %call2 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 738, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.57, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.58, i64 0, i64 0), i32 noundef %conv, i32 noundef 0) #5
  %call3 = tail call i32 @OSSL_CMP_CTX_set_transfer_cb(%struct.ossl_cmp_ctx_st* noundef null, %struct.ossl_cmp_msg_st* (%struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_msg_st*)* noundef nonnull @test_transfer_cb) #5
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %lor.lhs.false, label %if.then7

lor.lhs.false:                                    ; preds = %entry
  %tobool.not = icmp ne i32 %call2, 0
  %spec.select = zext i1 %tobool.not to i32
  %call5 = tail call i64 @ERR_peek_error() #5
  %cmp = icmp eq i64 %call5, 0
  br i1 %cmp, label %if.then7, label %if.end8

if.then7:                                         ; preds = %lor.lhs.false, %entry
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 738, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.59, i64 0, i64 0)) #5
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %lor.lhs.false
  %res.1 = phi i32 [ 0, %if.then7 ], [ %spec.select, %lor.lhs.false ]
  tail call void @ERR_clear_error() #5
  %call9 = tail call fastcc %struct.ossl_cmp_msg_st* (%struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_msg_st*)* @OSSL_CMP_CTX_get_transfer_cb(%struct.ossl_cmp_ctx_st* noundef null) #6
  %cmp10.not = icmp eq %struct.ossl_cmp_msg_st* (%struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_msg_st*)* %call9, null
  br i1 %cmp10.not, label %lor.lhs.false12, label %if.then16

lor.lhs.false12:                                  ; preds = %if.end8
  %call13 = tail call i64 @ERR_peek_error() #5
  %cmp14 = icmp eq i64 %call13, 0
  br i1 %cmp14, label %if.then16, label %if.end17

if.then16:                                        ; preds = %lor.lhs.false12, %if.end8
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 738, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.60, i64 0, i64 0)) #5
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %lor.lhs.false12
  %res.2 = phi i32 [ 0, %if.then16 ], [ %res.1, %lor.lhs.false12 ]
  tail call void @ERR_clear_error() #5
  %call18 = tail call fastcc %struct.ossl_cmp_msg_st* (%struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_msg_st*)* @OSSL_CMP_CTX_get_transfer_cb(%struct.ossl_cmp_ctx_st* noundef %0) #6
  %cmp19 = icmp eq %struct.ossl_cmp_msg_st* (%struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_msg_st*)* %call18, null
  br i1 %cmp19, label %if.end22, label %if.then21

if.then21:                                        ; preds = %if.end17
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 738, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.61, i64 0, i64 0)) #5
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %if.end17
  %res.3 = phi i32 [ %res.2, %if.end17 ], [ 0, %if.then21 ]
  %call23 = tail call i32 @OSSL_CMP_CTX_set_transfer_cb(%struct.ossl_cmp_ctx_st* noundef %0, %struct.ossl_cmp_msg_st* (%struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_msg_st*)* noundef nonnull @test_transfer_cb) #5
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.then25, label %if.end26

if.then25:                                        ; preds = %if.end22
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 738, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.62, i64 0, i64 0)) #5
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %if.end22
  %res.4 = phi i32 [ %res.3, %if.end22 ], [ 0, %if.then25 ]
  %call27 = tail call fastcc %struct.ossl_cmp_msg_st* (%struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_msg_st*)* @OSSL_CMP_CTX_get_transfer_cb(%struct.ossl_cmp_ctx_st* noundef %0) #6
  %cmp28.not = icmp eq %struct.ossl_cmp_msg_st* (%struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_msg_st*)* %call27, @test_transfer_cb
  br i1 %cmp28.not, label %if.end31, label %if.then30

if.then30:                                        ; preds = %if.end26
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 738, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.63, i64 0, i64 0)) #5
  br label %if.end31

if.end31:                                         ; preds = %if.then30, %if.end26
  %res.5 = phi i32 [ 0, %if.then30 ], [ %res.4, %if.end26 ]
  %call32 = tail call i32 @OSSL_CMP_CTX_set_transfer_cb(%struct.ossl_cmp_ctx_st* noundef %0, %struct.ossl_cmp_msg_st* (%struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_msg_st*)* noundef nonnull @test_transfer_cb) #5
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.then34, label %if.end35

if.then34:                                        ; preds = %if.end31
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 738, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.64, i64 0, i64 0)) #5
  br label %if.end35

if.end35:                                         ; preds = %if.then34, %if.end31
  %res.6 = phi i32 [ %res.5, %if.end31 ], [ 0, %if.then34 ]
  %call36 = tail call fastcc %struct.ossl_cmp_msg_st* (%struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_msg_st*)* @OSSL_CMP_CTX_get_transfer_cb(%struct.ossl_cmp_ctx_st* noundef %0) #6
  %cmp37 = icmp eq %struct.ossl_cmp_msg_st* (%struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_msg_st*)* %call36, null
  br i1 %cmp37, label %if.end40.thread, label %if.end40

if.end40.thread:                                  ; preds = %if.end35
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 738, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.65, i64 0, i64 0)) #5
  br label %if.then43

if.end40:                                         ; preds = %if.end35
  %cmp41.not = icmp eq %struct.ossl_cmp_msg_st* (%struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_msg_st*)* %call36, @test_transfer_cb
  br i1 %cmp41.not, label %if.end44, label %if.then43

if.then43:                                        ; preds = %if.end40.thread, %if.end40
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 738, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.66, i64 0, i64 0)) #5
  br label %if.end44

if.end44:                                         ; preds = %if.then43, %if.end40
  %res.8 = phi i32 [ 0, %if.then43 ], [ %res.6, %if.end40 ]
  %call45 = tail call fastcc %struct.ossl_cmp_msg_st* (%struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_msg_st*)* @OSSL_CMP_CTX_get_transfer_cb(%struct.ossl_cmp_ctx_st* noundef %0) #6
  %cmp46 = icmp eq %struct.ossl_cmp_msg_st* (%struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_msg_st*)* %call45, null
  br i1 %cmp46, label %if.then48, label %if.end49

if.then48:                                        ; preds = %if.end44
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 738, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.67, i64 0, i64 0)) #5
  br label %if.end49

if.end49:                                         ; preds = %if.then48, %if.end44
  %res.9 = phi i32 [ 0, %if.then48 ], [ %res.8, %if.end44 ]
  %cmp50.not = icmp eq %struct.ossl_cmp_msg_st* (%struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_msg_st*)* %call45, %call36
  br i1 %cmp50.not, label %if.end53, label %if.then52

if.then52:                                        ; preds = %if.end49
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 738, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.68, i64 0, i64 0)) #5
  br label %if.end53

if.end53:                                         ; preds = %if.then52, %if.end49
  %res.10 = phi i32 [ 0, %if.then52 ], [ %res.9, %if.end49 ]
  %call54 = tail call i64 @ERR_peek_error() #5
  %conv55 = trunc i64 %call54 to i32
  %call56 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 738, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.57, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.58, i64 0, i64 0), i32 noundef %conv55, i32 noundef 0) #5
  %tobool57.not = icmp ne i32 %call56, 0
  %cmp6097 = icmp ne i32 %res.10, 0
  %cmp60 = select i1 %tobool57.not, i1 %cmp6097, i1 false
  %conv61 = zext i1 %cmp60 to i32
  %call62 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 738, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.69, i64 0, i64 0), i32 noundef %conv61) #5
  ret i32 %call62
}

declare dso_local i32 @OSSL_CMP_CTX_set_transfer_cb(%struct.ossl_cmp_ctx_st* noundef, %struct.ossl_cmp_msg_st* (%struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_msg_st*)* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.ossl_cmp_msg_st* (%struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_msg_st*)* @OSSL_CMP_CTX_get_transfer_cb(%struct.ossl_cmp_ctx_st* noundef readonly %ctx) unnamed_addr #1 {
entry:
  %cmp = icmp eq %struct.ossl_cmp_ctx_st* %ctx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 738, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.OSSL_CMP_CTX_get_transfer_cb, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 103, i8* noundef null) #5
  br label %return

if.end:                                           ; preds = %entry
  %transfer_cb = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 4
  %0 = load %struct.ossl_cmp_msg_st* (%struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_msg_st*)*, %struct.ossl_cmp_msg_st* (%struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_msg_st*)** %transfer_cb, align 8, !tbaa !34
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi %struct.ossl_cmp_msg_st* (%struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_msg_st*)* [ null, %if.then ], [ %0, %if.end ]
  ret %struct.ossl_cmp_msg_st* (%struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_msg_st*)* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal noalias %struct.ossl_cmp_msg_st* @test_transfer_cb(%struct.ossl_cmp_ctx_st* nocapture noundef readnone %ctx, %struct.ossl_cmp_msg_st* nocapture noundef readnone %req) #0 {
entry:
  ret %struct.ossl_cmp_msg_st* null
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @execute_CTX_set_get_transfer_cb_arg(%struct.test_fixture* nocapture noundef readonly %fixture) unnamed_addr #1 {
entry:
  %ctx1 = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %fixture, i64 0, i32 1
  %0 = load %struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_ctx_st** %ctx1, align 8, !tbaa !7
  %call = tail call i64 @ERR_peek_error() #5
  %conv = trunc i64 %call to i32
  %call2 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 739, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.57, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.58, i64 0, i64 0), i32 noundef %conv, i32 noundef 0) #5
  %call3 = tail call i32 @OSSL_CMP_CTX_set_transfer_cb_arg(%struct.ossl_cmp_ctx_st* noundef null, i8* noundef nonnull inttoptr (i64 1 to i8*)) #5
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %lor.lhs.false, label %if.then7

lor.lhs.false:                                    ; preds = %entry
  %tobool.not = icmp ne i32 %call2, 0
  %spec.select = zext i1 %tobool.not to i32
  %call5 = tail call i64 @ERR_peek_error() #5
  %cmp = icmp eq i64 %call5, 0
  br i1 %cmp, label %if.then7, label %if.end8

if.then7:                                         ; preds = %lor.lhs.false, %entry
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 739, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.59, i64 0, i64 0)) #5
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %lor.lhs.false
  %res.1 = phi i32 [ 0, %if.then7 ], [ %spec.select, %lor.lhs.false ]
  tail call void @ERR_clear_error() #5
  %call9 = tail call i8* @OSSL_CMP_CTX_get_transfer_cb_arg(%struct.ossl_cmp_ctx_st* noundef null) #5
  %cmp10.not = icmp eq i8* %call9, null
  br i1 %cmp10.not, label %lor.lhs.false12, label %if.then16

lor.lhs.false12:                                  ; preds = %if.end8
  %call13 = tail call i64 @ERR_peek_error() #5
  %cmp14 = icmp eq i64 %call13, 0
  br i1 %cmp14, label %if.then16, label %if.end17

if.then16:                                        ; preds = %lor.lhs.false12, %if.end8
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 739, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.60, i64 0, i64 0)) #5
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %lor.lhs.false12
  %res.2 = phi i32 [ 0, %if.then16 ], [ %res.1, %lor.lhs.false12 ]
  tail call void @ERR_clear_error() #5
  %call18 = tail call i8* @OSSL_CMP_CTX_get_transfer_cb_arg(%struct.ossl_cmp_ctx_st* noundef %0) #5
  %cmp19 = icmp eq i8* %call18, null
  br i1 %cmp19, label %if.end22, label %if.then21

if.then21:                                        ; preds = %if.end17
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 739, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.61, i64 0, i64 0)) #5
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %if.end17
  %res.3 = phi i32 [ %res.2, %if.end17 ], [ 0, %if.then21 ]
  %call23 = tail call i32 @OSSL_CMP_CTX_set_transfer_cb_arg(%struct.ossl_cmp_ctx_st* noundef %0, i8* noundef nonnull inttoptr (i64 1 to i8*)) #5
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.then25, label %if.end26

if.then25:                                        ; preds = %if.end22
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 739, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.62, i64 0, i64 0)) #5
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %if.end22
  %res.4 = phi i32 [ %res.3, %if.end22 ], [ 0, %if.then25 ]
  %call27 = tail call i8* @OSSL_CMP_CTX_get_transfer_cb_arg(%struct.ossl_cmp_ctx_st* noundef %0) #5
  %cmp28.not = icmp eq i8* %call27, inttoptr (i64 1 to i8*)
  br i1 %cmp28.not, label %if.end31, label %if.then30

if.then30:                                        ; preds = %if.end26
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 739, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.63, i64 0, i64 0)) #5
  br label %if.end31

if.end31:                                         ; preds = %if.then30, %if.end26
  %res.5 = phi i32 [ 0, %if.then30 ], [ %res.4, %if.end26 ]
  %call32 = tail call i32 @OSSL_CMP_CTX_set_transfer_cb_arg(%struct.ossl_cmp_ctx_st* noundef %0, i8* noundef nonnull inttoptr (i64 1 to i8*)) #5
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.then34, label %if.end35

if.then34:                                        ; preds = %if.end31
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 739, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.64, i64 0, i64 0)) #5
  br label %if.end35

if.end35:                                         ; preds = %if.then34, %if.end31
  %res.6 = phi i32 [ %res.5, %if.end31 ], [ 0, %if.then34 ]
  %call36 = tail call i8* @OSSL_CMP_CTX_get_transfer_cb_arg(%struct.ossl_cmp_ctx_st* noundef %0) #5
  %magicptr = ptrtoint i8* %call36 to i64
  switch i64 %magicptr, label %if.then43 [
    i64 0, label %if.end40.thread
    i64 1, label %if.end44
  ]

if.end40.thread:                                  ; preds = %if.end35
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 739, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.65, i64 0, i64 0)) #5
  br label %if.then43

if.then43:                                        ; preds = %if.end35, %if.end40.thread
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 739, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.66, i64 0, i64 0)) #5
  br label %if.end44

if.end44:                                         ; preds = %if.end35, %if.then43
  %res.8 = phi i32 [ 0, %if.then43 ], [ %res.6, %if.end35 ]
  %call45 = tail call i8* @OSSL_CMP_CTX_get_transfer_cb_arg(%struct.ossl_cmp_ctx_st* noundef %0) #5
  %cmp46 = icmp eq i8* %call45, null
  br i1 %cmp46, label %if.then48, label %if.end49

if.then48:                                        ; preds = %if.end44
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 739, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.67, i64 0, i64 0)) #5
  br label %if.end49

if.end49:                                         ; preds = %if.then48, %if.end44
  %res.9 = phi i32 [ 0, %if.then48 ], [ %res.8, %if.end44 ]
  %cmp50.not = icmp eq i8* %call45, %call36
  br i1 %cmp50.not, label %if.end53, label %if.then52

if.then52:                                        ; preds = %if.end49
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 739, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.68, i64 0, i64 0)) #5
  br label %if.end53

if.end53:                                         ; preds = %if.then52, %if.end49
  %res.10 = phi i32 [ 0, %if.then52 ], [ %res.9, %if.end49 ]
  %call54 = tail call i64 @ERR_peek_error() #5
  %conv55 = trunc i64 %call54 to i32
  %call56 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 739, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.57, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.58, i64 0, i64 0), i32 noundef %conv55, i32 noundef 0) #5
  %tobool57.not = icmp ne i32 %call56, 0
  %cmp6097 = icmp ne i32 %res.10, 0
  %cmp60 = select i1 %tobool57.not, i1 %cmp6097, i1 false
  %conv61 = zext i1 %cmp60 to i32
  %call62 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 739, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.69, i64 0, i64 0), i32 noundef %conv61) #5
  ret i32 %call62
}

declare dso_local i32 @OSSL_CMP_CTX_set_transfer_cb_arg(%struct.ossl_cmp_ctx_st* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local i8* @OSSL_CMP_CTX_get_transfer_cb_arg(%struct.ossl_cmp_ctx_st* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @execute_CTX_set1_get0_srvCert(%struct.test_fixture* nocapture noundef readonly %fixture) unnamed_addr #1 {
entry:
  %ctx1 = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %fixture, i64 0, i32 1
  %0 = load %struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_ctx_st** %ctx1, align 8, !tbaa !7
  %1 = load %struct.x509_st*, %struct.x509_st** @test_cert, align 8, !tbaa !3
  %call = tail call %struct.x509_st* @X509_dup(%struct.x509_st* noundef %1) #5
  %2 = load %struct.x509_st*, %struct.x509_st** @test_cert, align 8, !tbaa !3
  %call2 = tail call %struct.x509_st* @X509_dup(%struct.x509_st* noundef %2) #5
  %call3 = tail call i64 @ERR_peek_error() #5
  %conv = trunc i64 %call3 to i32
  %call4 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 741, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.57, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.58, i64 0, i64 0), i32 noundef %conv, i32 noundef 0) #5
  %call5 = tail call i32 @OSSL_CMP_CTX_set1_srvCert(%struct.ossl_cmp_ctx_st* noundef null, %struct.x509_st* noundef %call) #5
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %lor.lhs.false, label %if.then9

lor.lhs.false:                                    ; preds = %entry
  %tobool.not = icmp ne i32 %call4, 0
  %spec.select = zext i1 %tobool.not to i32
  %call7 = tail call i64 @ERR_peek_error() #5
  %cmp = icmp eq i64 %call7, 0
  br i1 %cmp, label %if.then9, label %if.end10

if.then9:                                         ; preds = %lor.lhs.false, %entry
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 741, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.59, i64 0, i64 0)) #5
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %lor.lhs.false
  %res.1 = phi i32 [ 0, %if.then9 ], [ %spec.select, %lor.lhs.false ]
  tail call void @ERR_clear_error() #5
  %call11 = tail call fastcc %struct.x509_st* @OSSL_CMP_CTX_get0_srvCert(%struct.ossl_cmp_ctx_st* noundef null) #6
  %cmp12.not = icmp eq %struct.x509_st* %call11, null
  br i1 %cmp12.not, label %lor.lhs.false14, label %if.then18

lor.lhs.false14:                                  ; preds = %if.end10
  %call15 = tail call i64 @ERR_peek_error() #5
  %cmp16 = icmp eq i64 %call15, 0
  br i1 %cmp16, label %if.then18, label %if.end19

if.then18:                                        ; preds = %lor.lhs.false14, %if.end10
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 741, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.60, i64 0, i64 0)) #5
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %lor.lhs.false14
  %res.2 = phi i32 [ 0, %if.then18 ], [ %res.1, %lor.lhs.false14 ]
  tail call void @ERR_clear_error() #5
  %call20 = tail call fastcc %struct.x509_st* @OSSL_CMP_CTX_get0_srvCert(%struct.ossl_cmp_ctx_st* noundef %0) #6
  %cmp21 = icmp eq %struct.x509_st* %call20, null
  br i1 %cmp21, label %if.end24, label %if.then23

if.then23:                                        ; preds = %if.end19
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 741, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.61, i64 0, i64 0)) #5
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %if.end19
  %res.3 = phi i32 [ %res.2, %if.end19 ], [ 0, %if.then23 ]
  %call25 = tail call i32 @OSSL_CMP_CTX_set1_srvCert(%struct.ossl_cmp_ctx_st* noundef %0, %struct.x509_st* noundef %call) #5
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.end24
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 741, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.62, i64 0, i64 0)) #5
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %if.end24
  %res.4 = phi i32 [ %res.3, %if.end24 ], [ 0, %if.then27 ]
  %call29 = tail call fastcc %struct.x509_st* @OSSL_CMP_CTX_get0_srvCert(%struct.ossl_cmp_ctx_st* noundef %0) #6
  %cmp30 = icmp eq %struct.x509_st* %call29, null
  br i1 %cmp30, label %if.then32, label %if.end33

if.then32:                                        ; preds = %if.end28
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 741, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.124, i64 0, i64 0)) #5
  br label %if.end33

if.end33:                                         ; preds = %if.then32, %if.end28
  %res.5 = phi i32 [ 0, %if.then32 ], [ %res.4, %if.end28 ]
  %call34 = tail call i32 @OSSL_CMP_CTX_set1_srvCert(%struct.ossl_cmp_ctx_st* noundef %0, %struct.x509_st* noundef %call2) #5
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.then36, label %if.end37

if.then36:                                        ; preds = %if.end33
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 741, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.64, i64 0, i64 0)) #5
  br label %if.end37

if.end37:                                         ; preds = %if.then36, %if.end33
  %res.6 = phi i32 [ %res.5, %if.end33 ], [ 0, %if.then36 ]
  %call38 = tail call fastcc %struct.x509_st* @OSSL_CMP_CTX_get0_srvCert(%struct.ossl_cmp_ctx_st* noundef %0) #6
  %cmp39 = icmp eq %struct.x509_st* %call38, null
  br i1 %cmp39, label %if.then41, label %if.end42

if.then41:                                        ; preds = %if.end37
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 741, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.65, i64 0, i64 0)) #5
  br label %if.end42

if.end42:                                         ; preds = %if.then41, %if.end37
  %res.7 = phi i32 [ 0, %if.then41 ], [ %res.6, %if.end37 ]
  %cmp43 = icmp eq %struct.x509_st* %call2, %call
  br i1 %cmp43, label %if.then45, label %if.end46

if.then45:                                        ; preds = %if.end42
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 741, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.126, i64 0, i64 0)) #5
  br label %if.end46

if.end46:                                         ; preds = %if.then45, %if.end42
  %res.8 = phi i32 [ 0, %if.then45 ], [ %res.7, %if.end42 ]
  %call47 = tail call fastcc %struct.x509_st* @OSSL_CMP_CTX_get0_srvCert(%struct.ossl_cmp_ctx_st* noundef %0) #6
  %cmp48 = icmp eq %struct.x509_st* %call47, null
  br i1 %cmp48, label %if.then50, label %if.end51

if.then50:                                        ; preds = %if.end46
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 741, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.67, i64 0, i64 0)) #5
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %if.end46
  %res.9 = phi i32 [ 0, %if.then50 ], [ %res.8, %if.end46 ]
  %cmp52.not = icmp eq %struct.x509_st* %call47, %call38
  br i1 %cmp52.not, label %if.end55, label %if.then54

if.then54:                                        ; preds = %if.end51
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 741, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.68, i64 0, i64 0)) #5
  br label %if.end55

if.end55:                                         ; preds = %if.then54, %if.end51
  %res.10 = phi i32 [ 0, %if.then54 ], [ %res.9, %if.end51 ]
  %call56 = tail call i64 @ERR_peek_error() #5
  %conv57 = trunc i64 %call56 to i32
  %call58 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 741, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.57, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.58, i64 0, i64 0), i32 noundef %conv57, i32 noundef 0) #5
  %tobool59.not = icmp ne i32 %call58, 0
  tail call void @X509_free(%struct.x509_st* noundef %call) #5
  tail call void @X509_free(%struct.x509_st* noundef %call2) #5
  %cmp6296 = icmp ne i32 %res.10, 0
  %cmp62 = select i1 %tobool59.not, i1 %cmp6296, i1 false
  %conv63 = zext i1 %cmp62 to i32
  %call64 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 741, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.69, i64 0, i64 0), i32 noundef %conv63) #5
  ret i32 %call64
}

declare dso_local i32 @OSSL_CMP_CTX_set1_srvCert(%struct.ossl_cmp_ctx_st* noundef, %struct.x509_st* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.x509_st* @OSSL_CMP_CTX_get0_srvCert(%struct.ossl_cmp_ctx_st* noundef readonly %ctx) unnamed_addr #1 {
entry:
  %cmp = icmp eq %struct.ossl_cmp_ctx_st* %ctx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 741, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.OSSL_CMP_CTX_get0_srvCert, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 103, i8* noundef null) #5
  br label %return

if.end:                                           ; preds = %entry
  %srvCert = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 19
  %0 = load %struct.x509_st*, %struct.x509_st** %srvCert, align 8, !tbaa !35
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi %struct.x509_st* [ null, %if.then ], [ %0, %if.end ]
  ret %struct.x509_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @execute_CTX_set0_get0_validatedSrvCert(%struct.test_fixture* nocapture noundef readonly %fixture) unnamed_addr #1 {
entry:
  %ctx1 = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %fixture, i64 0, i32 1
  %0 = load %struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_ctx_st** %ctx1, align 8, !tbaa !7
  %1 = load %struct.x509_st*, %struct.x509_st** @test_cert, align 8, !tbaa !3
  %call = tail call %struct.x509_st* @X509_dup(%struct.x509_st* noundef %1) #5
  %2 = load %struct.x509_st*, %struct.x509_st** @test_cert, align 8, !tbaa !3
  %call2 = tail call %struct.x509_st* @X509_dup(%struct.x509_st* noundef %2) #5
  %call3 = tail call i64 @ERR_peek_error() #5
  %conv = trunc i64 %call3 to i32
  %call4 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 742, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.57, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.58, i64 0, i64 0), i32 noundef %conv, i32 noundef 0) #5
  tail call void @ERR_clear_error() #5
  %call5 = tail call fastcc %struct.x509_st* @OSSL_CMP_CTX_get0_validatedSrvCert(%struct.ossl_cmp_ctx_st* noundef null) #6
  %cmp.not = icmp eq %struct.x509_st* %call5, null
  br i1 %cmp.not, label %lor.lhs.false, label %if.then10

lor.lhs.false:                                    ; preds = %entry
  %tobool.not = icmp ne i32 %call4, 0
  %spec.select = zext i1 %tobool.not to i32
  %call7 = tail call i64 @ERR_peek_error() #5
  %cmp8 = icmp eq i64 %call7, 0
  br i1 %cmp8, label %if.then10, label %if.end11

if.then10:                                        ; preds = %lor.lhs.false, %entry
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 742, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.60, i64 0, i64 0)) #5
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %lor.lhs.false
  %res.1 = phi i32 [ 0, %if.then10 ], [ %spec.select, %lor.lhs.false ]
  tail call void @ERR_clear_error() #5
  %call12 = tail call fastcc %struct.x509_st* @OSSL_CMP_CTX_get0_validatedSrvCert(%struct.ossl_cmp_ctx_st* noundef %0) #6
  %cmp13 = icmp eq %struct.x509_st* %call12, null
  br i1 %cmp13, label %if.end16, label %if.then15

if.then15:                                        ; preds = %if.end11
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 742, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.61, i64 0, i64 0)) #5
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %if.end11
  %res.2 = phi i32 [ %res.1, %if.end11 ], [ 0, %if.then15 ]
  %call17 = tail call i32 @ossl_cmp_ctx_set0_validatedSrvCert(%struct.ossl_cmp_ctx_st* noundef %0, %struct.x509_st* noundef %call) #5
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.end16
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 742, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.62, i64 0, i64 0)) #5
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %if.end16
  %res.3 = phi i32 [ %res.2, %if.end16 ], [ 0, %if.then19 ]
  %call21 = tail call fastcc %struct.x509_st* @OSSL_CMP_CTX_get0_validatedSrvCert(%struct.ossl_cmp_ctx_st* noundef %0) #6
  %cmp22.not = icmp eq %struct.x509_st* %call21, %call
  br i1 %cmp22.not, label %if.end25, label %if.then24

if.then24:                                        ; preds = %if.end20
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 742, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.63, i64 0, i64 0)) #5
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %if.end20
  %res.4 = phi i32 [ 0, %if.then24 ], [ %res.3, %if.end20 ]
  %call26 = tail call i32 @ossl_cmp_ctx_set0_validatedSrvCert(%struct.ossl_cmp_ctx_st* noundef %0, %struct.x509_st* noundef %call2) #5
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.then28, label %if.end29

if.then28:                                        ; preds = %if.end25
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 742, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.64, i64 0, i64 0)) #5
  br label %if.end29

if.end29:                                         ; preds = %if.then28, %if.end25
  %res.5 = phi i32 [ %res.4, %if.end25 ], [ 0, %if.then28 ]
  %call30 = tail call fastcc %struct.x509_st* @OSSL_CMP_CTX_get0_validatedSrvCert(%struct.ossl_cmp_ctx_st* noundef %0) #6
  %cmp31 = icmp eq %struct.x509_st* %call30, null
  br i1 %cmp31, label %if.then33, label %if.end34

if.then33:                                        ; preds = %if.end29
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 742, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.65, i64 0, i64 0)) #5
  br label %if.end34

if.end34:                                         ; preds = %if.then33, %if.end29
  %res.6 = phi i32 [ 0, %if.then33 ], [ %res.5, %if.end29 ]
  %cmp35.not = icmp eq %struct.x509_st* %call30, %call2
  br i1 %cmp35.not, label %if.end38, label %if.then37

if.then37:                                        ; preds = %if.end34
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 742, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.66, i64 0, i64 0)) #5
  br label %if.end38

if.end38:                                         ; preds = %if.then37, %if.end34
  %res.7 = phi i32 [ 0, %if.then37 ], [ %res.6, %if.end34 ]
  %call39 = tail call fastcc %struct.x509_st* @OSSL_CMP_CTX_get0_validatedSrvCert(%struct.ossl_cmp_ctx_st* noundef %0) #6
  %cmp40 = icmp eq %struct.x509_st* %call39, null
  br i1 %cmp40, label %if.then42, label %if.end43

if.then42:                                        ; preds = %if.end38
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 742, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.67, i64 0, i64 0)) #5
  br label %if.end43

if.end43:                                         ; preds = %if.then42, %if.end38
  %res.8 = phi i32 [ 0, %if.then42 ], [ %res.7, %if.end38 ]
  %cmp44.not = icmp eq %struct.x509_st* %call39, %call30
  br i1 %cmp44.not, label %if.end47, label %if.then46

if.then46:                                        ; preds = %if.end43
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 742, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.68, i64 0, i64 0)) #5
  br label %if.end47

if.end47:                                         ; preds = %if.then46, %if.end43
  %res.9 = phi i32 [ 0, %if.then46 ], [ %res.8, %if.end43 ]
  %call48 = tail call i64 @ERR_peek_error() #5
  %conv49 = trunc i64 %call48 to i32
  %call50 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 742, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.57, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.58, i64 0, i64 0), i32 noundef %conv49, i32 noundef 0) #5
  %tobool51.not = icmp ne i32 %call50, 0
  tail call void @X509_free(%struct.x509_st* noundef null) #5
  tail call void @X509_free(%struct.x509_st* noundef null) #5
  %cmp5487 = icmp ne i32 %res.9, 0
  %cmp54 = select i1 %tobool51.not, i1 %cmp5487, i1 false
  %conv55 = zext i1 %cmp54 to i32
  %call56 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 742, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.69, i64 0, i64 0), i32 noundef %conv55) #5
  ret i32 %call56
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.x509_st* @OSSL_CMP_CTX_get0_validatedSrvCert(%struct.ossl_cmp_ctx_st* noundef readonly %ctx) unnamed_addr #1 {
entry:
  %cmp = icmp eq %struct.ossl_cmp_ctx_st* %ctx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 742, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.OSSL_CMP_CTX_get0_validatedSrvCert, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 103, i8* noundef null) #5
  br label %return

if.end:                                           ; preds = %entry
  %validatedSrvCert = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 20
  %0 = load %struct.x509_st*, %struct.x509_st** %validatedSrvCert, align 8, !tbaa !20
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi %struct.x509_st* [ null, %if.then ], [ %0, %if.end ]
  ret %struct.x509_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @execute_CTX_set1_get0_expected_sender(%struct.test_fixture* nocapture noundef readonly %fixture) unnamed_addr #1 {
entry:
  %ctx1 = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %fixture, i64 0, i32 1
  %0 = load %struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_ctx_st** %ctx1, align 8, !tbaa !7
  %call = tail call %struct.X509_name_st* @X509_NAME_new() #5
  %call2 = tail call %struct.X509_name_st* @X509_NAME_new() #5
  %call3 = tail call i64 @ERR_peek_error() #5
  %conv = trunc i64 %call3 to i32
  %call4 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 743, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.57, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.58, i64 0, i64 0), i32 noundef %conv, i32 noundef 0) #5
  %call5 = tail call i32 @OSSL_CMP_CTX_set1_expected_sender(%struct.ossl_cmp_ctx_st* noundef null, %struct.X509_name_st* noundef %call) #5
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %lor.lhs.false, label %if.then9

lor.lhs.false:                                    ; preds = %entry
  %tobool.not = icmp ne i32 %call4, 0
  %spec.select = zext i1 %tobool.not to i32
  %call7 = tail call i64 @ERR_peek_error() #5
  %cmp = icmp eq i64 %call7, 0
  br i1 %cmp, label %if.then9, label %if.end10

if.then9:                                         ; preds = %lor.lhs.false, %entry
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 743, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.59, i64 0, i64 0)) #5
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %lor.lhs.false
  %res.1 = phi i32 [ 0, %if.then9 ], [ %spec.select, %lor.lhs.false ]
  tail call void @ERR_clear_error() #5
  %call11 = tail call fastcc %struct.X509_name_st* @OSSL_CMP_CTX_get0_expected_sender(%struct.ossl_cmp_ctx_st* noundef null) #6
  %cmp12.not = icmp eq %struct.X509_name_st* %call11, null
  br i1 %cmp12.not, label %lor.lhs.false14, label %if.then18

lor.lhs.false14:                                  ; preds = %if.end10
  %call15 = tail call i64 @ERR_peek_error() #5
  %cmp16 = icmp eq i64 %call15, 0
  br i1 %cmp16, label %if.then18, label %if.end19

if.then18:                                        ; preds = %lor.lhs.false14, %if.end10
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 743, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.60, i64 0, i64 0)) #5
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %lor.lhs.false14
  %res.2 = phi i32 [ 0, %if.then18 ], [ %res.1, %lor.lhs.false14 ]
  tail call void @ERR_clear_error() #5
  %call20 = tail call fastcc %struct.X509_name_st* @OSSL_CMP_CTX_get0_expected_sender(%struct.ossl_cmp_ctx_st* noundef %0) #6
  %cmp21 = icmp eq %struct.X509_name_st* %call20, null
  br i1 %cmp21, label %if.end24, label %if.then23

if.then23:                                        ; preds = %if.end19
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 743, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.61, i64 0, i64 0)) #5
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %if.end19
  %res.3 = phi i32 [ %res.2, %if.end19 ], [ 0, %if.then23 ]
  %call25 = tail call i32 @OSSL_CMP_CTX_set1_expected_sender(%struct.ossl_cmp_ctx_st* noundef %0, %struct.X509_name_st* noundef %call) #5
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.end24
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 743, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.62, i64 0, i64 0)) #5
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %if.end24
  %res.4 = phi i32 [ %res.3, %if.end24 ], [ 0, %if.then27 ]
  %call29 = tail call fastcc %struct.X509_name_st* @OSSL_CMP_CTX_get0_expected_sender(%struct.ossl_cmp_ctx_st* noundef %0) #6
  %cmp30 = icmp eq %struct.X509_name_st* %call29, %call
  br i1 %cmp30, label %if.then32, label %if.end33

if.then32:                                        ; preds = %if.end28
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 743, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.123, i64 0, i64 0)) #5
  br label %if.end33

if.end33:                                         ; preds = %if.then32, %if.end28
  %res.5 = phi i32 [ 0, %if.then32 ], [ %res.4, %if.end28 ]
  %cmp34 = icmp eq %struct.X509_name_st* %call29, null
  br i1 %cmp34, label %if.then36, label %if.end37

if.then36:                                        ; preds = %if.end33
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 743, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.124, i64 0, i64 0)) #5
  br label %if.end37

if.end37:                                         ; preds = %if.then36, %if.end33
  %res.6 = phi i32 [ 0, %if.then36 ], [ %res.5, %if.end33 ]
  %call38 = tail call i32 @OSSL_CMP_CTX_set1_expected_sender(%struct.ossl_cmp_ctx_st* noundef %0, %struct.X509_name_st* noundef %call2) #5
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.then40, label %if.end41

if.then40:                                        ; preds = %if.end37
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 743, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.64, i64 0, i64 0)) #5
  br label %if.end41

if.end41:                                         ; preds = %if.then40, %if.end37
  %res.7 = phi i32 [ %res.6, %if.end37 ], [ 0, %if.then40 ]
  %call42 = tail call fastcc %struct.X509_name_st* @OSSL_CMP_CTX_get0_expected_sender(%struct.ossl_cmp_ctx_st* noundef %0) #6
  %cmp43 = icmp eq %struct.X509_name_st* %call42, null
  br i1 %cmp43, label %if.then45, label %if.end46

if.then45:                                        ; preds = %if.end41
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 743, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.65, i64 0, i64 0)) #5
  br label %if.end46

if.end46:                                         ; preds = %if.then45, %if.end41
  %res.8 = phi i32 [ 0, %if.then45 ], [ %res.7, %if.end41 ]
  %cmp47 = icmp eq %struct.X509_name_st* %call42, %call2
  br i1 %cmp47, label %if.then49, label %if.end50

if.then49:                                        ; preds = %if.end46
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 743, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.125, i64 0, i64 0)) #5
  br label %if.end50

if.end50:                                         ; preds = %if.then49, %if.end46
  %res.9 = phi i32 [ 0, %if.then49 ], [ %res.8, %if.end46 ]
  %cmp51 = icmp eq %struct.X509_name_st* %call2, %call
  br i1 %cmp51, label %if.then53, label %if.end54

if.then53:                                        ; preds = %if.end50
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 743, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.126, i64 0, i64 0)) #5
  br label %if.end54

if.end54:                                         ; preds = %if.then53, %if.end50
  %res.10 = phi i32 [ 0, %if.then53 ], [ %res.9, %if.end50 ]
  %call55 = tail call fastcc %struct.X509_name_st* @OSSL_CMP_CTX_get0_expected_sender(%struct.ossl_cmp_ctx_st* noundef %0) #6
  %cmp56 = icmp eq %struct.X509_name_st* %call55, null
  br i1 %cmp56, label %if.then58, label %if.end59

if.then58:                                        ; preds = %if.end54
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 743, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.67, i64 0, i64 0)) #5
  br label %if.end59

if.end59:                                         ; preds = %if.then58, %if.end54
  %res.11 = phi i32 [ 0, %if.then58 ], [ %res.10, %if.end54 ]
  %cmp60.not = icmp eq %struct.X509_name_st* %call55, %call42
  br i1 %cmp60.not, label %if.end63, label %if.then62

if.then62:                                        ; preds = %if.end59
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 743, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.68, i64 0, i64 0)) #5
  br label %if.end63

if.end63:                                         ; preds = %if.then62, %if.end59
  %res.12 = phi i32 [ 0, %if.then62 ], [ %res.11, %if.end59 ]
  %call64 = tail call i64 @ERR_peek_error() #5
  %conv65 = trunc i64 %call64 to i32
  %call66 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 743, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.57, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.58, i64 0, i64 0), i32 noundef %conv65, i32 noundef 0) #5
  %tobool67.not = icmp ne i32 %call66, 0
  tail call void @X509_NAME_free(%struct.X509_name_st* noundef %call) #5
  tail call void @X509_NAME_free(%struct.X509_name_st* noundef %call2) #5
  %cmp70108 = icmp ne i32 %res.12, 0
  %cmp70 = select i1 %tobool67.not, i1 %cmp70108, i1 false
  %conv71 = zext i1 %cmp70 to i32
  %call72 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 743, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.69, i64 0, i64 0), i32 noundef %conv71) #5
  ret i32 %call72
}

declare dso_local i32 @OSSL_CMP_CTX_set1_expected_sender(%struct.ossl_cmp_ctx_st* noundef, %struct.X509_name_st* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.X509_name_st* @OSSL_CMP_CTX_get0_expected_sender(%struct.ossl_cmp_ctx_st* noundef readonly %ctx) unnamed_addr #1 {
entry:
  %cmp = icmp eq %struct.ossl_cmp_ctx_st* %ctx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 743, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.OSSL_CMP_CTX_get0_expected_sender, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 103, i8* noundef null) #5
  br label %return

if.end:                                           ; preds = %entry
  %expected_sender = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 21
  %0 = load %struct.X509_name_st*, %struct.X509_name_st** %expected_sender, align 8, !tbaa !36
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi %struct.X509_name_st* [ null, %if.then ], [ %0, %if.end ]
  ret %struct.X509_name_st* %retval.0
}

declare dso_local %struct.X509_name_st* @X509_NAME_new() local_unnamed_addr #3

declare dso_local void @X509_NAME_free(%struct.X509_name_st* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @execute_CTX_set0_get0_trustedStore(%struct.test_fixture* nocapture noundef readonly %fixture) unnamed_addr #1 {
entry:
  %ctx1 = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %fixture, i64 0, i32 1
  %0 = load %struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_ctx_st** %ctx1, align 8, !tbaa !7
  %call = tail call fastcc %struct.x509_store_st* @X509_STORE_new_1() #6
  %call2 = tail call fastcc %struct.x509_store_st* @X509_STORE_new_1() #6
  %call3 = tail call i64 @ERR_peek_error() #5
  %conv = trunc i64 %call3 to i32
  %call4 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 746, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.57, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.58, i64 0, i64 0), i32 noundef %conv, i32 noundef 0) #5
  %call5 = tail call i32 @OSSL_CMP_CTX_set0_trustedStore(%struct.ossl_cmp_ctx_st* noundef null, %struct.x509_store_st* noundef %call) #5
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %lor.lhs.false, label %if.then9

lor.lhs.false:                                    ; preds = %entry
  %tobool.not = icmp ne i32 %call4, 0
  %spec.select = zext i1 %tobool.not to i32
  %call7 = tail call i64 @ERR_peek_error() #5
  %cmp = icmp eq i64 %call7, 0
  br i1 %cmp, label %if.then9, label %if.end10

if.then9:                                         ; preds = %lor.lhs.false, %entry
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 746, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.59, i64 0, i64 0)) #5
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %lor.lhs.false
  %res.1 = phi i32 [ 0, %if.then9 ], [ %spec.select, %lor.lhs.false ]
  tail call void @ERR_clear_error() #5
  %call11 = tail call %struct.x509_store_st* @OSSL_CMP_CTX_get0_trustedStore(%struct.ossl_cmp_ctx_st* noundef null) #5
  %cmp12.not = icmp eq %struct.x509_store_st* %call11, null
  br i1 %cmp12.not, label %lor.lhs.false14, label %if.then18

lor.lhs.false14:                                  ; preds = %if.end10
  %call15 = tail call i64 @ERR_peek_error() #5
  %cmp16 = icmp eq i64 %call15, 0
  br i1 %cmp16, label %if.then18, label %if.end19

if.then18:                                        ; preds = %lor.lhs.false14, %if.end10
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 746, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.60, i64 0, i64 0)) #5
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %lor.lhs.false14
  %res.2 = phi i32 [ 0, %if.then18 ], [ %res.1, %lor.lhs.false14 ]
  tail call void @ERR_clear_error() #5
  %call20 = tail call %struct.x509_store_st* @OSSL_CMP_CTX_get0_trustedStore(%struct.ossl_cmp_ctx_st* noundef %0) #5
  %cmp21 = icmp eq %struct.x509_store_st* %call20, null
  br i1 %cmp21, label %if.end29, label %lor.lhs.false23

lor.lhs.false23:                                  ; preds = %if.end19
  %call24 = tail call %struct.X509_VERIFY_PARAM_st* @X509_STORE_get0_param(%struct.x509_store_st* noundef nonnull %call20) #5
  %call25 = tail call i64 @X509_VERIFY_PARAM_get_flags(%struct.X509_VERIFY_PARAM_st* noundef %call24) #5
  %cmp26 = icmp eq i64 %call25, 0
  br i1 %cmp26, label %if.end29, label %if.then28

if.then28:                                        ; preds = %lor.lhs.false23
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 746, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.61, i64 0, i64 0)) #5
  br label %if.end29

if.end29:                                         ; preds = %if.then28, %lor.lhs.false23, %if.end19
  %res.3 = phi i32 [ %res.2, %if.end19 ], [ %res.2, %lor.lhs.false23 ], [ 0, %if.then28 ]
  %call30 = tail call i32 @OSSL_CMP_CTX_set0_trustedStore(%struct.ossl_cmp_ctx_st* noundef %0, %struct.x509_store_st* noundef %call) #5
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.then32, label %if.end33

if.then32:                                        ; preds = %if.end29
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 746, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.62, i64 0, i64 0)) #5
  br label %if.end33

if.end33:                                         ; preds = %if.then32, %if.end29
  %res.4 = phi i32 [ %res.3, %if.end29 ], [ 0, %if.then32 ]
  %call34 = tail call %struct.x509_store_st* @OSSL_CMP_CTX_get0_trustedStore(%struct.ossl_cmp_ctx_st* noundef %0) #5
  %cmp35.not = icmp eq %struct.x509_store_st* %call34, %call
  br i1 %cmp35.not, label %if.end38, label %if.then37

if.then37:                                        ; preds = %if.end33
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 746, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.63, i64 0, i64 0)) #5
  br label %if.end38

if.end38:                                         ; preds = %if.then37, %if.end33
  %res.5 = phi i32 [ 0, %if.then37 ], [ %res.4, %if.end33 ]
  %call39 = tail call i32 @OSSL_CMP_CTX_set0_trustedStore(%struct.ossl_cmp_ctx_st* noundef %0, %struct.x509_store_st* noundef %call2) #5
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.then41, label %if.end42

if.then41:                                        ; preds = %if.end38
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 746, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.64, i64 0, i64 0)) #5
  br label %if.end42

if.end42:                                         ; preds = %if.then41, %if.end38
  %res.6 = phi i32 [ %res.5, %if.end38 ], [ 0, %if.then41 ]
  %call43 = tail call %struct.x509_store_st* @OSSL_CMP_CTX_get0_trustedStore(%struct.ossl_cmp_ctx_st* noundef %0) #5
  %cmp44 = icmp eq %struct.x509_store_st* %call43, null
  br i1 %cmp44, label %if.then51, label %lor.lhs.false46

lor.lhs.false46:                                  ; preds = %if.end42
  %call47 = tail call %struct.X509_VERIFY_PARAM_st* @X509_STORE_get0_param(%struct.x509_store_st* noundef nonnull %call43) #5
  %call48 = tail call i64 @X509_VERIFY_PARAM_get_flags(%struct.X509_VERIFY_PARAM_st* noundef %call47) #5
  %cmp49 = icmp eq i64 %call48, 0
  br i1 %cmp49, label %if.then51, label %if.end52

if.then51:                                        ; preds = %lor.lhs.false46, %if.end42
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 746, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.65, i64 0, i64 0)) #5
  br label %if.end52

if.end52:                                         ; preds = %if.then51, %lor.lhs.false46
  %res.7 = phi i32 [ 0, %if.then51 ], [ %res.6, %lor.lhs.false46 ]
  %cmp53.not = icmp eq %struct.x509_store_st* %call43, %call2
  br i1 %cmp53.not, label %if.end56, label %if.then55

if.then55:                                        ; preds = %if.end52
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 746, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.66, i64 0, i64 0)) #5
  br label %if.end56

if.end56:                                         ; preds = %if.then55, %if.end52
  %res.8 = phi i32 [ 0, %if.then55 ], [ %res.7, %if.end52 ]
  %call57 = tail call %struct.x509_store_st* @OSSL_CMP_CTX_get0_trustedStore(%struct.ossl_cmp_ctx_st* noundef %0) #5
  %cmp58 = icmp eq %struct.x509_store_st* %call57, null
  br i1 %cmp58, label %if.then65, label %lor.lhs.false60

lor.lhs.false60:                                  ; preds = %if.end56
  %call61 = tail call %struct.X509_VERIFY_PARAM_st* @X509_STORE_get0_param(%struct.x509_store_st* noundef nonnull %call57) #5
  %call62 = tail call i64 @X509_VERIFY_PARAM_get_flags(%struct.X509_VERIFY_PARAM_st* noundef %call61) #5
  %cmp63 = icmp eq i64 %call62, 0
  br i1 %cmp63, label %if.then65, label %if.end66

if.then65:                                        ; preds = %lor.lhs.false60, %if.end56
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 746, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.67, i64 0, i64 0)) #5
  br label %if.end66

if.end66:                                         ; preds = %if.then65, %lor.lhs.false60
  %res.9 = phi i32 [ 0, %if.then65 ], [ %res.8, %lor.lhs.false60 ]
  %cmp67.not = icmp eq %struct.x509_store_st* %call57, %call43
  br i1 %cmp67.not, label %if.end70, label %if.then69

if.then69:                                        ; preds = %if.end66
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 746, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.68, i64 0, i64 0)) #5
  br label %if.end70

if.end70:                                         ; preds = %if.then69, %if.end66
  %res.10 = phi i32 [ 0, %if.then69 ], [ %res.9, %if.end66 ]
  %call71 = tail call i64 @ERR_peek_error() #5
  %conv72 = trunc i64 %call71 to i32
  %call73 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 746, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.57, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.58, i64 0, i64 0), i32 noundef %conv72, i32 noundef 0) #5
  %tobool74.not = icmp ne i32 %call73, 0
  tail call void @X509_STORE_free(%struct.x509_store_st* noundef null) #5
  tail call void @X509_STORE_free(%struct.x509_store_st* noundef null) #5
  %cmp77115 = icmp ne i32 %res.10, 0
  %cmp77 = select i1 %tobool74.not, i1 %cmp77115, i1 false
  %conv78 = zext i1 %cmp77 to i32
  %call79 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 746, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.69, i64 0, i64 0), i32 noundef %conv78) #5
  ret i32 %call79
}

declare dso_local i32 @OSSL_CMP_CTX_set0_trustedStore(%struct.ossl_cmp_ctx_st* noundef, %struct.x509_store_st* noundef) local_unnamed_addr #3

declare dso_local %struct.x509_store_st* @OSSL_CMP_CTX_get0_trustedStore(%struct.ossl_cmp_ctx_st* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.x509_store_st* @X509_STORE_new_1() unnamed_addr #1 {
entry:
  %call = tail call %struct.x509_store_st* @X509_STORE_new() #5
  %cmp.not = icmp eq %struct.x509_store_st* %call, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = tail call %struct.X509_VERIFY_PARAM_st* @X509_STORE_get0_param(%struct.x509_store_st* noundef nonnull %call) #5
  %call2 = tail call i32 @X509_VERIFY_PARAM_set_flags(%struct.X509_VERIFY_PARAM_st* noundef %call1, i64 noundef 1) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret %struct.x509_store_st* %call
}

declare dso_local i64 @X509_VERIFY_PARAM_get_flags(%struct.X509_VERIFY_PARAM_st* noundef) local_unnamed_addr #3

declare dso_local %struct.X509_VERIFY_PARAM_st* @X509_STORE_get0_param(%struct.x509_store_st* noundef) local_unnamed_addr #3

declare dso_local void @X509_STORE_free(%struct.x509_store_st* noundef) local_unnamed_addr #3

declare dso_local %struct.x509_store_st* @X509_STORE_new() local_unnamed_addr #3

declare dso_local i32 @X509_VERIFY_PARAM_set_flags(%struct.X509_VERIFY_PARAM_st* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @execute_CTX_set1_get0_untrusted(%struct.test_fixture* nocapture noundef readonly %fixture) unnamed_addr #1 {
entry:
  %ctx1 = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %fixture, i64 0, i32 1
  %0 = load %struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_ctx_st** %ctx1, align 8, !tbaa !7
  %call = tail call fastcc %struct.stack_st_X509* @sk_X509_new_1() #6
  %call2 = tail call fastcc %struct.stack_st_X509* @sk_X509_new_1() #6
  %call3 = tail call i64 @ERR_peek_error() #5
  %conv = trunc i64 %call3 to i32
  %call4 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 747, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.57, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.58, i64 0, i64 0), i32 noundef %conv, i32 noundef 0) #5
  %call5 = tail call i32 @OSSL_CMP_CTX_set1_untrusted(%struct.ossl_cmp_ctx_st* noundef null, %struct.stack_st_X509* noundef %call) #5
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %lor.lhs.false, label %if.then9

lor.lhs.false:                                    ; preds = %entry
  %tobool.not = icmp ne i32 %call4, 0
  %spec.select = zext i1 %tobool.not to i32
  %call7 = tail call i64 @ERR_peek_error() #5
  %cmp = icmp eq i64 %call7, 0
  br i1 %cmp, label %if.then9, label %if.end10

if.then9:                                         ; preds = %lor.lhs.false, %entry
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 747, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.59, i64 0, i64 0)) #5
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %lor.lhs.false
  %res.1 = phi i32 [ 0, %if.then9 ], [ %spec.select, %lor.lhs.false ]
  tail call void @ERR_clear_error() #5
  %call11 = tail call %struct.stack_st_X509* @OSSL_CMP_CTX_get0_untrusted(%struct.ossl_cmp_ctx_st* noundef null) #5
  %cmp12.not = icmp eq %struct.stack_st_X509* %call11, null
  br i1 %cmp12.not, label %lor.lhs.false14, label %if.then18

lor.lhs.false14:                                  ; preds = %if.end10
  %call15 = tail call i64 @ERR_peek_error() #5
  %cmp16 = icmp eq i64 %call15, 0
  br i1 %cmp16, label %if.then18, label %if.end19

if.then18:                                        ; preds = %lor.lhs.false14, %if.end10
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 747, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.60, i64 0, i64 0)) #5
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %lor.lhs.false14
  %res.2 = phi i32 [ 0, %if.then18 ], [ %res.1, %lor.lhs.false14 ]
  tail call void @ERR_clear_error() #5
  %call20 = tail call %struct.stack_st_X509* @OSSL_CMP_CTX_get0_untrusted(%struct.ossl_cmp_ctx_st* noundef %0) #5
  %cmp21 = icmp eq %struct.stack_st_X509* %call20, null
  br i1 %cmp21, label %if.end29, label %lor.lhs.false23

lor.lhs.false23:                                  ; preds = %if.end19
  %call24 = tail call fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef nonnull %call20) #6
  %call25 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call24) #5
  %cmp26 = icmp eq i32 %call25, 0
  br i1 %cmp26, label %if.end29, label %if.then28

if.then28:                                        ; preds = %lor.lhs.false23
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 747, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.61, i64 0, i64 0)) #5
  br label %if.end29

if.end29:                                         ; preds = %if.then28, %lor.lhs.false23, %if.end19
  %res.3 = phi i32 [ %res.2, %if.end19 ], [ %res.2, %lor.lhs.false23 ], [ 0, %if.then28 ]
  %call30 = tail call i32 @OSSL_CMP_CTX_set1_untrusted(%struct.ossl_cmp_ctx_st* noundef %0, %struct.stack_st_X509* noundef %call) #5
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.then32, label %if.end33

if.then32:                                        ; preds = %if.end29
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 747, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.62, i64 0, i64 0)) #5
  br label %if.end33

if.end33:                                         ; preds = %if.then32, %if.end29
  %res.4 = phi i32 [ %res.3, %if.end29 ], [ 0, %if.then32 ]
  %call34 = tail call %struct.stack_st_X509* @OSSL_CMP_CTX_get0_untrusted(%struct.ossl_cmp_ctx_st* noundef %0) #5
  %cmp35 = icmp eq %struct.stack_st_X509* %call34, %call
  br i1 %cmp35, label %if.then37, label %if.end38

if.then37:                                        ; preds = %if.end33
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 747, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.123, i64 0, i64 0)) #5
  br label %if.end38

if.end38:                                         ; preds = %if.then37, %if.end33
  %res.5 = phi i32 [ 0, %if.then37 ], [ %res.4, %if.end33 ]
  %cmp39 = icmp eq %struct.stack_st_X509* %call34, null
  br i1 %cmp39, label %if.then46, label %lor.lhs.false41

lor.lhs.false41:                                  ; preds = %if.end38
  %call42 = tail call fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef nonnull %call34) #6
  %call43 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call42) #5
  %cmp44 = icmp eq i32 %call43, 0
  br i1 %cmp44, label %if.then46, label %if.end47

if.then46:                                        ; preds = %lor.lhs.false41, %if.end38
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 747, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.124, i64 0, i64 0)) #5
  br label %if.end47

if.end47:                                         ; preds = %if.then46, %lor.lhs.false41
  %res.6 = phi i32 [ 0, %if.then46 ], [ %res.5, %lor.lhs.false41 ]
  %call48 = tail call i32 @OSSL_CMP_CTX_set1_untrusted(%struct.ossl_cmp_ctx_st* noundef %0, %struct.stack_st_X509* noundef %call2) #5
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.then50, label %if.end51

if.then50:                                        ; preds = %if.end47
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 747, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.64, i64 0, i64 0)) #5
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %if.end47
  %res.7 = phi i32 [ %res.6, %if.end47 ], [ 0, %if.then50 ]
  %call52 = tail call %struct.stack_st_X509* @OSSL_CMP_CTX_get0_untrusted(%struct.ossl_cmp_ctx_st* noundef %0) #5
  %cmp53 = icmp eq %struct.stack_st_X509* %call52, null
  br i1 %cmp53, label %if.then60, label %lor.lhs.false55

lor.lhs.false55:                                  ; preds = %if.end51
  %call56 = tail call fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef nonnull %call52) #6
  %call57 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call56) #5
  %cmp58 = icmp eq i32 %call57, 0
  br i1 %cmp58, label %if.then60, label %if.end61

if.then60:                                        ; preds = %lor.lhs.false55, %if.end51
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 747, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.65, i64 0, i64 0)) #5
  br label %if.end61

if.end61:                                         ; preds = %if.then60, %lor.lhs.false55
  %res.8 = phi i32 [ 0, %if.then60 ], [ %res.7, %lor.lhs.false55 ]
  %cmp62 = icmp eq %struct.stack_st_X509* %call52, %call2
  br i1 %cmp62, label %if.then64, label %if.end65

if.then64:                                        ; preds = %if.end61
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 747, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.125, i64 0, i64 0)) #5
  br label %if.end65

if.end65:                                         ; preds = %if.then64, %if.end61
  %res.9 = phi i32 [ 0, %if.then64 ], [ %res.8, %if.end61 ]
  %cmp66 = icmp eq %struct.stack_st_X509* %call2, %call
  br i1 %cmp66, label %if.then68, label %if.end69

if.then68:                                        ; preds = %if.end65
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 747, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.126, i64 0, i64 0)) #5
  br label %if.end69

if.end69:                                         ; preds = %if.then68, %if.end65
  %res.10 = phi i32 [ 0, %if.then68 ], [ %res.9, %if.end65 ]
  %call70 = tail call %struct.stack_st_X509* @OSSL_CMP_CTX_get0_untrusted(%struct.ossl_cmp_ctx_st* noundef %0) #5
  %cmp71 = icmp eq %struct.stack_st_X509* %call70, null
  br i1 %cmp71, label %if.then78, label %lor.lhs.false73

lor.lhs.false73:                                  ; preds = %if.end69
  %call74 = tail call fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef nonnull %call70) #6
  %call75 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call74) #5
  %cmp76 = icmp eq i32 %call75, 0
  br i1 %cmp76, label %if.then78, label %if.end79

if.then78:                                        ; preds = %lor.lhs.false73, %if.end69
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 747, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.67, i64 0, i64 0)) #5
  br label %if.end79

if.end79:                                         ; preds = %if.then78, %lor.lhs.false73
  %res.11 = phi i32 [ 0, %if.then78 ], [ %res.10, %lor.lhs.false73 ]
  %cmp80.not = icmp eq %struct.stack_st_X509* %call70, %call52
  br i1 %cmp80.not, label %if.end83, label %if.then82

if.then82:                                        ; preds = %if.end79
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 747, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.68, i64 0, i64 0)) #5
  br label %if.end83

if.end83:                                         ; preds = %if.then82, %if.end79
  %res.12 = phi i32 [ 0, %if.then82 ], [ %res.11, %if.end79 ]
  %call84 = tail call i64 @ERR_peek_error() #5
  %conv85 = trunc i64 %call84 to i32
  %call86 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 747, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.57, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.58, i64 0, i64 0), i32 noundef %conv85, i32 noundef 0) #5
  %tobool87.not = icmp ne i32 %call86, 0
  tail call fastcc void @sk_X509_pop_X509_free(%struct.stack_st_X509* noundef %call) #6
  tail call fastcc void @sk_X509_pop_X509_free(%struct.stack_st_X509* noundef %call2) #6
  %cmp90132 = icmp ne i32 %res.12, 0
  %cmp90 = select i1 %tobool87.not, i1 %cmp90132, i1 false
  %conv91 = zext i1 %cmp90 to i32
  %call92 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 747, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.69, i64 0, i64 0), i32 noundef %conv91) #5
  ret i32 %call92
}

declare dso_local i32 @OSSL_CMP_CTX_set1_untrusted(%struct.ossl_cmp_ctx_st* noundef, %struct.stack_st_X509* noundef) local_unnamed_addr #3

declare dso_local %struct.stack_st_X509* @OSSL_CMP_CTX_get0_untrusted(%struct.ossl_cmp_ctx_st* noundef) local_unnamed_addr #3

declare dso_local i32 @OPENSSL_sk_num(%struct.stack_st* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef readnone %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_X509* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @execute_CTX_set1_get0_cert(%struct.test_fixture* nocapture noundef readonly %fixture) unnamed_addr #1 {
entry:
  %ctx1 = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %fixture, i64 0, i32 1
  %0 = load %struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_ctx_st** %ctx1, align 8, !tbaa !7
  %1 = load %struct.x509_st*, %struct.x509_st** @test_cert, align 8, !tbaa !3
  %call = tail call %struct.x509_st* @X509_dup(%struct.x509_st* noundef %1) #5
  %2 = load %struct.x509_st*, %struct.x509_st** @test_cert, align 8, !tbaa !3
  %call2 = tail call %struct.x509_st* @X509_dup(%struct.x509_st* noundef %2) #5
  %call3 = tail call i64 @ERR_peek_error() #5
  %conv = trunc i64 %call3 to i32
  %call4 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 749, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.57, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.58, i64 0, i64 0), i32 noundef %conv, i32 noundef 0) #5
  %call5 = tail call i32 @OSSL_CMP_CTX_set1_cert(%struct.ossl_cmp_ctx_st* noundef null, %struct.x509_st* noundef %call) #5
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %lor.lhs.false, label %if.then9

lor.lhs.false:                                    ; preds = %entry
  %tobool.not = icmp ne i32 %call4, 0
  %spec.select = zext i1 %tobool.not to i32
  %call7 = tail call i64 @ERR_peek_error() #5
  %cmp = icmp eq i64 %call7, 0
  br i1 %cmp, label %if.then9, label %if.end10

if.then9:                                         ; preds = %lor.lhs.false, %entry
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 749, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.59, i64 0, i64 0)) #5
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %lor.lhs.false
  %res.1 = phi i32 [ 0, %if.then9 ], [ %spec.select, %lor.lhs.false ]
  tail call void @ERR_clear_error() #5
  %call11 = tail call fastcc %struct.x509_st* @OSSL_CMP_CTX_get0_cert(%struct.ossl_cmp_ctx_st* noundef null) #6
  %cmp12.not = icmp eq %struct.x509_st* %call11, null
  br i1 %cmp12.not, label %lor.lhs.false14, label %if.then18

lor.lhs.false14:                                  ; preds = %if.end10
  %call15 = tail call i64 @ERR_peek_error() #5
  %cmp16 = icmp eq i64 %call15, 0
  br i1 %cmp16, label %if.then18, label %if.end19

if.then18:                                        ; preds = %lor.lhs.false14, %if.end10
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 749, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.60, i64 0, i64 0)) #5
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %lor.lhs.false14
  %res.2 = phi i32 [ 0, %if.then18 ], [ %res.1, %lor.lhs.false14 ]
  tail call void @ERR_clear_error() #5
  %call20 = tail call fastcc %struct.x509_st* @OSSL_CMP_CTX_get0_cert(%struct.ossl_cmp_ctx_st* noundef %0) #6
  %cmp21 = icmp eq %struct.x509_st* %call20, null
  br i1 %cmp21, label %if.end24, label %if.then23

if.then23:                                        ; preds = %if.end19
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 749, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.61, i64 0, i64 0)) #5
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %if.end19
  %res.3 = phi i32 [ %res.2, %if.end19 ], [ 0, %if.then23 ]
  %call25 = tail call i32 @OSSL_CMP_CTX_set1_cert(%struct.ossl_cmp_ctx_st* noundef %0, %struct.x509_st* noundef %call) #5
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.end24
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 749, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.62, i64 0, i64 0)) #5
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %if.end24
  %res.4 = phi i32 [ %res.3, %if.end24 ], [ 0, %if.then27 ]
  %call29 = tail call fastcc %struct.x509_st* @OSSL_CMP_CTX_get0_cert(%struct.ossl_cmp_ctx_st* noundef %0) #6
  %cmp30 = icmp eq %struct.x509_st* %call29, null
  br i1 %cmp30, label %if.then32, label %if.end33

if.then32:                                        ; preds = %if.end28
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 749, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.124, i64 0, i64 0)) #5
  br label %if.end33

if.end33:                                         ; preds = %if.then32, %if.end28
  %res.5 = phi i32 [ 0, %if.then32 ], [ %res.4, %if.end28 ]
  %call34 = tail call i32 @OSSL_CMP_CTX_set1_cert(%struct.ossl_cmp_ctx_st* noundef %0, %struct.x509_st* noundef %call2) #5
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.then36, label %if.end37

if.then36:                                        ; preds = %if.end33
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 749, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.64, i64 0, i64 0)) #5
  br label %if.end37

if.end37:                                         ; preds = %if.then36, %if.end33
  %res.6 = phi i32 [ %res.5, %if.end33 ], [ 0, %if.then36 ]
  %call38 = tail call fastcc %struct.x509_st* @OSSL_CMP_CTX_get0_cert(%struct.ossl_cmp_ctx_st* noundef %0) #6
  %cmp39 = icmp eq %struct.x509_st* %call38, null
  br i1 %cmp39, label %if.then41, label %if.end42

if.then41:                                        ; preds = %if.end37
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 749, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.65, i64 0, i64 0)) #5
  br label %if.end42

if.end42:                                         ; preds = %if.then41, %if.end37
  %res.7 = phi i32 [ 0, %if.then41 ], [ %res.6, %if.end37 ]
  %cmp43 = icmp eq %struct.x509_st* %call2, %call
  br i1 %cmp43, label %if.then45, label %if.end46

if.then45:                                        ; preds = %if.end42
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 749, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.126, i64 0, i64 0)) #5
  br label %if.end46

if.end46:                                         ; preds = %if.then45, %if.end42
  %res.8 = phi i32 [ 0, %if.then45 ], [ %res.7, %if.end42 ]
  %call47 = tail call fastcc %struct.x509_st* @OSSL_CMP_CTX_get0_cert(%struct.ossl_cmp_ctx_st* noundef %0) #6
  %cmp48 = icmp eq %struct.x509_st* %call47, null
  br i1 %cmp48, label %if.then50, label %if.end51

if.then50:                                        ; preds = %if.end46
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 749, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.67, i64 0, i64 0)) #5
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %if.end46
  %res.9 = phi i32 [ 0, %if.then50 ], [ %res.8, %if.end46 ]
  %cmp52.not = icmp eq %struct.x509_st* %call47, %call38
  br i1 %cmp52.not, label %if.end55, label %if.then54

if.then54:                                        ; preds = %if.end51
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 749, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.68, i64 0, i64 0)) #5
  br label %if.end55

if.end55:                                         ; preds = %if.then54, %if.end51
  %res.10 = phi i32 [ 0, %if.then54 ], [ %res.9, %if.end51 ]
  %call56 = tail call i64 @ERR_peek_error() #5
  %conv57 = trunc i64 %call56 to i32
  %call58 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 749, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.57, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.58, i64 0, i64 0), i32 noundef %conv57, i32 noundef 0) #5
  %tobool59.not = icmp ne i32 %call58, 0
  tail call void @X509_free(%struct.x509_st* noundef %call) #5
  tail call void @X509_free(%struct.x509_st* noundef %call2) #5
  %cmp6296 = icmp ne i32 %res.10, 0
  %cmp62 = select i1 %tobool59.not, i1 %cmp6296, i1 false
  %conv63 = zext i1 %cmp62 to i32
  %call64 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 749, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.69, i64 0, i64 0), i32 noundef %conv63) #5
  ret i32 %call64
}

declare dso_local i32 @OSSL_CMP_CTX_set1_cert(%struct.ossl_cmp_ctx_st* noundef, %struct.x509_st* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.x509_st* @OSSL_CMP_CTX_get0_cert(%struct.ossl_cmp_ctx_st* noundef readonly %ctx) unnamed_addr #1 {
entry:
  %cmp = icmp eq %struct.ossl_cmp_ctx_st* %ctx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 749, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.OSSL_CMP_CTX_get0_cert, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 103, i8* noundef null) #5
  br label %return

if.end:                                           ; preds = %entry
  %cert = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 27
  %0 = load %struct.x509_st*, %struct.x509_st** %cert, align 8, !tbaa !37
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi %struct.x509_st* [ null, %if.then ], [ %0, %if.end ]
  ret %struct.x509_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @execute_CTX_set1_get0_pkey(%struct.test_fixture* nocapture noundef readonly %fixture) unnamed_addr #1 {
entry:
  %ctx1 = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %fixture, i64 0, i32 1
  %0 = load %struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_ctx_st** %ctx1, align 8, !tbaa !7
  %call = tail call %struct.evp_pkey_st* @EVP_PKEY_new() #5
  %call2 = tail call %struct.evp_pkey_st* @EVP_PKEY_new() #5
  %call3 = tail call i64 @ERR_peek_error() #5
  %conv = trunc i64 %call3 to i32
  %call4 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 750, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.57, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.58, i64 0, i64 0), i32 noundef %conv, i32 noundef 0) #5
  %call5 = tail call i32 @OSSL_CMP_CTX_set1_pkey(%struct.ossl_cmp_ctx_st* noundef null, %struct.evp_pkey_st* noundef %call) #5
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %lor.lhs.false, label %if.then9

lor.lhs.false:                                    ; preds = %entry
  %tobool.not = icmp ne i32 %call4, 0
  %spec.select = zext i1 %tobool.not to i32
  %call7 = tail call i64 @ERR_peek_error() #5
  %cmp = icmp eq i64 %call7, 0
  br i1 %cmp, label %if.then9, label %if.end10

if.then9:                                         ; preds = %lor.lhs.false, %entry
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 750, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.59, i64 0, i64 0)) #5
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %lor.lhs.false
  %res.1 = phi i32 [ 0, %if.then9 ], [ %spec.select, %lor.lhs.false ]
  tail call void @ERR_clear_error() #5
  %call11 = tail call fastcc %struct.evp_pkey_st* @OSSL_CMP_CTX_get0_pkey(%struct.ossl_cmp_ctx_st* noundef null) #6
  %cmp12.not = icmp eq %struct.evp_pkey_st* %call11, null
  br i1 %cmp12.not, label %lor.lhs.false14, label %if.then18

lor.lhs.false14:                                  ; preds = %if.end10
  %call15 = tail call i64 @ERR_peek_error() #5
  %cmp16 = icmp eq i64 %call15, 0
  br i1 %cmp16, label %if.then18, label %if.end19

if.then18:                                        ; preds = %lor.lhs.false14, %if.end10
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 750, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.60, i64 0, i64 0)) #5
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %lor.lhs.false14
  %res.2 = phi i32 [ 0, %if.then18 ], [ %res.1, %lor.lhs.false14 ]
  tail call void @ERR_clear_error() #5
  %call20 = tail call fastcc %struct.evp_pkey_st* @OSSL_CMP_CTX_get0_pkey(%struct.ossl_cmp_ctx_st* noundef %0) #6
  %cmp21 = icmp eq %struct.evp_pkey_st* %call20, null
  br i1 %cmp21, label %if.end24, label %if.then23

if.then23:                                        ; preds = %if.end19
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 750, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.61, i64 0, i64 0)) #5
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %if.end19
  %res.3 = phi i32 [ %res.2, %if.end19 ], [ 0, %if.then23 ]
  %call25 = tail call i32 @OSSL_CMP_CTX_set1_pkey(%struct.ossl_cmp_ctx_st* noundef %0, %struct.evp_pkey_st* noundef %call) #5
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.end24
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 750, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.62, i64 0, i64 0)) #5
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %if.end24
  %res.4 = phi i32 [ %res.3, %if.end24 ], [ 0, %if.then27 ]
  %call29 = tail call fastcc %struct.evp_pkey_st* @OSSL_CMP_CTX_get0_pkey(%struct.ossl_cmp_ctx_st* noundef %0) #6
  %cmp30 = icmp eq %struct.evp_pkey_st* %call29, null
  br i1 %cmp30, label %if.then32, label %if.end33

if.then32:                                        ; preds = %if.end28
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 750, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.124, i64 0, i64 0)) #5
  br label %if.end33

if.end33:                                         ; preds = %if.then32, %if.end28
  %res.5 = phi i32 [ 0, %if.then32 ], [ %res.4, %if.end28 ]
  %call34 = tail call i32 @OSSL_CMP_CTX_set1_pkey(%struct.ossl_cmp_ctx_st* noundef %0, %struct.evp_pkey_st* noundef %call2) #5
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.then36, label %if.end37

if.then36:                                        ; preds = %if.end33
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 750, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.64, i64 0, i64 0)) #5
  br label %if.end37

if.end37:                                         ; preds = %if.then36, %if.end33
  %res.6 = phi i32 [ %res.5, %if.end33 ], [ 0, %if.then36 ]
  %call38 = tail call fastcc %struct.evp_pkey_st* @OSSL_CMP_CTX_get0_pkey(%struct.ossl_cmp_ctx_st* noundef %0) #6
  %cmp39 = icmp eq %struct.evp_pkey_st* %call38, null
  br i1 %cmp39, label %if.then41, label %if.end42

if.then41:                                        ; preds = %if.end37
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 750, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.65, i64 0, i64 0)) #5
  br label %if.end42

if.end42:                                         ; preds = %if.then41, %if.end37
  %res.7 = phi i32 [ 0, %if.then41 ], [ %res.6, %if.end37 ]
  %cmp43 = icmp eq %struct.evp_pkey_st* %call2, %call
  br i1 %cmp43, label %if.then45, label %if.end46

if.then45:                                        ; preds = %if.end42
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 750, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.126, i64 0, i64 0)) #5
  br label %if.end46

if.end46:                                         ; preds = %if.then45, %if.end42
  %res.8 = phi i32 [ 0, %if.then45 ], [ %res.7, %if.end42 ]
  %call47 = tail call fastcc %struct.evp_pkey_st* @OSSL_CMP_CTX_get0_pkey(%struct.ossl_cmp_ctx_st* noundef %0) #6
  %cmp48 = icmp eq %struct.evp_pkey_st* %call47, null
  br i1 %cmp48, label %if.then50, label %if.end51

if.then50:                                        ; preds = %if.end46
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 750, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.67, i64 0, i64 0)) #5
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %if.end46
  %res.9 = phi i32 [ 0, %if.then50 ], [ %res.8, %if.end46 ]
  %cmp52.not = icmp eq %struct.evp_pkey_st* %call47, %call38
  br i1 %cmp52.not, label %if.end55, label %if.then54

if.then54:                                        ; preds = %if.end51
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 750, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.68, i64 0, i64 0)) #5
  br label %if.end55

if.end55:                                         ; preds = %if.then54, %if.end51
  %res.10 = phi i32 [ 0, %if.then54 ], [ %res.9, %if.end51 ]
  %call56 = tail call i64 @ERR_peek_error() #5
  %conv57 = trunc i64 %call56 to i32
  %call58 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 750, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.57, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.58, i64 0, i64 0), i32 noundef %conv57, i32 noundef 0) #5
  %tobool59.not = icmp ne i32 %call58, 0
  tail call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %call) #5
  tail call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %call2) #5
  %cmp6296 = icmp ne i32 %res.10, 0
  %cmp62 = select i1 %tobool59.not, i1 %cmp6296, i1 false
  %conv63 = zext i1 %cmp62 to i32
  %call64 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 750, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.69, i64 0, i64 0), i32 noundef %conv63) #5
  ret i32 %call64
}

declare dso_local i32 @OSSL_CMP_CTX_set1_pkey(%struct.ossl_cmp_ctx_st* noundef, %struct.evp_pkey_st* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.evp_pkey_st* @OSSL_CMP_CTX_get0_pkey(%struct.ossl_cmp_ctx_st* noundef readonly %ctx) unnamed_addr #1 {
entry:
  %cmp = icmp eq %struct.ossl_cmp_ctx_st* %ctx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 750, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.OSSL_CMP_CTX_get0_pkey, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 103, i8* noundef null) #5
  br label %return

if.end:                                           ; preds = %entry
  %pkey = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 29
  %0 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey, align 8, !tbaa !38
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi %struct.evp_pkey_st* [ null, %if.then ], [ %0, %if.end ]
  ret %struct.evp_pkey_st* %retval.0
}

declare dso_local %struct.evp_pkey_st* @EVP_PKEY_new() local_unnamed_addr #3

declare dso_local void @EVP_PKEY_free(%struct.evp_pkey_st* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @execute_CTX_set1_get1_referenceValue_str(%struct.test_fixture* nocapture noundef readonly %fixture) unnamed_addr #1 {
entry:
  %ctx1 = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %fixture, i64 0, i32 1
  %0 = load %struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_ctx_st** %ctx1, align 8, !tbaa !7
  %call = tail call fastcc i8* @char_new() #6
  %call2 = tail call fastcc i8* @char_new() #6
  %call3 = tail call i64 @ERR_peek_error() #5
  %conv = trunc i64 %call3 to i32
  %call4 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 761, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.57, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.58, i64 0, i64 0), i32 noundef %conv, i32 noundef 0) #5
  %call5 = tail call fastcc i32 @OSSL_CMP_CTX_set1_referenceValue_str(%struct.ossl_cmp_ctx_st* noundef null, i8* noundef %call) #6
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %lor.lhs.false, label %if.then9

lor.lhs.false:                                    ; preds = %entry
  %tobool.not = icmp ne i32 %call4, 0
  %spec.select = zext i1 %tobool.not to i32
  %call7 = tail call i64 @ERR_peek_error() #5
  %cmp = icmp eq i64 %call7, 0
  br i1 %cmp, label %if.then9, label %if.end10

if.then9:                                         ; preds = %lor.lhs.false, %entry
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 761, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.59, i64 0, i64 0)) #5
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %lor.lhs.false
  %res.1 = phi i32 [ 0, %if.then9 ], [ %spec.select, %lor.lhs.false ]
  tail call void @ERR_clear_error() #5
  %call11 = tail call fastcc i8* @OSSL_CMP_CTX_get1_referenceValue_str(%struct.ossl_cmp_ctx_st* noundef null) #6
  %cmp12.not = icmp eq i8* %call11, null
  br i1 %cmp12.not, label %lor.lhs.false14, label %if.then18

lor.lhs.false14:                                  ; preds = %if.end10
  %call15 = tail call i64 @ERR_peek_error() #5
  %cmp16 = icmp eq i64 %call15, 0
  br i1 %cmp16, label %if.then18, label %if.end19

if.then18:                                        ; preds = %lor.lhs.false14, %if.end10
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 761, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.60, i64 0, i64 0)) #5
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %lor.lhs.false14
  %res.2 = phi i32 [ 0, %if.then18 ], [ %res.1, %lor.lhs.false14 ]
  tail call void @ERR_clear_error() #5
  %call20 = tail call fastcc i8* @OSSL_CMP_CTX_get1_referenceValue_str(%struct.ossl_cmp_ctx_st* noundef %0) #6
  %cmp21 = icmp eq i8* %call20, null
  br i1 %cmp21, label %if.end24, label %if.then23

if.then23:                                        ; preds = %if.end19
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 761, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.61, i64 0, i64 0)) #5
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %if.end19
  %res.3 = phi i32 [ %res.2, %if.end19 ], [ 0, %if.then23 ]
  %call25 = tail call fastcc i32 @OSSL_CMP_CTX_set1_referenceValue_str(%struct.ossl_cmp_ctx_st* noundef %0, i8* noundef %call) #6
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.end24
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 761, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.62, i64 0, i64 0)) #5
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %if.end24
  %res.4 = phi i32 [ %res.3, %if.end24 ], [ 0, %if.then27 ]
  tail call fastcc void @char_free(i8* noundef %call20) #6
  %call29 = tail call fastcc i8* @OSSL_CMP_CTX_get1_referenceValue_str(%struct.ossl_cmp_ctx_st* noundef %0) #6
  %cmp30 = icmp eq i8* %call29, %call
  br i1 %cmp30, label %if.then32, label %if.end33

if.then32:                                        ; preds = %if.end28
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 761, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.123, i64 0, i64 0)) #5
  br label %if.end33

if.end33:                                         ; preds = %if.then32, %if.end28
  %res.5 = phi i32 [ 0, %if.then32 ], [ %res.4, %if.end28 ]
  %cmp34 = icmp eq i8* %call29, null
  br i1 %cmp34, label %if.then36, label %if.end37

if.then36:                                        ; preds = %if.end33
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 761, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.124, i64 0, i64 0)) #5
  br label %if.end37

if.end37:                                         ; preds = %if.then36, %if.end33
  %res.6 = phi i32 [ 0, %if.then36 ], [ %res.5, %if.end33 ]
  %call38 = tail call fastcc i32 @OSSL_CMP_CTX_set1_referenceValue_str(%struct.ossl_cmp_ctx_st* noundef %0, i8* noundef %call2) #6
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.then40, label %if.end41

if.then40:                                        ; preds = %if.end37
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 761, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.64, i64 0, i64 0)) #5
  br label %if.end41

if.end41:                                         ; preds = %if.then40, %if.end37
  %res.7 = phi i32 [ %res.6, %if.end37 ], [ 0, %if.then40 ]
  %call42 = tail call fastcc i8* @OSSL_CMP_CTX_get1_referenceValue_str(%struct.ossl_cmp_ctx_st* noundef %0) #6
  %cmp43 = icmp eq i8* %call42, null
  br i1 %cmp43, label %if.then45, label %if.end46

if.then45:                                        ; preds = %if.end41
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 761, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.65, i64 0, i64 0)) #5
  br label %if.end46

if.end46:                                         ; preds = %if.then45, %if.end41
  %res.8 = phi i32 [ 0, %if.then45 ], [ %res.7, %if.end41 ]
  %cmp47 = icmp eq i8* %call42, %call2
  br i1 %cmp47, label %if.then49, label %if.end50

if.then49:                                        ; preds = %if.end46
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 761, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.125, i64 0, i64 0)) #5
  br label %if.end50

if.end50:                                         ; preds = %if.then49, %if.end46
  %res.9 = phi i32 [ 0, %if.then49 ], [ %res.8, %if.end46 ]
  %cmp51 = icmp eq i8* %call2, %call
  br i1 %cmp51, label %if.then53, label %if.end54

if.then53:                                        ; preds = %if.end50
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 761, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.126, i64 0, i64 0)) #5
  br label %if.end54

if.end54:                                         ; preds = %if.then53, %if.end50
  %res.10 = phi i32 [ 0, %if.then53 ], [ %res.9, %if.end50 ]
  %cmp55 = icmp eq i8* %call42, %call29
  br i1 %cmp55, label %if.then57, label %if.end58

if.then57:                                        ; preds = %if.end54
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 761, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.128, i64 0, i64 0)) #5
  br label %if.end58

if.end58:                                         ; preds = %if.then57, %if.end54
  %res.11 = phi i32 [ 0, %if.then57 ], [ %res.10, %if.end54 ]
  %call59 = tail call fastcc i8* @OSSL_CMP_CTX_get1_referenceValue_str(%struct.ossl_cmp_ctx_st* noundef %0) #6
  %cmp60 = icmp eq i8* %call59, null
  br i1 %cmp60, label %if.then62, label %if.end63

if.then62:                                        ; preds = %if.end58
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 761, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.67, i64 0, i64 0)) #5
  br label %if.end63

if.end63:                                         ; preds = %if.then62, %if.end58
  %res.12 = phi i32 [ 0, %if.then62 ], [ %res.11, %if.end58 ]
  %cmp64 = icmp eq i8* %call59, %call42
  br i1 %cmp64, label %if.then66, label %if.end67

if.then66:                                        ; preds = %if.end63
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 761, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.129, i64 0, i64 0)) #5
  br label %if.end67

if.end67:                                         ; preds = %if.then66, %if.end63
  %res.13 = phi i32 [ 0, %if.then66 ], [ %res.12, %if.end63 ]
  %call68 = tail call i64 @ERR_peek_error() #5
  %conv69 = trunc i64 %call68 to i32
  %call70 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 761, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.57, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.58, i64 0, i64 0), i32 noundef %conv69, i32 noundef 0) #5
  %tobool71.not = icmp ne i32 %call70, 0
  tail call fastcc void @char_free(i8* noundef %call) #6
  tail call fastcc void @char_free(i8* noundef %call2) #6
  tail call fastcc void @char_free(i8* noundef %call29) #6
  tail call fastcc void @char_free(i8* noundef %call42) #6
  tail call fastcc void @char_free(i8* noundef %call59) #6
  %cmp74118 = icmp ne i32 %res.13, 0
  %cmp74 = select i1 %tobool71.not, i1 %cmp74118, i1 false
  %conv75 = zext i1 %cmp74 to i32
  %call76 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 761, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.69, i64 0, i64 0), i32 noundef %conv75) #5
  ret i32 %call76
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @OSSL_CMP_CTX_set1_referenceValue_str(%struct.ossl_cmp_ctx_st* noundef %ctx, i8* noundef %val) unnamed_addr #1 {
entry:
  %call = tail call i64 @strlen(i8* noundef %val) #7
  %conv = trunc i64 %call to i32
  %call1 = tail call i32 @OSSL_CMP_CTX_set1_referenceValue(%struct.ossl_cmp_ctx_st* noundef %ctx, i8* noundef %val, i32 noundef %conv) #5
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i8* @OSSL_CMP_CTX_get1_referenceValue_str(%struct.ossl_cmp_ctx_st* noundef readonly %ctx) unnamed_addr #1 {
entry:
  %cmp = icmp eq %struct.ossl_cmp_ctx_st* %ctx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 759, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @__func__.OSSL_CMP_CTX_get1_referenceValue_str, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 103, i8* noundef null) #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %referenceValue = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 30
  %0 = load %struct.asn1_string_st*, %struct.asn1_string_st** %referenceValue, align 8, !tbaa !39
  %cmp1 = icmp eq %struct.asn1_string_st* %0, null
  br i1 %cmp1, label %cleanup, label %cond.false

cond.false:                                       ; preds = %if.end
  %data = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %0, i64 0, i32 2
  %1 = load i8*, i8** %data, align 8, !tbaa !40
  %length = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %0, i64 0, i32 0
  %2 = load i32, i32* %length, align 8, !tbaa !42
  %conv = sext i32 %2 to i64
  %call = tail call i8* @CRYPTO_strndup(i8* noundef %1, i64 noundef %conv, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 759) #5
  br label %cleanup

cleanup:                                          ; preds = %cond.false, %if.end, %if.then
  %retval.0 = phi i8* [ null, %if.then ], [ %call, %cond.false ], [ null, %if.end ]
  ret i8* %retval.0
}

declare dso_local i32 @OSSL_CMP_CTX_set1_referenceValue(%struct.ossl_cmp_ctx_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare dso_local i8* @CRYPTO_strndup(i8* noundef, i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @execute_CTX_set1_get1_secretValue_str(%struct.test_fixture* nocapture noundef readonly %fixture) unnamed_addr #1 {
entry:
  %ctx1 = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %fixture, i64 0, i32 1
  %0 = load %struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_ctx_st** %ctx1, align 8, !tbaa !7
  %call = tail call fastcc i8* @char_new() #6
  %call2 = tail call fastcc i8* @char_new() #6
  %call3 = tail call i64 @ERR_peek_error() #5
  %conv = trunc i64 %call3 to i32
  %call4 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 763, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.57, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.58, i64 0, i64 0), i32 noundef %conv, i32 noundef 0) #5
  %call5 = tail call fastcc i32 @OSSL_CMP_CTX_set1_secretValue_str(%struct.ossl_cmp_ctx_st* noundef null, i8* noundef %call) #6
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %lor.lhs.false, label %if.then9

lor.lhs.false:                                    ; preds = %entry
  %tobool.not = icmp ne i32 %call4, 0
  %spec.select = zext i1 %tobool.not to i32
  %call7 = tail call i64 @ERR_peek_error() #5
  %cmp = icmp eq i64 %call7, 0
  br i1 %cmp, label %if.then9, label %if.end10

if.then9:                                         ; preds = %lor.lhs.false, %entry
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 763, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.59, i64 0, i64 0)) #5
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %lor.lhs.false
  %res.1 = phi i32 [ 0, %if.then9 ], [ %spec.select, %lor.lhs.false ]
  tail call void @ERR_clear_error() #5
  %call11 = tail call fastcc i8* @OSSL_CMP_CTX_get1_secretValue_str(%struct.ossl_cmp_ctx_st* noundef null) #6
  %cmp12.not = icmp eq i8* %call11, null
  br i1 %cmp12.not, label %lor.lhs.false14, label %if.then18

lor.lhs.false14:                                  ; preds = %if.end10
  %call15 = tail call i64 @ERR_peek_error() #5
  %cmp16 = icmp eq i64 %call15, 0
  br i1 %cmp16, label %if.then18, label %if.end19

if.then18:                                        ; preds = %lor.lhs.false14, %if.end10
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 763, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.60, i64 0, i64 0)) #5
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %lor.lhs.false14
  %res.2 = phi i32 [ 0, %if.then18 ], [ %res.1, %lor.lhs.false14 ]
  tail call void @ERR_clear_error() #5
  %call20 = tail call fastcc i8* @OSSL_CMP_CTX_get1_secretValue_str(%struct.ossl_cmp_ctx_st* noundef %0) #6
  %cmp21 = icmp eq i8* %call20, null
  br i1 %cmp21, label %if.end24, label %if.then23

if.then23:                                        ; preds = %if.end19
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 763, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.61, i64 0, i64 0)) #5
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %if.end19
  %res.3 = phi i32 [ %res.2, %if.end19 ], [ 0, %if.then23 ]
  %call25 = tail call fastcc i32 @OSSL_CMP_CTX_set1_secretValue_str(%struct.ossl_cmp_ctx_st* noundef %0, i8* noundef %call) #6
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.end24
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 763, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.62, i64 0, i64 0)) #5
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %if.end24
  %res.4 = phi i32 [ %res.3, %if.end24 ], [ 0, %if.then27 ]
  tail call fastcc void @char_free(i8* noundef %call20) #6
  %call29 = tail call fastcc i8* @OSSL_CMP_CTX_get1_secretValue_str(%struct.ossl_cmp_ctx_st* noundef %0) #6
  %cmp30 = icmp eq i8* %call29, %call
  br i1 %cmp30, label %if.then32, label %if.end33

if.then32:                                        ; preds = %if.end28
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 763, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.123, i64 0, i64 0)) #5
  br label %if.end33

if.end33:                                         ; preds = %if.then32, %if.end28
  %res.5 = phi i32 [ 0, %if.then32 ], [ %res.4, %if.end28 ]
  %cmp34 = icmp eq i8* %call29, null
  br i1 %cmp34, label %if.then36, label %if.end37

if.then36:                                        ; preds = %if.end33
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 763, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.124, i64 0, i64 0)) #5
  br label %if.end37

if.end37:                                         ; preds = %if.then36, %if.end33
  %res.6 = phi i32 [ 0, %if.then36 ], [ %res.5, %if.end33 ]
  %call38 = tail call fastcc i32 @OSSL_CMP_CTX_set1_secretValue_str(%struct.ossl_cmp_ctx_st* noundef %0, i8* noundef %call2) #6
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.then40, label %if.end41

if.then40:                                        ; preds = %if.end37
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 763, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.64, i64 0, i64 0)) #5
  br label %if.end41

if.end41:                                         ; preds = %if.then40, %if.end37
  %res.7 = phi i32 [ %res.6, %if.end37 ], [ 0, %if.then40 ]
  %call42 = tail call fastcc i8* @OSSL_CMP_CTX_get1_secretValue_str(%struct.ossl_cmp_ctx_st* noundef %0) #6
  %cmp43 = icmp eq i8* %call42, null
  br i1 %cmp43, label %if.then45, label %if.end46

if.then45:                                        ; preds = %if.end41
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 763, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.65, i64 0, i64 0)) #5
  br label %if.end46

if.end46:                                         ; preds = %if.then45, %if.end41
  %res.8 = phi i32 [ 0, %if.then45 ], [ %res.7, %if.end41 ]
  %cmp47 = icmp eq i8* %call42, %call2
  br i1 %cmp47, label %if.then49, label %if.end50

if.then49:                                        ; preds = %if.end46
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 763, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.125, i64 0, i64 0)) #5
  br label %if.end50

if.end50:                                         ; preds = %if.then49, %if.end46
  %res.9 = phi i32 [ 0, %if.then49 ], [ %res.8, %if.end46 ]
  %cmp51 = icmp eq i8* %call2, %call
  br i1 %cmp51, label %if.then53, label %if.end54

if.then53:                                        ; preds = %if.end50
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 763, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.126, i64 0, i64 0)) #5
  br label %if.end54

if.end54:                                         ; preds = %if.then53, %if.end50
  %res.10 = phi i32 [ 0, %if.then53 ], [ %res.9, %if.end50 ]
  %cmp55 = icmp eq i8* %call42, %call29
  br i1 %cmp55, label %if.then57, label %if.end58

if.then57:                                        ; preds = %if.end54
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 763, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.128, i64 0, i64 0)) #5
  br label %if.end58

if.end58:                                         ; preds = %if.then57, %if.end54
  %res.11 = phi i32 [ 0, %if.then57 ], [ %res.10, %if.end54 ]
  %call59 = tail call fastcc i8* @OSSL_CMP_CTX_get1_secretValue_str(%struct.ossl_cmp_ctx_st* noundef %0) #6
  %cmp60 = icmp eq i8* %call59, null
  br i1 %cmp60, label %if.then62, label %if.end63

if.then62:                                        ; preds = %if.end58
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 763, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.67, i64 0, i64 0)) #5
  br label %if.end63

if.end63:                                         ; preds = %if.then62, %if.end58
  %res.12 = phi i32 [ 0, %if.then62 ], [ %res.11, %if.end58 ]
  %cmp64 = icmp eq i8* %call59, %call42
  br i1 %cmp64, label %if.then66, label %if.end67

if.then66:                                        ; preds = %if.end63
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 763, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.129, i64 0, i64 0)) #5
  br label %if.end67

if.end67:                                         ; preds = %if.then66, %if.end63
  %res.13 = phi i32 [ 0, %if.then66 ], [ %res.12, %if.end63 ]
  %call68 = tail call i64 @ERR_peek_error() #5
  %conv69 = trunc i64 %call68 to i32
  %call70 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 763, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.57, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.58, i64 0, i64 0), i32 noundef %conv69, i32 noundef 0) #5
  %tobool71.not = icmp ne i32 %call70, 0
  tail call fastcc void @char_free(i8* noundef %call) #6
  tail call fastcc void @char_free(i8* noundef %call2) #6
  tail call fastcc void @char_free(i8* noundef %call29) #6
  tail call fastcc void @char_free(i8* noundef %call42) #6
  tail call fastcc void @char_free(i8* noundef %call59) #6
  %cmp74118 = icmp ne i32 %res.13, 0
  %cmp74 = select i1 %tobool71.not, i1 %cmp74118, i1 false
  %conv75 = zext i1 %cmp74 to i32
  %call76 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 763, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.69, i64 0, i64 0), i32 noundef %conv75) #5
  ret i32 %call76
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @OSSL_CMP_CTX_set1_secretValue_str(%struct.ossl_cmp_ctx_st* noundef %ctx, i8* noundef %val) unnamed_addr #1 {
entry:
  %call = tail call i64 @strlen(i8* noundef %val) #7
  %conv = trunc i64 %call to i32
  %call1 = tail call i32 @OSSL_CMP_CTX_set1_secretValue(%struct.ossl_cmp_ctx_st* noundef %ctx, i8* noundef %val, i32 noundef %conv) #5
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i8* @OSSL_CMP_CTX_get1_secretValue_str(%struct.ossl_cmp_ctx_st* noundef readonly %ctx) unnamed_addr #1 {
entry:
  %cmp = icmp eq %struct.ossl_cmp_ctx_st* %ctx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 762, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.OSSL_CMP_CTX_get1_secretValue_str, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 103, i8* noundef null) #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %secretValue = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 31
  %0 = load %struct.asn1_string_st*, %struct.asn1_string_st** %secretValue, align 8, !tbaa !43
  %cmp1 = icmp eq %struct.asn1_string_st* %0, null
  br i1 %cmp1, label %cleanup, label %cond.false

cond.false:                                       ; preds = %if.end
  %data = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %0, i64 0, i32 2
  %1 = load i8*, i8** %data, align 8, !tbaa !40
  %length = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %0, i64 0, i32 0
  %2 = load i32, i32* %length, align 8, !tbaa !42
  %conv = sext i32 %2 to i64
  %call = tail call i8* @CRYPTO_strndup(i8* noundef %1, i64 noundef %conv, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 762) #5
  br label %cleanup

cleanup:                                          ; preds = %cond.false, %if.end, %if.then
  %retval.0 = phi i8* [ null, %if.then ], [ %call, %cond.false ], [ null, %if.end ]
  ret i8* %retval.0
}

declare dso_local i32 @OSSL_CMP_CTX_set1_secretValue(%struct.ossl_cmp_ctx_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @execute_CTX_set1_get0_recipient(%struct.test_fixture* nocapture noundef readonly %fixture) unnamed_addr #1 {
entry:
  %ctx1 = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %fixture, i64 0, i32 1
  %0 = load %struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_ctx_st** %ctx1, align 8, !tbaa !7
  %call = tail call %struct.X509_name_st* @X509_NAME_new() #5
  %call2 = tail call %struct.X509_name_st* @X509_NAME_new() #5
  %call3 = tail call i64 @ERR_peek_error() #5
  %conv = trunc i64 %call3 to i32
  %call4 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 752, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.57, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.58, i64 0, i64 0), i32 noundef %conv, i32 noundef 0) #5
  %call5 = tail call i32 @OSSL_CMP_CTX_set1_recipient(%struct.ossl_cmp_ctx_st* noundef null, %struct.X509_name_st* noundef %call) #5
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %lor.lhs.false, label %if.then9

lor.lhs.false:                                    ; preds = %entry
  %tobool.not = icmp ne i32 %call4, 0
  %spec.select = zext i1 %tobool.not to i32
  %call7 = tail call i64 @ERR_peek_error() #5
  %cmp = icmp eq i64 %call7, 0
  br i1 %cmp, label %if.then9, label %if.end10

if.then9:                                         ; preds = %lor.lhs.false, %entry
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 752, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.59, i64 0, i64 0)) #5
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %lor.lhs.false
  %res.1 = phi i32 [ 0, %if.then9 ], [ %spec.select, %lor.lhs.false ]
  tail call void @ERR_clear_error() #5
  %call11 = tail call fastcc %struct.X509_name_st* @OSSL_CMP_CTX_get0_recipient(%struct.ossl_cmp_ctx_st* noundef null) #6
  %cmp12.not = icmp eq %struct.X509_name_st* %call11, null
  br i1 %cmp12.not, label %lor.lhs.false14, label %if.then18

lor.lhs.false14:                                  ; preds = %if.end10
  %call15 = tail call i64 @ERR_peek_error() #5
  %cmp16 = icmp eq i64 %call15, 0
  br i1 %cmp16, label %if.then18, label %if.end19

if.then18:                                        ; preds = %lor.lhs.false14, %if.end10
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 752, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.60, i64 0, i64 0)) #5
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %lor.lhs.false14
  %res.2 = phi i32 [ 0, %if.then18 ], [ %res.1, %lor.lhs.false14 ]
  tail call void @ERR_clear_error() #5
  %call20 = tail call fastcc %struct.X509_name_st* @OSSL_CMP_CTX_get0_recipient(%struct.ossl_cmp_ctx_st* noundef %0) #6
  %cmp21 = icmp eq %struct.X509_name_st* %call20, null
  br i1 %cmp21, label %if.end24, label %if.then23

if.then23:                                        ; preds = %if.end19
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 752, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.61, i64 0, i64 0)) #5
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %if.end19
  %res.3 = phi i32 [ %res.2, %if.end19 ], [ 0, %if.then23 ]
  %call25 = tail call i32 @OSSL_CMP_CTX_set1_recipient(%struct.ossl_cmp_ctx_st* noundef %0, %struct.X509_name_st* noundef %call) #5
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.end24
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 752, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.62, i64 0, i64 0)) #5
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %if.end24
  %res.4 = phi i32 [ %res.3, %if.end24 ], [ 0, %if.then27 ]
  %call29 = tail call fastcc %struct.X509_name_st* @OSSL_CMP_CTX_get0_recipient(%struct.ossl_cmp_ctx_st* noundef %0) #6
  %cmp30 = icmp eq %struct.X509_name_st* %call29, %call
  br i1 %cmp30, label %if.then32, label %if.end33

if.then32:                                        ; preds = %if.end28
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 752, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.123, i64 0, i64 0)) #5
  br label %if.end33

if.end33:                                         ; preds = %if.then32, %if.end28
  %res.5 = phi i32 [ 0, %if.then32 ], [ %res.4, %if.end28 ]
  %cmp34 = icmp eq %struct.X509_name_st* %call29, null
  br i1 %cmp34, label %if.then36, label %if.end37

if.then36:                                        ; preds = %if.end33
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 752, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.124, i64 0, i64 0)) #5
  br label %if.end37

if.end37:                                         ; preds = %if.then36, %if.end33
  %res.6 = phi i32 [ 0, %if.then36 ], [ %res.5, %if.end33 ]
  %call38 = tail call i32 @OSSL_CMP_CTX_set1_recipient(%struct.ossl_cmp_ctx_st* noundef %0, %struct.X509_name_st* noundef %call2) #5
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.then40, label %if.end41

if.then40:                                        ; preds = %if.end37
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 752, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.64, i64 0, i64 0)) #5
  br label %if.end41

if.end41:                                         ; preds = %if.then40, %if.end37
  %res.7 = phi i32 [ %res.6, %if.end37 ], [ 0, %if.then40 ]
  %call42 = tail call fastcc %struct.X509_name_st* @OSSL_CMP_CTX_get0_recipient(%struct.ossl_cmp_ctx_st* noundef %0) #6
  %cmp43 = icmp eq %struct.X509_name_st* %call42, null
  br i1 %cmp43, label %if.then45, label %if.end46

if.then45:                                        ; preds = %if.end41
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 752, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.65, i64 0, i64 0)) #5
  br label %if.end46

if.end46:                                         ; preds = %if.then45, %if.end41
  %res.8 = phi i32 [ 0, %if.then45 ], [ %res.7, %if.end41 ]
  %cmp47 = icmp eq %struct.X509_name_st* %call42, %call2
  br i1 %cmp47, label %if.then49, label %if.end50

if.then49:                                        ; preds = %if.end46
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 752, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.125, i64 0, i64 0)) #5
  br label %if.end50

if.end50:                                         ; preds = %if.then49, %if.end46
  %res.9 = phi i32 [ 0, %if.then49 ], [ %res.8, %if.end46 ]
  %cmp51 = icmp eq %struct.X509_name_st* %call2, %call
  br i1 %cmp51, label %if.then53, label %if.end54

if.then53:                                        ; preds = %if.end50
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 752, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.126, i64 0, i64 0)) #5
  br label %if.end54

if.end54:                                         ; preds = %if.then53, %if.end50
  %res.10 = phi i32 [ 0, %if.then53 ], [ %res.9, %if.end50 ]
  %call55 = tail call fastcc %struct.X509_name_st* @OSSL_CMP_CTX_get0_recipient(%struct.ossl_cmp_ctx_st* noundef %0) #6
  %cmp56 = icmp eq %struct.X509_name_st* %call55, null
  br i1 %cmp56, label %if.then58, label %if.end59

if.then58:                                        ; preds = %if.end54
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 752, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.67, i64 0, i64 0)) #5
  br label %if.end59

if.end59:                                         ; preds = %if.then58, %if.end54
  %res.11 = phi i32 [ 0, %if.then58 ], [ %res.10, %if.end54 ]
  %cmp60.not = icmp eq %struct.X509_name_st* %call55, %call42
  br i1 %cmp60.not, label %if.end63, label %if.then62

if.then62:                                        ; preds = %if.end59
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 752, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.68, i64 0, i64 0)) #5
  br label %if.end63

if.end63:                                         ; preds = %if.then62, %if.end59
  %res.12 = phi i32 [ 0, %if.then62 ], [ %res.11, %if.end59 ]
  %call64 = tail call i64 @ERR_peek_error() #5
  %conv65 = trunc i64 %call64 to i32
  %call66 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 752, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.57, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.58, i64 0, i64 0), i32 noundef %conv65, i32 noundef 0) #5
  %tobool67.not = icmp ne i32 %call66, 0
  tail call void @X509_NAME_free(%struct.X509_name_st* noundef %call) #5
  tail call void @X509_NAME_free(%struct.X509_name_st* noundef %call2) #5
  %cmp70108 = icmp ne i32 %res.12, 0
  %cmp70 = select i1 %tobool67.not, i1 %cmp70108, i1 false
  %conv71 = zext i1 %cmp70 to i32
  %call72 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 752, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.69, i64 0, i64 0), i32 noundef %conv71) #5
  ret i32 %call72
}

declare dso_local i32 @OSSL_CMP_CTX_set1_recipient(%struct.ossl_cmp_ctx_st* noundef, %struct.X509_name_st* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.X509_name_st* @OSSL_CMP_CTX_get0_recipient(%struct.ossl_cmp_ctx_st* noundef readonly %ctx) unnamed_addr #1 {
entry:
  %cmp = icmp eq %struct.ossl_cmp_ctx_st* %ctx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 752, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.OSSL_CMP_CTX_get0_recipient, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 103, i8* noundef null) #5
  br label %return

if.end:                                           ; preds = %entry
  %recipient = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 36
  %0 = load %struct.X509_name_st*, %struct.X509_name_st** %recipient, align 8, !tbaa !44
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi %struct.X509_name_st* [ null, %if.then ], [ %0, %if.end ]
  ret %struct.X509_name_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @execute_CTX_push0_geninfo_ITAV(%struct.test_fixture* nocapture noundef readonly %fixture) unnamed_addr #1 {
entry:
  %ctx1 = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %fixture, i64 0, i32 1
  %0 = load %struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_ctx_st** %ctx1, align 8, !tbaa !7
  %geninfo_ITAVs = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %0, i64 0, i32 42
  %1 = load %struct.stack_st_OSSL_CMP_ITAV*, %struct.stack_st_OSSL_CMP_ITAV** %geninfo_ITAVs, align 8, !tbaa !45
  %call = tail call fastcc %struct.stack_st* @ossl_check_const_OSSL_CMP_ITAV_sk_type(%struct.stack_st_OSSL_CMP_ITAV* noundef %1) #6
  %call2 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #5
  %call3 = tail call %struct.ossl_cmp_itav_st* @OSSL_CMP_ITAV_new() #5
  %call4 = tail call %struct.ossl_cmp_itav_st* @OSSL_CMP_ITAV_new() #5
  %call5 = tail call i64 @ERR_peek_error() #5
  %conv = trunc i64 %call5 to i32
  %call6 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 753, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.57, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.58, i64 0, i64 0), i32 noundef %conv, i32 noundef 0) #5
  %call7 = tail call i32 @OSSL_CMP_CTX_push0_geninfo_ITAV(%struct.ossl_cmp_ctx_st* noundef null, %struct.ossl_cmp_itav_st* noundef %call3) #5
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %lor.lhs.false, label %if.then11

lor.lhs.false:                                    ; preds = %entry
  %tobool.not = icmp ne i32 %call6, 0
  %spec.select = zext i1 %tobool.not to i32
  %call9 = tail call i64 @ERR_peek_error() #5
  %cmp = icmp eq i64 %call9, 0
  br i1 %cmp, label %if.then11, label %if.end12

if.then11:                                        ; preds = %lor.lhs.false, %entry
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 753, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.130, i64 0, i64 0)) #5
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %lor.lhs.false
  %res.1 = phi i32 [ 0, %if.then11 ], [ %spec.select, %lor.lhs.false ]
  tail call void @ERR_clear_error() #5
  %2 = icmp sgt i32 %call2, 0
  %spec.store.select = select i1 %2, i32 %call2, i32 0
  %3 = load %struct.stack_st_OSSL_CMP_ITAV*, %struct.stack_st_OSSL_CMP_ITAV** %geninfo_ITAVs, align 8, !tbaa !45
  %cmp18 = icmp eq %struct.stack_st_OSSL_CMP_ITAV* %3, null
  br i1 %cmp18, label %if.end21, label %if.then20

if.then20:                                        ; preds = %if.end12
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 753, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.131, i64 0, i64 0)) #5
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %if.end12
  %res.2 = phi i32 [ %res.1, %if.end12 ], [ 0, %if.then20 ]
  %call22 = tail call i32 @OSSL_CMP_CTX_push0_geninfo_ITAV(%struct.ossl_cmp_ctx_st* noundef nonnull %0, %struct.ossl_cmp_itav_st* noundef %call3) #5
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.end21
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 753, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.132, i64 0, i64 0)) #5
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %if.end21
  %res.3 = phi i32 [ %res.2, %if.end21 ], [ 0, %if.then24 ]
  %4 = load %struct.stack_st_OSSL_CMP_ITAV*, %struct.stack_st_OSSL_CMP_ITAV** %geninfo_ITAVs, align 8, !tbaa !45
  %call27 = tail call fastcc %struct.stack_st* @ossl_check_const_OSSL_CMP_ITAV_sk_type(%struct.stack_st_OSSL_CMP_ITAV* noundef %4) #6
  %call28 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call27) #5
  %inc = add nuw nsw i32 %spec.store.select, 1
  %cmp29.not = icmp eq i32 %call28, %inc
  br i1 %cmp29.not, label %if.end32, label %if.then31

if.then31:                                        ; preds = %if.end25
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 753, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.133, i64 0, i64 0)) #5
  br label %if.end32

if.end32:                                         ; preds = %if.then31, %if.end25
  %res.4 = phi i32 [ 0, %if.then31 ], [ %res.3, %if.end25 ]
  %call33 = tail call fastcc %struct.ossl_cmp_itav_st* @sk_top_geninfo_ITAVs(%struct.ossl_cmp_ctx_st* noundef nonnull %0) #6
  %cmp34.not = icmp eq %struct.ossl_cmp_itav_st* %call33, %call3
  br i1 %cmp34.not, label %if.end37, label %if.then36

if.then36:                                        ; preds = %if.end32
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 753, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.134, i64 0, i64 0)) #5
  br label %if.end37

if.end37:                                         ; preds = %if.then36, %if.end32
  %res.5 = phi i32 [ 0, %if.then36 ], [ %res.4, %if.end32 ]
  %call38 = tail call i32 @OSSL_CMP_CTX_push0_geninfo_ITAV(%struct.ossl_cmp_ctx_st* noundef nonnull %0, %struct.ossl_cmp_itav_st* noundef %call4) #5
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.then40, label %if.end41

if.then40:                                        ; preds = %if.end37
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 753, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.135, i64 0, i64 0)) #5
  br label %if.end41

if.end41:                                         ; preds = %if.then40, %if.end37
  %res.6 = phi i32 [ %res.5, %if.end37 ], [ 0, %if.then40 ]
  %5 = load %struct.stack_st_OSSL_CMP_ITAV*, %struct.stack_st_OSSL_CMP_ITAV** %geninfo_ITAVs, align 8, !tbaa !45
  %call43 = tail call fastcc %struct.stack_st* @ossl_check_const_OSSL_CMP_ITAV_sk_type(%struct.stack_st_OSSL_CMP_ITAV* noundef %5) #6
  %call44 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call43) #5
  %inc45 = add nuw nsw i32 %spec.store.select, 2
  %cmp46.not = icmp eq i32 %call44, %inc45
  br i1 %cmp46.not, label %if.end49, label %if.then48

if.then48:                                        ; preds = %if.end41
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 753, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.136, i64 0, i64 0)) #5
  br label %if.end49

if.end49:                                         ; preds = %if.then48, %if.end41
  %res.7 = phi i32 [ 0, %if.then48 ], [ %res.6, %if.end41 ]
  %call50 = tail call fastcc %struct.ossl_cmp_itav_st* @sk_top_geninfo_ITAVs(%struct.ossl_cmp_ctx_st* noundef nonnull %0) #6
  %cmp51.not = icmp eq %struct.ossl_cmp_itav_st* %call50, %call4
  br i1 %cmp51.not, label %if.end54, label %if.then53

if.then53:                                        ; preds = %if.end49
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 753, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.137, i64 0, i64 0)) #5
  br label %if.end54

if.end54:                                         ; preds = %if.then53, %if.end49
  %res.8 = phi i32 [ 0, %if.then53 ], [ %res.7, %if.end49 ]
  %call55 = tail call i64 @ERR_peek_error() #5
  %conv56 = trunc i64 %call55 to i32
  %call57 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 753, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.57, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.58, i64 0, i64 0), i32 noundef %conv56, i32 noundef 0) #5
  %tobool58.not = icmp ne i32 %call57, 0
  tail call void @OSSL_CMP_ITAV_free(%struct.ossl_cmp_itav_st* noundef null) #5
  tail call void @OSSL_CMP_ITAV_free(%struct.ossl_cmp_itav_st* noundef null) #5
  %cmp6192 = icmp ne i32 %res.8, 0
  %cmp61 = select i1 %tobool58.not, i1 %cmp6192, i1 false
  %conv62 = zext i1 %cmp61 to i32
  %call63 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 753, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.69, i64 0, i64 0), i32 noundef %conv62) #5
  ret i32 %call63
}

declare dso_local i32 @OSSL_CMP_CTX_push0_geninfo_ITAV(%struct.ossl_cmp_ctx_st* noundef, %struct.ossl_cmp_itav_st* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_OSSL_CMP_ITAV_sk_type(%struct.stack_st_OSSL_CMP_ITAV* noundef readnone %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_OSSL_CMP_ITAV* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare dso_local %struct.ossl_cmp_itav_st* @OSSL_CMP_ITAV_new() local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.ossl_cmp_itav_st* @sk_top_geninfo_ITAVs(%struct.ossl_cmp_ctx_st* nocapture noundef readonly %ctx) unnamed_addr #1 {
entry:
  %geninfo_ITAVs = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 42
  %0 = load %struct.stack_st_OSSL_CMP_ITAV*, %struct.stack_st_OSSL_CMP_ITAV** %geninfo_ITAVs, align 8, !tbaa !45
  %call = tail call fastcc %struct.stack_st* @ossl_check_const_OSSL_CMP_ITAV_sk_type(%struct.stack_st_OSSL_CMP_ITAV* noundef %0) #6
  %call3 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #5
  %sub = add nsw i32 %call3, -1
  %call4 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call, i32 noundef %sub) #5
  %1 = bitcast i8* %call4 to %struct.ossl_cmp_itav_st*
  ret %struct.ossl_cmp_itav_st* %1
}

declare dso_local void @OSSL_CMP_ITAV_free(%struct.ossl_cmp_itav_st* noundef) local_unnamed_addr #3

declare dso_local i8* @OPENSSL_sk_value(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @execute_CTX_set1_get0_extraCertsOut(%struct.test_fixture* nocapture noundef readonly %fixture) unnamed_addr #1 {
entry:
  %ctx1 = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %fixture, i64 0, i32 1
  %0 = load %struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_ctx_st** %ctx1, align 8, !tbaa !7
  %call = tail call %struct.stack_st* @OPENSSL_sk_new_null() #5
  %1 = bitcast %struct.stack_st* %call to %struct.stack_st_X509*
  %call2 = tail call %struct.stack_st* @OPENSSL_sk_new_null() #5
  %2 = bitcast %struct.stack_st* %call2 to %struct.stack_st_X509*
  %call3 = tail call i64 @ERR_peek_error() #5
  %conv = trunc i64 %call3 to i32
  %call4 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 754, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.57, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.58, i64 0, i64 0), i32 noundef %conv, i32 noundef 0) #5
  %call5 = tail call i32 @OSSL_CMP_CTX_set1_extraCertsOut(%struct.ossl_cmp_ctx_st* noundef null, %struct.stack_st_X509* noundef %1) #5
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %lor.lhs.false, label %if.then9

lor.lhs.false:                                    ; preds = %entry
  %tobool.not = icmp ne i32 %call4, 0
  %spec.select = zext i1 %tobool.not to i32
  %call7 = tail call i64 @ERR_peek_error() #5
  %cmp = icmp eq i64 %call7, 0
  br i1 %cmp, label %if.then9, label %if.end10

if.then9:                                         ; preds = %lor.lhs.false, %entry
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 754, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.59, i64 0, i64 0)) #5
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %lor.lhs.false
  %res.1 = phi i32 [ 0, %if.then9 ], [ %spec.select, %lor.lhs.false ]
  tail call void @ERR_clear_error() #5
  %call11 = tail call fastcc %struct.stack_st_X509* @OSSL_CMP_CTX_get0_extraCertsOut(%struct.ossl_cmp_ctx_st* noundef null) #6
  %cmp12.not = icmp eq %struct.stack_st_X509* %call11, null
  br i1 %cmp12.not, label %lor.lhs.false14, label %if.then18

lor.lhs.false14:                                  ; preds = %if.end10
  %call15 = tail call i64 @ERR_peek_error() #5
  %cmp16 = icmp eq i64 %call15, 0
  br i1 %cmp16, label %if.then18, label %if.end19

if.then18:                                        ; preds = %lor.lhs.false14, %if.end10
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 754, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.60, i64 0, i64 0)) #5
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %lor.lhs.false14
  %res.2 = phi i32 [ 0, %if.then18 ], [ %res.1, %lor.lhs.false14 ]
  tail call void @ERR_clear_error() #5
  %call20 = tail call fastcc %struct.stack_st_X509* @OSSL_CMP_CTX_get0_extraCertsOut(%struct.ossl_cmp_ctx_st* noundef %0) #6
  %cmp21 = icmp eq %struct.stack_st_X509* %call20, null
  br i1 %cmp21, label %if.end24, label %if.then23

if.then23:                                        ; preds = %if.end19
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 754, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.61, i64 0, i64 0)) #5
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %if.end19
  %res.3 = phi i32 [ %res.2, %if.end19 ], [ 0, %if.then23 ]
  %call25 = tail call i32 @OSSL_CMP_CTX_set1_extraCertsOut(%struct.ossl_cmp_ctx_st* noundef %0, %struct.stack_st_X509* noundef %1) #5
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.end24
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 754, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.62, i64 0, i64 0)) #5
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %if.end24
  %res.4 = phi i32 [ %res.3, %if.end24 ], [ 0, %if.then27 ]
  %call29 = tail call fastcc %struct.stack_st_X509* @OSSL_CMP_CTX_get0_extraCertsOut(%struct.ossl_cmp_ctx_st* noundef %0) #6
  %cmp30 = icmp eq %struct.stack_st_X509* %call29, %1
  br i1 %cmp30, label %if.then32, label %if.end33

if.then32:                                        ; preds = %if.end28
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 754, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.123, i64 0, i64 0)) #5
  br label %if.end33

if.end33:                                         ; preds = %if.then32, %if.end28
  %res.5 = phi i32 [ 0, %if.then32 ], [ %res.4, %if.end28 ]
  %cmp34 = icmp eq %struct.stack_st_X509* %call29, null
  br i1 %cmp34, label %if.then36, label %if.end37

if.then36:                                        ; preds = %if.end33
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 754, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.124, i64 0, i64 0)) #5
  br label %if.end37

if.end37:                                         ; preds = %if.then36, %if.end33
  %res.6 = phi i32 [ 0, %if.then36 ], [ %res.5, %if.end33 ]
  %call38 = tail call i32 @OSSL_CMP_CTX_set1_extraCertsOut(%struct.ossl_cmp_ctx_st* noundef %0, %struct.stack_st_X509* noundef %2) #5
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.then40, label %if.end41

if.then40:                                        ; preds = %if.end37
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 754, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.64, i64 0, i64 0)) #5
  br label %if.end41

if.end41:                                         ; preds = %if.then40, %if.end37
  %res.7 = phi i32 [ %res.6, %if.end37 ], [ 0, %if.then40 ]
  %call42 = tail call fastcc %struct.stack_st_X509* @OSSL_CMP_CTX_get0_extraCertsOut(%struct.ossl_cmp_ctx_st* noundef %0) #6
  %cmp43 = icmp eq %struct.stack_st_X509* %call42, null
  br i1 %cmp43, label %if.then45, label %if.end46

if.then45:                                        ; preds = %if.end41
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 754, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.65, i64 0, i64 0)) #5
  br label %if.end46

if.end46:                                         ; preds = %if.then45, %if.end41
  %res.8 = phi i32 [ 0, %if.then45 ], [ %res.7, %if.end41 ]
  %cmp47 = icmp eq %struct.stack_st_X509* %call42, %2
  br i1 %cmp47, label %if.then49, label %if.end50

if.then49:                                        ; preds = %if.end46
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 754, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.125, i64 0, i64 0)) #5
  br label %if.end50

if.end50:                                         ; preds = %if.then49, %if.end46
  %res.9 = phi i32 [ 0, %if.then49 ], [ %res.8, %if.end46 ]
  %cmp51 = icmp eq %struct.stack_st* %call2, %call
  br i1 %cmp51, label %if.then53, label %if.end54

if.then53:                                        ; preds = %if.end50
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 754, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.126, i64 0, i64 0)) #5
  br label %if.end54

if.end54:                                         ; preds = %if.then53, %if.end50
  %res.10 = phi i32 [ 0, %if.then53 ], [ %res.9, %if.end50 ]
  %call55 = tail call fastcc %struct.stack_st_X509* @OSSL_CMP_CTX_get0_extraCertsOut(%struct.ossl_cmp_ctx_st* noundef %0) #6
  %cmp56 = icmp eq %struct.stack_st_X509* %call55, null
  br i1 %cmp56, label %if.then58, label %if.end59

if.then58:                                        ; preds = %if.end54
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 754, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.67, i64 0, i64 0)) #5
  br label %if.end59

if.end59:                                         ; preds = %if.then58, %if.end54
  %res.11 = phi i32 [ 0, %if.then58 ], [ %res.10, %if.end54 ]
  %cmp60.not = icmp eq %struct.stack_st_X509* %call55, %call42
  br i1 %cmp60.not, label %if.end63, label %if.then62

if.then62:                                        ; preds = %if.end59
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 754, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.68, i64 0, i64 0)) #5
  br label %if.end63

if.end63:                                         ; preds = %if.then62, %if.end59
  %res.12 = phi i32 [ 0, %if.then62 ], [ %res.11, %if.end59 ]
  %call64 = tail call i64 @ERR_peek_error() #5
  %conv65 = trunc i64 %call64 to i32
  %call66 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 754, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.57, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.58, i64 0, i64 0), i32 noundef %conv65, i32 noundef 0) #5
  %tobool67.not = icmp ne i32 %call66, 0
  %call70 = tail call fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef %1) #6
  tail call void @OPENSSL_sk_free(%struct.stack_st* noundef %call70) #5
  %call71 = tail call fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef %2) #6
  tail call void @OPENSSL_sk_free(%struct.stack_st* noundef %call71) #5
  %cmp72110 = icmp ne i32 %res.12, 0
  %cmp72 = select i1 %tobool67.not, i1 %cmp72110, i1 false
  %conv73 = zext i1 %cmp72 to i32
  %call74 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 754, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.69, i64 0, i64 0), i32 noundef %conv73) #5
  ret i32 %call74
}

declare dso_local i32 @OSSL_CMP_CTX_set1_extraCertsOut(%struct.ossl_cmp_ctx_st* noundef, %struct.stack_st_X509* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.stack_st_X509* @OSSL_CMP_CTX_get0_extraCertsOut(%struct.ossl_cmp_ctx_st* noundef readonly %ctx) unnamed_addr #1 {
entry:
  %cmp = icmp eq %struct.ossl_cmp_ctx_st* %ctx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 754, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.OSSL_CMP_CTX_get0_extraCertsOut, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 103, i8* noundef null) #5
  br label %return

if.end:                                           ; preds = %entry
  %extraCertsOut = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 45
  %0 = load %struct.stack_st_X509*, %struct.stack_st_X509** %extraCertsOut, align 8, !tbaa !46
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi %struct.stack_st_X509* [ null, %if.then ], [ %0, %if.end ]
  ret %struct.stack_st_X509* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @execute_CTX_set0_get0_newPkey_1(%struct.test_fixture* nocapture noundef readonly %fixture) unnamed_addr #1 {
entry:
  %ctx1 = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %fixture, i64 0, i32 1
  %0 = load %struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_ctx_st** %ctx1, align 8, !tbaa !7
  %call = tail call %struct.evp_pkey_st* @EVP_PKEY_new() #5
  %call2 = tail call %struct.evp_pkey_st* @EVP_PKEY_new() #5
  %call3 = tail call i64 @ERR_peek_error() #5
  %conv = trunc i64 %call3 to i32
  %call4 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 756, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.57, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.58, i64 0, i64 0), i32 noundef %conv, i32 noundef 0) #5
  %call5 = tail call fastcc i32 @OSSL_CMP_CTX_set0_newPkey_1(%struct.ossl_cmp_ctx_st* noundef null, %struct.evp_pkey_st* noundef %call) #6
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %lor.lhs.false, label %if.then9

lor.lhs.false:                                    ; preds = %entry
  %tobool.not = icmp ne i32 %call4, 0
  %spec.select = zext i1 %tobool.not to i32
  %call7 = tail call i64 @ERR_peek_error() #5
  %cmp = icmp eq i64 %call7, 0
  br i1 %cmp, label %if.then9, label %if.end10

if.then9:                                         ; preds = %lor.lhs.false, %entry
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 756, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.59, i64 0, i64 0)) #5
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %lor.lhs.false
  %res.1 = phi i32 [ 0, %if.then9 ], [ %spec.select, %lor.lhs.false ]
  tail call void @ERR_clear_error() #5
  %call11 = tail call fastcc %struct.evp_pkey_st* @OSSL_CMP_CTX_get0_newPkey_1(%struct.ossl_cmp_ctx_st* noundef null) #6
  %cmp12.not = icmp eq %struct.evp_pkey_st* %call11, null
  br i1 %cmp12.not, label %lor.lhs.false14, label %if.then18

lor.lhs.false14:                                  ; preds = %if.end10
  %call15 = tail call i64 @ERR_peek_error() #5
  %cmp16 = icmp eq i64 %call15, 0
  br i1 %cmp16, label %if.then18, label %if.end19

if.then18:                                        ; preds = %lor.lhs.false14, %if.end10
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 756, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.60, i64 0, i64 0)) #5
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %lor.lhs.false14
  %res.2 = phi i32 [ 0, %if.then18 ], [ %res.1, %lor.lhs.false14 ]
  tail call void @ERR_clear_error() #5
  %call20 = tail call fastcc %struct.evp_pkey_st* @OSSL_CMP_CTX_get0_newPkey_1(%struct.ossl_cmp_ctx_st* noundef %0) #6
  %cmp21 = icmp eq %struct.evp_pkey_st* %call20, null
  br i1 %cmp21, label %if.end24, label %if.then23

if.then23:                                        ; preds = %if.end19
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 756, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.61, i64 0, i64 0)) #5
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %if.end19
  %res.3 = phi i32 [ %res.2, %if.end19 ], [ 0, %if.then23 ]
  %call25 = tail call fastcc i32 @OSSL_CMP_CTX_set0_newPkey_1(%struct.ossl_cmp_ctx_st* noundef %0, %struct.evp_pkey_st* noundef %call) #6
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.end24
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 756, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.62, i64 0, i64 0)) #5
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %if.end24
  %res.4 = phi i32 [ %res.3, %if.end24 ], [ 0, %if.then27 ]
  %call29 = tail call fastcc %struct.evp_pkey_st* @OSSL_CMP_CTX_get0_newPkey_1(%struct.ossl_cmp_ctx_st* noundef %0) #6
  %cmp30.not = icmp eq %struct.evp_pkey_st* %call29, %call
  br i1 %cmp30.not, label %if.end33, label %if.then32

if.then32:                                        ; preds = %if.end28
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 756, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.63, i64 0, i64 0)) #5
  br label %if.end33

if.end33:                                         ; preds = %if.then32, %if.end28
  %res.5 = phi i32 [ 0, %if.then32 ], [ %res.4, %if.end28 ]
  %call34 = tail call fastcc i32 @OSSL_CMP_CTX_set0_newPkey_1(%struct.ossl_cmp_ctx_st* noundef %0, %struct.evp_pkey_st* noundef %call2) #6
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.then36, label %if.end37

if.then36:                                        ; preds = %if.end33
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 756, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.64, i64 0, i64 0)) #5
  br label %if.end37

if.end37:                                         ; preds = %if.then36, %if.end33
  %res.6 = phi i32 [ %res.5, %if.end33 ], [ 0, %if.then36 ]
  %call38 = tail call fastcc %struct.evp_pkey_st* @OSSL_CMP_CTX_get0_newPkey_1(%struct.ossl_cmp_ctx_st* noundef %0) #6
  %cmp39 = icmp eq %struct.evp_pkey_st* %call38, null
  br i1 %cmp39, label %if.then41, label %if.end42

if.then41:                                        ; preds = %if.end37
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 756, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.65, i64 0, i64 0)) #5
  br label %if.end42

if.end42:                                         ; preds = %if.then41, %if.end37
  %res.7 = phi i32 [ 0, %if.then41 ], [ %res.6, %if.end37 ]
  %cmp43.not = icmp eq %struct.evp_pkey_st* %call38, %call2
  br i1 %cmp43.not, label %if.end46, label %if.then45

if.then45:                                        ; preds = %if.end42
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 756, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.66, i64 0, i64 0)) #5
  br label %if.end46

if.end46:                                         ; preds = %if.then45, %if.end42
  %res.8 = phi i32 [ 0, %if.then45 ], [ %res.7, %if.end42 ]
  %call47 = tail call fastcc %struct.evp_pkey_st* @OSSL_CMP_CTX_get0_newPkey_1(%struct.ossl_cmp_ctx_st* noundef %0) #6
  %cmp48 = icmp eq %struct.evp_pkey_st* %call47, null
  br i1 %cmp48, label %if.then50, label %if.end51

if.then50:                                        ; preds = %if.end46
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 756, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.67, i64 0, i64 0)) #5
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %if.end46
  %res.9 = phi i32 [ 0, %if.then50 ], [ %res.8, %if.end46 ]
  %cmp52.not = icmp eq %struct.evp_pkey_st* %call47, %call38
  br i1 %cmp52.not, label %if.end55, label %if.then54

if.then54:                                        ; preds = %if.end51
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 756, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.68, i64 0, i64 0)) #5
  br label %if.end55

if.end55:                                         ; preds = %if.then54, %if.end51
  %res.10 = phi i32 [ 0, %if.then54 ], [ %res.9, %if.end51 ]
  %call56 = tail call i64 @ERR_peek_error() #5
  %conv57 = trunc i64 %call56 to i32
  %call58 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 756, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.57, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.58, i64 0, i64 0), i32 noundef %conv57, i32 noundef 0) #5
  %tobool59.not = icmp ne i32 %call58, 0
  tail call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef null) #5
  tail call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef null) #5
  %cmp6297 = icmp ne i32 %res.10, 0
  %cmp62 = select i1 %tobool59.not, i1 %cmp6297, i1 false
  %conv63 = zext i1 %cmp62 to i32
  %call64 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 756, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.69, i64 0, i64 0), i32 noundef %conv63) #5
  ret i32 %call64
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @OSSL_CMP_CTX_set0_newPkey_1(%struct.ossl_cmp_ctx_st* noundef %ctx, %struct.evp_pkey_st* noundef %val) unnamed_addr #1 {
entry:
  %call = tail call i32 @OSSL_CMP_CTX_set0_newPkey(%struct.ossl_cmp_ctx_st* noundef %ctx, i32 noundef 1, %struct.evp_pkey_st* noundef %val) #5
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.evp_pkey_st* @OSSL_CMP_CTX_get0_newPkey_1(%struct.ossl_cmp_ctx_st* noundef %ctx) unnamed_addr #1 {
entry:
  %call = tail call %struct.evp_pkey_st* @OSSL_CMP_CTX_get0_newPkey(%struct.ossl_cmp_ctx_st* noundef %ctx, i32 noundef 1) #5
  ret %struct.evp_pkey_st* %call
}

declare dso_local i32 @OSSL_CMP_CTX_set0_newPkey(%struct.ossl_cmp_ctx_st* noundef, i32 noundef, %struct.evp_pkey_st* noundef) local_unnamed_addr #3

declare dso_local %struct.evp_pkey_st* @OSSL_CMP_CTX_get0_newPkey(%struct.ossl_cmp_ctx_st* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @execute_CTX_set0_get0_newPkey_0(%struct.test_fixture* nocapture noundef readonly %fixture) unnamed_addr #1 {
entry:
  %ctx1 = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %fixture, i64 0, i32 1
  %0 = load %struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_ctx_st** %ctx1, align 8, !tbaa !7
  %call = tail call %struct.evp_pkey_st* @EVP_PKEY_new() #5
  %call2 = tail call %struct.evp_pkey_st* @EVP_PKEY_new() #5
  %call3 = tail call i64 @ERR_peek_error() #5
  %conv = trunc i64 %call3 to i32
  %call4 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 758, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.57, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.58, i64 0, i64 0), i32 noundef %conv, i32 noundef 0) #5
  %call5 = tail call fastcc i32 @OSSL_CMP_CTX_set0_newPkey_0(%struct.ossl_cmp_ctx_st* noundef null, %struct.evp_pkey_st* noundef %call) #6
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %lor.lhs.false, label %if.then9

lor.lhs.false:                                    ; preds = %entry
  %tobool.not = icmp ne i32 %call4, 0
  %spec.select = zext i1 %tobool.not to i32
  %call7 = tail call i64 @ERR_peek_error() #5
  %cmp = icmp eq i64 %call7, 0
  br i1 %cmp, label %if.then9, label %if.end10

if.then9:                                         ; preds = %lor.lhs.false, %entry
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 758, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.59, i64 0, i64 0)) #5
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %lor.lhs.false
  %res.1 = phi i32 [ 0, %if.then9 ], [ %spec.select, %lor.lhs.false ]
  tail call void @ERR_clear_error() #5
  %call11 = tail call fastcc %struct.evp_pkey_st* @OSSL_CMP_CTX_get0_newPkey_0(%struct.ossl_cmp_ctx_st* noundef null) #6
  %cmp12.not = icmp eq %struct.evp_pkey_st* %call11, null
  br i1 %cmp12.not, label %lor.lhs.false14, label %if.then18

lor.lhs.false14:                                  ; preds = %if.end10
  %call15 = tail call i64 @ERR_peek_error() #5
  %cmp16 = icmp eq i64 %call15, 0
  br i1 %cmp16, label %if.then18, label %if.end19

if.then18:                                        ; preds = %lor.lhs.false14, %if.end10
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 758, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.60, i64 0, i64 0)) #5
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %lor.lhs.false14
  %res.2 = phi i32 [ 0, %if.then18 ], [ %res.1, %lor.lhs.false14 ]
  tail call void @ERR_clear_error() #5
  %call20 = tail call fastcc %struct.evp_pkey_st* @OSSL_CMP_CTX_get0_newPkey_0(%struct.ossl_cmp_ctx_st* noundef %0) #6
  %cmp21 = icmp eq %struct.evp_pkey_st* %call20, null
  br i1 %cmp21, label %if.end24, label %if.then23

if.then23:                                        ; preds = %if.end19
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 758, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.61, i64 0, i64 0)) #5
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %if.end19
  %res.3 = phi i32 [ %res.2, %if.end19 ], [ 0, %if.then23 ]
  %call25 = tail call fastcc i32 @OSSL_CMP_CTX_set0_newPkey_0(%struct.ossl_cmp_ctx_st* noundef %0, %struct.evp_pkey_st* noundef %call) #6
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.end24
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 758, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.62, i64 0, i64 0)) #5
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %if.end24
  %res.4 = phi i32 [ %res.3, %if.end24 ], [ 0, %if.then27 ]
  %call29 = tail call fastcc %struct.evp_pkey_st* @OSSL_CMP_CTX_get0_newPkey_0(%struct.ossl_cmp_ctx_st* noundef %0) #6
  %cmp30.not = icmp eq %struct.evp_pkey_st* %call29, %call
  br i1 %cmp30.not, label %if.end33, label %if.then32

if.then32:                                        ; preds = %if.end28
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 758, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.63, i64 0, i64 0)) #5
  br label %if.end33

if.end33:                                         ; preds = %if.then32, %if.end28
  %res.5 = phi i32 [ 0, %if.then32 ], [ %res.4, %if.end28 ]
  %call34 = tail call fastcc i32 @OSSL_CMP_CTX_set0_newPkey_0(%struct.ossl_cmp_ctx_st* noundef %0, %struct.evp_pkey_st* noundef %call2) #6
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.then36, label %if.end37

if.then36:                                        ; preds = %if.end33
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 758, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.64, i64 0, i64 0)) #5
  br label %if.end37

if.end37:                                         ; preds = %if.then36, %if.end33
  %res.6 = phi i32 [ %res.5, %if.end33 ], [ 0, %if.then36 ]
  %call38 = tail call fastcc %struct.evp_pkey_st* @OSSL_CMP_CTX_get0_newPkey_0(%struct.ossl_cmp_ctx_st* noundef %0) #6
  %cmp39 = icmp eq %struct.evp_pkey_st* %call38, null
  br i1 %cmp39, label %if.then41, label %if.end42

if.then41:                                        ; preds = %if.end37
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 758, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.65, i64 0, i64 0)) #5
  br label %if.end42

if.end42:                                         ; preds = %if.then41, %if.end37
  %res.7 = phi i32 [ 0, %if.then41 ], [ %res.6, %if.end37 ]
  %cmp43.not = icmp eq %struct.evp_pkey_st* %call38, %call2
  br i1 %cmp43.not, label %if.end46, label %if.then45

if.then45:                                        ; preds = %if.end42
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 758, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.66, i64 0, i64 0)) #5
  br label %if.end46

if.end46:                                         ; preds = %if.then45, %if.end42
  %res.8 = phi i32 [ 0, %if.then45 ], [ %res.7, %if.end42 ]
  %call47 = tail call fastcc %struct.evp_pkey_st* @OSSL_CMP_CTX_get0_newPkey_0(%struct.ossl_cmp_ctx_st* noundef %0) #6
  %cmp48 = icmp eq %struct.evp_pkey_st* %call47, null
  br i1 %cmp48, label %if.then50, label %if.end51

if.then50:                                        ; preds = %if.end46
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 758, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.67, i64 0, i64 0)) #5
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %if.end46
  %res.9 = phi i32 [ 0, %if.then50 ], [ %res.8, %if.end46 ]
  %cmp52.not = icmp eq %struct.evp_pkey_st* %call47, %call38
  br i1 %cmp52.not, label %if.end55, label %if.then54

if.then54:                                        ; preds = %if.end51
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 758, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.68, i64 0, i64 0)) #5
  br label %if.end55

if.end55:                                         ; preds = %if.then54, %if.end51
  %res.10 = phi i32 [ 0, %if.then54 ], [ %res.9, %if.end51 ]
  %call56 = tail call i64 @ERR_peek_error() #5
  %conv57 = trunc i64 %call56 to i32
  %call58 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 758, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.57, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.58, i64 0, i64 0), i32 noundef %conv57, i32 noundef 0) #5
  %tobool59.not = icmp ne i32 %call58, 0
  tail call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef null) #5
  tail call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef null) #5
  %cmp6297 = icmp ne i32 %res.10, 0
  %cmp62 = select i1 %tobool59.not, i1 %cmp6297, i1 false
  %conv63 = zext i1 %cmp62 to i32
  %call64 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 758, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.69, i64 0, i64 0), i32 noundef %conv63) #5
  ret i32 %call64
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @OSSL_CMP_CTX_set0_newPkey_0(%struct.ossl_cmp_ctx_st* noundef %ctx, %struct.evp_pkey_st* noundef %val) unnamed_addr #1 {
entry:
  %call = tail call i32 @OSSL_CMP_CTX_set0_newPkey(%struct.ossl_cmp_ctx_st* noundef %ctx, i32 noundef 0, %struct.evp_pkey_st* noundef %val) #5
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.evp_pkey_st* @OSSL_CMP_CTX_get0_newPkey_0(%struct.ossl_cmp_ctx_st* noundef %ctx) unnamed_addr #1 {
entry:
  %call = tail call %struct.evp_pkey_st* @OSSL_CMP_CTX_get0_newPkey(%struct.ossl_cmp_ctx_st* noundef %ctx, i32 noundef 0) #5
  ret %struct.evp_pkey_st* %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @execute_CTX_set1_get0_issuer(%struct.test_fixture* nocapture noundef readonly %fixture) unnamed_addr #1 {
entry:
  %ctx1 = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %fixture, i64 0, i32 1
  %0 = load %struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_ctx_st** %ctx1, align 8, !tbaa !7
  %call = tail call %struct.X509_name_st* @X509_NAME_new() #5
  %call2 = tail call %struct.X509_name_st* @X509_NAME_new() #5
  %call3 = tail call i64 @ERR_peek_error() #5
  %conv = trunc i64 %call3 to i32
  %call4 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 764, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.57, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.58, i64 0, i64 0), i32 noundef %conv, i32 noundef 0) #5
  %call5 = tail call i32 @OSSL_CMP_CTX_set1_issuer(%struct.ossl_cmp_ctx_st* noundef null, %struct.X509_name_st* noundef %call) #5
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %lor.lhs.false, label %if.then9

lor.lhs.false:                                    ; preds = %entry
  %tobool.not = icmp ne i32 %call4, 0
  %spec.select = zext i1 %tobool.not to i32
  %call7 = tail call i64 @ERR_peek_error() #5
  %cmp = icmp eq i64 %call7, 0
  br i1 %cmp, label %if.then9, label %if.end10

if.then9:                                         ; preds = %lor.lhs.false, %entry
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 764, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.59, i64 0, i64 0)) #5
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %lor.lhs.false
  %res.1 = phi i32 [ 0, %if.then9 ], [ %spec.select, %lor.lhs.false ]
  tail call void @ERR_clear_error() #5
  %call11 = tail call fastcc %struct.X509_name_st* @OSSL_CMP_CTX_get0_issuer(%struct.ossl_cmp_ctx_st* noundef null) #6
  %cmp12.not = icmp eq %struct.X509_name_st* %call11, null
  br i1 %cmp12.not, label %lor.lhs.false14, label %if.then18

lor.lhs.false14:                                  ; preds = %if.end10
  %call15 = tail call i64 @ERR_peek_error() #5
  %cmp16 = icmp eq i64 %call15, 0
  br i1 %cmp16, label %if.then18, label %if.end19

if.then18:                                        ; preds = %lor.lhs.false14, %if.end10
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 764, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.60, i64 0, i64 0)) #5
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %lor.lhs.false14
  %res.2 = phi i32 [ 0, %if.then18 ], [ %res.1, %lor.lhs.false14 ]
  tail call void @ERR_clear_error() #5
  %call20 = tail call fastcc %struct.X509_name_st* @OSSL_CMP_CTX_get0_issuer(%struct.ossl_cmp_ctx_st* noundef %0) #6
  %cmp21 = icmp eq %struct.X509_name_st* %call20, null
  br i1 %cmp21, label %if.end24, label %if.then23

if.then23:                                        ; preds = %if.end19
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 764, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.61, i64 0, i64 0)) #5
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %if.end19
  %res.3 = phi i32 [ %res.2, %if.end19 ], [ 0, %if.then23 ]
  %call25 = tail call i32 @OSSL_CMP_CTX_set1_issuer(%struct.ossl_cmp_ctx_st* noundef %0, %struct.X509_name_st* noundef %call) #5
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.end24
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 764, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.62, i64 0, i64 0)) #5
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %if.end24
  %res.4 = phi i32 [ %res.3, %if.end24 ], [ 0, %if.then27 ]
  %call29 = tail call fastcc %struct.X509_name_st* @OSSL_CMP_CTX_get0_issuer(%struct.ossl_cmp_ctx_st* noundef %0) #6
  %cmp30 = icmp eq %struct.X509_name_st* %call29, %call
  br i1 %cmp30, label %if.then32, label %if.end33

if.then32:                                        ; preds = %if.end28
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 764, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.123, i64 0, i64 0)) #5
  br label %if.end33

if.end33:                                         ; preds = %if.then32, %if.end28
  %res.5 = phi i32 [ 0, %if.then32 ], [ %res.4, %if.end28 ]
  %cmp34 = icmp eq %struct.X509_name_st* %call29, null
  br i1 %cmp34, label %if.then36, label %if.end37

if.then36:                                        ; preds = %if.end33
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 764, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.124, i64 0, i64 0)) #5
  br label %if.end37

if.end37:                                         ; preds = %if.then36, %if.end33
  %res.6 = phi i32 [ 0, %if.then36 ], [ %res.5, %if.end33 ]
  %call38 = tail call i32 @OSSL_CMP_CTX_set1_issuer(%struct.ossl_cmp_ctx_st* noundef %0, %struct.X509_name_st* noundef %call2) #5
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.then40, label %if.end41

if.then40:                                        ; preds = %if.end37
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 764, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.64, i64 0, i64 0)) #5
  br label %if.end41

if.end41:                                         ; preds = %if.then40, %if.end37
  %res.7 = phi i32 [ %res.6, %if.end37 ], [ 0, %if.then40 ]
  %call42 = tail call fastcc %struct.X509_name_st* @OSSL_CMP_CTX_get0_issuer(%struct.ossl_cmp_ctx_st* noundef %0) #6
  %cmp43 = icmp eq %struct.X509_name_st* %call42, null
  br i1 %cmp43, label %if.then45, label %if.end46

if.then45:                                        ; preds = %if.end41
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 764, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.65, i64 0, i64 0)) #5
  br label %if.end46

if.end46:                                         ; preds = %if.then45, %if.end41
  %res.8 = phi i32 [ 0, %if.then45 ], [ %res.7, %if.end41 ]
  %cmp47 = icmp eq %struct.X509_name_st* %call42, %call2
  br i1 %cmp47, label %if.then49, label %if.end50

if.then49:                                        ; preds = %if.end46
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 764, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.125, i64 0, i64 0)) #5
  br label %if.end50

if.end50:                                         ; preds = %if.then49, %if.end46
  %res.9 = phi i32 [ 0, %if.then49 ], [ %res.8, %if.end46 ]
  %cmp51 = icmp eq %struct.X509_name_st* %call2, %call
  br i1 %cmp51, label %if.then53, label %if.end54

if.then53:                                        ; preds = %if.end50
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 764, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.126, i64 0, i64 0)) #5
  br label %if.end54

if.end54:                                         ; preds = %if.then53, %if.end50
  %res.10 = phi i32 [ 0, %if.then53 ], [ %res.9, %if.end50 ]
  %call55 = tail call fastcc %struct.X509_name_st* @OSSL_CMP_CTX_get0_issuer(%struct.ossl_cmp_ctx_st* noundef %0) #6
  %cmp56 = icmp eq %struct.X509_name_st* %call55, null
  br i1 %cmp56, label %if.then58, label %if.end59

if.then58:                                        ; preds = %if.end54
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 764, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.67, i64 0, i64 0)) #5
  br label %if.end59

if.end59:                                         ; preds = %if.then58, %if.end54
  %res.11 = phi i32 [ 0, %if.then58 ], [ %res.10, %if.end54 ]
  %cmp60.not = icmp eq %struct.X509_name_st* %call55, %call42
  br i1 %cmp60.not, label %if.end63, label %if.then62

if.then62:                                        ; preds = %if.end59
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 764, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.68, i64 0, i64 0)) #5
  br label %if.end63

if.end63:                                         ; preds = %if.then62, %if.end59
  %res.12 = phi i32 [ 0, %if.then62 ], [ %res.11, %if.end59 ]
  %call64 = tail call i64 @ERR_peek_error() #5
  %conv65 = trunc i64 %call64 to i32
  %call66 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 764, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.57, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.58, i64 0, i64 0), i32 noundef %conv65, i32 noundef 0) #5
  %tobool67.not = icmp ne i32 %call66, 0
  tail call void @X509_NAME_free(%struct.X509_name_st* noundef %call) #5
  tail call void @X509_NAME_free(%struct.X509_name_st* noundef %call2) #5
  %cmp70108 = icmp ne i32 %res.12, 0
  %cmp70 = select i1 %tobool67.not, i1 %cmp70108, i1 false
  %conv71 = zext i1 %cmp70 to i32
  %call72 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 764, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.69, i64 0, i64 0), i32 noundef %conv71) #5
  ret i32 %call72
}

declare dso_local i32 @OSSL_CMP_CTX_set1_issuer(%struct.ossl_cmp_ctx_st* noundef, %struct.X509_name_st* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.X509_name_st* @OSSL_CMP_CTX_get0_issuer(%struct.ossl_cmp_ctx_st* noundef readonly %ctx) unnamed_addr #1 {
entry:
  %cmp = icmp eq %struct.ossl_cmp_ctx_st* %ctx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 764, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.OSSL_CMP_CTX_get0_issuer, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 103, i8* noundef null) #5
  br label %return

if.end:                                           ; preds = %entry
  %issuer = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 48
  %0 = load %struct.X509_name_st*, %struct.X509_name_st** %issuer, align 8, !tbaa !47
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi %struct.X509_name_st* [ null, %if.then ], [ %0, %if.end ]
  ret %struct.X509_name_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @execute_CTX_set1_get0_subjectName(%struct.test_fixture* nocapture noundef readonly %fixture) unnamed_addr #1 {
entry:
  %ctx1 = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %fixture, i64 0, i32 1
  %0 = load %struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_ctx_st** %ctx1, align 8, !tbaa !7
  %call = tail call %struct.X509_name_st* @X509_NAME_new() #5
  %call2 = tail call %struct.X509_name_st* @X509_NAME_new() #5
  %call3 = tail call i64 @ERR_peek_error() #5
  %conv = trunc i64 %call3 to i32
  %call4 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 765, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.57, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.58, i64 0, i64 0), i32 noundef %conv, i32 noundef 0) #5
  %call5 = tail call i32 @OSSL_CMP_CTX_set1_subjectName(%struct.ossl_cmp_ctx_st* noundef null, %struct.X509_name_st* noundef %call) #5
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %lor.lhs.false, label %if.then9

lor.lhs.false:                                    ; preds = %entry
  %tobool.not = icmp ne i32 %call4, 0
  %spec.select = zext i1 %tobool.not to i32
  %call7 = tail call i64 @ERR_peek_error() #5
  %cmp = icmp eq i64 %call7, 0
  br i1 %cmp, label %if.then9, label %if.end10

if.then9:                                         ; preds = %lor.lhs.false, %entry
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 765, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.59, i64 0, i64 0)) #5
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %lor.lhs.false
  %res.1 = phi i32 [ 0, %if.then9 ], [ %spec.select, %lor.lhs.false ]
  tail call void @ERR_clear_error() #5
  %call11 = tail call fastcc %struct.X509_name_st* @OSSL_CMP_CTX_get0_subjectName(%struct.ossl_cmp_ctx_st* noundef null) #6
  %cmp12.not = icmp eq %struct.X509_name_st* %call11, null
  br i1 %cmp12.not, label %lor.lhs.false14, label %if.then18

lor.lhs.false14:                                  ; preds = %if.end10
  %call15 = tail call i64 @ERR_peek_error() #5
  %cmp16 = icmp eq i64 %call15, 0
  br i1 %cmp16, label %if.then18, label %if.end19

if.then18:                                        ; preds = %lor.lhs.false14, %if.end10
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 765, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.60, i64 0, i64 0)) #5
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %lor.lhs.false14
  %res.2 = phi i32 [ 0, %if.then18 ], [ %res.1, %lor.lhs.false14 ]
  tail call void @ERR_clear_error() #5
  %call20 = tail call fastcc %struct.X509_name_st* @OSSL_CMP_CTX_get0_subjectName(%struct.ossl_cmp_ctx_st* noundef %0) #6
  %cmp21 = icmp eq %struct.X509_name_st* %call20, null
  br i1 %cmp21, label %if.end24, label %if.then23

if.then23:                                        ; preds = %if.end19
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 765, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.61, i64 0, i64 0)) #5
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %if.end19
  %res.3 = phi i32 [ %res.2, %if.end19 ], [ 0, %if.then23 ]
  %call25 = tail call i32 @OSSL_CMP_CTX_set1_subjectName(%struct.ossl_cmp_ctx_st* noundef %0, %struct.X509_name_st* noundef %call) #5
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.end24
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 765, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.62, i64 0, i64 0)) #5
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %if.end24
  %res.4 = phi i32 [ %res.3, %if.end24 ], [ 0, %if.then27 ]
  %call29 = tail call fastcc %struct.X509_name_st* @OSSL_CMP_CTX_get0_subjectName(%struct.ossl_cmp_ctx_st* noundef %0) #6
  %cmp30 = icmp eq %struct.X509_name_st* %call29, %call
  br i1 %cmp30, label %if.then32, label %if.end33

if.then32:                                        ; preds = %if.end28
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 765, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.123, i64 0, i64 0)) #5
  br label %if.end33

if.end33:                                         ; preds = %if.then32, %if.end28
  %res.5 = phi i32 [ 0, %if.then32 ], [ %res.4, %if.end28 ]
  %cmp34 = icmp eq %struct.X509_name_st* %call29, null
  br i1 %cmp34, label %if.then36, label %if.end37

if.then36:                                        ; preds = %if.end33
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 765, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.124, i64 0, i64 0)) #5
  br label %if.end37

if.end37:                                         ; preds = %if.then36, %if.end33
  %res.6 = phi i32 [ 0, %if.then36 ], [ %res.5, %if.end33 ]
  %call38 = tail call i32 @OSSL_CMP_CTX_set1_subjectName(%struct.ossl_cmp_ctx_st* noundef %0, %struct.X509_name_st* noundef %call2) #5
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.then40, label %if.end41

if.then40:                                        ; preds = %if.end37
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 765, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.64, i64 0, i64 0)) #5
  br label %if.end41

if.end41:                                         ; preds = %if.then40, %if.end37
  %res.7 = phi i32 [ %res.6, %if.end37 ], [ 0, %if.then40 ]
  %call42 = tail call fastcc %struct.X509_name_st* @OSSL_CMP_CTX_get0_subjectName(%struct.ossl_cmp_ctx_st* noundef %0) #6
  %cmp43 = icmp eq %struct.X509_name_st* %call42, null
  br i1 %cmp43, label %if.then45, label %if.end46

if.then45:                                        ; preds = %if.end41
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 765, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.65, i64 0, i64 0)) #5
  br label %if.end46

if.end46:                                         ; preds = %if.then45, %if.end41
  %res.8 = phi i32 [ 0, %if.then45 ], [ %res.7, %if.end41 ]
  %cmp47 = icmp eq %struct.X509_name_st* %call42, %call2
  br i1 %cmp47, label %if.then49, label %if.end50

if.then49:                                        ; preds = %if.end46
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 765, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.125, i64 0, i64 0)) #5
  br label %if.end50

if.end50:                                         ; preds = %if.then49, %if.end46
  %res.9 = phi i32 [ 0, %if.then49 ], [ %res.8, %if.end46 ]
  %cmp51 = icmp eq %struct.X509_name_st* %call2, %call
  br i1 %cmp51, label %if.then53, label %if.end54

if.then53:                                        ; preds = %if.end50
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 765, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.126, i64 0, i64 0)) #5
  br label %if.end54

if.end54:                                         ; preds = %if.then53, %if.end50
  %res.10 = phi i32 [ 0, %if.then53 ], [ %res.9, %if.end50 ]
  %call55 = tail call fastcc %struct.X509_name_st* @OSSL_CMP_CTX_get0_subjectName(%struct.ossl_cmp_ctx_st* noundef %0) #6
  %cmp56 = icmp eq %struct.X509_name_st* %call55, null
  br i1 %cmp56, label %if.then58, label %if.end59

if.then58:                                        ; preds = %if.end54
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 765, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.67, i64 0, i64 0)) #5
  br label %if.end59

if.end59:                                         ; preds = %if.then58, %if.end54
  %res.11 = phi i32 [ 0, %if.then58 ], [ %res.10, %if.end54 ]
  %cmp60.not = icmp eq %struct.X509_name_st* %call55, %call42
  br i1 %cmp60.not, label %if.end63, label %if.then62

if.then62:                                        ; preds = %if.end59
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 765, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.68, i64 0, i64 0)) #5
  br label %if.end63

if.end63:                                         ; preds = %if.then62, %if.end59
  %res.12 = phi i32 [ 0, %if.then62 ], [ %res.11, %if.end59 ]
  %call64 = tail call i64 @ERR_peek_error() #5
  %conv65 = trunc i64 %call64 to i32
  %call66 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 765, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.57, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.58, i64 0, i64 0), i32 noundef %conv65, i32 noundef 0) #5
  %tobool67.not = icmp ne i32 %call66, 0
  tail call void @X509_NAME_free(%struct.X509_name_st* noundef %call) #5
  tail call void @X509_NAME_free(%struct.X509_name_st* noundef %call2) #5
  %cmp70108 = icmp ne i32 %res.12, 0
  %cmp70 = select i1 %tobool67.not, i1 %cmp70108, i1 false
  %conv71 = zext i1 %cmp70 to i32
  %call72 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 765, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.69, i64 0, i64 0), i32 noundef %conv71) #5
  ret i32 %call72
}

declare dso_local i32 @OSSL_CMP_CTX_set1_subjectName(%struct.ossl_cmp_ctx_st* noundef, %struct.X509_name_st* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.X509_name_st* @OSSL_CMP_CTX_get0_subjectName(%struct.ossl_cmp_ctx_st* noundef readonly %ctx) unnamed_addr #1 {
entry:
  %cmp = icmp eq %struct.ossl_cmp_ctx_st* %ctx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 765, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.OSSL_CMP_CTX_get0_subjectName, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 103, i8* noundef null) #5
  br label %return

if.end:                                           ; preds = %entry
  %subjectName = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 50
  %0 = load %struct.X509_name_st*, %struct.X509_name_st** %subjectName, align 8, !tbaa !48
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi %struct.X509_name_st* [ null, %if.then ], [ %0, %if.end ]
  ret %struct.X509_name_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @execute_CTX_set0_get0_reqExtensions(%struct.test_fixture* nocapture noundef readonly %fixture) unnamed_addr #1 {
entry:
  %ctx1 = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %fixture, i64 0, i32 1
  %0 = load %struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_ctx_st** %ctx1, align 8, !tbaa !7
  %call = tail call %struct.stack_st* @OPENSSL_sk_new_null() #5
  %1 = bitcast %struct.stack_st* %call to %struct.stack_st_X509_EXTENSION*
  %call2 = tail call %struct.stack_st* @OPENSSL_sk_new_null() #5
  %2 = bitcast %struct.stack_st* %call2 to %struct.stack_st_X509_EXTENSION*
  %call3 = tail call i64 @ERR_peek_error() #5
  %conv = trunc i64 %call3 to i32
  %call4 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 769, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.57, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.58, i64 0, i64 0), i32 noundef %conv, i32 noundef 0) #5
  %call5 = tail call i32 @OSSL_CMP_CTX_set0_reqExtensions(%struct.ossl_cmp_ctx_st* noundef null, %struct.stack_st_X509_EXTENSION* noundef %1) #5
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %lor.lhs.false, label %if.then9

lor.lhs.false:                                    ; preds = %entry
  %tobool.not = icmp ne i32 %call4, 0
  %spec.select = zext i1 %tobool.not to i32
  %call7 = tail call i64 @ERR_peek_error() #5
  %cmp = icmp eq i64 %call7, 0
  br i1 %cmp, label %if.then9, label %if.end10

if.then9:                                         ; preds = %lor.lhs.false, %entry
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 769, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.59, i64 0, i64 0)) #5
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %lor.lhs.false
  %res.1 = phi i32 [ 0, %if.then9 ], [ %spec.select, %lor.lhs.false ]
  tail call void @ERR_clear_error() #5
  %call11 = tail call fastcc %struct.stack_st_X509_EXTENSION* @OSSL_CMP_CTX_get0_reqExtensions(%struct.ossl_cmp_ctx_st* noundef null) #6
  %cmp12.not = icmp eq %struct.stack_st_X509_EXTENSION* %call11, null
  br i1 %cmp12.not, label %lor.lhs.false14, label %if.then18

lor.lhs.false14:                                  ; preds = %if.end10
  %call15 = tail call i64 @ERR_peek_error() #5
  %cmp16 = icmp eq i64 %call15, 0
  br i1 %cmp16, label %if.then18, label %if.end19

if.then18:                                        ; preds = %lor.lhs.false14, %if.end10
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 769, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.60, i64 0, i64 0)) #5
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %lor.lhs.false14
  %res.2 = phi i32 [ 0, %if.then18 ], [ %res.1, %lor.lhs.false14 ]
  tail call void @ERR_clear_error() #5
  %call20 = tail call fastcc %struct.stack_st_X509_EXTENSION* @OSSL_CMP_CTX_get0_reqExtensions(%struct.ossl_cmp_ctx_st* noundef %0) #6
  %cmp21 = icmp eq %struct.stack_st_X509_EXTENSION* %call20, null
  br i1 %cmp21, label %if.end24, label %if.then23

if.then23:                                        ; preds = %if.end19
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 769, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.61, i64 0, i64 0)) #5
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %if.end19
  %res.3 = phi i32 [ %res.2, %if.end19 ], [ 0, %if.then23 ]
  %call25 = tail call i32 @OSSL_CMP_CTX_set0_reqExtensions(%struct.ossl_cmp_ctx_st* noundef %0, %struct.stack_st_X509_EXTENSION* noundef %1) #5
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.end24
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 769, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.62, i64 0, i64 0)) #5
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %if.end24
  %res.4 = phi i32 [ %res.3, %if.end24 ], [ 0, %if.then27 ]
  %call29 = tail call fastcc %struct.stack_st_X509_EXTENSION* @OSSL_CMP_CTX_get0_reqExtensions(%struct.ossl_cmp_ctx_st* noundef %0) #6
  %cmp30.not = icmp eq %struct.stack_st_X509_EXTENSION* %call29, %1
  br i1 %cmp30.not, label %if.end33, label %if.then32

if.then32:                                        ; preds = %if.end28
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 769, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.63, i64 0, i64 0)) #5
  br label %if.end33

if.end33:                                         ; preds = %if.then32, %if.end28
  %res.5 = phi i32 [ 0, %if.then32 ], [ %res.4, %if.end28 ]
  %call34 = tail call i32 @OSSL_CMP_CTX_set0_reqExtensions(%struct.ossl_cmp_ctx_st* noundef %0, %struct.stack_st_X509_EXTENSION* noundef %2) #5
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.then36, label %if.end37

if.then36:                                        ; preds = %if.end33
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 769, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.64, i64 0, i64 0)) #5
  br label %if.end37

if.end37:                                         ; preds = %if.then36, %if.end33
  %res.6 = phi i32 [ %res.5, %if.end33 ], [ 0, %if.then36 ]
  %call38 = tail call fastcc %struct.stack_st_X509_EXTENSION* @OSSL_CMP_CTX_get0_reqExtensions(%struct.ossl_cmp_ctx_st* noundef %0) #6
  %cmp39 = icmp eq %struct.stack_st_X509_EXTENSION* %call38, null
  br i1 %cmp39, label %if.then41, label %if.end42

if.then41:                                        ; preds = %if.end37
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 769, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.65, i64 0, i64 0)) #5
  br label %if.end42

if.end42:                                         ; preds = %if.then41, %if.end37
  %res.7 = phi i32 [ 0, %if.then41 ], [ %res.6, %if.end37 ]
  %cmp43.not = icmp eq %struct.stack_st_X509_EXTENSION* %call38, %2
  br i1 %cmp43.not, label %if.end46, label %if.then45

if.then45:                                        ; preds = %if.end42
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 769, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.66, i64 0, i64 0)) #5
  br label %if.end46

if.end46:                                         ; preds = %if.then45, %if.end42
  %res.8 = phi i32 [ 0, %if.then45 ], [ %res.7, %if.end42 ]
  %call47 = tail call fastcc %struct.stack_st_X509_EXTENSION* @OSSL_CMP_CTX_get0_reqExtensions(%struct.ossl_cmp_ctx_st* noundef %0) #6
  %cmp48 = icmp eq %struct.stack_st_X509_EXTENSION* %call47, null
  br i1 %cmp48, label %if.then50, label %if.end51

if.then50:                                        ; preds = %if.end46
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 769, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.67, i64 0, i64 0)) #5
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %if.end46
  %res.9 = phi i32 [ 0, %if.then50 ], [ %res.8, %if.end46 ]
  %cmp52.not = icmp eq %struct.stack_st_X509_EXTENSION* %call47, %call38
  br i1 %cmp52.not, label %if.end55, label %if.then54

if.then54:                                        ; preds = %if.end51
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 769, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.68, i64 0, i64 0)) #5
  br label %if.end55

if.end55:                                         ; preds = %if.then54, %if.end51
  %res.10 = phi i32 [ 0, %if.then54 ], [ %res.9, %if.end51 ]
  %call56 = tail call i64 @ERR_peek_error() #5
  %conv57 = trunc i64 %call56 to i32
  %call58 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 769, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.57, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.58, i64 0, i64 0), i32 noundef %conv57, i32 noundef 0) #5
  %tobool59.not = icmp ne i32 %call58, 0
  %call62 = tail call fastcc %struct.stack_st* @ossl_check_X509_EXTENSION_sk_type(%struct.stack_st_X509_EXTENSION* noundef null) #6
  tail call void @OPENSSL_sk_free(%struct.stack_st* noundef %call62) #5
  tail call void @OPENSSL_sk_free(%struct.stack_st* noundef %call62) #5
  %cmp6499 = icmp ne i32 %res.10, 0
  %cmp64 = select i1 %tobool59.not, i1 %cmp6499, i1 false
  %conv65 = zext i1 %cmp64 to i32
  %call66 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 769, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.69, i64 0, i64 0), i32 noundef %conv65) #5
  ret i32 %call66
}

declare dso_local i32 @OSSL_CMP_CTX_set0_reqExtensions(%struct.ossl_cmp_ctx_st* noundef, %struct.stack_st_X509_EXTENSION* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.stack_st_X509_EXTENSION* @OSSL_CMP_CTX_get0_reqExtensions(%struct.ossl_cmp_ctx_st* noundef readonly %ctx) unnamed_addr #1 {
entry:
  %cmp = icmp eq %struct.ossl_cmp_ctx_st* %ctx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 769, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.OSSL_CMP_CTX_get0_reqExtensions, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 103, i8* noundef null) #5
  br label %return

if.end:                                           ; preds = %entry
  %reqExtensions = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 54
  %0 = load %struct.stack_st_X509_EXTENSION*, %struct.stack_st_X509_EXTENSION** %reqExtensions, align 8, !tbaa !49
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi %struct.stack_st_X509_EXTENSION* [ null, %if.then ], [ %0, %if.end ]
  ret %struct.stack_st_X509_EXTENSION* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_X509_EXTENSION_sk_type(%struct.stack_st_X509_EXTENSION* noundef readnone %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_X509_EXTENSION* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @execute_CTX_reqExtensions_have_SAN_test(%struct.test_fixture* nocapture noundef readonly %fixture) unnamed_addr #1 {
entry:
  %str = alloca [16 x i8], align 16
  %ctx1 = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %fixture, i64 0, i32 1
  %0 = load %struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_ctx_st** %ctx1, align 8, !tbaa !7
  %1 = getelementptr inbounds [16 x i8], [16 x i8]* %str, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #8
  %call = tail call i32 @OSSL_CMP_CTX_reqExtensions_have_SAN(%struct.ossl_cmp_ctx_st* noundef %0) #5
  %cmp = icmp ne i32 %call, 0
  %conv = zext i1 %cmp to i32
  %call2 = tail call i32 @test_false(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 212, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.138, i64 0, i64 0), i32 noundef %conv) #5
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call3 = call i32 @RAND_bytes(i8* noundef nonnull %1, i32 noundef 16) #5
  %call4 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 215, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.103, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.139, i64 0, i64 0), i32 noundef 1, i32 noundef %call3) #5
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %call6 = call %struct.asn1_string_st* @ASN1_OCTET_STRING_new() #5
  %2 = bitcast %struct.asn1_string_st* %call6 to i8*
  %call7 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 216, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.140, i64 0, i64 0), i8* noundef %2) #5
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %err, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false
  %call11 = call i32 @ASN1_OCTET_STRING_set(%struct.asn1_string_st* noundef %call6, i8* noundef nonnull %1, i32 noundef 16) #5
  %cmp12 = icmp ne i32 %call11, 0
  %conv13 = zext i1 %cmp12 to i32
  %call14 = call i32 @test_true(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 217, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.141, i64 0, i64 0), i32 noundef %conv13) #5
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %err, label %if.end17

if.end17:                                         ; preds = %lor.lhs.false9
  %call18 = call %struct.X509_extension_st* @X509_EXTENSION_create_by_NID(%struct.X509_extension_st** noundef null, i32 noundef 85, i32 noundef 0, %struct.asn1_string_st* noundef %call6) #5
  %3 = bitcast %struct.X509_extension_st* %call18 to i8*
  %call19 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 220, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.142, i64 0, i64 0), i8* noundef %3) #5
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.then39, label %lor.lhs.false21

lor.lhs.false21:                                  ; preds = %if.end17
  %call22 = call %struct.stack_st* @OPENSSL_sk_new_null() #5
  %4 = bitcast %struct.stack_st* %call22 to %struct.stack_st_X509_EXTENSION*
  %5 = bitcast %struct.stack_st* %call22 to i8*
  %call23 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 221, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.143, i64 0, i64 0), i8* noundef %5) #5
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.then39, label %lor.lhs.false25

lor.lhs.false25:                                  ; preds = %lor.lhs.false21
  %call26 = call fastcc %struct.stack_st* @ossl_check_X509_EXTENSION_sk_type(%struct.stack_st_X509_EXTENSION* noundef %4) #6
  %call28 = call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call26, i8* noundef %3) #5
  %cmp29 = icmp ne i32 %call28, 0
  %conv30 = zext i1 %cmp29 to i32
  %call31 = call i32 @test_true(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 222, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.144, i64 0, i64 0), i32 noundef %conv30) #5
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.then39, label %lor.lhs.false33

lor.lhs.false33:                                  ; preds = %lor.lhs.false25
  %call34 = call i32 @OSSL_CMP_CTX_set0_reqExtensions(%struct.ossl_cmp_ctx_st* noundef %0, %struct.stack_st_X509_EXTENSION* noundef %4) #5
  %cmp35 = icmp ne i32 %call34, 0
  %conv36 = zext i1 %cmp35 to i32
  %call37 = call i32 @test_true(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 223, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.145, i64 0, i64 0), i32 noundef %conv36) #5
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.then39, label %if.end41

if.then39:                                        ; preds = %lor.lhs.false33, %lor.lhs.false25, %lor.lhs.false21, %if.end17
  %exts.0 = phi %struct.stack_st_X509_EXTENSION* [ %4, %lor.lhs.false33 ], [ %4, %lor.lhs.false25 ], [ %4, %lor.lhs.false21 ], [ null, %if.end17 ]
  call void @X509_EXTENSION_free(%struct.X509_extension_st* noundef %call18) #5
  %call40 = call fastcc %struct.stack_st* @ossl_check_X509_EXTENSION_sk_type(%struct.stack_st_X509_EXTENSION* noundef %exts.0) #6
  call void @OPENSSL_sk_free(%struct.stack_st* noundef %call40) #5
  br label %err

if.end41:                                         ; preds = %lor.lhs.false33
  %call42 = call i32 @OSSL_CMP_CTX_reqExtensions_have_SAN(%struct.ossl_cmp_ctx_st* noundef %0) #5
  %call43 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 228, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.138, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.103, i64 0, i64 0), i32 noundef %call42, i32 noundef 1) #5
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %err, label %if.then45

if.then45:                                        ; preds = %if.end41
  %call47 = call i8* @OPENSSL_sk_pop(%struct.stack_st* noundef %call26) #5
  %6 = bitcast i8* %call47 to %struct.X509_extension_st*
  %call48 = call i32 @OSSL_CMP_CTX_reqExtensions_have_SAN(%struct.ossl_cmp_ctx_st* noundef %0) #5
  %cmp49 = icmp ne i32 %call48, 0
  %conv50 = zext i1 %cmp49 to i32
  %call51 = call i32 @test_false(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 230, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.138, i64 0, i64 0), i32 noundef %conv50) #5
  call void @X509_EXTENSION_free(%struct.X509_extension_st* noundef %6) #5
  br label %err

err:                                              ; preds = %if.end41, %if.then45, %if.end, %lor.lhs.false, %lor.lhs.false9, %if.then39
  %data.0 = phi %struct.asn1_string_st* [ %call6, %if.then45 ], [ %call6, %if.end41 ], [ %call6, %if.then39 ], [ %call6, %lor.lhs.false9 ], [ %call6, %lor.lhs.false ], [ null, %if.end ]
  %res.0 = phi i32 [ %call51, %if.then45 ], [ 0, %if.end41 ], [ 0, %if.then39 ], [ 0, %lor.lhs.false9 ], [ 0, %lor.lhs.false ], [ 0, %if.end ]
  call void @ASN1_OCTET_STRING_free(%struct.asn1_string_st* noundef %data.0) #5
  br label %cleanup

cleanup:                                          ; preds = %entry, %err
  %retval.0 = phi i32 [ %res.0, %err ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #8
  ret i32 %retval.0
}

declare dso_local i32 @test_false(i8* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare dso_local i32 @OSSL_CMP_CTX_reqExtensions_have_SAN(%struct.ossl_cmp_ctx_st* noundef) local_unnamed_addr #3

declare dso_local i32 @RAND_bytes(i8* noundef, i32 noundef) local_unnamed_addr #3

declare dso_local i32 @ASN1_OCTET_STRING_set(%struct.asn1_string_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare dso_local %struct.X509_extension_st* @X509_EXTENSION_create_by_NID(%struct.X509_extension_st** noundef, i32 noundef, i32 noundef, %struct.asn1_string_st* noundef) local_unnamed_addr #3

declare dso_local void @X509_EXTENSION_free(%struct.X509_extension_st* noundef) local_unnamed_addr #3

declare dso_local i8* @OPENSSL_sk_pop(%struct.stack_st* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @execute_CTX_push0_policy(%struct.test_fixture* nocapture noundef readonly %fixture) unnamed_addr #1 {
entry:
  %ctx1 = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %fixture, i64 0, i32 1
  %0 = load %struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_ctx_st** %ctx1, align 8, !tbaa !7
  %policies = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %0, i64 0, i32 55
  %1 = load %struct.stack_st_POLICYINFO*, %struct.stack_st_POLICYINFO** %policies, align 8, !tbaa !50
  %call = tail call fastcc %struct.stack_st* @ossl_check_const_POLICYINFO_sk_type(%struct.stack_st_POLICYINFO* noundef %1) #6
  %call2 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #5
  %call3 = tail call %struct.POLICYINFO_st* @POLICYINFO_new() #5
  %call4 = tail call %struct.POLICYINFO_st* @POLICYINFO_new() #5
  %call5 = tail call i64 @ERR_peek_error() #5
  %conv = trunc i64 %call5 to i32
  %call6 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 770, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.57, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.58, i64 0, i64 0), i32 noundef %conv, i32 noundef 0) #5
  %call7 = tail call i32 @OSSL_CMP_CTX_push0_policy(%struct.ossl_cmp_ctx_st* noundef null, %struct.POLICYINFO_st* noundef %call3) #5
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %lor.lhs.false, label %if.then11

lor.lhs.false:                                    ; preds = %entry
  %tobool.not = icmp ne i32 %call6, 0
  %spec.select = zext i1 %tobool.not to i32
  %call9 = tail call i64 @ERR_peek_error() #5
  %cmp = icmp eq i64 %call9, 0
  br i1 %cmp, label %if.then11, label %if.end12

if.then11:                                        ; preds = %lor.lhs.false, %entry
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 770, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.130, i64 0, i64 0)) #5
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %lor.lhs.false
  %res.1 = phi i32 [ 0, %if.then11 ], [ %spec.select, %lor.lhs.false ]
  tail call void @ERR_clear_error() #5
  %2 = icmp sgt i32 %call2, 0
  %spec.store.select = select i1 %2, i32 %call2, i32 0
  %3 = load %struct.stack_st_POLICYINFO*, %struct.stack_st_POLICYINFO** %policies, align 8, !tbaa !50
  %cmp18 = icmp eq %struct.stack_st_POLICYINFO* %3, null
  br i1 %cmp18, label %if.end21, label %if.then20

if.then20:                                        ; preds = %if.end12
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 770, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.131, i64 0, i64 0)) #5
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %if.end12
  %res.2 = phi i32 [ %res.1, %if.end12 ], [ 0, %if.then20 ]
  %call22 = tail call i32 @OSSL_CMP_CTX_push0_policy(%struct.ossl_cmp_ctx_st* noundef nonnull %0, %struct.POLICYINFO_st* noundef %call3) #5
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.end21
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 770, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.132, i64 0, i64 0)) #5
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %if.end21
  %res.3 = phi i32 [ %res.2, %if.end21 ], [ 0, %if.then24 ]
  %4 = load %struct.stack_st_POLICYINFO*, %struct.stack_st_POLICYINFO** %policies, align 8, !tbaa !50
  %call27 = tail call fastcc %struct.stack_st* @ossl_check_const_POLICYINFO_sk_type(%struct.stack_st_POLICYINFO* noundef %4) #6
  %call28 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call27) #5
  %inc = add nuw nsw i32 %spec.store.select, 1
  %cmp29.not = icmp eq i32 %call28, %inc
  br i1 %cmp29.not, label %if.end32, label %if.then31

if.then31:                                        ; preds = %if.end25
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 770, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.133, i64 0, i64 0)) #5
  br label %if.end32

if.end32:                                         ; preds = %if.then31, %if.end25
  %res.4 = phi i32 [ 0, %if.then31 ], [ %res.3, %if.end25 ]
  %call33 = tail call fastcc %struct.POLICYINFO_st* @sk_top_policies(%struct.ossl_cmp_ctx_st* noundef nonnull %0) #6
  %cmp34.not = icmp eq %struct.POLICYINFO_st* %call33, %call3
  br i1 %cmp34.not, label %if.end37, label %if.then36

if.then36:                                        ; preds = %if.end32
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 770, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.134, i64 0, i64 0)) #5
  br label %if.end37

if.end37:                                         ; preds = %if.then36, %if.end32
  %res.5 = phi i32 [ 0, %if.then36 ], [ %res.4, %if.end32 ]
  %call38 = tail call i32 @OSSL_CMP_CTX_push0_policy(%struct.ossl_cmp_ctx_st* noundef nonnull %0, %struct.POLICYINFO_st* noundef %call4) #5
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.then40, label %if.end41

if.then40:                                        ; preds = %if.end37
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 770, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.135, i64 0, i64 0)) #5
  br label %if.end41

if.end41:                                         ; preds = %if.then40, %if.end37
  %res.6 = phi i32 [ %res.5, %if.end37 ], [ 0, %if.then40 ]
  %5 = load %struct.stack_st_POLICYINFO*, %struct.stack_st_POLICYINFO** %policies, align 8, !tbaa !50
  %call43 = tail call fastcc %struct.stack_st* @ossl_check_const_POLICYINFO_sk_type(%struct.stack_st_POLICYINFO* noundef %5) #6
  %call44 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call43) #5
  %inc45 = add nuw nsw i32 %spec.store.select, 2
  %cmp46.not = icmp eq i32 %call44, %inc45
  br i1 %cmp46.not, label %if.end49, label %if.then48

if.then48:                                        ; preds = %if.end41
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 770, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.136, i64 0, i64 0)) #5
  br label %if.end49

if.end49:                                         ; preds = %if.then48, %if.end41
  %res.7 = phi i32 [ 0, %if.then48 ], [ %res.6, %if.end41 ]
  %call50 = tail call fastcc %struct.POLICYINFO_st* @sk_top_policies(%struct.ossl_cmp_ctx_st* noundef nonnull %0) #6
  %cmp51.not = icmp eq %struct.POLICYINFO_st* %call50, %call4
  br i1 %cmp51.not, label %if.end54, label %if.then53

if.then53:                                        ; preds = %if.end49
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 770, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.137, i64 0, i64 0)) #5
  br label %if.end54

if.end54:                                         ; preds = %if.then53, %if.end49
  %res.8 = phi i32 [ 0, %if.then53 ], [ %res.7, %if.end49 ]
  %call55 = tail call i64 @ERR_peek_error() #5
  %conv56 = trunc i64 %call55 to i32
  %call57 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 770, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.57, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.58, i64 0, i64 0), i32 noundef %conv56, i32 noundef 0) #5
  %tobool58.not = icmp ne i32 %call57, 0
  tail call void @POLICYINFO_free(%struct.POLICYINFO_st* noundef null) #5
  tail call void @POLICYINFO_free(%struct.POLICYINFO_st* noundef null) #5
  %cmp6192 = icmp ne i32 %res.8, 0
  %cmp61 = select i1 %tobool58.not, i1 %cmp6192, i1 false
  %conv62 = zext i1 %cmp61 to i32
  %call63 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 770, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.69, i64 0, i64 0), i32 noundef %conv62) #5
  ret i32 %call63
}

declare dso_local i32 @OSSL_CMP_CTX_push0_policy(%struct.ossl_cmp_ctx_st* noundef, %struct.POLICYINFO_st* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_POLICYINFO_sk_type(%struct.stack_st_POLICYINFO* noundef readnone %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_POLICYINFO* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare dso_local %struct.POLICYINFO_st* @POLICYINFO_new() local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.POLICYINFO_st* @sk_top_policies(%struct.ossl_cmp_ctx_st* nocapture noundef readonly %ctx) unnamed_addr #1 {
entry:
  %policies = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 55
  %0 = load %struct.stack_st_POLICYINFO*, %struct.stack_st_POLICYINFO** %policies, align 8, !tbaa !50
  %call = tail call fastcc %struct.stack_st* @ossl_check_const_POLICYINFO_sk_type(%struct.stack_st_POLICYINFO* noundef %0) #6
  %call3 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #5
  %sub = add nsw i32 %call3, -1
  %call4 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call, i32 noundef %sub) #5
  %1 = bitcast i8* %call4 to %struct.POLICYINFO_st*
  ret %struct.POLICYINFO_st* %1
}

declare dso_local void @POLICYINFO_free(%struct.POLICYINFO_st* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @execute_CTX_set1_get0_oldCert(%struct.test_fixture* nocapture noundef readonly %fixture) unnamed_addr #1 {
entry:
  %ctx1 = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %fixture, i64 0, i32 1
  %0 = load %struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_ctx_st** %ctx1, align 8, !tbaa !7
  %1 = load %struct.x509_st*, %struct.x509_st** @test_cert, align 8, !tbaa !3
  %call = tail call %struct.x509_st* @X509_dup(%struct.x509_st* noundef %1) #5
  %2 = load %struct.x509_st*, %struct.x509_st** @test_cert, align 8, !tbaa !3
  %call2 = tail call %struct.x509_st* @X509_dup(%struct.x509_st* noundef %2) #5
  %call3 = tail call i64 @ERR_peek_error() #5
  %conv = trunc i64 %call3 to i32
  %call4 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 771, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.57, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.58, i64 0, i64 0), i32 noundef %conv, i32 noundef 0) #5
  %call5 = tail call i32 @OSSL_CMP_CTX_set1_oldCert(%struct.ossl_cmp_ctx_st* noundef null, %struct.x509_st* noundef %call) #5
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %lor.lhs.false, label %if.then9

lor.lhs.false:                                    ; preds = %entry
  %tobool.not = icmp ne i32 %call4, 0
  %spec.select = zext i1 %tobool.not to i32
  %call7 = tail call i64 @ERR_peek_error() #5
  %cmp = icmp eq i64 %call7, 0
  br i1 %cmp, label %if.then9, label %if.end10

if.then9:                                         ; preds = %lor.lhs.false, %entry
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 771, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.59, i64 0, i64 0)) #5
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %lor.lhs.false
  %res.1 = phi i32 [ 0, %if.then9 ], [ %spec.select, %lor.lhs.false ]
  tail call void @ERR_clear_error() #5
  %call11 = tail call fastcc %struct.x509_st* @OSSL_CMP_CTX_get0_oldCert(%struct.ossl_cmp_ctx_st* noundef null) #6
  %cmp12.not = icmp eq %struct.x509_st* %call11, null
  br i1 %cmp12.not, label %lor.lhs.false14, label %if.then18

lor.lhs.false14:                                  ; preds = %if.end10
  %call15 = tail call i64 @ERR_peek_error() #5
  %cmp16 = icmp eq i64 %call15, 0
  br i1 %cmp16, label %if.then18, label %if.end19

if.then18:                                        ; preds = %lor.lhs.false14, %if.end10
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 771, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.60, i64 0, i64 0)) #5
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %lor.lhs.false14
  %res.2 = phi i32 [ 0, %if.then18 ], [ %res.1, %lor.lhs.false14 ]
  tail call void @ERR_clear_error() #5
  %call20 = tail call fastcc %struct.x509_st* @OSSL_CMP_CTX_get0_oldCert(%struct.ossl_cmp_ctx_st* noundef %0) #6
  %cmp21 = icmp eq %struct.x509_st* %call20, null
  br i1 %cmp21, label %if.end24, label %if.then23

if.then23:                                        ; preds = %if.end19
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 771, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.61, i64 0, i64 0)) #5
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %if.end19
  %res.3 = phi i32 [ %res.2, %if.end19 ], [ 0, %if.then23 ]
  %call25 = tail call i32 @OSSL_CMP_CTX_set1_oldCert(%struct.ossl_cmp_ctx_st* noundef %0, %struct.x509_st* noundef %call) #5
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.end24
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 771, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.62, i64 0, i64 0)) #5
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %if.end24
  %res.4 = phi i32 [ %res.3, %if.end24 ], [ 0, %if.then27 ]
  %call29 = tail call fastcc %struct.x509_st* @OSSL_CMP_CTX_get0_oldCert(%struct.ossl_cmp_ctx_st* noundef %0) #6
  %cmp30 = icmp eq %struct.x509_st* %call29, null
  br i1 %cmp30, label %if.then32, label %if.end33

if.then32:                                        ; preds = %if.end28
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 771, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.124, i64 0, i64 0)) #5
  br label %if.end33

if.end33:                                         ; preds = %if.then32, %if.end28
  %res.5 = phi i32 [ 0, %if.then32 ], [ %res.4, %if.end28 ]
  %call34 = tail call i32 @OSSL_CMP_CTX_set1_oldCert(%struct.ossl_cmp_ctx_st* noundef %0, %struct.x509_st* noundef %call2) #5
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.then36, label %if.end37

if.then36:                                        ; preds = %if.end33
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 771, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.64, i64 0, i64 0)) #5
  br label %if.end37

if.end37:                                         ; preds = %if.then36, %if.end33
  %res.6 = phi i32 [ %res.5, %if.end33 ], [ 0, %if.then36 ]
  %call38 = tail call fastcc %struct.x509_st* @OSSL_CMP_CTX_get0_oldCert(%struct.ossl_cmp_ctx_st* noundef %0) #6
  %cmp39 = icmp eq %struct.x509_st* %call38, null
  br i1 %cmp39, label %if.then41, label %if.end42

if.then41:                                        ; preds = %if.end37
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 771, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.65, i64 0, i64 0)) #5
  br label %if.end42

if.end42:                                         ; preds = %if.then41, %if.end37
  %res.7 = phi i32 [ 0, %if.then41 ], [ %res.6, %if.end37 ]
  %cmp43 = icmp eq %struct.x509_st* %call2, %call
  br i1 %cmp43, label %if.then45, label %if.end46

if.then45:                                        ; preds = %if.end42
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 771, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.126, i64 0, i64 0)) #5
  br label %if.end46

if.end46:                                         ; preds = %if.then45, %if.end42
  %res.8 = phi i32 [ 0, %if.then45 ], [ %res.7, %if.end42 ]
  %call47 = tail call fastcc %struct.x509_st* @OSSL_CMP_CTX_get0_oldCert(%struct.ossl_cmp_ctx_st* noundef %0) #6
  %cmp48 = icmp eq %struct.x509_st* %call47, null
  br i1 %cmp48, label %if.then50, label %if.end51

if.then50:                                        ; preds = %if.end46
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 771, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.67, i64 0, i64 0)) #5
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %if.end46
  %res.9 = phi i32 [ 0, %if.then50 ], [ %res.8, %if.end46 ]
  %cmp52.not = icmp eq %struct.x509_st* %call47, %call38
  br i1 %cmp52.not, label %if.end55, label %if.then54

if.then54:                                        ; preds = %if.end51
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 771, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.68, i64 0, i64 0)) #5
  br label %if.end55

if.end55:                                         ; preds = %if.then54, %if.end51
  %res.10 = phi i32 [ 0, %if.then54 ], [ %res.9, %if.end51 ]
  %call56 = tail call i64 @ERR_peek_error() #5
  %conv57 = trunc i64 %call56 to i32
  %call58 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 771, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.57, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.58, i64 0, i64 0), i32 noundef %conv57, i32 noundef 0) #5
  %tobool59.not = icmp ne i32 %call58, 0
  tail call void @X509_free(%struct.x509_st* noundef %call) #5
  tail call void @X509_free(%struct.x509_st* noundef %call2) #5
  %cmp6296 = icmp ne i32 %res.10, 0
  %cmp62 = select i1 %tobool59.not, i1 %cmp6296, i1 false
  %conv63 = zext i1 %cmp62 to i32
  %call64 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 771, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.69, i64 0, i64 0), i32 noundef %conv63) #5
  ret i32 %call64
}

declare dso_local i32 @OSSL_CMP_CTX_set1_oldCert(%struct.ossl_cmp_ctx_st* noundef, %struct.x509_st* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.x509_st* @OSSL_CMP_CTX_get0_oldCert(%struct.ossl_cmp_ctx_st* noundef readonly %ctx) unnamed_addr #1 {
entry:
  %cmp = icmp eq %struct.ossl_cmp_ctx_st* %ctx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 771, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.OSSL_CMP_CTX_get0_oldCert, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 103, i8* noundef null) #5
  br label %return

if.end:                                           ; preds = %entry
  %oldCert = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 58
  %0 = load %struct.x509_st*, %struct.x509_st** %oldCert, align 8, !tbaa !51
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi %struct.x509_st* [ null, %if.then ], [ %0, %if.end ]
  ret %struct.x509_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @execute_CTX_push0_genm_ITAV(%struct.test_fixture* nocapture noundef readonly %fixture) unnamed_addr #1 {
entry:
  %ctx1 = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %fixture, i64 0, i32 1
  %0 = load %struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_ctx_st** %ctx1, align 8, !tbaa !7
  %genm_ITAVs = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %0, i64 0, i32 61
  %1 = load %struct.stack_st_OSSL_CMP_ITAV*, %struct.stack_st_OSSL_CMP_ITAV** %genm_ITAVs, align 8, !tbaa !52
  %call = tail call fastcc %struct.stack_st* @ossl_check_const_OSSL_CMP_ITAV_sk_type(%struct.stack_st_OSSL_CMP_ITAV* noundef %1) #6
  %call2 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #5
  %call3 = tail call %struct.ossl_cmp_itav_st* @OSSL_CMP_ITAV_new() #5
  %call4 = tail call %struct.ossl_cmp_itav_st* @OSSL_CMP_ITAV_new() #5
  %call5 = tail call i64 @ERR_peek_error() #5
  %conv = trunc i64 %call5 to i32
  %call6 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 775, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.57, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.58, i64 0, i64 0), i32 noundef %conv, i32 noundef 0) #5
  %call7 = tail call i32 @OSSL_CMP_CTX_push0_genm_ITAV(%struct.ossl_cmp_ctx_st* noundef null, %struct.ossl_cmp_itav_st* noundef %call3) #5
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %lor.lhs.false, label %if.then11

lor.lhs.false:                                    ; preds = %entry
  %tobool.not = icmp ne i32 %call6, 0
  %spec.select = zext i1 %tobool.not to i32
  %call9 = tail call i64 @ERR_peek_error() #5
  %cmp = icmp eq i64 %call9, 0
  br i1 %cmp, label %if.then11, label %if.end12

if.then11:                                        ; preds = %lor.lhs.false, %entry
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 775, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.130, i64 0, i64 0)) #5
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %lor.lhs.false
  %res.1 = phi i32 [ 0, %if.then11 ], [ %spec.select, %lor.lhs.false ]
  tail call void @ERR_clear_error() #5
  %2 = icmp sgt i32 %call2, 0
  %spec.store.select = select i1 %2, i32 %call2, i32 0
  %3 = load %struct.stack_st_OSSL_CMP_ITAV*, %struct.stack_st_OSSL_CMP_ITAV** %genm_ITAVs, align 8, !tbaa !52
  %cmp18 = icmp eq %struct.stack_st_OSSL_CMP_ITAV* %3, null
  br i1 %cmp18, label %if.end21, label %if.then20

if.then20:                                        ; preds = %if.end12
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 775, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.131, i64 0, i64 0)) #5
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %if.end12
  %res.2 = phi i32 [ %res.1, %if.end12 ], [ 0, %if.then20 ]
  %call22 = tail call i32 @OSSL_CMP_CTX_push0_genm_ITAV(%struct.ossl_cmp_ctx_st* noundef nonnull %0, %struct.ossl_cmp_itav_st* noundef %call3) #5
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.end21
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 775, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.132, i64 0, i64 0)) #5
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %if.end21
  %res.3 = phi i32 [ %res.2, %if.end21 ], [ 0, %if.then24 ]
  %4 = load %struct.stack_st_OSSL_CMP_ITAV*, %struct.stack_st_OSSL_CMP_ITAV** %genm_ITAVs, align 8, !tbaa !52
  %call27 = tail call fastcc %struct.stack_st* @ossl_check_const_OSSL_CMP_ITAV_sk_type(%struct.stack_st_OSSL_CMP_ITAV* noundef %4) #6
  %call28 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call27) #5
  %inc = add nuw nsw i32 %spec.store.select, 1
  %cmp29.not = icmp eq i32 %call28, %inc
  br i1 %cmp29.not, label %if.end32, label %if.then31

if.then31:                                        ; preds = %if.end25
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 775, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.133, i64 0, i64 0)) #5
  br label %if.end32

if.end32:                                         ; preds = %if.then31, %if.end25
  %res.4 = phi i32 [ 0, %if.then31 ], [ %res.3, %if.end25 ]
  %call33 = tail call fastcc %struct.ossl_cmp_itav_st* @sk_top_genm_ITAVs(%struct.ossl_cmp_ctx_st* noundef nonnull %0) #6
  %cmp34.not = icmp eq %struct.ossl_cmp_itav_st* %call33, %call3
  br i1 %cmp34.not, label %if.end37, label %if.then36

if.then36:                                        ; preds = %if.end32
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 775, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.134, i64 0, i64 0)) #5
  br label %if.end37

if.end37:                                         ; preds = %if.then36, %if.end32
  %res.5 = phi i32 [ 0, %if.then36 ], [ %res.4, %if.end32 ]
  %call38 = tail call i32 @OSSL_CMP_CTX_push0_genm_ITAV(%struct.ossl_cmp_ctx_st* noundef nonnull %0, %struct.ossl_cmp_itav_st* noundef %call4) #5
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.then40, label %if.end41

if.then40:                                        ; preds = %if.end37
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 775, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.135, i64 0, i64 0)) #5
  br label %if.end41

if.end41:                                         ; preds = %if.then40, %if.end37
  %res.6 = phi i32 [ %res.5, %if.end37 ], [ 0, %if.then40 ]
  %5 = load %struct.stack_st_OSSL_CMP_ITAV*, %struct.stack_st_OSSL_CMP_ITAV** %genm_ITAVs, align 8, !tbaa !52
  %call43 = tail call fastcc %struct.stack_st* @ossl_check_const_OSSL_CMP_ITAV_sk_type(%struct.stack_st_OSSL_CMP_ITAV* noundef %5) #6
  %call44 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call43) #5
  %inc45 = add nuw nsw i32 %spec.store.select, 2
  %cmp46.not = icmp eq i32 %call44, %inc45
  br i1 %cmp46.not, label %if.end49, label %if.then48

if.then48:                                        ; preds = %if.end41
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 775, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.136, i64 0, i64 0)) #5
  br label %if.end49

if.end49:                                         ; preds = %if.then48, %if.end41
  %res.7 = phi i32 [ 0, %if.then48 ], [ %res.6, %if.end41 ]
  %call50 = tail call fastcc %struct.ossl_cmp_itav_st* @sk_top_genm_ITAVs(%struct.ossl_cmp_ctx_st* noundef nonnull %0) #6
  %cmp51.not = icmp eq %struct.ossl_cmp_itav_st* %call50, %call4
  br i1 %cmp51.not, label %if.end54, label %if.then53

if.then53:                                        ; preds = %if.end49
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 775, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.137, i64 0, i64 0)) #5
  br label %if.end54

if.end54:                                         ; preds = %if.then53, %if.end49
  %res.8 = phi i32 [ 0, %if.then53 ], [ %res.7, %if.end49 ]
  %call55 = tail call i64 @ERR_peek_error() #5
  %conv56 = trunc i64 %call55 to i32
  %call57 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 775, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.57, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.58, i64 0, i64 0), i32 noundef %conv56, i32 noundef 0) #5
  %tobool58.not = icmp ne i32 %call57, 0
  tail call void @OSSL_CMP_ITAV_free(%struct.ossl_cmp_itav_st* noundef null) #5
  tail call void @OSSL_CMP_ITAV_free(%struct.ossl_cmp_itav_st* noundef null) #5
  %cmp6192 = icmp ne i32 %res.8, 0
  %cmp61 = select i1 %tobool58.not, i1 %cmp6192, i1 false
  %conv62 = zext i1 %cmp61 to i32
  %call63 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 775, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.69, i64 0, i64 0), i32 noundef %conv62) #5
  ret i32 %call63
}

declare dso_local i32 @OSSL_CMP_CTX_push0_genm_ITAV(%struct.ossl_cmp_ctx_st* noundef, %struct.ossl_cmp_itav_st* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.ossl_cmp_itav_st* @sk_top_genm_ITAVs(%struct.ossl_cmp_ctx_st* nocapture noundef readonly %ctx) unnamed_addr #1 {
entry:
  %genm_ITAVs = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 61
  %0 = load %struct.stack_st_OSSL_CMP_ITAV*, %struct.stack_st_OSSL_CMP_ITAV** %genm_ITAVs, align 8, !tbaa !52
  %call = tail call fastcc %struct.stack_st* @ossl_check_const_OSSL_CMP_ITAV_sk_type(%struct.stack_st_OSSL_CMP_ITAV* noundef %0) #6
  %call3 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #5
  %sub = add nsw i32 %call3, -1
  %call4 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call, i32 noundef %sub) #5
  %1 = bitcast i8* %call4 to %struct.ossl_cmp_itav_st*
  ret %struct.ossl_cmp_itav_st* %1
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @execute_CTX_set_get_certConf_cb(%struct.test_fixture* nocapture noundef readonly %fixture) unnamed_addr #1 {
entry:
  %ctx1 = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %fixture, i64 0, i32 1
  %0 = load %struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_ctx_st** %ctx1, align 8, !tbaa !7
  %call = tail call i64 @ERR_peek_error() #5
  %conv = trunc i64 %call to i32
  %call2 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 776, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.57, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.58, i64 0, i64 0), i32 noundef %conv, i32 noundef 0) #5
  %call3 = tail call i32 @OSSL_CMP_CTX_set_certConf_cb(%struct.ossl_cmp_ctx_st* noundef null, i32 (%struct.ossl_cmp_ctx_st*, %struct.x509_st*, i32, i8**)* noundef nonnull @test_certConf_cb) #5
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %lor.lhs.false, label %if.then7

lor.lhs.false:                                    ; preds = %entry
  %tobool.not = icmp ne i32 %call2, 0
  %spec.select = zext i1 %tobool.not to i32
  %call5 = tail call i64 @ERR_peek_error() #5
  %cmp = icmp eq i64 %call5, 0
  br i1 %cmp, label %if.then7, label %if.end8

if.then7:                                         ; preds = %lor.lhs.false, %entry
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 776, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.59, i64 0, i64 0)) #5
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %lor.lhs.false
  %res.1 = phi i32 [ 0, %if.then7 ], [ %spec.select, %lor.lhs.false ]
  tail call void @ERR_clear_error() #5
  %call9 = tail call fastcc i32 (%struct.ossl_cmp_ctx_st*, %struct.x509_st*, i32, i8**)* @OSSL_CMP_CTX_get_certConf_cb(%struct.ossl_cmp_ctx_st* noundef null) #6
  %cmp10.not = icmp eq i32 (%struct.ossl_cmp_ctx_st*, %struct.x509_st*, i32, i8**)* %call9, null
  br i1 %cmp10.not, label %lor.lhs.false12, label %if.then16

lor.lhs.false12:                                  ; preds = %if.end8
  %call13 = tail call i64 @ERR_peek_error() #5
  %cmp14 = icmp eq i64 %call13, 0
  br i1 %cmp14, label %if.then16, label %if.end17

if.then16:                                        ; preds = %lor.lhs.false12, %if.end8
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 776, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.60, i64 0, i64 0)) #5
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %lor.lhs.false12
  %res.2 = phi i32 [ 0, %if.then16 ], [ %res.1, %lor.lhs.false12 ]
  tail call void @ERR_clear_error() #5
  %call18 = tail call fastcc i32 (%struct.ossl_cmp_ctx_st*, %struct.x509_st*, i32, i8**)* @OSSL_CMP_CTX_get_certConf_cb(%struct.ossl_cmp_ctx_st* noundef %0) #6
  %cmp19 = icmp eq i32 (%struct.ossl_cmp_ctx_st*, %struct.x509_st*, i32, i8**)* %call18, null
  br i1 %cmp19, label %if.end22, label %if.then21

if.then21:                                        ; preds = %if.end17
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 776, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.61, i64 0, i64 0)) #5
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %if.end17
  %res.3 = phi i32 [ %res.2, %if.end17 ], [ 0, %if.then21 ]
  %call23 = tail call i32 @OSSL_CMP_CTX_set_certConf_cb(%struct.ossl_cmp_ctx_st* noundef %0, i32 (%struct.ossl_cmp_ctx_st*, %struct.x509_st*, i32, i8**)* noundef nonnull @test_certConf_cb) #5
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.then25, label %if.end26

if.then25:                                        ; preds = %if.end22
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 776, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.62, i64 0, i64 0)) #5
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %if.end22
  %res.4 = phi i32 [ %res.3, %if.end22 ], [ 0, %if.then25 ]
  %call27 = tail call fastcc i32 (%struct.ossl_cmp_ctx_st*, %struct.x509_st*, i32, i8**)* @OSSL_CMP_CTX_get_certConf_cb(%struct.ossl_cmp_ctx_st* noundef %0) #6
  %cmp28.not = icmp eq i32 (%struct.ossl_cmp_ctx_st*, %struct.x509_st*, i32, i8**)* %call27, @test_certConf_cb
  br i1 %cmp28.not, label %if.end31, label %if.then30

if.then30:                                        ; preds = %if.end26
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 776, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.63, i64 0, i64 0)) #5
  br label %if.end31

if.end31:                                         ; preds = %if.then30, %if.end26
  %res.5 = phi i32 [ 0, %if.then30 ], [ %res.4, %if.end26 ]
  %call32 = tail call i32 @OSSL_CMP_CTX_set_certConf_cb(%struct.ossl_cmp_ctx_st* noundef %0, i32 (%struct.ossl_cmp_ctx_st*, %struct.x509_st*, i32, i8**)* noundef nonnull @test_certConf_cb) #5
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.then34, label %if.end35

if.then34:                                        ; preds = %if.end31
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 776, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.64, i64 0, i64 0)) #5
  br label %if.end35

if.end35:                                         ; preds = %if.then34, %if.end31
  %res.6 = phi i32 [ %res.5, %if.end31 ], [ 0, %if.then34 ]
  %call36 = tail call fastcc i32 (%struct.ossl_cmp_ctx_st*, %struct.x509_st*, i32, i8**)* @OSSL_CMP_CTX_get_certConf_cb(%struct.ossl_cmp_ctx_st* noundef %0) #6
  %cmp37 = icmp eq i32 (%struct.ossl_cmp_ctx_st*, %struct.x509_st*, i32, i8**)* %call36, null
  br i1 %cmp37, label %if.end40.thread, label %if.end40

if.end40.thread:                                  ; preds = %if.end35
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 776, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.65, i64 0, i64 0)) #5
  br label %if.then43

if.end40:                                         ; preds = %if.end35
  %cmp41.not = icmp eq i32 (%struct.ossl_cmp_ctx_st*, %struct.x509_st*, i32, i8**)* %call36, @test_certConf_cb
  br i1 %cmp41.not, label %if.end44, label %if.then43

if.then43:                                        ; preds = %if.end40.thread, %if.end40
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 776, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.66, i64 0, i64 0)) #5
  br label %if.end44

if.end44:                                         ; preds = %if.then43, %if.end40
  %res.8 = phi i32 [ 0, %if.then43 ], [ %res.6, %if.end40 ]
  %call45 = tail call fastcc i32 (%struct.ossl_cmp_ctx_st*, %struct.x509_st*, i32, i8**)* @OSSL_CMP_CTX_get_certConf_cb(%struct.ossl_cmp_ctx_st* noundef %0) #6
  %cmp46 = icmp eq i32 (%struct.ossl_cmp_ctx_st*, %struct.x509_st*, i32, i8**)* %call45, null
  br i1 %cmp46, label %if.then48, label %if.end49

if.then48:                                        ; preds = %if.end44
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 776, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.67, i64 0, i64 0)) #5
  br label %if.end49

if.end49:                                         ; preds = %if.then48, %if.end44
  %res.9 = phi i32 [ 0, %if.then48 ], [ %res.8, %if.end44 ]
  %cmp50.not = icmp eq i32 (%struct.ossl_cmp_ctx_st*, %struct.x509_st*, i32, i8**)* %call45, %call36
  br i1 %cmp50.not, label %if.end53, label %if.then52

if.then52:                                        ; preds = %if.end49
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 776, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.68, i64 0, i64 0)) #5
  br label %if.end53

if.end53:                                         ; preds = %if.then52, %if.end49
  %res.10 = phi i32 [ 0, %if.then52 ], [ %res.9, %if.end49 ]
  %call54 = tail call i64 @ERR_peek_error() #5
  %conv55 = trunc i64 %call54 to i32
  %call56 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 776, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.57, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.58, i64 0, i64 0), i32 noundef %conv55, i32 noundef 0) #5
  %tobool57.not = icmp ne i32 %call56, 0
  %cmp6097 = icmp ne i32 %res.10, 0
  %cmp60 = select i1 %tobool57.not, i1 %cmp6097, i1 false
  %conv61 = zext i1 %cmp60 to i32
  %call62 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 776, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.69, i64 0, i64 0), i32 noundef %conv61) #5
  ret i32 %call62
}

declare dso_local i32 @OSSL_CMP_CTX_set_certConf_cb(%struct.ossl_cmp_ctx_st* noundef, i32 (%struct.ossl_cmp_ctx_st*, %struct.x509_st*, i32, i8**)* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 (%struct.ossl_cmp_ctx_st*, %struct.x509_st*, i32, i8**)* @OSSL_CMP_CTX_get_certConf_cb(%struct.ossl_cmp_ctx_st* noundef readonly %ctx) unnamed_addr #1 {
entry:
  %cmp = icmp eq %struct.ossl_cmp_ctx_st* %ctx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 776, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.OSSL_CMP_CTX_get_certConf_cb, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 103, i8* noundef null) #5
  br label %return

if.end:                                           ; preds = %entry
  %certConf_cb = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 69
  %0 = load i32 (%struct.ossl_cmp_ctx_st*, %struct.x509_st*, i32, i8**)*, i32 (%struct.ossl_cmp_ctx_st*, %struct.x509_st*, i32, i8**)** %certConf_cb, align 8, !tbaa !53
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 (%struct.ossl_cmp_ctx_st*, %struct.x509_st*, i32, i8**)* [ null, %if.then ], [ %0, %if.end ]
  ret i32 (%struct.ossl_cmp_ctx_st*, %struct.x509_st*, i32, i8**)* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal i32 @test_certConf_cb(%struct.ossl_cmp_ctx_st* nocapture noundef readnone %ctx, %struct.x509_st* nocapture noundef readnone %cert, i32 noundef %fail_info, i8** nocapture noundef readnone %txt) #0 {
entry:
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @execute_CTX_set_get_certConf_cb_arg(%struct.test_fixture* nocapture noundef readonly %fixture) unnamed_addr #1 {
entry:
  %ctx1 = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %fixture, i64 0, i32 1
  %0 = load %struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_ctx_st** %ctx1, align 8, !tbaa !7
  %call = tail call i64 @ERR_peek_error() #5
  %conv = trunc i64 %call to i32
  %call2 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 777, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.57, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.58, i64 0, i64 0), i32 noundef %conv, i32 noundef 0) #5
  %call3 = tail call i32 @OSSL_CMP_CTX_set_certConf_cb_arg(%struct.ossl_cmp_ctx_st* noundef null, i8* noundef nonnull inttoptr (i64 1 to i8*)) #5
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %lor.lhs.false, label %if.then7

lor.lhs.false:                                    ; preds = %entry
  %tobool.not = icmp ne i32 %call2, 0
  %spec.select = zext i1 %tobool.not to i32
  %call5 = tail call i64 @ERR_peek_error() #5
  %cmp = icmp eq i64 %call5, 0
  br i1 %cmp, label %if.then7, label %if.end8

if.then7:                                         ; preds = %lor.lhs.false, %entry
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 777, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.59, i64 0, i64 0)) #5
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %lor.lhs.false
  %res.1 = phi i32 [ 0, %if.then7 ], [ %spec.select, %lor.lhs.false ]
  tail call void @ERR_clear_error() #5
  %call9 = tail call i8* @OSSL_CMP_CTX_get_certConf_cb_arg(%struct.ossl_cmp_ctx_st* noundef null) #5
  %cmp10.not = icmp eq i8* %call9, null
  br i1 %cmp10.not, label %lor.lhs.false12, label %if.then16

lor.lhs.false12:                                  ; preds = %if.end8
  %call13 = tail call i64 @ERR_peek_error() #5
  %cmp14 = icmp eq i64 %call13, 0
  br i1 %cmp14, label %if.then16, label %if.end17

if.then16:                                        ; preds = %lor.lhs.false12, %if.end8
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 777, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.60, i64 0, i64 0)) #5
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %lor.lhs.false12
  %res.2 = phi i32 [ 0, %if.then16 ], [ %res.1, %lor.lhs.false12 ]
  tail call void @ERR_clear_error() #5
  %call18 = tail call i8* @OSSL_CMP_CTX_get_certConf_cb_arg(%struct.ossl_cmp_ctx_st* noundef %0) #5
  %cmp19 = icmp eq i8* %call18, null
  br i1 %cmp19, label %if.end22, label %if.then21

if.then21:                                        ; preds = %if.end17
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 777, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.61, i64 0, i64 0)) #5
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %if.end17
  %res.3 = phi i32 [ %res.2, %if.end17 ], [ 0, %if.then21 ]
  %call23 = tail call i32 @OSSL_CMP_CTX_set_certConf_cb_arg(%struct.ossl_cmp_ctx_st* noundef %0, i8* noundef nonnull inttoptr (i64 1 to i8*)) #5
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.then25, label %if.end26

if.then25:                                        ; preds = %if.end22
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 777, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.62, i64 0, i64 0)) #5
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %if.end22
  %res.4 = phi i32 [ %res.3, %if.end22 ], [ 0, %if.then25 ]
  %call27 = tail call i8* @OSSL_CMP_CTX_get_certConf_cb_arg(%struct.ossl_cmp_ctx_st* noundef %0) #5
  %cmp28.not = icmp eq i8* %call27, inttoptr (i64 1 to i8*)
  br i1 %cmp28.not, label %if.end31, label %if.then30

if.then30:                                        ; preds = %if.end26
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 777, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.63, i64 0, i64 0)) #5
  br label %if.end31

if.end31:                                         ; preds = %if.then30, %if.end26
  %res.5 = phi i32 [ 0, %if.then30 ], [ %res.4, %if.end26 ]
  %call32 = tail call i32 @OSSL_CMP_CTX_set_certConf_cb_arg(%struct.ossl_cmp_ctx_st* noundef %0, i8* noundef nonnull inttoptr (i64 1 to i8*)) #5
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.then34, label %if.end35

if.then34:                                        ; preds = %if.end31
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 777, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.64, i64 0, i64 0)) #5
  br label %if.end35

if.end35:                                         ; preds = %if.then34, %if.end31
  %res.6 = phi i32 [ %res.5, %if.end31 ], [ 0, %if.then34 ]
  %call36 = tail call i8* @OSSL_CMP_CTX_get_certConf_cb_arg(%struct.ossl_cmp_ctx_st* noundef %0) #5
  %magicptr = ptrtoint i8* %call36 to i64
  switch i64 %magicptr, label %if.then43 [
    i64 0, label %if.end40.thread
    i64 1, label %if.end44
  ]

if.end40.thread:                                  ; preds = %if.end35
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 777, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.65, i64 0, i64 0)) #5
  br label %if.then43

if.then43:                                        ; preds = %if.end35, %if.end40.thread
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 777, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.66, i64 0, i64 0)) #5
  br label %if.end44

if.end44:                                         ; preds = %if.end35, %if.then43
  %res.8 = phi i32 [ 0, %if.then43 ], [ %res.6, %if.end35 ]
  %call45 = tail call i8* @OSSL_CMP_CTX_get_certConf_cb_arg(%struct.ossl_cmp_ctx_st* noundef %0) #5
  %cmp46 = icmp eq i8* %call45, null
  br i1 %cmp46, label %if.then48, label %if.end49

if.then48:                                        ; preds = %if.end44
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 777, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.67, i64 0, i64 0)) #5
  br label %if.end49

if.end49:                                         ; preds = %if.then48, %if.end44
  %res.9 = phi i32 [ 0, %if.then48 ], [ %res.8, %if.end44 ]
  %cmp50.not = icmp eq i8* %call45, %call36
  br i1 %cmp50.not, label %if.end53, label %if.then52

if.then52:                                        ; preds = %if.end49
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 777, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.68, i64 0, i64 0)) #5
  br label %if.end53

if.end53:                                         ; preds = %if.then52, %if.end49
  %res.10 = phi i32 [ 0, %if.then52 ], [ %res.9, %if.end49 ]
  %call54 = tail call i64 @ERR_peek_error() #5
  %conv55 = trunc i64 %call54 to i32
  %call56 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 777, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.57, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.58, i64 0, i64 0), i32 noundef %conv55, i32 noundef 0) #5
  %tobool57.not = icmp ne i32 %call56, 0
  %cmp6097 = icmp ne i32 %res.10, 0
  %cmp60 = select i1 %tobool57.not, i1 %cmp6097, i1 false
  %conv61 = zext i1 %cmp60 to i32
  %call62 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 777, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.69, i64 0, i64 0), i32 noundef %conv61) #5
  ret i32 %call62
}

declare dso_local i32 @OSSL_CMP_CTX_set_certConf_cb_arg(%struct.ossl_cmp_ctx_st* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local i8* @OSSL_CMP_CTX_get_certConf_cb_arg(%struct.ossl_cmp_ctx_st* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @execute_CTX_set_get_status(%struct.test_fixture* nocapture noundef readonly %fixture) unnamed_addr #1 {
entry:
  %ctx1 = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %fixture, i64 0, i32 1
  %0 = load %struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_ctx_st** %ctx1, align 8, !tbaa !7
  %call = tail call i64 @ERR_peek_error() #5
  %conv = trunc i64 %call to i32
  %call2 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 779, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.57, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.58, i64 0, i64 0), i32 noundef %conv, i32 noundef 0) #5
  tail call void @ERR_clear_error() #5
  %call3 = tail call i32 @OSSL_CMP_CTX_get_status(%struct.ossl_cmp_ctx_st* noundef null) #5
  %cmp.not = icmp eq i32 %call3, -1
  br i1 %cmp.not, label %lor.lhs.false, label %if.then8

lor.lhs.false:                                    ; preds = %entry
  %tobool.not = icmp ne i32 %call2, 0
  %spec.select = zext i1 %tobool.not to i32
  %call5 = tail call i64 @ERR_peek_error() #5
  %cmp6 = icmp eq i64 %call5, 0
  br i1 %cmp6, label %if.then8, label %if.end9

if.then8:                                         ; preds = %lor.lhs.false, %entry
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 779, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.60, i64 0, i64 0)) #5
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %lor.lhs.false
  %res.1 = phi i32 [ 0, %if.then8 ], [ %spec.select, %lor.lhs.false ]
  tail call void @ERR_clear_error() #5
  %call10 = tail call i32 @OSSL_CMP_CTX_get_status(%struct.ossl_cmp_ctx_st* noundef %0) #5
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.end14, label %if.then13

if.then13:                                        ; preds = %if.end9
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 779, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.61, i64 0, i64 0)) #5
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %if.end9
  %res.2 = phi i32 [ %res.1, %if.end9 ], [ 0, %if.then13 ]
  %call15 = tail call i32 @ossl_cmp_ctx_set_status(%struct.ossl_cmp_ctx_st* noundef %0, i32 noundef 1) #5
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.end14
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 779, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.62, i64 0, i64 0)) #5
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %if.end14
  %res.3 = phi i32 [ %res.2, %if.end14 ], [ 0, %if.then17 ]
  %call19 = tail call i32 @OSSL_CMP_CTX_get_status(%struct.ossl_cmp_ctx_st* noundef %0) #5
  %cmp20.not = icmp eq i32 %call19, 1
  br i1 %cmp20.not, label %if.end23, label %if.then22

if.then22:                                        ; preds = %if.end18
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 779, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.63, i64 0, i64 0)) #5
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %if.end18
  %res.4 = phi i32 [ 0, %if.then22 ], [ %res.3, %if.end18 ]
  %call24 = tail call i32 @ossl_cmp_ctx_set_status(%struct.ossl_cmp_ctx_st* noundef %0, i32 noundef 1) #5
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.then26, label %if.end27

if.then26:                                        ; preds = %if.end23
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 779, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.64, i64 0, i64 0)) #5
  br label %if.end27

if.end27:                                         ; preds = %if.then26, %if.end23
  %res.5 = phi i32 [ %res.4, %if.end23 ], [ 0, %if.then26 ]
  %call28 = tail call i32 @OSSL_CMP_CTX_get_status(%struct.ossl_cmp_ctx_st* noundef %0) #5
  %cmp29 = icmp slt i32 %call28, 0
  br i1 %cmp29, label %if.end32.thread, label %if.end32

if.end32.thread:                                  ; preds = %if.end27
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 779, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.65, i64 0, i64 0)) #5
  br label %if.then35

if.end32:                                         ; preds = %if.end27
  %cmp33.not = icmp eq i32 %call28, 1
  br i1 %cmp33.not, label %if.end36, label %if.then35

if.then35:                                        ; preds = %if.end32.thread, %if.end32
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 779, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.66, i64 0, i64 0)) #5
  br label %if.end36

if.end36:                                         ; preds = %if.then35, %if.end32
  %res.7 = phi i32 [ 0, %if.then35 ], [ %res.5, %if.end32 ]
  %call37 = tail call i32 @OSSL_CMP_CTX_get_status(%struct.ossl_cmp_ctx_st* noundef %0) #5
  %cmp38 = icmp slt i32 %call37, 0
  br i1 %cmp38, label %if.then40, label %if.end41

if.then40:                                        ; preds = %if.end36
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 779, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.67, i64 0, i64 0)) #5
  br label %if.end41

if.end41:                                         ; preds = %if.then40, %if.end36
  %res.8 = phi i32 [ 0, %if.then40 ], [ %res.7, %if.end36 ]
  %cmp42.not = icmp eq i32 %call37, %call28
  br i1 %cmp42.not, label %if.end45, label %if.then44

if.then44:                                        ; preds = %if.end41
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 779, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.68, i64 0, i64 0)) #5
  br label %if.end45

if.end45:                                         ; preds = %if.then44, %if.end41
  %res.9 = phi i32 [ 0, %if.then44 ], [ %res.8, %if.end41 ]
  %call46 = tail call i64 @ERR_peek_error() #5
  %conv47 = trunc i64 %call46 to i32
  %call48 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 779, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.57, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.58, i64 0, i64 0), i32 noundef %conv47, i32 noundef 0) #5
  %tobool49.not = icmp ne i32 %call48, 0
  %cmp5287 = icmp ne i32 %res.9, 0
  %cmp52 = select i1 %tobool49.not, i1 %cmp5287, i1 false
  %conv53 = zext i1 %cmp52 to i32
  %call54 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 779, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.69, i64 0, i64 0), i32 noundef %conv53) #5
  ret i32 %call54
}

declare dso_local i32 @ossl_cmp_ctx_set_status(%struct.ossl_cmp_ctx_st* noundef, i32 noundef) local_unnamed_addr #3

declare dso_local i32 @OSSL_CMP_CTX_get_status(%struct.ossl_cmp_ctx_st* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @execute_CTX_set0_get0_statusString(%struct.test_fixture* nocapture noundef readonly %fixture) unnamed_addr #1 {
entry:
  %ctx1 = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %fixture, i64 0, i32 1
  %0 = load %struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_ctx_st** %ctx1, align 8, !tbaa !7
  %call = tail call %struct.stack_st* @OPENSSL_sk_new_null() #5
  %1 = bitcast %struct.stack_st* %call to %struct.stack_st_ASN1_UTF8STRING*
  %call2 = tail call %struct.stack_st* @OPENSSL_sk_new_null() #5
  %2 = bitcast %struct.stack_st* %call2 to %struct.stack_st_ASN1_UTF8STRING*
  %call3 = tail call i64 @ERR_peek_error() #5
  %conv = trunc i64 %call3 to i32
  %call4 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 780, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.57, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.58, i64 0, i64 0), i32 noundef %conv, i32 noundef 0) #5
  tail call void @ERR_clear_error() #5
  %call5 = tail call %struct.stack_st_ASN1_UTF8STRING* @OSSL_CMP_CTX_get0_statusString(%struct.ossl_cmp_ctx_st* noundef null) #5
  %cmp.not = icmp eq %struct.stack_st_ASN1_UTF8STRING* %call5, null
  br i1 %cmp.not, label %lor.lhs.false, label %if.then10

lor.lhs.false:                                    ; preds = %entry
  %tobool.not = icmp ne i32 %call4, 0
  %spec.select = zext i1 %tobool.not to i32
  %call7 = tail call i64 @ERR_peek_error() #5
  %cmp8 = icmp eq i64 %call7, 0
  br i1 %cmp8, label %if.then10, label %if.end11

if.then10:                                        ; preds = %lor.lhs.false, %entry
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 780, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.60, i64 0, i64 0)) #5
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %lor.lhs.false
  %res.1 = phi i32 [ 0, %if.then10 ], [ %spec.select, %lor.lhs.false ]
  tail call void @ERR_clear_error() #5
  %call12 = tail call %struct.stack_st_ASN1_UTF8STRING* @OSSL_CMP_CTX_get0_statusString(%struct.ossl_cmp_ctx_st* noundef %0) #5
  %cmp13 = icmp eq %struct.stack_st_ASN1_UTF8STRING* %call12, null
  br i1 %cmp13, label %if.end16, label %if.then15

if.then15:                                        ; preds = %if.end11
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 780, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.61, i64 0, i64 0)) #5
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %if.end11
  %res.2 = phi i32 [ %res.1, %if.end11 ], [ 0, %if.then15 ]
  %call17 = tail call i32 @ossl_cmp_ctx_set0_statusString(%struct.ossl_cmp_ctx_st* noundef %0, %struct.stack_st_ASN1_UTF8STRING* noundef %1) #5
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.end16
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 780, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.62, i64 0, i64 0)) #5
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %if.end16
  %res.3 = phi i32 [ %res.2, %if.end16 ], [ 0, %if.then19 ]
  %call21 = tail call %struct.stack_st_ASN1_UTF8STRING* @OSSL_CMP_CTX_get0_statusString(%struct.ossl_cmp_ctx_st* noundef %0) #5
  %cmp22.not = icmp eq %struct.stack_st_ASN1_UTF8STRING* %call21, %1
  br i1 %cmp22.not, label %if.end25, label %if.then24

if.then24:                                        ; preds = %if.end20
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 780, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.63, i64 0, i64 0)) #5
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %if.end20
  %res.4 = phi i32 [ 0, %if.then24 ], [ %res.3, %if.end20 ]
  %call26 = tail call i32 @ossl_cmp_ctx_set0_statusString(%struct.ossl_cmp_ctx_st* noundef %0, %struct.stack_st_ASN1_UTF8STRING* noundef %2) #5
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.then28, label %if.end29

if.then28:                                        ; preds = %if.end25
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 780, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.64, i64 0, i64 0)) #5
  br label %if.end29

if.end29:                                         ; preds = %if.then28, %if.end25
  %res.5 = phi i32 [ %res.4, %if.end25 ], [ 0, %if.then28 ]
  %call30 = tail call %struct.stack_st_ASN1_UTF8STRING* @OSSL_CMP_CTX_get0_statusString(%struct.ossl_cmp_ctx_st* noundef %0) #5
  %cmp31 = icmp eq %struct.stack_st_ASN1_UTF8STRING* %call30, null
  br i1 %cmp31, label %if.then33, label %if.end34

if.then33:                                        ; preds = %if.end29
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 780, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.65, i64 0, i64 0)) #5
  br label %if.end34

if.end34:                                         ; preds = %if.then33, %if.end29
  %res.6 = phi i32 [ 0, %if.then33 ], [ %res.5, %if.end29 ]
  %cmp35.not = icmp eq %struct.stack_st_ASN1_UTF8STRING* %call30, %2
  br i1 %cmp35.not, label %if.end38, label %if.then37

if.then37:                                        ; preds = %if.end34
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 780, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.66, i64 0, i64 0)) #5
  br label %if.end38

if.end38:                                         ; preds = %if.then37, %if.end34
  %res.7 = phi i32 [ 0, %if.then37 ], [ %res.6, %if.end34 ]
  %call39 = tail call %struct.stack_st_ASN1_UTF8STRING* @OSSL_CMP_CTX_get0_statusString(%struct.ossl_cmp_ctx_st* noundef %0) #5
  %cmp40 = icmp eq %struct.stack_st_ASN1_UTF8STRING* %call39, null
  br i1 %cmp40, label %if.then42, label %if.end43

if.then42:                                        ; preds = %if.end38
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 780, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.67, i64 0, i64 0)) #5
  br label %if.end43

if.end43:                                         ; preds = %if.then42, %if.end38
  %res.8 = phi i32 [ 0, %if.then42 ], [ %res.7, %if.end38 ]
  %cmp44.not = icmp eq %struct.stack_st_ASN1_UTF8STRING* %call39, %call30
  br i1 %cmp44.not, label %if.end47, label %if.then46

if.then46:                                        ; preds = %if.end43
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 780, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.68, i64 0, i64 0)) #5
  br label %if.end47

if.end47:                                         ; preds = %if.then46, %if.end43
  %res.9 = phi i32 [ 0, %if.then46 ], [ %res.8, %if.end43 ]
  %call48 = tail call i64 @ERR_peek_error() #5
  %conv49 = trunc i64 %call48 to i32
  %call50 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 780, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.57, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.58, i64 0, i64 0), i32 noundef %conv49, i32 noundef 0) #5
  %tobool51.not = icmp ne i32 %call50, 0
  tail call void @OPENSSL_sk_free(%struct.stack_st* noundef null) #5
  tail call void @OPENSSL_sk_free(%struct.stack_st* noundef null) #5
  %cmp5689 = icmp ne i32 %res.9, 0
  %cmp56 = select i1 %tobool51.not, i1 %cmp5689, i1 false
  %conv57 = zext i1 %cmp56 to i32
  %call58 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 780, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.69, i64 0, i64 0), i32 noundef %conv57) #5
  ret i32 %call58
}

declare dso_local %struct.stack_st_ASN1_UTF8STRING* @OSSL_CMP_CTX_get0_statusString(%struct.ossl_cmp_ctx_st* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @execute_CTX_set_get_failInfoCode(%struct.test_fixture* nocapture noundef readonly %fixture) unnamed_addr #1 {
entry:
  %ctx1 = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %fixture, i64 0, i32 1
  %0 = load %struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_ctx_st** %ctx1, align 8, !tbaa !7
  %call = tail call i64 @ERR_peek_error() #5
  %conv = trunc i64 %call to i32
  %call2 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 781, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.57, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.58, i64 0, i64 0), i32 noundef %conv, i32 noundef 0) #5
  tail call void @ERR_clear_error() #5
  %call3 = tail call i32 @OSSL_CMP_CTX_get_failInfoCode(%struct.ossl_cmp_ctx_st* noundef null) #5
  %cmp.not = icmp eq i32 %call3, -1
  br i1 %cmp.not, label %lor.lhs.false, label %if.then8

lor.lhs.false:                                    ; preds = %entry
  %tobool.not = icmp ne i32 %call2, 0
  %spec.select = zext i1 %tobool.not to i32
  %call5 = tail call i64 @ERR_peek_error() #5
  %cmp6 = icmp eq i64 %call5, 0
  br i1 %cmp6, label %if.then8, label %if.end9

if.then8:                                         ; preds = %lor.lhs.false, %entry
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 781, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.60, i64 0, i64 0)) #5
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %lor.lhs.false
  %res.1 = phi i32 [ 0, %if.then8 ], [ %spec.select, %lor.lhs.false ]
  tail call void @ERR_clear_error() #5
  %call10 = tail call i32 @OSSL_CMP_CTX_get_failInfoCode(%struct.ossl_cmp_ctx_st* noundef %0) #5
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.end14, label %if.then13

if.then13:                                        ; preds = %if.end9
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 781, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.61, i64 0, i64 0)) #5
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %if.end9
  %res.2 = phi i32 [ %res.1, %if.end9 ], [ 0, %if.then13 ]
  %call15 = tail call i32 @ossl_cmp_ctx_set_failInfoCode(%struct.ossl_cmp_ctx_st* noundef %0, i32 noundef 1) #5
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.end14
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 781, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.62, i64 0, i64 0)) #5
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %if.end14
  %res.3 = phi i32 [ %res.2, %if.end14 ], [ 0, %if.then17 ]
  %call19 = tail call i32 @OSSL_CMP_CTX_get_failInfoCode(%struct.ossl_cmp_ctx_st* noundef %0) #5
  %cmp20.not = icmp eq i32 %call19, 1
  br i1 %cmp20.not, label %if.end23, label %if.then22

if.then22:                                        ; preds = %if.end18
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 781, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.63, i64 0, i64 0)) #5
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %if.end18
  %res.4 = phi i32 [ 0, %if.then22 ], [ %res.3, %if.end18 ]
  %call24 = tail call i32 @ossl_cmp_ctx_set_failInfoCode(%struct.ossl_cmp_ctx_st* noundef %0, i32 noundef 1) #5
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.then26, label %if.end27

if.then26:                                        ; preds = %if.end23
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 781, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.64, i64 0, i64 0)) #5
  br label %if.end27

if.end27:                                         ; preds = %if.then26, %if.end23
  %res.5 = phi i32 [ %res.4, %if.end23 ], [ 0, %if.then26 ]
  %call28 = tail call i32 @OSSL_CMP_CTX_get_failInfoCode(%struct.ossl_cmp_ctx_st* noundef %0) #5
  %cmp29 = icmp slt i32 %call28, 0
  br i1 %cmp29, label %if.end32.thread, label %if.end32

if.end32.thread:                                  ; preds = %if.end27
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 781, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.65, i64 0, i64 0)) #5
  br label %if.then35

if.end32:                                         ; preds = %if.end27
  %cmp33.not = icmp eq i32 %call28, 1
  br i1 %cmp33.not, label %if.end36, label %if.then35

if.then35:                                        ; preds = %if.end32.thread, %if.end32
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 781, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.66, i64 0, i64 0)) #5
  br label %if.end36

if.end36:                                         ; preds = %if.then35, %if.end32
  %res.7 = phi i32 [ 0, %if.then35 ], [ %res.5, %if.end32 ]
  %call37 = tail call i32 @OSSL_CMP_CTX_get_failInfoCode(%struct.ossl_cmp_ctx_st* noundef %0) #5
  %cmp38 = icmp slt i32 %call37, 0
  br i1 %cmp38, label %if.then40, label %if.end41

if.then40:                                        ; preds = %if.end36
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 781, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.67, i64 0, i64 0)) #5
  br label %if.end41

if.end41:                                         ; preds = %if.then40, %if.end36
  %res.8 = phi i32 [ 0, %if.then40 ], [ %res.7, %if.end36 ]
  %cmp42.not = icmp eq i32 %call37, %call28
  br i1 %cmp42.not, label %if.end45, label %if.then44

if.then44:                                        ; preds = %if.end41
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 781, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.68, i64 0, i64 0)) #5
  br label %if.end45

if.end45:                                         ; preds = %if.then44, %if.end41
  %res.9 = phi i32 [ 0, %if.then44 ], [ %res.8, %if.end41 ]
  %call46 = tail call i64 @ERR_peek_error() #5
  %conv47 = trunc i64 %call46 to i32
  %call48 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 781, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.57, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.58, i64 0, i64 0), i32 noundef %conv47, i32 noundef 0) #5
  %tobool49.not = icmp ne i32 %call48, 0
  %cmp5287 = icmp ne i32 %res.9, 0
  %cmp52 = select i1 %tobool49.not, i1 %cmp5287, i1 false
  %conv53 = zext i1 %cmp52 to i32
  %call54 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 781, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.69, i64 0, i64 0), i32 noundef %conv53) #5
  ret i32 %call54
}

declare dso_local i32 @ossl_cmp_ctx_set_failInfoCode(%struct.ossl_cmp_ctx_st* noundef, i32 noundef) local_unnamed_addr #3

declare dso_local i32 @OSSL_CMP_CTX_get_failInfoCode(%struct.ossl_cmp_ctx_st* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @execute_CTX_set0_get0_newCert(%struct.test_fixture* nocapture noundef readonly %fixture) unnamed_addr #1 {
entry:
  %ctx1 = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %fixture, i64 0, i32 1
  %0 = load %struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_ctx_st** %ctx1, align 8, !tbaa !7
  %1 = load %struct.x509_st*, %struct.x509_st** @test_cert, align 8, !tbaa !3
  %call = tail call %struct.x509_st* @X509_dup(%struct.x509_st* noundef %1) #5
  %2 = load %struct.x509_st*, %struct.x509_st** @test_cert, align 8, !tbaa !3
  %call2 = tail call %struct.x509_st* @X509_dup(%struct.x509_st* noundef %2) #5
  %call3 = tail call i64 @ERR_peek_error() #5
  %conv = trunc i64 %call3 to i32
  %call4 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 782, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.57, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.58, i64 0, i64 0), i32 noundef %conv, i32 noundef 0) #5
  tail call void @ERR_clear_error() #5
  %call5 = tail call %struct.x509_st* @OSSL_CMP_CTX_get0_newCert(%struct.ossl_cmp_ctx_st* noundef null) #5
  %cmp.not = icmp eq %struct.x509_st* %call5, null
  br i1 %cmp.not, label %lor.lhs.false, label %if.then10

lor.lhs.false:                                    ; preds = %entry
  %tobool.not = icmp ne i32 %call4, 0
  %spec.select = zext i1 %tobool.not to i32
  %call7 = tail call i64 @ERR_peek_error() #5
  %cmp8 = icmp eq i64 %call7, 0
  br i1 %cmp8, label %if.then10, label %if.end11

if.then10:                                        ; preds = %lor.lhs.false, %entry
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 782, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.60, i64 0, i64 0)) #5
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %lor.lhs.false
  %res.1 = phi i32 [ 0, %if.then10 ], [ %spec.select, %lor.lhs.false ]
  tail call void @ERR_clear_error() #5
  %call12 = tail call %struct.x509_st* @OSSL_CMP_CTX_get0_newCert(%struct.ossl_cmp_ctx_st* noundef %0) #5
  %cmp13 = icmp eq %struct.x509_st* %call12, null
  br i1 %cmp13, label %if.end16, label %if.then15

if.then15:                                        ; preds = %if.end11
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 782, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.61, i64 0, i64 0)) #5
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %if.end11
  %res.2 = phi i32 [ %res.1, %if.end11 ], [ 0, %if.then15 ]
  %call17 = tail call i32 @ossl_cmp_ctx_set0_newCert(%struct.ossl_cmp_ctx_st* noundef %0, %struct.x509_st* noundef %call) #5
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.end16
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 782, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.62, i64 0, i64 0)) #5
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %if.end16
  %res.3 = phi i32 [ %res.2, %if.end16 ], [ 0, %if.then19 ]
  %call21 = tail call %struct.x509_st* @OSSL_CMP_CTX_get0_newCert(%struct.ossl_cmp_ctx_st* noundef %0) #5
  %cmp22.not = icmp eq %struct.x509_st* %call21, %call
  br i1 %cmp22.not, label %if.end25, label %if.then24

if.then24:                                        ; preds = %if.end20
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 782, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.63, i64 0, i64 0)) #5
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %if.end20
  %res.4 = phi i32 [ 0, %if.then24 ], [ %res.3, %if.end20 ]
  %call26 = tail call i32 @ossl_cmp_ctx_set0_newCert(%struct.ossl_cmp_ctx_st* noundef %0, %struct.x509_st* noundef %call2) #5
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.then28, label %if.end29

if.then28:                                        ; preds = %if.end25
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 782, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.64, i64 0, i64 0)) #5
  br label %if.end29

if.end29:                                         ; preds = %if.then28, %if.end25
  %res.5 = phi i32 [ %res.4, %if.end25 ], [ 0, %if.then28 ]
  %call30 = tail call %struct.x509_st* @OSSL_CMP_CTX_get0_newCert(%struct.ossl_cmp_ctx_st* noundef %0) #5
  %cmp31 = icmp eq %struct.x509_st* %call30, null
  br i1 %cmp31, label %if.then33, label %if.end34

if.then33:                                        ; preds = %if.end29
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 782, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.65, i64 0, i64 0)) #5
  br label %if.end34

if.end34:                                         ; preds = %if.then33, %if.end29
  %res.6 = phi i32 [ 0, %if.then33 ], [ %res.5, %if.end29 ]
  %cmp35.not = icmp eq %struct.x509_st* %call30, %call2
  br i1 %cmp35.not, label %if.end38, label %if.then37

if.then37:                                        ; preds = %if.end34
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 782, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.66, i64 0, i64 0)) #5
  br label %if.end38

if.end38:                                         ; preds = %if.then37, %if.end34
  %res.7 = phi i32 [ 0, %if.then37 ], [ %res.6, %if.end34 ]
  %call39 = tail call %struct.x509_st* @OSSL_CMP_CTX_get0_newCert(%struct.ossl_cmp_ctx_st* noundef %0) #5
  %cmp40 = icmp eq %struct.x509_st* %call39, null
  br i1 %cmp40, label %if.then42, label %if.end43

if.then42:                                        ; preds = %if.end38
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 782, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.67, i64 0, i64 0)) #5
  br label %if.end43

if.end43:                                         ; preds = %if.then42, %if.end38
  %res.8 = phi i32 [ 0, %if.then42 ], [ %res.7, %if.end38 ]
  %cmp44.not = icmp eq %struct.x509_st* %call39, %call30
  br i1 %cmp44.not, label %if.end47, label %if.then46

if.then46:                                        ; preds = %if.end43
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 782, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.68, i64 0, i64 0)) #5
  br label %if.end47

if.end47:                                         ; preds = %if.then46, %if.end43
  %res.9 = phi i32 [ 0, %if.then46 ], [ %res.8, %if.end43 ]
  %call48 = tail call i64 @ERR_peek_error() #5
  %conv49 = trunc i64 %call48 to i32
  %call50 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 782, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.57, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.58, i64 0, i64 0), i32 noundef %conv49, i32 noundef 0) #5
  %tobool51.not = icmp ne i32 %call50, 0
  tail call void @X509_free(%struct.x509_st* noundef null) #5
  tail call void @X509_free(%struct.x509_st* noundef null) #5
  %cmp5487 = icmp ne i32 %res.9, 0
  %cmp54 = select i1 %tobool51.not, i1 %cmp5487, i1 false
  %conv55 = zext i1 %cmp54 to i32
  %call56 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 782, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.69, i64 0, i64 0), i32 noundef %conv55) #5
  ret i32 %call56
}

declare dso_local %struct.x509_st* @OSSL_CMP_CTX_get0_newCert(%struct.ossl_cmp_ctx_st* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @execute_CTX_set1_get1_newChain(%struct.test_fixture* nocapture noundef readonly %fixture) unnamed_addr #1 {
entry:
  %ctx1 = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %fixture, i64 0, i32 1
  %0 = load %struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_ctx_st** %ctx1, align 8, !tbaa !7
  %call = tail call fastcc %struct.stack_st_X509* @sk_X509_new_1() #6
  %call2 = tail call fastcc %struct.stack_st_X509* @sk_X509_new_1() #6
  %call3 = tail call i64 @ERR_peek_error() #5
  %conv = trunc i64 %call3 to i32
  %call4 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 783, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.57, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.58, i64 0, i64 0), i32 noundef %conv, i32 noundef 0) #5
  tail call void @ERR_clear_error() #5
  %call5 = tail call %struct.stack_st_X509* @OSSL_CMP_CTX_get1_newChain(%struct.ossl_cmp_ctx_st* noundef null) #5
  %cmp.not = icmp eq %struct.stack_st_X509* %call5, null
  br i1 %cmp.not, label %lor.lhs.false, label %if.then10

lor.lhs.false:                                    ; preds = %entry
  %tobool.not = icmp ne i32 %call4, 0
  %spec.select = zext i1 %tobool.not to i32
  %call7 = tail call i64 @ERR_peek_error() #5
  %cmp8 = icmp eq i64 %call7, 0
  br i1 %cmp8, label %if.then10, label %if.end11

if.then10:                                        ; preds = %lor.lhs.false, %entry
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 783, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.60, i64 0, i64 0)) #5
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %lor.lhs.false
  %res.1 = phi i32 [ 0, %if.then10 ], [ %spec.select, %lor.lhs.false ]
  tail call void @ERR_clear_error() #5
  %call12 = tail call %struct.stack_st_X509* @OSSL_CMP_CTX_get1_newChain(%struct.ossl_cmp_ctx_st* noundef %0) #5
  %cmp13 = icmp eq %struct.stack_st_X509* %call12, null
  br i1 %cmp13, label %if.end21, label %lor.lhs.false15

lor.lhs.false15:                                  ; preds = %if.end11
  %call16 = tail call fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef nonnull %call12) #6
  %call17 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call16) #5
  %cmp18 = icmp eq i32 %call17, 0
  br i1 %cmp18, label %if.end21, label %if.then20

if.then20:                                        ; preds = %lor.lhs.false15
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 783, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.61, i64 0, i64 0)) #5
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %lor.lhs.false15, %if.end11
  %res.2 = phi i32 [ %res.1, %if.end11 ], [ %res.1, %lor.lhs.false15 ], [ 0, %if.then20 ]
  %call22 = tail call i32 @ossl_cmp_ctx_set1_newChain(%struct.ossl_cmp_ctx_st* noundef %0, %struct.stack_st_X509* noundef %call) #5
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.end21
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 783, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.62, i64 0, i64 0)) #5
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %if.end21
  %res.3 = phi i32 [ %res.2, %if.end21 ], [ 0, %if.then24 ]
  tail call fastcc void @sk_X509_pop_X509_free(%struct.stack_st_X509* noundef %call12) #6
  %call26 = tail call %struct.stack_st_X509* @OSSL_CMP_CTX_get1_newChain(%struct.ossl_cmp_ctx_st* noundef %0) #5
  %cmp27 = icmp eq %struct.stack_st_X509* %call26, %call
  br i1 %cmp27, label %if.then29, label %if.end30

if.then29:                                        ; preds = %if.end25
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 783, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.123, i64 0, i64 0)) #5
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %if.end25
  %res.4 = phi i32 [ 0, %if.then29 ], [ %res.3, %if.end25 ]
  %cmp31 = icmp eq %struct.stack_st_X509* %call26, null
  br i1 %cmp31, label %if.then38, label %lor.lhs.false33

lor.lhs.false33:                                  ; preds = %if.end30
  %call34 = tail call fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef nonnull %call26) #6
  %call35 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call34) #5
  %cmp36 = icmp eq i32 %call35, 0
  br i1 %cmp36, label %if.then38, label %if.end39

if.then38:                                        ; preds = %lor.lhs.false33, %if.end30
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 783, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.124, i64 0, i64 0)) #5
  br label %if.end39

if.end39:                                         ; preds = %if.then38, %lor.lhs.false33
  %res.5 = phi i32 [ 0, %if.then38 ], [ %res.4, %lor.lhs.false33 ]
  %call40 = tail call i32 @ossl_cmp_ctx_set1_newChain(%struct.ossl_cmp_ctx_st* noundef %0, %struct.stack_st_X509* noundef %call2) #5
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.then42, label %if.end43

if.then42:                                        ; preds = %if.end39
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 783, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.64, i64 0, i64 0)) #5
  br label %if.end43

if.end43:                                         ; preds = %if.then42, %if.end39
  %res.6 = phi i32 [ %res.5, %if.end39 ], [ 0, %if.then42 ]
  %call44 = tail call %struct.stack_st_X509* @OSSL_CMP_CTX_get1_newChain(%struct.ossl_cmp_ctx_st* noundef %0) #5
  %cmp45 = icmp eq %struct.stack_st_X509* %call44, null
  br i1 %cmp45, label %if.then52, label %lor.lhs.false47

lor.lhs.false47:                                  ; preds = %if.end43
  %call48 = tail call fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef nonnull %call44) #6
  %call49 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call48) #5
  %cmp50 = icmp eq i32 %call49, 0
  br i1 %cmp50, label %if.then52, label %if.end53

if.then52:                                        ; preds = %lor.lhs.false47, %if.end43
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 783, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.65, i64 0, i64 0)) #5
  br label %if.end53

if.end53:                                         ; preds = %if.then52, %lor.lhs.false47
  %res.7 = phi i32 [ 0, %if.then52 ], [ %res.6, %lor.lhs.false47 ]
  %cmp54 = icmp eq %struct.stack_st_X509* %call44, %call2
  br i1 %cmp54, label %if.then56, label %if.end57

if.then56:                                        ; preds = %if.end53
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 783, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.125, i64 0, i64 0)) #5
  br label %if.end57

if.end57:                                         ; preds = %if.then56, %if.end53
  %res.8 = phi i32 [ 0, %if.then56 ], [ %res.7, %if.end53 ]
  %cmp58 = icmp eq %struct.stack_st_X509* %call2, %call
  br i1 %cmp58, label %if.then60, label %if.end61

if.then60:                                        ; preds = %if.end57
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 783, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.126, i64 0, i64 0)) #5
  br label %if.end61

if.end61:                                         ; preds = %if.then60, %if.end57
  %res.9 = phi i32 [ 0, %if.then60 ], [ %res.8, %if.end57 ]
  %cmp62 = icmp eq %struct.stack_st_X509* %call44, %call26
  br i1 %cmp62, label %if.then64, label %if.end65

if.then64:                                        ; preds = %if.end61
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 783, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.128, i64 0, i64 0)) #5
  br label %if.end65

if.end65:                                         ; preds = %if.then64, %if.end61
  %res.10 = phi i32 [ 0, %if.then64 ], [ %res.9, %if.end61 ]
  %call66 = tail call %struct.stack_st_X509* @OSSL_CMP_CTX_get1_newChain(%struct.ossl_cmp_ctx_st* noundef %0) #5
  %cmp67 = icmp eq %struct.stack_st_X509* %call66, null
  br i1 %cmp67, label %if.then74, label %lor.lhs.false69

lor.lhs.false69:                                  ; preds = %if.end65
  %call70 = tail call fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef nonnull %call66) #6
  %call71 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call70) #5
  %cmp72 = icmp eq i32 %call71, 0
  br i1 %cmp72, label %if.then74, label %if.end75

if.then74:                                        ; preds = %lor.lhs.false69, %if.end65
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 783, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.67, i64 0, i64 0)) #5
  br label %if.end75

if.end75:                                         ; preds = %if.then74, %lor.lhs.false69
  %res.11 = phi i32 [ 0, %if.then74 ], [ %res.10, %lor.lhs.false69 ]
  %cmp76 = icmp eq %struct.stack_st_X509* %call66, %call44
  br i1 %cmp76, label %if.then78, label %if.end79

if.then78:                                        ; preds = %if.end75
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 783, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.129, i64 0, i64 0)) #5
  br label %if.end79

if.end79:                                         ; preds = %if.then78, %if.end75
  %res.12 = phi i32 [ 0, %if.then78 ], [ %res.11, %if.end75 ]
  %call80 = tail call i64 @ERR_peek_error() #5
  %conv81 = trunc i64 %call80 to i32
  %call82 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 783, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.57, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.58, i64 0, i64 0), i32 noundef %conv81, i32 noundef 0) #5
  %tobool83.not = icmp ne i32 %call82, 0
  tail call fastcc void @sk_X509_pop_X509_free(%struct.stack_st_X509* noundef %call) #6
  tail call fastcc void @sk_X509_pop_X509_free(%struct.stack_st_X509* noundef %call2) #6
  tail call fastcc void @sk_X509_pop_X509_free(%struct.stack_st_X509* noundef %call26) #6
  tail call fastcc void @sk_X509_pop_X509_free(%struct.stack_st_X509* noundef %call44) #6
  tail call fastcc void @sk_X509_pop_X509_free(%struct.stack_st_X509* noundef %call66) #6
  %cmp86132 = icmp ne i32 %res.12, 0
  %cmp86 = select i1 %tobool83.not, i1 %cmp86132, i1 false
  %conv87 = zext i1 %cmp86 to i32
  %call88 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 783, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.69, i64 0, i64 0), i32 noundef %conv87) #5
  ret i32 %call88
}

declare dso_local %struct.stack_st_X509* @OSSL_CMP_CTX_get1_newChain(%struct.ossl_cmp_ctx_st* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @execute_CTX_set1_get1_caPubs(%struct.test_fixture* nocapture noundef readonly %fixture) unnamed_addr #1 {
entry:
  %ctx1 = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %fixture, i64 0, i32 1
  %0 = load %struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_ctx_st** %ctx1, align 8, !tbaa !7
  %call = tail call fastcc %struct.stack_st_X509* @sk_X509_new_1() #6
  %call2 = tail call fastcc %struct.stack_st_X509* @sk_X509_new_1() #6
  %call3 = tail call i64 @ERR_peek_error() #5
  %conv = trunc i64 %call3 to i32
  %call4 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 784, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.57, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.58, i64 0, i64 0), i32 noundef %conv, i32 noundef 0) #5
  tail call void @ERR_clear_error() #5
  %call5 = tail call %struct.stack_st_X509* @OSSL_CMP_CTX_get1_caPubs(%struct.ossl_cmp_ctx_st* noundef null) #5
  %cmp.not = icmp eq %struct.stack_st_X509* %call5, null
  br i1 %cmp.not, label %lor.lhs.false, label %if.then10

lor.lhs.false:                                    ; preds = %entry
  %tobool.not = icmp ne i32 %call4, 0
  %spec.select = zext i1 %tobool.not to i32
  %call7 = tail call i64 @ERR_peek_error() #5
  %cmp8 = icmp eq i64 %call7, 0
  br i1 %cmp8, label %if.then10, label %if.end11

if.then10:                                        ; preds = %lor.lhs.false, %entry
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 784, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.60, i64 0, i64 0)) #5
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %lor.lhs.false
  %res.1 = phi i32 [ 0, %if.then10 ], [ %spec.select, %lor.lhs.false ]
  tail call void @ERR_clear_error() #5
  %call12 = tail call %struct.stack_st_X509* @OSSL_CMP_CTX_get1_caPubs(%struct.ossl_cmp_ctx_st* noundef %0) #5
  %cmp13 = icmp eq %struct.stack_st_X509* %call12, null
  br i1 %cmp13, label %if.end21, label %lor.lhs.false15

lor.lhs.false15:                                  ; preds = %if.end11
  %call16 = tail call fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef nonnull %call12) #6
  %call17 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call16) #5
  %cmp18 = icmp eq i32 %call17, 0
  br i1 %cmp18, label %if.end21, label %if.then20

if.then20:                                        ; preds = %lor.lhs.false15
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 784, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.61, i64 0, i64 0)) #5
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %lor.lhs.false15, %if.end11
  %res.2 = phi i32 [ %res.1, %if.end11 ], [ %res.1, %lor.lhs.false15 ], [ 0, %if.then20 ]
  %call22 = tail call i32 @ossl_cmp_ctx_set1_caPubs(%struct.ossl_cmp_ctx_st* noundef %0, %struct.stack_st_X509* noundef %call) #5
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.end21
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 784, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.62, i64 0, i64 0)) #5
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %if.end21
  %res.3 = phi i32 [ %res.2, %if.end21 ], [ 0, %if.then24 ]
  tail call fastcc void @sk_X509_pop_X509_free(%struct.stack_st_X509* noundef %call12) #6
  %call26 = tail call %struct.stack_st_X509* @OSSL_CMP_CTX_get1_caPubs(%struct.ossl_cmp_ctx_st* noundef %0) #5
  %cmp27 = icmp eq %struct.stack_st_X509* %call26, %call
  br i1 %cmp27, label %if.then29, label %if.end30

if.then29:                                        ; preds = %if.end25
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 784, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.123, i64 0, i64 0)) #5
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %if.end25
  %res.4 = phi i32 [ 0, %if.then29 ], [ %res.3, %if.end25 ]
  %cmp31 = icmp eq %struct.stack_st_X509* %call26, null
  br i1 %cmp31, label %if.then38, label %lor.lhs.false33

lor.lhs.false33:                                  ; preds = %if.end30
  %call34 = tail call fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef nonnull %call26) #6
  %call35 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call34) #5
  %cmp36 = icmp eq i32 %call35, 0
  br i1 %cmp36, label %if.then38, label %if.end39

if.then38:                                        ; preds = %lor.lhs.false33, %if.end30
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 784, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.124, i64 0, i64 0)) #5
  br label %if.end39

if.end39:                                         ; preds = %if.then38, %lor.lhs.false33
  %res.5 = phi i32 [ 0, %if.then38 ], [ %res.4, %lor.lhs.false33 ]
  %call40 = tail call i32 @ossl_cmp_ctx_set1_caPubs(%struct.ossl_cmp_ctx_st* noundef %0, %struct.stack_st_X509* noundef %call2) #5
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.then42, label %if.end43

if.then42:                                        ; preds = %if.end39
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 784, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.64, i64 0, i64 0)) #5
  br label %if.end43

if.end43:                                         ; preds = %if.then42, %if.end39
  %res.6 = phi i32 [ %res.5, %if.end39 ], [ 0, %if.then42 ]
  %call44 = tail call %struct.stack_st_X509* @OSSL_CMP_CTX_get1_caPubs(%struct.ossl_cmp_ctx_st* noundef %0) #5
  %cmp45 = icmp eq %struct.stack_st_X509* %call44, null
  br i1 %cmp45, label %if.then52, label %lor.lhs.false47

lor.lhs.false47:                                  ; preds = %if.end43
  %call48 = tail call fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef nonnull %call44) #6
  %call49 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call48) #5
  %cmp50 = icmp eq i32 %call49, 0
  br i1 %cmp50, label %if.then52, label %if.end53

if.then52:                                        ; preds = %lor.lhs.false47, %if.end43
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 784, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.65, i64 0, i64 0)) #5
  br label %if.end53

if.end53:                                         ; preds = %if.then52, %lor.lhs.false47
  %res.7 = phi i32 [ 0, %if.then52 ], [ %res.6, %lor.lhs.false47 ]
  %cmp54 = icmp eq %struct.stack_st_X509* %call44, %call2
  br i1 %cmp54, label %if.then56, label %if.end57

if.then56:                                        ; preds = %if.end53
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 784, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.125, i64 0, i64 0)) #5
  br label %if.end57

if.end57:                                         ; preds = %if.then56, %if.end53
  %res.8 = phi i32 [ 0, %if.then56 ], [ %res.7, %if.end53 ]
  %cmp58 = icmp eq %struct.stack_st_X509* %call2, %call
  br i1 %cmp58, label %if.then60, label %if.end61

if.then60:                                        ; preds = %if.end57
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 784, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.126, i64 0, i64 0)) #5
  br label %if.end61

if.end61:                                         ; preds = %if.then60, %if.end57
  %res.9 = phi i32 [ 0, %if.then60 ], [ %res.8, %if.end57 ]
  %cmp62 = icmp eq %struct.stack_st_X509* %call44, %call26
  br i1 %cmp62, label %if.then64, label %if.end65

if.then64:                                        ; preds = %if.end61
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 784, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.128, i64 0, i64 0)) #5
  br label %if.end65

if.end65:                                         ; preds = %if.then64, %if.end61
  %res.10 = phi i32 [ 0, %if.then64 ], [ %res.9, %if.end61 ]
  %call66 = tail call %struct.stack_st_X509* @OSSL_CMP_CTX_get1_caPubs(%struct.ossl_cmp_ctx_st* noundef %0) #5
  %cmp67 = icmp eq %struct.stack_st_X509* %call66, null
  br i1 %cmp67, label %if.then74, label %lor.lhs.false69

lor.lhs.false69:                                  ; preds = %if.end65
  %call70 = tail call fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef nonnull %call66) #6
  %call71 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call70) #5
  %cmp72 = icmp eq i32 %call71, 0
  br i1 %cmp72, label %if.then74, label %if.end75

if.then74:                                        ; preds = %lor.lhs.false69, %if.end65
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 784, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.67, i64 0, i64 0)) #5
  br label %if.end75

if.end75:                                         ; preds = %if.then74, %lor.lhs.false69
  %res.11 = phi i32 [ 0, %if.then74 ], [ %res.10, %lor.lhs.false69 ]
  %cmp76 = icmp eq %struct.stack_st_X509* %call66, %call44
  br i1 %cmp76, label %if.then78, label %if.end79

if.then78:                                        ; preds = %if.end75
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 784, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.129, i64 0, i64 0)) #5
  br label %if.end79

if.end79:                                         ; preds = %if.then78, %if.end75
  %res.12 = phi i32 [ 0, %if.then78 ], [ %res.11, %if.end75 ]
  %call80 = tail call i64 @ERR_peek_error() #5
  %conv81 = trunc i64 %call80 to i32
  %call82 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 784, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.57, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.58, i64 0, i64 0), i32 noundef %conv81, i32 noundef 0) #5
  %tobool83.not = icmp ne i32 %call82, 0
  tail call fastcc void @sk_X509_pop_X509_free(%struct.stack_st_X509* noundef %call) #6
  tail call fastcc void @sk_X509_pop_X509_free(%struct.stack_st_X509* noundef %call2) #6
  tail call fastcc void @sk_X509_pop_X509_free(%struct.stack_st_X509* noundef %call26) #6
  tail call fastcc void @sk_X509_pop_X509_free(%struct.stack_st_X509* noundef %call44) #6
  tail call fastcc void @sk_X509_pop_X509_free(%struct.stack_st_X509* noundef %call66) #6
  %cmp86132 = icmp ne i32 %res.12, 0
  %cmp86 = select i1 %tobool83.not, i1 %cmp86132, i1 false
  %conv87 = zext i1 %cmp86 to i32
  %call88 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 784, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.69, i64 0, i64 0), i32 noundef %conv87) #5
  ret i32 %call88
}

declare dso_local %struct.stack_st_X509* @OSSL_CMP_CTX_get1_caPubs(%struct.ossl_cmp_ctx_st* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @execute_CTX_set1_get1_extraCertsIn(%struct.test_fixture* nocapture noundef readonly %fixture) unnamed_addr #1 {
entry:
  %ctx1 = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %fixture, i64 0, i32 1
  %0 = load %struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_ctx_st** %ctx1, align 8, !tbaa !7
  %call = tail call fastcc %struct.stack_st_X509* @sk_X509_new_1() #6
  %call2 = tail call fastcc %struct.stack_st_X509* @sk_X509_new_1() #6
  %call3 = tail call i64 @ERR_peek_error() #5
  %conv = trunc i64 %call3 to i32
  %call4 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 785, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.57, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.58, i64 0, i64 0), i32 noundef %conv, i32 noundef 0) #5
  tail call void @ERR_clear_error() #5
  %call5 = tail call %struct.stack_st_X509* @OSSL_CMP_CTX_get1_extraCertsIn(%struct.ossl_cmp_ctx_st* noundef null) #5
  %cmp.not = icmp eq %struct.stack_st_X509* %call5, null
  br i1 %cmp.not, label %lor.lhs.false, label %if.then10

lor.lhs.false:                                    ; preds = %entry
  %tobool.not = icmp ne i32 %call4, 0
  %spec.select = zext i1 %tobool.not to i32
  %call7 = tail call i64 @ERR_peek_error() #5
  %cmp8 = icmp eq i64 %call7, 0
  br i1 %cmp8, label %if.then10, label %if.end11

if.then10:                                        ; preds = %lor.lhs.false, %entry
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 785, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.60, i64 0, i64 0)) #5
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %lor.lhs.false
  %res.1 = phi i32 [ 0, %if.then10 ], [ %spec.select, %lor.lhs.false ]
  tail call void @ERR_clear_error() #5
  %call12 = tail call %struct.stack_st_X509* @OSSL_CMP_CTX_get1_extraCertsIn(%struct.ossl_cmp_ctx_st* noundef %0) #5
  %cmp13 = icmp eq %struct.stack_st_X509* %call12, null
  br i1 %cmp13, label %if.end21, label %lor.lhs.false15

lor.lhs.false15:                                  ; preds = %if.end11
  %call16 = tail call fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef nonnull %call12) #6
  %call17 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call16) #5
  %cmp18 = icmp eq i32 %call17, 0
  br i1 %cmp18, label %if.end21, label %if.then20

if.then20:                                        ; preds = %lor.lhs.false15
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 785, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.61, i64 0, i64 0)) #5
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %lor.lhs.false15, %if.end11
  %res.2 = phi i32 [ %res.1, %if.end11 ], [ %res.1, %lor.lhs.false15 ], [ 0, %if.then20 ]
  %call22 = tail call i32 @ossl_cmp_ctx_set1_extraCertsIn(%struct.ossl_cmp_ctx_st* noundef %0, %struct.stack_st_X509* noundef %call) #5
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.end21
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 785, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.62, i64 0, i64 0)) #5
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %if.end21
  %res.3 = phi i32 [ %res.2, %if.end21 ], [ 0, %if.then24 ]
  tail call fastcc void @sk_X509_pop_X509_free(%struct.stack_st_X509* noundef %call12) #6
  %call26 = tail call %struct.stack_st_X509* @OSSL_CMP_CTX_get1_extraCertsIn(%struct.ossl_cmp_ctx_st* noundef %0) #5
  %cmp27 = icmp eq %struct.stack_st_X509* %call26, %call
  br i1 %cmp27, label %if.then29, label %if.end30

if.then29:                                        ; preds = %if.end25
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 785, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.123, i64 0, i64 0)) #5
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %if.end25
  %res.4 = phi i32 [ 0, %if.then29 ], [ %res.3, %if.end25 ]
  %cmp31 = icmp eq %struct.stack_st_X509* %call26, null
  br i1 %cmp31, label %if.then38, label %lor.lhs.false33

lor.lhs.false33:                                  ; preds = %if.end30
  %call34 = tail call fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef nonnull %call26) #6
  %call35 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call34) #5
  %cmp36 = icmp eq i32 %call35, 0
  br i1 %cmp36, label %if.then38, label %if.end39

if.then38:                                        ; preds = %lor.lhs.false33, %if.end30
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 785, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.124, i64 0, i64 0)) #5
  br label %if.end39

if.end39:                                         ; preds = %if.then38, %lor.lhs.false33
  %res.5 = phi i32 [ 0, %if.then38 ], [ %res.4, %lor.lhs.false33 ]
  %call40 = tail call i32 @ossl_cmp_ctx_set1_extraCertsIn(%struct.ossl_cmp_ctx_st* noundef %0, %struct.stack_st_X509* noundef %call2) #5
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.then42, label %if.end43

if.then42:                                        ; preds = %if.end39
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 785, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.64, i64 0, i64 0)) #5
  br label %if.end43

if.end43:                                         ; preds = %if.then42, %if.end39
  %res.6 = phi i32 [ %res.5, %if.end39 ], [ 0, %if.then42 ]
  %call44 = tail call %struct.stack_st_X509* @OSSL_CMP_CTX_get1_extraCertsIn(%struct.ossl_cmp_ctx_st* noundef %0) #5
  %cmp45 = icmp eq %struct.stack_st_X509* %call44, null
  br i1 %cmp45, label %if.then52, label %lor.lhs.false47

lor.lhs.false47:                                  ; preds = %if.end43
  %call48 = tail call fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef nonnull %call44) #6
  %call49 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call48) #5
  %cmp50 = icmp eq i32 %call49, 0
  br i1 %cmp50, label %if.then52, label %if.end53

if.then52:                                        ; preds = %lor.lhs.false47, %if.end43
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 785, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.65, i64 0, i64 0)) #5
  br label %if.end53

if.end53:                                         ; preds = %if.then52, %lor.lhs.false47
  %res.7 = phi i32 [ 0, %if.then52 ], [ %res.6, %lor.lhs.false47 ]
  %cmp54 = icmp eq %struct.stack_st_X509* %call44, %call2
  br i1 %cmp54, label %if.then56, label %if.end57

if.then56:                                        ; preds = %if.end53
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 785, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.125, i64 0, i64 0)) #5
  br label %if.end57

if.end57:                                         ; preds = %if.then56, %if.end53
  %res.8 = phi i32 [ 0, %if.then56 ], [ %res.7, %if.end53 ]
  %cmp58 = icmp eq %struct.stack_st_X509* %call2, %call
  br i1 %cmp58, label %if.then60, label %if.end61

if.then60:                                        ; preds = %if.end57
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 785, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.126, i64 0, i64 0)) #5
  br label %if.end61

if.end61:                                         ; preds = %if.then60, %if.end57
  %res.9 = phi i32 [ 0, %if.then60 ], [ %res.8, %if.end57 ]
  %cmp62 = icmp eq %struct.stack_st_X509* %call44, %call26
  br i1 %cmp62, label %if.then64, label %if.end65

if.then64:                                        ; preds = %if.end61
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 785, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.128, i64 0, i64 0)) #5
  br label %if.end65

if.end65:                                         ; preds = %if.then64, %if.end61
  %res.10 = phi i32 [ 0, %if.then64 ], [ %res.9, %if.end61 ]
  %call66 = tail call %struct.stack_st_X509* @OSSL_CMP_CTX_get1_extraCertsIn(%struct.ossl_cmp_ctx_st* noundef %0) #5
  %cmp67 = icmp eq %struct.stack_st_X509* %call66, null
  br i1 %cmp67, label %if.then74, label %lor.lhs.false69

lor.lhs.false69:                                  ; preds = %if.end65
  %call70 = tail call fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef nonnull %call66) #6
  %call71 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call70) #5
  %cmp72 = icmp eq i32 %call71, 0
  br i1 %cmp72, label %if.then74, label %if.end75

if.then74:                                        ; preds = %lor.lhs.false69, %if.end65
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 785, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.67, i64 0, i64 0)) #5
  br label %if.end75

if.end75:                                         ; preds = %if.then74, %lor.lhs.false69
  %res.11 = phi i32 [ 0, %if.then74 ], [ %res.10, %lor.lhs.false69 ]
  %cmp76 = icmp eq %struct.stack_st_X509* %call66, %call44
  br i1 %cmp76, label %if.then78, label %if.end79

if.then78:                                        ; preds = %if.end75
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 785, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.129, i64 0, i64 0)) #5
  br label %if.end79

if.end79:                                         ; preds = %if.then78, %if.end75
  %res.12 = phi i32 [ 0, %if.then78 ], [ %res.11, %if.end75 ]
  %call80 = tail call i64 @ERR_peek_error() #5
  %conv81 = trunc i64 %call80 to i32
  %call82 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 785, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.57, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.58, i64 0, i64 0), i32 noundef %conv81, i32 noundef 0) #5
  %tobool83.not = icmp ne i32 %call82, 0
  tail call fastcc void @sk_X509_pop_X509_free(%struct.stack_st_X509* noundef %call) #6
  tail call fastcc void @sk_X509_pop_X509_free(%struct.stack_st_X509* noundef %call2) #6
  tail call fastcc void @sk_X509_pop_X509_free(%struct.stack_st_X509* noundef %call26) #6
  tail call fastcc void @sk_X509_pop_X509_free(%struct.stack_st_X509* noundef %call44) #6
  tail call fastcc void @sk_X509_pop_X509_free(%struct.stack_st_X509* noundef %call66) #6
  %cmp86132 = icmp ne i32 %res.12, 0
  %cmp86 = select i1 %tobool83.not, i1 %cmp86132, i1 false
  %conv87 = zext i1 %cmp86 to i32
  %call88 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 785, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.69, i64 0, i64 0), i32 noundef %conv87) #5
  ret i32 %call88
}

declare dso_local %struct.stack_st_X509* @OSSL_CMP_CTX_get1_extraCertsIn(%struct.ossl_cmp_ctx_st* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @execute_CTX_set1_get0_transactionID(%struct.test_fixture* nocapture noundef readonly %fixture) unnamed_addr #1 {
entry:
  %ctx1 = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %fixture, i64 0, i32 1
  %0 = load %struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_ctx_st** %ctx1, align 8, !tbaa !7
  %call = tail call %struct.asn1_string_st* @ASN1_OCTET_STRING_new() #5
  %call2 = tail call %struct.asn1_string_st* @ASN1_OCTET_STRING_new() #5
  %call3 = tail call i64 @ERR_peek_error() #5
  %conv = trunc i64 %call3 to i32
  %call4 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 788, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.57, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.58, i64 0, i64 0), i32 noundef %conv, i32 noundef 0) #5
  %call5 = tail call i32 @OSSL_CMP_CTX_set1_transactionID(%struct.ossl_cmp_ctx_st* noundef null, %struct.asn1_string_st* noundef %call) #5
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %lor.lhs.false, label %if.then9

lor.lhs.false:                                    ; preds = %entry
  %tobool.not = icmp ne i32 %call4, 0
  %spec.select = zext i1 %tobool.not to i32
  %call7 = tail call i64 @ERR_peek_error() #5
  %cmp = icmp eq i64 %call7, 0
  br i1 %cmp, label %if.then9, label %if.end10

if.then9:                                         ; preds = %lor.lhs.false, %entry
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 788, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.59, i64 0, i64 0)) #5
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %lor.lhs.false
  %res.1 = phi i32 [ 0, %if.then9 ], [ %spec.select, %lor.lhs.false ]
  tail call void @ERR_clear_error() #5
  %call11 = tail call fastcc %struct.asn1_string_st* @OSSL_CMP_CTX_get0_transactionID(%struct.ossl_cmp_ctx_st* noundef null) #6
  %cmp12.not = icmp eq %struct.asn1_string_st* %call11, null
  br i1 %cmp12.not, label %lor.lhs.false14, label %if.then18

lor.lhs.false14:                                  ; preds = %if.end10
  %call15 = tail call i64 @ERR_peek_error() #5
  %cmp16 = icmp eq i64 %call15, 0
  br i1 %cmp16, label %if.then18, label %if.end19

if.then18:                                        ; preds = %lor.lhs.false14, %if.end10
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 788, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.60, i64 0, i64 0)) #5
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %lor.lhs.false14
  %res.2 = phi i32 [ 0, %if.then18 ], [ %res.1, %lor.lhs.false14 ]
  tail call void @ERR_clear_error() #5
  %call20 = tail call fastcc %struct.asn1_string_st* @OSSL_CMP_CTX_get0_transactionID(%struct.ossl_cmp_ctx_st* noundef %0) #6
  %cmp21 = icmp eq %struct.asn1_string_st* %call20, null
  br i1 %cmp21, label %if.end24, label %if.then23

if.then23:                                        ; preds = %if.end19
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 788, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.61, i64 0, i64 0)) #5
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %if.end19
  %res.3 = phi i32 [ %res.2, %if.end19 ], [ 0, %if.then23 ]
  %call25 = tail call i32 @OSSL_CMP_CTX_set1_transactionID(%struct.ossl_cmp_ctx_st* noundef %0, %struct.asn1_string_st* noundef %call) #5
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.end24
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 788, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.62, i64 0, i64 0)) #5
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %if.end24
  %res.4 = phi i32 [ %res.3, %if.end24 ], [ 0, %if.then27 ]
  %call29 = tail call fastcc %struct.asn1_string_st* @OSSL_CMP_CTX_get0_transactionID(%struct.ossl_cmp_ctx_st* noundef %0) #6
  %cmp30 = icmp eq %struct.asn1_string_st* %call29, %call
  br i1 %cmp30, label %if.then32, label %if.end33

if.then32:                                        ; preds = %if.end28
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 788, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.123, i64 0, i64 0)) #5
  br label %if.end33

if.end33:                                         ; preds = %if.then32, %if.end28
  %res.5 = phi i32 [ 0, %if.then32 ], [ %res.4, %if.end28 ]
  %cmp34 = icmp eq %struct.asn1_string_st* %call29, null
  br i1 %cmp34, label %if.then36, label %if.end37

if.then36:                                        ; preds = %if.end33
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 788, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.124, i64 0, i64 0)) #5
  br label %if.end37

if.end37:                                         ; preds = %if.then36, %if.end33
  %res.6 = phi i32 [ 0, %if.then36 ], [ %res.5, %if.end33 ]
  %call38 = tail call i32 @OSSL_CMP_CTX_set1_transactionID(%struct.ossl_cmp_ctx_st* noundef %0, %struct.asn1_string_st* noundef %call2) #5
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.then40, label %if.end41

if.then40:                                        ; preds = %if.end37
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 788, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.64, i64 0, i64 0)) #5
  br label %if.end41

if.end41:                                         ; preds = %if.then40, %if.end37
  %res.7 = phi i32 [ %res.6, %if.end37 ], [ 0, %if.then40 ]
  %call42 = tail call fastcc %struct.asn1_string_st* @OSSL_CMP_CTX_get0_transactionID(%struct.ossl_cmp_ctx_st* noundef %0) #6
  %cmp43 = icmp eq %struct.asn1_string_st* %call42, null
  br i1 %cmp43, label %if.then45, label %if.end46

if.then45:                                        ; preds = %if.end41
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 788, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.65, i64 0, i64 0)) #5
  br label %if.end46

if.end46:                                         ; preds = %if.then45, %if.end41
  %res.8 = phi i32 [ 0, %if.then45 ], [ %res.7, %if.end41 ]
  %cmp47 = icmp eq %struct.asn1_string_st* %call42, %call2
  br i1 %cmp47, label %if.then49, label %if.end50

if.then49:                                        ; preds = %if.end46
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 788, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.125, i64 0, i64 0)) #5
  br label %if.end50

if.end50:                                         ; preds = %if.then49, %if.end46
  %res.9 = phi i32 [ 0, %if.then49 ], [ %res.8, %if.end46 ]
  %cmp51 = icmp eq %struct.asn1_string_st* %call2, %call
  br i1 %cmp51, label %if.then53, label %if.end54

if.then53:                                        ; preds = %if.end50
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 788, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.126, i64 0, i64 0)) #5
  br label %if.end54

if.end54:                                         ; preds = %if.then53, %if.end50
  %res.10 = phi i32 [ 0, %if.then53 ], [ %res.9, %if.end50 ]
  %call55 = tail call fastcc %struct.asn1_string_st* @OSSL_CMP_CTX_get0_transactionID(%struct.ossl_cmp_ctx_st* noundef %0) #6
  %cmp56 = icmp eq %struct.asn1_string_st* %call55, null
  br i1 %cmp56, label %if.then58, label %if.end59

if.then58:                                        ; preds = %if.end54
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 788, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.67, i64 0, i64 0)) #5
  br label %if.end59

if.end59:                                         ; preds = %if.then58, %if.end54
  %res.11 = phi i32 [ 0, %if.then58 ], [ %res.10, %if.end54 ]
  %cmp60.not = icmp eq %struct.asn1_string_st* %call55, %call42
  br i1 %cmp60.not, label %if.end63, label %if.then62

if.then62:                                        ; preds = %if.end59
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 788, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.68, i64 0, i64 0)) #5
  br label %if.end63

if.end63:                                         ; preds = %if.then62, %if.end59
  %res.12 = phi i32 [ 0, %if.then62 ], [ %res.11, %if.end59 ]
  %call64 = tail call i64 @ERR_peek_error() #5
  %conv65 = trunc i64 %call64 to i32
  %call66 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 788, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.57, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.58, i64 0, i64 0), i32 noundef %conv65, i32 noundef 0) #5
  %tobool67.not = icmp ne i32 %call66, 0
  tail call void @ASN1_OCTET_STRING_free(%struct.asn1_string_st* noundef %call) #5
  tail call void @ASN1_OCTET_STRING_free(%struct.asn1_string_st* noundef %call2) #5
  %cmp70108 = icmp ne i32 %res.12, 0
  %cmp70 = select i1 %tobool67.not, i1 %cmp70108, i1 false
  %conv71 = zext i1 %cmp70 to i32
  %call72 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 788, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.69, i64 0, i64 0), i32 noundef %conv71) #5
  ret i32 %call72
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.asn1_string_st* @OSSL_CMP_CTX_get0_transactionID(%struct.ossl_cmp_ctx_st* noundef readonly %ctx) unnamed_addr #1 {
entry:
  %cmp = icmp eq %struct.ossl_cmp_ctx_st* %ctx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 788, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.OSSL_CMP_CTX_get0_transactionID, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 103, i8* noundef null) #5
  br label %return

if.end:                                           ; preds = %entry
  %transactionID = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 38
  %0 = load %struct.asn1_string_st*, %struct.asn1_string_st** %transactionID, align 8, !tbaa !21
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi %struct.asn1_string_st* [ null, %if.then ], [ %0, %if.end ]
  ret %struct.asn1_string_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @execute_CTX_set1_get0_senderNonce(%struct.test_fixture* nocapture noundef readonly %fixture) unnamed_addr #1 {
entry:
  %ctx1 = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %fixture, i64 0, i32 1
  %0 = load %struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_ctx_st** %ctx1, align 8, !tbaa !7
  %call = tail call %struct.asn1_string_st* @ASN1_OCTET_STRING_new() #5
  %call2 = tail call %struct.asn1_string_st* @ASN1_OCTET_STRING_new() #5
  %call3 = tail call i64 @ERR_peek_error() #5
  %conv = trunc i64 %call3 to i32
  %call4 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 789, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.57, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.58, i64 0, i64 0), i32 noundef %conv, i32 noundef 0) #5
  %call5 = tail call i32 @OSSL_CMP_CTX_set1_senderNonce(%struct.ossl_cmp_ctx_st* noundef null, %struct.asn1_string_st* noundef %call) #5
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %lor.lhs.false, label %if.then9

lor.lhs.false:                                    ; preds = %entry
  %tobool.not = icmp ne i32 %call4, 0
  %spec.select = zext i1 %tobool.not to i32
  %call7 = tail call i64 @ERR_peek_error() #5
  %cmp = icmp eq i64 %call7, 0
  br i1 %cmp, label %if.then9, label %if.end10

if.then9:                                         ; preds = %lor.lhs.false, %entry
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 789, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.59, i64 0, i64 0)) #5
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %lor.lhs.false
  %res.1 = phi i32 [ 0, %if.then9 ], [ %spec.select, %lor.lhs.false ]
  tail call void @ERR_clear_error() #5
  %call11 = tail call fastcc %struct.asn1_string_st* @OSSL_CMP_CTX_get0_senderNonce(%struct.ossl_cmp_ctx_st* noundef null) #6
  %cmp12.not = icmp eq %struct.asn1_string_st* %call11, null
  br i1 %cmp12.not, label %lor.lhs.false14, label %if.then18

lor.lhs.false14:                                  ; preds = %if.end10
  %call15 = tail call i64 @ERR_peek_error() #5
  %cmp16 = icmp eq i64 %call15, 0
  br i1 %cmp16, label %if.then18, label %if.end19

if.then18:                                        ; preds = %lor.lhs.false14, %if.end10
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 789, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.60, i64 0, i64 0)) #5
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %lor.lhs.false14
  %res.2 = phi i32 [ 0, %if.then18 ], [ %res.1, %lor.lhs.false14 ]
  tail call void @ERR_clear_error() #5
  %call20 = tail call fastcc %struct.asn1_string_st* @OSSL_CMP_CTX_get0_senderNonce(%struct.ossl_cmp_ctx_st* noundef %0) #6
  %cmp21 = icmp eq %struct.asn1_string_st* %call20, null
  br i1 %cmp21, label %if.end24, label %if.then23

if.then23:                                        ; preds = %if.end19
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 789, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.61, i64 0, i64 0)) #5
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %if.end19
  %res.3 = phi i32 [ %res.2, %if.end19 ], [ 0, %if.then23 ]
  %call25 = tail call i32 @OSSL_CMP_CTX_set1_senderNonce(%struct.ossl_cmp_ctx_st* noundef %0, %struct.asn1_string_st* noundef %call) #5
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.end24
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 789, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.62, i64 0, i64 0)) #5
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %if.end24
  %res.4 = phi i32 [ %res.3, %if.end24 ], [ 0, %if.then27 ]
  %call29 = tail call fastcc %struct.asn1_string_st* @OSSL_CMP_CTX_get0_senderNonce(%struct.ossl_cmp_ctx_st* noundef %0) #6
  %cmp30 = icmp eq %struct.asn1_string_st* %call29, %call
  br i1 %cmp30, label %if.then32, label %if.end33

if.then32:                                        ; preds = %if.end28
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 789, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.123, i64 0, i64 0)) #5
  br label %if.end33

if.end33:                                         ; preds = %if.then32, %if.end28
  %res.5 = phi i32 [ 0, %if.then32 ], [ %res.4, %if.end28 ]
  %cmp34 = icmp eq %struct.asn1_string_st* %call29, null
  br i1 %cmp34, label %if.then36, label %if.end37

if.then36:                                        ; preds = %if.end33
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 789, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.124, i64 0, i64 0)) #5
  br label %if.end37

if.end37:                                         ; preds = %if.then36, %if.end33
  %res.6 = phi i32 [ 0, %if.then36 ], [ %res.5, %if.end33 ]
  %call38 = tail call i32 @OSSL_CMP_CTX_set1_senderNonce(%struct.ossl_cmp_ctx_st* noundef %0, %struct.asn1_string_st* noundef %call2) #5
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.then40, label %if.end41

if.then40:                                        ; preds = %if.end37
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 789, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.64, i64 0, i64 0)) #5
  br label %if.end41

if.end41:                                         ; preds = %if.then40, %if.end37
  %res.7 = phi i32 [ %res.6, %if.end37 ], [ 0, %if.then40 ]
  %call42 = tail call fastcc %struct.asn1_string_st* @OSSL_CMP_CTX_get0_senderNonce(%struct.ossl_cmp_ctx_st* noundef %0) #6
  %cmp43 = icmp eq %struct.asn1_string_st* %call42, null
  br i1 %cmp43, label %if.then45, label %if.end46

if.then45:                                        ; preds = %if.end41
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 789, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.65, i64 0, i64 0)) #5
  br label %if.end46

if.end46:                                         ; preds = %if.then45, %if.end41
  %res.8 = phi i32 [ 0, %if.then45 ], [ %res.7, %if.end41 ]
  %cmp47 = icmp eq %struct.asn1_string_st* %call42, %call2
  br i1 %cmp47, label %if.then49, label %if.end50

if.then49:                                        ; preds = %if.end46
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 789, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.125, i64 0, i64 0)) #5
  br label %if.end50

if.end50:                                         ; preds = %if.then49, %if.end46
  %res.9 = phi i32 [ 0, %if.then49 ], [ %res.8, %if.end46 ]
  %cmp51 = icmp eq %struct.asn1_string_st* %call2, %call
  br i1 %cmp51, label %if.then53, label %if.end54

if.then53:                                        ; preds = %if.end50
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 789, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.126, i64 0, i64 0)) #5
  br label %if.end54

if.end54:                                         ; preds = %if.then53, %if.end50
  %res.10 = phi i32 [ 0, %if.then53 ], [ %res.9, %if.end50 ]
  %call55 = tail call fastcc %struct.asn1_string_st* @OSSL_CMP_CTX_get0_senderNonce(%struct.ossl_cmp_ctx_st* noundef %0) #6
  %cmp56 = icmp eq %struct.asn1_string_st* %call55, null
  br i1 %cmp56, label %if.then58, label %if.end59

if.then58:                                        ; preds = %if.end54
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 789, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.67, i64 0, i64 0)) #5
  br label %if.end59

if.end59:                                         ; preds = %if.then58, %if.end54
  %res.11 = phi i32 [ 0, %if.then58 ], [ %res.10, %if.end54 ]
  %cmp60.not = icmp eq %struct.asn1_string_st* %call55, %call42
  br i1 %cmp60.not, label %if.end63, label %if.then62

if.then62:                                        ; preds = %if.end59
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 789, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.68, i64 0, i64 0)) #5
  br label %if.end63

if.end63:                                         ; preds = %if.then62, %if.end59
  %res.12 = phi i32 [ 0, %if.then62 ], [ %res.11, %if.end59 ]
  %call64 = tail call i64 @ERR_peek_error() #5
  %conv65 = trunc i64 %call64 to i32
  %call66 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 789, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.57, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.58, i64 0, i64 0), i32 noundef %conv65, i32 noundef 0) #5
  %tobool67.not = icmp ne i32 %call66, 0
  tail call void @ASN1_OCTET_STRING_free(%struct.asn1_string_st* noundef %call) #5
  tail call void @ASN1_OCTET_STRING_free(%struct.asn1_string_st* noundef %call2) #5
  %cmp70108 = icmp ne i32 %res.12, 0
  %cmp70 = select i1 %tobool67.not, i1 %cmp70108, i1 false
  %conv71 = zext i1 %cmp70 to i32
  %call72 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 789, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.69, i64 0, i64 0), i32 noundef %conv71) #5
  ret i32 %call72
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.asn1_string_st* @OSSL_CMP_CTX_get0_senderNonce(%struct.ossl_cmp_ctx_st* noundef readonly %ctx) unnamed_addr #1 {
entry:
  %cmp = icmp eq %struct.ossl_cmp_ctx_st* %ctx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 789, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.OSSL_CMP_CTX_get0_senderNonce, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 103, i8* noundef null) #5
  br label %return

if.end:                                           ; preds = %entry
  %senderNonce = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 39
  %0 = load %struct.asn1_string_st*, %struct.asn1_string_st** %senderNonce, align 8, !tbaa !22
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi %struct.asn1_string_st* [ null, %if.then ], [ %0, %if.end ]
  ret %struct.asn1_string_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @execute_CTX_set1_get0_recipNonce(%struct.test_fixture* nocapture noundef readonly %fixture) unnamed_addr #1 {
entry:
  %ctx1 = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %fixture, i64 0, i32 1
  %0 = load %struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_ctx_st** %ctx1, align 8, !tbaa !7
  %call = tail call %struct.asn1_string_st* @ASN1_OCTET_STRING_new() #5
  %call2 = tail call %struct.asn1_string_st* @ASN1_OCTET_STRING_new() #5
  %call3 = tail call i64 @ERR_peek_error() #5
  %conv = trunc i64 %call3 to i32
  %call4 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 790, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.57, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.58, i64 0, i64 0), i32 noundef %conv, i32 noundef 0) #5
  tail call void @ERR_clear_error() #5
  %call5 = tail call fastcc %struct.asn1_string_st* @OSSL_CMP_CTX_get0_recipNonce(%struct.ossl_cmp_ctx_st* noundef null) #6
  %cmp.not = icmp eq %struct.asn1_string_st* %call5, null
  br i1 %cmp.not, label %lor.lhs.false, label %if.then10

lor.lhs.false:                                    ; preds = %entry
  %tobool.not = icmp ne i32 %call4, 0
  %spec.select = zext i1 %tobool.not to i32
  %call7 = tail call i64 @ERR_peek_error() #5
  %cmp8 = icmp eq i64 %call7, 0
  br i1 %cmp8, label %if.then10, label %if.end11

if.then10:                                        ; preds = %lor.lhs.false, %entry
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 790, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.60, i64 0, i64 0)) #5
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %lor.lhs.false
  %res.1 = phi i32 [ 0, %if.then10 ], [ %spec.select, %lor.lhs.false ]
  tail call void @ERR_clear_error() #5
  %call12 = tail call fastcc %struct.asn1_string_st* @OSSL_CMP_CTX_get0_recipNonce(%struct.ossl_cmp_ctx_st* noundef %0) #6
  %cmp13 = icmp eq %struct.asn1_string_st* %call12, null
  br i1 %cmp13, label %if.end16, label %if.then15

if.then15:                                        ; preds = %if.end11
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 790, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.61, i64 0, i64 0)) #5
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %if.end11
  %res.2 = phi i32 [ %res.1, %if.end11 ], [ 0, %if.then15 ]
  %call17 = tail call i32 @ossl_cmp_ctx_set1_recipNonce(%struct.ossl_cmp_ctx_st* noundef %0, %struct.asn1_string_st* noundef %call) #5
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.end16
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 790, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.62, i64 0, i64 0)) #5
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %if.end16
  %res.3 = phi i32 [ %res.2, %if.end16 ], [ 0, %if.then19 ]
  %call21 = tail call fastcc %struct.asn1_string_st* @OSSL_CMP_CTX_get0_recipNonce(%struct.ossl_cmp_ctx_st* noundef %0) #6
  %cmp22 = icmp eq %struct.asn1_string_st* %call21, %call
  br i1 %cmp22, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.end20
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 790, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.123, i64 0, i64 0)) #5
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %if.end20
  %res.4 = phi i32 [ 0, %if.then24 ], [ %res.3, %if.end20 ]
  %cmp26 = icmp eq %struct.asn1_string_st* %call21, null
  br i1 %cmp26, label %if.then28, label %if.end29

if.then28:                                        ; preds = %if.end25
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 790, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.124, i64 0, i64 0)) #5
  br label %if.end29

if.end29:                                         ; preds = %if.then28, %if.end25
  %res.5 = phi i32 [ 0, %if.then28 ], [ %res.4, %if.end25 ]
  %call30 = tail call i32 @ossl_cmp_ctx_set1_recipNonce(%struct.ossl_cmp_ctx_st* noundef %0, %struct.asn1_string_st* noundef %call2) #5
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.then32, label %if.end33

if.then32:                                        ; preds = %if.end29
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 790, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.64, i64 0, i64 0)) #5
  br label %if.end33

if.end33:                                         ; preds = %if.then32, %if.end29
  %res.6 = phi i32 [ %res.5, %if.end29 ], [ 0, %if.then32 ]
  %call34 = tail call fastcc %struct.asn1_string_st* @OSSL_CMP_CTX_get0_recipNonce(%struct.ossl_cmp_ctx_st* noundef %0) #6
  %cmp35 = icmp eq %struct.asn1_string_st* %call34, null
  br i1 %cmp35, label %if.then37, label %if.end38

if.then37:                                        ; preds = %if.end33
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 790, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.65, i64 0, i64 0)) #5
  br label %if.end38

if.end38:                                         ; preds = %if.then37, %if.end33
  %res.7 = phi i32 [ 0, %if.then37 ], [ %res.6, %if.end33 ]
  %cmp39 = icmp eq %struct.asn1_string_st* %call34, %call2
  br i1 %cmp39, label %if.then41, label %if.end42

if.then41:                                        ; preds = %if.end38
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 790, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.125, i64 0, i64 0)) #5
  br label %if.end42

if.end42:                                         ; preds = %if.then41, %if.end38
  %res.8 = phi i32 [ 0, %if.then41 ], [ %res.7, %if.end38 ]
  %cmp43 = icmp eq %struct.asn1_string_st* %call2, %call
  br i1 %cmp43, label %if.then45, label %if.end46

if.then45:                                        ; preds = %if.end42
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 790, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.126, i64 0, i64 0)) #5
  br label %if.end46

if.end46:                                         ; preds = %if.then45, %if.end42
  %res.9 = phi i32 [ 0, %if.then45 ], [ %res.8, %if.end42 ]
  %call47 = tail call fastcc %struct.asn1_string_st* @OSSL_CMP_CTX_get0_recipNonce(%struct.ossl_cmp_ctx_st* noundef %0) #6
  %cmp48 = icmp eq %struct.asn1_string_st* %call47, null
  br i1 %cmp48, label %if.then50, label %if.end51

if.then50:                                        ; preds = %if.end46
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 790, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.67, i64 0, i64 0)) #5
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %if.end46
  %res.10 = phi i32 [ 0, %if.then50 ], [ %res.9, %if.end46 ]
  %cmp52.not = icmp eq %struct.asn1_string_st* %call47, %call34
  br i1 %cmp52.not, label %if.end55, label %if.then54

if.then54:                                        ; preds = %if.end51
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 790, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.68, i64 0, i64 0)) #5
  br label %if.end55

if.end55:                                         ; preds = %if.then54, %if.end51
  %res.11 = phi i32 [ 0, %if.then54 ], [ %res.10, %if.end51 ]
  %call56 = tail call i64 @ERR_peek_error() #5
  %conv57 = trunc i64 %call56 to i32
  %call58 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 790, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.57, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.58, i64 0, i64 0), i32 noundef %conv57, i32 noundef 0) #5
  %tobool59.not = icmp ne i32 %call58, 0
  tail call void @ASN1_OCTET_STRING_free(%struct.asn1_string_st* noundef %call) #5
  tail call void @ASN1_OCTET_STRING_free(%struct.asn1_string_st* noundef %call2) #5
  %cmp6298 = icmp ne i32 %res.11, 0
  %cmp62 = select i1 %tobool59.not, i1 %cmp6298, i1 false
  %conv63 = zext i1 %cmp62 to i32
  %call64 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 790, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.69, i64 0, i64 0), i32 noundef %conv63) #5
  ret i32 %call64
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.asn1_string_st* @OSSL_CMP_CTX_get0_recipNonce(%struct.ossl_cmp_ctx_st* noundef readonly %ctx) unnamed_addr #1 {
entry:
  %cmp = icmp eq %struct.ossl_cmp_ctx_st* %ctx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 790, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.OSSL_CMP_CTX_get0_recipNonce, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 103, i8* noundef null) #5
  br label %return

if.end:                                           ; preds = %entry
  %recipNonce = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 40
  %0 = load %struct.asn1_string_st*, %struct.asn1_string_st** %recipNonce, align 8, !tbaa !23
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi %struct.asn1_string_st* [ null, %if.then ], [ %0, %if.end ]
  ret %struct.asn1_string_st* %retval.0
}

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-builtins" }
attributes #6 = { nobuiltin "no-builtins" }
attributes #7 = { nobuiltin nounwind readonly willreturn "no-builtins" }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.0"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !4, i64 8}
!8 = !{!"test_fixture", !4, i64 0, !4, i64 8}
!9 = !{!8, !4, i64 0}
!10 = !{!11, !12, i64 448}
!11 = !{!"ossl_cmp_ctx_st", !4, i64 0, !4, i64 8, !4, i64 16, !12, i64 24, !4, i64 32, !4, i64 40, !4, i64 48, !4, i64 56, !4, i64 64, !12, i64 72, !4, i64 80, !4, i64 88, !12, i64 96, !12, i64 100, !12, i64 104, !13, i64 112, !4, i64 120, !4, i64 128, !12, i64 136, !4, i64 144, !4, i64 152, !4, i64 160, !4, i64 168, !4, i64 176, !12, i64 184, !12, i64 188, !12, i64 192, !4, i64 200, !4, i64 208, !4, i64 216, !4, i64 224, !4, i64 232, !13, i64 240, !4, i64 248, !12, i64 256, !12, i64 260, !4, i64 264, !4, i64 272, !4, i64 280, !4, i64 288, !4, i64 296, !4, i64 304, !4, i64 312, !12, i64 320, !12, i64 324, !4, i64 328, !4, i64 336, !12, i64 344, !4, i64 352, !12, i64 360, !4, i64 368, !4, i64 376, !12, i64 384, !12, i64 388, !4, i64 392, !4, i64 400, !12, i64 408, !12, i64 412, !4, i64 416, !4, i64 424, !12, i64 432, !4, i64 440, !12, i64 448, !4, i64 456, !12, i64 464, !4, i64 472, !4, i64 480, !4, i64 488, !4, i64 496, !4, i64 504, !4, i64 512}
!12 = !{!"int", !5, i64 0}
!13 = !{!"long", !5, i64 0}
!14 = !{!11, !12, i64 464}
!15 = !{!11, !4, i64 456}
!16 = !{!11, !4, i64 472}
!17 = !{!11, !4, i64 480}
!18 = !{!11, !4, i64 488}
!19 = !{!11, !4, i64 496}
!20 = !{!11, !4, i64 152}
!21 = !{!11, !4, i64 280}
!22 = !{!11, !4, i64 288}
!23 = !{!11, !4, i64 296}
!24 = !{!11, !4, i64 16}
!25 = !{!12, !12, i64 0}
!26 = distinct !{!26, !27}
!27 = !{!"llvm.loop.mustprogress"}
!28 = !{!11, !4, i64 56}
!29 = !{!11, !4, i64 64}
!30 = !{!11, !12, i64 72}
!31 = !{!11, !4, i64 80}
!32 = !{!11, !4, i64 88}
!33 = !{!11, !4, i64 120}
!34 = !{!11, !4, i64 32}
!35 = !{!11, !4, i64 144}
!36 = !{!11, !4, i64 160}
!37 = !{!11, !4, i64 200}
!38 = !{!11, !4, i64 216}
!39 = !{!11, !4, i64 224}
!40 = !{!41, !4, i64 8}
!41 = !{!"asn1_string_st", !12, i64 0, !12, i64 4, !4, i64 8, !13, i64 16}
!42 = !{!41, !12, i64 0}
!43 = !{!11, !4, i64 232}
!44 = !{!11, !4, i64 264}
!45 = !{!11, !4, i64 312}
!46 = !{!11, !4, i64 328}
!47 = !{!11, !4, i64 352}
!48 = !{!11, !4, i64 368}
!49 = !{!11, !4, i64 392}
!50 = !{!11, !4, i64 400}
!51 = !{!11, !4, i64 416}
!52 = !{!11, !4, i64 440}
!53 = !{!11, !4, i64 504}
