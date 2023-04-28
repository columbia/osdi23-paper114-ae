; ModuleID = 'test/cmp_msg_test.c'
source_filename = "test/cmp_msg_test.c"
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
%struct.options_st = type { i8*, i32, i32, i8* }
%struct.ossl_provider_st = type opaque
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.test_fixture = type { i8*, %struct.ossl_cmp_ctx_st*, i32, i32, i32, %struct.ossl_cmp_msg_st*, i32, %struct.ossl_cmp_pkisi_st* }
%struct.ossl_cmp_ctx_st = type { %struct.ossl_lib_ctx_st*, i8*, i32 (i8*, i8*, i32, i32, i8*)*, i32, %struct.ossl_cmp_msg_st* (%struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_msg_st*)*, i8*, %struct.ossl_http_req_ctx_st*, i8*, i8*, i32, i8*, i8*, i32, i32, i32, i64, %struct.bio_st* (%struct.bio_st*, i8*, i32, i32)*, i8*, i32, %struct.x509_st*, %struct.x509_st*, %struct.X509_name_st*, %struct.x509_store_st*, %struct.stack_st_X509*, i32, i32, i32, %struct.x509_st*, %struct.stack_st_X509*, %struct.evp_pkey_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, i64, %struct.evp_md_st*, i32, i32, %struct.X509_name_st*, %struct.evp_md_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.stack_st_OSSL_CMP_ITAV*, i32, i32, %struct.stack_st_X509*, %struct.evp_pkey_st*, i32, %struct.X509_name_st*, i32, %struct.X509_name_st*, %struct.stack_st_GENERAL_NAME*, i32, i32, %struct.stack_st_X509_EXTENSION*, %struct.stack_st_POLICYINFO*, i32, i32, %struct.x509_st*, %struct.X509_req_st*, i32, %struct.stack_st_OSSL_CMP_ITAV*, i32, %struct.stack_st_ASN1_UTF8STRING*, i32, %struct.x509_st*, %struct.stack_st_X509*, %struct.stack_st_X509*, %struct.stack_st_X509*, i32 (%struct.ossl_cmp_ctx_st*, %struct.x509_st*, i32, i8**)*, i8* }
%struct.ossl_http_req_ctx_st = type opaque
%struct.bio_st = type opaque
%struct.x509_store_st = type opaque
%struct.evp_md_st = type opaque
%struct.stack_st_POLICYINFO = type opaque
%struct.X509_req_st = type { %struct.X509_req_info_st, %struct.X509_algor_st, %struct.asn1_string_st*, i32, i8*, %struct.asn1_string_st*, %struct.ossl_lib_ctx_st*, i8* }
%struct.X509_req_info_st = type { %struct.ASN1_ENCODING_st, %struct.asn1_string_st*, %struct.X509_name_st*, %struct.X509_pubkey_st*, %struct.stack_st_X509_ATTRIBUTE* }
%struct.stack_st_X509_ATTRIBUTE = type opaque
%struct.stack_st_OSSL_CMP_ITAV = type opaque
%struct.stack_st_ASN1_UTF8STRING = type opaque
%struct.stack_st_X509 = type opaque
%struct.ossl_cmp_msg_st = type { %struct.ossl_cmp_pkiheader_st*, %struct.ossl_cmp_pkibody_st*, %struct.asn1_string_st*, %struct.stack_st_X509*, %struct.ossl_lib_ctx_st*, i8* }
%struct.ossl_cmp_pkiheader_st = type { %struct.asn1_string_st*, %struct.GENERAL_NAME_st*, %struct.GENERAL_NAME_st*, %struct.asn1_string_st*, %struct.X509_algor_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.stack_st_ASN1_UTF8STRING*, %struct.stack_st_OSSL_CMP_ITAV* }
%struct.GENERAL_NAME_st = type { i32, %union.anon.1 }
%union.anon.1 = type { i8* }
%struct.ossl_cmp_pkibody_st = type { i32, %union.anon.2 }
%union.anon.2 = type { %struct.stack_st_OSSL_CRMF_MSG* }
%struct.stack_st_OSSL_CRMF_MSG = type opaque
%struct.ossl_cmp_pkisi_st = type { %struct.asn1_string_st*, %struct.stack_st_ASN1_UTF8STRING*, %struct.asn1_string_st* }
%struct.ossl_cmp_itav_st = type { %struct.asn1_object_st*, %union.anon.3 }
%union.anon.3 = type { i8* }
%struct.ossl_crmf_msg_st = type opaque
%struct.ossl_crmf_certid_st = type opaque
%struct.ossl_cmp_revrepcontent_st = type { %struct.stack_st_OSSL_CMP_PKISI*, %struct.stack_st_OSSL_CRMF_CERTID*, %struct.stack_st_X509_CRL* }
%struct.stack_st_OSSL_CMP_PKISI = type opaque
%struct.stack_st_OSSL_CRMF_CERTID = type opaque
%struct.stack_st_X509_CRL = type opaque
%struct.ossl_cmp_certrepmessage_st = type { %struct.stack_st_X509*, %struct.stack_st_OSSL_CMP_CERTRESPONSE* }
%struct.stack_st_OSSL_CMP_CERTRESPONSE = type opaque
%struct.ossl_cmp_certresponse_st = type { %struct.asn1_string_st*, %struct.ossl_cmp_pkisi_st*, %struct.ossl_cmp_certifiedkeypair_st*, %struct.asn1_string_st* }
%struct.ossl_cmp_certifiedkeypair_st = type { %struct.ossl_cmp_certorenccert_st*, %struct.ossl_crmf_encryptedvalue_st*, %struct.ossl_crmf_pkipublicationinfo_st* }
%struct.ossl_cmp_certorenccert_st = type { i32, %union.anon.5 }
%union.anon.5 = type { %struct.x509_st* }
%struct.ossl_crmf_encryptedvalue_st = type opaque
%struct.ossl_crmf_pkipublicationinfo_st = type opaque
%struct.stack_st = type opaque
%struct.stack_st_OSSL_CMP_POLLREP = type opaque
%struct.ossl_cmp_pollrep_st = type { %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.stack_st_ASN1_UTF8STRING* }

@newkey = internal unnamed_addr global %struct.evp_pkey_st* null, align 8
@cert = internal unnamed_addr global %struct.x509_st* null, align 8
@libctx = internal global %struct.ossl_lib_ctx_st* null, align 8
@test_get_options.options = internal constant [9 x %struct.options_st] [%struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_HELP_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_HELP_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i32 500, i32 45, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 501, i32 45, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i32 502, i32 115, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i32 503, i32 110, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0), i32 504, i32 112, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), i32 505, i32 110, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.13, i32 0, i32 0) }, %struct.options_st zeroinitializer], align 16
@OPT_HELP_STR = external dso_local constant [0 x i8], align 1
@.str = private unnamed_addr constant [82 x i8] c"Usage: %s [options] new.key server.crt pkcs10.der module_name [module_conf_file]\0A\00", align 1
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
@.str.14 = private unnamed_addr constant [20 x i8] c"test/cmp_msg_test.c\00", align 1
@.str.15 = private unnamed_addr constant [28 x i8] c"Error parsing test options\0A\00", align 1
@.str.16 = private unnamed_addr constant [32 x i8] c"newkey_f = test_get_argument(0)\00", align 1
@newkey_f = internal unnamed_addr global i8* null, align 8
@.str.17 = private unnamed_addr constant [37 x i8] c"server_cert_f = test_get_argument(1)\00", align 1
@server_cert_f = internal unnamed_addr global i8* null, align 8
@.str.18 = private unnamed_addr constant [32 x i8] c"pkcs10_f = test_get_argument(2)\00", align 1
@pkcs10_f = internal unnamed_addr global i8* null, align 8
@.str.19 = private unnamed_addr constant [23 x i8] c"usage: cmp_msg_test %s\00", align 1
@.str.20 = private unnamed_addr constant [62 x i8] c"new.key server.crt pkcs10.der module_name [module_conf_file]\0A\00", align 1
@default_null_provider = internal global %struct.ossl_provider_st* null, align 8
@provider = internal global %struct.ossl_provider_st* null, align 8
@.str.21 = private unnamed_addr constant [41 x i8] c"newkey = load_pkey_pem(newkey_f, libctx)\00", align 1
@.str.22 = private unnamed_addr constant [44 x i8] c"cert = load_cert_pem(server_cert_f, libctx)\00", align 1
@.str.23 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.24 = private unnamed_addr constant [43 x i8] c"RAND_bytes_ex(libctx, ref, sizeof(ref), 0)\00", align 1
@ref = internal global [15 x i8] zeroinitializer, align 1
@.str.25 = private unnamed_addr constant [46 x i8] c"test_cmp_create_certreq_with_invalid_bodytype\00", align 1
@.str.26 = private unnamed_addr constant [36 x i8] c"test_cmp_create_ir_protection_fails\00", align 1
@.str.27 = private unnamed_addr constant [34 x i8] c"test_cmp_create_ir_protection_set\00", align 1
@.str.28 = private unnamed_addr constant [26 x i8] c"test_cmp_create_error_msg\00", align 1
@.str.29 = private unnamed_addr constant [25 x i8] c"test_cmp_create_certconf\00", align 1
@.str.30 = private unnamed_addr constant [32 x i8] c"test_cmp_create_certconf_badAlg\00", align 1
@.str.31 = private unnamed_addr constant [39 x i8] c"test_cmp_create_certconf_fail_info_max\00", align 1
@.str.32 = private unnamed_addr constant [20 x i8] c"test_cmp_create_kur\00", align 1
@.str.33 = private unnamed_addr constant [36 x i8] c"test_cmp_create_kur_without_oldcert\00", align 1
@.str.34 = private unnamed_addr constant [19 x i8] c"test_cmp_create_cr\00", align 1
@.str.35 = private unnamed_addr constant [31 x i8] c"test_cmp_create_cr_without_key\00", align 1
@.str.36 = private unnamed_addr constant [22 x i8] c"test_cmp_create_p10cr\00", align 1
@.str.37 = private unnamed_addr constant [27 x i8] c"test_cmp_create_p10cr_null\00", align 1
@.str.38 = private unnamed_addr constant [24 x i8] c"test_cmp_create_pollreq\00", align 1
@.str.39 = private unnamed_addr constant [19 x i8] c"test_cmp_create_rr\00", align 1
@.str.40 = private unnamed_addr constant [19 x i8] c"test_cmp_create_rp\00", align 1
@.str.41 = private unnamed_addr constant [21 x i8] c"test_cmp_create_genm\00", align 1
@.str.42 = private unnamed_addr constant [24 x i8] c"test_cmp_create_certrep\00", align 1
@.str.43 = private unnamed_addr constant [24 x i8] c"test_cmp_create_pollrep\00", align 1
@.str.44 = private unnamed_addr constant [27 x i8] c"test_cmp_pkimessage_create\00", align 1
@.str.45 = private unnamed_addr constant [39 x i8] c"set1_newPkey(fixture->cmp_ctx, newkey)\00", align 1
@.str.46 = private unnamed_addr constant [43 x i8] c"fixture = OPENSSL_zalloc(sizeof(*fixture))\00", align 1
@.str.47 = private unnamed_addr constant [50 x i8] c"fixture->cmp_ctx = OSSL_CMP_CTX_new(libctx, NULL)\00", align 1
@.str.48 = private unnamed_addr constant [46 x i8] c"SET_OPT_UNPROTECTED_SEND(fixture->cmp_ctx, 1)\00", align 1
@.str.49 = private unnamed_addr constant [69 x i8] c"OSSL_CMP_CTX_set1_referenceValue(fixture->cmp_ctx, ref, sizeof(ref))\00", align 1
@.str.50 = private unnamed_addr constant [78 x i8] c"msg = (ossl_cmp_certreq_new(fixture->cmp_ctx, fixture->bodytype, ((void*)0)))\00", align 1
@.str.51 = private unnamed_addr constant [25 x i8] c"valid_asn1_encoding(msg)\00", align 1
@stderr = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.52 = private unnamed_addr constant [49 x i8] c"OSSL_CMP_CTX_set1_pkey(fixture->cmp_ctx, newkey)\00", align 1
@.str.53 = private unnamed_addr constant [46 x i8] c"SET_OPT_UNPROTECTED_SEND(fixture->cmp_ctx, 0)\00", align 1
@.str.54 = private unnamed_addr constant [47 x i8] c"OSSL_CMP_CTX_set1_cert(fixture->cmp_ctx, cert)\00", align 1
@.str.55 = private unnamed_addr constant [49 x i8] c"RAND_bytes_ex(libctx, secret, sizeof(secret), 0)\00", align 1
@.str.56 = private unnamed_addr constant [33 x i8] c"SET_OPT_UNPROTECTED_SEND(ctx, 0)\00", align 1
@.str.57 = private unnamed_addr constant [26 x i8] c"set1_newPkey(ctx, newkey)\00", align 1
@.str.58 = private unnamed_addr constant [59 x i8] c"OSSL_CMP_CTX_set1_secretValue(ctx, secret, sizeof(secret))\00", align 1
@.str.59 = private unnamed_addr constant [91 x i8] c"msg = (ossl_cmp_error_new(fixture->cmp_ctx, fixture->si, fixture->err_code, \22details\22, 0))\00", align 1
@.str.60 = private unnamed_addr constant [8 x i8] c"details\00", align 1
@.str.61 = private unnamed_addr constant [60 x i8] c"ossl_cmp_ctx_set0_newCert(fixture->cmp_ctx, X509_dup(cert))\00", align 1
@.str.62 = private unnamed_addr constant [81 x i8] c"msg = (ossl_cmp_certConf_new (fixture->cmp_ctx, fixture->fail_info, ((void*)0)))\00", align 1
@.str.63 = private unnamed_addr constant [50 x i8] c"OSSL_CMP_CTX_set1_oldCert(fixture->cmp_ctx, cert)\00", align 1
@.str.64 = private unnamed_addr constant [39 x i8] c"p10cr = load_csr_der(pkcs10_f, libctx)\00", align 1
@.str.65 = private unnamed_addr constant [37 x i8] c"OSSL_CMP_CTX_set1_p10CSR(ctx, p10cr)\00", align 1
@.str.66 = private unnamed_addr constant [53 x i8] c"msg = (ossl_cmp_pollReq_new(fixture->cmp_ctx, 4711))\00", align 1
@.str.67 = private unnamed_addr constant [42 x i8] c"msg = (ossl_cmp_rr_new(fixture->cmp_ctx))\00", align 1
@.str.68 = private unnamed_addr constant [7 x i8] c"a text\00", align 1
@.str.69 = private unnamed_addr constant [3 x i8] c"CN\00", align 1
@.str.70 = private unnamed_addr constant [11 x i8] c"The Issuer\00", align 1
@.str.71 = private unnamed_addr constant [60 x i8] c"ossl_cmp_revrepcontent_get_CertId(rpmsg->body->value.rp, 0)\00", align 1
@.str.72 = private unnamed_addr constant [59 x i8] c"ossl_cmp_revrepcontent_get_pkisi(rpmsg->body->value.rp, 0)\00", align 1
@.str.73 = private unnamed_addr constant [3 x i8] c"iv\00", align 1
@.str.74 = private unnamed_addr constant [51 x i8] c"OSSL_CMP_CTX_push0_genm_ITAV(fixture->cmp_ctx, iv)\00", align 1
@.str.75 = private unnamed_addr constant [44 x i8] c"msg = (ossl_cmp_genm_new(fixture->cmp_ctx))\00", align 1
@.str.76 = private unnamed_addr constant [11 x i8] c"read_cresp\00", align 1
@.str.77 = private unnamed_addr constant [55 x i8] c"ossl_cmp_certrepmessage_get0_certresponse(crepmsg, 88)\00", align 1
@.str.78 = private unnamed_addr constant [29 x i8] c"X509_cmp(cert, certfromresp)\00", align 1
@.str.79 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.80 = private unnamed_addr constant [8 x i8] c"pollrep\00", align 1
@.str.81 = private unnamed_addr constant [72 x i8] c"ossl_cmp_pollrepcontent_get0_pollrep(pollrep->body-> value.pollRep, 77)\00", align 1
@.str.82 = private unnamed_addr constant [72 x i8] c"ossl_cmp_pollrepcontent_get0_pollrep(pollrep->body-> value.pollRep, 88)\00", align 1
@.str.83 = private unnamed_addr constant [50 x i8] c"OSSL_CMP_CTX_set1_p10CSR(fixture->cmp_ctx, p10cr)\00", align 1
@.str.84 = private unnamed_addr constant [66 x i8] c"msg = (ossl_cmp_msg_create (fixture->cmp_ctx, fixture->bodytype))\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @cleanup_tests() local_unnamed_addr #0 {
entry:
  %0 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** @newkey, align 8, !tbaa !3
  tail call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %0) #4
  %1 = load %struct.x509_st*, %struct.x509_st** @cert, align 8, !tbaa !3
  tail call void @X509_free(%struct.x509_st* noundef %1) #4
  %2 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @libctx, align 8, !tbaa !3
  tail call void @OSSL_LIB_CTX_free(%struct.ossl_lib_ctx_st* noundef %2) #4
  ret void
}

