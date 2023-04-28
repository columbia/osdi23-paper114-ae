; ModuleID = 'test/cmp_protect_test.c'
source_filename = "test/cmp_protect_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evp_pkey_st = type opaque
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
%struct.test_fixture = type { i8*, %struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_msg_st*, %struct.ossl_cmp_pkisi_st*, %struct.evp_pkey_st*, i8*, i32, %struct.x509_st*, %struct.stack_st_X509*, %struct.stack_st_X509*, i32, i32, i32 }
%struct.ossl_cmp_ctx_st = type { %struct.ossl_lib_ctx_st*, i8*, i32 (i8*, i8*, i32, i32, i8*)*, i32, %struct.ossl_cmp_msg_st* (%struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_msg_st*)*, i8*, %struct.ossl_http_req_ctx_st*, i8*, i8*, i32, i8*, i8*, i32, i32, i32, i64, %struct.bio_st* (%struct.bio_st*, i8*, i32, i32)*, i8*, i32, %struct.x509_st*, %struct.x509_st*, %struct.X509_name_st*, %struct.x509_store_st*, %struct.stack_st_X509*, i32, i32, i32, %struct.x509_st*, %struct.stack_st_X509*, %struct.evp_pkey_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, i64, %struct.evp_md_st*, i32, i32, %struct.X509_name_st*, %struct.evp_md_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.stack_st_OSSL_CMP_ITAV*, i32, i32, %struct.stack_st_X509*, %struct.evp_pkey_st*, i32, %struct.X509_name_st*, i32, %struct.X509_name_st*, %struct.stack_st_GENERAL_NAME*, i32, i32, %struct.stack_st_X509_EXTENSION*, %struct.stack_st_POLICYINFO*, i32, i32, %struct.x509_st*, %struct.X509_req_st*, i32, %struct.stack_st_OSSL_CMP_ITAV*, i32, %struct.stack_st_ASN1_UTF8STRING*, i32, %struct.x509_st*, %struct.stack_st_X509*, %struct.stack_st_X509*, %struct.stack_st_X509*, i32 (%struct.ossl_cmp_ctx_st*, %struct.x509_st*, i32, i8**)*, i8* }
%struct.ossl_http_req_ctx_st = type opaque
%struct.bio_st = type opaque
%struct.x509_store_st = type opaque
%struct.evp_md_st = type opaque
%struct.stack_st_POLICYINFO = type opaque
%struct.X509_req_st = type { %struct.X509_req_info_st, %struct.X509_algor_st, %struct.asn1_string_st*, i32, i8*, %struct.asn1_string_st*, %struct.ossl_lib_ctx_st*, i8* }
%struct.X509_req_info_st = type { %struct.ASN1_ENCODING_st, %struct.asn1_string_st*, %struct.X509_name_st*, %struct.X509_pubkey_st*, %struct.stack_st_X509_ATTRIBUTE* }
%struct.stack_st_X509_ATTRIBUTE = type opaque
%struct.ossl_cmp_pkisi_st = type { %struct.asn1_string_st*, %struct.stack_st_ASN1_UTF8STRING*, %struct.asn1_string_st* }
%struct.stack_st = type opaque
%struct.ossl_cmp_protectedpart_st = type { %struct.ossl_cmp_pkiheader_st*, %struct.ossl_cmp_pkibody_st* }
%struct.evp_md_ctx_st = type opaque
%struct.evp_pkey_ctx_st = type opaque
%struct.engine_st = type opaque
%struct.X509_VERIFY_PARAM_st = type opaque

@loadedprivkey = internal unnamed_addr global %struct.evp_pkey_st* null, align 8
@loadedpubkey = internal unnamed_addr global %struct.evp_pkey_st* null, align 8
@loadedkey = internal unnamed_addr global %struct.evp_pkey_st* null, align 8
@cert = internal unnamed_addr global %struct.x509_st* null, align 8
@endentity1 = internal unnamed_addr global %struct.x509_st* null, align 8
@endentity2 = internal unnamed_addr global %struct.x509_st* null, align 8
@root = internal unnamed_addr global %struct.x509_st* null, align 8
@intermediate = internal unnamed_addr global %struct.x509_st* null, align 8
@ir_protected = internal unnamed_addr global %struct.ossl_cmp_msg_st* null, align 8
@ir_unprotected = internal unnamed_addr global %struct.ossl_cmp_msg_st* null, align 8
@libctx = internal global %struct.ossl_lib_ctx_st* null, align 8
@test_get_options.options = internal constant [9 x %struct.options_st] [%struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_HELP_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([194 x i8], [194 x i8]* @.str, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_HELP_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i32 500, i32 45, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 501, i32 45, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i32 502, i32 115, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i32 503, i32 110, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0), i32 504, i32 112, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), i32 505, i32 110, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.13, i32 0, i32 0) }, %struct.options_st zeroinitializer], align 16
@OPT_HELP_STR = external dso_local constant [0 x i8], align 1
@.str = private unnamed_addr constant [194 x i8] c"Usage: %s [options] server.pem IR_protected.der IR_unprotected.der IP_PBM.der server.crt server.pem EndEntity1.crt EndEntity2.crt Root_CA.crt Intermediate_CA.crt module_name [module_conf_file]\0A\00", align 1
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
@.str.14 = private unnamed_addr constant [24 x i8] c"test/cmp_protect_test.c\00", align 1
@.str.15 = private unnamed_addr constant [28 x i8] c"Error parsing test options\0A\00", align 1
@rand_data = internal global [16 x i8] zeroinitializer, align 16
@.str.16 = private unnamed_addr constant [32 x i8] c"server_f = test_get_argument(0)\00", align 1
@.str.17 = private unnamed_addr constant [38 x i8] c"ir_protected_f = test_get_argument(1)\00", align 1
@ir_protected_f = internal unnamed_addr global i8* null, align 8
@.str.18 = private unnamed_addr constant [40 x i8] c"ir_unprotected_f = test_get_argument(2)\00", align 1
@ir_unprotected_f = internal unnamed_addr global i8* null, align 8
@.str.19 = private unnamed_addr constant [32 x i8] c"ip_PBM_f = test_get_argument(3)\00", align 1
@ip_PBM_f = internal unnamed_addr global i8* null, align 8
@.str.20 = private unnamed_addr constant [37 x i8] c"server_cert_f = test_get_argument(4)\00", align 1
@.str.21 = private unnamed_addr constant [36 x i8] c"server_key_f = test_get_argument(5)\00", align 1
@.str.22 = private unnamed_addr constant [36 x i8] c"endentity1_f = test_get_argument(6)\00", align 1
@.str.23 = private unnamed_addr constant [36 x i8] c"endentity2_f = test_get_argument(7)\00", align 1
@.str.24 = private unnamed_addr constant [30 x i8] c"root_f = test_get_argument(8)\00", align 1
@.str.25 = private unnamed_addr constant [38 x i8] c"intermediate_f = test_get_argument(9)\00", align 1
@.str.26 = private unnamed_addr constant [27 x i8] c"usage: cmp_protect_test %s\00", align 1
@.str.27 = private unnamed_addr constant [174 x i8] c"server.pem IR_protected.der IR_unprotected.der IP_PBM.der server.crt server.pem EndEntity1.crt EndEntity2.crt Root_CA.crt Intermediate_CA.crt module_name [module_conf_file]\0A\00", align 1
@default_null_provider = internal global %struct.ossl_provider_st* null, align 8
@provider = internal global %struct.ossl_provider_st* null, align 8
@.str.28 = private unnamed_addr constant [48 x i8] c"loadedkey = load_pkey_pem(server_key_f, libctx)\00", align 1
@.str.29 = private unnamed_addr constant [44 x i8] c"cert = load_cert_pem(server_cert_f, libctx)\00", align 1
@.str.30 = private unnamed_addr constant [48 x i8] c"loadedprivkey = load_pkey_pem(server_f, libctx)\00", align 1
@.str.31 = private unnamed_addr constant [31 x i8] c"EVP_PKEY_up_ref(loadedprivkey)\00", align 1
@.str.32 = private unnamed_addr constant [51 x i8] c"ir_protected = load_pkimsg(ir_protected_f, libctx)\00", align 1
@.str.33 = private unnamed_addr constant [55 x i8] c"ir_unprotected = load_pkimsg(ir_unprotected_f, libctx)\00", align 1
@.str.34 = private unnamed_addr constant [49 x i8] c"endentity1 = load_cert_pem(endentity1_f, libctx)\00", align 1
@.str.35 = private unnamed_addr constant [49 x i8] c"endentity2 = load_cert_pem(endentity2_f, libctx)\00", align 1
@.str.36 = private unnamed_addr constant [37 x i8] c"root = load_cert_pem(root_f, libctx)\00", align 1
@.str.37 = private unnamed_addr constant [53 x i8] c"intermediate = load_cert_pem(intermediate_f, libctx)\00", align 1
@.str.38 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.39 = private unnamed_addr constant [53 x i8] c"RAND_bytes(rand_data, OSSL_CMP_TRANSACTIONID_LENGTH)\00", align 1
@.str.40 = private unnamed_addr constant [42 x i8] c"test_cmp_calc_protection_no_key_no_secret\00", align 1
@.str.41 = private unnamed_addr constant [30 x i8] c"test_cmp_calc_protection_pkey\00", align 1
@.str.42 = private unnamed_addr constant [31 x i8] c"test_cmp_calc_protection_pbmac\00", align 1
@.str.43 = private unnamed_addr constant [58 x i8] c"test_MSG_protect_with_msg_sig_alg_protection_plus_rsa_key\00", align 1
@.str.44 = private unnamed_addr constant [42 x i8] c"test_MSG_protect_with_certificate_and_key\00", align 1
@.str.45 = private unnamed_addr constant [48 x i8] c"test_MSG_protect_certificate_based_without_cert\00", align 1
@.str.46 = private unnamed_addr constant [37 x i8] c"test_MSG_protect_unprotected_request\00", align 1
@.str.47 = private unnamed_addr constant [34 x i8] c"test_MSG_protect_no_key_no_secret\00", align 1
@.str.48 = private unnamed_addr constant [42 x i8] c"test_MSG_protect_pbmac_no_sender_with_ref\00", align 1
@.str.49 = private unnamed_addr constant [40 x i8] c"test_MSG_protect_pbmac_no_sender_no_ref\00", align 1
@.str.50 = private unnamed_addr constant [24 x i8] c"test_MSG_add_extraCerts\00", align 1
@.str.51 = private unnamed_addr constant [26 x i8] c"test_cmp_build_cert_chain\00", align 1
@.str.52 = private unnamed_addr constant [36 x i8] c"test_cmp_build_cert_chain_only_root\00", align 1
@.str.53 = private unnamed_addr constant [34 x i8] c"test_cmp_build_cert_chain_no_root\00", align 1
@.str.54 = private unnamed_addr constant [47 x i8] c"test_cmp_build_cert_chain_missing_intermediate\00", align 1
@.str.55 = private unnamed_addr constant [35 x i8] c"test_cmp_build_cert_chain_no_certs\00", align 1
@.str.56 = private unnamed_addr constant [16 x i8] c"test_X509_STORE\00", align 1
@.str.57 = private unnamed_addr constant [33 x i8] c"test_X509_STORE_only_self_issued\00", align 1
@.str.58 = private unnamed_addr constant [53 x i8] c"fixture->msg = load_pkimsg(ir_unprotected_f, libctx)\00", align 1
@.str.59 = private unnamed_addr constant [55 x i8] c"fixture->msg->header->protectionAlg = X509_ALGOR_new()\00", align 1
@.str.60 = private unnamed_addr constant [43 x i8] c"fixture = OPENSSL_zalloc(sizeof(*fixture))\00", align 1
@.str.61 = private unnamed_addr constant [50 x i8] c"fixture->cmp_ctx = OSSL_CMP_CTX_new(libctx, NULL)\00", align 1
@.str.62 = private unnamed_addr constant [11 x i8] c"protection\00", align 1
@.str.63 = private unnamed_addr constant [56 x i8] c"OSSL_CMP_CTX_set1_pkey(fixture->cmp_ctx, loadedprivkey)\00", align 1
@.str.64 = private unnamed_addr constant [51 x i8] c"fixture->msg = load_pkimsg(ir_protected_f, libctx)\00", align 1
@.str.65 = private unnamed_addr constant [59 x i8] c"ASN1_STRING_cmp(protection, fixture->msg->protection) == 0\00", align 1
@.str.66 = private unnamed_addr constant [86 x i8] c"verify_signature(fixture->msg, protection, fixture->pubkey, fixture->cmp_ctx->digest)\00", align 1
@.str.67 = private unnamed_addr constant [4 x i8] c"len\00", align 1
@.str.68 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.69 = private unnamed_addr constant [23 x i8] c"ctx = EVP_MD_CTX_new()\00", align 1
@.str.70 = private unnamed_addr constant [52 x i8] c"EVP_DigestVerifyInit(ctx, NULL, digest, NULL, pkey)\00", align 1
@.str.71 = private unnamed_addr constant [80 x i8] c"EVP_DigestVerify(ctx, protection->data, protection->length, prot_part_der, len)\00", align 1
@__const.test_cmp_calc_protection_pbmac.sec_insta = private unnamed_addr constant [5 x i8] c"insta", align 1
@.str.72 = private unnamed_addr constant [78 x i8] c"OSSL_CMP_CTX_set1_secretValue(fixture->cmp_ctx, sec_insta, sizeof(sec_insta))\00", align 1
@.str.73 = private unnamed_addr constant [45 x i8] c"fixture->msg = load_pkimsg(ip_PBM_f, libctx)\00", align 1
@.str.74 = private unnamed_addr constant [48 x i8] c"fixture->msg = OSSL_CMP_MSG_dup(ir_unprotected)\00", align 1
@.str.75 = private unnamed_addr constant [46 x i8] c"SET_OPT_UNPROTECTED_SEND(fixture->cmp_ctx, 0)\00", align 1
@.str.76 = private unnamed_addr constant [68 x i8] c"OSSL_CMP_CTX_set1_referenceValue(fixture->cmp_ctx, rand_data, size)\00", align 1
@.str.77 = private unnamed_addr constant [72 x i8] c"OSSL_CMP_CTX_set1_secretValue(fixture->cmp_ctx, rand_data + size, size)\00", align 1
@.str.78 = private unnamed_addr constant [18 x i8] c"fixture->expected\00", align 1
@.str.79 = private unnamed_addr constant [53 x i8] c"ossl_cmp_msg_protect(fixture->cmp_ctx, fixture->msg)\00", align 1
@.str.80 = private unnamed_addr constant [52 x i8] c"OSSL_CMP_CTX_set1_pkey(fixture->cmp_ctx, loadedkey)\00", align 1
@.str.81 = private unnamed_addr constant [47 x i8] c"OSSL_CMP_CTX_set1_cert(fixture->cmp_ctx, cert)\00", align 1
@.str.82 = private unnamed_addr constant [33 x i8] c"SET_OPT_UNPROTECTED_SEND(ctx, 0)\00", align 1
@.str.83 = private unnamed_addr constant [45 x i8] c"OSSL_CMP_CTX_set0_newPkey(ctx, 1, loadedkey)\00", align 1
@.str.84 = private unnamed_addr constant [46 x i8] c"SET_OPT_UNPROTECTED_SEND(fixture->cmp_ctx, 1)\00", align 1
@test_MSG_protect_pbmac_no_sender.secret = internal global [4 x i8] c"/\0B\08\0F", align 1
@test_MSG_protect_pbmac_no_sender.ref = internal global [4 x i8] c"\CA\FE\BA\BE", align 1
@__func__.test_MSG_protect_pbmac_no_sender = private unnamed_addr constant [33 x i8] c"test_MSG_protect_pbmac_no_sender\00", align 1
@.str.85 = private unnamed_addr constant [46 x i8] c"fixture->msg = OSSL_CMP_MSG_dup(ir_protected)\00", align 1
@.str.86 = private unnamed_addr constant [60 x i8] c"ossl_cmp_msg_add_extraCerts(fixture->cmp_ctx, fixture->msg)\00", align 1
@.str.87 = private unnamed_addr constant [36 x i8] c"fixture->certs = sk_X509_new_null()\00", align 1
@.str.88 = private unnamed_addr constant [36 x i8] c"fixture->chain = sk_X509_new_null()\00", align 1
@.str.89 = private unnamed_addr constant [41 x i8] c"sk_X509_push(fixture->certs, endentity1)\00", align 1
@.str.90 = private unnamed_addr constant [35 x i8] c"sk_X509_push(fixture->certs, root)\00", align 1
@.str.91 = private unnamed_addr constant [43 x i8] c"sk_X509_push(fixture->certs, intermediate)\00", align 1
@.str.92 = private unnamed_addr constant [41 x i8] c"sk_X509_push(fixture->chain, endentity2)\00", align 1
@.str.93 = private unnamed_addr constant [43 x i8] c"sk_X509_push(fixture->chain, intermediate)\00", align 1
@.str.94 = private unnamed_addr constant [35 x i8] c"sk_X509_push(fixture->chain, root)\00", align 1
@.str.95 = private unnamed_addr constant [6 x i8] c"chain\00", align 1
@.str.96 = private unnamed_addr constant [41 x i8] c"STACK_OF_X509_cmp(chain, fixture->chain)\00", align 1
@.str.97 = private unnamed_addr constant [25 x i8] c"store = X509_STORE_new()\00", align 1
@.str.98 = private unnamed_addr constant [33 x i8] c"X509_STORE_add_cert(store, root)\00", align 1
@.str.99 = private unnamed_addr constant [14 x i8] c"chain != NULL\00", align 1
@.str.100 = private unnamed_addr constant [45 x i8] c"fixture->chain = sk_X509_dup(fixture->certs)\00", align 1
@.str.101 = private unnamed_addr constant [77 x i8] c"ossl_cmp_X509_STORE_add1_certs(store, fixture->certs, fixture->callback_arg)\00", align 1
@.str.102 = private unnamed_addr constant [38 x i8] c"STACK_OF_X509_cmp(sk, fixture->chain)\00", align 1
@.str.103 = private unnamed_addr constant [41 x i8] c"sk_X509_push(fixture->certs, endentity2)\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @cleanup_tests() local_unnamed_addr #0 {
entry:
  %0 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** @loadedprivkey, align 8, !tbaa !3
  tail call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %0) #5
  %1 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** @loadedpubkey, align 8, !tbaa !3
  tail call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %1) #5
  %2 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** @loadedkey, align 8, !tbaa !3
  tail call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %2) #5
  %3 = load %struct.x509_st*, %struct.x509_st** @cert, align 8, !tbaa !3
  tail call void @X509_free(%struct.x509_st* noundef %3) #5
  %4 = load %struct.x509_st*, %struct.x509_st** @endentity1, align 8, !tbaa !3
  tail call void @X509_free(%struct.x509_st* noundef %4) #5
  %5 = load %struct.x509_st*, %struct.x509_st** @endentity2, align 8, !tbaa !3
  tail call void @X509_free(%struct.x509_st* noundef %5) #5
  %6 = load %struct.x509_st*, %struct.x509_st** @root, align 8, !tbaa !3
  tail call void @X509_free(%struct.x509_st* noundef %6) #5
  %7 = load %struct.x509_st*, %struct.x509_st** @intermediate, align 8, !tbaa !3
  tail call void @X509_free(%struct.x509_st* noundef %7) #5
  %8 = load %struct.ossl_cmp_msg_st*, %struct.ossl_cmp_msg_st** @ir_protected, align 8, !tbaa !3
  tail call void @OSSL_CMP_MSG_free(%struct.ossl_cmp_msg_st* noundef %8) #5
  %9 = load %struct.ossl_cmp_msg_st*, %struct.ossl_cmp_msg_st** @ir_unprotected, align 8, !tbaa !3
  tail call void @OSSL_CMP_MSG_free(%struct.ossl_cmp_msg_st* noundef %9) #5
  %10 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @libctx, align 8, !tbaa !3
  tail call void @OSSL_LIB_CTX_free(%struct.ossl_lib_ctx_st* noundef %10) #5
  ret void
}

