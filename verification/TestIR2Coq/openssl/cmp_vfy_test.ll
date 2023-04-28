; ModuleID = 'test/cmp_vfy_test.c'
source_filename = "test/cmp_vfy_test.c"
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
%struct.ossl_cmp_msg_st = type { %struct.ossl_cmp_pkiheader_st*, %struct.ossl_cmp_pkibody_st*, %struct.asn1_string_st*, %struct.stack_st_X509*, %struct.ossl_lib_ctx_st*, i8* }
%struct.ossl_cmp_pkiheader_st = type { %struct.asn1_string_st*, %struct.GENERAL_NAME_st*, %struct.GENERAL_NAME_st*, %struct.asn1_string_st*, %struct.X509_algor_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.stack_st_ASN1_UTF8STRING*, %struct.stack_st_OSSL_CMP_ITAV* }
%struct.GENERAL_NAME_st = type { i32, %union.anon.1 }
%union.anon.1 = type { i8* }
%struct.stack_st_ASN1_UTF8STRING = type opaque
%struct.stack_st_OSSL_CMP_ITAV = type opaque
%struct.ossl_cmp_pkibody_st = type { i32, %union.anon.2 }
%union.anon.2 = type { %struct.stack_st_OSSL_CRMF_MSG* }
%struct.stack_st_OSSL_CRMF_MSG = type opaque
%struct.stack_st_X509 = type opaque
%struct.options_st = type { i8*, i32, i32, i8* }
%struct.ossl_provider_st = type opaque
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8* }
%struct.test_fixture = type { i8*, i32, %struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_msg_st*, %struct.x509_st*, i32 (%struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_msg_st*, i32, i32)*, i32 }
%struct.ossl_cmp_ctx_st = type { %struct.ossl_lib_ctx_st*, i8*, i32 (i8*, i8*, i32, i32, i8*)*, i32, %struct.ossl_cmp_msg_st* (%struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_msg_st*)*, i8*, %struct.ossl_http_req_ctx_st*, i8*, i8*, i32, i8*, i8*, i32, i32, i32, i64, %struct.bio_st* (%struct.bio_st*, i8*, i32, i32)*, i8*, i32, %struct.x509_st*, %struct.x509_st*, %struct.X509_name_st*, %struct.x509_store_st*, %struct.stack_st_X509*, i32, i32, i32, %struct.x509_st*, %struct.stack_st_X509*, %struct.evp_pkey_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, i64, %struct.evp_md_st*, i32, i32, %struct.X509_name_st*, %struct.evp_md_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.stack_st_OSSL_CMP_ITAV*, i32, i32, %struct.stack_st_X509*, %struct.evp_pkey_st*, i32, %struct.X509_name_st*, i32, %struct.X509_name_st*, %struct.stack_st_GENERAL_NAME*, i32, i32, %struct.stack_st_X509_EXTENSION*, %struct.stack_st_POLICYINFO*, i32, i32, %struct.x509_st*, %struct.X509_req_st*, i32, %struct.stack_st_OSSL_CMP_ITAV*, i32, %struct.stack_st_ASN1_UTF8STRING*, i32, %struct.x509_st*, %struct.stack_st_X509*, %struct.stack_st_X509*, %struct.stack_st_X509*, i32 (%struct.ossl_cmp_ctx_st*, %struct.x509_st*, i32, i8**)*, i8* }
%struct.ossl_http_req_ctx_st = type opaque
%struct.bio_st = type opaque
%struct.x509_store_st = type opaque
%struct.evp_md_st = type opaque
%struct.evp_pkey_st = type opaque
%struct.stack_st_POLICYINFO = type opaque
%struct.X509_req_st = type { %struct.X509_req_info_st, %struct.X509_algor_st, %struct.asn1_string_st*, i32, i8*, %struct.asn1_string_st*, %struct.ossl_lib_ctx_st*, i8* }
%struct.X509_req_info_st = type { %struct.ASN1_ENCODING_st, %struct.asn1_string_st*, %struct.X509_name_st*, %struct.X509_pubkey_st*, %struct.stack_st_X509_ATTRIBUTE* }
%struct.stack_st_X509_ATTRIBUTE = type opaque
%struct.X509_VERIFY_PARAM_st = type opaque
%struct.stack_st = type opaque
%struct.ossl_crmf_popo_st = type { i32, %union.anon.4 }
%union.anon.4 = type { i32* }
%struct.ossl_crmf_poposigningkey_st = type { %struct.ossl_crmf_poposigningkeyinput_st*, %struct.X509_algor_st*, %struct.asn1_string_st* }
%struct.ossl_crmf_poposigningkeyinput_st = type { %struct.ossl_crmf_poposigningkeyinput_authinfo_st*, %struct.X509_pubkey_st* }
%struct.ossl_crmf_poposigningkeyinput_authinfo_st = type { i32, %union.anon.5 }
%union.anon.5 = type { %struct.GENERAL_NAME_st* }
%struct.x509_store_ctx_st = type { %struct.x509_store_st*, %struct.x509_st*, %struct.stack_st_X509*, %struct.stack_st_X509_CRL*, %struct.X509_VERIFY_PARAM_st*, i8*, i32 (%struct.x509_store_ctx_st*)*, {}*, i32 (%struct.x509_st**, %struct.x509_store_ctx_st*, %struct.x509_st*)*, i32 (%struct.x509_store_ctx_st*, %struct.x509_st*, %struct.x509_st*)*, i32 (%struct.x509_store_ctx_st*)*, i32 (%struct.x509_store_ctx_st*, %struct.X509_crl_st**, %struct.x509_st*)*, i32 (%struct.x509_store_ctx_st*, %struct.X509_crl_st*)*, i32 (%struct.x509_store_ctx_st*, %struct.X509_crl_st*, %struct.x509_st*)*, i32 (%struct.x509_store_ctx_st*)*, %struct.stack_st_X509* (%struct.x509_store_ctx_st*, %struct.X509_name_st*)*, %struct.stack_st_X509_CRL* (%struct.x509_store_ctx_st*, %struct.X509_name_st*)*, i32 (%struct.x509_store_ctx_st*)*, i32, i32, %struct.stack_st_X509*, %struct.X509_POLICY_TREE_st*, i32, i32, i32, %struct.x509_st*, %struct.x509_st*, %struct.X509_crl_st*, i32, i32, %struct.x509_store_ctx_st*, %struct.crypto_ex_data_st, %struct.ssl_dane_st*, i32, %struct.ossl_lib_ctx_st*, i8* }
%struct.stack_st_X509_CRL = type opaque
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

@srvcert = internal unnamed_addr global %struct.x509_st* null, align 8
@clcert = internal unnamed_addr global %struct.x509_st* null, align 8
@endentity1 = internal unnamed_addr global %struct.x509_st* null, align 8
@endentity2 = internal unnamed_addr global %struct.x509_st* null, align 8
@intermediate = internal unnamed_addr global %struct.x509_st* null, align 8
@root = internal unnamed_addr global %struct.x509_st* null, align 8
@insta_cert = internal unnamed_addr global %struct.x509_st* null, align 8
@instaca_cert = internal unnamed_addr global %struct.x509_st* null, align 8
@ir_unprotected = internal unnamed_addr global %struct.ossl_cmp_msg_st* null, align 8
@ir_rmprotection = internal unnamed_addr global %struct.ossl_cmp_msg_st* null, align 8
@libctx = internal global %struct.ossl_lib_ctx_st* null, align 8
@test_get_options.options = internal constant [9 x %struct.options_st] [%struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_HELP_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([318 x i8], [318 x i8]* @.str, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_HELP_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i32 500, i32 45, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 501, i32 45, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i32 502, i32 115, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i32 503, i32 110, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0), i32 504, i32 112, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), i32 505, i32 110, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.13, i32 0, i32 0) }, %struct.options_st zeroinitializer], align 16
@OPT_HELP_STR = external dso_local constant [0 x i8], align 1
@.str = private unnamed_addr constant [318 x i8] c"Usage: %s [options] server.crt client.crt EndEntity1.crt EndEntity2.crt Root_CA.crt Intermediate_CA.crt CMP_IR_protected.der CMP_IR_unprotected.der IP_waitingStatus_PBM.der IR_rmprotection.der insta.cert.pem insta_ca.cert.pem IR_protected_0_extraCerts.der IR_protected_2_extraCerts.der module_name [module_conf_file]\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Valid options are:\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Display this summary\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"list\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"Display the list of tests available\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"test\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"Run a single test by id or name\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"iter\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"Run a single iteration of a test\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"indent\00", align 1
@.str.11 = private unnamed_addr constant [31 x i8] c"Number of tabs added to output\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"seed\00", align 1
@.str.13 = private unnamed_addr constant [35 x i8] c"Seed value to randomize tests with\00", align 1
@test_time_valid = internal unnamed_addr global i64 0, align 8
@test_time_after_expiration = internal unnamed_addr global i64 0, align 8
@.str.14 = private unnamed_addr constant [20 x i8] c"test/cmp_vfy_test.c\00", align 1
@.str.15 = private unnamed_addr constant [28 x i8] c"Error parsing test options\0A\00", align 1
@rand_data = internal global [16 x i8] zeroinitializer, align 16
@.str.16 = private unnamed_addr constant [32 x i8] c"server_f = test_get_argument(0)\00", align 1
@server_f = internal unnamed_addr global i8* null, align 8
@.str.17 = private unnamed_addr constant [32 x i8] c"client_f = test_get_argument(1)\00", align 1
@client_f = internal unnamed_addr global i8* null, align 8
@.str.18 = private unnamed_addr constant [36 x i8] c"endentity1_f = test_get_argument(2)\00", align 1
@endentity1_f = internal unnamed_addr global i8* null, align 8
@.str.19 = private unnamed_addr constant [36 x i8] c"endentity2_f = test_get_argument(3)\00", align 1
@endentity2_f = internal unnamed_addr global i8* null, align 8
@.str.20 = private unnamed_addr constant [30 x i8] c"root_f = test_get_argument(4)\00", align 1
@root_f = internal unnamed_addr global i8* null, align 8
@.str.21 = private unnamed_addr constant [38 x i8] c"intermediate_f = test_get_argument(5)\00", align 1
@intermediate_f = internal unnamed_addr global i8* null, align 8
@.str.22 = private unnamed_addr constant [38 x i8] c"ir_protected_f = test_get_argument(6)\00", align 1
@ir_protected_f = internal unnamed_addr global i8* null, align 8
@.str.23 = private unnamed_addr constant [40 x i8] c"ir_unprotected_f = test_get_argument(7)\00", align 1
@ir_unprotected_f = internal unnamed_addr global i8* null, align 8
@.str.24 = private unnamed_addr constant [36 x i8] c"ip_waiting_f = test_get_argument(8)\00", align 1
@ip_waiting_f = internal unnamed_addr global i8* null, align 8
@.str.25 = private unnamed_addr constant [41 x i8] c"ir_rmprotection_f = test_get_argument(9)\00", align 1
@ir_rmprotection_f = internal unnamed_addr global i8* null, align 8
@.str.26 = private unnamed_addr constant [36 x i8] c"instacert_f = test_get_argument(10)\00", align 1
@instacert_f = internal unnamed_addr global i8* null, align 8
@.str.27 = private unnamed_addr constant [34 x i8] c"instaca_f = test_get_argument(11)\00", align 1
@instaca_f = internal unnamed_addr global i8* null, align 8
@.str.28 = private unnamed_addr constant [50 x i8] c"ir_protected_0_extracerts = test_get_argument(12)\00", align 1
@ir_protected_0_extracerts = internal unnamed_addr global i8* null, align 8
@.str.29 = private unnamed_addr constant [50 x i8] c"ir_protected_2_extracerts = test_get_argument(13)\00", align 1
@ir_protected_2_extracerts = internal unnamed_addr global i8* null, align 8
@.str.30 = private unnamed_addr constant [23 x i8] c"usage: cmp_vfy_test %s\00", align 1
@.str.31 = private unnamed_addr constant [298 x i8] c"server.crt client.crt EndEntity1.crt EndEntity2.crt Root_CA.crt Intermediate_CA.crt CMP_IR_protected.der CMP_IR_unprotected.der IP_waitingStatus_PBM.der IR_rmprotection.der insta.cert.pem insta_ca.cert.pem IR_protected_0_extraCerts.der IR_protected_2_extraCerts.der module_name [module_conf_file]\0A\00", align 1
@default_null_provider = internal global %struct.ossl_provider_st* null, align 8
@provider = internal global %struct.ossl_provider_st* null, align 8
@.str.32 = private unnamed_addr constant [49 x i8] c"endentity1 = load_cert_pem(endentity1_f, libctx)\00", align 1
@.str.33 = private unnamed_addr constant [49 x i8] c"endentity2 = load_cert_pem(endentity2_f, libctx)\00", align 1
@.str.34 = private unnamed_addr constant [35 x i8] c"root = load_cert_pem(root_f, NULL)\00", align 1
@.str.35 = private unnamed_addr constant [53 x i8] c"intermediate = load_cert_pem(intermediate_f, libctx)\00", align 1
@.str.36 = private unnamed_addr constant [48 x i8] c"insta_cert = load_cert_pem(instacert_f, libctx)\00", align 1
@.str.37 = private unnamed_addr constant [48 x i8] c"instaca_cert = load_cert_pem(instaca_f, libctx)\00", align 1
@.str.38 = private unnamed_addr constant [42 x i8] c"srvcert = load_cert_pem(server_f, libctx)\00", align 1
@.str.39 = private unnamed_addr constant [41 x i8] c"clcert = load_cert_pem(client_f, libctx)\00", align 1
@.str.40 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.41 = private unnamed_addr constant [53 x i8] c"RAND_bytes(rand_data, OSSL_CMP_TRANSACTIONID_LENGTH)\00", align 1
@.str.42 = private unnamed_addr constant [55 x i8] c"ir_unprotected = load_pkimsg(ir_unprotected_f, libctx)\00", align 1
@.str.43 = private unnamed_addr constant [57 x i8] c"ir_rmprotection = load_pkimsg(ir_rmprotection_f, libctx)\00", align 1
@.str.44 = private unnamed_addr constant [17 x i8] c"test_verify_popo\00", align 1
@.str.45 = private unnamed_addr constant [21 x i8] c"test_verify_popo_bad\00", align 1
@.str.46 = private unnamed_addr constant [39 x i8] c"test_validate_msg_signature_trusted_ok\00", align 1
@.str.47 = private unnamed_addr constant [44 x i8] c"test_validate_msg_signature_trusted_expired\00", align 1
@.str.48 = private unnamed_addr constant [42 x i8] c"test_validate_msg_signature_srvcert_wrong\00", align 1
@.str.49 = private unnamed_addr constant [32 x i8] c"test_validate_msg_signature_bad\00", align 1
@.str.50 = private unnamed_addr constant [48 x i8] c"test_validate_msg_signature_sender_cert_srvcert\00", align 1
@.str.51 = private unnamed_addr constant [50 x i8] c"test_validate_msg_signature_sender_cert_untrusted\00", align 1
@.str.52 = private unnamed_addr constant [48 x i8] c"test_validate_msg_signature_sender_cert_trusted\00", align 1
@.str.53 = private unnamed_addr constant [50 x i8] c"test_validate_msg_signature_sender_cert_extracert\00", align 1
@.str.54 = private unnamed_addr constant [47 x i8] c"test_validate_msg_signature_sender_cert_absent\00", align 1
@.str.55 = private unnamed_addr constant [44 x i8] c"test_validate_msg_signature_expected_sender\00", align 1
@.str.56 = private unnamed_addr constant [46 x i8] c"test_validate_msg_signature_unexpected_sender\00", align 1
@.str.57 = private unnamed_addr constant [38 x i8] c"test_validate_msg_unprotected_request\00", align 1
@.str.58 = private unnamed_addr constant [37 x i8] c"test_validate_msg_mac_alg_protection\00", align 1
@.str.59 = private unnamed_addr constant [41 x i8] c"test_validate_msg_mac_alg_protection_bad\00", align 1
@.str.60 = private unnamed_addr constant [27 x i8] c"test_validate_cert_path_ok\00", align 1
@.str.61 = private unnamed_addr constant [32 x i8] c"test_validate_cert_path_expired\00", align 1
@.str.62 = private unnamed_addr constant [37 x i8] c"test_validate_cert_path_wrong_anchor\00", align 1
@.str.63 = private unnamed_addr constant [35 x i8] c"test_msg_check_no_protection_no_cb\00", align 1
@.str.64 = private unnamed_addr constant [44 x i8] c"test_msg_check_no_protection_restrictive_cb\00", align 1
@.str.65 = private unnamed_addr constant [43 x i8] c"test_msg_check_no_protection_permissive_cb\00", align 1
@.str.66 = private unnamed_addr constant [30 x i8] c"test_msg_check_transaction_id\00", align 1
@.str.67 = private unnamed_addr constant [34 x i8] c"test_msg_check_transaction_id_bad\00", align 1
@.str.68 = private unnamed_addr constant [31 x i8] c"test_msg_check_recipient_nonce\00", align 1
@.str.69 = private unnamed_addr constant [35 x i8] c"test_msg_check_recipient_nonce_bad\00", align 1
@.str.70 = private unnamed_addr constant [43 x i8] c"fixture = OPENSSL_zalloc(sizeof(*fixture))\00", align 1
@.str.71 = private unnamed_addr constant [50 x i8] c"fixture->cmp_ctx = OSSL_CMP_CTX_new(libctx, NULL)\00", align 1
@.str.72 = private unnamed_addr constant [18 x i8] c"fixture->expected\00", align 1
@.str.73 = private unnamed_addr constant [78 x i8] c"ossl_cmp_verify_popo(fixture->cmp_ctx, fixture->msg, fixture->additional_arg)\00", align 1
@__func__.test_validate_msg_signature_partial_chain = private unnamed_addr constant [42 x i8] c"test_validate_msg_signature_partial_chain\00", align 1
@.str.74 = private unnamed_addr constant [51 x i8] c"fixture->msg = load_pkimsg(ir_protected_f, libctx)\00", align 1
@.str.75 = private unnamed_addr constant [67 x i8] c"ossl_cmp_msg_check_update(fixture->cmp_ctx, fixture->msg, NULL, 0)\00", align 1
@.str.76 = private unnamed_addr constant [52 x i8] c"OSSL_CMP_CTX_set1_srvCert(fixture->cmp_ctx, clcert)\00", align 1
@__func__.test_validate_msg_signature_srvcert = private unnamed_addr constant [36 x i8] c"test_validate_msg_signature_srvcert\00", align 1
@.str.77 = private unnamed_addr constant [53 x i8] c"OSSL_CMP_CTX_set1_srvCert(fixture->cmp_ctx, srvcert)\00", align 1
@.str.78 = private unnamed_addr constant [62 x i8] c"fixture->msg = load_pkimsg(ir_protected_0_extracerts, libctx)\00", align 1
@.str.79 = private unnamed_addr constant [62 x i8] c"fixture->msg = load_pkimsg(ir_protected_2_extracerts, libctx)\00", align 1
@__func__.test_validate_with_sender = private unnamed_addr constant [26 x i8] c"test_validate_with_sender\00", align 1
@.str.80 = private unnamed_addr constant [58 x i8] c"OSSL_CMP_CTX_set1_expected_sender(fixture->cmp_ctx, name)\00", align 1
@.str.81 = private unnamed_addr constant [53 x i8] c"fixture->msg = load_pkimsg(ir_unprotected_f, libctx)\00", align 1
@__const.test_validate_msg_mac_alg_protection.sec_1 = private unnamed_addr constant [19 x i8] c"9pp8-b35i-Xd3Q-udNR", align 16
@.str.82 = private unnamed_addr constant [70 x i8] c"OSSL_CMP_CTX_set1_secretValue(fixture->cmp_ctx, sec_1, sizeof(sec_1))\00", align 1
@.str.83 = private unnamed_addr constant [49 x i8] c"fixture->msg = load_pkimsg(ip_waiting_f, libctx)\00", align 1
@__const.test_validate_msg_mac_alg_protection_bad.sec_bad = private unnamed_addr constant [19 x i8] c"9pp8-b35i-Xd3Q-udNr", align 16
@.str.84 = private unnamed_addr constant [74 x i8] c"OSSL_CMP_CTX_set1_secretValue(fixture->cmp_ctx, sec_bad, sizeof(sec_bad))\00", align 1
@.str.85 = private unnamed_addr constant [65 x i8] c"OSSL_CMP_validate_cert_path(fixture->cmp_ctx, ts, fixture->cert)\00", align 1
@.str.86 = private unnamed_addr constant [114 x i8] c"ossl_cmp_msg_check_update(fixture->cmp_ctx, fixture->msg, fixture->allow_unprotected_cb, fixture->additional_arg)\00", align 1
@.str.87 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.88 = private unnamed_addr constant [88 x i8] c"ASN1_OCTET_STRING_cmp(ossl_cmp_hdr_get0_senderNonce(hdr), fixture->cmp_ctx->recipNonce)\00", align 1
@.str.89 = private unnamed_addr constant [60 x i8] c"ASN1_OCTET_STRING_cmp(tid, fixture->cmp_ctx->transactionID)\00", align 1
@__const.test_msg_check_transaction_id.trans_id = private unnamed_addr constant [16 x i8] c"9\B6\90(\C4\BCz\F6\BE\C6J\88\97\A6\95\0B", align 16
@__const.test_msg_check_recipient_nonce.rec_nonce = private unnamed_addr constant [16 x i8] c"H\F1q\1F\E5\AF\1C\8B!\97\\\84tI\BA2", align 16