declare dso_local void @EVP_PKEY_free(%struct.evp_pkey_st* noundef) local_unnamed_addr #1

declare dso_local void @X509_free(%struct.x509_st* noundef) local_unnamed_addr #1

declare dso_local void @OSSL_LIB_CTX_free(%struct.ossl_lib_ctx_st* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local %struct.options_st* @test_get_options() local_unnamed_addr #2 {
entry:
  ret %struct.options_st* getelementptr inbounds ([9 x %struct.options_st], [9 x %struct.options_st]* @test_get_options.options, i64 0, i64 0)
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @setup_tests() local_unnamed_addr #0 {
entry:
  %call = tail call i32 @test_skip_common_options() #4
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 553, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.15, i64 0, i64 0)) #4
  br label %return

if.end:                                           ; preds = %entry
  %call1 = tail call i8* @test_get_argument(i64 noundef 0) #4
  store i8* %call1, i8** @newkey_f, align 8, !tbaa !3
  %call2 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 557, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.16, i64 0, i64 0), i8* noundef %call1) #4
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.then11, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %call4 = tail call i8* @test_get_argument(i64 noundef 1) #4
  store i8* %call4, i8** @server_cert_f, align 8, !tbaa !3
  %call5 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 558, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.17, i64 0, i64 0), i8* noundef %call4) #4
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.then11, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %lor.lhs.false
  %call8 = tail call i8* @test_get_argument(i64 noundef 2) #4
  store i8* %call8, i8** @pkcs10_f, align 8, !tbaa !3
  %call9 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 559, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.18, i64 0, i64 0), i8* noundef %call8) #4
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.then11, label %if.end12

if.then11:                                        ; preds = %lor.lhs.false7, %lor.lhs.false, %if.end
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 560, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.19, i64 0, i64 0), i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.20, i64 0, i64 0)) #4
  br label %return

if.end12:                                         ; preds = %lor.lhs.false7
  %call13 = tail call i32 @test_arg_libctx(%struct.ossl_lib_ctx_st** noundef nonnull @libctx, %struct.ossl_provider_st** noundef nonnull @default_null_provider, %struct.ossl_provider_st** noundef nonnull @provider, i32 noundef 3, i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.20, i64 0, i64 0)) #4
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %return, label %if.end16

if.end16:                                         ; preds = %if.end12
  %0 = load i8*, i8** @newkey_f, align 8, !tbaa !3
  %1 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @libctx, align 8, !tbaa !3
  %call17 = tail call %struct.evp_pkey_st* @load_pkey_pem(i8* noundef %0, %struct.ossl_lib_ctx_st* noundef %1) #4
  store %struct.evp_pkey_st* %call17, %struct.evp_pkey_st** @newkey, align 8, !tbaa !3
  %2 = bitcast %struct.evp_pkey_st* %call17 to i8*
  %call18 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 567, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.21, i64 0, i64 0), i8* noundef %2) #4
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.then28, label %lor.lhs.false20

lor.lhs.false20:                                  ; preds = %if.end16
  %3 = load i8*, i8** @server_cert_f, align 8, !tbaa !3
  %4 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @libctx, align 8, !tbaa !3
  %call21 = tail call %struct.x509_st* @load_cert_pem(i8* noundef %3, %struct.ossl_lib_ctx_st* noundef %4) #4
  store %struct.x509_st* %call21, %struct.x509_st** @cert, align 8, !tbaa !3
  %5 = bitcast %struct.x509_st* %call21 to i8*
  %call22 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 568, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.22, i64 0, i64 0), i8* noundef %5) #4
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.then28, label %lor.lhs.false24

lor.lhs.false24:                                  ; preds = %lor.lhs.false20
  %6 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @libctx, align 8, !tbaa !3
  %call25 = tail call i32 @RAND_bytes_ex(%struct.ossl_lib_ctx_st* noundef %6, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @ref, i64 0, i64 0), i64 noundef 15, i32 noundef 0) #4
  %call26 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 569, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i64 0, i64 0), i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.24, i64 0, i64 0), i32 noundef 1, i32 noundef %call25) #4
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.then28, label %if.end29

if.then28:                                        ; preds = %lor.lhs.false24, %lor.lhs.false20, %if.end16
  tail call void @cleanup_tests() #5
  br label %return

if.end29:                                         ; preds = %lor.lhs.false24
  tail call void @add_test(i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.25, i64 0, i64 0), i32 ()* noundef nonnull @test_cmp_create_certreq_with_invalid_bodytype) #4
  tail call void @add_test(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.26, i64 0, i64 0), i32 ()* noundef nonnull @test_cmp_create_ir_protection_fails) #4
  tail call void @add_test(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.27, i64 0, i64 0), i32 ()* noundef nonnull @test_cmp_create_ir_protection_set) #4
  tail call void @add_test(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.28, i64 0, i64 0), i32 ()* noundef nonnull @test_cmp_create_error_msg) #4
  tail call void @add_test(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.29, i64 0, i64 0), i32 ()* noundef nonnull @test_cmp_create_certconf) #4
  tail call void @add_test(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.30, i64 0, i64 0), i32 ()* noundef nonnull @test_cmp_create_certconf_badAlg) #4
  tail call void @add_test(i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.31, i64 0, i64 0), i32 ()* noundef nonnull @test_cmp_create_certconf_fail_info_max) #4
  tail call void @add_test(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.32, i64 0, i64 0), i32 ()* noundef nonnull @test_cmp_create_kur) #4
  tail call void @add_test(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.33, i64 0, i64 0), i32 ()* noundef nonnull @test_cmp_create_kur_without_oldcert) #4
  tail call void @add_test(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.34, i64 0, i64 0), i32 ()* noundef nonnull @test_cmp_create_cr) #4
  tail call void @add_test(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.35, i64 0, i64 0), i32 ()* noundef nonnull @test_cmp_create_cr_without_key) #4
  tail call void @add_test(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.36, i64 0, i64 0), i32 ()* noundef nonnull @test_cmp_create_p10cr) #4
  tail call void @add_test(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.37, i64 0, i64 0), i32 ()* noundef nonnull @test_cmp_create_p10cr_null) #4
  tail call void @add_test(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.38, i64 0, i64 0), i32 ()* noundef nonnull @test_cmp_create_pollreq) #4
  tail call void @add_test(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.39, i64 0, i64 0), i32 ()* noundef nonnull @test_cmp_create_rr) #4
  tail call void @add_test(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.40, i64 0, i64 0), i32 ()* noundef nonnull @test_cmp_create_rp) #4
  tail call void @add_test(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.41, i64 0, i64 0), i32 ()* noundef nonnull @test_cmp_create_genm) #4
  tail call void @add_test(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.42, i64 0, i64 0), i32 ()* noundef nonnull @test_cmp_create_certrep) #4
  tail call void @add_test(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.43, i64 0, i64 0), i32 ()* noundef nonnull @test_cmp_create_pollrep) #4
  tail call void @add_all_tests(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.44, i64 0, i64 0), i32 (i32)* noundef nonnull @test_cmp_pkimessage_create, i32 noundef 27, i32 noundef 0) #4
  br label %return

return:                                           ; preds = %if.end12, %if.end29, %if.then28, %if.then11, %if.then
  %retval.0 = phi i32 [ 1, %if.end29 ], [ 0, %if.then28 ], [ 0, %if.then11 ], [ 0, %if.then ], [ 0, %if.end12 ]
  ret i32 %retval.0
}

declare dso_local i32 @test_skip_common_options() local_unnamed_addr #1

declare dso_local void @test_error(i8* noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

declare dso_local i32 @test_ptr(i8* noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local i8* @test_get_argument(i64 noundef) local_unnamed_addr #1

declare dso_local i32 @test_arg_libctx(%struct.ossl_lib_ctx_st** noundef, %struct.ossl_provider_st** noundef, %struct.ossl_provider_st** noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

declare dso_local %struct.evp_pkey_st* @load_pkey_pem(i8* noundef, %struct.ossl_lib_ctx_st* noundef) local_unnamed_addr #1

declare dso_local %struct.x509_st* @load_cert_pem(i8* noundef, %struct.ossl_lib_ctx_st* noundef) local_unnamed_addr #1

declare dso_local i32 @test_int_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @RAND_bytes_ex(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local void @add_test(i8* noundef, i32 ()* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_cmp_create_certreq_with_invalid_bodytype() #0 {
entry:
  %call = tail call fastcc %struct.test_fixture* @set_up(i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.25, i64 0, i64 0)) #5
  %cmp = icmp eq %struct.test_fixture* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %bodytype = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %call, i64 0, i32 2
  store i32 11, i32* %bodytype, align 8, !tbaa !7
  %err_code = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %call, i64 0, i32 3
  store i32 -1, i32* %err_code, align 4, !tbaa !10
  %expected = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %call, i64 0, i32 6
  store i32 0, i32* %expected, align 8, !tbaa !11
  %cmp_ctx = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %call, i64 0, i32 1
  %0 = load %struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_ctx_st** %cmp_ctx, align 8, !tbaa !12
  %1 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** @newkey, align 8, !tbaa !3
  %call1 = tail call fastcc i32 @set1_newPkey(%struct.ossl_cmp_ctx_st* noundef %0, %struct.evp_pkey_st* noundef %1) #5
  %cmp2 = icmp ne i32 %call1, 0
  %conv = zext i1 %cmp2 to i32
  %call3 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 211, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.45, i64 0, i64 0), i32 noundef %conv) #4
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %cleanup.sink.split, label %if.then8

if.then8:                                         ; preds = %if.end
  %call9 = tail call fastcc i32 @execute_certreq_create_test(%struct.test_fixture* noundef nonnull %call) #5
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end, %if.then8
  %retval.0.ph = phi i32 [ %call9, %if.then8 ], [ 0, %if.end ]
  tail call fastcc void @tear_down(%struct.test_fixture* noundef nonnull %call) #5
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_cmp_create_ir_protection_fails() #0 {
entry:
  %call = tail call fastcc %struct.test_fixture* @set_up(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.26, i64 0, i64 0)) #5
  %cmp = icmp eq %struct.test_fixture* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %bodytype = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %call, i64 0, i32 2
  store i32 0, i32* %bodytype, align 8, !tbaa !7
  %err_code = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %call, i64 0, i32 3
  store i32 -1, i32* %err_code, align 4, !tbaa !10
  %expected = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %call, i64 0, i32 6
  store i32 0, i32* %expected, align 8, !tbaa !11
  %cmp_ctx = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %call, i64 0, i32 1
  %0 = load %struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_ctx_st** %cmp_ctx, align 8, !tbaa !12
  %1 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** @newkey, align 8, !tbaa !3
  %call1 = tail call i32 @OSSL_CMP_CTX_set1_pkey(%struct.ossl_cmp_ctx_st* noundef %0, %struct.evp_pkey_st* noundef %1) #4
  %cmp2 = icmp ne i32 %call1, 0
  %conv = zext i1 %cmp2 to i32
  %call3 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 170, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.52, i64 0, i64 0), i32 noundef %conv) #4
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %cleanup.sink.split, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %2 = load %struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_ctx_st** %cmp_ctx, align 8, !tbaa !12
  %call5 = tail call i32 @OSSL_CMP_CTX_set_option(%struct.ossl_cmp_ctx_st* noundef %2, i32 noundef 30, i32 noundef 0) #4
  %cmp6 = icmp ne i32 %call5, 0
  %conv7 = zext i1 %cmp6 to i32
  %call8 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 171, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.53, i64 0, i64 0), i32 noundef %conv7) #4
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %cleanup.sink.split, label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %lor.lhs.false
  %3 = load %struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_ctx_st** %cmp_ctx, align 8, !tbaa !12
  %4 = load %struct.x509_st*, %struct.x509_st** @cert, align 8, !tbaa !3
  %call12 = tail call i32 @OSSL_CMP_CTX_set1_cert(%struct.ossl_cmp_ctx_st* noundef %3, %struct.x509_st* noundef %4) #4
  %cmp13 = icmp ne i32 %call12, 0
  %conv14 = zext i1 %cmp13 to i32
  %call15 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 173, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.54, i64 0, i64 0), i32 noundef %conv14) #4
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %cleanup.sink.split, label %if.then21