declare dso_local void @EVP_PKEY_free(%struct.evp_pkey_st* noundef) local_unnamed_addr #1

declare dso_local void @X509_free(%struct.x509_st* noundef) #1

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
  %call = tail call i32 @test_skip_common_options() #5
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0), i32 noundef 550, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.15, i64 0, i64 0)) #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @RAND_bytes(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @rand_data, i64 0, i64 0), i32 noundef 16) #5
  %call2 = tail call i8* @test_get_argument(i64 noundef 0) #5
  %call3 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0), i32 noundef 555, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.16, i64 0, i64 0), i8* noundef %call2) #5
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then40, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %call5 = tail call i8* @test_get_argument(i64 noundef 1) #5
  store i8* %call5, i8** @ir_protected_f, align 8, !tbaa !3
  %call6 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0), i32 noundef 556, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.17, i64 0, i64 0), i8* noundef %call5) #5
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.then40, label %lor.lhs.false8

lor.lhs.false8:                                   ; preds = %lor.lhs.false
  %call9 = tail call i8* @test_get_argument(i64 noundef 2) #5
  store i8* %call9, i8** @ir_unprotected_f, align 8, !tbaa !3
  %call10 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0), i32 noundef 557, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.18, i64 0, i64 0), i8* noundef %call9) #5
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.then40, label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %lor.lhs.false8
  %call13 = tail call i8* @test_get_argument(i64 noundef 3) #5
  store i8* %call13, i8** @ip_PBM_f, align 8, !tbaa !3
  %call14 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0), i32 noundef 558, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.19, i64 0, i64 0), i8* noundef %call13) #5
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.then40, label %lor.lhs.false16

lor.lhs.false16:                                  ; preds = %lor.lhs.false12
  %call17 = tail call i8* @test_get_argument(i64 noundef 4) #5
  %call18 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0), i32 noundef 559, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.20, i64 0, i64 0), i8* noundef %call17) #5
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.then40, label %lor.lhs.false20

lor.lhs.false20:                                  ; preds = %lor.lhs.false16
  %call21 = tail call i8* @test_get_argument(i64 noundef 5) #5
  %call22 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0), i32 noundef 560, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.21, i64 0, i64 0), i8* noundef %call21) #5
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.then40, label %lor.lhs.false24

lor.lhs.false24:                                  ; preds = %lor.lhs.false20
  %call25 = tail call i8* @test_get_argument(i64 noundef 6) #5
  %call26 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0), i32 noundef 561, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.22, i64 0, i64 0), i8* noundef %call25) #5
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.then40, label %lor.lhs.false28

lor.lhs.false28:                                  ; preds = %lor.lhs.false24
  %call29 = tail call i8* @test_get_argument(i64 noundef 7) #5
  %call30 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0), i32 noundef 562, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.23, i64 0, i64 0), i8* noundef %call29) #5
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.then40, label %lor.lhs.false32

lor.lhs.false32:                                  ; preds = %lor.lhs.false28
  %call33 = tail call i8* @test_get_argument(i64 noundef 8) #5
  %call34 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0), i32 noundef 563, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.24, i64 0, i64 0), i8* noundef %call33) #5
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.then40, label %lor.lhs.false36

lor.lhs.false36:                                  ; preds = %lor.lhs.false32
  %call37 = tail call i8* @test_get_argument(i64 noundef 9) #5
  %call38 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0), i32 noundef 564, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.25, i64 0, i64 0), i8* noundef %call37) #5
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.then40, label %if.end41

if.then40:                                        ; preds = %lor.lhs.false36, %lor.lhs.false32, %lor.lhs.false28, %lor.lhs.false24, %lor.lhs.false20, %lor.lhs.false16, %lor.lhs.false12, %lor.lhs.false8, %lor.lhs.false, %if.end
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0), i32 noundef 565, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.26, i64 0, i64 0), i8* noundef getelementptr inbounds ([174 x i8], [174 x i8]* @.str.27, i64 0, i64 0)) #5
  br label %cleanup

if.end41:                                         ; preds = %lor.lhs.false36
  %call42 = tail call i32 @test_arg_libctx(%struct.ossl_lib_ctx_st** noundef nonnull @libctx, %struct.ossl_provider_st** noundef nonnull @default_null_provider, %struct.ossl_provider_st** noundef nonnull @provider, i32 noundef 10, i8* noundef getelementptr inbounds ([174 x i8], [174 x i8]* @.str.27, i64 0, i64 0)) #5
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %cleanup, label %if.end45

if.end45:                                         ; preds = %if.end41
  %0 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @libctx, align 8, !tbaa !3
  %call46 = tail call %struct.evp_pkey_st* @load_pkey_pem(i8* noundef %call21, %struct.ossl_lib_ctx_st* noundef %0) #5
  store %struct.evp_pkey_st* %call46, %struct.evp_pkey_st** @loadedkey, align 8, !tbaa !3
  %1 = bitcast %struct.evp_pkey_st* %call46 to i8*
  %call47 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0), i32 noundef 572, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.28, i64 0, i64 0), i8* noundef %1) #5
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %cleanup, label %lor.lhs.false49

lor.lhs.false49:                                  ; preds = %if.end45
  %2 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @libctx, align 8, !tbaa !3
  %call50 = tail call %struct.x509_st* @load_cert_pem(i8* noundef %call17, %struct.ossl_lib_ctx_st* noundef %2) #5
  store %struct.x509_st* %call50, %struct.x509_st** @cert, align 8, !tbaa !3
  %3 = bitcast %struct.x509_st* %call50 to i8*
  %call51 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0), i32 noundef 573, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.29, i64 0, i64 0), i8* noundef %3) #5
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %cleanup, label %if.end54

if.end54:                                         ; preds = %lor.lhs.false49
  %4 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @libctx, align 8, !tbaa !3
  %call55 = tail call %struct.evp_pkey_st* @load_pkey_pem(i8* noundef %call2, %struct.ossl_lib_ctx_st* noundef %4) #5
  store %struct.evp_pkey_st* %call55, %struct.evp_pkey_st** @loadedprivkey, align 8, !tbaa !3
  %5 = bitcast %struct.evp_pkey_st* %call55 to i8*
  %call56 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0), i32 noundef 576, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.30, i64 0, i64 0), i8* noundef %5) #5
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %cleanup, label %if.end59

if.end59:                                         ; preds = %if.end54
  %6 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** @loadedprivkey, align 8, !tbaa !3
  %call60 = tail call i32 @EVP_PKEY_up_ref(%struct.evp_pkey_st* noundef %6) #5
  %cmp = icmp ne i32 %call60, 0
  %conv = zext i1 %cmp to i32
  %call61 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0), i32 noundef 578, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.31, i64 0, i64 0), i32 noundef %conv) #5
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %if.end64, label %if.then63

if.then63:                                        ; preds = %if.end59
  %7 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** @loadedprivkey, align 8, !tbaa !3
  store %struct.evp_pkey_st* %7, %struct.evp_pkey_st** @loadedpubkey, align 8, !tbaa !3
  br label %if.end64

if.end64:                                         ; preds = %if.then63, %if.end59
  %8 = load i8*, i8** @ir_protected_f, align 8, !tbaa !3
  %9 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @libctx, align 8, !tbaa !3
  %call65 = tail call %struct.ossl_cmp_msg_st* @load_pkimsg(i8* noundef %8, %struct.ossl_lib_ctx_st* noundef %9) #5
  store %struct.ossl_cmp_msg_st* %call65, %struct.ossl_cmp_msg_st** @ir_protected, align 8, !tbaa !3
  %10 = bitcast %struct.ossl_cmp_msg_st* %call65 to i8*
  %call66 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0), i32 noundef 580, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.32, i64 0, i64 0), i8* noundef %10) #5
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %cleanup, label %lor.lhs.false68

lor.lhs.false68:                                  ; preds = %if.end64
  %11 = load i8*, i8** @ir_unprotected_f, align 8, !tbaa !3
  %12 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @libctx, align 8, !tbaa !3
  %call69 = tail call %struct.ossl_cmp_msg_st* @load_pkimsg(i8* noundef %11, %struct.ossl_lib_ctx_st* noundef %12) #5
  store %struct.ossl_cmp_msg_st* %call69, %struct.ossl_cmp_msg_st** @ir_unprotected, align 8, !tbaa !3
  %13 = bitcast %struct.ossl_cmp_msg_st* %call69 to i8*
  %call70 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0), i32 noundef 581, i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.33, i64 0, i64 0), i8* noundef %13) #5
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %cleanup, label %if.end73

if.end73:                                         ; preds = %lor.lhs.false68
  %14 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @libctx, align 8, !tbaa !3
  %call74 = tail call %struct.x509_st* @load_cert_pem(i8* noundef %call25, %struct.ossl_lib_ctx_st* noundef %14) #5
  store %struct.x509_st* %call74, %struct.x509_st** @endentity1, align 8, !tbaa !3
  %15 = bitcast %struct.x509_st* %call74 to i8*
  %call75 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0), i32 noundef 583, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.34, i64 0, i64 0), i8* noundef %15) #5
  %tobool76.not = icmp eq i32 %call75, 0
  br i1 %tobool76.not, label %cleanup, label %lor.lhs.false77

lor.lhs.false77:                                  ; preds = %if.end73
  %16 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @libctx, align 8, !tbaa !3
  %call78 = tail call %struct.x509_st* @load_cert_pem(i8* noundef %call29, %struct.ossl_lib_ctx_st* noundef %16) #5
  store %struct.x509_st* %call78, %struct.x509_st** @endentity2, align 8, !tbaa !3
  %17 = bitcast %struct.x509_st* %call78 to i8*
  %call79 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0), i32 noundef 584, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.35, i64 0, i64 0), i8* noundef %17) #5
  %tobool80.not = icmp eq i32 %call79, 0
  br i1 %tobool80.not, label %cleanup, label %lor.lhs.false81

lor.lhs.false81:                                  ; preds = %lor.lhs.false77
  %18 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @libctx, align 8, !tbaa !3
  %call82 = tail call %struct.x509_st* @load_cert_pem(i8* noundef %call33, %struct.ossl_lib_ctx_st* noundef %18) #5
  store %struct.x509_st* %call82, %struct.x509_st** @root, align 8, !tbaa !3
  %19 = bitcast %struct.x509_st* %call82 to i8*
  %call83 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0), i32 noundef 585, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.36, i64 0, i64 0), i8* noundef %19) #5
  %tobool84.not = icmp eq i32 %call83, 0
  br i1 %tobool84.not, label %cleanup, label %lor.lhs.false85

lor.lhs.false85:                                  ; preds = %lor.lhs.false81
  %20 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @libctx, align 8, !tbaa !3
  %call86 = tail call %struct.x509_st* @load_cert_pem(i8* noundef %call37, %struct.ossl_lib_ctx_st* noundef %20) #5
  store %struct.x509_st* %call86, %struct.x509_st** @intermediate, align 8, !tbaa !3
  %21 = bitcast %struct.x509_st* %call86 to i8*
  %call87 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0), i32 noundef 586, i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.37, i64 0, i64 0), i8* noundef %21) #5
  %tobool88.not = icmp eq i32 %call87, 0
  br i1 %tobool88.not, label %cleanup, label %if.end90

if.end90:                                         ; preds = %lor.lhs.false85
  %call91 = tail call i32 @RAND_bytes(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @rand_data, i64 0, i64 0), i32 noundef 16) #5
  %call92 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0), i32 noundef 588, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.38, i64 0, i64 0), i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.39, i64 0, i64 0), i32 noundef 1, i32 noundef %call91) #5
  %tobool93.not = icmp eq i32 %call92, 0
  br i1 %tobool93.not, label %cleanup, label %if.end95