; Function Attrs: noinline nounwind uwtable
define dso_local void @cleanup_tests() local_unnamed_addr #0 {
entry:
  %0 = load %struct.x509_st*, %struct.x509_st** @srvcert, align 8, !tbaa !3
  tail call void @X509_free(%struct.x509_st* noundef %0) #7
  %1 = load %struct.x509_st*, %struct.x509_st** @clcert, align 8, !tbaa !3
  tail call void @X509_free(%struct.x509_st* noundef %1) #7
  %2 = load %struct.x509_st*, %struct.x509_st** @endentity1, align 8, !tbaa !3
  tail call void @X509_free(%struct.x509_st* noundef %2) #7
  %3 = load %struct.x509_st*, %struct.x509_st** @endentity2, align 8, !tbaa !3
  tail call void @X509_free(%struct.x509_st* noundef %3) #7
  %4 = load %struct.x509_st*, %struct.x509_st** @intermediate, align 8, !tbaa !3
  tail call void @X509_free(%struct.x509_st* noundef %4) #7
  %5 = load %struct.x509_st*, %struct.x509_st** @root, align 8, !tbaa !3
  tail call void @X509_free(%struct.x509_st* noundef %5) #7
  %6 = load %struct.x509_st*, %struct.x509_st** @insta_cert, align 8, !tbaa !3
  tail call void @X509_free(%struct.x509_st* noundef %6) #7
  %7 = load %struct.x509_st*, %struct.x509_st** @instaca_cert, align 8, !tbaa !3
  tail call void @X509_free(%struct.x509_st* noundef %7) #7
  %8 = load %struct.ossl_cmp_msg_st*, %struct.ossl_cmp_msg_st** @ir_unprotected, align 8, !tbaa !3
  tail call void @OSSL_CMP_MSG_free(%struct.ossl_cmp_msg_st* noundef %8) #7
  %9 = load %struct.ossl_cmp_msg_st*, %struct.ossl_cmp_msg_st** @ir_rmprotection, align 8, !tbaa !3
  tail call void @OSSL_CMP_MSG_free(%struct.ossl_cmp_msg_st* noundef %9) #7
  %10 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @libctx, align 8, !tbaa !3
  tail call void @OSSL_LIB_CTX_free(%struct.ossl_lib_ctx_st* noundef %10) #7
  ret void
}

declare dso_local void @X509_free(%struct.x509_st* noundef) local_unnamed_addr #1

declare dso_local void @OSSL_CMP_MSG_free(%struct.ossl_cmp_msg_st* noundef) local_unnamed_addr #1

declare dso_local void @OSSL_LIB_CTX_free(%struct.ossl_lib_ctx_st* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local %struct.options_st* @test_get_options() local_unnamed_addr #2 {
entry:
  ret %struct.options_st* getelementptr inbounds ([9 x %struct.options_st], [9 x %struct.options_st]* @test_get_options.options, i64 0, i64 0)
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @setup_tests() local_unnamed_addr #0 {
entry:
  %ts = alloca %struct.tm, align 8
  %0 = bitcast %struct.tm* %ts to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %0) #8
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %0, i8 0, i64 56, i1 false)
  %tm_year = getelementptr inbounds %struct.tm, %struct.tm* %ts, i64 0, i32 5
  store i32 118, i32* %tm_year, align 4, !tbaa !7
  %tm_mon = getelementptr inbounds %struct.tm, %struct.tm* %ts, i64 0, i32 4
  store i32 1, i32* %tm_mon, align 8, !tbaa !11
  %tm_mday = getelementptr inbounds %struct.tm, %struct.tm* %ts, i64 0, i32 3
  store i32 18, i32* %tm_mday, align 4, !tbaa !12
  %call = call i64 @mktime(%struct.tm* noundef nonnull %ts) #7
  store i64 %call, i64* @test_time_valid, align 8, !tbaa !13
  %1 = load i32, i32* %tm_year, align 4, !tbaa !7
  %add = add nsw i32 %1, 10
  store i32 %add, i32* %tm_year, align 4, !tbaa !7
  %call2 = call i64 @mktime(%struct.tm* noundef nonnull %ts) #7
  store i64 %call2, i64* @test_time_after_expiration, align 8, !tbaa !13
  %call3 = call i32 @test_skip_common_options() #7
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 580, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.15, i64 0, i64 0)) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = call i32 @RAND_bytes(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @rand_data, i64 0, i64 0), i32 noundef 16) #7
  %call5 = call i8* @test_get_argument(i64 noundef 0) #7
  store i8* %call5, i8** @server_f, align 8, !tbaa !3
  %call6 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 585, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.16, i64 0, i64 0), i8* noundef %call5) #7
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.then59, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %call8 = call i8* @test_get_argument(i64 noundef 1) #7
  store i8* %call8, i8** @client_f, align 8, !tbaa !3
  %call9 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 586, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.17, i64 0, i64 0), i8* noundef %call8) #7
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.then59, label %lor.lhs.false11

lor.lhs.false11:                                  ; preds = %lor.lhs.false
  %call12 = call i8* @test_get_argument(i64 noundef 2) #7
  store i8* %call12, i8** @endentity1_f, align 8, !tbaa !3
  %call13 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 587, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.18, i64 0, i64 0), i8* noundef %call12) #7
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.then59, label %lor.lhs.false15

lor.lhs.false15:                                  ; preds = %lor.lhs.false11
  %call16 = call i8* @test_get_argument(i64 noundef 3) #7
  store i8* %call16, i8** @endentity2_f, align 8, !tbaa !3
  %call17 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 588, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.19, i64 0, i64 0), i8* noundef %call16) #7
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.then59, label %lor.lhs.false19

lor.lhs.false19:                                  ; preds = %lor.lhs.false15
  %call20 = call i8* @test_get_argument(i64 noundef 4) #7
  store i8* %call20, i8** @root_f, align 8, !tbaa !3
  %call21 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 589, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.20, i64 0, i64 0), i8* noundef %call20) #7
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.then59, label %lor.lhs.false23

lor.lhs.false23:                                  ; preds = %lor.lhs.false19
  %call24 = call i8* @test_get_argument(i64 noundef 5) #7
  store i8* %call24, i8** @intermediate_f, align 8, !tbaa !3
  %call25 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 590, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.21, i64 0, i64 0), i8* noundef %call24) #7
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.then59, label %lor.lhs.false27

lor.lhs.false27:                                  ; preds = %lor.lhs.false23
  %call28 = call i8* @test_get_argument(i64 noundef 6) #7
  store i8* %call28, i8** @ir_protected_f, align 8, !tbaa !3
  %call29 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 591, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.22, i64 0, i64 0), i8* noundef %call28) #7
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.then59, label %lor.lhs.false31

lor.lhs.false31:                                  ; preds = %lor.lhs.false27
  %call32 = call i8* @test_get_argument(i64 noundef 7) #7
  store i8* %call32, i8** @ir_unprotected_f, align 8, !tbaa !3
  %call33 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 592, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.23, i64 0, i64 0), i8* noundef %call32) #7
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.then59, label %lor.lhs.false35

lor.lhs.false35:                                  ; preds = %lor.lhs.false31
  %call36 = call i8* @test_get_argument(i64 noundef 8) #7
  store i8* %call36, i8** @ip_waiting_f, align 8, !tbaa !3
  %call37 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 593, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.24, i64 0, i64 0), i8* noundef %call36) #7
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.then59, label %lor.lhs.false39

lor.lhs.false39:                                  ; preds = %lor.lhs.false35
  %call40 = call i8* @test_get_argument(i64 noundef 9) #7
  store i8* %call40, i8** @ir_rmprotection_f, align 8, !tbaa !3
  %call41 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 594, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.25, i64 0, i64 0), i8* noundef %call40) #7
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.then59, label %lor.lhs.false43

lor.lhs.false43:                                  ; preds = %lor.lhs.false39
  %call44 = call i8* @test_get_argument(i64 noundef 10) #7
  store i8* %call44, i8** @instacert_f, align 8, !tbaa !3
  %call45 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 595, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.26, i64 0, i64 0), i8* noundef %call44) #7
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.then59, label %lor.lhs.false47

lor.lhs.false47:                                  ; preds = %lor.lhs.false43
  %call48 = call i8* @test_get_argument(i64 noundef 11) #7
  store i8* %call48, i8** @instaca_f, align 8, !tbaa !3
  %call49 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 596, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.27, i64 0, i64 0), i8* noundef %call48) #7
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.then59, label %lor.lhs.false51

lor.lhs.false51:                                  ; preds = %lor.lhs.false47
  %call52 = call i8* @test_get_argument(i64 noundef 12) #7
  store i8* %call52, i8** @ir_protected_0_extracerts, align 8, !tbaa !3
  %call53 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 597, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.28, i64 0, i64 0), i8* noundef %call52) #7
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.then59, label %lor.lhs.false55

lor.lhs.false55:                                  ; preds = %lor.lhs.false51
  %call56 = call i8* @test_get_argument(i64 noundef 13) #7
  store i8* %call56, i8** @ir_protected_2_extracerts, align 8, !tbaa !3
  %call57 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 598, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.29, i64 0, i64 0), i8* noundef %call56) #7
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %if.then59, label %if.end60