if.then21:                                        ; preds = %lor.lhs.false10
  %call22 = tail call fastcc i32 @execute_certreq_create_test(%struct.test_fixture* noundef nonnull %call) #5
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %lor.lhs.false10, %lor.lhs.false, %if.end, %if.then21
  %retval.0.ph = phi i32 [ %call22, %if.then21 ], [ 0, %if.end ], [ 0, %lor.lhs.false ], [ 0, %lor.lhs.false10 ]
  tail call fastcc void @tear_down(%struct.test_fixture* noundef nonnull %call) #5
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_cmp_create_ir_protection_set() #0 {
entry:
  %secret = alloca [16 x i8], align 16
  %0 = getelementptr inbounds [16 x i8], [16 x i8]* %secret, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #6
  %call = tail call fastcc %struct.test_fixture* @set_up(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.27, i64 0, i64 0)) #5
  %cmp = icmp eq %struct.test_fixture* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %cmp_ctx = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %call, i64 0, i32 1
  %1 = load %struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_ctx_st** %cmp_ctx, align 8, !tbaa !12
  %bodytype = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %call, i64 0, i32 2
  store i32 0, i32* %bodytype, align 8, !tbaa !7
  %err_code = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %call, i64 0, i32 3
  store i32 -1, i32* %err_code, align 4, !tbaa !10
  %expected = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %call, i64 0, i32 6
  store i32 1, i32* %expected, align 8, !tbaa !11
  %2 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @libctx, align 8, !tbaa !3
  %call1 = call i32 @RAND_bytes_ex(%struct.ossl_lib_ctx_st* noundef %2, i8* noundef nonnull %0, i64 noundef 16, i32 noundef 0) #4
  %call2 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 152, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i64 0, i64 0), i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.55, i64 0, i64 0), i32 noundef 1, i32 noundef %call1) #4
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %cleanup.sink.split, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %call3 = call i32 @OSSL_CMP_CTX_set_option(%struct.ossl_cmp_ctx_st* noundef %1, i32 noundef 30, i32 noundef 0) #4
  %cmp4 = icmp ne i32 %call3, 0
  %conv = zext i1 %cmp4 to i32
  %call5 = call i32 @test_true(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 153, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.56, i64 0, i64 0), i32 noundef %conv) #4
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %cleanup.sink.split, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %lor.lhs.false
  %3 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** @newkey, align 8, !tbaa !3
  %call8 = call fastcc i32 @set1_newPkey(%struct.ossl_cmp_ctx_st* noundef %1, %struct.evp_pkey_st* noundef %3) #5
  %cmp9 = icmp ne i32 %call8, 0
  %conv10 = zext i1 %cmp9 to i32
  %call11 = call i32 @test_true(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 154, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.57, i64 0, i64 0), i32 noundef %conv10) #4
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %cleanup.sink.split, label %lor.lhs.false13

lor.lhs.false13:                                  ; preds = %lor.lhs.false7
  %call15 = call i32 @OSSL_CMP_CTX_set1_secretValue(%struct.ossl_cmp_ctx_st* noundef %1, i8* noundef nonnull %0, i32 noundef 16) #4
  %cmp16 = icmp ne i32 %call15, 0
  %conv17 = zext i1 %cmp16 to i32
  %call18 = call i32 @test_true(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 156, i8* noundef getelementptr inbounds ([59 x i8], [59 x i8]* @.str.58, i64 0, i64 0), i32 noundef %conv17) #4
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %cleanup.sink.split, label %if.then24

if.then24:                                        ; preds = %lor.lhs.false13
  %call25 = call fastcc i32 @execute_certreq_create_test(%struct.test_fixture* noundef nonnull %call) #5
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %lor.lhs.false13, %lor.lhs.false7, %lor.lhs.false, %if.end, %if.then24
  %retval.0.ph = phi i32 [ %call25, %if.then24 ], [ 0, %if.end ], [ 0, %lor.lhs.false ], [ 0, %lor.lhs.false7 ], [ 0, %lor.lhs.false13 ]
  call fastcc void @tear_down(%struct.test_fixture* noundef nonnull %call) #5
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #6
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_cmp_create_error_msg() #0 {
entry:
  %call = tail call fastcc %struct.test_fixture* @set_up(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.28, i64 0, i64 0)) #5
  %cmp = icmp eq %struct.test_fixture* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call %struct.ossl_cmp_pkisi_st* @OSSL_CMP_STATUSINFO_new(i32 noundef 2, i32 noundef 25, i8* noundef null) #4
  %si = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %call, i64 0, i32 7
  store %struct.ossl_cmp_pkisi_st* %call1, %struct.ossl_cmp_pkisi_st** %si, align 8, !tbaa !13
  %err_code = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %call, i64 0, i32 3
  store i32 -1, i32* %err_code, align 4, !tbaa !10
  %expected = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %call, i64 0, i32 6
  store i32 1, i32* %expected, align 8, !tbaa !11
  %cmp_ctx = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %call, i64 0, i32 1
  %0 = load %struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_ctx_st** %cmp_ctx, align 8, !tbaa !12
  %1 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** @newkey, align 8, !tbaa !3
  %call2 = tail call fastcc i32 @set1_newPkey(%struct.ossl_cmp_ctx_st* noundef %0, %struct.evp_pkey_st* noundef %1) #5
  %cmp3 = icmp ne i32 %call2, 0
  %conv = zext i1 %cmp3 to i32
  %call4 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 333, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.45, i64 0, i64 0), i32 noundef %conv) #4
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %cleanup.sink.split, label %if.then9

if.then9:                                         ; preds = %if.end
  %call10 = tail call fastcc i32 @execute_errormsg_create_test(%struct.test_fixture* noundef nonnull %call) #5
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end, %if.then9
  %retval.0.ph = phi i32 [ %call10, %if.then9 ], [ 0, %if.end ]
  tail call fastcc void @tear_down(%struct.test_fixture* noundef nonnull %call) #5
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_cmp_create_certconf() #0 {
entry:
  %call = tail call fastcc %struct.test_fixture* @set_up(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.29, i64 0, i64 0)) #5
  %cmp = icmp eq %struct.test_fixture* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %fail_info = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %call, i64 0, i32 4
  store i32 0, i32* %fail_info, align 8, !tbaa !14
  %expected = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %call, i64 0, i32 6
  store i32 1, i32* %expected, align 8, !tbaa !11
  %cmp_ctx = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %call, i64 0, i32 1
  %0 = load %struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_ctx_st** %cmp_ctx, align 8, !tbaa !12
  %1 = load %struct.x509_st*, %struct.x509_st** @cert, align 8, !tbaa !3
  %call1 = tail call %struct.x509_st* @X509_dup(%struct.x509_st* noundef %1) #4
  %call2 = tail call i32 @ossl_cmp_ctx_set0_newCert(%struct.ossl_cmp_ctx_st* noundef %0, %struct.x509_st* noundef %call1) #4
  %cmp3 = icmp ne i32 %call2, 0
  %conv = zext i1 %cmp3 to i32
  %call4 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 289, i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.61, i64 0, i64 0), i32 noundef %conv) #4
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %cleanup.sink.split, label %if.then9

if.then9:                                         ; preds = %if.end
  %call10 = tail call fastcc i32 @execute_certconf_create_test(%struct.test_fixture* noundef nonnull %call) #5
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end, %if.then9
  %retval.0.ph = phi i32 [ %call10, %if.then9 ], [ 0, %if.end ]
  tail call fastcc void @tear_down(%struct.test_fixture* noundef nonnull %call) #5
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_cmp_create_certconf_badAlg() #0 {
entry:
  %call = tail call fastcc %struct.test_fixture* @set_up(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.30, i64 0, i64 0)) #5
  %cmp = icmp eq %struct.test_fixture* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %fail_info = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %call, i64 0, i32 4
  store i32 1, i32* %fail_info, align 8, !tbaa !14
  %expected = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %call, i64 0, i32 6
  store i32 1, i32* %expected, align 8, !tbaa !11
  %cmp_ctx = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %call, i64 0, i32 1
  %0 = load %struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_ctx_st** %cmp_ctx, align 8, !tbaa !12
  %1 = load %struct.x509_st*, %struct.x509_st** @cert, align 8, !tbaa !3
  %call1 = tail call %struct.x509_st* @X509_dup(%struct.x509_st* noundef %1) #4
  %call2 = tail call i32 @ossl_cmp_ctx_set0_newCert(%struct.ossl_cmp_ctx_st* noundef %0, %struct.x509_st* noundef %call1) #4
  %cmp3 = icmp ne i32 %call2, 0
  %conv = zext i1 %cmp3 to i32
  %call4 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 303, i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.61, i64 0, i64 0), i32 noundef %conv) #4
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %cleanup.sink.split, label %if.then9

if.then9:                                         ; preds = %if.end
  %call10 = tail call fastcc i32 @execute_certconf_create_test(%struct.test_fixture* noundef nonnull %call) #5
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end, %if.then9
  %retval.0.ph = phi i32 [ %call10, %if.then9 ], [ 0, %if.end ]
  tail call fastcc void @tear_down(%struct.test_fixture* noundef nonnull %call) #5
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_cmp_create_certconf_fail_info_max() #0 {
entry:
  %call = tail call fastcc %struct.test_fixture* @set_up(i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.31, i64 0, i64 0)) #5
  %cmp = icmp eq %struct.test_fixture* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %fail_info = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %call, i64 0, i32 4
  store i32 67108864, i32* %fail_info, align 8, !tbaa !14
  %expected = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %call, i64 0, i32 6
  store i32 1, i32* %expected, align 8, !tbaa !11
  %cmp_ctx = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %call, i64 0, i32 1
  %0 = load %struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_ctx_st** %cmp_ctx, align 8, !tbaa !12
  %1 = load %struct.x509_st*, %struct.x509_st** @cert, align 8, !tbaa !3
  %call1 = tail call %struct.x509_st* @X509_dup(%struct.x509_st* noundef %1) #4
  %call2 = tail call i32 @ossl_cmp_ctx_set0_newCert(%struct.ossl_cmp_ctx_st* noundef %0, %struct.x509_st* noundef %call1) #4
  %cmp3 = icmp ne i32 %call2, 0
  %conv = zext i1 %cmp3 to i32
  %call4 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 317, i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.61, i64 0, i64 0), i32 noundef %conv) #4
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %cleanup.sink.split, label %if.then9