if.end95:                                         ; preds = %if.end90
  tail call void @add_test(i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.40, i64 0, i64 0), i32 ()* noundef nonnull @test_cmp_calc_protection_no_key_no_secret) #5
  tail call void @add_test(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.41, i64 0, i64 0), i32 ()* noundef nonnull @test_cmp_calc_protection_pkey) #5
  tail call void @add_test(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.42, i64 0, i64 0), i32 ()* noundef nonnull @test_cmp_calc_protection_pbmac) #5
  tail call void @add_test(i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @.str.43, i64 0, i64 0), i32 ()* noundef nonnull @test_MSG_protect_with_msg_sig_alg_protection_plus_rsa_key) #5
  tail call void @add_test(i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.44, i64 0, i64 0), i32 ()* noundef nonnull @test_MSG_protect_with_certificate_and_key) #5
  tail call void @add_test(i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.45, i64 0, i64 0), i32 ()* noundef nonnull @test_MSG_protect_certificate_based_without_cert) #5
  tail call void @add_test(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.46, i64 0, i64 0), i32 ()* noundef nonnull @test_MSG_protect_unprotected_request) #5
  tail call void @add_test(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.47, i64 0, i64 0), i32 ()* noundef nonnull @test_MSG_protect_no_key_no_secret) #5
  tail call void @add_test(i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.48, i64 0, i64 0), i32 ()* noundef nonnull @test_MSG_protect_pbmac_no_sender_with_ref) #5
  tail call void @add_test(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.49, i64 0, i64 0), i32 ()* noundef nonnull @test_MSG_protect_pbmac_no_sender_no_ref) #5
  tail call void @add_test(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.50, i64 0, i64 0), i32 ()* noundef nonnull @test_MSG_add_extraCerts) #5
  tail call void @add_test(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.51, i64 0, i64 0), i32 ()* noundef nonnull @test_cmp_build_cert_chain) #5
  tail call void @add_test(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.52, i64 0, i64 0), i32 ()* noundef nonnull @test_cmp_build_cert_chain_only_root) #5
  tail call void @add_test(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.53, i64 0, i64 0), i32 ()* noundef nonnull @test_cmp_build_cert_chain_no_root) #5
  tail call void @add_test(i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.54, i64 0, i64 0), i32 ()* noundef nonnull @test_cmp_build_cert_chain_missing_intermediate) #5
  tail call void @add_test(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.55, i64 0, i64 0), i32 ()* noundef nonnull @test_cmp_build_cert_chain_no_certs) #5
  tail call void @add_test(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.56, i64 0, i64 0), i32 ()* noundef nonnull @test_X509_STORE) #5
  tail call void @add_test(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.57, i64 0, i64 0), i32 ()* noundef nonnull @test_X509_STORE_only_self_issued) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end90, %if.end73, %lor.lhs.false77, %lor.lhs.false81, %lor.lhs.false85, %if.end64, %lor.lhs.false68, %if.end54, %if.end45, %lor.lhs.false49, %if.end41, %if.end95, %if.then40, %if.then
  %retval.0 = phi i32 [ 1, %if.end95 ], [ 0, %if.then40 ], [ 0, %if.then ], [ 0, %if.end41 ], [ 0, %lor.lhs.false49 ], [ 0, %if.end45 ], [ 0, %if.end54 ], [ 0, %lor.lhs.false68 ], [ 0, %if.end64 ], [ 0, %lor.lhs.false85 ], [ 0, %lor.lhs.false81 ], [ 0, %lor.lhs.false77 ], [ 0, %if.end73 ], [ 0, %if.end90 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

declare dso_local i32 @test_skip_common_options() local_unnamed_addr #1

declare dso_local void @test_error(i8* noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

declare dso_local i32 @RAND_bytes(i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @test_ptr(i8* noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local i8* @test_get_argument(i64 noundef) local_unnamed_addr #1

declare dso_local i32 @test_arg_libctx(%struct.ossl_lib_ctx_st** noundef, %struct.ossl_provider_st** noundef, %struct.ossl_provider_st** noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

declare dso_local %struct.evp_pkey_st* @load_pkey_pem(i8* noundef, %struct.ossl_lib_ctx_st* noundef) local_unnamed_addr #1

declare dso_local %struct.x509_st* @load_cert_pem(i8* noundef, %struct.ossl_lib_ctx_st* noundef) local_unnamed_addr #1

declare dso_local i32 @test_true(i8* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @EVP_PKEY_up_ref(%struct.evp_pkey_st* noundef) local_unnamed_addr #1

declare dso_local %struct.ossl_cmp_msg_st* @load_pkimsg(i8* noundef, %struct.ossl_lib_ctx_st* noundef) local_unnamed_addr #1

declare dso_local i32 @test_int_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local void @add_test(i8* noundef, i32 ()* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_cmp_calc_protection_no_key_no_secret() #0 {
entry:
  %call = tail call fastcc %struct.test_fixture* @set_up(i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.40, i64 0, i64 0)) #6
  %cmp = icmp eq %struct.test_fixture* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %0 = load i8*, i8** @ir_unprotected_f, align 8, !tbaa !3
  %1 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @libctx, align 8, !tbaa !3
  %call1 = tail call %struct.ossl_cmp_msg_st* @load_pkimsg(i8* noundef %0, %struct.ossl_lib_ctx_st* noundef %1) #5
  %msg = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %call, i64 0, i32 2
  store %struct.ossl_cmp_msg_st* %call1, %struct.ossl_cmp_msg_st** %msg, align 8, !tbaa !7
  %2 = bitcast %struct.ossl_cmp_msg_st* %call1 to i8*
  %call2 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0), i32 noundef 146, i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.58, i64 0, i64 0), i8* noundef %2) #5
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %cleanup.sink.split, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %call3 = tail call %struct.X509_algor_st* @X509_ALGOR_new() #5
  %3 = load %struct.ossl_cmp_msg_st*, %struct.ossl_cmp_msg_st** %msg, align 8, !tbaa !7
  %header = getelementptr inbounds %struct.ossl_cmp_msg_st, %struct.ossl_cmp_msg_st* %3, i64 0, i32 0
  %4 = load %struct.ossl_cmp_pkiheader_st*, %struct.ossl_cmp_pkiheader_st** %header, align 8, !tbaa !10
  %protectionAlg = getelementptr inbounds %struct.ossl_cmp_pkiheader_st, %struct.ossl_cmp_pkiheader_st* %4, i64 0, i32 4
  store %struct.X509_algor_st* %call3, %struct.X509_algor_st** %protectionAlg, align 8, !tbaa !12
  %5 = bitcast %struct.X509_algor_st* %call3 to i8*
  %call5 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0), i32 noundef 148, i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.59, i64 0, i64 0), i8* noundef %5) #5
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %cleanup.sink.split, label %if.then10

if.then10:                                        ; preds = %lor.lhs.false
  %call11 = tail call fastcc i32 @execute_calc_protection_fails_test(%struct.test_fixture* noundef nonnull %call) #6
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %lor.lhs.false, %if.end, %if.then10
  %retval.0.ph = phi i32 [ %call11, %if.then10 ], [ 0, %if.end ], [ 0, %lor.lhs.false ]
  tail call fastcc void @tear_down(%struct.test_fixture* noundef nonnull %call) #6
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_cmp_calc_protection_pkey() #0 {
entry:
  %call = tail call fastcc %struct.test_fixture* @set_up(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.41, i64 0, i64 0)) #6
  %cmp = icmp eq %struct.test_fixture* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %0 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** @loadedpubkey, align 8, !tbaa !3
  %pubkey = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %call, i64 0, i32 4
  store %struct.evp_pkey_st* %0, %struct.evp_pkey_st** %pubkey, align 8, !tbaa !14
  %cmp_ctx = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %call, i64 0, i32 1
  %1 = load %struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_ctx_st** %cmp_ctx, align 8, !tbaa !15
  %2 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** @loadedprivkey, align 8, !tbaa !3
  %call1 = tail call i32 @OSSL_CMP_CTX_set1_pkey(%struct.ossl_cmp_ctx_st* noundef %1, %struct.evp_pkey_st* noundef %2) #5
  %cmp2 = icmp ne i32 %call1, 0
  %conv = zext i1 %cmp2 to i32
  %call3 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0), i32 noundef 161, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.63, i64 0, i64 0), i32 noundef %conv) #5
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %cleanup.sink.split, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %3 = load i8*, i8** @ir_protected_f, align 8, !tbaa !3
  %4 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @libctx, align 8, !tbaa !3
  %call4 = tail call %struct.ossl_cmp_msg_st* @load_pkimsg(i8* noundef %3, %struct.ossl_lib_ctx_st* noundef %4) #5
  %msg = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %call, i64 0, i32 2
  store %struct.ossl_cmp_msg_st* %call4, %struct.ossl_cmp_msg_st** %msg, align 8, !tbaa !7
  %5 = bitcast %struct.ossl_cmp_msg_st* %call4 to i8*
  %call5 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0), i32 noundef 162, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.64, i64 0, i64 0), i8* noundef %5) #5
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %cleanup.sink.split, label %if.then11

if.then11:                                        ; preds = %lor.lhs.false
  %call12 = tail call fastcc i32 @execute_calc_protection_signature_test(%struct.test_fixture* noundef nonnull %call) #6
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %lor.lhs.false, %if.end, %if.then11
  %retval.0.ph = phi i32 [ %call12, %if.then11 ], [ 0, %if.end ], [ 0, %lor.lhs.false ]
  tail call fastcc void @tear_down(%struct.test_fixture* noundef nonnull %call) #6
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_cmp_calc_protection_pbmac() #0 {
entry:
  %sec_insta = alloca [5 x i8], align 1
  %0 = getelementptr inbounds [5 x i8], [5 x i8]* %sec_insta, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 5, i8* nonnull %0) #7
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(5) %0, i8* noundef nonnull align 1 dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @__const.test_cmp_calc_protection_pbmac.sec_insta, i64 0, i64 0), i64 5, i1 false)
  %call = tail call fastcc %struct.test_fixture* @set_up(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.42, i64 0, i64 0)) #6
  %cmp = icmp eq %struct.test_fixture* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %cmp_ctx = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %call, i64 0, i32 1
  %1 = load %struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_ctx_st** %cmp_ctx, align 8, !tbaa !15
  %call1 = call i32 @OSSL_CMP_CTX_set1_secretValue(%struct.ossl_cmp_ctx_st* noundef %1, i8* noundef nonnull %0, i32 noundef 5) #5
  %cmp2 = icmp ne i32 %call1, 0
  %conv = zext i1 %cmp2 to i32
  %call3 = call i32 @test_true(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0), i32 noundef 176, i8* noundef getelementptr inbounds ([78 x i8], [78 x i8]* @.str.72, i64 0, i64 0), i32 noundef %conv) #5
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %cleanup.sink.split, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %2 = load i8*, i8** @ip_PBM_f, align 8, !tbaa !3
  %3 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @libctx, align 8, !tbaa !3
  %call4 = call %struct.ossl_cmp_msg_st* @load_pkimsg(i8* noundef %2, %struct.ossl_lib_ctx_st* noundef %3) #5
  %msg = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %call, i64 0, i32 2
  store %struct.ossl_cmp_msg_st* %call4, %struct.ossl_cmp_msg_st** %msg, align 8, !tbaa !7
  %4 = bitcast %struct.ossl_cmp_msg_st* %call4 to i8*
  %call5 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0), i32 noundef 177, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.73, i64 0, i64 0), i8* noundef %4) #5
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %cleanup.sink.split, label %if.then11

if.then11:                                        ; preds = %lor.lhs.false
  %call12 = call fastcc i32 @execute_calc_protection_pbmac_test(%struct.test_fixture* noundef nonnull %call) #6
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %lor.lhs.false, %if.end, %if.then11
  %retval.0.ph = phi i32 [ %call12, %if.then11 ], [ 0, %if.end ], [ 0, %lor.lhs.false ]
  call fastcc void @tear_down(%struct.test_fixture* noundef nonnull %call) #6
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0i8(i64 5, i8* nonnull %0) #7
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_MSG_protect_with_msg_sig_alg_protection_plus_rsa_key() #0 {
entry:
  %call = tail call fastcc %struct.test_fixture* @set_up(i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @.str.43, i64 0, i64 0)) #6
  %cmp = icmp eq %struct.test_fixture* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %expected = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %call, i64 0, i32 12
  store i32 1, i32* %expected, align 8, !tbaa !16
  %0 = load %struct.ossl_cmp_msg_st*, %struct.ossl_cmp_msg_st** @ir_unprotected, align 8, !tbaa !3
  %call1 = tail call %struct.ossl_cmp_msg_st* @OSSL_CMP_MSG_dup(%struct.ossl_cmp_msg_st* noundef %0) #5
  %msg = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %call, i64 0, i32 2
  store %struct.ossl_cmp_msg_st* %call1, %struct.ossl_cmp_msg_st** %msg, align 8, !tbaa !7
  %1 = bitcast %struct.ossl_cmp_msg_st* %call1 to i8*
  %call2 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0), i32 noundef 213, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.74, i64 0, i64 0), i8* noundef %1) #5
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %cleanup.sink.split, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %cmp_ctx = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %call, i64 0, i32 1
  %2 = load %struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_ctx_st** %cmp_ctx, align 8, !tbaa !15
  %call3 = tail call i32 @OSSL_CMP_CTX_set_option(%struct.ossl_cmp_ctx_st* noundef %2, i32 noundef 30, i32 noundef 0) #5
  %cmp4 = icmp ne i32 %call3, 0
  %conv = zext i1 %cmp4 to i32
  %call5 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0), i32 noundef 214, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.75, i64 0, i64 0), i32 noundef %conv) #5
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %cleanup.sink.split, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %lor.lhs.false
  %3 = load %struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_ctx_st** %cmp_ctx, align 8, !tbaa !15
  %call9 = tail call i32 @OSSL_CMP_CTX_set1_referenceValue(%struct.ossl_cmp_ctx_st* noundef %3, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @rand_data, i64 0, i64 0), i32 noundef 8) #5
  %cmp10 = icmp ne i32 %call9, 0
  %conv11 = zext i1 %cmp10 to i32
  %call12 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0), i32 noundef 220, i8* noundef getelementptr inbounds ([68 x i8], [68 x i8]* @.str.76, i64 0, i64 0), i32 noundef %conv11) #5
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %cleanup.sink.split, label %lor.lhs.false14

lor.lhs.false14:                                  ; preds = %lor.lhs.false7
  %4 = load %struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_ctx_st** %cmp_ctx, align 8, !tbaa !15
  %call16 = tail call i32 @OSSL_CMP_CTX_set1_secretValue(%struct.ossl_cmp_ctx_st* noundef %4, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @rand_data, i64 0, i64 8), i32 noundef 8) #5
  %cmp17 = icmp ne i32 %call16, 0
  %conv18 = zext i1 %cmp17 to i32
  %call19 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0), i32 noundef 223, i8* noundef getelementptr inbounds ([72 x i8], [72 x i8]* @.str.77, i64 0, i64 0), i32 noundef %conv18) #5
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %cleanup.sink.split, label %if.then25

if.then25:                                        ; preds = %lor.lhs.false14
  %call26 = tail call fastcc i32 @execute_MSG_protect_test(%struct.test_fixture* noundef nonnull %call) #6
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %lor.lhs.false14, %lor.lhs.false7, %lor.lhs.false, %if.end, %if.then25
  %retval.0.ph = phi i32 [ %call26, %if.then25 ], [ 0, %if.end ], [ 0, %lor.lhs.false ], [ 0, %lor.lhs.false7 ], [ 0, %lor.lhs.false14 ]
  tail call fastcc void @tear_down(%struct.test_fixture* noundef nonnull %call) #6
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_MSG_protect_with_certificate_and_key() #0 {
entry:
  %call = tail call fastcc %struct.test_fixture* @set_up(i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.44, i64 0, i64 0)) #6
  %cmp = icmp eq %struct.test_fixture* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %expected = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %call, i64 0, i32 12
  store i32 1, i32* %expected, align 8, !tbaa !16
  %0 = load %struct.ossl_cmp_msg_st*, %struct.ossl_cmp_msg_st** @ir_unprotected, align 8, !tbaa !3
  %call1 = tail call %struct.ossl_cmp_msg_st* @OSSL_CMP_MSG_dup(%struct.ossl_cmp_msg_st* noundef %0) #5
  %msg = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %call, i64 0, i32 2
  store %struct.ossl_cmp_msg_st* %call1, %struct.ossl_cmp_msg_st** %msg, align 8, !tbaa !7
  %1 = bitcast %struct.ossl_cmp_msg_st* %call1 to i8*
  %call2 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0), i32 noundef 237, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.74, i64 0, i64 0), i8* noundef %1) #5
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %cleanup.sink.split, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %cmp_ctx = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %call, i64 0, i32 1
  %2 = load %struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_ctx_st** %cmp_ctx, align 8, !tbaa !15
  %call3 = tail call i32 @OSSL_CMP_CTX_set_option(%struct.ossl_cmp_ctx_st* noundef %2, i32 noundef 30, i32 noundef 0) #5
  %cmp4 = icmp ne i32 %call3, 0
  %conv = zext i1 %cmp4 to i32
  %call5 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0), i32 noundef 238, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.75, i64 0, i64 0), i32 noundef %conv) #5
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %cleanup.sink.split, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %lor.lhs.false
  %3 = load %struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_ctx_st** %cmp_ctx, align 8, !tbaa !15
  %4 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** @loadedkey, align 8, !tbaa !3
  %call9 = tail call i32 @OSSL_CMP_CTX_set1_pkey(%struct.ossl_cmp_ctx_st* noundef %3, %struct.evp_pkey_st* noundef %4) #5
  %cmp10 = icmp ne i32 %call9, 0
  %conv11 = zext i1 %cmp10 to i32
  %call12 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0), i32 noundef 239, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.80, i64 0, i64 0), i32 noundef %conv11) #5
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %cleanup.sink.split, label %lor.lhs.false14