if.then59:                                        ; preds = %lor.lhs.false55, %lor.lhs.false51, %lor.lhs.false47, %lor.lhs.false43, %lor.lhs.false39, %lor.lhs.false35, %lor.lhs.false31, %lor.lhs.false27, %lor.lhs.false23, %lor.lhs.false19, %lor.lhs.false15, %lor.lhs.false11, %lor.lhs.false, %if.end
  call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 599, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.30, i64 0, i64 0), i8* noundef getelementptr inbounds ([298 x i8], [298 x i8]* @.str.31, i64 0, i64 0)) #7
  br label %cleanup

if.end60:                                         ; preds = %lor.lhs.false55
  %call61 = call i32 @test_arg_libctx(%struct.ossl_lib_ctx_st** noundef nonnull @libctx, %struct.ossl_provider_st** noundef nonnull @default_null_provider, %struct.ossl_provider_st** noundef nonnull @provider, i32 noundef 14, i8* noundef getelementptr inbounds ([298 x i8], [298 x i8]* @.str.31, i64 0, i64 0)) #7
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %cleanup, label %if.end64

if.end64:                                         ; preds = %if.end60
  %2 = load i8*, i8** @endentity1_f, align 8, !tbaa !3
  %3 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @libctx, align 8, !tbaa !3
  %call65 = call %struct.x509_st* @load_cert_pem(i8* noundef %2, %struct.ossl_lib_ctx_st* noundef %3) #7
  store %struct.x509_st* %call65, %struct.x509_st** @endentity1, align 8, !tbaa !3
  %4 = bitcast %struct.x509_st* %call65 to i8*
  %call66 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 607, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.32, i64 0, i64 0), i8* noundef %4) #7
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %err, label %lor.lhs.false68

lor.lhs.false68:                                  ; preds = %if.end64
  %5 = load i8*, i8** @endentity2_f, align 8, !tbaa !3
  %6 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @libctx, align 8, !tbaa !3
  %call69 = call %struct.x509_st* @load_cert_pem(i8* noundef %5, %struct.ossl_lib_ctx_st* noundef %6) #7
  store %struct.x509_st* %call69, %struct.x509_st** @endentity2, align 8, !tbaa !3
  %7 = bitcast %struct.x509_st* %call69 to i8*
  %call70 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 608, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.33, i64 0, i64 0), i8* noundef %7) #7
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %err, label %lor.lhs.false72

lor.lhs.false72:                                  ; preds = %lor.lhs.false68
  %8 = load i8*, i8** @root_f, align 8, !tbaa !3
  %call73 = call %struct.x509_st* @load_cert_pem(i8* noundef %8, %struct.ossl_lib_ctx_st* noundef null) #7
  store %struct.x509_st* %call73, %struct.x509_st** @root, align 8, !tbaa !3
  %9 = bitcast %struct.x509_st* %call73 to i8*
  %call74 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 609, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.34, i64 0, i64 0), i8* noundef %9) #7
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %err, label %lor.lhs.false76

lor.lhs.false76:                                  ; preds = %lor.lhs.false72
  %10 = load i8*, i8** @intermediate_f, align 8, !tbaa !3
  %11 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @libctx, align 8, !tbaa !3
  %call77 = call %struct.x509_st* @load_cert_pem(i8* noundef %10, %struct.ossl_lib_ctx_st* noundef %11) #7
  store %struct.x509_st* %call77, %struct.x509_st** @intermediate, align 8, !tbaa !3
  %12 = bitcast %struct.x509_st* %call77 to i8*
  %call78 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 610, i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.35, i64 0, i64 0), i8* noundef %12) #7
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %err, label %if.end81

if.end81:                                         ; preds = %lor.lhs.false76
  %13 = load i8*, i8** @instacert_f, align 8, !tbaa !3
  %14 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @libctx, align 8, !tbaa !3
  %call82 = call %struct.x509_st* @load_cert_pem(i8* noundef %13, %struct.ossl_lib_ctx_st* noundef %14) #7
  store %struct.x509_st* %call82, %struct.x509_st** @insta_cert, align 8, !tbaa !3
  %15 = bitcast %struct.x509_st* %call82 to i8*
  %call83 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 613, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.36, i64 0, i64 0), i8* noundef %15) #7
  %tobool84.not = icmp eq i32 %call83, 0
  br i1 %tobool84.not, label %err, label %lor.lhs.false85

lor.lhs.false85:                                  ; preds = %if.end81
  %16 = load i8*, i8** @instaca_f, align 8, !tbaa !3
  %17 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @libctx, align 8, !tbaa !3
  %call86 = call %struct.x509_st* @load_cert_pem(i8* noundef %16, %struct.ossl_lib_ctx_st* noundef %17) #7
  store %struct.x509_st* %call86, %struct.x509_st** @instaca_cert, align 8, !tbaa !3
  %18 = bitcast %struct.x509_st* %call86 to i8*
  %call87 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 614, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.37, i64 0, i64 0), i8* noundef %18) #7
  %tobool88.not = icmp eq i32 %call87, 0
  br i1 %tobool88.not, label %err, label %if.end90

if.end90:                                         ; preds = %lor.lhs.false85
  %19 = load i8*, i8** @server_f, align 8, !tbaa !3
  %20 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @libctx, align 8, !tbaa !3
  %call91 = call %struct.x509_st* @load_cert_pem(i8* noundef %19, %struct.ossl_lib_ctx_st* noundef %20) #7
  store %struct.x509_st* %call91, %struct.x509_st** @srvcert, align 8, !tbaa !3
  %21 = bitcast %struct.x509_st* %call91 to i8*
  %call92 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 618, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.38, i64 0, i64 0), i8* noundef %21) #7
  %tobool93.not = icmp eq i32 %call92, 0
  br i1 %tobool93.not, label %err, label %lor.lhs.false94

lor.lhs.false94:                                  ; preds = %if.end90
  %22 = load i8*, i8** @client_f, align 8, !tbaa !3
  %23 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @libctx, align 8, !tbaa !3
  %call95 = call %struct.x509_st* @load_cert_pem(i8* noundef %22, %struct.ossl_lib_ctx_st* noundef %23) #7
  store %struct.x509_st* %call95, %struct.x509_st** @clcert, align 8, !tbaa !3
  %24 = bitcast %struct.x509_st* %call95 to i8*
  %call96 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 619, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.39, i64 0, i64 0), i8* noundef %24) #7
  %tobool97.not = icmp eq i32 %call96, 0
  br i1 %tobool97.not, label %err, label %if.end99

if.end99:                                         ; preds = %lor.lhs.false94
  %call100 = call i32 @RAND_bytes(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @rand_data, i64 0, i64 0), i32 noundef 16) #7
  %call101 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 621, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i64 0, i64 0), i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.41, i64 0, i64 0), i32 noundef 1, i32 noundef %call100) #7
  %tobool102.not = icmp eq i32 %call101, 0
  br i1 %tobool102.not, label %err, label %if.end104

if.end104:                                        ; preds = %if.end99
  %25 = load i8*, i8** @ir_unprotected_f, align 8, !tbaa !3
  %26 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @libctx, align 8, !tbaa !3
  %call105 = call %struct.ossl_cmp_msg_st* @load_pkimsg(i8* noundef %25, %struct.ossl_lib_ctx_st* noundef %26) #7
  store %struct.ossl_cmp_msg_st* %call105, %struct.ossl_cmp_msg_st** @ir_unprotected, align 8, !tbaa !3
  %27 = bitcast %struct.ossl_cmp_msg_st* %call105 to i8*
  %call106 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 623, i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.42, i64 0, i64 0), i8* noundef %27) #7
  %tobool107.not = icmp eq i32 %call106, 0
  br i1 %tobool107.not, label %err, label %lor.lhs.false108

lor.lhs.false108:                                 ; preds = %if.end104
  %28 = load i8*, i8** @ir_rmprotection_f, align 8, !tbaa !3
  %29 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @libctx, align 8, !tbaa !3
  %call109 = call %struct.ossl_cmp_msg_st* @load_pkimsg(i8* noundef %28, %struct.ossl_lib_ctx_st* noundef %29) #7
  store %struct.ossl_cmp_msg_st* %call109, %struct.ossl_cmp_msg_st** @ir_rmprotection, align 8, !tbaa !3
  %30 = bitcast %struct.ossl_cmp_msg_st* %call109 to i8*
  %call110 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 624, i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @.str.43, i64 0, i64 0), i8* noundef %30) #7
  %tobool111.not = icmp eq i32 %call110, 0
  br i1 %tobool111.not, label %err, label %if.end113

if.end113:                                        ; preds = %lor.lhs.false108
  call void @add_test(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.44, i64 0, i64 0), i32 ()* noundef nonnull @test_verify_popo) #7
  call void @add_test(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.45, i64 0, i64 0), i32 ()* noundef nonnull @test_verify_popo_bad) #7
  call void @add_test(i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.46, i64 0, i64 0), i32 ()* noundef nonnull @test_validate_msg_signature_trusted_ok) #7
  call void @add_test(i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.47, i64 0, i64 0), i32 ()* noundef nonnull @test_validate_msg_signature_trusted_expired) #7
  call void @add_test(i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.48, i64 0, i64 0), i32 ()* noundef nonnull @test_validate_msg_signature_srvcert_wrong) #7
  call void @add_test(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.49, i64 0, i64 0), i32 ()* noundef nonnull @test_validate_msg_signature_bad) #7
  call void @add_test(i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.50, i64 0, i64 0), i32 ()* noundef nonnull @test_validate_msg_signature_sender_cert_srvcert) #7
  call void @add_test(i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.51, i64 0, i64 0), i32 ()* noundef nonnull @test_validate_msg_signature_sender_cert_untrusted) #7
  call void @add_test(i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.52, i64 0, i64 0), i32 ()* noundef nonnull @test_validate_msg_signature_sender_cert_trusted) #7
  call void @add_test(i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.53, i64 0, i64 0), i32 ()* noundef nonnull @test_validate_msg_signature_sender_cert_extracert) #7
  call void @add_test(i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.54, i64 0, i64 0), i32 ()* noundef nonnull @test_validate_msg_signature_sender_cert_absent) #7
  call void @add_test(i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.55, i64 0, i64 0), i32 ()* noundef nonnull @test_validate_msg_signature_expected_sender) #7
  call void @add_test(i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.56, i64 0, i64 0), i32 ()* noundef nonnull @test_validate_msg_signature_unexpected_sender) #7
  call void @add_test(i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.57, i64 0, i64 0), i32 ()* noundef nonnull @test_validate_msg_unprotected_request) #7
  call void @add_test(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.58, i64 0, i64 0), i32 ()* noundef nonnull @test_validate_msg_mac_alg_protection) #7
  call void @add_test(i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.59, i64 0, i64 0), i32 ()* noundef nonnull @test_validate_msg_mac_alg_protection_bad) #7
  call void @add_test(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.60, i64 0, i64 0), i32 ()* noundef nonnull @test_validate_cert_path_ok) #7
  call void @add_test(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.61, i64 0, i64 0), i32 ()* noundef nonnull @test_validate_cert_path_expired) #7
  call void @add_test(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.62, i64 0, i64 0), i32 ()* noundef nonnull @test_validate_cert_path_wrong_anchor) #7
  call void @add_test(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.63, i64 0, i64 0), i32 ()* noundef nonnull @test_msg_check_no_protection_no_cb) #7
  call void @add_test(i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.64, i64 0, i64 0), i32 ()* noundef nonnull @test_msg_check_no_protection_restrictive_cb) #7
  call void @add_test(i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.65, i64 0, i64 0), i32 ()* noundef nonnull @test_msg_check_no_protection_permissive_cb) #7
  call void @add_test(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.66, i64 0, i64 0), i32 ()* noundef nonnull @test_msg_check_transaction_id) #7
  call void @add_test(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.67, i64 0, i64 0), i32 ()* noundef nonnull @test_msg_check_transaction_id_bad) #7
  call void @add_test(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.68, i64 0, i64 0), i32 ()* noundef nonnull @test_msg_check_recipient_nonce) #7
  call void @add_test(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.69, i64 0, i64 0), i32 ()* noundef nonnull @test_msg_check_recipient_nonce_bad) #7
  br label %cleanup

err:                                              ; preds = %if.end104, %lor.lhs.false108, %if.end99, %if.end90, %lor.lhs.false94, %if.end81, %lor.lhs.false85, %if.end64, %lor.lhs.false68, %lor.lhs.false72, %lor.lhs.false76
  call void @cleanup_tests() #9
  br label %cleanup

cleanup:                                          ; preds = %if.end60, %err, %if.end113, %if.then59, %if.then
  %retval.0 = phi i32 [ 1, %if.end113 ], [ 0, %err ], [ 0, %if.then59 ], [ 0, %if.then ], [ 0, %if.end60 ]
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %0) #8
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: nounwind
declare dso_local i64 @mktime(%struct.tm* noundef) local_unnamed_addr #5

declare dso_local i32 @test_skip_common_options() local_unnamed_addr #1

declare dso_local void @test_error(i8* noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

declare dso_local i32 @RAND_bytes(i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @test_ptr(i8* noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local i8* @test_get_argument(i64 noundef) local_unnamed_addr #1

declare dso_local i32 @test_arg_libctx(%struct.ossl_lib_ctx_st** noundef, %struct.ossl_provider_st** noundef, %struct.ossl_provider_st** noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

declare dso_local %struct.x509_st* @load_cert_pem(i8* noundef, %struct.ossl_lib_ctx_st* noundef) local_unnamed_addr #1

declare dso_local i32 @test_int_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local %struct.ossl_cmp_msg_st* @load_pkimsg(i8* noundef, %struct.ossl_lib_ctx_st* noundef) local_unnamed_addr #1

declare dso_local void @add_test(i8* noundef, i32 ()* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_verify_popo() #0 {
entry:
  %call = tail call fastcc %struct.test_fixture* @set_up(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.44, i64 0, i64 0)) #9
  %cmp = icmp eq %struct.test_fixture* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %expected = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %call, i64 0, i32 1
  store i32 1, i32* %expected, align 8, !tbaa !14
  %call3 = tail call fastcc i32 @execute_verify_popo_test(%struct.test_fixture* noundef nonnull %call) #9
  tail call fastcc void @tear_down(%struct.test_fixture* noundef nonnull %call) #9
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call3, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_verify_popo_bad() #0 {
entry:
  %call = tail call fastcc %struct.test_fixture* @set_up(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.45, i64 0, i64 0)) #9
  %cmp = icmp eq %struct.test_fixture* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %expected = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %call, i64 0, i32 1
  store i32 0, i32* %expected, align 8, !tbaa !14
  %call3 = tail call fastcc i32 @execute_verify_popo_test(%struct.test_fixture* noundef nonnull %call) #9
  tail call fastcc void @tear_down(%struct.test_fixture* noundef nonnull %call) #9
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call3, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_validate_msg_signature_trusted_ok() #0 {
entry:
  %call = tail call fastcc i32 @test_validate_msg_signature_partial_chain(i32 noundef 0) #9
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_validate_msg_signature_trusted_expired() #0 {
entry:
  %call = tail call fastcc i32 @test_validate_msg_signature_partial_chain(i32 noundef 1) #9
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_validate_msg_signature_srvcert_wrong() #0 {
entry:
  %call = tail call fastcc %struct.test_fixture* @set_up(i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.48, i64 0, i64 0)) #9
  %cmp = icmp eq %struct.test_fixture* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %expected = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %call, i64 0, i32 1
  store i32 0, i32* %expected, align 8, !tbaa !14
  %0 = load i8*, i8** @ir_protected_f, align 8, !tbaa !3
  %1 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @libctx, align 8, !tbaa !3
  %call1 = tail call %struct.ossl_cmp_msg_st* @load_pkimsg(i8* noundef %0, %struct.ossl_lib_ctx_st* noundef %1) #7
  %msg = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %call, i64 0, i32 3
  store %struct.ossl_cmp_msg_st* %call1, %struct.ossl_cmp_msg_st** %msg, align 8, !tbaa !16
  %2 = bitcast %struct.ossl_cmp_msg_st* %call1 to i8*
  %call2 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 236, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.74, i64 0, i64 0), i8* noundef %2) #7
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %cleanup.sink.split, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %cmp_ctx = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %call, i64 0, i32 2
  %3 = load %struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_ctx_st** %cmp_ctx, align 8, !tbaa !17
  %4 = load %struct.x509_st*, %struct.x509_st** @clcert, align 8, !tbaa !3
  %call3 = tail call i32 @OSSL_CMP_CTX_set1_srvCert(%struct.ossl_cmp_ctx_st* noundef %3, %struct.x509_st* noundef %4) #7
  %cmp4 = icmp ne i32 %call3, 0
  %conv = zext i1 %cmp4 to i32
  %call5 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 237, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.76, i64 0, i64 0), i32 noundef %conv) #7
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %cleanup.sink.split, label %if.then11