if.then9:                                         ; preds = %if.end
  %call10 = tail call fastcc i32 @execute_certconf_create_test(%struct.test_fixture* noundef nonnull %call) #5
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end, %if.then9
  %retval.0.ph = phi i32 [ %call10, %if.then9 ], [ 0, %if.end ]
  tail call fastcc void @tear_down(%struct.test_fixture* noundef nonnull %call) #5
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_cmp_create_kur() #0 {
entry:
  %call = tail call fastcc %struct.test_fixture* @set_up(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.32, i64 0, i64 0)) #5
  %cmp = icmp eq %struct.test_fixture* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %bodytype = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %call, i64 0, i32 2
  store i32 7, i32* %bodytype, align 8, !tbaa !7
  %err_code = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %call, i64 0, i32 3
  store i32 -1, i32* %err_code, align 4, !tbaa !10
  %expected = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %call, i64 0, i32 6
  store i32 1, i32* %expected, align 8, !tbaa !11
  %cmp_ctx = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %call, i64 0, i32 1
  %0 = load %struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_ctx_st** %cmp_ctx, align 8, !tbaa !12
  %1 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** @newkey, align 8, !tbaa !3
  %call1 = tail call fastcc i32 @set1_newPkey(%struct.ossl_cmp_ctx_st* noundef %0, %struct.evp_pkey_st* noundef %1) #5
  %cmp2 = icmp ne i32 %call1, 0
  %conv = zext i1 %cmp2 to i32
  %call3 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 260, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.45, i64 0, i64 0), i32 noundef %conv) #4
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %cleanup.sink.split, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %2 = load %struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_ctx_st** %cmp_ctx, align 8, !tbaa !12
  %3 = load %struct.x509_st*, %struct.x509_st** @cert, align 8, !tbaa !3
  %call5 = tail call i32 @OSSL_CMP_CTX_set1_oldCert(%struct.ossl_cmp_ctx_st* noundef %2, %struct.x509_st* noundef %3) #4
  %cmp6 = icmp ne i32 %call5, 0
  %conv7 = zext i1 %cmp6 to i32
  %call8 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 261, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.63, i64 0, i64 0), i32 noundef %conv7) #4
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %cleanup.sink.split, label %if.then14

if.then14:                                        ; preds = %lor.lhs.false
  %call15 = tail call fastcc i32 @execute_certreq_create_test(%struct.test_fixture* noundef nonnull %call) #5
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %lor.lhs.false, %if.end, %if.then14
  %retval.0.ph = phi i32 [ %call15, %if.then14 ], [ 0, %if.end ], [ 0, %lor.lhs.false ]
  tail call fastcc void @tear_down(%struct.test_fixture* noundef nonnull %call) #5
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_cmp_create_kur_without_oldcert() #0 {
entry:
  %call = tail call fastcc %struct.test_fixture* @set_up(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.33, i64 0, i64 0)) #5
  %cmp = icmp eq %struct.test_fixture* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %bodytype = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %call, i64 0, i32 2
  store i32 7, i32* %bodytype, align 8, !tbaa !7
  %err_code = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %call, i64 0, i32 3
  store i32 -1, i32* %err_code, align 4, !tbaa !10
  %expected = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %call, i64 0, i32 6
  store i32 0, i32* %expected, align 8, !tbaa !11
  %cmp_ctx = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %call, i64 0, i32 1
  %0 = load %struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_ctx_st** %cmp_ctx, align 8, !tbaa !12
  %1 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** @newkey, align 8, !tbaa !3
  %call1 = tail call fastcc i32 @set1_newPkey(%struct.ossl_cmp_ctx_st* noundef %0, %struct.evp_pkey_st* noundef %1) #5
  %cmp2 = icmp ne i32 %call1, 0
  %conv = zext i1 %cmp2 to i32
  %call3 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 275, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.45, i64 0, i64 0), i32 noundef %conv) #4
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %cleanup.sink.split, label %if.then8

if.then8:                                         ; preds = %if.end
  %call9 = tail call fastcc i32 @execute_certreq_create_test(%struct.test_fixture* noundef nonnull %call) #5
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end, %if.then8
  %retval.0.ph = phi i32 [ %call9, %if.then8 ], [ 0, %if.end ]
  tail call fastcc void @tear_down(%struct.test_fixture* noundef nonnull %call) #5
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_cmp_create_cr() #0 {
entry:
  %call = tail call fastcc %struct.test_fixture* @set_up(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.34, i64 0, i64 0)) #5
  %cmp = icmp eq %struct.test_fixture* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %bodytype = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %call, i64 0, i32 2
  store i32 2, i32* %bodytype, align 8, !tbaa !7
  %err_code = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %call, i64 0, i32 3
  store i32 -1, i32* %err_code, align 4, !tbaa !10
  %expected = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %call, i64 0, i32 6
  store i32 1, i32* %expected, align 8, !tbaa !11
  %cmp_ctx = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %call, i64 0, i32 1
  %0 = load %struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_ctx_st** %cmp_ctx, align 8, !tbaa !12
  %1 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** @newkey, align 8, !tbaa !3
  %call1 = tail call fastcc i32 @set1_newPkey(%struct.ossl_cmp_ctx_st* noundef %0, %struct.evp_pkey_st* noundef %1) #5
  %cmp2 = icmp ne i32 %call1, 0
  %conv = zext i1 %cmp2 to i32
  %call3 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 197, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.45, i64 0, i64 0), i32 noundef %conv) #4
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %cleanup.sink.split, label %if.then8

if.then8:                                         ; preds = %if.end
  %call9 = tail call fastcc i32 @execute_certreq_create_test(%struct.test_fixture* noundef nonnull %call) #5
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end, %if.then8
  %retval.0.ph = phi i32 [ %call9, %if.then8 ], [ 0, %if.end ]
  tail call fastcc void @tear_down(%struct.test_fixture* noundef nonnull %call) #5
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_cmp_create_cr_without_key() #0 {
entry:
  %call = tail call fastcc %struct.test_fixture* @set_up(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.35, i64 0, i64 0)) #5
  %cmp = icmp eq %struct.test_fixture* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %bodytype = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %call, i64 0, i32 2
  store i32 2, i32* %bodytype, align 8, !tbaa !7
  %err_code = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %call, i64 0, i32 3
  store i32 -1, i32* %err_code, align 4, !tbaa !10
  %expected = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %call, i64 0, i32 6
  store i32 0, i32* %expected, align 8, !tbaa !11
  %call3 = tail call fastcc i32 @execute_certreq_create_test(%struct.test_fixture* noundef nonnull %call) #5
  tail call fastcc void @tear_down(%struct.test_fixture* noundef nonnull %call) #5
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call3, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_cmp_create_p10cr() #0 {
entry:
  %call = tail call fastcc %struct.test_fixture* @set_up(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.36, i64 0, i64 0)) #5
  %cmp = icmp eq %struct.test_fixture* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %cmp_ctx = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %call, i64 0, i32 1
  %0 = load %struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_ctx_st** %cmp_ctx, align 8, !tbaa !12
  %bodytype = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %call, i64 0, i32 2
  store i32 4, i32* %bodytype, align 8, !tbaa !7
  %err_code = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %call, i64 0, i32 3
  store i32 163, i32* %err_code, align 4, !tbaa !10
  %expected = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %call, i64 0, i32 6
  store i32 1, i32* %expected, align 8, !tbaa !11
  %1 = load i8*, i8** @pkcs10_f, align 8, !tbaa !3
  %2 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @libctx, align 8, !tbaa !3
  %call1 = tail call %struct.X509_req_st* @load_csr_der(i8* noundef %1, %struct.ossl_lib_ctx_st* noundef %2) #4
  %3 = bitcast %struct.X509_req_st* %call1 to i8*
  %call2 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 229, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.64, i64 0, i64 0), i8* noundef %3) #4
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end14.thread, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %4 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** @newkey, align 8, !tbaa !3
  %call3 = tail call fastcc i32 @set1_newPkey(%struct.ossl_cmp_ctx_st* noundef %0, %struct.evp_pkey_st* noundef %4) #5
  %cmp4 = icmp ne i32 %call3, 0
  %conv = zext i1 %cmp4 to i32
  %call5 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 230, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.57, i64 0, i64 0), i32 noundef %conv) #4
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end14.thread, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %lor.lhs.false
  %call8 = tail call i32 @OSSL_CMP_CTX_set1_p10CSR(%struct.ossl_cmp_ctx_st* noundef %0, %struct.X509_req_st* noundef %call1) #4
  %cmp9 = icmp ne i32 %call8, 0
  %conv10 = zext i1 %cmp9 to i32
  %call11 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 231, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.65, i64 0, i64 0), i32 noundef %conv10) #4
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14.thread, label %if.then17

if.end14.thread:                                  ; preds = %if.end, %lor.lhs.false, %lor.lhs.false7
  tail call fastcc void @tear_down(%struct.test_fixture* noundef nonnull %call) #5
  tail call void @X509_REQ_free(%struct.X509_req_st* noundef %call1) #4
  br label %cleanup

if.then17:                                        ; preds = %lor.lhs.false7
  tail call void @X509_REQ_free(%struct.X509_req_st* noundef %call1) #4
  %call18 = tail call fastcc i32 @execute_certreq_create_test(%struct.test_fixture* noundef nonnull %call) #5
  tail call fastcc void @tear_down(%struct.test_fixture* noundef nonnull %call) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end14.thread, %if.then17, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ %call18, %if.then17 ], [ 0, %if.end14.thread ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_cmp_create_p10cr_null() #0 {
entry:
  %call = tail call fastcc %struct.test_fixture* @set_up(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.37, i64 0, i64 0)) #5
  %cmp = icmp eq %struct.test_fixture* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %bodytype = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %call, i64 0, i32 2
  store i32 4, i32* %bodytype, align 8, !tbaa !7
  %err_code = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %call, i64 0, i32 3
  store i32 163, i32* %err_code, align 4, !tbaa !10
  %expected = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %call, i64 0, i32 6
  store i32 0, i32* %expected, align 8, !tbaa !11
  %cmp_ctx = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %call, i64 0, i32 1
  %0 = load %struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_ctx_st** %cmp_ctx, align 8, !tbaa !12
  %1 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** @newkey, align 8, !tbaa !3
  %call1 = tail call fastcc i32 @set1_newPkey(%struct.ossl_cmp_ctx_st* noundef %0, %struct.evp_pkey_st* noundef %1) #5
  %cmp2 = icmp ne i32 %call1, 0
  %conv = zext i1 %cmp2 to i32
  %call3 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 246, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.45, i64 0, i64 0), i32 noundef %conv) #4
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %cleanup.sink.split, label %if.then8

if.then8:                                         ; preds = %if.end
  %call9 = tail call fastcc i32 @execute_certreq_create_test(%struct.test_fixture* noundef nonnull %call) #5
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end, %if.then8
  %retval.0.ph = phi i32 [ %call9, %if.then8 ], [ 0, %if.end ]
  tail call fastcc void @tear_down(%struct.test_fixture* noundef nonnull %call) #5
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_cmp_create_pollreq() #0 {
entry:
  %call = tail call fastcc %struct.test_fixture* @set_up(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.38, i64 0, i64 0)) #5
  %cmp = icmp eq %struct.test_fixture* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %expected = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %call, i64 0, i32 6
  store i32 1, i32* %expected, align 8, !tbaa !11
  %call3 = tail call fastcc i32 @execute_pollreq_create_test(%struct.test_fixture* noundef nonnull %call) #5
  tail call fastcc void @tear_down(%struct.test_fixture* noundef nonnull %call) #5
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call3, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_cmp_create_rr() #0 {
entry:
  %call = tail call fastcc %struct.test_fixture* @set_up(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.39, i64 0, i64 0)) #5
  %cmp = icmp eq %struct.test_fixture* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %expected = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %call, i64 0, i32 6
  store i32 1, i32* %expected, align 8, !tbaa !11
  %cmp_ctx = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %call, i64 0, i32 1
  %0 = load %struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_ctx_st** %cmp_ctx, align 8, !tbaa !12
  %1 = load %struct.x509_st*, %struct.x509_st** @cert, align 8, !tbaa !3
  %call1 = tail call i32 @OSSL_CMP_CTX_set1_oldCert(%struct.ossl_cmp_ctx_st* noundef %0, %struct.x509_st* noundef %1) #4
  %cmp2 = icmp ne i32 %call1, 0
  %conv = zext i1 %cmp2 to i32
  %call3 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 354, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.63, i64 0, i64 0), i32 noundef %conv) #4
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %cleanup.sink.split, label %if.then8

if.then8:                                         ; preds = %if.end
  %call9 = tail call fastcc i32 @execute_rr_create_test(%struct.test_fixture* noundef nonnull %call) #5
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end, %if.then8
  %retval.0.ph = phi i32 [ %call9, %if.then8 ], [ 0, %if.end ]
  tail call fastcc void @tear_down(%struct.test_fixture* noundef nonnull %call) #5
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_cmp_create_rp() #0 {
entry:
  %call = tail call fastcc %struct.test_fixture* @set_up(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.40, i64 0, i64 0)) #5
  %cmp = icmp eq %struct.test_fixture* %call, null
  br i1 %cmp, label %cleanup, label %if.then2

if.then2:                                         ; preds = %entry
  %call3 = tail call fastcc i32 @execute_rp_create(%struct.test_fixture* noundef nonnull %call) #5
  tail call fastcc void @tear_down(%struct.test_fixture* noundef nonnull %call) #5
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.then2
  %retval.0 = phi i32 [ %call3, %if.then2 ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_cmp_create_genm() #0 {
entry:
  %call = tail call fastcc %struct.test_fixture* @set_up(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.41, i64 0, i64 0)) #5
  %cmp = icmp eq %struct.test_fixture* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %expected = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %call, i64 0, i32 6
  store i32 1, i32* %expected, align 8, !tbaa !11
  %call1 = tail call %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef 310) #4
  %call2 = tail call %struct.ossl_cmp_itav_st* @OSSL_CMP_ITAV_create(%struct.asn1_object_st* noundef %call1, %struct.asn1_type_st* noundef null) #4
  %0 = bitcast %struct.ossl_cmp_itav_st* %call2 to i8*
  %call3 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 369, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.73, i64 0, i64 0), i8* noundef %0) #4
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end9.thread, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %cmp_ctx = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %call, i64 0, i32 1
  %1 = load %struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_ctx_st** %cmp_ctx, align 8, !tbaa !12
  %call4 = tail call i32 @OSSL_CMP_CTX_push0_genm_ITAV(%struct.ossl_cmp_ctx_st* noundef %1, %struct.ossl_cmp_itav_st* noundef %call2) #4
  %cmp5 = icmp ne i32 %call4, 0
  %conv = zext i1 %cmp5 to i32
  %call6 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 370, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.74, i64 0, i64 0), i32 noundef %conv) #4
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9.thread, label %if.then12