lor.lhs.false14:                                  ; preds = %lor.lhs.false7
  %5 = load %struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_ctx_st** %cmp_ctx, align 8, !tbaa !15
  %6 = load %struct.x509_st*, %struct.x509_st** @cert, align 8, !tbaa !3
  %call16 = tail call i32 @OSSL_CMP_CTX_set1_cert(%struct.ossl_cmp_ctx_st* noundef %5, %struct.x509_st* noundef %6) #5
  %cmp17 = icmp ne i32 %call16, 0
  %conv18 = zext i1 %cmp17 to i32
  %call19 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0), i32 noundef 240, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.81, i64 0, i64 0), i32 noundef %conv18) #5
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %cleanup.sink.split, label %if.then25

if.then25:                                        ; preds = %lor.lhs.false14
  %call26 = tail call fastcc i32 @execute_MSG_protect_test(%struct.test_fixture* noundef nonnull %call) #6
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %lor.lhs.false14, %lor.lhs.false7, %lor.lhs.false, %if.end, %if.then25
  %retval.0.ph = phi i32 [ %call26, %if.then25 ], [ 0, %if.end ], [ 0, %lor.lhs.false ], [ 0, %lor.lhs.false7 ], [ 0, %lor.lhs.false14 ]
  tail call fastcc void @tear_down(%struct.test_fixture* noundef nonnull %call) #6
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_MSG_protect_certificate_based_without_cert() #0 {
entry:
  %call = tail call fastcc %struct.test_fixture* @set_up(i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.45, i64 0, i64 0)) #6
  %cmp = icmp eq %struct.test_fixture* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %cmp_ctx = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %call, i64 0, i32 1
  %0 = load %struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_ctx_st** %cmp_ctx, align 8, !tbaa !15
  %expected = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %call, i64 0, i32 12
  store i32 0, i32* %expected, align 8, !tbaa !16
  %1 = load %struct.ossl_cmp_msg_st*, %struct.ossl_cmp_msg_st** @ir_unprotected, align 8, !tbaa !3
  %call1 = tail call %struct.ossl_cmp_msg_st* @OSSL_CMP_MSG_dup(%struct.ossl_cmp_msg_st* noundef %1) #5
  %msg = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %call, i64 0, i32 2
  store %struct.ossl_cmp_msg_st* %call1, %struct.ossl_cmp_msg_st** %msg, align 8, !tbaa !7
  %2 = bitcast %struct.ossl_cmp_msg_st* %call1 to i8*
  %call2 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0), i32 noundef 256, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.74, i64 0, i64 0), i8* noundef %2) #5
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end14.thread, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %call3 = tail call i32 @OSSL_CMP_CTX_set_option(%struct.ossl_cmp_ctx_st* noundef %0, i32 noundef 30, i32 noundef 0) #5
  %cmp4 = icmp ne i32 %call3, 0
  %conv = zext i1 %cmp4 to i32
  %call5 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0), i32 noundef 257, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.82, i64 0, i64 0), i32 noundef %conv) #5
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end14.thread, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %lor.lhs.false
  %3 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** @loadedkey, align 8, !tbaa !3
  %call8 = tail call i32 @OSSL_CMP_CTX_set0_newPkey(%struct.ossl_cmp_ctx_st* noundef %0, i32 noundef 1, %struct.evp_pkey_st* noundef %3) #5
  %cmp9 = icmp ne i32 %call8, 0
  %conv10 = zext i1 %cmp9 to i32
  %call11 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0), i32 noundef 258, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.83, i64 0, i64 0), i32 noundef %conv10) #5
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14.thread, label %if.then18

if.end14.thread:                                  ; preds = %if.end, %lor.lhs.false, %lor.lhs.false7
  tail call fastcc void @tear_down(%struct.test_fixture* noundef nonnull %call) #6
  %4 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** @loadedkey, align 8, !tbaa !3
  %call1535 = tail call i32 @EVP_PKEY_up_ref(%struct.evp_pkey_st* noundef %4) #5
  br label %cleanup

if.then18:                                        ; preds = %lor.lhs.false7
  %5 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** @loadedkey, align 8, !tbaa !3
  %call15 = tail call i32 @EVP_PKEY_up_ref(%struct.evp_pkey_st* noundef %5) #5
  %call19 = tail call fastcc i32 @execute_MSG_protect_test(%struct.test_fixture* noundef nonnull %call) #6
  tail call fastcc void @tear_down(%struct.test_fixture* noundef nonnull %call) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end14.thread, %if.then18, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ %call19, %if.then18 ], [ 0, %if.end14.thread ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_MSG_protect_unprotected_request() #0 {
entry:
  %call = tail call fastcc %struct.test_fixture* @set_up(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.46, i64 0, i64 0)) #6
  %cmp = icmp eq %struct.test_fixture* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %expected = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %call, i64 0, i32 12
  store i32 1, i32* %expected, align 8, !tbaa !16
  %0 = load %struct.ossl_cmp_msg_st*, %struct.ossl_cmp_msg_st** @ir_unprotected, align 8, !tbaa !3
  %call1 = tail call %struct.ossl_cmp_msg_st* @OSSL_CMP_MSG_dup(%struct.ossl_cmp_msg_st* noundef %0) #5
  %msg = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %call, i64 0, i32 2
  store %struct.ossl_cmp_msg_st* %call1, %struct.ossl_cmp_msg_st** %msg, align 8, !tbaa !7
  %1 = bitcast %struct.ossl_cmp_msg_st* %call1 to i8*
  %call2 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0), i32 noundef 197, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.74, i64 0, i64 0), i8* noundef %1) #5
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %cleanup.sink.split, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %cmp_ctx = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %call, i64 0, i32 1
  %2 = load %struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_ctx_st** %cmp_ctx, align 8, !tbaa !15
  %call3 = tail call i32 @OSSL_CMP_CTX_set_option(%struct.ossl_cmp_ctx_st* noundef %2, i32 noundef 30, i32 noundef 1) #5
  %cmp4 = icmp ne i32 %call3, 0
  %conv = zext i1 %cmp4 to i32
  %call5 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0), i32 noundef 198, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.84, i64 0, i64 0), i32 noundef %conv) #5
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %cleanup.sink.split, label %if.then11

if.then11:                                        ; preds = %lor.lhs.false
  %call12 = tail call fastcc i32 @execute_MSG_protect_test(%struct.test_fixture* noundef nonnull %call) #6
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %lor.lhs.false, %if.end, %if.then11
  %retval.0.ph = phi i32 [ %call12, %if.then11 ], [ 0, %if.end ], [ 0, %lor.lhs.false ]
  tail call fastcc void @tear_down(%struct.test_fixture* noundef nonnull %call) #6
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_MSG_protect_no_key_no_secret() #0 {
entry:
  %call = tail call fastcc %struct.test_fixture* @set_up(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.47, i64 0, i64 0)) #6
  %cmp = icmp eq %struct.test_fixture* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %expected = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %call, i64 0, i32 12
  store i32 0, i32* %expected, align 8, !tbaa !16
  %0 = load %struct.ossl_cmp_msg_st*, %struct.ossl_cmp_msg_st** @ir_unprotected, align 8, !tbaa !3
  %call1 = tail call %struct.ossl_cmp_msg_st* @OSSL_CMP_MSG_dup(%struct.ossl_cmp_msg_st* noundef %0) #5
  %msg = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %call, i64 0, i32 2
  store %struct.ossl_cmp_msg_st* %call1, %struct.ossl_cmp_msg_st** %msg, align 8, !tbaa !7
  %1 = bitcast %struct.ossl_cmp_msg_st* %call1 to i8*
  %call2 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0), i32 noundef 271, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.74, i64 0, i64 0), i8* noundef %1) #5
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %cleanup.sink.split, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %cmp_ctx = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %call, i64 0, i32 1
  %2 = load %struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_ctx_st** %cmp_ctx, align 8, !tbaa !15
  %call3 = tail call i32 @OSSL_CMP_CTX_set_option(%struct.ossl_cmp_ctx_st* noundef %2, i32 noundef 30, i32 noundef 0) #5
  %cmp4 = icmp ne i32 %call3, 0
  %conv = zext i1 %cmp4 to i32
  %call5 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0), i32 noundef 272, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.75, i64 0, i64 0), i32 noundef %conv) #5
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %cleanup.sink.split, label %if.then11

if.then11:                                        ; preds = %lor.lhs.false
  %call12 = tail call fastcc i32 @execute_MSG_protect_test(%struct.test_fixture* noundef nonnull %call) #6
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %lor.lhs.false, %if.end, %if.then11
  %retval.0.ph = phi i32 [ %call12, %if.then11 ], [ 0, %if.end ], [ 0, %lor.lhs.false ]
  tail call fastcc void @tear_down(%struct.test_fixture* noundef nonnull %call) #6
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_MSG_protect_pbmac_no_sender_with_ref() #0 {
entry:
  %call = tail call fastcc i32 @test_MSG_protect_pbmac_no_sender(i32 noundef 1) #6
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_MSG_protect_pbmac_no_sender_no_ref() #0 {
entry:
  %call = tail call fastcc i32 @test_MSG_protect_pbmac_no_sender(i32 noundef 0) #6
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_MSG_add_extraCerts() #0 {
entry:
  %call = tail call fastcc %struct.test_fixture* @set_up(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.50, i64 0, i64 0)) #6
  %cmp = icmp eq %struct.test_fixture* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %0 = load %struct.ossl_cmp_msg_st*, %struct.ossl_cmp_msg_st** @ir_protected, align 8, !tbaa !3
  %call1 = tail call %struct.ossl_cmp_msg_st* @OSSL_CMP_MSG_dup(%struct.ossl_cmp_msg_st* noundef %0) #5
  %msg = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %call, i64 0, i32 2
  store %struct.ossl_cmp_msg_st* %call1, %struct.ossl_cmp_msg_st** %msg, align 8, !tbaa !7
  %1 = bitcast %struct.ossl_cmp_msg_st* %call1 to i8*
  %call2 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0), i32 noundef 321, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.85, i64 0, i64 0), i8* noundef %1) #5
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %cleanup.sink.split, label %if.then6

if.then6:                                         ; preds = %if.end
  %call7 = tail call fastcc i32 @execute_MSG_add_extraCerts_test(%struct.test_fixture* noundef nonnull %call) #6
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end, %if.then6
  %retval.0.ph = phi i32 [ %call7, %if.then6 ], [ 0, %if.end ]
  tail call fastcc void @tear_down(%struct.test_fixture* noundef nonnull %call) #6
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_cmp_build_cert_chain() #0 {
entry:
  %call = tail call fastcc %struct.test_fixture* @set_up(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.51, i64 0, i64 0)) #6
  %cmp = icmp eq %struct.test_fixture* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %expected = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %call, i64 0, i32 12
  store i32 1, i32* %expected, align 8, !tbaa !16
  %with_ss = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %call, i64 0, i32 10
  store i32 0, i32* %with_ss, align 8, !tbaa !17
  %0 = load %struct.x509_st*, %struct.x509_st** @endentity2, align 8, !tbaa !3
  %cert = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %call, i64 0, i32 7
  store %struct.x509_st* %0, %struct.x509_st** %cert, align 8, !tbaa !18
  %call1 = tail call %struct.stack_st* @OPENSSL_sk_new_null() #5
  %certs = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %call, i64 0, i32 8
  %1 = bitcast %struct.stack_st_X509** %certs to %struct.stack_st**
  store %struct.stack_st* %call1, %struct.stack_st** %1, align 8, !tbaa !19
  %2 = bitcast %struct.stack_st* %call1 to i8*
  %call2 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0), i32 noundef 371, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.87, i64 0, i64 0), i8* noundef %2) #5
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end51.thread, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %call3 = tail call %struct.stack_st* @OPENSSL_sk_new_null() #5
  %chain = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %call, i64 0, i32 9
  %3 = bitcast %struct.stack_st_X509** %chain to %struct.stack_st**
  store %struct.stack_st* %call3, %struct.stack_st** %3, align 8, !tbaa !20
  %4 = bitcast %struct.stack_st* %call3 to i8*
  %call4 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0), i32 noundef 372, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.88, i64 0, i64 0), i8* noundef %4) #5
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end51.thread, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %5 = load %struct.stack_st_X509*, %struct.stack_st_X509** %certs, align 8, !tbaa !19
  %call8 = tail call fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef %5) #6
  %6 = load i8*, i8** bitcast (%struct.x509_st** @endentity1 to i8**), align 8, !tbaa !3
  %call10 = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call8, i8* noundef %6) #5
  %cmp11 = icmp ne i32 %call10, 0
  %conv = zext i1 %cmp11 to i32
  %call12 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0), i32 noundef 373, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.89, i64 0, i64 0), i32 noundef %conv) #5
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end51.thread, label %lor.lhs.false14

lor.lhs.false14:                                  ; preds = %lor.lhs.false6
  %7 = load %struct.stack_st_X509*, %struct.stack_st_X509** %certs, align 8, !tbaa !19
  %call16 = tail call fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef %7) #6
  %8 = load i8*, i8** bitcast (%struct.x509_st** @root to i8**), align 8, !tbaa !3
  %call18 = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call16, i8* noundef %8) #5
  %cmp19 = icmp ne i32 %call18, 0
  %conv20 = zext i1 %cmp19 to i32
  %call21 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0), i32 noundef 374, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.90, i64 0, i64 0), i32 noundef %conv20) #5
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end51.thread, label %lor.lhs.false23

lor.lhs.false23:                                  ; preds = %lor.lhs.false14
  %9 = load %struct.stack_st_X509*, %struct.stack_st_X509** %certs, align 8, !tbaa !19
  %call25 = tail call fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef %9) #6
  %10 = load i8*, i8** bitcast (%struct.x509_st** @intermediate to i8**), align 8, !tbaa !3
  %call27 = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call25, i8* noundef %10) #5
  %cmp28 = icmp ne i32 %call27, 0
  %conv29 = zext i1 %cmp28 to i32
  %call30 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0), i32 noundef 375, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.91, i64 0, i64 0), i32 noundef %conv29) #5
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end51.thread, label %lor.lhs.false32

lor.lhs.false32:                                  ; preds = %lor.lhs.false23
  %11 = load %struct.stack_st_X509*, %struct.stack_st_X509** %chain, align 8, !tbaa !20
  %call34 = tail call fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef %11) #6
  %12 = load i8*, i8** bitcast (%struct.x509_st** @endentity2 to i8**), align 8, !tbaa !3
  %call36 = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call34, i8* noundef %12) #5
  %cmp37 = icmp ne i32 %call36, 0
  %conv38 = zext i1 %cmp37 to i32
  %call39 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0), i32 noundef 376, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.92, i64 0, i64 0), i32 noundef %conv38) #5
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.end51.thread, label %lor.lhs.false41

lor.lhs.false41:                                  ; preds = %lor.lhs.false32
  %13 = load %struct.stack_st_X509*, %struct.stack_st_X509** %chain, align 8, !tbaa !20
  %call43 = tail call fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef %13) #6
  %14 = load i8*, i8** bitcast (%struct.x509_st** @intermediate to i8**), align 8, !tbaa !3
  %call45 = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call43, i8* noundef %14) #5
  %cmp46 = icmp ne i32 %call45, 0
  %conv47 = zext i1 %cmp46 to i32
  %call48 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0), i32 noundef 377, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.93, i64 0, i64 0), i32 noundef %conv47) #5
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.end51.thread, label %if.then54