if.then11:                                        ; preds = %lor.lhs.false
  %call12 = tail call fastcc i32 @execute_validate_msg_test(%struct.test_fixture* noundef nonnull %call) #9
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %lor.lhs.false, %if.end, %if.then11
  %retval.0.ph = phi i32 [ %call12, %if.then11 ], [ 0, %if.end ], [ 0, %lor.lhs.false ]
  tail call fastcc void @tear_down(%struct.test_fixture* noundef nonnull %call) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_validate_msg_signature_bad() #0 {
entry:
  %call = tail call fastcc i32 @test_validate_msg_signature_srvcert(i32 noundef 1) #9
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_validate_msg_signature_sender_cert_srvcert() #0 {
entry:
  %call = tail call fastcc i32 @test_validate_msg_signature_srvcert(i32 noundef 0) #9
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_validate_msg_signature_sender_cert_untrusted() #0 {
entry:
  %call = tail call fastcc %struct.test_fixture* @set_up(i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.51, i64 0, i64 0)) #9
  %cmp = icmp eq %struct.test_fixture* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %expected = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %call, i64 0, i32 1
  store i32 1, i32* %expected, align 8, !tbaa !14
  %0 = load i8*, i8** @ir_protected_0_extracerts, align 8, !tbaa !3
  %1 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @libctx, align 8, !tbaa !3
  %call1 = tail call %struct.ossl_cmp_msg_st* @load_pkimsg(i8* noundef %0, %struct.ossl_lib_ctx_st* noundef %1) #7
  %msg = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %call, i64 0, i32 3
  store %struct.ossl_cmp_msg_st* %call1, %struct.ossl_cmp_msg_st** %msg, align 8, !tbaa !16
  %2 = bitcast %struct.ossl_cmp_msg_st* %call1 to i8*
  %call2 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 275, i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.78, i64 0, i64 0), i8* noundef %2) #7
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %cleanup.sink.split, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %cmp_ctx = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %call, i64 0, i32 2
  %3 = load %struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_ctx_st** %cmp_ctx, align 8, !tbaa !17
  %4 = load %struct.x509_st*, %struct.x509_st** @instaca_cert, align 8, !tbaa !3
  %call3 = tail call fastcc i32 @add_trusted(%struct.ossl_cmp_ctx_st* noundef %3, %struct.x509_st* noundef %4) #9
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %cleanup.sink.split, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %5 = load %struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_ctx_st** %cmp_ctx, align 8, !tbaa !17
  %6 = load %struct.x509_st*, %struct.x509_st** @insta_cert, align 8, !tbaa !3
  %call7 = tail call fastcc i32 @add_untrusted(%struct.ossl_cmp_ctx_st* noundef %5, %struct.x509_st* noundef %6) #9
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %cleanup.sink.split, label %if.then12

if.then12:                                        ; preds = %lor.lhs.false5
  %call13 = tail call fastcc i32 @execute_validate_msg_test(%struct.test_fixture* noundef nonnull %call) #9
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %lor.lhs.false5, %lor.lhs.false, %if.end, %if.then12
  %retval.0.ph = phi i32 [ %call13, %if.then12 ], [ 0, %if.end ], [ 0, %lor.lhs.false ], [ 0, %lor.lhs.false5 ]
  tail call fastcc void @tear_down(%struct.test_fixture* noundef nonnull %call) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_validate_msg_signature_sender_cert_trusted() #0 {
entry:
  %call = tail call fastcc %struct.test_fixture* @set_up(i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.52, i64 0, i64 0)) #9
  %cmp = icmp eq %struct.test_fixture* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %expected = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %call, i64 0, i32 1
  store i32 1, i32* %expected, align 8, !tbaa !14
  %0 = load i8*, i8** @ir_protected_0_extracerts, align 8, !tbaa !3
  %1 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @libctx, align 8, !tbaa !3
  %call1 = tail call %struct.ossl_cmp_msg_st* @load_pkimsg(i8* noundef %0, %struct.ossl_lib_ctx_st* noundef %1) #7
  %msg = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %call, i64 0, i32 3
  store %struct.ossl_cmp_msg_st* %call1, %struct.ossl_cmp_msg_st** %msg, align 8, !tbaa !16
  %2 = bitcast %struct.ossl_cmp_msg_st* %call1 to i8*
  %call2 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 289, i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.78, i64 0, i64 0), i8* noundef %2) #7
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %cleanup.sink.split, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %cmp_ctx = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %call, i64 0, i32 2
  %3 = load %struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_ctx_st** %cmp_ctx, align 8, !tbaa !17
  %4 = load %struct.x509_st*, %struct.x509_st** @instaca_cert, align 8, !tbaa !3
  %call3 = tail call fastcc i32 @add_trusted(%struct.ossl_cmp_ctx_st* noundef %3, %struct.x509_st* noundef %4) #9
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %cleanup.sink.split, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %5 = load %struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_ctx_st** %cmp_ctx, align 8, !tbaa !17
  %6 = load %struct.x509_st*, %struct.x509_st** @insta_cert, align 8, !tbaa !3
  %call7 = tail call fastcc i32 @add_trusted(%struct.ossl_cmp_ctx_st* noundef %5, %struct.x509_st* noundef %6) #9
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %cleanup.sink.split, label %if.then12

if.then12:                                        ; preds = %lor.lhs.false5
  %call13 = tail call fastcc i32 @execute_validate_msg_test(%struct.test_fixture* noundef nonnull %call) #9
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %lor.lhs.false5, %lor.lhs.false, %if.end, %if.then12
  %retval.0.ph = phi i32 [ %call13, %if.then12 ], [ 0, %if.end ], [ 0, %lor.lhs.false ], [ 0, %lor.lhs.false5 ]
  tail call fastcc void @tear_down(%struct.test_fixture* noundef nonnull %call) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_validate_msg_signature_sender_cert_extracert() #0 {
entry:
  %call = tail call fastcc %struct.test_fixture* @set_up(i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.53, i64 0, i64 0)) #9
  %cmp = icmp eq %struct.test_fixture* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %expected = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %call, i64 0, i32 1
  store i32 1, i32* %expected, align 8, !tbaa !14
  %0 = load i8*, i8** @ir_protected_2_extracerts, align 8, !tbaa !3
  %1 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @libctx, align 8, !tbaa !3
  %call1 = tail call %struct.ossl_cmp_msg_st* @load_pkimsg(i8* noundef %0, %struct.ossl_lib_ctx_st* noundef %1) #7
  %msg = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %call, i64 0, i32 3
  store %struct.ossl_cmp_msg_st* %call1, %struct.ossl_cmp_msg_st** %msg, align 8, !tbaa !16
  %2 = bitcast %struct.ossl_cmp_msg_st* %call1 to i8*
  %call2 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 303, i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.79, i64 0, i64 0), i8* noundef %2) #7
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %cleanup.sink.split, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %cmp_ctx = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %call, i64 0, i32 2
  %3 = load %struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_ctx_st** %cmp_ctx, align 8, !tbaa !17
  %4 = load %struct.x509_st*, %struct.x509_st** @instaca_cert, align 8, !tbaa !3
  %call3 = tail call fastcc i32 @add_trusted(%struct.ossl_cmp_ctx_st* noundef %3, %struct.x509_st* noundef %4) #9
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %cleanup.sink.split, label %if.then8

if.then8:                                         ; preds = %lor.lhs.false
  %call9 = tail call fastcc i32 @execute_validate_msg_test(%struct.test_fixture* noundef nonnull %call) #9
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %lor.lhs.false, %if.end, %if.then8
  %retval.0.ph = phi i32 [ %call9, %if.then8 ], [ 0, %if.end ], [ 0, %lor.lhs.false ]
  tail call fastcc void @tear_down(%struct.test_fixture* noundef nonnull %call) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_validate_msg_signature_sender_cert_absent() #0 {
entry:
  %call = tail call fastcc %struct.test_fixture* @set_up(i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.54, i64 0, i64 0)) #9
  %cmp = icmp eq %struct.test_fixture* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %expected = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %call, i64 0, i32 1
  store i32 0, i32* %expected, align 8, !tbaa !14
  %0 = load i8*, i8** @ir_protected_0_extracerts, align 8, !tbaa !3
  %1 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @libctx, align 8, !tbaa !3
  %call1 = tail call %struct.ossl_cmp_msg_st* @load_pkimsg(i8* noundef %0, %struct.ossl_lib_ctx_st* noundef %1) #7
  %msg = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %call, i64 0, i32 3
  store %struct.ossl_cmp_msg_st* %call1, %struct.ossl_cmp_msg_st** %msg, align 8, !tbaa !16
  %2 = bitcast %struct.ossl_cmp_msg_st* %call1 to i8*
  %call2 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 318, i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.78, i64 0, i64 0), i8* noundef %2) #7
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %cleanup.sink.split, label %if.then6

if.then6:                                         ; preds = %if.end
  %call7 = tail call fastcc i32 @execute_validate_msg_test(%struct.test_fixture* noundef nonnull %call) #9
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end, %if.then6
  %retval.0.ph = phi i32 [ %call7, %if.then6 ], [ 0, %if.end ]
  tail call fastcc void @tear_down(%struct.test_fixture* noundef nonnull %call) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_validate_msg_signature_expected_sender() #0 {
entry:
  %0 = load %struct.x509_st*, %struct.x509_st** @srvcert, align 8, !tbaa !3
  %call = tail call %struct.X509_name_st* @X509_get_subject_name(%struct.x509_st* noundef %0) #7
  %call1 = tail call fastcc i32 @test_validate_with_sender(%struct.X509_name_st* noundef %call, i32 noundef 1) #9
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_validate_msg_signature_unexpected_sender() #0 {
entry:
  %0 = load %struct.x509_st*, %struct.x509_st** @root, align 8, !tbaa !3
  %call = tail call %struct.X509_name_st* @X509_get_subject_name(%struct.x509_st* noundef %0) #7
  %call1 = tail call fastcc i32 @test_validate_with_sender(%struct.X509_name_st* noundef %call, i32 noundef 0) #9
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_validate_msg_unprotected_request() #0 {
entry:
  %call = tail call fastcc %struct.test_fixture* @set_up(i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.57, i64 0, i64 0)) #9
  %cmp = icmp eq %struct.test_fixture* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %expected = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %call, i64 0, i32 1
  store i32 0, i32* %expected, align 8, !tbaa !14
  %0 = load i8*, i8** @ir_unprotected_f, align 8, !tbaa !3
  %1 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @libctx, align 8, !tbaa !3
  %call1 = tail call %struct.ossl_cmp_msg_st* @load_pkimsg(i8* noundef %0, %struct.ossl_lib_ctx_st* noundef %1) #7
  %msg = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %call, i64 0, i32 3
  store %struct.ossl_cmp_msg_st* %call1, %struct.ossl_cmp_msg_st** %msg, align 8, !tbaa !16
  %2 = bitcast %struct.ossl_cmp_msg_st* %call1 to i8*
  %call2 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 356, i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.81, i64 0, i64 0), i8* noundef %2) #7
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %cleanup.sink.split, label %if.then6

if.then6:                                         ; preds = %if.end
  %call7 = tail call fastcc i32 @execute_validate_msg_test(%struct.test_fixture* noundef nonnull %call) #9
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end, %if.then6
  %retval.0.ph = phi i32 [ %call7, %if.then6 ], [ 0, %if.end ]
  tail call fastcc void @tear_down(%struct.test_fixture* noundef nonnull %call) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_validate_msg_mac_alg_protection() #0 {
entry:
  %sec_1 = alloca [19 x i8], align 16
  %0 = getelementptr inbounds [19 x i8], [19 x i8]* %sec_1, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 19, i8* nonnull %0) #8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(19) %0, i8* noundef nonnull align 16 dereferenceable(19) getelementptr inbounds ([19 x i8], [19 x i8]* @__const.test_validate_msg_mac_alg_protection.sec_1, i64 0, i64 0), i64 19, i1 false)
  %call = tail call fastcc %struct.test_fixture* @set_up(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.58, i64 0, i64 0)) #9
  %cmp = icmp eq %struct.test_fixture* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %expected = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %call, i64 0, i32 1
  store i32 1, i32* %expected, align 8, !tbaa !14
  %cmp_ctx = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %call, i64 0, i32 2
  %1 = load %struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_ctx_st** %cmp_ctx, align 8, !tbaa !17
  %call1 = call i32 @OSSL_CMP_CTX_set1_secretValue(%struct.ossl_cmp_ctx_st* noundef %1, i8* noundef nonnull %0, i32 noundef 19) #7
  %cmp2 = icmp ne i32 %call1, 0
  %conv = zext i1 %cmp2 to i32
  %call3 = call i32 @test_true(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 155, i8* noundef getelementptr inbounds ([70 x i8], [70 x i8]* @.str.82, i64 0, i64 0), i32 noundef %conv) #7
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %cleanup.sink.split, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %2 = load i8*, i8** @ip_waiting_f, align 8, !tbaa !3
  %3 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @libctx, align 8, !tbaa !3
  %call4 = call %struct.ossl_cmp_msg_st* @load_pkimsg(i8* noundef %2, %struct.ossl_lib_ctx_st* noundef %3) #7
  %msg = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %call, i64 0, i32 3
  store %struct.ossl_cmp_msg_st* %call4, %struct.ossl_cmp_msg_st** %msg, align 8, !tbaa !16
  %4 = bitcast %struct.ossl_cmp_msg_st* %call4 to i8*
  %call5 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 156, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.83, i64 0, i64 0), i8* noundef %4) #7
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %cleanup.sink.split, label %if.then11