if.end9.thread:                                   ; preds = %if.end, %lor.lhs.false
  tail call void @OSSL_CMP_ITAV_free(%struct.ossl_cmp_itav_st* noundef %call2) #4
  br label %cleanup.sink.split

if.then12:                                        ; preds = %lor.lhs.false
  %call13 = tail call fastcc i32 @execute_genm_create_test(%struct.test_fixture* noundef nonnull %call) #5
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then12, %if.end9.thread
  %retval.0.ph = phi i32 [ 0, %if.end9.thread ], [ %call13, %if.then12 ]
  tail call fastcc void @tear_down(%struct.test_fixture* noundef nonnull %call) #5
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_cmp_create_certrep() #0 {
entry:
  %call = tail call fastcc %struct.test_fixture* @set_up(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.42, i64 0, i64 0)) #5
  %cmp = icmp eq %struct.test_fixture* %call, null
  br i1 %cmp, label %cleanup, label %if.then2

if.then2:                                         ; preds = %entry
  %call3 = tail call fastcc i32 @execute_certrep_create(%struct.test_fixture* noundef nonnull %call) #5
  tail call fastcc void @tear_down(%struct.test_fixture* noundef nonnull %call) #5
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.then2
  %retval.0 = phi i32 [ %call3, %if.then2 ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_cmp_create_pollrep() #0 {
entry:
  %call = tail call fastcc %struct.test_fixture* @set_up(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.43, i64 0, i64 0)) #5
  %cmp = icmp eq %struct.test_fixture* %call, null
  br i1 %cmp, label %cleanup, label %if.then2

if.then2:                                         ; preds = %entry
  %call3 = tail call fastcc i32 @execute_pollrep_create(%struct.test_fixture* noundef nonnull %call) #5
  tail call fastcc void @tear_down(%struct.test_fixture* noundef nonnull %call) #5
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.then2
  %retval.0 = phi i32 [ %call3, %if.then2 ], [ 0, %entry ]
  ret i32 %retval.0
}

declare dso_local void @add_all_tests(i8* noundef, i32 (i32)* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_cmp_pkimessage_create(i32 noundef %bodytype) #0 {
entry:
  %call = tail call fastcc %struct.test_fixture* @set_up(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.44, i64 0, i64 0)) #5
  %cmp = icmp eq %struct.test_fixture* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %bodytype1 = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %call, i64 0, i32 2
  store i32 %bodytype, i32* %bodytype1, align 8, !tbaa !7
  switch i32 %bodytype, label %sw.default [
    i32 4, label %sw.bb
    i32 0, label %sw.bb8
    i32 1, label %sw.bb8
    i32 2, label %sw.bb8
    i32 3, label %sw.bb8
    i32 7, label %sw.bb8
    i32 8, label %sw.bb8
    i32 11, label %sw.bb8
    i32 12, label %sw.bb8
    i32 19, label %sw.bb8
    i32 21, label %sw.bb8
    i32 22, label %sw.bb8
    i32 23, label %sw.bb8
    i32 24, label %sw.bb8
    i32 25, label %sw.bb8
    i32 26, label %sw.bb8
  ]

sw.bb:                                            ; preds = %if.end
  %expected = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %call, i64 0, i32 6
  store i32 1, i32* %expected, align 8, !tbaa !11
  %0 = load i8*, i8** @pkcs10_f, align 8, !tbaa !3
  %1 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @libctx, align 8, !tbaa !3
  %call2 = tail call %struct.X509_req_st* @load_csr_der(i8* noundef %0, %struct.ossl_lib_ctx_st* noundef %1) #4
  %cmp_ctx = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %call, i64 0, i32 1
  %2 = load %struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_ctx_st** %cmp_ctx, align 8, !tbaa !12
  %call3 = tail call i32 @OSSL_CMP_CTX_set1_p10CSR(%struct.ossl_cmp_ctx_st* noundef %2, %struct.X509_req_st* noundef %call2) #4
  %cmp4 = icmp ne i32 %call3, 0
  %conv = zext i1 %cmp4 to i32
  %call5 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 508, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.83, i64 0, i64 0), i32 noundef %conv) #4
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %sw.epilog.thread34, label %sw.epilog

sw.epilog.thread34:                               ; preds = %sw.bb
  tail call fastcc void @tear_down(%struct.test_fixture* noundef nonnull %call) #5
  tail call void @X509_REQ_free(%struct.X509_req_st* noundef %call2) #4
  br label %cleanup

sw.bb8:                                           ; preds = %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end
  %expected9 = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %call, i64 0, i32 6
  store i32 1, i32* %expected9, align 8, !tbaa !11
  br label %if.then13

sw.default:                                       ; preds = %if.end
  %expected10 = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %call, i64 0, i32 6
  store i32 0, i32* %expected10, align 8, !tbaa !11
  br label %if.then13

sw.epilog:                                        ; preds = %sw.bb
  tail call void @X509_REQ_free(%struct.X509_req_st* noundef %call2) #4
  br label %if.then13

if.then13:                                        ; preds = %sw.bb8, %sw.default, %sw.epilog
  %call14 = tail call fastcc i32 @execute_pkimessage_create_test(%struct.test_fixture* noundef nonnull %call) #5
  tail call fastcc void @tear_down(%struct.test_fixture* noundef nonnull %call) #5
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog.thread34, %if.then13, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ %call14, %if.then13 ], [ 0, %sw.epilog.thread34 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.test_fixture* @set_up(i8* noundef %test_case_name) unnamed_addr #0 {
entry:
  %call = tail call i8* @CRYPTO_zalloc(i64 noundef 56, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 52) #4
  %0 = bitcast i8* %call to %struct.test_fixture*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 52, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.46, i64 0, i64 0), i8* noundef %call) #4
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %test_case_name2 = bitcast i8* %call to i8**
  store i8* %test_case_name, i8** %test_case_name2, align 8, !tbaa !15
  %1 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @libctx, align 8, !tbaa !3
  %call3 = tail call %struct.ossl_cmp_ctx_st* @OSSL_CMP_CTX_new(%struct.ossl_lib_ctx_st* noundef %1, i8* noundef null) #4
  %cmp_ctx = getelementptr inbounds i8, i8* %call, i64 8
  %2 = bitcast i8* %cmp_ctx to %struct.ossl_cmp_ctx_st**
  store %struct.ossl_cmp_ctx_st* %call3, %struct.ossl_cmp_ctx_st** %2, align 8, !tbaa !12
  %3 = bitcast %struct.ossl_cmp_ctx_st* %call3 to i8*
  %call4 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 56, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.47, i64 0, i64 0), i8* noundef %3) #4
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then17, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %4 = load %struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_ctx_st** %2, align 8, !tbaa !12
  %call7 = tail call i32 @OSSL_CMP_CTX_set_option(%struct.ossl_cmp_ctx_st* noundef %4, i32 noundef 30, i32 noundef 1) #4
  %cmp = icmp ne i32 %call7, 0
  %conv = zext i1 %cmp to i32
  %call8 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 57, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.48, i64 0, i64 0), i32 noundef %conv) #4
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.then17, label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %lor.lhs.false
  %5 = load %struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_ctx_st** %2, align 8, !tbaa !12
  %call12 = tail call i32 @OSSL_CMP_CTX_set1_referenceValue(%struct.ossl_cmp_ctx_st* noundef %5, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @ref, i64 0, i64 0), i32 noundef 15) #4
  %cmp13 = icmp ne i32 %call12, 0
  %conv14 = zext i1 %cmp13 to i32
  %call15 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 59, i8* noundef getelementptr inbounds ([69 x i8], [69 x i8]* @.str.49, i64 0, i64 0), i32 noundef %conv14) #4
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.then17, label %cleanup

if.then17:                                        ; preds = %lor.lhs.false10, %lor.lhs.false, %if.end
  tail call fastcc void @tear_down(%struct.test_fixture* noundef nonnull %0) #5
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false10, %entry, %if.then17
  %retval.0 = phi %struct.test_fixture* [ null, %if.then17 ], [ null, %entry ], [ %0, %lor.lhs.false10 ]
  ret %struct.test_fixture* %retval.0
}

declare dso_local i32 @test_true(i8* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @set1_newPkey(%struct.ossl_cmp_ctx_st* noundef %ctx, %struct.evp_pkey_st* noundef %pkey) unnamed_addr #0 {
entry:
  %call = tail call i32 @EVP_PKEY_up_ref(%struct.evp_pkey_st* noundef %pkey) #4
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @OSSL_CMP_CTX_set0_newPkey(%struct.ossl_cmp_ctx_st* noundef %ctx, i32 noundef 1, %struct.evp_pkey_st* noundef %pkey) #4
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.then3, label %return

if.then3:                                         ; preds = %if.end
  tail call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %pkey) #4
  br label %return

return:                                           ; preds = %if.end, %entry, %if.then3
  %retval.0 = phi i32 [ 0, %if.then3 ], [ 0, %entry ], [ 1, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @tear_down(%struct.test_fixture* noundef %fixture) unnamed_addr #0 {
entry:
  %cmp_ctx = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %fixture, i64 0, i32 1
  %0 = load %struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_ctx_st** %cmp_ctx, align 8, !tbaa !12
  tail call void @OSSL_CMP_CTX_free(%struct.ossl_cmp_ctx_st* noundef %0) #4
  %msg = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %fixture, i64 0, i32 5
  %1 = load %struct.ossl_cmp_msg_st*, %struct.ossl_cmp_msg_st** %msg, align 8, !tbaa !16
  tail call void @OSSL_CMP_MSG_free(%struct.ossl_cmp_msg_st* noundef %1) #4
  %si = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %fixture, i64 0, i32 7
  %2 = load %struct.ossl_cmp_pkisi_st*, %struct.ossl_cmp_pkisi_st** %si, align 8, !tbaa !13
  tail call void @OSSL_CMP_PKISI_free(%struct.ossl_cmp_pkisi_st* noundef %2) #4
  %3 = bitcast %struct.test_fixture* %fixture to i8*
  tail call void @CRYPTO_free(i8* noundef %3, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 43) #4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @execute_certreq_create_test(%struct.test_fixture* nocapture noundef readonly %fixture) unnamed_addr #0 {
entry:
  %expected = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %fixture, i64 0, i32 6
  %0 = load i32, i32* %expected, align 8, !tbaa !11
  %cmp.not = icmp eq i32 %0, 0
  %cmp_ctx6 = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %fixture, i64 0, i32 1
  %1 = load %struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_ctx_st** %cmp_ctx6, align 8, !tbaa !12
  %bodytype7 = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %fixture, i64 0, i32 2
  %2 = load i32, i32* %bodytype7, align 8, !tbaa !7
  %call8 = tail call %struct.ossl_cmp_msg_st* @ossl_cmp_certreq_new(%struct.ossl_cmp_ctx_st* noundef %1, i32 noundef %2, %struct.ossl_crmf_msg_st* noundef null) #4
  %3 = bitcast %struct.ossl_cmp_msg_st* %call8 to i8*
  br i1 %cmp.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 92, i8* noundef getelementptr inbounds ([78 x i8], [78 x i8]* @.str.50, i64 0, i64 0), i8* noundef %3) #4
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %cond.end, label %land.rhs

land.rhs:                                         ; preds = %cond.true
  %call2 = tail call i32 @valid_asn1_encoding(%struct.ossl_cmp_msg_st* noundef %call8) #4
  %cmp3 = icmp ne i32 %call2, 0
  %conv = zext i1 %cmp3 to i32
  %call4 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 92, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.51, i64 0, i64 0), i32 noundef %conv) #4
  %tobool5 = icmp ne i32 %call4, 0
  %phi.cast = zext i1 %tobool5 to i32
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call9 = tail call i32 @test_ptr_null(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 92, i8* noundef getelementptr inbounds ([78 x i8], [78 x i8]* @.str.50, i64 0, i64 0), i8* noundef %3) #4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %land.rhs, %cond.false
  %cond = phi i32 [ %call9, %cond.false ], [ %phi.cast, %land.rhs ], [ 0, %cond.true ]
  tail call void @OSSL_CMP_MSG_free(%struct.ossl_cmp_msg_st* noundef %call8) #4
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  tail call void @ERR_print_errors_fp(%struct._IO_FILE* noundef %4) #4
  ret i32 %cond
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