if.end51.thread:                                  ; preds = %if.end, %lor.lhs.false, %lor.lhs.false6, %lor.lhs.false14, %lor.lhs.false23, %lor.lhs.false32, %lor.lhs.false41
  tail call fastcc void @tear_down(%struct.test_fixture* noundef nonnull %call) #6
  br label %if.end69

if.then54:                                        ; preds = %lor.lhs.false41
  %call55 = tail call fastcc i32 @execute_cmp_build_cert_chain_test(%struct.test_fixture* noundef nonnull %call) #6
  store i32 1, i32* %with_ss, align 8, !tbaa !17
  %tobool57.not = icmp eq i32 %call55, 0
  br i1 %tobool57.not, label %if.end69, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then54
  %15 = load %struct.stack_st_X509*, %struct.stack_st_X509** %chain, align 8, !tbaa !20
  %call59 = tail call fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef %15) #6
  %16 = load i8*, i8** bitcast (%struct.x509_st** @root to i8**), align 8, !tbaa !3
  %call61 = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call59, i8* noundef %16) #5
  %cmp62 = icmp ne i32 %call61, 0
  %conv63 = zext i1 %cmp62 to i32
  %call64 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0), i32 noundef 384, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.94, i64 0, i64 0), i32 noundef %conv63) #5
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %if.end69, label %if.then66

if.then66:                                        ; preds = %land.lhs.true
  %call67 = tail call fastcc i32 @execute_cmp_build_cert_chain_test(%struct.test_fixture* noundef nonnull %call) #6
  br label %if.end69

if.end69:                                         ; preds = %if.end51.thread, %if.then54, %land.lhs.true, %if.then66
  %fixture.093 = phi %struct.test_fixture* [ %call, %if.then66 ], [ %call, %land.lhs.true ], [ %call, %if.then54 ], [ null, %if.end51.thread ]
  %result.0 = phi i32 [ %call67, %if.then66 ], [ %call55, %land.lhs.true ], [ 0, %if.then54 ], [ 0, %if.end51.thread ]
  tail call fastcc void @tear_down(%struct.test_fixture* noundef %fixture.093) #6
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end69
  %retval.0 = phi i32 [ %result.0, %if.end69 ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_cmp_build_cert_chain_only_root() #0 {
entry:
  %call = tail call fastcc %struct.test_fixture* @set_up(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.52, i64 0, i64 0)) #6
  %cmp = icmp eq %struct.test_fixture* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %expected = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %call, i64 0, i32 12
  store i32 1, i32* %expected, align 8, !tbaa !16
  %with_ss = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %call, i64 0, i32 10
  store i32 0, i32* %with_ss, align 8, !tbaa !17
  %0 = load %struct.x509_st*, %struct.x509_st** @root, align 8, !tbaa !3
  %cert = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %call, i64 0, i32 7
  store %struct.x509_st* %0, %struct.x509_st** %cert, align 8, !tbaa !18
  %call1 = tail call %struct.stack_st* @OPENSSL_sk_new_null() #5
  %certs = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %call, i64 0, i32 8
  %1 = bitcast %struct.stack_st_X509** %certs to %struct.stack_st**
  store %struct.stack_st* %call1, %struct.stack_st** %1, align 8, !tbaa !19
  %2 = bitcast %struct.stack_st* %call1 to i8*
  %call2 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0), i32 noundef 434, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.87, i64 0, i64 0), i8* noundef %2) #5
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %cleanup.sink.split, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %call3 = tail call %struct.stack_st* @OPENSSL_sk_new_null() #5
  %chain = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %call, i64 0, i32 9
  %3 = bitcast %struct.stack_st_X509** %chain to %struct.stack_st**
  store %struct.stack_st* %call3, %struct.stack_st** %3, align 8, !tbaa !20
  %4 = bitcast %struct.stack_st* %call3 to i8*
  %call4 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0), i32 noundef 435, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.88, i64 0, i64 0), i8* noundef %4) #5
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %cleanup.sink.split, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %5 = load %struct.stack_st_X509*, %struct.stack_st_X509** %certs, align 8, !tbaa !19
  %call8 = tail call fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef %5) #6
  %6 = load i8*, i8** bitcast (%struct.x509_st** @root to i8**), align 8, !tbaa !3
  %call10 = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call8, i8* noundef %6) #5
  %cmp11 = icmp ne i32 %call10, 0
  %conv = zext i1 %cmp11 to i32
  %call12 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0), i32 noundef 436, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.90, i64 0, i64 0), i32 noundef %conv) #5
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %cleanup.sink.split, label %lor.lhs.false14

lor.lhs.false14:                                  ; preds = %lor.lhs.false6
  %7 = load %struct.stack_st_X509*, %struct.stack_st_X509** %chain, align 8, !tbaa !20
  %call16 = tail call fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef %7) #6
  %8 = load i8*, i8** bitcast (%struct.x509_st** @root to i8**), align 8, !tbaa !3
  %call18 = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call16, i8* noundef %8) #5
  %cmp19 = icmp ne i32 %call18, 0
  %conv20 = zext i1 %cmp19 to i32
  %call21 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0), i32 noundef 437, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.94, i64 0, i64 0), i32 noundef %conv20) #5
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %cleanup.sink.split, label %if.then27

if.then27:                                        ; preds = %lor.lhs.false14
  %call28 = tail call fastcc i32 @execute_cmp_build_cert_chain_test(%struct.test_fixture* noundef nonnull %call) #6
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %lor.lhs.false14, %lor.lhs.false6, %lor.lhs.false, %if.end, %if.then27
  %retval.0.ph = phi i32 [ %call28, %if.then27 ], [ 0, %if.end ], [ 0, %lor.lhs.false ], [ 0, %lor.lhs.false6 ], [ 0, %lor.lhs.false14 ]
  tail call fastcc void @tear_down(%struct.test_fixture* noundef nonnull %call) #6
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_cmp_build_cert_chain_no_root() #0 {
entry:
  %call = tail call fastcc %struct.test_fixture* @set_up(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.53, i64 0, i64 0)) #6
  %cmp = icmp eq %struct.test_fixture* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %expected = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %call, i64 0, i32 12
  store i32 1, i32* %expected, align 8, !tbaa !16
  %with_ss = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %call, i64 0, i32 10
  store i32 0, i32* %with_ss, align 8, !tbaa !17
  %0 = load %struct.x509_st*, %struct.x509_st** @endentity2, align 8, !tbaa !3
  %cert = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %call, i64 0, i32 7
  store %struct.x509_st* %0, %struct.x509_st** %cert, align 8, !tbaa !18
  %call1 = tail call %struct.stack_st* @OPENSSL_sk_new_null() #5
  %certs = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %call, i64 0, i32 8
  %1 = bitcast %struct.stack_st_X509** %certs to %struct.stack_st**
  store %struct.stack_st* %call1, %struct.stack_st** %1, align 8, !tbaa !19
  %2 = bitcast %struct.stack_st* %call1 to i8*
  %call2 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0), i32 noundef 415, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.87, i64 0, i64 0), i8* noundef %2) #5
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %cleanup.sink.split, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %call3 = tail call %struct.stack_st* @OPENSSL_sk_new_null() #5
  %chain = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %call, i64 0, i32 9
  %3 = bitcast %struct.stack_st_X509** %chain to %struct.stack_st**
  store %struct.stack_st* %call3, %struct.stack_st** %3, align 8, !tbaa !20
  %4 = bitcast %struct.stack_st* %call3 to i8*
  %call4 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0), i32 noundef 416, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.88, i64 0, i64 0), i8* noundef %4) #5
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %cleanup.sink.split, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %5 = load %struct.stack_st_X509*, %struct.stack_st_X509** %certs, align 8, !tbaa !19
  %call8 = tail call fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef %5) #6
  %6 = load i8*, i8** bitcast (%struct.x509_st** @endentity1 to i8**), align 8, !tbaa !3
  %call10 = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call8, i8* noundef %6) #5
  %cmp11 = icmp ne i32 %call10, 0
  %conv = zext i1 %cmp11 to i32
  %call12 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0), i32 noundef 417, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.89, i64 0, i64 0), i32 noundef %conv) #5
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %cleanup.sink.split, label %lor.lhs.false14

lor.lhs.false14:                                  ; preds = %lor.lhs.false6
  %7 = load %struct.stack_st_X509*, %struct.stack_st_X509** %certs, align 8, !tbaa !19
  %call16 = tail call fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef %7) #6
  %8 = load i8*, i8** bitcast (%struct.x509_st** @intermediate to i8**), align 8, !tbaa !3
  %call18 = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call16, i8* noundef %8) #5
  %cmp19 = icmp ne i32 %call18, 0
  %conv20 = zext i1 %cmp19 to i32
  %call21 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0), i32 noundef 418, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.91, i64 0, i64 0), i32 noundef %conv20) #5
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %cleanup.sink.split, label %lor.lhs.false23

lor.lhs.false23:                                  ; preds = %lor.lhs.false14
  %9 = load %struct.stack_st_X509*, %struct.stack_st_X509** %chain, align 8, !tbaa !20
  %call25 = tail call fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef %9) #6
  %10 = load i8*, i8** bitcast (%struct.x509_st** @endentity2 to i8**), align 8, !tbaa !3
  %call27 = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call25, i8* noundef %10) #5
  %cmp28 = icmp ne i32 %call27, 0
  %conv29 = zext i1 %cmp28 to i32
  %call30 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0), i32 noundef 419, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.92, i64 0, i64 0), i32 noundef %conv29) #5
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %cleanup.sink.split, label %lor.lhs.false32

lor.lhs.false32:                                  ; preds = %lor.lhs.false23
  %11 = load %struct.stack_st_X509*, %struct.stack_st_X509** %chain, align 8, !tbaa !20
  %call34 = tail call fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef %11) #6
  %12 = load i8*, i8** bitcast (%struct.x509_st** @intermediate to i8**), align 8, !tbaa !3
  %call36 = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call34, i8* noundef %12) #5
  %cmp37 = icmp ne i32 %call36, 0
  %conv38 = zext i1 %cmp37 to i32
  %call39 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0), i32 noundef 420, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.93, i64 0, i64 0), i32 noundef %conv38) #5
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %cleanup.sink.split, label %if.then45

if.then45:                                        ; preds = %lor.lhs.false32
  %call46 = tail call fastcc i32 @execute_cmp_build_cert_chain_test(%struct.test_fixture* noundef nonnull %call) #6
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %lor.lhs.false32, %lor.lhs.false23, %lor.lhs.false14, %lor.lhs.false6, %lor.lhs.false, %if.end, %if.then45
  %retval.0.ph = phi i32 [ %call46, %if.then45 ], [ 0, %if.end ], [ 0, %lor.lhs.false ], [ 0, %lor.lhs.false6 ], [ 0, %lor.lhs.false14 ], [ 0, %lor.lhs.false23 ], [ 0, %lor.lhs.false32 ]
  tail call fastcc void @tear_down(%struct.test_fixture* noundef nonnull %call) #6
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_cmp_build_cert_chain_missing_intermediate() #0 {
entry:
  %call = tail call fastcc %struct.test_fixture* @set_up(i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.54, i64 0, i64 0)) #6
  %cmp = icmp eq %struct.test_fixture* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %expected = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %call, i64 0, i32 12
  store i32 0, i32* %expected, align 8, !tbaa !16
  %with_ss = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %call, i64 0, i32 10
  store i32 0, i32* %with_ss, align 8, !tbaa !17
  %0 = load %struct.x509_st*, %struct.x509_st** @endentity2, align 8, !tbaa !3
  %cert = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %call, i64 0, i32 7
  store %struct.x509_st* %0, %struct.x509_st** %cert, align 8, !tbaa !18
  %call1 = tail call %struct.stack_st* @OPENSSL_sk_new_null() #5
  %certs = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %call, i64 0, i32 8
  %1 = bitcast %struct.stack_st_X509** %certs to %struct.stack_st**
  store %struct.stack_st* %call1, %struct.stack_st** %1, align 8, !tbaa !19
  %2 = bitcast %struct.stack_st* %call1 to i8*
  %call2 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0), i32 noundef 397, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.87, i64 0, i64 0), i8* noundef %2) #5
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %cleanup.sink.split, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %call3 = tail call %struct.stack_st* @OPENSSL_sk_new_null() #5
  %chain = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %call, i64 0, i32 9
  %3 = bitcast %struct.stack_st_X509** %chain to %struct.stack_st**
  store %struct.stack_st* %call3, %struct.stack_st** %3, align 8, !tbaa !20
  %4 = bitcast %struct.stack_st* %call3 to i8*
  %call4 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0), i32 noundef 398, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.88, i64 0, i64 0), i8* noundef %4) #5
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %cleanup.sink.split, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %5 = load %struct.stack_st_X509*, %struct.stack_st_X509** %certs, align 8, !tbaa !19
  %call8 = tail call fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef %5) #6
  %6 = load i8*, i8** bitcast (%struct.x509_st** @endentity1 to i8**), align 8, !tbaa !3
  %call10 = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call8, i8* noundef %6) #5
  %cmp11 = icmp ne i32 %call10, 0
  %conv = zext i1 %cmp11 to i32
  %call12 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0), i32 noundef 399, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.89, i64 0, i64 0), i32 noundef %conv) #5
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %cleanup.sink.split, label %lor.lhs.false14

lor.lhs.false14:                                  ; preds = %lor.lhs.false6
  %7 = load %struct.stack_st_X509*, %struct.stack_st_X509** %certs, align 8, !tbaa !19
  %call16 = tail call fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef %7) #6
  %8 = load i8*, i8** bitcast (%struct.x509_st** @root to i8**), align 8, !tbaa !3
  %call18 = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call16, i8* noundef %8) #5
  %cmp19 = icmp ne i32 %call18, 0
  %conv20 = zext i1 %cmp19 to i32
  %call21 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0), i32 noundef 400, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.90, i64 0, i64 0), i32 noundef %conv20) #5
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %cleanup.sink.split, label %lor.lhs.false23

lor.lhs.false23:                                  ; preds = %lor.lhs.false14
  %9 = load %struct.stack_st_X509*, %struct.stack_st_X509** %chain, align 8, !tbaa !20
  %call25 = tail call fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef %9) #6
  %10 = load i8*, i8** bitcast (%struct.x509_st** @endentity2 to i8**), align 8, !tbaa !3
  %call27 = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call25, i8* noundef %10) #5
  %cmp28 = icmp ne i32 %call27, 0
  %conv29 = zext i1 %cmp28 to i32
  %call30 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0), i32 noundef 401, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.92, i64 0, i64 0), i32 noundef %conv29) #5
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %cleanup.sink.split, label %if.then36