if.then11:                                        ; preds = %lor.lhs.false
  %call12 = call fastcc i32 @execute_validate_msg_test(%struct.test_fixture* noundef nonnull %call) #9
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %lor.lhs.false, %if.end, %if.then11
  %retval.0.ph = phi i32 [ %call12, %if.then11 ], [ 0, %if.end ], [ 0, %lor.lhs.false ]
  call fastcc void @tear_down(%struct.test_fixture* noundef nonnull %call) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0i8(i64 19, i8* nonnull %0) #8
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_validate_msg_mac_alg_protection_bad() #0 {
entry:
  %sec_bad = alloca [19 x i8], align 16
  %0 = getelementptr inbounds [19 x i8], [19 x i8]* %sec_bad, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 19, i8* nonnull %0) #8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(19) %0, i8* noundef nonnull align 16 dereferenceable(19) getelementptr inbounds ([19 x i8], [19 x i8]* @__const.test_validate_msg_mac_alg_protection_bad.sec_bad, i64 0, i64 0), i64 19, i1 false)
  %call = tail call fastcc %struct.test_fixture* @set_up(i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.59, i64 0, i64 0)) #9
  %cmp = icmp eq %struct.test_fixture* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %expected = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %call, i64 0, i32 1
  store i32 0, i32* %expected, align 8, !tbaa !14
  %cmp_ctx = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %call, i64 0, i32 2
  %1 = load %struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_ctx_st** %cmp_ctx, align 8, !tbaa !17
  %call1 = call i32 @OSSL_CMP_CTX_set1_secretValue(%struct.ossl_cmp_ctx_st* noundef %1, i8* noundef nonnull %0, i32 noundef 19) #7
  %cmp2 = icmp ne i32 %call1, 0
  %conv = zext i1 %cmp2 to i32
  %call3 = call i32 @test_true(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 176, i8* noundef getelementptr inbounds ([74 x i8], [74 x i8]* @.str.84, i64 0, i64 0), i32 noundef %conv) #7
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %cleanup.sink.split, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %2 = load i8*, i8** @ip_waiting_f, align 8, !tbaa !3
  %3 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @libctx, align 8, !tbaa !3
  %call4 = call %struct.ossl_cmp_msg_st* @load_pkimsg(i8* noundef %2, %struct.ossl_lib_ctx_st* noundef %3) #7
  %msg = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %call, i64 0, i32 3
  store %struct.ossl_cmp_msg_st* %call4, %struct.ossl_cmp_msg_st** %msg, align 8, !tbaa !16
  %4 = bitcast %struct.ossl_cmp_msg_st* %call4 to i8*
  %call5 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 177, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.83, i64 0, i64 0), i8* noundef %4) #7
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %cleanup.sink.split, label %if.then11

if.then11:                                        ; preds = %lor.lhs.false
  %call12 = call fastcc i32 @execute_validate_msg_test(%struct.test_fixture* noundef nonnull %call) #9
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %lor.lhs.false, %if.end, %if.then11
  %retval.0.ph = phi i32 [ %call12, %if.then11 ], [ 0, %if.end ], [ 0, %lor.lhs.false ]
  call fastcc void @tear_down(%struct.test_fixture* noundef nonnull %call) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0i8(i64 19, i8* nonnull %0) #8
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_validate_cert_path_ok() #0 {
entry:
  %fixture = alloca %struct.test_fixture*, align 8
  %0 = bitcast %struct.test_fixture** %fixture to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8
  %call = tail call fastcc %struct.test_fixture* @set_up(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.60, i64 0, i64 0)) #9
  store %struct.test_fixture* %call, %struct.test_fixture** %fixture, align 8, !tbaa !3
  %cmp = icmp eq %struct.test_fixture* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  call fastcc void @setup_path(%struct.test_fixture** noundef nonnull %fixture, %struct.x509_st* noundef null, i32 noundef 0) #9
  %1 = load %struct.test_fixture*, %struct.test_fixture** %fixture, align 8, !tbaa !3
  %cmp1.not = icmp eq %struct.test_fixture* %1, null
  br i1 %cmp1.not, label %cleanup, label %if.then2

if.then2:                                         ; preds = %if.end
  %call3 = tail call fastcc i32 @execute_validate_cert_path_test(%struct.test_fixture* noundef nonnull %1) #9
  tail call fastcc void @tear_down(%struct.test_fixture* noundef nonnull %1) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then2, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ %call3, %if.then2 ], [ 0, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_validate_cert_path_expired() #0 {
entry:
  %fixture = alloca %struct.test_fixture*, align 8
  %0 = bitcast %struct.test_fixture** %fixture to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8
  %call = tail call fastcc %struct.test_fixture* @set_up(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.61, i64 0, i64 0)) #9
  store %struct.test_fixture* %call, %struct.test_fixture** %fixture, align 8, !tbaa !3
  %cmp = icmp eq %struct.test_fixture* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  call fastcc void @setup_path(%struct.test_fixture** noundef nonnull %fixture, %struct.x509_st* noundef null, i32 noundef 1) #9
  %1 = load %struct.test_fixture*, %struct.test_fixture** %fixture, align 8, !tbaa !3
  %cmp1.not = icmp eq %struct.test_fixture* %1, null
  br i1 %cmp1.not, label %cleanup, label %if.then2

if.then2:                                         ; preds = %if.end
  %call3 = tail call fastcc i32 @execute_validate_cert_path_test(%struct.test_fixture* noundef nonnull %1) #9
  tail call fastcc void @tear_down(%struct.test_fixture* noundef nonnull %1) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then2, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ %call3, %if.then2 ], [ 0, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_validate_cert_path_wrong_anchor() #0 {
entry:
  %fixture = alloca %struct.test_fixture*, align 8
  %0 = bitcast %struct.test_fixture** %fixture to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8
  %call = tail call fastcc %struct.test_fixture* @set_up(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.62, i64 0, i64 0)) #9
  store %struct.test_fixture* %call, %struct.test_fixture** %fixture, align 8, !tbaa !3
  %cmp = icmp eq %struct.test_fixture* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %1 = load %struct.x509_st*, %struct.x509_st** @srvcert, align 8, !tbaa !3
  call fastcc void @setup_path(%struct.test_fixture** noundef nonnull %fixture, %struct.x509_st* noundef %1, i32 noundef 0) #9
  %2 = load %struct.test_fixture*, %struct.test_fixture** %fixture, align 8, !tbaa !3
  %cmp1.not = icmp eq %struct.test_fixture* %2, null
  br i1 %cmp1.not, label %cleanup, label %if.then2

if.then2:                                         ; preds = %if.end
  %call3 = tail call fastcc i32 @execute_validate_cert_path_test(%struct.test_fixture* noundef nonnull %2) #9
  tail call fastcc void @tear_down(%struct.test_fixture* noundef nonnull %2) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then2, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ %call3, %if.then2 ], [ 0, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_msg_check_no_protection_no_cb() #0 {
entry:
  %fixture = alloca %struct.test_fixture*, align 8
  %0 = bitcast %struct.test_fixture** %fixture to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8
  %call = tail call fastcc %struct.test_fixture* @set_up(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.63, i64 0, i64 0)) #9
  store %struct.test_fixture* %call, %struct.test_fixture** %fixture, align 8, !tbaa !3
  %cmp = icmp eq %struct.test_fixture* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  call fastcc void @setup_check_update(%struct.test_fixture** noundef nonnull %fixture, i32 noundef 0, i32 (%struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_msg_st*, i32, i32)* noundef null, i32 noundef 0, i8* noundef null, i8* noundef null) #9
  %1 = load %struct.test_fixture*, %struct.test_fixture** %fixture, align 8, !tbaa !3
  %cmp1.not = icmp eq %struct.test_fixture* %1, null
  br i1 %cmp1.not, label %cleanup, label %if.then2

if.then2:                                         ; preds = %if.end
  %call3 = tail call fastcc i32 @execute_msg_check_test(%struct.test_fixture* noundef nonnull %1) #9
  tail call fastcc void @tear_down(%struct.test_fixture* noundef nonnull %1) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then2, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ %call3, %if.then2 ], [ 0, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_msg_check_no_protection_restrictive_cb() #0 {
entry:
  %fixture = alloca %struct.test_fixture*, align 8
  %0 = bitcast %struct.test_fixture** %fixture to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8
  %call = tail call fastcc %struct.test_fixture* @set_up(i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.64, i64 0, i64 0)) #9
  store %struct.test_fixture* %call, %struct.test_fixture** %fixture, align 8, !tbaa !3
  %cmp = icmp eq %struct.test_fixture* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  call fastcc void @setup_check_update(%struct.test_fixture** noundef nonnull %fixture, i32 noundef 0, i32 (%struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_msg_st*, i32, i32)* noundef nonnull @allow_unprotected, i32 noundef 0, i8* noundef null, i8* noundef null) #9
  %1 = load %struct.test_fixture*, %struct.test_fixture** %fixture, align 8, !tbaa !3
  %cmp1.not = icmp eq %struct.test_fixture* %1, null
  br i1 %cmp1.not, label %cleanup, label %if.then2

if.then2:                                         ; preds = %if.end
  %call3 = tail call fastcc i32 @execute_msg_check_test(%struct.test_fixture* noundef nonnull %1) #9
  tail call fastcc void @tear_down(%struct.test_fixture* noundef nonnull %1) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then2, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ %call3, %if.then2 ], [ 0, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_msg_check_no_protection_permissive_cb() #0 {
entry:
  %fixture = alloca %struct.test_fixture*, align 8
  %0 = bitcast %struct.test_fixture** %fixture to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8
  %call = tail call fastcc %struct.test_fixture* @set_up(i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.65, i64 0, i64 0)) #9
  store %struct.test_fixture* %call, %struct.test_fixture** %fixture, align 8, !tbaa !3
  %cmp = icmp eq %struct.test_fixture* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  call fastcc void @setup_check_update(%struct.test_fixture** noundef nonnull %fixture, i32 noundef 1, i32 (%struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_msg_st*, i32, i32)* noundef nonnull @allow_unprotected, i32 noundef 1, i8* noundef null, i8* noundef null) #9
  %1 = load %struct.test_fixture*, %struct.test_fixture** %fixture, align 8, !tbaa !3
  %cmp1.not = icmp eq %struct.test_fixture* %1, null
  br i1 %cmp1.not, label %cleanup, label %if.then2

if.then2:                                         ; preds = %if.end
  %call3 = tail call fastcc i32 @execute_msg_check_test(%struct.test_fixture* noundef nonnull %1) #9
  tail call fastcc void @tear_down(%struct.test_fixture* noundef nonnull %1) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then2, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ %call3, %if.then2 ], [ 0, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_msg_check_transaction_id() #0 {
entry:
  %trans_id = alloca [16 x i8], align 16
  %fixture = alloca %struct.test_fixture*, align 8
  %0 = getelementptr inbounds [16 x i8], [16 x i8]* %trans_id, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(16) %0, i8* noundef nonnull align 16 dereferenceable(16) getelementptr inbounds ([16 x i8], [16 x i8]* @__const.test_msg_check_transaction_id.trans_id, i64 0, i64 0), i64 16, i1 false)
  %1 = bitcast %struct.test_fixture** %fixture to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #8
  %call = tail call fastcc %struct.test_fixture* @set_up(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.66, i64 0, i64 0)) #9
  store %struct.test_fixture* %call, %struct.test_fixture** %fixture, align 8, !tbaa !3
  %cmp = icmp eq %struct.test_fixture* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  call fastcc void @setup_check_update(%struct.test_fixture** noundef nonnull %fixture, i32 noundef 1, i32 (%struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_msg_st*, i32, i32)* noundef nonnull @allow_unprotected, i32 noundef 1, i8* noundef nonnull %0, i8* noundef null) #9
  %2 = load %struct.test_fixture*, %struct.test_fixture** %fixture, align 8, !tbaa !3
  %cmp1.not = icmp eq %struct.test_fixture* %2, null
  br i1 %cmp1.not, label %cleanup, label %if.then2

if.then2:                                         ; preds = %if.end
  %call3 = call fastcc i32 @execute_msg_check_test(%struct.test_fixture* noundef nonnull %2) #9
  call fastcc void @tear_down(%struct.test_fixture* noundef nonnull %2) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then2, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ %call3, %if.then2 ], [ 0, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #8
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #8
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_msg_check_transaction_id_bad() #0 {
entry:
  %fixture = alloca %struct.test_fixture*, align 8
  %0 = bitcast %struct.test_fixture** %fixture to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8
  %call = tail call fastcc %struct.test_fixture* @set_up(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.67, i64 0, i64 0)) #9
  store %struct.test_fixture* %call, %struct.test_fixture** %fixture, align 8, !tbaa !3
  %cmp = icmp eq %struct.test_fixture* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  call fastcc void @setup_check_update(%struct.test_fixture** noundef nonnull %fixture, i32 noundef 0, i32 (%struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_msg_st*, i32, i32)* noundef nonnull @allow_unprotected, i32 noundef 1, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @rand_data, i64 0, i64 0), i8* noundef null) #9
  %1 = load %struct.test_fixture*, %struct.test_fixture** %fixture, align 8, !tbaa !3
  %cmp1.not = icmp eq %struct.test_fixture* %1, null
  br i1 %cmp1.not, label %cleanup, label %if.then2

if.then2:                                         ; preds = %if.end
  %call3 = tail call fastcc i32 @execute_msg_check_test(%struct.test_fixture* noundef nonnull %1) #9
  tail call fastcc void @tear_down(%struct.test_fixture* noundef nonnull %1) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then2, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ %call3, %if.then2 ], [ 0, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_msg_check_recipient_nonce() #0 {
entry:
  %rec_nonce = alloca [16 x i8], align 16
  %fixture = alloca %struct.test_fixture*, align 8
  %0 = getelementptr inbounds [16 x i8], [16 x i8]* %rec_nonce, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(16) %0, i8* noundef nonnull align 16 dereferenceable(16) getelementptr inbounds ([16 x i8], [16 x i8]* @__const.test_msg_check_recipient_nonce.rec_nonce, i64 0, i64 0), i64 16, i1 false)
  %1 = bitcast %struct.test_fixture** %fixture to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #8
  %call = tail call fastcc %struct.test_fixture* @set_up(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.68, i64 0, i64 0)) #9
  store %struct.test_fixture* %call, %struct.test_fixture** %fixture, align 8, !tbaa !3
  %cmp = icmp eq %struct.test_fixture* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  call fastcc void @setup_check_update(%struct.test_fixture** noundef nonnull %fixture, i32 noundef 1, i32 (%struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_msg_st*, i32, i32)* noundef nonnull @allow_unprotected, i32 noundef 1, i8* noundef null, i8* noundef nonnull %0) #9
  %2 = load %struct.test_fixture*, %struct.test_fixture** %fixture, align 8, !tbaa !3
  %cmp1.not = icmp eq %struct.test_fixture* %2, null
  br i1 %cmp1.not, label %cleanup, label %if.then2