declare dso_local i8* @CRYPTO_zalloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local %struct.ossl_cmp_ctx_st* @OSSL_CMP_CTX_new(%struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local i32 @OSSL_CMP_CTX_set_option(%struct.ossl_cmp_ctx_st* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @OSSL_CMP_CTX_set1_referenceValue(%struct.ossl_cmp_ctx_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @EVP_PKEY_up_ref(%struct.evp_pkey_st* noundef) local_unnamed_addr #1

declare dso_local i32 @OSSL_CMP_CTX_set0_newPkey(%struct.ossl_cmp_ctx_st* noundef, i32 noundef, %struct.evp_pkey_st* noundef) local_unnamed_addr #1

declare dso_local void @OSSL_CMP_CTX_free(%struct.ossl_cmp_ctx_st* noundef) local_unnamed_addr #1

declare dso_local void @OSSL_CMP_MSG_free(%struct.ossl_cmp_msg_st* noundef) local_unnamed_addr #1

declare dso_local void @OSSL_CMP_PKISI_free(%struct.ossl_cmp_pkisi_st* noundef) local_unnamed_addr #1

declare dso_local void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local %struct.ossl_cmp_msg_st* @ossl_cmp_certreq_new(%struct.ossl_cmp_ctx_st* noundef, i32 noundef, %struct.ossl_crmf_msg_st* noundef) local_unnamed_addr #1

declare dso_local i32 @valid_asn1_encoding(%struct.ossl_cmp_msg_st* noundef) local_unnamed_addr #1

declare dso_local i32 @test_ptr_null(i8* noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local void @ERR_print_errors_fp(%struct._IO_FILE* noundef) local_unnamed_addr #1

declare dso_local i32 @OSSL_CMP_CTX_set1_pkey(%struct.ossl_cmp_ctx_st* noundef, %struct.evp_pkey_st* noundef) local_unnamed_addr #1

declare dso_local i32 @OSSL_CMP_CTX_set1_cert(%struct.ossl_cmp_ctx_st* noundef, %struct.x509_st* noundef) local_unnamed_addr #1

declare dso_local i32 @OSSL_CMP_CTX_set1_secretValue(%struct.ossl_cmp_ctx_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local %struct.ossl_cmp_pkisi_st* @OSSL_CMP_STATUSINFO_new(i32 noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @execute_errormsg_create_test(%struct.test_fixture* nocapture noundef readonly %fixture) unnamed_addr #0 {
entry:
  %expected = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %fixture, i64 0, i32 6
  %0 = load i32, i32* %expected, align 8, !tbaa !11
  %cmp.not = icmp eq i32 %0, 0
  %cmp_ctx7 = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %fixture, i64 0, i32 1
  %1 = load %struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_ctx_st** %cmp_ctx7, align 8, !tbaa !12
  %si8 = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %fixture, i64 0, i32 7
  %2 = load %struct.ossl_cmp_pkisi_st*, %struct.ossl_cmp_pkisi_st** %si8, align 8, !tbaa !13
  %err_code9 = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %fixture, i64 0, i32 3
  %3 = load i32, i32* %err_code9, align 4, !tbaa !10
  %conv10 = sext i32 %3 to i64
  %call11 = tail call %struct.ossl_cmp_msg_st* @ossl_cmp_error_new(%struct.ossl_cmp_ctx_st* noundef %1, %struct.ossl_cmp_pkisi_st* noundef %2, i64 noundef %conv10, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.60, i64 0, i64 0), i32 noundef 0) #4
  %4 = bitcast %struct.ossl_cmp_msg_st* %call11 to i8*
  br i1 %cmp.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 99, i8* noundef getelementptr inbounds ([91 x i8], [91 x i8]* @.str.59, i64 0, i64 0), i8* noundef %4) #4
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %cond.end, label %land.rhs

land.rhs:                                         ; preds = %cond.true
  %call2 = tail call i32 @valid_asn1_encoding(%struct.ossl_cmp_msg_st* noundef %call11) #4
  %cmp3 = icmp ne i32 %call2, 0
  %conv4 = zext i1 %cmp3 to i32
  %call5 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 99, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.51, i64 0, i64 0), i32 noundef %conv4) #4
  %tobool6 = icmp ne i32 %call5, 0
  %phi.cast = zext i1 %tobool6 to i32
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call12 = tail call i32 @test_ptr_null(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 99, i8* noundef getelementptr inbounds ([91 x i8], [91 x i8]* @.str.59, i64 0, i64 0), i8* noundef %4) #4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %land.rhs, %cond.false
  %cond = phi i32 [ %call12, %cond.false ], [ %phi.cast, %land.rhs ], [ 0, %cond.true ]
  tail call void @OSSL_CMP_MSG_free(%struct.ossl_cmp_msg_st* noundef %call11) #4
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  tail call void @ERR_print_errors_fp(%struct._IO_FILE* noundef %5) #4
  ret i32 %cond
}

declare dso_local %struct.ossl_cmp_msg_st* @ossl_cmp_error_new(%struct.ossl_cmp_ctx_st* noundef, %struct.ossl_cmp_pkisi_st* noundef, i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @ossl_cmp_ctx_set0_newCert(%struct.ossl_cmp_ctx_st* noundef, %struct.x509_st* noundef) local_unnamed_addr #1

declare dso_local %struct.x509_st* @X509_dup(%struct.x509_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @execute_certconf_create_test(%struct.test_fixture* nocapture noundef readonly %fixture) unnamed_addr #0 {
entry:
  %expected = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %fixture, i64 0, i32 6
  %0 = load i32, i32* %expected, align 8, !tbaa !11
  %cmp.not = icmp eq i32 %0, 0
  %cmp_ctx6 = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %fixture, i64 0, i32 1
  %1 = load %struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_ctx_st** %cmp_ctx6, align 8, !tbaa !12
  %fail_info7 = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %fixture, i64 0, i32 4
  %2 = load i32, i32* %fail_info7, align 8, !tbaa !14
  %call8 = tail call %struct.ossl_cmp_msg_st* @ossl_cmp_certConf_new(%struct.ossl_cmp_ctx_st* noundef %1, i32 noundef %2, i8* noundef null) #4
  %3 = bitcast %struct.ossl_cmp_msg_st* %call8 to i8*
  br i1 %cmp.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 110, i8* noundef getelementptr inbounds ([81 x i8], [81 x i8]* @.str.62, i64 0, i64 0), i8* noundef %3) #4
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %cond.end, label %land.rhs

land.rhs:                                         ; preds = %cond.true
  %call2 = tail call i32 @valid_asn1_encoding(%struct.ossl_cmp_msg_st* noundef %call8) #4
  %cmp3 = icmp ne i32 %call2, 0
  %conv = zext i1 %cmp3 to i32
  %call4 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 110, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.51, i64 0, i64 0), i32 noundef %conv) #4
  %tobool5 = icmp ne i32 %call4, 0
  %phi.cast = zext i1 %tobool5 to i32
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call9 = tail call i32 @test_ptr_null(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 110, i8* noundef getelementptr inbounds ([81 x i8], [81 x i8]* @.str.62, i64 0, i64 0), i8* noundef %3) #4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %land.rhs, %cond.false
  %cond = phi i32 [ %call9, %cond.false ], [ %phi.cast, %land.rhs ], [ 0, %cond.true ]
  tail call void @OSSL_CMP_MSG_free(%struct.ossl_cmp_msg_st* noundef %call8) #4
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  tail call void @ERR_print_errors_fp(%struct._IO_FILE* noundef %4) #4
  ret i32 %cond
}

declare dso_local %struct.ossl_cmp_msg_st* @ossl_cmp_certConf_new(%struct.ossl_cmp_ctx_st* noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

declare dso_local i32 @OSSL_CMP_CTX_set1_oldCert(%struct.ossl_cmp_ctx_st* noundef, %struct.x509_st* noundef) local_unnamed_addr #1

declare dso_local %struct.X509_req_st* @load_csr_der(i8* noundef, %struct.ossl_lib_ctx_st* noundef) local_unnamed_addr #1

declare dso_local i32 @OSSL_CMP_CTX_set1_p10CSR(%struct.ossl_cmp_ctx_st* noundef, %struct.X509_req_st* noundef) local_unnamed_addr #1

declare dso_local void @X509_REQ_free(%struct.X509_req_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @execute_pollreq_create_test(%struct.test_fixture* nocapture noundef readonly %fixture) unnamed_addr #0 {
entry:
  %expected = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %fixture, i64 0, i32 6
  %0 = load i32, i32* %expected, align 8, !tbaa !11
  %cmp.not = icmp eq i32 %0, 0
  %cmp_ctx6 = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %fixture, i64 0, i32 1
  %1 = load %struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_ctx_st** %cmp_ctx6, align 8, !tbaa !12
  %call7 = tail call %struct.ossl_cmp_msg_st* @ossl_cmp_pollReq_new(%struct.ossl_cmp_ctx_st* noundef %1, i32 noundef 4711) #4
  %2 = bitcast %struct.ossl_cmp_msg_st* %call7 to i8*
  br i1 %cmp.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 120, i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.66, i64 0, i64 0), i8* noundef %2) #4
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %cond.end, label %land.rhs

land.rhs:                                         ; preds = %cond.true
  %call2 = tail call i32 @valid_asn1_encoding(%struct.ossl_cmp_msg_st* noundef %call7) #4
  %cmp3 = icmp ne i32 %call2, 0
  %conv = zext i1 %cmp3 to i32
  %call4 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 120, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.51, i64 0, i64 0), i32 noundef %conv) #4
  %tobool5 = icmp ne i32 %call4, 0
  %phi.cast = zext i1 %tobool5 to i32
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call8 = tail call i32 @test_ptr_null(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 120, i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.66, i64 0, i64 0), i8* noundef %2) #4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %land.rhs, %cond.false
  %cond = phi i32 [ %call8, %cond.false ], [ %phi.cast, %land.rhs ], [ 0, %cond.true ]
  tail call void @OSSL_CMP_MSG_free(%struct.ossl_cmp_msg_st* noundef %call7) #4
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  tail call void @ERR_print_errors_fp(%struct._IO_FILE* noundef %3) #4
  ret i32 %cond
}

declare dso_local %struct.ossl_cmp_msg_st* @ossl_cmp_pollReq_new(%struct.ossl_cmp_ctx_st* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @execute_rr_create_test(%struct.test_fixture* nocapture noundef readonly %fixture) unnamed_addr #0 {
entry:
  %expected = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %fixture, i64 0, i32 6
  %0 = load i32, i32* %expected, align 8, !tbaa !11
  %cmp.not = icmp eq i32 %0, 0
  %cmp_ctx6 = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %fixture, i64 0, i32 1
  %1 = load %struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_ctx_st** %cmp_ctx6, align 8, !tbaa !12
  %call7 = tail call %struct.ossl_cmp_msg_st* @ossl_cmp_rr_new(%struct.ossl_cmp_ctx_st* noundef %1) #4
  %2 = bitcast %struct.ossl_cmp_msg_st* %call7 to i8*
  br i1 %cmp.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 104, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.67, i64 0, i64 0), i8* noundef %2) #4
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %cond.end, label %land.rhs

land.rhs:                                         ; preds = %cond.true
  %call2 = tail call i32 @valid_asn1_encoding(%struct.ossl_cmp_msg_st* noundef %call7) #4
  %cmp3 = icmp ne i32 %call2, 0
  %conv = zext i1 %cmp3 to i32
  %call4 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 104, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.51, i64 0, i64 0), i32 noundef %conv) #4
  %tobool5 = icmp ne i32 %call4, 0
  %phi.cast = zext i1 %tobool5 to i32
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call8 = tail call i32 @test_ptr_null(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 104, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.67, i64 0, i64 0), i8* noundef %2) #4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %land.rhs, %cond.false
  %cond = phi i32 [ %call8, %cond.false ], [ %phi.cast, %land.rhs ], [ 0, %cond.true ]
  tail call void @OSSL_CMP_MSG_free(%struct.ossl_cmp_msg_st* noundef %call7) #4
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  tail call void @ERR_print_errors_fp(%struct._IO_FILE* noundef %3) #4
  ret i32 %cond
}

declare dso_local %struct.ossl_cmp_msg_st* @ossl_cmp_rr_new(%struct.ossl_cmp_ctx_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @execute_rp_create(%struct.test_fixture* nocapture noundef readonly %fixture) unnamed_addr #0 {
entry:
  %call = tail call %struct.ossl_cmp_pkisi_st* @OSSL_CMP_STATUSINFO_new(i32 noundef 33, i32 noundef 44, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.68, i64 0, i64 0)) #4
  %call1 = tail call %struct.X509_name_st* @X509_NAME_new() #4
  %call2 = tail call %struct.asn1_string_st* @ASN1_INTEGER_new() #4
  %cmp = icmp eq %struct.ossl_cmp_pkisi_st* %call, null
  %cmp3 = icmp eq %struct.X509_name_st* %call1, null
  %or.cond = select i1 %cmp, i1 true, i1 %cmp3
  %cmp5 = icmp eq %struct.asn1_string_st* %call2, null
  %or.cond31 = select i1 %or.cond, i1 true, i1 %cmp5
  br i1 %or.cond31, label %err, label %if.end

if.end:                                           ; preds = %entry
  %call6 = tail call i32 @X509_NAME_add_entry_by_txt(%struct.X509_name_st* noundef nonnull %call1, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.69, i64 0, i64 0), i32 noundef 4097, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.70, i64 0, i64 0), i32 noundef -1, i32 noundef -1, i32 noundef 0) #4
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %err, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %if.end
  %call8 = tail call i32 @ASN1_INTEGER_set(%struct.asn1_string_st* noundef nonnull %call2, i64 noundef 99) #4
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %err, label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %lor.lhs.false7
  %call11 = tail call %struct.ossl_crmf_certid_st* @OSSL_CRMF_CERTID_gen(%struct.X509_name_st* noundef nonnull %call1, %struct.asn1_string_st* noundef nonnull %call2) #4
  %cmp12 = icmp eq %struct.ossl_crmf_certid_st* %call11, null
  br i1 %cmp12, label %err, label %lor.lhs.false13