if.then36:                                        ; preds = %lor.lhs.false23
  %call37 = tail call fastcc i32 @execute_cmp_build_cert_chain_test(%struct.test_fixture* noundef nonnull %call) #6
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %lor.lhs.false23, %lor.lhs.false14, %lor.lhs.false6, %lor.lhs.false, %if.end, %if.then36
  %retval.0.ph = phi i32 [ %call37, %if.then36 ], [ 0, %if.end ], [ 0, %lor.lhs.false ], [ 0, %lor.lhs.false6 ], [ 0, %lor.lhs.false14 ], [ 0, %lor.lhs.false23 ]
  tail call fastcc void @tear_down(%struct.test_fixture* noundef nonnull %call) #6
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_cmp_build_cert_chain_no_certs() #0 {
entry:
  %call = tail call fastcc %struct.test_fixture* @set_up(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.55, i64 0, i64 0)) #6
  %cmp = icmp eq %struct.test_fixture* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %expected = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %call, i64 0, i32 12
  store i32 0, i32* %expected, align 8, !tbaa !16
  %with_ss = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %call, i64 0, i32 10
  store i32 0, i32* %with_ss, align 8, !tbaa !17
  %0 = load %struct.x509_st*, %struct.x509_st** @endentity2, align 8, !tbaa !3
  %cert = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %call, i64 0, i32 7
  store %struct.x509_st* %0, %struct.x509_st** %cert, align 8, !tbaa !18
  %call1 = tail call %struct.stack_st* @OPENSSL_sk_new_null() #5
  %certs = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %call, i64 0, i32 8
  %1 = bitcast %struct.stack_st_X509** %certs to %struct.stack_st**
  store %struct.stack_st* %call1, %struct.stack_st** %1, align 8, !tbaa !19
  %2 = bitcast %struct.stack_st* %call1 to i8*
  %call2 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0), i32 noundef 451, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.87, i64 0, i64 0), i8* noundef %2) #5
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %cleanup.sink.split, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %call3 = tail call %struct.stack_st* @OPENSSL_sk_new_null() #5
  %chain = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %call, i64 0, i32 9
  %3 = bitcast %struct.stack_st_X509** %chain to %struct.stack_st**
  store %struct.stack_st* %call3, %struct.stack_st** %3, align 8, !tbaa !20
  %4 = bitcast %struct.stack_st* %call3 to i8*
  %call4 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0), i32 noundef 452, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.88, i64 0, i64 0), i8* noundef %4) #5
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %cleanup.sink.split, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %5 = load %struct.stack_st_X509*, %struct.stack_st_X509** %chain, align 8, !tbaa !20
  %call8 = tail call fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef %5) #6
  %6 = load i8*, i8** bitcast (%struct.x509_st** @endentity2 to i8**), align 8, !tbaa !3
  %call10 = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call8, i8* noundef %6) #5
  %cmp11 = icmp ne i32 %call10, 0
  %conv = zext i1 %cmp11 to i32
  %call12 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0), i32 noundef 453, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.92, i64 0, i64 0), i32 noundef %conv) #5
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %cleanup.sink.split, label %if.then18

if.then18:                                        ; preds = %lor.lhs.false6
  %call19 = tail call fastcc i32 @execute_cmp_build_cert_chain_test(%struct.test_fixture* noundef nonnull %call) #6
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %lor.lhs.false6, %lor.lhs.false, %if.end, %if.then18
  %retval.0.ph = phi i32 [ %call19, %if.then18 ], [ 0, %if.end ], [ 0, %lor.lhs.false ], [ 0, %lor.lhs.false6 ]
  tail call fastcc void @tear_down(%struct.test_fixture* noundef nonnull %call) #6
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_X509_STORE() #0 {
entry:
  %call = tail call fastcc %struct.test_fixture* @set_up(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.56, i64 0, i64 0)) #6
  %cmp = icmp eq %struct.test_fixture* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %callback_arg = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %call, i64 0, i32 11
  store i32 0, i32* %callback_arg, align 4, !tbaa !21
  %call1 = tail call %struct.stack_st* @OPENSSL_sk_new_null() #5
  %certs = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %call, i64 0, i32 8
  %0 = bitcast %struct.stack_st_X509** %certs to %struct.stack_st**
  store %struct.stack_st* %call1, %struct.stack_st** %0, align 8, !tbaa !19
  %1 = bitcast %struct.stack_st* %call1 to i8*
  %call2 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0), i32 noundef 487, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.87, i64 0, i64 0), i8* noundef %1) #5
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %cleanup.sink.split, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %2 = load %struct.stack_st_X509*, %struct.stack_st_X509** %certs, align 8, !tbaa !19
  %call4 = tail call fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef %2) #6
  %3 = load i8*, i8** bitcast (%struct.x509_st** @endentity1 to i8**), align 8, !tbaa !3
  %call6 = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call4, i8* noundef %3) #5
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %cleanup.sink.split, label %lor.lhs.false8

lor.lhs.false8:                                   ; preds = %lor.lhs.false
  %4 = load %struct.stack_st_X509*, %struct.stack_st_X509** %certs, align 8, !tbaa !19
  %call10 = tail call fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef %4) #6
  %5 = load i8*, i8** bitcast (%struct.x509_st** @endentity2 to i8**), align 8, !tbaa !3
  %call12 = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call10, i8* noundef %5) #5
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %cleanup.sink.split, label %lor.lhs.false14

lor.lhs.false14:                                  ; preds = %lor.lhs.false8
  %6 = load %struct.stack_st_X509*, %struct.stack_st_X509** %certs, align 8, !tbaa !19
  %call16 = tail call fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef %6) #6
  %7 = load i8*, i8** bitcast (%struct.x509_st** @root to i8**), align 8, !tbaa !3
  %call18 = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call16, i8* noundef %7) #5
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %cleanup.sink.split, label %lor.lhs.false20

lor.lhs.false20:                                  ; preds = %lor.lhs.false14
  %8 = load %struct.stack_st_X509*, %struct.stack_st_X509** %certs, align 8, !tbaa !19
  %call22 = tail call fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef %8) #6
  %9 = load i8*, i8** bitcast (%struct.x509_st** @intermediate to i8**), align 8, !tbaa !3
  %call24 = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call22, i8* noundef %9) #5
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %cleanup.sink.split, label %lor.lhs.false26

lor.lhs.false26:                                  ; preds = %lor.lhs.false20
  %10 = load %struct.stack_st_X509*, %struct.stack_st_X509** %certs, align 8, !tbaa !19
  %call28 = tail call fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef %10) #6
  %call29 = tail call %struct.stack_st* @OPENSSL_sk_dup(%struct.stack_st* noundef %call28) #5
  %chain = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %call, i64 0, i32 9
  %11 = bitcast %struct.stack_st_X509** %chain to %struct.stack_st**
  store %struct.stack_st* %call29, %struct.stack_st** %11, align 8, !tbaa !20
  %12 = bitcast %struct.stack_st* %call29 to i8*
  %call30 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0), i32 noundef 492, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.100, i64 0, i64 0), i8* noundef %12) #5
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %cleanup.sink.split, label %if.then35

if.then35:                                        ; preds = %lor.lhs.false26
  %call36 = tail call fastcc i32 @execute_X509_STORE_test(%struct.test_fixture* noundef nonnull %call) #6
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %lor.lhs.false26, %lor.lhs.false20, %lor.lhs.false14, %lor.lhs.false8, %lor.lhs.false, %if.end, %if.then35
  %retval.0.ph = phi i32 [ %call36, %if.then35 ], [ 0, %if.end ], [ 0, %lor.lhs.false ], [ 0, %lor.lhs.false8 ], [ 0, %lor.lhs.false14 ], [ 0, %lor.lhs.false20 ], [ 0, %lor.lhs.false26 ]
  tail call fastcc void @tear_down(%struct.test_fixture* noundef nonnull %call) #6
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_X509_STORE_only_self_issued() #0 {
entry:
  %call = tail call fastcc %struct.test_fixture* @set_up(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.57, i64 0, i64 0)) #6
  %cmp = icmp eq %struct.test_fixture* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call %struct.stack_st* @OPENSSL_sk_new_null() #5
  %certs = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %call, i64 0, i32 8
  %0 = bitcast %struct.stack_st_X509** %certs to %struct.stack_st**
  store %struct.stack_st* %call1, %struct.stack_st** %0, align 8, !tbaa !19
  %call2 = tail call %struct.stack_st* @OPENSSL_sk_new_null() #5
  %chain = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %call, i64 0, i32 9
  %1 = bitcast %struct.stack_st_X509** %chain to %struct.stack_st**
  store %struct.stack_st* %call2, %struct.stack_st** %1, align 8, !tbaa !20
  %callback_arg = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %call, i64 0, i32 11
  store i32 1, i32* %callback_arg, align 4, !tbaa !21
  %2 = load %struct.stack_st_X509*, %struct.stack_st_X509** %certs, align 8, !tbaa !19
  %call4 = tail call fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef %2) #6
  %3 = load i8*, i8** bitcast (%struct.x509_st** @endentity1 to i8**), align 8, !tbaa !3
  %call6 = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call4, i8* noundef %3) #5
  %cmp7 = icmp ne i32 %call6, 0
  %conv = zext i1 %cmp7 to i32
  %call8 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0), i32 noundef 506, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.89, i64 0, i64 0), i32 noundef %conv) #5
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %cleanup.sink.split, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %4 = load %struct.stack_st_X509*, %struct.stack_st_X509** %certs, align 8, !tbaa !19
  %call10 = tail call fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef %4) #6
  %5 = load i8*, i8** bitcast (%struct.x509_st** @endentity2 to i8**), align 8, !tbaa !3
  %call12 = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call10, i8* noundef %5) #5
  %cmp13 = icmp ne i32 %call12, 0
  %conv14 = zext i1 %cmp13 to i32
  %call15 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0), i32 noundef 507, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.103, i64 0, i64 0), i32 noundef %conv14) #5
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %cleanup.sink.split, label %lor.lhs.false17

lor.lhs.false17:                                  ; preds = %lor.lhs.false
  %6 = load %struct.stack_st_X509*, %struct.stack_st_X509** %certs, align 8, !tbaa !19
  %call19 = tail call fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef %6) #6
  %7 = load i8*, i8** bitcast (%struct.x509_st** @root to i8**), align 8, !tbaa !3
  %call21 = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call19, i8* noundef %7) #5
  %cmp22 = icmp ne i32 %call21, 0
  %conv23 = zext i1 %cmp22 to i32
  %call24 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0), i32 noundef 508, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.90, i64 0, i64 0), i32 noundef %conv23) #5
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %cleanup.sink.split, label %lor.lhs.false26

lor.lhs.false26:                                  ; preds = %lor.lhs.false17
  %8 = load %struct.stack_st_X509*, %struct.stack_st_X509** %certs, align 8, !tbaa !19
  %call28 = tail call fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef %8) #6
  %9 = load i8*, i8** bitcast (%struct.x509_st** @intermediate to i8**), align 8, !tbaa !3
  %call30 = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call28, i8* noundef %9) #5
  %cmp31 = icmp ne i32 %call30, 0
  %conv32 = zext i1 %cmp31 to i32
  %call33 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0), i32 noundef 509, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.91, i64 0, i64 0), i32 noundef %conv32) #5
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %cleanup.sink.split, label %lor.lhs.false35

lor.lhs.false35:                                  ; preds = %lor.lhs.false26
  %10 = load %struct.stack_st_X509*, %struct.stack_st_X509** %chain, align 8, !tbaa !20
  %call37 = tail call fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef %10) #6
  %11 = load i8*, i8** bitcast (%struct.x509_st** @root to i8**), align 8, !tbaa !3
  %call39 = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call37, i8* noundef %11) #5
  %cmp40 = icmp ne i32 %call39, 0
  %conv41 = zext i1 %cmp40 to i32
  %call42 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0), i32 noundef 510, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.94, i64 0, i64 0), i32 noundef %conv41) #5
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %cleanup.sink.split, label %if.then48

if.then48:                                        ; preds = %lor.lhs.false35
  %call49 = tail call fastcc i32 @execute_X509_STORE_test(%struct.test_fixture* noundef nonnull %call) #6
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %lor.lhs.false35, %lor.lhs.false26, %lor.lhs.false17, %lor.lhs.false, %if.end, %if.then48
  %retval.0.ph = phi i32 [ %call49, %if.then48 ], [ 0, %if.end ], [ 0, %lor.lhs.false ], [ 0, %lor.lhs.false17 ], [ 0, %lor.lhs.false26 ], [ 0, %lor.lhs.false35 ]
  tail call fastcc void @tear_down(%struct.test_fixture* noundef nonnull %call) #6
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.test_fixture* @set_up(i8* noundef %test_case_name) unnamed_addr #0 {
entry:
  %call = tail call i8* @CRYPTO_zalloc(i64 noundef 96, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0), i32 noundef 55) #5
  %0 = bitcast i8* %call to %struct.test_fixture*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0), i32 noundef 55, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.60, i64 0, i64 0), i8* noundef %call) #5
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %test_case_name2 = bitcast i8* %call to i8**
  store i8* %test_case_name, i8** %test_case_name2, align 8, !tbaa !22
  %1 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @libctx, align 8, !tbaa !3
  %call3 = tail call %struct.ossl_cmp_ctx_st* @OSSL_CMP_CTX_new(%struct.ossl_lib_ctx_st* noundef %1, i8* noundef null) #5
  %cmp_ctx = getelementptr inbounds i8, i8* %call, i64 8
  %2 = bitcast i8* %cmp_ctx to %struct.ossl_cmp_ctx_st**
  store %struct.ossl_cmp_ctx_st* %call3, %struct.ossl_cmp_ctx_st** %2, align 8, !tbaa !15
  %3 = bitcast %struct.ossl_cmp_ctx_st* %call3 to i8*
  %call4 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0), i32 noundef 58, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.61, i64 0, i64 0), i8* noundef %3) #5
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then6, label %cleanup

if.then6:                                         ; preds = %if.end
  tail call fastcc void @tear_down(%struct.test_fixture* noundef nonnull %0) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.then6
  %retval.0 = phi %struct.test_fixture* [ null, %if.then6 ], [ null, %entry ], [ %0, %if.end ]
  ret %struct.test_fixture* %retval.0
}

declare dso_local %struct.X509_algor_st* @X509_ALGOR_new() local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @tear_down(%struct.test_fixture* noundef %fixture) unnamed_addr #0 {
entry:
  %cmp_ctx = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %fixture, i64 0, i32 1
  %0 = load %struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_ctx_st** %cmp_ctx, align 8, !tbaa !15
  tail call void @OSSL_CMP_CTX_free(%struct.ossl_cmp_ctx_st* noundef %0) #5
  %msg = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %fixture, i64 0, i32 2
  %1 = load %struct.ossl_cmp_msg_st*, %struct.ossl_cmp_msg_st** %msg, align 8, !tbaa !7
  tail call void @OSSL_CMP_MSG_free(%struct.ossl_cmp_msg_st* noundef %1) #5
  %si = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %fixture, i64 0, i32 3
  %2 = load %struct.ossl_cmp_pkisi_st*, %struct.ossl_cmp_pkisi_st** %si, align 8, !tbaa !23
  tail call void @OSSL_CMP_PKISI_free(%struct.ossl_cmp_pkisi_st* noundef %2) #5
  %mem = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %fixture, i64 0, i32 5
  %3 = load i8*, i8** %mem, align 8, !tbaa !24
  tail call void @CRYPTO_free(i8* noundef %3, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0), i32 noundef 44) #5
  %certs = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %fixture, i64 0, i32 8
  %4 = load %struct.stack_st_X509*, %struct.stack_st_X509** %certs, align 8, !tbaa !19
  %call = tail call fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef %4) #6
  tail call void @OPENSSL_sk_free(%struct.stack_st* noundef %call) #5
  %chain = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %fixture, i64 0, i32 9
  %5 = load %struct.stack_st_X509*, %struct.stack_st_X509** %chain, align 8, !tbaa !20
  %call1 = tail call fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef %5) #6
  tail call void @OPENSSL_sk_free(%struct.stack_st* noundef %call1) #5
  %6 = bitcast %struct.test_fixture* %fixture to i8*
  tail call void @CRYPTO_free(i8* noundef %6, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0), i32 noundef 48) #5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @execute_calc_protection_fails_test(%struct.test_fixture* nocapture noundef readonly %fixture) unnamed_addr #0 {
entry:
  %cmp_ctx = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %fixture, i64 0, i32 1
  %0 = load %struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_ctx_st** %cmp_ctx, align 8, !tbaa !15
  %msg = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %fixture, i64 0, i32 2
  %1 = load %struct.ossl_cmp_msg_st*, %struct.ossl_cmp_msg_st** %msg, align 8, !tbaa !7
  %call = tail call %struct.asn1_string_st* @ossl_cmp_calc_protection(%struct.ossl_cmp_ctx_st* noundef %0, %struct.ossl_cmp_msg_st* noundef %1) #5
  %2 = bitcast %struct.asn1_string_st* %call to i8*
  %call1 = tail call i32 @test_ptr_null(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0), i32 noundef 78, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.62, i64 0, i64 0), i8* noundef %2) #5
  tail call void @ASN1_BIT_STRING_free(%struct.asn1_string_st* noundef %call) #5
  ret i32 %call1
}