if.then2:                                         ; preds = %if.end
  %call3 = call fastcc i32 @execute_msg_check_test(%struct.test_fixture* noundef nonnull %2) #9
  call fastcc void @tear_down(%struct.test_fixture* noundef nonnull %2) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then2, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ %call3, %if.then2 ], [ 0, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #8
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #8
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_msg_check_recipient_nonce_bad() #0 {
entry:
  %fixture = alloca %struct.test_fixture*, align 8
  %0 = bitcast %struct.test_fixture** %fixture to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8
  %call = tail call fastcc %struct.test_fixture* @set_up(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.69, i64 0, i64 0)) #9
  store %struct.test_fixture* %call, %struct.test_fixture** %fixture, align 8, !tbaa !3
  %cmp = icmp eq %struct.test_fixture* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  call fastcc void @setup_check_update(%struct.test_fixture** noundef nonnull %fixture, i32 noundef 0, i32 (%struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_msg_st*, i32, i32)* noundef nonnull @allow_unprotected, i32 noundef 1, i8* noundef null, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @rand_data, i64 0, i64 0)) #9
  %1 = load %struct.test_fixture*, %struct.test_fixture** %fixture, align 8, !tbaa !3
  %cmp1.not = icmp eq %struct.test_fixture* %1, null
  br i1 %cmp1.not, label %cleanup, label %if.then2

if.then2:                                         ; preds = %if.end
  %call3 = tail call fastcc i32 @execute_msg_check_test(%struct.test_fixture* noundef nonnull %1) #9
  tail call fastcc void @tear_down(%struct.test_fixture* noundef nonnull %1) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then2, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ %call3, %if.then2 ], [ 0, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.test_fixture* @set_up(i8* noundef %test_case_name) unnamed_addr #0 {
entry:
  %call = tail call %struct.x509_store_st* @X509_STORE_new() #7
  %call1 = tail call i8* @CRYPTO_zalloc(i64 noundef 56, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 57) #7
  %0 = bitcast i8* %call1 to %struct.test_fixture*
  %call2 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 57, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.70, i64 0, i64 0), i8* noundef %call1) #7
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %test_case_name3 = bitcast i8* %call1 to i8**
  store i8* %test_case_name, i8** %test_case_name3, align 8, !tbaa !18
  %cmp = icmp eq %struct.x509_store_st* %call, null
  br i1 %cmp, label %if.then15, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %1 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @libctx, align 8, !tbaa !3
  %call4 = tail call %struct.ossl_cmp_ctx_st* @OSSL_CMP_CTX_new(%struct.ossl_lib_ctx_st* noundef %1, i8* noundef null) #7
  %cmp_ctx = getelementptr inbounds i8, i8* %call1, i64 16
  %2 = bitcast i8* %cmp_ctx to %struct.ossl_cmp_ctx_st**
  store %struct.ossl_cmp_ctx_st* %call4, %struct.ossl_cmp_ctx_st** %2, align 8, !tbaa !17
  %3 = bitcast %struct.ossl_cmp_ctx_st* %call4 to i8*
  %call5 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 61, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.71, i64 0, i64 0), i8* noundef %3) #7
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.then15, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %lor.lhs.false
  %4 = load %struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_ctx_st** %2, align 8, !tbaa !17
  %call9 = tail call i32 @OSSL_CMP_CTX_set0_trustedStore(%struct.ossl_cmp_ctx_st* noundef %4, %struct.x509_store_st* noundef nonnull %call) #7
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.then15, label %lor.lhs.false11

lor.lhs.false11:                                  ; preds = %lor.lhs.false7
  %5 = load %struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_ctx_st** %2, align 8, !tbaa !17
  %call13 = tail call i32 @OSSL_CMP_CTX_set_log_cb(%struct.ossl_cmp_ctx_st* noundef %5, i32 (i8*, i8*, i32, i32, i8*)* noundef nonnull @print_to_bio_out) #7
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.then15, label %if.end16

if.then15:                                        ; preds = %lor.lhs.false11, %lor.lhs.false7, %lor.lhs.false, %if.end
  tail call fastcc void @tear_down(%struct.test_fixture* noundef nonnull %0) #9
  tail call void @X509_STORE_free(%struct.x509_store_st* noundef %call) #7
  br label %cleanup

if.end16:                                         ; preds = %lor.lhs.false11
  %call17 = tail call %struct.X509_VERIFY_PARAM_st* @X509_STORE_get0_param(%struct.x509_store_st* noundef nonnull %call) #7
  %6 = load i64, i64* @test_time_valid, align 8, !tbaa !13
  tail call void @X509_VERIFY_PARAM_set_time(%struct.X509_VERIFY_PARAM_st* noundef %call17, i64 noundef %6) #7
  tail call void @X509_STORE_set_verify_cb(%struct.x509_store_st* noundef nonnull %call, i32 (i32, %struct.x509_store_ctx_st*)* noundef nonnull @X509_STORE_CTX_print_verify_cb) #7
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end16, %if.then15
  %retval.0 = phi %struct.test_fixture* [ null, %if.then15 ], [ %0, %if.end16 ], [ null, %entry ]
  ret %struct.test_fixture* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @execute_verify_popo_test(%struct.test_fixture* nocapture noundef %fixture) unnamed_addr #0 {
entry:
  %0 = load i8*, i8** @ir_protected_f, align 8, !tbaa !3
  %1 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @libctx, align 8, !tbaa !3
  %call = tail call %struct.ossl_cmp_msg_st* @load_pkimsg(i8* noundef %0, %struct.ossl_lib_ctx_st* noundef %1) #7
  %msg = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %fixture, i64 0, i32 3
  store %struct.ossl_cmp_msg_st* %call, %struct.ossl_cmp_msg_st** %msg, align 8, !tbaa !16
  %cmp = icmp eq %struct.ossl_cmp_msg_st* %call, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %expected = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %fixture, i64 0, i32 1
  %2 = load i32, i32* %expected, align 8, !tbaa !14
  %cmp1 = icmp eq i32 %2, 0
  br i1 %cmp1, label %if.then2, label %if.end13

if.then2:                                         ; preds = %if.end
  %body = getelementptr inbounds %struct.ossl_cmp_msg_st, %struct.ossl_cmp_msg_st* %call, i64 0, i32 1
  %3 = load %struct.ossl_cmp_pkibody_st*, %struct.ossl_cmp_pkibody_st** %body, align 8, !tbaa !19
  %ir = getelementptr inbounds %struct.ossl_cmp_pkibody_st, %struct.ossl_cmp_pkibody_st* %3, i64 0, i32 1, i32 0
  %4 = load %struct.stack_st_OSSL_CRMF_MSG*, %struct.stack_st_OSSL_CRMF_MSG** %ir, align 8, !tbaa !21
  %call4 = tail call fastcc %struct.stack_st* @ossl_check_const_OSSL_CRMF_MSG_sk_type(%struct.stack_st_OSSL_CRMF_MSG* noundef %4) #9
  %call5 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call4, i32 noundef 0) #7
  %cmp6 = icmp eq i8* %call5, null
  br i1 %cmp6, label %return, label %cleanup

cleanup:                                          ; preds = %if.then2
  %popo = getelementptr inbounds i8, i8* %call5, i64 8
  %5 = bitcast i8* %popo to %struct.ossl_crmf_popo_st**
  %6 = load %struct.ossl_crmf_popo_st*, %struct.ossl_crmf_popo_st** %5, align 8, !tbaa !22
  %value7 = getelementptr inbounds %struct.ossl_crmf_popo_st, %struct.ossl_crmf_popo_st* %6, i64 0, i32 1
  %signature = bitcast %union.anon.4* %value7 to %struct.ossl_crmf_poposigningkey_st**
  %7 = load %struct.ossl_crmf_poposigningkey_st*, %struct.ossl_crmf_poposigningkey_st** %signature, align 8, !tbaa !21
  %signature8 = getelementptr inbounds %struct.ossl_crmf_poposigningkey_st, %struct.ossl_crmf_poposigningkey_st* %7, i64 0, i32 2
  %8 = load %struct.asn1_string_st*, %struct.asn1_string_st** %signature8, align 8, !tbaa !24
  %call9 = tail call fastcc i32 @flip_bit(%struct.asn1_string_st* noundef %8) #9
  %tobool.not.not = icmp eq i32 %call9, 0
  br i1 %tobool.not.not, label %return, label %cleanup.if.end13_crit_edge

cleanup.if.end13_crit_edge:                       ; preds = %cleanup
  %.pre = load i32, i32* %expected, align 8, !tbaa !14
  %.pre29 = load %struct.ossl_cmp_msg_st*, %struct.ossl_cmp_msg_st** %msg, align 8, !tbaa !16
  br label %if.end13

if.end13:                                         ; preds = %cleanup.if.end13_crit_edge, %if.end
  %9 = phi %struct.ossl_cmp_msg_st* [ %.pre29, %cleanup.if.end13_crit_edge ], [ %call, %if.end ]
  %10 = phi i32 [ %.pre, %cleanup.if.end13_crit_edge ], [ %2, %if.end ]
  %cmp_ctx = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %fixture, i64 0, i32 2
  %11 = load %struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_ctx_st** %cmp_ctx, align 8, !tbaa !17
  %additional_arg = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %fixture, i64 0, i32 6
  %12 = load i32, i32* %additional_arg, align 8, !tbaa !26
  %call16 = tail call i32 @ossl_cmp_verify_popo(%struct.ossl_cmp_ctx_st* noundef %11, %struct.ossl_cmp_msg_st* noundef %9, i32 noundef %12) #7
  %call17 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 104, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.72, i64 0, i64 0), i8* noundef getelementptr inbounds ([78 x i8], [78 x i8]* @.str.73, i64 0, i64 0), i32 noundef %10, i32 noundef %call16) #7
  br label %return

return:                                           ; preds = %if.then2, %cleanup, %entry, %if.end13
  %retval.1 = phi i32 [ 0, %cleanup ], [ %call17, %if.end13 ], [ 0, %entry ], [ 0, %if.then2 ]
  ret i32 %retval.1
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @tear_down(%struct.test_fixture* noundef %fixture) unnamed_addr #0 {
entry:
  %msg = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %fixture, i64 0, i32 3
  %0 = load %struct.ossl_cmp_msg_st*, %struct.ossl_cmp_msg_st** %msg, align 8, !tbaa !16
  tail call void @OSSL_CMP_MSG_free(%struct.ossl_cmp_msg_st* noundef %0) #7
  %cmp_ctx = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %fixture, i64 0, i32 2
  %1 = load %struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_ctx_st** %cmp_ctx, align 8, !tbaa !17
  tail call void @OSSL_CMP_CTX_free(%struct.ossl_cmp_ctx_st* noundef %1) #7
  %2 = bitcast %struct.test_fixture* %fixture to i8*
  tail call void @CRYPTO_free(i8* noundef %2, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 47) #7
  ret void
}

declare dso_local %struct.x509_store_st* @X509_STORE_new() local_unnamed_addr #1

declare dso_local i8* @CRYPTO_zalloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local %struct.ossl_cmp_ctx_st* @OSSL_CMP_CTX_new(%struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local i32 @OSSL_CMP_CTX_set0_trustedStore(%struct.ossl_cmp_ctx_st* noundef, %struct.x509_store_st* noundef) local_unnamed_addr #1

declare dso_local i32 @OSSL_CMP_CTX_set_log_cb(%struct.ossl_cmp_ctx_st* noundef, i32 (i8*, i8*, i32, i32, i8*)* noundef) local_unnamed_addr #1

declare dso_local i32 @print_to_bio_out(i8* noundef, i8* noundef, i32 noundef, i32 noundef, i8* noundef) #1

declare dso_local void @X509_STORE_free(%struct.x509_store_st* noundef) local_unnamed_addr #1

declare dso_local void @X509_VERIFY_PARAM_set_time(%struct.X509_VERIFY_PARAM_st* noundef, i64 noundef) local_unnamed_addr #1

declare dso_local %struct.X509_VERIFY_PARAM_st* @X509_STORE_get0_param(%struct.x509_store_st* noundef) local_unnamed_addr #1

declare dso_local void @X509_STORE_set_verify_cb(%struct.x509_store_st* noundef, i32 (i32, %struct.x509_store_ctx_st*)* noundef) local_unnamed_addr #1

declare dso_local i32 @X509_STORE_CTX_print_verify_cb(i32 noundef, %struct.x509_store_ctx_st* noundef) #1

declare dso_local i8* @OPENSSL_sk_value(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_OSSL_CRMF_MSG_sk_type(%struct.stack_st_OSSL_CRMF_MSG* noundef readnone %sk) unnamed_addr #2 {
entry:
  %0 = bitcast %struct.stack_st_OSSL_CRMF_MSG* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @flip_bit(%struct.asn1_string_st* noundef %bitstr) unnamed_addr #0 {
entry:
  %call = tail call i32 @ASN1_BIT_STRING_get_bit(%struct.asn1_string_st* noundef %bitstr, i32 noundef 7) #7
  %tobool.not = icmp eq i32 %call, 0
  %lnot.ext = zext i1 %tobool.not to i32
  %call1 = tail call i32 @ASN1_BIT_STRING_set_bit(%struct.asn1_string_st* noundef %bitstr, i32 noundef 7, i32 noundef %lnot.ext) #7
  ret i32 %call1
}

declare dso_local i32 @ossl_cmp_verify_popo(%struct.ossl_cmp_ctx_st* noundef, %struct.ossl_cmp_msg_st* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @ASN1_BIT_STRING_get_bit(%struct.asn1_string_st* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @ASN1_BIT_STRING_set_bit(%struct.asn1_string_st* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local void @OSSL_CMP_CTX_free(%struct.ossl_cmp_ctx_st* noundef) local_unnamed_addr #1

declare dso_local void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @test_validate_msg_signature_partial_chain(i32 noundef %expired) unnamed_addr #0 {
entry:
  %call = tail call fastcc %struct.test_fixture* @set_up(i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @__func__.test_validate_msg_signature_partial_chain, i64 0, i64 0)) #9
  %cmp = icmp eq %struct.test_fixture* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %cmp_ctx = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %call, i64 0, i32 2
  %0 = load %struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_ctx_st** %cmp_ctx, align 8, !tbaa !17
  %call1 = tail call %struct.x509_store_st* @OSSL_CMP_CTX_get0_trustedStore(%struct.ossl_cmp_ctx_st* noundef %0) #7
  %tobool.not = icmp eq i32 %expired, 0
  %lnot.ext = zext i1 %tobool.not to i32
  %expected = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %call, i64 0, i32 1
  store i32 %lnot.ext, i32* %expected, align 8, !tbaa !14
  %cmp2 = icmp eq %struct.x509_store_st* %call1, null
  br i1 %cmp2, label %cleanup.sink.split, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %1 = load i8*, i8** @ir_protected_f, align 8, !tbaa !3
  %2 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @libctx, align 8, !tbaa !3
  %call3 = tail call %struct.ossl_cmp_msg_st* @load_pkimsg(i8* noundef %1, %struct.ossl_lib_ctx_st* noundef %2) #7
  %msg = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %call, i64 0, i32 3
  store %struct.ossl_cmp_msg_st* %call3, %struct.ossl_cmp_msg_st** %msg, align 8, !tbaa !16
  %3 = bitcast %struct.ossl_cmp_msg_st* %call3 to i8*
  %call4 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 206, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.74, i64 0, i64 0), i8* noundef %3) #7
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %cleanup.sink.split, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %4 = load %struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_ctx_st** %cmp_ctx, align 8, !tbaa !17
  %5 = load %struct.x509_st*, %struct.x509_st** @srvcert, align 8, !tbaa !3
  %call8 = tail call fastcc i32 @add_trusted(%struct.ossl_cmp_ctx_st* noundef %4, %struct.x509_st* noundef %5) #9
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %cleanup.sink.split, label %if.else

if.else:                                          ; preds = %lor.lhs.false6
  %call11 = tail call %struct.X509_VERIFY_PARAM_st* @X509_STORE_get0_param(%struct.x509_store_st* noundef nonnull %call1) #7
  %call12 = tail call i32 @X509_VERIFY_PARAM_set_flags(%struct.X509_VERIFY_PARAM_st* noundef %call11, i64 noundef 524288) #7
  br i1 %tobool.not, label %if.then18, label %if.then14

if.then14:                                        ; preds = %if.else
  %6 = load i64, i64* @test_time_after_expiration, align 8, !tbaa !13
  tail call void @X509_VERIFY_PARAM_set_time(%struct.X509_VERIFY_PARAM_st* noundef %call11, i64 noundef %6) #7
  br label %if.then18

if.then18:                                        ; preds = %if.then14, %if.else
  %call19 = tail call fastcc i32 @execute_validate_msg_test(%struct.test_fixture* noundef nonnull %call) #9
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %lor.lhs.false6, %lor.lhs.false, %if.end, %if.then18
  %retval.0.ph = phi i32 [ %call19, %if.then18 ], [ 0, %if.end ], [ 0, %lor.lhs.false ], [ 0, %lor.lhs.false6 ]
  tail call fastcc void @tear_down(%struct.test_fixture* noundef nonnull %call) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

declare dso_local %struct.x509_store_st* @OSSL_CMP_CTX_get0_trustedStore(%struct.ossl_cmp_ctx_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @add_trusted(%struct.ossl_cmp_ctx_st* noundef %ctx, %struct.x509_st* noundef %cert) unnamed_addr #0 {
entry:
  %call = tail call %struct.x509_store_st* @OSSL_CMP_CTX_get0_trustedStore(%struct.ossl_cmp_ctx_st* noundef %ctx) #7
  %call1 = tail call i32 @X509_STORE_add_cert(%struct.x509_store_st* noundef %call, %struct.x509_st* noundef %cert) #7
  ret i32 %call1
}

declare dso_local i32 @X509_VERIFY_PARAM_set_flags(%struct.X509_VERIFY_PARAM_st* noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @execute_validate_msg_test(%struct.test_fixture* nocapture noundef readonly %fixture) unnamed_addr #0 {
entry:
  %expected = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %fixture, i64 0, i32 1
  %0 = load i32, i32* %expected, align 8, !tbaa !14
  %cmp_ctx = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %fixture, i64 0, i32 2
  %1 = load %struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_ctx_st** %cmp_ctx, align 8, !tbaa !17
  %msg = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %fixture, i64 0, i32 3
  %2 = load %struct.ossl_cmp_msg_st*, %struct.ossl_cmp_msg_st** %msg, align 8, !tbaa !16
  %call = tail call i32 @ossl_cmp_msg_check_update(%struct.ossl_cmp_ctx_st* noundef %1, %struct.ossl_cmp_msg_st* noundef %2, i32 (%struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_msg_st*, i32, i32)* noundef null, i32 noundef 0) #7
  %call1 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 129, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.72, i64 0, i64 0), i8* noundef getelementptr inbounds ([67 x i8], [67 x i8]* @.str.75, i64 0, i64 0), i32 noundef %0, i32 noundef %call) #7
  ret i32 %call1
}