lor.lhs.false13:                                  ; preds = %lor.lhs.false10
  %cmp_ctx = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %fixture, i64 0, i32 1
  %0 = load %struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_ctx_st** %cmp_ctx, align 8, !tbaa !12
  %call14 = tail call %struct.ossl_cmp_msg_st* @ossl_cmp_rp_new(%struct.ossl_cmp_ctx_st* noundef %0, %struct.ossl_cmp_pkisi_st* noundef nonnull %call, %struct.ossl_crmf_certid_st* noundef nonnull %call11, i32 noundef 1) #4
  %cmp15 = icmp eq %struct.ossl_cmp_msg_st* %call14, null
  br i1 %cmp15, label %err, label %if.end17

if.end17:                                         ; preds = %lor.lhs.false13
  %body = getelementptr inbounds %struct.ossl_cmp_msg_st, %struct.ossl_cmp_msg_st* %call14, i64 0, i32 1
  %1 = load %struct.ossl_cmp_pkibody_st*, %struct.ossl_cmp_pkibody_st** %body, align 8, !tbaa !17
  %value = getelementptr inbounds %struct.ossl_cmp_pkibody_st, %struct.ossl_cmp_pkibody_st* %1, i64 0, i32 1
  %rp = bitcast %union.anon.2* %value to %struct.ossl_cmp_revrepcontent_st**
  %2 = load %struct.ossl_cmp_revrepcontent_st*, %struct.ossl_cmp_revrepcontent_st** %rp, align 8, !tbaa !19
  %call18 = tail call %struct.ossl_crmf_certid_st* @ossl_cmp_revrepcontent_get_CertId(%struct.ossl_cmp_revrepcontent_st* noundef %2, i32 noundef 0) #4
  %3 = bitcast %struct.ossl_crmf_certid_st* %call18 to i8*
  %call19 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 447, i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.71, i64 0, i64 0), i8* noundef %3) #4
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %err, label %if.end22

if.end22:                                         ; preds = %if.end17
  %4 = load %struct.ossl_cmp_pkibody_st*, %struct.ossl_cmp_pkibody_st** %body, align 8, !tbaa !17
  %value24 = getelementptr inbounds %struct.ossl_cmp_pkibody_st, %struct.ossl_cmp_pkibody_st* %4, i64 0, i32 1
  %rp25 = bitcast %union.anon.2* %value24 to %struct.ossl_cmp_revrepcontent_st**
  %5 = load %struct.ossl_cmp_revrepcontent_st*, %struct.ossl_cmp_revrepcontent_st** %rp25, align 8, !tbaa !19
  %call26 = tail call %struct.ossl_cmp_pkisi_st* @ossl_cmp_revrepcontent_get_pkisi(%struct.ossl_cmp_revrepcontent_st* noundef %5, i32 noundef 0) #4
  %6 = bitcast %struct.ossl_cmp_pkisi_st* %call26 to i8*
  %call27 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 450, i8* noundef getelementptr inbounds ([59 x i8], [59 x i8]* @.str.72, i64 0, i64 0), i8* noundef %6) #4
  %tobool28.not = icmp ne i32 %call27, 0
  %spec.select = zext i1 %tobool28.not to i32
  br label %err

err:                                              ; preds = %if.end22, %if.end17, %if.end, %lor.lhs.false7, %lor.lhs.false10, %lor.lhs.false13, %entry
  %cid.0 = phi %struct.ossl_crmf_certid_st* [ null, %entry ], [ null, %lor.lhs.false10 ], [ %call11, %lor.lhs.false13 ], [ %call11, %if.end17 ], [ null, %lor.lhs.false7 ], [ null, %if.end ], [ %call11, %if.end22 ]
  %rpmsg.0 = phi %struct.ossl_cmp_msg_st* [ null, %entry ], [ null, %lor.lhs.false10 ], [ null, %lor.lhs.false13 ], [ %call14, %if.end17 ], [ null, %lor.lhs.false7 ], [ null, %if.end ], [ %call14, %if.end22 ]
  %res.0 = phi i32 [ 0, %entry ], [ 0, %lor.lhs.false10 ], [ 0, %lor.lhs.false13 ], [ 0, %if.end17 ], [ 0, %lor.lhs.false7 ], [ 0, %if.end ], [ %spec.select, %if.end22 ]
  tail call void @ASN1_INTEGER_free(%struct.asn1_string_st* noundef %call2) #4
  tail call void @X509_NAME_free(%struct.X509_name_st* noundef %call1) #4
  tail call void @OSSL_CRMF_CERTID_free(%struct.ossl_crmf_certid_st* noundef %cid.0) #4
  tail call void @OSSL_CMP_PKISI_free(%struct.ossl_cmp_pkisi_st* noundef %call) #4
  tail call void @OSSL_CMP_MSG_free(%struct.ossl_cmp_msg_st* noundef %rpmsg.0) #4
  ret i32 %res.0
}

declare dso_local %struct.X509_name_st* @X509_NAME_new() local_unnamed_addr #1

declare dso_local %struct.asn1_string_st* @ASN1_INTEGER_new() local_unnamed_addr #1

declare dso_local i32 @X509_NAME_add_entry_by_txt(%struct.X509_name_st* noundef, i8* noundef, i32 noundef, i8* noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @ASN1_INTEGER_set(%struct.asn1_string_st* noundef, i64 noundef) local_unnamed_addr #1

declare dso_local %struct.ossl_crmf_certid_st* @OSSL_CRMF_CERTID_gen(%struct.X509_name_st* noundef, %struct.asn1_string_st* noundef) local_unnamed_addr #1

declare dso_local %struct.ossl_cmp_msg_st* @ossl_cmp_rp_new(%struct.ossl_cmp_ctx_st* noundef, %struct.ossl_cmp_pkisi_st* noundef, %struct.ossl_crmf_certid_st* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local %struct.ossl_crmf_certid_st* @ossl_cmp_revrepcontent_get_CertId(%struct.ossl_cmp_revrepcontent_st* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local %struct.ossl_cmp_pkisi_st* @ossl_cmp_revrepcontent_get_pkisi(%struct.ossl_cmp_revrepcontent_st* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local void @ASN1_INTEGER_free(%struct.asn1_string_st* noundef) local_unnamed_addr #1

declare dso_local void @X509_NAME_free(%struct.X509_name_st* noundef) local_unnamed_addr #1

declare dso_local void @OSSL_CRMF_CERTID_free(%struct.ossl_crmf_certid_st* noundef) local_unnamed_addr #1

declare dso_local %struct.ossl_cmp_itav_st* @OSSL_CMP_ITAV_create(%struct.asn1_object_st* noundef, %struct.asn1_type_st* noundef) local_unnamed_addr #1

declare dso_local %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef) local_unnamed_addr #1

declare dso_local i32 @OSSL_CMP_CTX_push0_genm_ITAV(%struct.ossl_cmp_ctx_st* noundef, %struct.ossl_cmp_itav_st* noundef) local_unnamed_addr #1

declare dso_local void @OSSL_CMP_ITAV_free(%struct.ossl_cmp_itav_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @execute_genm_create_test(%struct.test_fixture* nocapture noundef readonly %fixture) unnamed_addr #0 {
entry:
  %expected = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %fixture, i64 0, i32 6
  %0 = load i32, i32* %expected, align 8, !tbaa !11
  %cmp.not = icmp eq i32 %0, 0
  %cmp_ctx6 = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %fixture, i64 0, i32 1
  %1 = load %struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_ctx_st** %cmp_ctx6, align 8, !tbaa !12
  %call7 = tail call %struct.ossl_cmp_msg_st* @ossl_cmp_genm_new(%struct.ossl_cmp_ctx_st* noundef %1) #4
  %2 = bitcast %struct.ossl_cmp_msg_st* %call7 to i8*
  br i1 %cmp.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 115, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.75, i64 0, i64 0), i8* noundef %2) #4
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %cond.end, label %land.rhs

land.rhs:                                         ; preds = %cond.true
  %call2 = tail call i32 @valid_asn1_encoding(%struct.ossl_cmp_msg_st* noundef %call7) #4
  %cmp3 = icmp ne i32 %call2, 0
  %conv = zext i1 %cmp3 to i32
  %call4 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 115, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.51, i64 0, i64 0), i32 noundef %conv) #4
  %tobool5 = icmp ne i32 %call4, 0
  %phi.cast = zext i1 %tobool5 to i32
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call8 = tail call i32 @test_ptr_null(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 115, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.75, i64 0, i64 0), i8* noundef %2) #4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %land.rhs, %cond.false
  %cond = phi i32 [ %call8, %cond.false ], [ %phi.cast, %land.rhs ], [ 0, %cond.true ]
  tail call void @OSSL_CMP_MSG_free(%struct.ossl_cmp_msg_st* noundef %call7) #4
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  tail call void @ERR_print_errors_fp(%struct._IO_FILE* noundef %3) #4
  ret i32 %cond
}

declare dso_local %struct.ossl_cmp_msg_st* @ossl_cmp_genm_new(%struct.ossl_cmp_ctx_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @execute_certrep_create(%struct.test_fixture* nocapture noundef readonly %fixture) unnamed_addr #0 {
entry:
  %cmp_ctx = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %fixture, i64 0, i32 1
  %0 = load %struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_ctx_st** %cmp_ctx, align 8, !tbaa !12
  %call = tail call %struct.ossl_cmp_certrepmessage_st* @OSSL_CMP_CERTREPMESSAGE_new() #4
  %call1 = tail call %struct.ossl_cmp_certresponse_st* @OSSL_CMP_CERTRESPONSE_new() #4
  %cmp = icmp eq %struct.ossl_cmp_certrepmessage_st* %call, null
  %cmp2 = icmp eq %struct.ossl_cmp_certresponse_st* %call1, null
  %or.cond = select i1 %cmp, i1 true, i1 %cmp2
  br i1 %or.cond, label %err, label %if.end

if.end:                                           ; preds = %entry
  %certReqId = getelementptr inbounds %struct.ossl_cmp_certresponse_st, %struct.ossl_cmp_certresponse_st* %call1, i64 0, i32 0
  %1 = load %struct.asn1_string_st*, %struct.asn1_string_st** %certReqId, align 8, !tbaa !20
  %call3 = tail call i32 @ASN1_INTEGER_set(%struct.asn1_string_st* noundef %1, i64 noundef 99) #4
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %err, label %if.end5

if.end5:                                          ; preds = %if.end
  %call6 = tail call %struct.ossl_cmp_certifiedkeypair_st* @OSSL_CMP_CERTIFIEDKEYPAIR_new() #4
  %certifiedKeyPair = getelementptr inbounds %struct.ossl_cmp_certresponse_st, %struct.ossl_cmp_certresponse_st* %call1, i64 0, i32 2
  store %struct.ossl_cmp_certifiedkeypair_st* %call6, %struct.ossl_cmp_certifiedkeypair_st** %certifiedKeyPair, align 8, !tbaa !22
  %cmp7 = icmp eq %struct.ossl_cmp_certifiedkeypair_st* %call6, null
  br i1 %cmp7, label %err, label %if.end9

if.end9:                                          ; preds = %if.end5
  %certOrEncCert = getelementptr inbounds %struct.ossl_cmp_certifiedkeypair_st, %struct.ossl_cmp_certifiedkeypair_st* %call6, i64 0, i32 0
  %2 = load %struct.ossl_cmp_certorenccert_st*, %struct.ossl_cmp_certorenccert_st** %certOrEncCert, align 8, !tbaa !23
  %type = getelementptr inbounds %struct.ossl_cmp_certorenccert_st, %struct.ossl_cmp_certorenccert_st* %2, i64 0, i32 0
  store i32 0, i32* %type, align 8, !tbaa !25
  %3 = load %struct.x509_st*, %struct.x509_st** @cert, align 8, !tbaa !3
  %call11 = tail call %struct.x509_st* @X509_dup(%struct.x509_st* noundef %3) #4
  %4 = load %struct.ossl_cmp_certifiedkeypair_st*, %struct.ossl_cmp_certifiedkeypair_st** %certifiedKeyPair, align 8, !tbaa !22
  %certOrEncCert13 = getelementptr inbounds %struct.ossl_cmp_certifiedkeypair_st, %struct.ossl_cmp_certifiedkeypair_st* %4, i64 0, i32 0
  %5 = load %struct.ossl_cmp_certorenccert_st*, %struct.ossl_cmp_certorenccert_st** %certOrEncCert13, align 8, !tbaa !23
  %certificate = getelementptr inbounds %struct.ossl_cmp_certorenccert_st, %struct.ossl_cmp_certorenccert_st* %5, i64 0, i32 1, i32 0
  store %struct.x509_st* %call11, %struct.x509_st** %certificate, align 8, !tbaa !19
  %cmp14 = icmp eq %struct.x509_st* %call11, null
  br i1 %cmp14, label %err, label %lor.lhs.false15

lor.lhs.false15:                                  ; preds = %if.end9
  %response = getelementptr inbounds %struct.ossl_cmp_certrepmessage_st, %struct.ossl_cmp_certrepmessage_st* %call, i64 0, i32 1
  %6 = load %struct.stack_st_OSSL_CMP_CERTRESPONSE*, %struct.stack_st_OSSL_CMP_CERTRESPONSE** %response, align 8, !tbaa !27
  %call16 = tail call fastcc %struct.stack_st* @ossl_check_OSSL_CMP_CERTRESPONSE_sk_type(%struct.stack_st_OSSL_CMP_CERTRESPONSE* noundef %6) #5
  %7 = bitcast %struct.ossl_cmp_certresponse_st* %call1 to i8*
  %call18 = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call16, i8* noundef %7) #4
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %err, label %if.end21