declare dso_local i8* @CRYPTO_zalloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local %struct.ossl_cmp_ctx_st* @OSSL_CMP_CTX_new(%struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local void @OSSL_CMP_CTX_free(%struct.ossl_cmp_ctx_st* noundef) local_unnamed_addr #1

declare dso_local void @OSSL_CMP_PKISI_free(%struct.ossl_cmp_pkisi_st* noundef) local_unnamed_addr #1

declare dso_local void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local void @OPENSSL_sk_free(%struct.stack_st* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef readnone %sk) unnamed_addr #2 {
entry:
  %0 = bitcast %struct.stack_st_X509* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare dso_local %struct.asn1_string_st* @ossl_cmp_calc_protection(%struct.ossl_cmp_ctx_st* noundef, %struct.ossl_cmp_msg_st* noundef) local_unnamed_addr #1

declare dso_local i32 @test_ptr_null(i8* noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local void @ASN1_BIT_STRING_free(%struct.asn1_string_st* noundef) local_unnamed_addr #1

declare dso_local i32 @OSSL_CMP_CTX_set1_pkey(%struct.ossl_cmp_ctx_st* noundef, %struct.evp_pkey_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @execute_calc_protection_signature_test(%struct.test_fixture* nocapture noundef readonly %fixture) unnamed_addr #0 {
entry:
  %cmp_ctx = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %fixture, i64 0, i32 1
  %0 = load %struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_ctx_st** %cmp_ctx, align 8, !tbaa !15
  %msg = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %fixture, i64 0, i32 2
  %1 = load %struct.ossl_cmp_msg_st*, %struct.ossl_cmp_msg_st** %msg, align 8, !tbaa !7
  %call = tail call %struct.asn1_string_st* @ossl_cmp_calc_protection(%struct.ossl_cmp_ctx_st* noundef %0, %struct.ossl_cmp_msg_st* noundef %1) #5
  %2 = bitcast %struct.asn1_string_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0), i32 noundef 132, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.62, i64 0, i64 0), i8* noundef %2) #5
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %3 = load %struct.ossl_cmp_msg_st*, %struct.ossl_cmp_msg_st** %msg, align 8, !tbaa !7
  %protection3 = getelementptr inbounds %struct.ossl_cmp_msg_st, %struct.ossl_cmp_msg_st* %3, i64 0, i32 2
  %4 = load %struct.asn1_string_st*, %struct.asn1_string_st** %protection3, align 8, !tbaa !25
  %call4 = tail call i32 @ASN1_STRING_cmp(%struct.asn1_string_st* noundef %call, %struct.asn1_string_st* noundef %4) #5
  %cmp = icmp eq i32 %call4, 0
  %conv = zext i1 %cmp to i32
  %call7 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0), i32 noundef 134, i8* noundef getelementptr inbounds ([59 x i8], [59 x i8]* @.str.65, i64 0, i64 0), i32 noundef %conv) #5
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load %struct.ossl_cmp_msg_st*, %struct.ossl_cmp_msg_st** %msg, align 8, !tbaa !7
  %pubkey = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %fixture, i64 0, i32 4
  %6 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pubkey, align 8, !tbaa !14
  %7 = load %struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_ctx_st** %cmp_ctx, align 8, !tbaa !15
  %digest = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %7, i64 0, i32 37
  %8 = load %struct.evp_md_st*, %struct.evp_md_st** %digest, align 8, !tbaa !26
  %call11 = tail call fastcc i32 @verify_signature(%struct.ossl_cmp_msg_st* noundef %5, %struct.asn1_string_st* noundef %call, %struct.evp_pkey_st* noundef %6, %struct.evp_md_st* noundef %8) #6
  %cmp12 = icmp ne i32 %call11, 0
  %conv13 = zext i1 %cmp12 to i32
  %call14 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0), i32 noundef 137, i8* noundef getelementptr inbounds ([86 x i8], [86 x i8]* @.str.66, i64 0, i64 0), i32 noundef %conv13) #5
  %tobool15 = icmp ne i32 %call14, 0
  %phi.cast = zext i1 %tobool15 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %entry
  %9 = phi i32 [ 0, %land.lhs.true ], [ 0, %entry ], [ %phi.cast, %land.rhs ]
  tail call void @ASN1_BIT_STRING_free(%struct.asn1_string_st* noundef %call) #5
  ret i32 %9
}

declare dso_local i32 @ASN1_STRING_cmp(%struct.asn1_string_st* noundef, %struct.asn1_string_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @verify_signature(%struct.ossl_cmp_msg_st* noundef %msg, %struct.asn1_string_st* nocapture noundef readonly %protection, %struct.evp_pkey_st* noundef %pkey, %struct.evp_md_st* noundef %digest) unnamed_addr #0 {
entry:
  %prot_part = alloca %struct.ossl_cmp_protectedpart_st, align 8
  %prot_part_der = alloca i8*, align 8
  %0 = bitcast %struct.ossl_cmp_protectedpart_st* %prot_part to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #7
  %1 = bitcast i8** %prot_part_der to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #7
  store i8* null, i8** %prot_part_der, align 8, !tbaa !3
  %call = tail call %struct.ossl_cmp_pkiheader_st* @OSSL_CMP_MSG_get0_header(%struct.ossl_cmp_msg_st* noundef %msg) #5
  %header = getelementptr inbounds %struct.ossl_cmp_protectedpart_st, %struct.ossl_cmp_protectedpart_st* %prot_part, i64 0, i32 0
  store %struct.ossl_cmp_pkiheader_st* %call, %struct.ossl_cmp_pkiheader_st** %header, align 8, !tbaa !29
  %body = getelementptr inbounds %struct.ossl_cmp_msg_st, %struct.ossl_cmp_msg_st* %msg, i64 0, i32 1
  %2 = load %struct.ossl_cmp_pkibody_st*, %struct.ossl_cmp_pkibody_st** %body, align 8, !tbaa !31
  %body1 = getelementptr inbounds %struct.ossl_cmp_protectedpart_st, %struct.ossl_cmp_protectedpart_st* %prot_part, i64 0, i32 1
  store %struct.ossl_cmp_pkibody_st* %2, %struct.ossl_cmp_pkibody_st** %body1, align 8, !tbaa !32
  %call2 = call i32 @i2d_OSSL_CMP_PROTECTEDPART(%struct.ossl_cmp_protectedpart_st* noundef nonnull %prot_part, i8** noundef nonnull %prot_part_der) #5
  %call3 = call i32 @test_int_ge(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0), i32 noundef 114, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.67, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.68, i64 0, i64 0), i32 noundef %call2, i32 noundef 0) #5
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %land.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call4 = call %struct.evp_md_ctx_st* @EVP_MD_CTX_new() #5
  %3 = bitcast %struct.evp_md_ctx_st* %call4 to i8*
  %call5 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0), i32 noundef 115, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.69, i64 0, i64 0), i8* noundef %3) #5
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %land.end, label %land.lhs.true7

land.lhs.true7:                                   ; preds = %land.lhs.true
  %call8 = call i32 @EVP_DigestVerifyInit(%struct.evp_md_ctx_st* noundef %call4, %struct.evp_pkey_ctx_st** noundef null, %struct.evp_md_st* noundef %digest, %struct.engine_st* noundef null, %struct.evp_pkey_st* noundef %pkey) #5
  %cmp = icmp ne i32 %call8, 0
  %conv = zext i1 %cmp to i32
  %call9 = call i32 @test_true(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0), i32 noundef 116, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.70, i64 0, i64 0), i32 noundef %conv) #5
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true7
  %data = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %protection, i64 0, i32 2
  %4 = load i8*, i8** %data, align 8, !tbaa !33
  %length = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %protection, i64 0, i32 0
  %5 = load i32, i32* %length, align 8, !tbaa !35
  %conv11 = sext i32 %5 to i64
  %6 = load i8*, i8** %prot_part_der, align 8, !tbaa !3
  %conv12 = sext i32 %call2 to i64
  %call13 = call i32 @EVP_DigestVerify(%struct.evp_md_ctx_st* noundef %call4, i8* noundef %4, i64 noundef %conv11, i8* noundef %6, i64 noundef %conv12) #5
  %call14 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0), i32 noundef 119, i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @.str.71, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.38, i64 0, i64 0), i32 noundef %call13, i32 noundef 1) #5
  %tobool15 = icmp ne i32 %call14, 0
  %phi.cast = zext i1 %tobool15 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true7, %land.lhs.true, %entry
  %ctx.0 = phi %struct.evp_md_ctx_st* [ %call4, %land.rhs ], [ %call4, %land.lhs.true7 ], [ %call4, %land.lhs.true ], [ null, %entry ]
  %7 = phi i32 [ %phi.cast, %land.rhs ], [ 0, %land.lhs.true7 ], [ 0, %land.lhs.true ], [ 0, %entry ]
  call void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef %ctx.0) #5
  %8 = load i8*, i8** %prot_part_der, align 8, !tbaa !3
  call void @CRYPTO_free(i8* noundef %8, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0), i32 noundef 122) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #7
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #7
  ret i32 %7
}

declare dso_local %struct.ossl_cmp_pkiheader_st* @OSSL_CMP_MSG_get0_header(%struct.ossl_cmp_msg_st* noundef) local_unnamed_addr #1

declare dso_local i32 @i2d_OSSL_CMP_PROTECTEDPART(%struct.ossl_cmp_protectedpart_st* noundef, i8** noundef) local_unnamed_addr #1

declare dso_local i32 @test_int_ge(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local %struct.evp_md_ctx_st* @EVP_MD_CTX_new() local_unnamed_addr #1

declare dso_local i32 @EVP_DigestVerifyInit(%struct.evp_md_ctx_st* noundef, %struct.evp_pkey_ctx_st** noundef, %struct.evp_md_st* noundef, %struct.engine_st* noundef, %struct.evp_pkey_st* noundef) local_unnamed_addr #1

declare dso_local i32 @EVP_DigestVerify(%struct.evp_md_ctx_st* noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

declare dso_local void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

declare dso_local i32 @OSSL_CMP_CTX_set1_secretValue(%struct.ossl_cmp_ctx_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @execute_calc_protection_pbmac_test(%struct.test_fixture* nocapture noundef readonly %fixture) unnamed_addr #0 {
entry:
  %cmp_ctx = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %fixture, i64 0, i32 1
  %0 = load %struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_ctx_st** %cmp_ctx, align 8, !tbaa !15
  %msg = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %fixture, i64 0, i32 2
  %1 = load %struct.ossl_cmp_msg_st*, %struct.ossl_cmp_msg_st** %msg, align 8, !tbaa !7
  %call = tail call %struct.asn1_string_st* @ossl_cmp_calc_protection(%struct.ossl_cmp_ctx_st* noundef %0, %struct.ossl_cmp_msg_st* noundef %1) #5
  %2 = bitcast %struct.asn1_string_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0), i32 noundef 88, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.62, i64 0, i64 0), i8* noundef %2) #5
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %3 = load %struct.ossl_cmp_msg_st*, %struct.ossl_cmp_msg_st** %msg, align 8, !tbaa !7
  %protection3 = getelementptr inbounds %struct.ossl_cmp_msg_st, %struct.ossl_cmp_msg_st* %3, i64 0, i32 2
  %4 = load %struct.asn1_string_st*, %struct.asn1_string_st** %protection3, align 8, !tbaa !25
  %call4 = tail call i32 @ASN1_STRING_cmp(%struct.asn1_string_st* noundef %call, %struct.asn1_string_st* noundef %4) #5
  %cmp = icmp eq i32 %call4, 0
  %conv = zext i1 %cmp to i32
  %call7 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0), i32 noundef 90, i8* noundef getelementptr inbounds ([59 x i8], [59 x i8]* @.str.65, i64 0, i64 0), i32 noundef %conv) #5
  %tobool8 = icmp ne i32 %call7, 0
  %phi.cast = zext i1 %tobool8 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %5 = phi i32 [ 0, %entry ], [ %phi.cast, %land.rhs ]
  tail call void @ASN1_BIT_STRING_free(%struct.asn1_string_st* noundef %call) #5
  ret i32 %5
}

declare dso_local %struct.ossl_cmp_msg_st* @OSSL_CMP_MSG_dup(%struct.ossl_cmp_msg_st* noundef) local_unnamed_addr #1

declare dso_local i32 @OSSL_CMP_CTX_set_option(%struct.ossl_cmp_ctx_st* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @OSSL_CMP_CTX_set1_referenceValue(%struct.ossl_cmp_ctx_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @execute_MSG_protect_test(%struct.test_fixture* nocapture noundef readonly %fixture) unnamed_addr #0 {
entry:
  %expected = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %fixture, i64 0, i32 12
  %0 = load i32, i32* %expected, align 8, !tbaa !16
  %cmp_ctx = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %fixture, i64 0, i32 1
  %1 = load %struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_ctx_st** %cmp_ctx, align 8, !tbaa !15
  %msg = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %fixture, i64 0, i32 2
  %2 = load %struct.ossl_cmp_msg_st*, %struct.ossl_cmp_msg_st** %msg, align 8, !tbaa !7
  %call = tail call i32 @ossl_cmp_msg_protect(%struct.ossl_cmp_ctx_st* noundef %1, %struct.ossl_cmp_msg_st* noundef %2) #5
  %call1 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0), i32 noundef 187, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.78, i64 0, i64 0), i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.79, i64 0, i64 0), i32 noundef %0, i32 noundef %call) #5
  ret i32 %call1
}

declare dso_local i32 @ossl_cmp_msg_protect(%struct.ossl_cmp_ctx_st* noundef, %struct.ossl_cmp_msg_st* noundef) local_unnamed_addr #1

declare dso_local i32 @OSSL_CMP_CTX_set1_cert(%struct.ossl_cmp_ctx_st* noundef, %struct.x509_st* noundef) local_unnamed_addr #1

declare dso_local i32 @OSSL_CMP_CTX_set0_newPkey(%struct.ossl_cmp_ctx_st* noundef, i32 noundef, %struct.evp_pkey_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @test_MSG_protect_pbmac_no_sender(i32 noundef %with_ref) unnamed_addr #0 {
entry:
  %call = tail call fastcc %struct.test_fixture* @set_up(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.test_MSG_protect_pbmac_no_sender, i64 0, i64 0)) #6
  %cmp = icmp eq %struct.test_fixture* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %expected = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %call, i64 0, i32 12
  store i32 %with_ref, i32* %expected, align 8, !tbaa !16
  %0 = load %struct.ossl_cmp_msg_st*, %struct.ossl_cmp_msg_st** @ir_unprotected, align 8, !tbaa !3
  %call1 = tail call %struct.ossl_cmp_msg_st* @OSSL_CMP_MSG_dup(%struct.ossl_cmp_msg_st* noundef %0) #5
  %msg = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %call, i64 0, i32 2
  store %struct.ossl_cmp_msg_st* %call1, %struct.ossl_cmp_msg_st** %msg, align 8, !tbaa !7
  %1 = bitcast %struct.ossl_cmp_msg_st* %call1 to i8*
  %call2 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0), i32 noundef 287, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.74, i64 0, i64 0), i8* noundef %1) #5
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %cleanup.sink.split, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %cmp_ctx = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %call, i64 0, i32 1
  %2 = load %struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_ctx_st** %cmp_ctx, align 8, !tbaa !15
  %call3 = tail call i32 @OSSL_CMP_CTX_set_option(%struct.ossl_cmp_ctx_st* noundef %2, i32 noundef 30, i32 noundef 0) #5
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %cleanup.sink.split, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %3 = load %struct.ossl_cmp_msg_st*, %struct.ossl_cmp_msg_st** %msg, align 8, !tbaa !7
  %header = getelementptr inbounds %struct.ossl_cmp_msg_st, %struct.ossl_cmp_msg_st* %3, i64 0, i32 0
  %4 = load %struct.ossl_cmp_pkiheader_st*, %struct.ossl_cmp_pkiheader_st** %header, align 8, !tbaa !10
  %call7 = tail call i32 @ossl_cmp_hdr_set1_sender(%struct.ossl_cmp_pkiheader_st* noundef %4, %struct.X509_name_st* noundef null) #5
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %cleanup.sink.split, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false5
  %5 = load %struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_ctx_st** %cmp_ctx, align 8, !tbaa !15
  %call11 = tail call i32 @OSSL_CMP_CTX_set1_secretValue(%struct.ossl_cmp_ctx_st* noundef %5, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @test_MSG_protect_pbmac_no_sender.secret, i64 0, i64 0), i32 noundef 4) #5
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %cleanup.sink.split, label %lor.lhs.false13