declare dso_local i32 @X509_STORE_add_cert(%struct.x509_store_st* noundef, %struct.x509_st* noundef) local_unnamed_addr #1

declare dso_local i32 @ossl_cmp_msg_check_update(%struct.ossl_cmp_ctx_st* noundef, %struct.ossl_cmp_msg_st* noundef, i32 (%struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_msg_st*, i32, i32)* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @test_true(i8* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @OSSL_CMP_CTX_set1_srvCert(%struct.ossl_cmp_ctx_st* noundef, %struct.x509_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @test_validate_msg_signature_srvcert(i32 noundef %bad_sig) unnamed_addr #0 {
entry:
  %call = tail call fastcc %struct.test_fixture* @set_up(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @__func__.test_validate_msg_signature_srvcert, i64 0, i64 0)) #9
  %cmp = icmp eq %struct.test_fixture* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq i32 %bad_sig, 0
  %lnot.ext = zext i1 %tobool.not to i32
  %expected = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %call, i64 0, i32 1
  store i32 %lnot.ext, i32* %expected, align 8, !tbaa !14
  %0 = load i8*, i8** @ir_protected_f, align 8, !tbaa !3
  %1 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @libctx, align 8, !tbaa !3
  %call1 = tail call %struct.ossl_cmp_msg_st* @load_pkimsg(i8* noundef %0, %struct.ossl_lib_ctx_st* noundef %1) #7
  %msg = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %call, i64 0, i32 3
  store %struct.ossl_cmp_msg_st* %call1, %struct.ossl_cmp_msg_st** %msg, align 8, !tbaa !16
  %2 = bitcast %struct.ossl_cmp_msg_st* %call1 to i8*
  %call2 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 249, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.74, i64 0, i64 0), i8* noundef %2) #7
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %cleanup.sink.split, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %cmp_ctx = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %call, i64 0, i32 2
  %3 = load %struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_ctx_st** %cmp_ctx, align 8, !tbaa !17
  %4 = load %struct.x509_st*, %struct.x509_st** @srvcert, align 8, !tbaa !3
  %call4 = tail call i32 @OSSL_CMP_CTX_set1_srvCert(%struct.ossl_cmp_ctx_st* noundef %3, %struct.x509_st* noundef %4) #7
  %cmp5 = icmp ne i32 %call4, 0
  %conv = zext i1 %cmp5 to i32
  %call6 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 250, i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.77, i64 0, i64 0), i32 noundef %conv) #7
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %cleanup.sink.split, label %lor.lhs.false8

lor.lhs.false8:                                   ; preds = %lor.lhs.false
  br i1 %tobool.not, label %if.then17, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false8
  %5 = load %struct.ossl_cmp_msg_st*, %struct.ossl_cmp_msg_st** %msg, align 8, !tbaa !16
  %protection = getelementptr inbounds %struct.ossl_cmp_msg_st, %struct.ossl_cmp_msg_st* %5, i64 0, i32 2
  %6 = load %struct.asn1_string_st*, %struct.asn1_string_st** %protection, align 8, !tbaa !27
  %call11 = tail call fastcc i32 @flip_bit(%struct.asn1_string_st* noundef %6) #9
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %cleanup.sink.split, label %if.then17

if.then17:                                        ; preds = %land.lhs.true, %lor.lhs.false8
  %call18 = tail call fastcc i32 @execute_validate_msg_test(%struct.test_fixture* noundef nonnull %call) #9
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %land.lhs.true, %lor.lhs.false, %if.end, %if.then17
  %retval.0.ph = phi i32 [ %call18, %if.then17 ], [ 0, %if.end ], [ 0, %lor.lhs.false ], [ 0, %land.lhs.true ]
  tail call fastcc void @tear_down(%struct.test_fixture* noundef nonnull %call) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @add_untrusted(%struct.ossl_cmp_ctx_st* noundef %ctx, %struct.x509_st* noundef %cert) unnamed_addr #0 {
entry:
  %call = tail call %struct.stack_st_X509* @OSSL_CMP_CTX_get0_untrusted(%struct.ossl_cmp_ctx_st* noundef %ctx) #7
  %call1 = tail call i32 @X509_add_cert(%struct.stack_st_X509* noundef %call, %struct.x509_st* noundef %cert, i32 noundef 1) #7
  ret i32 %call1
}

declare dso_local i32 @X509_add_cert(%struct.stack_st_X509* noundef, %struct.x509_st* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local %struct.stack_st_X509* @OSSL_CMP_CTX_get0_untrusted(%struct.ossl_cmp_ctx_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @test_validate_with_sender(%struct.X509_name_st* noundef %name, i32 noundef %expected) unnamed_addr #0 {
entry:
  %call = tail call fastcc %struct.test_fixture* @set_up(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.test_validate_with_sender, i64 0, i64 0)) #9
  %cmp = icmp eq %struct.test_fixture* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %expected1 = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %call, i64 0, i32 1
  store i32 %expected, i32* %expected1, align 8, !tbaa !14
  %0 = load i8*, i8** @ir_protected_f, align 8, !tbaa !3
  %1 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @libctx, align 8, !tbaa !3
  %call2 = tail call %struct.ossl_cmp_msg_st* @load_pkimsg(i8* noundef %0, %struct.ossl_lib_ctx_st* noundef %1) #7
  %msg = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %call, i64 0, i32 3
  store %struct.ossl_cmp_msg_st* %call2, %struct.ossl_cmp_msg_st** %msg, align 8, !tbaa !16
  %2 = bitcast %struct.ossl_cmp_msg_st* %call2 to i8*
  %call3 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 331, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.74, i64 0, i64 0), i8* noundef %2) #7
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %cleanup.sink.split, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %cmp_ctx = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %call, i64 0, i32 2
  %3 = load %struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_ctx_st** %cmp_ctx, align 8, !tbaa !17
  %call4 = tail call i32 @OSSL_CMP_CTX_set1_expected_sender(%struct.ossl_cmp_ctx_st* noundef %3, %struct.X509_name_st* noundef %name) #7
  %cmp5 = icmp ne i32 %call4, 0
  %conv = zext i1 %cmp5 to i32
  %call6 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 332, i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @.str.80, i64 0, i64 0), i32 noundef %conv) #7
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %cleanup.sink.split, label %lor.lhs.false8

lor.lhs.false8:                                   ; preds = %lor.lhs.false
  %4 = load %struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_ctx_st** %cmp_ctx, align 8, !tbaa !17
  %5 = load %struct.x509_st*, %struct.x509_st** @srvcert, align 8, !tbaa !3
  %call10 = tail call i32 @OSSL_CMP_CTX_set1_srvCert(%struct.ossl_cmp_ctx_st* noundef %4, %struct.x509_st* noundef %5) #7
  %cmp11 = icmp ne i32 %call10, 0
  %conv12 = zext i1 %cmp11 to i32
  %call13 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 333, i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.77, i64 0, i64 0), i32 noundef %conv12) #7
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %cleanup.sink.split, label %if.then19

if.then19:                                        ; preds = %lor.lhs.false8
  %call20 = tail call fastcc i32 @execute_validate_msg_test(%struct.test_fixture* noundef nonnull %call) #9
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %lor.lhs.false8, %lor.lhs.false, %if.end, %if.then19
  %retval.0.ph = phi i32 [ %call20, %if.then19 ], [ 0, %if.end ], [ 0, %lor.lhs.false ], [ 0, %lor.lhs.false8 ]
  tail call fastcc void @tear_down(%struct.test_fixture* noundef nonnull %call) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

declare dso_local %struct.X509_name_st* @X509_get_subject_name(%struct.x509_st* noundef) local_unnamed_addr #1

declare dso_local i32 @OSSL_CMP_CTX_set1_expected_sender(%struct.ossl_cmp_ctx_st* noundef, %struct.X509_name_st* noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #6

declare dso_local i32 @OSSL_CMP_CTX_set1_secretValue(%struct.ossl_cmp_ctx_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @setup_path(%struct.test_fixture** nocapture noundef %fixture, %struct.x509_st* noundef %wrong, i32 noundef %expired) unnamed_addr #0 {
entry:
  %0 = load %struct.x509_st*, %struct.x509_st** @endentity2, align 8, !tbaa !3
  %1 = load %struct.test_fixture*, %struct.test_fixture** %fixture, align 8, !tbaa !3
  %cert = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %1, i64 0, i32 4
  store %struct.x509_st* %0, %struct.x509_st** %cert, align 8, !tbaa !28
  %cmp = icmp eq %struct.x509_st* %wrong, null
  %tobool.not = icmp eq i32 %expired, 0
  %2 = and i1 %cmp, %tobool.not
  %land.ext = zext i1 %2 to i32
  %3 = load %struct.test_fixture*, %struct.test_fixture** %fixture, align 8, !tbaa !3
  %expected = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %3, i64 0, i32 1
  store i32 %land.ext, i32* %expected, align 8, !tbaa !14
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %cmp_ctx = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %3, i64 0, i32 2
  %4 = load %struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_ctx_st** %cmp_ctx, align 8, !tbaa !17
  %call = tail call %struct.x509_store_st* @OSSL_CMP_CTX_get0_trustedStore(%struct.ossl_cmp_ctx_st* noundef %4) #7
  %call2 = tail call %struct.X509_VERIFY_PARAM_st* @X509_STORE_get0_param(%struct.x509_store_st* noundef %call) #7
  %5 = load i64, i64* @test_time_after_expiration, align 8, !tbaa !13
  tail call void @X509_VERIFY_PARAM_set_time(%struct.X509_VERIFY_PARAM_st* noundef %call2, i64 noundef %5) #7
  %.pre = load %struct.test_fixture*, %struct.test_fixture** %fixture, align 8, !tbaa !3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = phi %struct.test_fixture* [ %.pre, %if.then ], [ %3, %entry ]
  %cmp_ctx3 = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %6, i64 0, i32 2
  %7 = load %struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_ctx_st** %cmp_ctx3, align 8, !tbaa !17
  %8 = load %struct.x509_st*, %struct.x509_st** @root, align 8
  %cond = select i1 %cmp, %struct.x509_st* %8, %struct.x509_st* %wrong
  %call5 = tail call fastcc i32 @add_trusted(%struct.ossl_cmp_ctx_st* noundef %7, %struct.x509_st* noundef %cond) #9
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.then14, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %9 = load %struct.test_fixture*, %struct.test_fixture** %fixture, align 8, !tbaa !3
  %cmp_ctx7 = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %9, i64 0, i32 2
  %10 = load %struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_ctx_st** %cmp_ctx7, align 8, !tbaa !17
  %11 = load %struct.x509_st*, %struct.x509_st** @endentity1, align 8, !tbaa !3
  %call8 = tail call fastcc i32 @add_untrusted(%struct.ossl_cmp_ctx_st* noundef %10, %struct.x509_st* noundef %11) #9
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.then14, label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %lor.lhs.false
  %12 = load %struct.test_fixture*, %struct.test_fixture** %fixture, align 8, !tbaa !3
  %cmp_ctx11 = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %12, i64 0, i32 2
  %13 = load %struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_ctx_st** %cmp_ctx11, align 8, !tbaa !17
  %14 = load %struct.x509_st*, %struct.x509_st** @intermediate, align 8, !tbaa !3
  %call12 = tail call fastcc i32 @add_untrusted(%struct.ossl_cmp_ctx_st* noundef %13, %struct.x509_st* noundef %14) #9
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.then14, label %if.end15

if.then14:                                        ; preds = %lor.lhs.false10, %lor.lhs.false, %if.end
  %15 = load %struct.test_fixture*, %struct.test_fixture** %fixture, align 8, !tbaa !3
  tail call fastcc void @tear_down(%struct.test_fixture* noundef %15) #9
  store %struct.test_fixture* null, %struct.test_fixture** %fixture, align 8, !tbaa !3
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %lor.lhs.false10
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @execute_validate_cert_path_test(%struct.test_fixture* nocapture noundef readonly %fixture) unnamed_addr #0 {
entry:
  %cmp_ctx = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %fixture, i64 0, i32 2
  %0 = load %struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_ctx_st** %cmp_ctx, align 8, !tbaa !17
  %call = tail call %struct.x509_store_st* @OSSL_CMP_CTX_get0_trustedStore(%struct.ossl_cmp_ctx_st* noundef %0) #7
  %expected = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %fixture, i64 0, i32 1
  %1 = load i32, i32* %expected, align 8, !tbaa !14
  %2 = load %struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_ctx_st** %cmp_ctx, align 8, !tbaa !17
  %cert = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %fixture, i64 0, i32 4
  %3 = load %struct.x509_st*, %struct.x509_st** %cert, align 8, !tbaa !28
  %call2 = tail call i32 @OSSL_CMP_validate_cert_path(%struct.ossl_cmp_ctx_st* noundef %2, %struct.x509_store_st* noundef %call, %struct.x509_st* noundef %3) #7
  %call3 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 137, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.72, i64 0, i64 0), i8* noundef getelementptr inbounds ([65 x i8], [65 x i8]* @.str.85, i64 0, i64 0), i32 noundef %1, i32 noundef %call2) #7
  %4 = load %struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_ctx_st** %cmp_ctx, align 8, !tbaa !17
  tail call void @OSSL_CMP_CTX_print_errors(%struct.ossl_cmp_ctx_st* noundef %4) #7
  ret i32 %call3
}