if.end21:                                         ; preds = %lor.lhs.false15
  %call22 = tail call %struct.ossl_cmp_certresponse_st* @ossl_cmp_certrepmessage_get0_certresponse(%struct.ossl_cmp_certrepmessage_st* noundef nonnull %call, i32 noundef 99) #4
  %8 = bitcast %struct.ossl_cmp_certresponse_st* %call22 to i8*
  %call23 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 403, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.76, i64 0, i64 0), i8* noundef %8) #4
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %err, label %if.end26

if.end26:                                         ; preds = %if.end21
  %call27 = tail call %struct.ossl_cmp_certresponse_st* @ossl_cmp_certrepmessage_get0_certresponse(%struct.ossl_cmp_certrepmessage_st* noundef nonnull %call, i32 noundef 88) #4
  %9 = bitcast %struct.ossl_cmp_certresponse_st* %call27 to i8*
  %call28 = tail call i32 @test_ptr_null(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 405, i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.77, i64 0, i64 0), i8* noundef %9) #4
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %err, label %if.end31

if.end31:                                         ; preds = %if.end26
  %call32 = tail call %struct.evp_pkey_st* @OSSL_CMP_CTX_get0_newPkey(%struct.ossl_cmp_ctx_st* noundef %0, i32 noundef 1) #4
  %call33 = tail call %struct.x509_st* @ossl_cmp_certresponse_get1_cert(%struct.ossl_cmp_certresponse_st* noundef %call22, %struct.ossl_cmp_ctx_st* noundef %0, %struct.evp_pkey_st* noundef %call32) #4
  %cmp34 = icmp eq %struct.x509_st* %call33, null
  br i1 %cmp34, label %err, label %lor.lhs.false35

lor.lhs.false35:                                  ; preds = %if.end31
  %10 = load %struct.x509_st*, %struct.x509_st** @cert, align 8, !tbaa !3
  %call36 = tail call i32 @X509_cmp(%struct.x509_st* noundef %10, %struct.x509_st* noundef nonnull %call33) #4
  %call37 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 409, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.78, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.79, i64 0, i64 0), i32 noundef %call36, i32 noundef 0) #4
  %tobool38.not = icmp ne i32 %call37, 0
  %spec.select = zext i1 %tobool38.not to i32
  br label %err

err:                                              ; preds = %lor.lhs.false35, %if.end31, %if.end26, %if.end21, %if.end9, %lor.lhs.false15, %if.end5, %if.end, %entry
  %cresp.0 = phi %struct.ossl_cmp_certresponse_st* [ %call1, %entry ], [ %call1, %if.end5 ], [ %call1, %if.end9 ], [ null, %if.end31 ], [ null, %if.end26 ], [ null, %if.end21 ], [ %call1, %lor.lhs.false15 ], [ %call1, %if.end ], [ null, %lor.lhs.false35 ]
  %certfromresp.0 = phi %struct.x509_st* [ null, %entry ], [ null, %if.end5 ], [ null, %if.end9 ], [ null, %if.end31 ], [ null, %if.end26 ], [ null, %if.end21 ], [ null, %lor.lhs.false15 ], [ null, %if.end ], [ %call33, %lor.lhs.false35 ]
  %res.0 = phi i32 [ 0, %entry ], [ 0, %if.end5 ], [ 0, %if.end9 ], [ 0, %if.end31 ], [ 0, %if.end26 ], [ 0, %if.end21 ], [ 0, %lor.lhs.false15 ], [ 0, %if.end ], [ %spec.select, %lor.lhs.false35 ]
  tail call void @X509_free(%struct.x509_st* noundef %certfromresp.0) #4
  tail call void @OSSL_CMP_CERTRESPONSE_free(%struct.ossl_cmp_certresponse_st* noundef %cresp.0) #4
  tail call void @OSSL_CMP_CERTREPMESSAGE_free(%struct.ossl_cmp_certrepmessage_st* noundef %call) #4
  ret i32 %res.0
}

declare dso_local %struct.ossl_cmp_certrepmessage_st* @OSSL_CMP_CERTREPMESSAGE_new() local_unnamed_addr #1

declare dso_local %struct.ossl_cmp_certresponse_st* @OSSL_CMP_CERTRESPONSE_new() local_unnamed_addr #1

declare dso_local %struct.ossl_cmp_certifiedkeypair_st* @OSSL_CMP_CERTIFIEDKEYPAIR_new() local_unnamed_addr #1

declare dso_local i32 @OPENSSL_sk_push(%struct.stack_st* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_OSSL_CMP_CERTRESPONSE_sk_type(%struct.stack_st_OSSL_CMP_CERTRESPONSE* noundef readnone %sk) unnamed_addr #2 {
entry:
  %0 = bitcast %struct.stack_st_OSSL_CMP_CERTRESPONSE* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare dso_local %struct.ossl_cmp_certresponse_st* @ossl_cmp_certrepmessage_get0_certresponse(%struct.ossl_cmp_certrepmessage_st* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local %struct.evp_pkey_st* @OSSL_CMP_CTX_get0_newPkey(%struct.ossl_cmp_ctx_st* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local %struct.x509_st* @ossl_cmp_certresponse_get1_cert(%struct.ossl_cmp_certresponse_st* noundef, %struct.ossl_cmp_ctx_st* noundef, %struct.evp_pkey_st* noundef) local_unnamed_addr #1

declare dso_local i32 @X509_cmp(%struct.x509_st* noundef, %struct.x509_st* noundef) local_unnamed_addr #1

declare dso_local void @OSSL_CMP_CERTRESPONSE_free(%struct.ossl_cmp_certresponse_st* noundef) local_unnamed_addr #1

declare dso_local void @OSSL_CMP_CERTREPMESSAGE_free(%struct.ossl_cmp_certrepmessage_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @execute_pollrep_create(%struct.test_fixture* nocapture noundef readonly %fixture) unnamed_addr #0 {
entry:
  %cmp_ctx = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %fixture, i64 0, i32 1
  %0 = load %struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_ctx_st** %cmp_ctx, align 8, !tbaa !12
  %call = tail call %struct.ossl_cmp_msg_st* @ossl_cmp_pollRep_new(%struct.ossl_cmp_ctx_st* noundef %0, i32 noundef 77, i64 noundef 2000) #4
  %1 = bitcast %struct.ossl_cmp_msg_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 476, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.80, i64 0, i64 0), i8* noundef %1) #4
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %body = getelementptr inbounds %struct.ossl_cmp_msg_st, %struct.ossl_cmp_msg_st* %call, i64 0, i32 1
  %2 = load %struct.ossl_cmp_pkibody_st*, %struct.ossl_cmp_pkibody_st** %body, align 8, !tbaa !17
  %value = getelementptr inbounds %struct.ossl_cmp_pkibody_st, %struct.ossl_cmp_pkibody_st* %2, i64 0, i32 1
  %pollRep = bitcast %union.anon.2* %value to %struct.stack_st_OSSL_CMP_POLLREP**
  %3 = load %struct.stack_st_OSSL_CMP_POLLREP*, %struct.stack_st_OSSL_CMP_POLLREP** %pollRep, align 8, !tbaa !19
  %call2 = tail call %struct.ossl_cmp_pollrep_st* @ossl_cmp_pollrepcontent_get0_pollrep(%struct.stack_st_OSSL_CMP_POLLREP* noundef %3, i32 noundef 77) #4
  %4 = bitcast %struct.ossl_cmp_pollrep_st* %call2 to i8*
  %call3 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 479, i8* noundef getelementptr inbounds ([72 x i8], [72 x i8]* @.str.81, i64 0, i64 0), i8* noundef %4) #4
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %err, label %if.end6

if.end6:                                          ; preds = %if.end
  %5 = load %struct.ossl_cmp_pkibody_st*, %struct.ossl_cmp_pkibody_st** %body, align 8, !tbaa !17
  %value8 = getelementptr inbounds %struct.ossl_cmp_pkibody_st, %struct.ossl_cmp_pkibody_st* %5, i64 0, i32 1
  %pollRep9 = bitcast %union.anon.2* %value8 to %struct.stack_st_OSSL_CMP_POLLREP**
  %6 = load %struct.stack_st_OSSL_CMP_POLLREP*, %struct.stack_st_OSSL_CMP_POLLREP** %pollRep9, align 8, !tbaa !19
  %call10 = tail call %struct.ossl_cmp_pollrep_st* @ossl_cmp_pollrepcontent_get0_pollrep(%struct.stack_st_OSSL_CMP_POLLREP* noundef %6, i32 noundef 88) #4
  %7 = bitcast %struct.ossl_cmp_pollrep_st* %call10 to i8*
  %call11 = tail call i32 @test_ptr_null(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 482, i8* noundef getelementptr inbounds ([72 x i8], [72 x i8]* @.str.82, i64 0, i64 0), i8* noundef %7) #4
  %tobool12.not = icmp ne i32 %call11, 0
  %spec.select = zext i1 %tobool12.not to i32
  br label %err

err:                                              ; preds = %if.end6, %if.end
  %res.0 = phi i32 [ 0, %if.end ], [ %spec.select, %if.end6 ]
  tail call void @OSSL_CMP_MSG_free(%struct.ossl_cmp_msg_st* noundef nonnull %call) #4
  br label %cleanup

cleanup:                                          ; preds = %entry, %err
  %retval.0 = phi i32 [ %res.0, %err ], [ 0, %entry ]
  ret i32 %retval.0
}

declare dso_local %struct.ossl_cmp_msg_st* @ossl_cmp_pollRep_new(%struct.ossl_cmp_ctx_st* noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

declare dso_local %struct.ossl_cmp_pollrep_st* @ossl_cmp_pollrepcontent_get0_pollrep(%struct.stack_st_OSSL_CMP_POLLREP* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @execute_pkimessage_create_test(%struct.test_fixture* nocapture noundef readonly %fixture) unnamed_addr #0 {
entry:
  %expected = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %fixture, i64 0, i32 6
  %0 = load i32, i32* %expected, align 8, !tbaa !11
  %cmp.not = icmp eq i32 %0, 0
  %cmp_ctx6 = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %fixture, i64 0, i32 1
  %1 = load %struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_ctx_st** %cmp_ctx6, align 8, !tbaa !12
  %bodytype7 = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %fixture, i64 0, i32 2
  %2 = load i32, i32* %bodytype7, align 8, !tbaa !7
  %call8 = tail call %struct.ossl_cmp_msg_st* @ossl_cmp_msg_create(%struct.ossl_cmp_ctx_st* noundef %1, i32 noundef %2) #4
  %3 = bitcast %struct.ossl_cmp_msg_st* %call8 to i8*
  br i1 %cmp.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 126, i8* noundef getelementptr inbounds ([66 x i8], [66 x i8]* @.str.84, i64 0, i64 0), i8* noundef %3) #4
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %cond.end, label %land.rhs

land.rhs:                                         ; preds = %cond.true
  %call2 = tail call i32 @valid_asn1_encoding(%struct.ossl_cmp_msg_st* noundef %call8) #4
  %cmp3 = icmp ne i32 %call2, 0
  %conv = zext i1 %cmp3 to i32
  %call4 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 126, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.51, i64 0, i64 0), i32 noundef %conv) #4
  %tobool5 = icmp ne i32 %call4, 0
  %phi.cast = zext i1 %tobool5 to i32
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call9 = tail call i32 @test_ptr_null(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 126, i8* noundef getelementptr inbounds ([66 x i8], [66 x i8]* @.str.84, i64 0, i64 0), i8* noundef %3) #4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %land.rhs, %cond.false
  %cond = phi i32 [ %call9, %cond.false ], [ %phi.cast, %land.rhs ], [ 0, %cond.true ]
  tail call void @OSSL_CMP_MSG_free(%struct.ossl_cmp_msg_st* noundef %call8) #4
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  tail call void @ERR_print_errors_fp(%struct._IO_FILE* noundef %4) #4
  ret i32 %cond
}

declare dso_local %struct.ossl_cmp_msg_st* @ossl_cmp_msg_create(%struct.ossl_cmp_ctx_st* noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #4 = { nobuiltin nounwind "no-builtins" }
attributes #5 = { nobuiltin "no-builtins" }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.0"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !9, i64 16}
!8 = !{!"test_fixture", !4, i64 0, !4, i64 8, !9, i64 16, !9, i64 20, !9, i64 24, !4, i64 32, !9, i64 40, !4, i64 48}
!9 = !{!"int", !5, i64 0}
!10 = !{!8, !9, i64 20}
!11 = !{!8, !9, i64 40}
!12 = !{!8, !4, i64 8}
!13 = !{!8, !4, i64 48}
!14 = !{!8, !9, i64 24}
!15 = !{!8, !4, i64 0}
!16 = !{!8, !4, i64 32}
!17 = !{!18, !4, i64 8}
!18 = !{!"ossl_cmp_msg_st", !4, i64 0, !4, i64 8, !4, i64 16, !4, i64 24, !4, i64 32, !4, i64 40}
!19 = !{!5, !5, i64 0}
!20 = !{!21, !4, i64 0}
!21 = !{!"ossl_cmp_certresponse_st", !4, i64 0, !4, i64 8, !4, i64 16, !4, i64 24}
!22 = !{!21, !4, i64 16}
!23 = !{!24, !4, i64 0}
!24 = !{!"ossl_cmp_certifiedkeypair_st", !4, i64 0, !4, i64 8, !4, i64 16}
!25 = !{!26, !9, i64 0}
!26 = !{!"ossl_cmp_certorenccert_st", !9, i64 0, !5, i64 8}
!27 = !{!28, !4, i64 8}
!28 = !{!"ossl_cmp_certrepmessage_st", !4, i64 0, !4, i64 8}