lor.lhs.false13:                                  ; preds = %lor.lhs.false9
  %6 = load %struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_ctx_st** %cmp_ctx, align 8, !tbaa !15
  %tobool15.not = icmp eq i32 %with_ref, 0
  %cond = select i1 %tobool15.not, i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @test_MSG_protect_pbmac_no_sender.ref, i64 0, i64 0)
  %call16 = tail call i32 @OSSL_CMP_CTX_set1_referenceValue(%struct.ossl_cmp_ctx_st* noundef %6, i8* noundef %cond, i32 noundef 4) #5
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %cleanup.sink.split, label %if.then21

if.then21:                                        ; preds = %lor.lhs.false13
  %call22 = tail call fastcc i32 @execute_MSG_protect_test(%struct.test_fixture* noundef nonnull %call) #6
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %lor.lhs.false13, %lor.lhs.false9, %lor.lhs.false5, %lor.lhs.false, %if.end, %if.then21
  %retval.0.ph = phi i32 [ %call22, %if.then21 ], [ 0, %if.end ], [ 0, %lor.lhs.false ], [ 0, %lor.lhs.false5 ], [ 0, %lor.lhs.false9 ], [ 0, %lor.lhs.false13 ]
  tail call fastcc void @tear_down(%struct.test_fixture* noundef nonnull %call) #6
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

declare dso_local i32 @ossl_cmp_hdr_set1_sender(%struct.ossl_cmp_pkiheader_st* noundef, %struct.X509_name_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @execute_MSG_add_extraCerts_test(%struct.test_fixture* nocapture noundef readonly %fixture) unnamed_addr #0 {
entry:
  %cmp_ctx = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %fixture, i64 0, i32 1
  %0 = load %struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_ctx_st** %cmp_ctx, align 8, !tbaa !15
  %msg = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %fixture, i64 0, i32 2
  %1 = load %struct.ossl_cmp_msg_st*, %struct.ossl_cmp_msg_st** %msg, align 8, !tbaa !7
  %call = tail call i32 @ossl_cmp_msg_add_extraCerts(%struct.ossl_cmp_ctx_st* noundef %0, %struct.ossl_cmp_msg_st* noundef %1) #5
  %cmp = icmp ne i32 %call, 0
  %conv = zext i1 %cmp to i32
  %call1 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0), i32 noundef 315, i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.86, i64 0, i64 0), i32 noundef %conv) #5
  ret i32 %call1
}

declare dso_local i32 @ossl_cmp_msg_add_extraCerts(%struct.ossl_cmp_ctx_st* noundef, %struct.ossl_cmp_msg_st* noundef) local_unnamed_addr #1

declare dso_local %struct.stack_st* @OPENSSL_sk_new_null() local_unnamed_addr #1

declare dso_local i32 @OPENSSL_sk_push(%struct.stack_st* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @execute_cmp_build_cert_chain_test(%struct.test_fixture* nocapture noundef readonly %fixture) unnamed_addr #0 {
entry:
  %cmp_ctx = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %fixture, i64 0, i32 1
  %0 = load %struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_ctx_st** %cmp_ctx, align 8, !tbaa !15
  %cert = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %fixture, i64 0, i32 7
  %1 = load %struct.x509_st*, %struct.x509_st** %cert, align 8, !tbaa !18
  %certs = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %fixture, i64 0, i32 8
  %2 = load %struct.stack_st_X509*, %struct.stack_st_X509** %certs, align 8, !tbaa !19
  %with_ss = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %fixture, i64 0, i32 10
  %3 = load i32, i32* %with_ss, align 8, !tbaa !17
  %libctx = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %0, i64 0, i32 0
  %4 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !36
  %propq = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %0, i64 0, i32 1
  %5 = load i8*, i8** %propq, align 8, !tbaa !37
  %call = tail call %struct.stack_st_X509* @X509_build_chain(%struct.x509_st* noundef %1, %struct.stack_st_X509* noundef %2, %struct.x509_store_st* noundef null, i32 noundef %3, %struct.ossl_lib_ctx_st* noundef %4, i8* noundef %5) #5
  %6 = bitcast %struct.stack_st_X509* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0), i32 noundef 340, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.95, i64 0, i64 0), i8* noundef %6) #5
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %chain2 = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %fixture, i64 0, i32 9
  %7 = load %struct.stack_st_X509*, %struct.stack_st_X509** %chain2, align 8, !tbaa !20
  %call3 = tail call i32 @STACK_OF_X509_cmp(%struct.stack_st_X509* noundef %call, %struct.stack_st_X509* noundef %7) #5
  %call4 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0), i32 noundef 342, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.68, i64 0, i64 0), i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.96, i64 0, i64 0), i32 noundef 0, i32 noundef %call3) #5
  %call5 = tail call fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef %call) #6
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call5, void (i8*)* noundef bitcast (void (%struct.x509_st*)* @X509_free to void (i8*)*)) #5
  %tobool7.not = icmp eq i32 %call4, 0
  br i1 %tobool7.not, label %cleanup, label %if.end9

if.end9:                                          ; preds = %if.end
  %call10 = tail call %struct.x509_store_st* @X509_STORE_new() #5
  %8 = bitcast %struct.x509_store_st* %call10 to i8*
  %call11 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0), i32 noundef 348, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.97, i64 0, i64 0), i8* noundef %8) #5
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end39, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end9
  %9 = load %struct.x509_st*, %struct.x509_st** @root, align 8, !tbaa !3
  %call13 = tail call i32 @X509_STORE_add_cert(%struct.x509_store_st* noundef %call10, %struct.x509_st* noundef %9) #5
  %cmp = icmp ne i32 %call13, 0
  %conv = zext i1 %cmp to i32
  %call14 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0), i32 noundef 349, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.98, i64 0, i64 0), i32 noundef %conv) #5
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end39, label %if.then16

if.then16:                                        ; preds = %land.lhs.true
  %call17 = tail call %struct.X509_VERIFY_PARAM_st* @X509_STORE_get0_param(%struct.x509_store_st* noundef %call10) #5
  %call18 = tail call i32 @X509_VERIFY_PARAM_set_flags(%struct.X509_VERIFY_PARAM_st* noundef %call17, i64 noundef 2097152) #5
  %10 = load %struct.x509_st*, %struct.x509_st** %cert, align 8, !tbaa !18
  %11 = load %struct.stack_st_X509*, %struct.stack_st_X509** %certs, align 8, !tbaa !19
  %12 = load i32, i32* %with_ss, align 8, !tbaa !17
  %13 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !36
  %14 = load i8*, i8** %propq, align 8, !tbaa !37
  %call24 = tail call %struct.stack_st_X509* @X509_build_chain(%struct.x509_st* noundef %10, %struct.stack_st_X509* noundef %11, %struct.x509_store_st* noundef %call10, i32 noundef %12, %struct.ossl_lib_ctx_st* noundef %13, i8* noundef %14) #5
  %expected = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %fixture, i64 0, i32 12
  %15 = load i32, i32* %expected, align 8, !tbaa !16
  %cmp25 = icmp ne %struct.stack_st_X509* %call24, null
  %conv26 = zext i1 %cmp25 to i32
  %call27 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0), i32 noundef 354, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.78, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.99, i64 0, i64 0), i32 noundef %15, i32 noundef %conv26) #5
  %tobool28 = icmp ne i32 %call27, 0
  %or.cond = select i1 %tobool28, i1 %cmp25, i1 false
  br i1 %or.cond, label %if.then32, label %if.end39

if.then32:                                        ; preds = %if.then16
  %16 = load %struct.stack_st_X509*, %struct.stack_st_X509** %chain2, align 8, !tbaa !20
  %call34 = tail call i32 @STACK_OF_X509_cmp(%struct.stack_st_X509* noundef nonnull %call24, %struct.stack_st_X509* noundef %16) #5
  %call35 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0), i32 noundef 357, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.68, i64 0, i64 0), i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.96, i64 0, i64 0), i32 noundef 0, i32 noundef %call34) #5
  %call36 = tail call fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef nonnull %call24) #6
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call36, void (i8*)* noundef bitcast (void (%struct.x509_st*)* @X509_free to void (i8*)*)) #5
  br label %if.end39

if.end39:                                         ; preds = %if.then16, %if.then32, %land.lhs.true, %if.end9
  %ret.1 = phi i32 [ %call35, %if.then32 ], [ %call27, %if.then16 ], [ %call4, %land.lhs.true ], [ %call4, %if.end9 ]
  tail call void @X509_STORE_free(%struct.x509_store_st* noundef %call10) #5
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end, %if.end39
  %retval.0 = phi i32 [ %ret.1, %if.end39 ], [ 0, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

declare dso_local %struct.stack_st_X509* @X509_build_chain(%struct.x509_st* noundef, %struct.stack_st_X509* noundef, %struct.x509_store_st* noundef, i32 noundef, %struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local i32 @STACK_OF_X509_cmp(%struct.stack_st_X509* noundef, %struct.stack_st_X509* noundef) local_unnamed_addr #1

declare dso_local void @OPENSSL_sk_pop_free(%struct.stack_st* noundef, void (i8*)* noundef) local_unnamed_addr #1

declare dso_local %struct.x509_store_st* @X509_STORE_new() local_unnamed_addr #1

declare dso_local i32 @X509_STORE_add_cert(%struct.x509_store_st* noundef, %struct.x509_st* noundef) local_unnamed_addr #1

declare dso_local i32 @X509_VERIFY_PARAM_set_flags(%struct.X509_VERIFY_PARAM_st* noundef, i64 noundef) local_unnamed_addr #1

declare dso_local %struct.X509_VERIFY_PARAM_st* @X509_STORE_get0_param(%struct.x509_store_st* noundef) local_unnamed_addr #1

declare dso_local void @X509_STORE_free(%struct.x509_store_st* noundef) local_unnamed_addr #1

declare dso_local %struct.stack_st* @OPENSSL_sk_dup(%struct.stack_st* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef readnone %sk) unnamed_addr #2 {
entry:
  %0 = bitcast %struct.stack_st_X509* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @execute_X509_STORE_test(%struct.test_fixture* nocapture noundef readonly %fixture) unnamed_addr #0 {
entry:
  %call = tail call %struct.x509_store_st* @X509_STORE_new() #5
  %certs = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %fixture, i64 0, i32 8
  %0 = load %struct.stack_st_X509*, %struct.stack_st_X509** %certs, align 8, !tbaa !19
  %callback_arg = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %fixture, i64 0, i32 11
  %1 = load i32, i32* %callback_arg, align 4, !tbaa !21
  %call1 = tail call i32 @ossl_cmp_X509_STORE_add1_certs(%struct.x509_store_st* noundef %call, %struct.stack_st_X509* noundef %0, i32 noundef %1) #5
  %cmp = icmp ne i32 %call1, 0
  %conv = zext i1 %cmp to i32
  %call2 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0), i32 noundef 470, i8* noundef getelementptr inbounds ([77 x i8], [77 x i8]* @.str.101, i64 0, i64 0), i32 noundef %conv) #5
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %err, label %if.end

if.end:                                           ; preds = %entry
  %call3 = tail call %struct.stack_st_X509* @X509_STORE_get1_all_certs(%struct.x509_store_st* noundef %call) #5
  %chain = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %fixture, i64 0, i32 9
  %2 = load %struct.stack_st_X509*, %struct.stack_st_X509** %chain, align 8, !tbaa !20
  %call4 = tail call i32 @STACK_OF_X509_cmp(%struct.stack_st_X509* noundef %call3, %struct.stack_st_X509* noundef %2) #5
  %call5 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0), i32 noundef 473, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.68, i64 0, i64 0), i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.102, i64 0, i64 0), i32 noundef 0, i32 noundef %call4) #5
  %tobool6.not = icmp ne i32 %call5, 0
  %spec.select = zext i1 %tobool6.not to i32
  br label %err

err:                                              ; preds = %if.end, %entry
  %sk.0 = phi %struct.stack_st_X509* [ null, %entry ], [ %call3, %if.end ]
  %res.0 = phi i32 [ 0, %entry ], [ %spec.select, %if.end ]
  tail call void @X509_STORE_free(%struct.x509_store_st* noundef %call) #5
  %call9 = tail call fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef %sk.0) #6
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call9, void (i8*)* noundef bitcast (void (%struct.x509_st*)* @X509_free to void (i8*)*)) #5
  ret i32 %res.0
}

declare dso_local i32 @ossl_cmp_X509_STORE_add1_certs(%struct.x509_store_st* noundef, %struct.stack_st_X509* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local %struct.stack_st_X509* @X509_STORE_get1_all_certs(%struct.x509_store_st* noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #5 = { nobuiltin nounwind "no-builtins" }
attributes #6 = { nobuiltin "no-builtins" }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.0"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !4, i64 16}
!8 = !{!"test_fixture", !4, i64 0, !4, i64 8, !4, i64 16, !4, i64 24, !4, i64 32, !4, i64 40, !9, i64 48, !4, i64 56, !4, i64 64, !4, i64 72, !9, i64 80, !9, i64 84, !9, i64 88}
!9 = !{!"int", !5, i64 0}
!10 = !{!11, !4, i64 0}
!11 = !{!"ossl_cmp_msg_st", !4, i64 0, !4, i64 8, !4, i64 16, !4, i64 24, !4, i64 32, !4, i64 40}
!12 = !{!13, !4, i64 32}
!13 = !{!"ossl_cmp_pkiheader_st", !4, i64 0, !4, i64 8, !4, i64 16, !4, i64 24, !4, i64 32, !4, i64 40, !4, i64 48, !4, i64 56, !4, i64 64, !4, i64 72, !4, i64 80, !4, i64 88}
!14 = !{!8, !4, i64 32}
!15 = !{!8, !4, i64 8}
!16 = !{!8, !9, i64 88}
!17 = !{!8, !9, i64 80}
!18 = !{!8, !4, i64 56}
!19 = !{!8, !4, i64 64}
!20 = !{!8, !4, i64 72}
!21 = !{!8, !9, i64 84}
!22 = !{!8, !4, i64 0}
!23 = !{!8, !4, i64 24}
!24 = !{!8, !4, i64 40}
!25 = !{!11, !4, i64 16}
!26 = !{!27, !4, i64 272}
!27 = !{!"ossl_cmp_ctx_st", !4, i64 0, !4, i64 8, !4, i64 16, !9, i64 24, !4, i64 32, !4, i64 40, !4, i64 48, !4, i64 56, !4, i64 64, !9, i64 72, !4, i64 80, !4, i64 88, !9, i64 96, !9, i64 100, !9, i64 104, !28, i64 112, !4, i64 120, !4, i64 128, !9, i64 136, !4, i64 144, !4, i64 152, !4, i64 160, !4, i64 168, !4, i64 176, !9, i64 184, !9, i64 188, !9, i64 192, !4, i64 200, !4, i64 208, !4, i64 216, !4, i64 224, !4, i64 232, !28, i64 240, !4, i64 248, !9, i64 256, !9, i64 260, !4, i64 264, !4, i64 272, !4, i64 280, !4, i64 288, !4, i64 296, !4, i64 304, !4, i64 312, !9, i64 320, !9, i64 324, !4, i64 328, !4, i64 336, !9, i64 344, !4, i64 352, !9, i64 360, !4, i64 368, !4, i64 376, !9, i64 384, !9, i64 388, !4, i64 392, !4, i64 400, !9, i64 408, !9, i64 412, !4, i64 416, !4, i64 424, !9, i64 432, !4, i64 440, !9, i64 448, !4, i64 456, !9, i64 464, !4, i64 472, !4, i64 480, !4, i64 488, !4, i64 496, !4, i64 504, !4, i64 512}
!28 = !{!"long", !5, i64 0}
!29 = !{!30, !4, i64 0}
!30 = !{!"ossl_cmp_protectedpart_st", !4, i64 0, !4, i64 8}
!31 = !{!11, !4, i64 8}
!32 = !{!30, !4, i64 8}
!33 = !{!34, !4, i64 8}
!34 = !{!"asn1_string_st", !9, i64 0, !9, i64 4, !4, i64 8, !28, i64 16}
!35 = !{!34, !9, i64 0}
!36 = !{!27, !4, i64 0}
!37 = !{!27, !4, i64 8}