declare dso_local i32 @OSSL_CMP_validate_cert_path(%struct.ossl_cmp_ctx_st* noundef, %struct.x509_store_st* noundef, %struct.x509_st* noundef) local_unnamed_addr #1

declare dso_local void @OSSL_CMP_CTX_print_errors(%struct.ossl_cmp_ctx_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @setup_check_update(%struct.test_fixture** nocapture noundef %fixture, i32 noundef %expected, i32 (%struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_msg_st*, i32, i32)* noundef %cb, i32 noundef %arg, i8* noundef %trid_data, i8* noundef %nonce_data) unnamed_addr #0 {
entry:
  %0 = load %struct.test_fixture*, %struct.test_fixture** %fixture, align 8, !tbaa !3
  %cmp_ctx = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %0, i64 0, i32 2
  %1 = load %struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_ctx_st** %cmp_ctx, align 8, !tbaa !17
  %expected1 = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %0, i64 0, i32 1
  store i32 %expected, i32* %expected1, align 8, !tbaa !14
  %allow_unprotected_cb = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %0, i64 0, i32 5
  store i32 (%struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_msg_st*, i32, i32)* %cb, i32 (%struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_msg_st*, i32, i32)** %allow_unprotected_cb, align 8, !tbaa !29
  %2 = load %struct.test_fixture*, %struct.test_fixture** %fixture, align 8, !tbaa !3
  %additional_arg = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %2, i64 0, i32 6
  store i32 %arg, i32* %additional_arg, align 8, !tbaa !26
  %3 = load %struct.ossl_cmp_msg_st*, %struct.ossl_cmp_msg_st** @ir_rmprotection, align 8, !tbaa !3
  %call = tail call %struct.ossl_cmp_msg_st* @OSSL_CMP_MSG_dup(%struct.ossl_cmp_msg_st* noundef %3) #7
  %4 = load %struct.test_fixture*, %struct.test_fixture** %fixture, align 8, !tbaa !3
  %msg = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %4, i64 0, i32 3
  store %struct.ossl_cmp_msg_st* %call, %struct.ossl_cmp_msg_st** %msg, align 8, !tbaa !16
  %5 = load %struct.test_fixture*, %struct.test_fixture** %fixture, align 8, !tbaa !3
  %msg2 = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %5, i64 0, i32 3
  %6 = load %struct.ossl_cmp_msg_st*, %struct.ossl_cmp_msg_st** %msg2, align 8, !tbaa !16
  %cmp = icmp eq %struct.ossl_cmp_msg_st* %6, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %cmp3.not = icmp eq i8* %nonce_data, null
  br i1 %cmp3.not, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false
  %senderNonce = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %1, i64 0, i32 39
  %call4 = tail call i32 @ossl_cmp_asn1_octet_string_set1_bytes(%struct.asn1_string_st** noundef nonnull %senderNonce, i8* noundef nonnull %nonce_data, i32 noundef 16) #7
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %land.lhs.true.if.then_crit_edge, label %if.else

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  %.pre = load %struct.test_fixture*, %struct.test_fixture** %fixture, align 8, !tbaa !3
  br label %if.then

if.then:                                          ; preds = %land.lhs.true.if.then_crit_edge, %entry
  %7 = phi %struct.test_fixture* [ %.pre, %land.lhs.true.if.then_crit_edge ], [ %5, %entry ]
  tail call fastcc void @tear_down(%struct.test_fixture* noundef %7) #9
  store %struct.test_fixture* null, %struct.test_fixture** %fixture, align 8, !tbaa !3
  br label %if.end17

if.else:                                          ; preds = %land.lhs.true, %lor.lhs.false
  %cmp5.not = icmp eq i8* %trid_data, null
  br i1 %cmp5.not, label %if.end17, label %if.then6

if.then6:                                         ; preds = %if.else
  %call7 = tail call %struct.asn1_string_st* @ASN1_OCTET_STRING_new() #7
  %cmp8 = icmp eq %struct.asn1_string_st* %call7, null
  br i1 %cmp8, label %if.then15, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %if.then6
  %call10 = tail call i32 @ASN1_OCTET_STRING_set(%struct.asn1_string_st* noundef nonnull %call7, i8* noundef nonnull %trid_data, i32 noundef 16) #7
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.then15, label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %lor.lhs.false9
  %call13 = tail call i32 @OSSL_CMP_CTX_set1_transactionID(%struct.ossl_cmp_ctx_st* noundef %1, %struct.asn1_string_st* noundef nonnull %call7) #7
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.then15, label %if.end

if.then15:                                        ; preds = %lor.lhs.false12, %lor.lhs.false9, %if.then6
  %8 = load %struct.test_fixture*, %struct.test_fixture** %fixture, align 8, !tbaa !3
  tail call fastcc void @tear_down(%struct.test_fixture* noundef %8) #9
  store %struct.test_fixture* null, %struct.test_fixture** %fixture, align 8, !tbaa !3
  br label %if.end

if.end:                                           ; preds = %if.then15, %lor.lhs.false12
  tail call void @ASN1_OCTET_STRING_free(%struct.asn1_string_st* noundef %call7) #7
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end, %if.then
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @execute_msg_check_test(%struct.test_fixture* nocapture noundef readonly %fixture) unnamed_addr #0 {
entry:
  %msg = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %fixture, i64 0, i32 3
  %0 = load %struct.ossl_cmp_msg_st*, %struct.ossl_cmp_msg_st** %msg, align 8, !tbaa !16
  %call = tail call %struct.ossl_cmp_pkiheader_st* @OSSL_CMP_MSG_get0_header(%struct.ossl_cmp_msg_st* noundef %0) #7
  %call1 = tail call %struct.asn1_string_st* @OSSL_CMP_HDR_get0_transactionID(%struct.ossl_cmp_pkiheader_st* noundef %call) #7
  %expected = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %fixture, i64 0, i32 1
  %1 = load i32, i32* %expected, align 8, !tbaa !14
  %cmp_ctx = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %fixture, i64 0, i32 2
  %2 = load %struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_ctx_st** %cmp_ctx, align 8, !tbaa !17
  %3 = load %struct.ossl_cmp_msg_st*, %struct.ossl_cmp_msg_st** %msg, align 8, !tbaa !16
  %allow_unprotected_cb = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %fixture, i64 0, i32 5
  %4 = load i32 (%struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_msg_st*, i32, i32)*, i32 (%struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_msg_st*, i32, i32)** %allow_unprotected_cb, align 8, !tbaa !29
  %additional_arg = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %fixture, i64 0, i32 6
  %5 = load i32, i32* %additional_arg, align 8, !tbaa !26
  %call3 = tail call i32 @ossl_cmp_msg_check_update(%struct.ossl_cmp_ctx_st* noundef %2, %struct.ossl_cmp_msg_st* noundef %3, i32 (%struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_msg_st*, i32, i32)* noundef %4, i32 noundef %5) #7
  %call4 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 415, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.72, i64 0, i64 0), i8* noundef getelementptr inbounds ([114 x i8], [114 x i8]* @.str.86, i64 0, i64 0), i32 noundef %1, i32 noundef %call3) #7
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %6 = load i32, i32* %expected, align 8, !tbaa !14
  %cmp = icmp eq i32 %6, 0
  br i1 %cmp, label %cleanup, label %if.end7

if.end7:                                          ; preds = %if.end
  %call8 = tail call %struct.asn1_string_st* @ossl_cmp_hdr_get0_senderNonce(%struct.ossl_cmp_pkiheader_st* noundef %call) #7
  %7 = load %struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_ctx_st** %cmp_ctx, align 8, !tbaa !17
  %recipNonce = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %7, i64 0, i32 40
  %8 = load %struct.asn1_string_st*, %struct.asn1_string_st** %recipNonce, align 8, !tbaa !30
  %call10 = tail call i32 @ASN1_OCTET_STRING_cmp(%struct.asn1_string_st* noundef %call8, %struct.asn1_string_st* noundef %8) #7
  %call11 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 423, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.87, i64 0, i64 0), i8* noundef getelementptr inbounds ([88 x i8], [88 x i8]* @.str.88, i64 0, i64 0), i32 noundef 0, i32 noundef %call10) #7
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %cleanup, label %land.rhs

land.rhs:                                         ; preds = %if.end7
  %9 = load %struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_ctx_st** %cmp_ctx, align 8, !tbaa !17
  %transactionID = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %9, i64 0, i32 38
  %10 = load %struct.asn1_string_st*, %struct.asn1_string_st** %transactionID, align 8, !tbaa !32
  %call14 = tail call i32 @ASN1_OCTET_STRING_cmp(%struct.asn1_string_st* noundef %call1, %struct.asn1_string_st* noundef %10) #7
  %call15 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 426, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.87, i64 0, i64 0), i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.89, i64 0, i64 0), i32 noundef 0, i32 noundef %call14) #7
  %tobool16 = icmp ne i32 %call15, 0
  %phi.cast = zext i1 %tobool16 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %land.rhs, %if.end, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 1, %if.end ], [ 0, %if.end7 ], [ %phi.cast, %land.rhs ]
  ret i32 %retval.0
}

declare dso_local %struct.ossl_cmp_msg_st* @OSSL_CMP_MSG_dup(%struct.ossl_cmp_msg_st* noundef) local_unnamed_addr #1

declare dso_local i32 @ossl_cmp_asn1_octet_string_set1_bytes(%struct.asn1_string_st** noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local %struct.asn1_string_st* @ASN1_OCTET_STRING_new() local_unnamed_addr #1

declare dso_local i32 @ASN1_OCTET_STRING_set(%struct.asn1_string_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @OSSL_CMP_CTX_set1_transactionID(%struct.ossl_cmp_ctx_st* noundef, %struct.asn1_string_st* noundef) local_unnamed_addr #1

declare dso_local void @ASN1_OCTET_STRING_free(%struct.asn1_string_st* noundef) local_unnamed_addr #1

declare dso_local %struct.ossl_cmp_pkiheader_st* @OSSL_CMP_MSG_get0_header(%struct.ossl_cmp_msg_st* noundef) local_unnamed_addr #1

declare dso_local %struct.asn1_string_st* @OSSL_CMP_HDR_get0_transactionID(%struct.ossl_cmp_pkiheader_st* noundef) local_unnamed_addr #1

declare dso_local i32 @ASN1_OCTET_STRING_cmp(%struct.asn1_string_st* noundef, %struct.asn1_string_st* noundef) local_unnamed_addr #1

declare dso_local %struct.asn1_string_st* @ossl_cmp_hdr_get0_senderNonce(%struct.ossl_cmp_pkiheader_st* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal i32 @allow_unprotected(%struct.ossl_cmp_ctx_st* nocapture noundef readnone %ctx, %struct.ossl_cmp_msg_st* nocapture noundef readnone %msg, i32 noundef %invalid_protection, i32 noundef returned %allow) #2 {
entry:
  ret i32 %allow
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #5 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #7 = { nobuiltin nounwind "no-builtins" }
attributes #8 = { nounwind }
attributes #9 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.0"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !9, i64 20}
!8 = !{!"tm", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !9, i64 24, !9, i64 28, !9, i64 32, !10, i64 40, !4, i64 48}
!9 = !{!"int", !5, i64 0}
!10 = !{!"long", !5, i64 0}
!11 = !{!8, !9, i64 16}
!12 = !{!8, !9, i64 12}
!13 = !{!10, !10, i64 0}
!14 = !{!15, !9, i64 8}
!15 = !{!"test_fixture", !4, i64 0, !9, i64 8, !4, i64 16, !4, i64 24, !4, i64 32, !4, i64 40, !9, i64 48}
!16 = !{!15, !4, i64 24}
!17 = !{!15, !4, i64 16}
!18 = !{!15, !4, i64 0}
!19 = !{!20, !4, i64 8}
!20 = !{!"ossl_cmp_msg_st", !4, i64 0, !4, i64 8, !4, i64 16, !4, i64 24, !4, i64 32, !4, i64 40}
!21 = !{!5, !5, i64 0}
!22 = !{!23, !4, i64 8}
!23 = !{!"ossl_crmf_msg_st", !4, i64 0, !4, i64 8, !4, i64 16}
!24 = !{!25, !4, i64 16}
!25 = !{!"ossl_crmf_poposigningkey_st", !4, i64 0, !4, i64 8, !4, i64 16}
!26 = !{!15, !9, i64 48}
!27 = !{!20, !4, i64 16}
!28 = !{!15, !4, i64 32}
!29 = !{!15, !4, i64 40}
!30 = !{!31, !4, i64 296}
!31 = !{!"ossl_cmp_ctx_st", !4, i64 0, !4, i64 8, !4, i64 16, !9, i64 24, !4, i64 32, !4, i64 40, !4, i64 48, !4, i64 56, !4, i64 64, !9, i64 72, !4, i64 80, !4, i64 88, !9, i64 96, !9, i64 100, !9, i64 104, !10, i64 112, !4, i64 120, !4, i64 128, !9, i64 136, !4, i64 144, !4, i64 152, !4, i64 160, !4, i64 168, !4, i64 176, !9, i64 184, !9, i64 188, !9, i64 192, !4, i64 200, !4, i64 208, !4, i64 216, !4, i64 224, !4, i64 232, !10, i64 240, !4, i64 248, !9, i64 256, !9, i64 260, !4, i64 264, !4, i64 272, !4, i64 280, !4, i64 288, !4, i64 296, !4, i64 304, !4, i64 312, !9, i64 320, !9, i64 324, !4, i64 328, !4, i64 336, !9, i64 344, !4, i64 352, !9, i64 360, !4, i64 368, !4, i64 376, !9, i64 384, !9, i64 388, !4, i64 392, !4, i64 400, !9, i64 408, !9, i64 412, !4, i64 416, !4, i64 424, !9, i64 432, !4, i64 440, !9, i64 448, !4, i64 456, !9, i64 464, !4, i64 472, !4, i64 480, !4, i64 488, !4, i64 496, !4, i64 504, !4, i64 512}
!32 = !{!31, !4, i64 280}
