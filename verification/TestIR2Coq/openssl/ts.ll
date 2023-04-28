; ModuleID = 'apps/ts.c'
source_filename = "apps/ts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.options_st = type { i8*, i32, i32, i8* }
%struct.bio_st = type opaque
%struct.evp_md_st = type opaque
%struct.X509_VERIFY_PARAM_st = type opaque
%struct.conf_st = type { %struct.conf_method_st*, i8*, %struct.lhash_st_CONF_VALUE*, i32, i32, i8*, %struct.ossl_lib_ctx_st* }
%struct.conf_method_st = type { i8*, %struct.conf_st* (%struct.conf_method_st*)*, i32 (%struct.conf_st*)*, i32 (%struct.conf_st*)*, i32 (%struct.conf_st*)*, i32 (%struct.conf_st*, %struct.bio_st*, i64*)*, i32 (%struct.conf_st*, %struct.bio_st*)*, i32 (%struct.conf_st*, i8)*, i32 (%struct.conf_st*, i8)*, i32 (%struct.conf_st*, i8*, i64*)* }
%struct.lhash_st_CONF_VALUE = type { %union.lh_CONF_VALUE_dummy }
%union.lh_CONF_VALUE_dummy = type { i8* }
%struct.ossl_lib_ctx_st = type opaque
%struct.TS_req_st = type opaque
%struct.TS_resp_st = type opaque
%struct.TS_tst_info_st = type opaque
%struct.pkcs7_st = type { i8*, i64, i32, i32, %struct.asn1_object_st*, %union.anon.0, %struct.PKCS7_CTX_st }
%struct.asn1_object_st = type opaque
%union.anon.0 = type { i8* }
%struct.PKCS7_CTX_st = type { %struct.ossl_lib_ctx_st*, i8* }
%struct.TS_verify_ctx = type opaque
%struct.TS_msg_imprint_st = type opaque
%struct.X509_algor_st = type { %struct.asn1_object_st*, %struct.asn1_type_st* }
%struct.asn1_type_st = type { i32, %union.anon }
%union.anon = type { i8* }
%struct.asn1_string_st = type { i32, i32, i8*, i64 }
%struct.evp_md_ctx_st = type opaque
%struct.TS_status_info_st = type opaque
%struct.TS_resp_ctx = type opaque
%struct.bignum_st = type opaque
%struct.x509_store_st = type opaque
%struct.stack_st_X509 = type opaque
%struct.x509_lookup_method_st = type opaque
%struct.x509_lookup_st = type opaque
%struct.x509_store_ctx_st = type opaque

@OPT_SECTION_STR = external dso_local constant [0 x i8], align 1
@.str = private unnamed_addr constant [18 x i8] c"General options:\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Display this summary\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"config\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"Configuration file\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"section\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"Section to use within config file\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"engine\00", align 1
@.str.8 = private unnamed_addr constant [39 x i8] c"Use engine, possibly a hardware device\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"inkey\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"File with private key for reply\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"signer\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"Signer certificate file\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"chain\00", align 1
@.str.14 = private unnamed_addr constant [26 x i8] c"File with signer CA chain\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"CAfile\00", align 1
@.str.16 = private unnamed_addr constant [27 x i8] c"File with trusted CA certs\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"CApath\00", align 1
@.str.18 = private unnamed_addr constant [25 x i8] c"Path to trusted CA files\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"CAstore\00", align 1
@.str.20 = private unnamed_addr constant [24 x i8] c"URI to trusted CA store\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"untrusted\00", align 1
@.str.22 = private unnamed_addr constant [22 x i8] c"Extra untrusted certs\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"token_in\00", align 1
@.str.24 = private unnamed_addr constant [23 x i8] c"Input is a PKCS#7 file\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"token_out\00", align 1
@.str.26 = private unnamed_addr constant [24 x i8] c"Output is a PKCS#7 file\00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"passin\00", align 1
@.str.28 = private unnamed_addr constant [30 x i8] c"Input file pass phrase source\00", align 1
@.str.29 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.30 = private unnamed_addr constant [21 x i8] c"Any supported digest\00", align 1
@.str.31 = private unnamed_addr constant [16 x i8] c"Query options:\0A\00", align 1
@.str.32 = private unnamed_addr constant [6 x i8] c"query\00", align 1
@.str.33 = private unnamed_addr constant [20 x i8] c"Generate a TS query\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"data\00", align 1
@.str.35 = private unnamed_addr constant [13 x i8] c"File to hash\00", align 1
@.str.36 = private unnamed_addr constant [7 x i8] c"digest\00", align 1
@.str.37 = private unnamed_addr constant [25 x i8] c"Digest (as a hex string)\00", align 1
@.str.38 = private unnamed_addr constant [10 x i8] c"queryfile\00", align 1
@.str.39 = private unnamed_addr constant [27 x i8] c"File containing a TS query\00", align 1
@.str.40 = private unnamed_addr constant [5 x i8] c"cert\00", align 1
@.str.41 = private unnamed_addr constant [28 x i8] c"Put cert request into query\00", align 1
@.str.42 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str.43 = private unnamed_addr constant [11 x i8] c"Input file\00", align 1
@.str.44 = private unnamed_addr constant [17 x i8] c"Verify options:\0A\00", align 1
@.str.45 = private unnamed_addr constant [7 x i8] c"verify\00", align 1
@.str.46 = private unnamed_addr constant [21 x i8] c"Verify a TS response\00", align 1
@.str.47 = private unnamed_addr constant [6 x i8] c"reply\00", align 1
@.str.48 = private unnamed_addr constant [20 x i8] c"Generate a TS reply\00", align 1
@.str.49 = private unnamed_addr constant [9 x i8] c"tspolicy\00", align 1
@.str.50 = private unnamed_addr constant [18 x i8] c"Policy OID to use\00", align 1
@.str.51 = private unnamed_addr constant [9 x i8] c"no_nonce\00", align 1
@.str.52 = private unnamed_addr constant [23 x i8] c"Do not include a nonce\00", align 1
@.str.53 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@.str.54 = private unnamed_addr constant [12 x i8] c"Output file\00", align 1
@.str.55 = private unnamed_addr constant [5 x i8] c"text\00", align 1
@.str.56 = private unnamed_addr constant [22 x i8] c"Output text (not DER)\00", align 1
@.str.57 = private unnamed_addr constant [23 x i8] c"Random state options:\0A\00", align 1
@.str.58 = private unnamed_addr constant [5 x i8] c"rand\00", align 1
@.str.59 = private unnamed_addr constant [56 x i8] c"Load the given file(s) into the random number generator\00", align 1
@.str.60 = private unnamed_addr constant [10 x i8] c"writerand\00", align 1
@.str.61 = private unnamed_addr constant [40 x i8] c"Write random data to the specified file\00", align 1
@.str.62 = private unnamed_addr constant [21 x i8] c"Validation options:\0A\00", align 1
@.str.63 = private unnamed_addr constant [7 x i8] c"policy\00", align 1
@.str.64 = private unnamed_addr constant [41 x i8] c"adds policy to the acceptable policy set\00", align 1
@.str.65 = private unnamed_addr constant [8 x i8] c"purpose\00", align 1
@.str.66 = private unnamed_addr constant [26 x i8] c"certificate chain purpose\00", align 1
@.str.67 = private unnamed_addr constant [12 x i8] c"verify_name\00", align 1
@.str.68 = private unnamed_addr constant [25 x i8] c"verification policy name\00", align 1
@.str.69 = private unnamed_addr constant [13 x i8] c"verify_depth\00", align 1
@.str.70 = private unnamed_addr constant [18 x i8] c"chain depth limit\00", align 1
@.str.71 = private unnamed_addr constant [11 x i8] c"auth_level\00", align 1
@.str.72 = private unnamed_addr constant [36 x i8] c"chain authentication security level\00", align 1
@.str.73 = private unnamed_addr constant [7 x i8] c"attime\00", align 1
@.str.74 = private unnamed_addr constant [24 x i8] c"verification epoch time\00", align 1
@.str.75 = private unnamed_addr constant [16 x i8] c"verify_hostname\00", align 1
@.str.76 = private unnamed_addr constant [23 x i8] c"expected peer hostname\00", align 1
@.str.77 = private unnamed_addr constant [13 x i8] c"verify_email\00", align 1
@.str.78 = private unnamed_addr constant [20 x i8] c"expected peer email\00", align 1
@.str.79 = private unnamed_addr constant [10 x i8] c"verify_ip\00", align 1
@.str.80 = private unnamed_addr constant [25 x i8] c"expected peer IP address\00", align 1
@.str.81 = private unnamed_addr constant [16 x i8] c"ignore_critical\00", align 1
@.str.82 = private unnamed_addr constant [37 x i8] c"permit unhandled critical extensions\00", align 1
@.str.83 = private unnamed_addr constant [14 x i8] c"issuer_checks\00", align 1
@.str.84 = private unnamed_addr constant [13 x i8] c"(deprecated)\00", align 1
@.str.85 = private unnamed_addr constant [10 x i8] c"crl_check\00", align 1
@.str.86 = private unnamed_addr constant [34 x i8] c"check leaf certificate revocation\00", align 1
@.str.87 = private unnamed_addr constant [14 x i8] c"crl_check_all\00", align 1
@.str.88 = private unnamed_addr constant [28 x i8] c"check full chain revocation\00", align 1
@.str.89 = private unnamed_addr constant [13 x i8] c"policy_check\00", align 1
@.str.90 = private unnamed_addr constant [30 x i8] c"perform rfc5280 policy checks\00", align 1
@.str.91 = private unnamed_addr constant [16 x i8] c"explicit_policy\00", align 1
@.str.92 = private unnamed_addr constant [44 x i8] c"set policy variable require-explicit-policy\00", align 1
@.str.93 = private unnamed_addr constant [12 x i8] c"inhibit_any\00", align 1
@.str.94 = private unnamed_addr constant [39 x i8] c"set policy variable inhibit-any-policy\00", align 1
@.str.95 = private unnamed_addr constant [12 x i8] c"inhibit_map\00", align 1
@.str.96 = private unnamed_addr constant [43 x i8] c"set policy variable inhibit-policy-mapping\00", align 1
@.str.97 = private unnamed_addr constant [12 x i8] c"x509_strict\00", align 1
@.str.98 = private unnamed_addr constant [47 x i8] c"disable certificate compatibility work-arounds\00", align 1
@.str.99 = private unnamed_addr constant [13 x i8] c"extended_crl\00", align 1
@.str.100 = private unnamed_addr constant [29 x i8] c"enable extended CRL features\00", align 1
@.str.101 = private unnamed_addr constant [11 x i8] c"use_deltas\00", align 1
@.str.102 = private unnamed_addr constant [15 x i8] c"use delta CRLs\00", align 1
@.str.103 = private unnamed_addr constant [13 x i8] c"policy_print\00", align 1
@.str.104 = private unnamed_addr constant [36 x i8] c"print policy processing diagnostics\00", align 1
@.str.105 = private unnamed_addr constant [13 x i8] c"check_ss_sig\00", align 1
@.str.106 = private unnamed_addr constant [30 x i8] c"check root CA self-signatures\00", align 1
@.str.107 = private unnamed_addr constant [14 x i8] c"trusted_first\00", align 1
@.str.108 = private unnamed_addr constant [35 x i8] c"search trust store first (default)\00", align 1
@.str.109 = private unnamed_addr constant [16 x i8] c"suiteB_128_only\00", align 1
@.str.110 = private unnamed_addr constant [26 x i8] c"Suite B 128-bit-only mode\00", align 1
@.str.111 = private unnamed_addr constant [11 x i8] c"suiteB_128\00", align 1
@.str.112 = private unnamed_addr constant [49 x i8] c"Suite B 128-bit mode allowing 192-bit algorithms\00", align 1
@.str.113 = private unnamed_addr constant [11 x i8] c"suiteB_192\00", align 1
@.str.114 = private unnamed_addr constant [26 x i8] c"Suite B 192-bit-only mode\00", align 1
@.str.115 = private unnamed_addr constant [14 x i8] c"partial_chain\00", align 1
@.str.116 = private unnamed_addr constant [55 x i8] c"accept chains anchored by intermediate trust-store CAs\00", align 1
@.str.117 = private unnamed_addr constant [14 x i8] c"no_alt_chains\00", align 1
@.str.118 = private unnamed_addr constant [14 x i8] c"no_check_time\00", align 1
@.str.119 = private unnamed_addr constant [33 x i8] c"ignore certificate validity time\00", align 1
@.str.120 = private unnamed_addr constant [18 x i8] c"allow_proxy_certs\00", align 1
@.str.121 = private unnamed_addr constant [36 x i8] c"allow the use of proxy certificates\00", align 1
@.str.122 = private unnamed_addr constant [19 x i8] c"Provider options:\0A\00", align 1
@.str.123 = private unnamed_addr constant [14 x i8] c"provider-path\00", align 1
@.str.124 = private unnamed_addr constant [68 x i8] c"Provider load path (must be before 'provider' argument if required)\00", align 1
@.str.125 = private unnamed_addr constant [9 x i8] c"provider\00", align 1
@.str.126 = private unnamed_addr constant [51 x i8] c"Provider to load (can be specified multiple times)\00", align 1
@.str.127 = private unnamed_addr constant [10 x i8] c"propquery\00", align 1
@.str.128 = private unnamed_addr constant [45 x i8] c"Property query used when fetching algorithms\00", align 1
@ts_options = dso_local constant [69 x %struct.options_st] [%struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i32 3, i32 60, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), i32 4, i32 115, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), i32 2, i32 115, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), i32 19, i32 115, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i32 0, i32 0), i32 20, i32 115, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0), i32 21, i32 60, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.14, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i32 0, i32 0), i32 24, i32 60, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.16, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i32 0, i32 0), i32 23, i32 47, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.18, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i32 0, i32 0), i32 25, i32 58, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.20, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i32 0, i32 0), i32 26, i32 60, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.22, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i32 0, i32 0), i32 12, i32 45, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.24, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.25, i32 0, i32 0), i32 14, i32 45, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.26, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i32 0, i32 0), i32 18, i32 115, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.28, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.29, i32 0, i32 0), i32 27, i32 45, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.30, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.31, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i32 0, i32 0), i32 5, i32 45, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.33, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i32 0, i32 0), i32 6, i32 60, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.35, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36, i32 0, i32 0), i32 7, i32 115, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.37, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.38, i32 0, i32 0), i32 17, i32 60, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.39, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.40, i32 0, i32 0), i32 10, i32 45, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.41, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.42, i32 0, i32 0), i32 11, i32 60, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.43, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.44, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.45, i32 0, i32 0), i32 22, i32 45, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.46, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.47, i32 0, i32 0), i32 16, i32 45, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.48, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.49, i32 0, i32 0), i32 8, i32 115, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.50, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.51, i32 0, i32 0), i32 9, i32 45, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.52, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.53, i32 0, i32 0), i32 13, i32 62, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.54, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.55, i32 0, i32 0), i32 15, i32 45, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.56, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.57, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.58, i32 0, i32 0), i32 1501, i32 115, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.59, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.60, i32 0, i32 0), i32 1502, i32 62, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.61, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.62, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.63, i32 0, i32 0), i32 2001, i32 115, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.64, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.65, i32 0, i32 0), i32 2002, i32 115, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.66, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.67, i32 0, i32 0), i32 2003, i32 115, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.68, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.69, i32 0, i32 0), i32 2004, i32 110, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.70, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.71, i32 0, i32 0), i32 2029, i32 110, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.72, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.73, i32 0, i32 0), i32 2005, i32 77, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.74, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.75, i32 0, i32 0), i32 2006, i32 115, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.76, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.77, i32 0, i32 0), i32 2007, i32 115, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.78, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.79, i32 0, i32 0), i32 2008, i32 115, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.80, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.81, i32 0, i32 0), i32 2009, i32 45, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.82, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.83, i32 0, i32 0), i32 2010, i32 45, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.84, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.85, i32 0, i32 0), i32 2011, i32 45, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.86, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.87, i32 0, i32 0), i32 2012, i32 45, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.88, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.89, i32 0, i32 0), i32 2013, i32 45, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.90, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.91, i32 0, i32 0), i32 2014, i32 45, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.92, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.93, i32 0, i32 0), i32 2015, i32 45, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.94, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.95, i32 0, i32 0), i32 2016, i32 45, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.96, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.97, i32 0, i32 0), i32 2017, i32 45, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.98, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.99, i32 0, i32 0), i32 2018, i32 45, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.100, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.101, i32 0, i32 0), i32 2019, i32 45, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.102, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.103, i32 0, i32 0), i32 2020, i32 45, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.104, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.105, i32 0, i32 0), i32 2021, i32 45, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.106, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.107, i32 0, i32 0), i32 2022, i32 45, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.108, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.109, i32 0, i32 0), i32 2023, i32 45, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.110, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.111, i32 0, i32 0), i32 2024, i32 45, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.112, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.113, i32 0, i32 0), i32 2025, i32 45, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.114, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.115, i32 0, i32 0), i32 2026, i32 45, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.116, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.117, i32 0, i32 0), i32 2027, i32 45, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.84, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.118, i32 0, i32 0), i32 2028, i32 45, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.119, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.120, i32 0, i32 0), i32 2030, i32 45, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.121, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.122, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.123, i32 0, i32 0), i32 1602, i32 115, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.124, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.125, i32 0, i32 0), i32 1601, i32 115, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.126, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.127, i32 0, i32 0), i32 1603, i32 115, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.128, i32 0, i32 0) }, %struct.options_st zeroinitializer], align 16
@default_config_file = external dso_local local_unnamed_addr global i8*, align 8
@bio_err = external dso_local local_unnamed_addr global %struct.bio_st*, align 8
@.str.129 = private unnamed_addr constant [28 x i8] c"%s: Use -help for summary.\0A\00", align 1
@.str.130 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.131 = private unnamed_addr constant [25 x i8] c"Error getting password.\0A\00", align 1
@.str.132 = private unnamed_addr constant [10 x i8] c"apps/ts.c\00", align 1
@.str.133 = private unnamed_addr constant [14 x i8] c"Typical uses:\00", align 1
@.str.134 = private unnamed_addr constant [63 x i8] c" openssl ts -query [-rand file...] [-config file] [-data file]\00", align 1
@.str.135 = private unnamed_addr constant [60 x i8] c"    [-digest hexstring] [-tspolicy oid] [-no_nonce] [-cert]\00", align 1
@.str.136 = private unnamed_addr constant [35 x i8] c"    [-in file] [-out file] [-text]\00", align 1
@.str.137 = private unnamed_addr constant [57 x i8] c" openssl ts -reply [-config file] [-section tsa_section]\00", align 1
@.str.138 = private unnamed_addr constant [41 x i8] c"    [-queryfile file] [-passin password]\00", align 1
@.str.139 = private unnamed_addr constant [52 x i8] c"    [-signer tsa_cert.pem] [-inkey private_key.pem]\00", align 1
@.str.140 = private unnamed_addr constant [44 x i8] c"    [-chain certs_file.pem] [-tspolicy oid]\00", align 1
@.str.141 = private unnamed_addr constant [52 x i8] c"    [-in file] [-token_in] [-out file] [-token_out]\00", align 1
@.str.142 = private unnamed_addr constant [25 x i8] c"    [-text] [-engine id]\00", align 1
@.str.143 = private unnamed_addr constant [67 x i8] c" openssl ts -verify -CApath dir -CAfile root-cert.pem -CAstore uri\00", align 1
@.str.144 = private unnamed_addr constant [63 x i8] c"   -untrusted extra-certs.pem [-data file] [-digest hexstring]\00", align 1
@.str.145 = private unnamed_addr constant [62 x i8] c"    [-queryfile request.tsq] -in response.tsr [-token_in] ...\00", align 1
@.str.146 = private unnamed_addr constant [29 x i8] c"Using configuration from %s\0A\00", align 1
@.str.147 = private unnamed_addr constant [9 x i8] c"oid_file\00", align 1
@.str.148 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.149 = private unnamed_addr constant [7 x i8] c"sha256\00", align 1
@.str.150 = private unnamed_addr constant [24 x i8] c"could not create query\0A\00", align 1
@.str.151 = private unnamed_addr constant [14 x i8] c"digest buffer\00", align 1
@.str.152 = private unnamed_addr constant [40 x i8] c"bad digest, %d bytes must be specified\0A\00", align 1
@.str.153 = private unnamed_addr constant [26 x i8] c"cannot convert %s to OID\0A\00", align 1
@.str.154 = private unnamed_addr constant [13 x i8] c"nonce buffer\00", align 1
@.str.155 = private unnamed_addr constant [24 x i8] c"could not create nonce\0A\00", align 1
@.str.156 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.157 = private unnamed_addr constant [30 x i8] c"Response has been generated.\0A\00", align 1
@.str.158 = private unnamed_addr constant [28 x i8] c"Response is not generated.\0A\00", align 1
@.str.159 = private unnamed_addr constant [39 x i8] c"Error during serial number generation.\00", align 1
@.str.160 = private unnamed_addr constant [69 x i8] c"Warning: could not open file %s for reading, using serial number: 1\0A\00", align 1
@.str.161 = private unnamed_addr constant [31 x i8] c"unable to load number from %s\0A\00", align 1
@.str.162 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.163 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.164 = private unnamed_addr constant [36 x i8] c"could not save serial number to %s\0A\00", align 1
@.str.165 = private unnamed_addr constant [15 x i8] c"Verification: \00", align 1
@.str.166 = private unnamed_addr constant [4 x i8] c"OK\0A\00", align 1
@.str.167 = private unnamed_addr constant [8 x i8] c"FAILED\0A\00", align 1
@.str.168 = private unnamed_addr constant [23 x i8] c"invalid digest string\0A\00", align 1
@.str.169 = private unnamed_addr constant [22 x i8] c"extra untrusted certs\00", align 1
@.str.170 = private unnamed_addr constant [27 x i8] c"memory allocation failure\0A\00", align 1
@.str.171 = private unnamed_addr constant [28 x i8] c"Error loading directory %s\0A\00", align 1
@.str.172 = private unnamed_addr constant [23 x i8] c"Error loading file %s\0A\00", align 1
@.str.173 = private unnamed_addr constant [28 x i8] c"Error loading store URI %s\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @ts_main(i32 noundef %argc, i8** noundef %argv) local_unnamed_addr #0 {
entry:
  %password = alloca i8*, align 8
  %md = alloca %struct.evp_md_st*, align 8
  %0 = load i8*, i8** @default_config_file, align 8, !tbaa !3
  %1 = bitcast i8** %password to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #5
  store i8* null, i8** %password, align 8, !tbaa !3
  %2 = bitcast %struct.evp_md_st** %md to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #5
  store %struct.evp_md_st* null, %struct.evp_md_st** %md, align 8, !tbaa !3
  %call = tail call %struct.X509_VERIFY_PARAM_st* @X509_VERIFY_PARAM_new() #6
  %cmp = icmp eq %struct.X509_VERIFY_PARAM_st* %call, null
  br i1 %cmp, label %end, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call i8* @opt_init(i32 noundef %argc, i8** noundef %argv, %struct.options_st* noundef getelementptr inbounds ([69 x %struct.options_st], [69 x %struct.options_st]* @ts_options, i64 0, i64 0)) #6
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %if.end
  %CAfile.0 = phi i8* [ null, %if.end ], [ %CAfile.0.be, %while.cond.backedge ]
  %untrusted.0 = phi i8* [ null, %if.end ], [ %untrusted.0.be, %while.cond.backedge ]
  %configfile.0 = phi i8* [ %0, %if.end ], [ %configfile.0.be, %while.cond.backedge ]
  %engine.0 = phi i8* [ null, %if.end ], [ %engine.0.be, %while.cond.backedge ]
  %section.0 = phi i8* [ null, %if.end ], [ %section.0.be, %while.cond.backedge ]
  %digestname.0 = phi i8* [ null, %if.end ], [ %digestname.0.be, %while.cond.backedge ]
  %data.0 = phi i8* [ null, %if.end ], [ %data.0.be, %while.cond.backedge ]
  %digest.0 = phi i8* [ null, %if.end ], [ %digest.0.be, %while.cond.backedge ]
  %policy.0 = phi i8* [ null, %if.end ], [ %policy.0.be, %while.cond.backedge ]
  %in.0 = phi i8* [ null, %if.end ], [ %in.0.be, %while.cond.backedge ]
  %out.0 = phi i8* [ null, %if.end ], [ %out.0.be, %while.cond.backedge ]
  %queryfile.0 = phi i8* [ null, %if.end ], [ %queryfile.0.be, %while.cond.backedge ]
  %passin.0 = phi i8* [ null, %if.end ], [ %passin.0.be, %while.cond.backedge ]
  %inkey.0 = phi i8* [ null, %if.end ], [ %inkey.0.be, %while.cond.backedge ]
  %signer.0 = phi i8* [ null, %if.end ], [ %signer.0.be, %while.cond.backedge ]
  %chain.0 = phi i8* [ null, %if.end ], [ %chain.0.be, %while.cond.backedge ]
  %CApath.0 = phi i8* [ null, %if.end ], [ %CApath.0.be, %while.cond.backedge ]
  %CAstore.0 = phi i8* [ null, %if.end ], [ %CAstore.0.be, %while.cond.backedge ]
  %mode.0 = phi i32 [ -1, %if.end ], [ %mode.0.be, %while.cond.backedge ]
  %no_nonce.0 = phi i32 [ 0, %if.end ], [ %no_nonce.0.be, %while.cond.backedge ]
  %cert.0 = phi i32 [ 0, %if.end ], [ %cert.0.be, %while.cond.backedge ]
  %text.0 = phi i32 [ 0, %if.end ], [ %text.0.be, %while.cond.backedge ]
  %vpmtouched.0 = phi i32 [ 0, %if.end ], [ %vpmtouched.0.be, %while.cond.backedge ]
  %token_in.0 = phi i32 [ 0, %if.end ], [ %token_in.0.be, %while.cond.backedge ]
  %token_out.0 = phi i32 [ 0, %if.end ], [ %token_out.0.be, %while.cond.backedge ]
  %call2 = tail call i32 @opt_next() #6
  switch i32 %call2, label %while.cond.backedge [
    i32 0, label %while.end
    i32 2023, label %sw.bb65
    i32 -1, label %opthelp
    i32 1, label %sw.bb5
    i32 3, label %sw.bb7
    i32 4, label %sw.bb9
    i32 5, label %sw.bb11
    i32 16, label %sw.bb11
    i32 22, label %sw.bb11
    i32 6, label %sw.bb15
    i32 7, label %sw.bb17
    i32 2030, label %sw.bb65
    i32 2028, label %sw.bb65
    i32 1501, label %sw.bb20
    i32 1502, label %sw.bb20
    i32 2027, label %sw.bb65
    i32 2026, label %sw.bb65
    i32 1601, label %sw.bb26
    i32 1602, label %sw.bb26
    i32 1603, label %sw.bb26
    i32 8, label %sw.bb31
    i32 9, label %sw.bb33
    i32 10, label %sw.bb34
    i32 11, label %sw.bb35
    i32 12, label %sw.bb37
    i32 13, label %sw.bb38
    i32 14, label %sw.bb40
    i32 15, label %sw.bb41
    i32 17, label %sw.bb42
    i32 18, label %sw.bb44
    i32 19, label %sw.bb46
    i32 20, label %sw.bb48
    i32 21, label %sw.bb50
    i32 23, label %sw.bb52
    i32 24, label %sw.bb54
    i32 25, label %sw.bb56
    i32 26, label %sw.bb58
    i32 2, label %sw.bb60
    i32 27, label %sw.bb62
    i32 2025, label %sw.bb65
    i32 2024, label %sw.bb65
    i32 2001, label %sw.bb65
    i32 2002, label %sw.bb65
    i32 2003, label %sw.bb65
    i32 2004, label %sw.bb65
    i32 2029, label %sw.bb65
    i32 2005, label %sw.bb65
    i32 2006, label %sw.bb65
    i32 2007, label %sw.bb65
    i32 2008, label %sw.bb65
    i32 2009, label %sw.bb65
    i32 2010, label %sw.bb65
    i32 2011, label %sw.bb65
    i32 2012, label %sw.bb65
    i32 2013, label %sw.bb65
    i32 2014, label %sw.bb65
    i32 2015, label %sw.bb65
    i32 2016, label %sw.bb65
    i32 2017, label %sw.bb65
    i32 2018, label %sw.bb65
    i32 2019, label %sw.bb65
    i32 2020, label %sw.bb65
    i32 2021, label %sw.bb65
    i32 2022, label %sw.bb65
  ]

while.cond.backedge:                              ; preds = %while.cond, %sw.bb11, %sw.bb26, %sw.bb20, %if.end69, %sw.bb62, %sw.bb60, %sw.bb58, %sw.bb56, %sw.bb54, %sw.bb52, %sw.bb50, %sw.bb48, %sw.bb46, %sw.bb44, %sw.bb42, %sw.bb41, %sw.bb40, %sw.bb38, %sw.bb37, %sw.bb35, %sw.bb34, %sw.bb33, %sw.bb31, %sw.bb17, %sw.bb15, %sw.bb9, %sw.bb7
  %CAfile.0.be = phi i8* [ %CAfile.0, %sw.bb62 ], [ %CAfile.0, %sw.bb60 ], [ %CAfile.0, %sw.bb58 ], [ %CAfile.0, %sw.bb56 ], [ %call55, %sw.bb54 ], [ %CAfile.0, %sw.bb52 ], [ %CAfile.0, %sw.bb50 ], [ %CAfile.0, %sw.bb48 ], [ %CAfile.0, %sw.bb46 ], [ %CAfile.0, %sw.bb44 ], [ %CAfile.0, %sw.bb42 ], [ %CAfile.0, %sw.bb41 ], [ %CAfile.0, %sw.bb40 ], [ %CAfile.0, %sw.bb38 ], [ %CAfile.0, %sw.bb37 ], [ %CAfile.0, %sw.bb35 ], [ %CAfile.0, %sw.bb34 ], [ %CAfile.0, %sw.bb33 ], [ %CAfile.0, %sw.bb31 ], [ %CAfile.0, %sw.bb26 ], [ %CAfile.0, %sw.bb20 ], [ %CAfile.0, %if.end69 ], [ %CAfile.0, %sw.bb17 ], [ %CAfile.0, %sw.bb15 ], [ %CAfile.0, %sw.bb9 ], [ %CAfile.0, %sw.bb7 ], [ %CAfile.0, %sw.bb11 ], [ %CAfile.0, %while.cond ]
  %untrusted.0.be = phi i8* [ %untrusted.0, %sw.bb62 ], [ %untrusted.0, %sw.bb60 ], [ %call59, %sw.bb58 ], [ %untrusted.0, %sw.bb56 ], [ %untrusted.0, %sw.bb54 ], [ %untrusted.0, %sw.bb52 ], [ %untrusted.0, %sw.bb50 ], [ %untrusted.0, %sw.bb48 ], [ %untrusted.0, %sw.bb46 ], [ %untrusted.0, %sw.bb44 ], [ %untrusted.0, %sw.bb42 ], [ %untrusted.0, %sw.bb41 ], [ %untrusted.0, %sw.bb40 ], [ %untrusted.0, %sw.bb38 ], [ %untrusted.0, %sw.bb37 ], [ %untrusted.0, %sw.bb35 ], [ %untrusted.0, %sw.bb34 ], [ %untrusted.0, %sw.bb33 ], [ %untrusted.0, %sw.bb31 ], [ %untrusted.0, %sw.bb26 ], [ %untrusted.0, %sw.bb20 ], [ %untrusted.0, %if.end69 ], [ %untrusted.0, %sw.bb17 ], [ %untrusted.0, %sw.bb15 ], [ %untrusted.0, %sw.bb9 ], [ %untrusted.0, %sw.bb7 ], [ %untrusted.0, %sw.bb11 ], [ %untrusted.0, %while.cond ]
  %configfile.0.be = phi i8* [ %configfile.0, %sw.bb62 ], [ %configfile.0, %sw.bb60 ], [ %configfile.0, %sw.bb58 ], [ %configfile.0, %sw.bb56 ], [ %configfile.0, %sw.bb54 ], [ %configfile.0, %sw.bb52 ], [ %configfile.0, %sw.bb50 ], [ %configfile.0, %sw.bb48 ], [ %configfile.0, %sw.bb46 ], [ %configfile.0, %sw.bb44 ], [ %configfile.0, %sw.bb42 ], [ %configfile.0, %sw.bb41 ], [ %configfile.0, %sw.bb40 ], [ %configfile.0, %sw.bb38 ], [ %configfile.0, %sw.bb37 ], [ %configfile.0, %sw.bb35 ], [ %configfile.0, %sw.bb34 ], [ %configfile.0, %sw.bb33 ], [ %configfile.0, %sw.bb31 ], [ %configfile.0, %sw.bb26 ], [ %configfile.0, %sw.bb20 ], [ %configfile.0, %if.end69 ], [ %configfile.0, %sw.bb17 ], [ %configfile.0, %sw.bb15 ], [ %configfile.0, %sw.bb9 ], [ %call8, %sw.bb7 ], [ %configfile.0, %sw.bb11 ], [ %configfile.0, %while.cond ]
  %engine.0.be = phi i8* [ %engine.0, %sw.bb62 ], [ %call61, %sw.bb60 ], [ %engine.0, %sw.bb58 ], [ %engine.0, %sw.bb56 ], [ %engine.0, %sw.bb54 ], [ %engine.0, %sw.bb52 ], [ %engine.0, %sw.bb50 ], [ %engine.0, %sw.bb48 ], [ %engine.0, %sw.bb46 ], [ %engine.0, %sw.bb44 ], [ %engine.0, %sw.bb42 ], [ %engine.0, %sw.bb41 ], [ %engine.0, %sw.bb40 ], [ %engine.0, %sw.bb38 ], [ %engine.0, %sw.bb37 ], [ %engine.0, %sw.bb35 ], [ %engine.0, %sw.bb34 ], [ %engine.0, %sw.bb33 ], [ %engine.0, %sw.bb31 ], [ %engine.0, %sw.bb26 ], [ %engine.0, %sw.bb20 ], [ %engine.0, %if.end69 ], [ %engine.0, %sw.bb17 ], [ %engine.0, %sw.bb15 ], [ %engine.0, %sw.bb9 ], [ %engine.0, %sw.bb7 ], [ %engine.0, %sw.bb11 ], [ %engine.0, %while.cond ]
  %section.0.be = phi i8* [ %section.0, %sw.bb62 ], [ %section.0, %sw.bb60 ], [ %section.0, %sw.bb58 ], [ %section.0, %sw.bb56 ], [ %section.0, %sw.bb54 ], [ %section.0, %sw.bb52 ], [ %section.0, %sw.bb50 ], [ %section.0, %sw.bb48 ], [ %section.0, %sw.bb46 ], [ %section.0, %sw.bb44 ], [ %section.0, %sw.bb42 ], [ %section.0, %sw.bb41 ], [ %section.0, %sw.bb40 ], [ %section.0, %sw.bb38 ], [ %section.0, %sw.bb37 ], [ %section.0, %sw.bb35 ], [ %section.0, %sw.bb34 ], [ %section.0, %sw.bb33 ], [ %section.0, %sw.bb31 ], [ %section.0, %sw.bb26 ], [ %section.0, %sw.bb20 ], [ %section.0, %if.end69 ], [ %section.0, %sw.bb17 ], [ %section.0, %sw.bb15 ], [ %call10, %sw.bb9 ], [ %section.0, %sw.bb7 ], [ %section.0, %sw.bb11 ], [ %section.0, %while.cond ]
  %digestname.0.be = phi i8* [ %call63, %sw.bb62 ], [ %digestname.0, %sw.bb60 ], [ %digestname.0, %sw.bb58 ], [ %digestname.0, %sw.bb56 ], [ %digestname.0, %sw.bb54 ], [ %digestname.0, %sw.bb52 ], [ %digestname.0, %sw.bb50 ], [ %digestname.0, %sw.bb48 ], [ %digestname.0, %sw.bb46 ], [ %digestname.0, %sw.bb44 ], [ %digestname.0, %sw.bb42 ], [ %digestname.0, %sw.bb41 ], [ %digestname.0, %sw.bb40 ], [ %digestname.0, %sw.bb38 ], [ %digestname.0, %sw.bb37 ], [ %digestname.0, %sw.bb35 ], [ %digestname.0, %sw.bb34 ], [ %digestname.0, %sw.bb33 ], [ %digestname.0, %sw.bb31 ], [ %digestname.0, %sw.bb26 ], [ %digestname.0, %sw.bb20 ], [ %digestname.0, %if.end69 ], [ %digestname.0, %sw.bb17 ], [ %digestname.0, %sw.bb15 ], [ %digestname.0, %sw.bb9 ], [ %digestname.0, %sw.bb7 ], [ %digestname.0, %sw.bb11 ], [ %digestname.0, %while.cond ]
  %data.0.be = phi i8* [ %data.0, %sw.bb62 ], [ %data.0, %sw.bb60 ], [ %data.0, %sw.bb58 ], [ %data.0, %sw.bb56 ], [ %data.0, %sw.bb54 ], [ %data.0, %sw.bb52 ], [ %data.0, %sw.bb50 ], [ %data.0, %sw.bb48 ], [ %data.0, %sw.bb46 ], [ %data.0, %sw.bb44 ], [ %data.0, %sw.bb42 ], [ %data.0, %sw.bb41 ], [ %data.0, %sw.bb40 ], [ %data.0, %sw.bb38 ], [ %data.0, %sw.bb37 ], [ %data.0, %sw.bb35 ], [ %data.0, %sw.bb34 ], [ %data.0, %sw.bb33 ], [ %data.0, %sw.bb31 ], [ %data.0, %sw.bb26 ], [ %data.0, %sw.bb20 ], [ %data.0, %if.end69 ], [ %data.0, %sw.bb17 ], [ %call16, %sw.bb15 ], [ %data.0, %sw.bb9 ], [ %data.0, %sw.bb7 ], [ %data.0, %sw.bb11 ], [ %data.0, %while.cond ]
  %digest.0.be = phi i8* [ %digest.0, %sw.bb62 ], [ %digest.0, %sw.bb60 ], [ %digest.0, %sw.bb58 ], [ %digest.0, %sw.bb56 ], [ %digest.0, %sw.bb54 ], [ %digest.0, %sw.bb52 ], [ %digest.0, %sw.bb50 ], [ %digest.0, %sw.bb48 ], [ %digest.0, %sw.bb46 ], [ %digest.0, %sw.bb44 ], [ %digest.0, %sw.bb42 ], [ %digest.0, %sw.bb41 ], [ %digest.0, %sw.bb40 ], [ %digest.0, %sw.bb38 ], [ %digest.0, %sw.bb37 ], [ %digest.0, %sw.bb35 ], [ %digest.0, %sw.bb34 ], [ %digest.0, %sw.bb33 ], [ %digest.0, %sw.bb31 ], [ %digest.0, %sw.bb26 ], [ %digest.0, %sw.bb20 ], [ %digest.0, %if.end69 ], [ %call18, %sw.bb17 ], [ %digest.0, %sw.bb15 ], [ %digest.0, %sw.bb9 ], [ %digest.0, %sw.bb7 ], [ %digest.0, %sw.bb11 ], [ %digest.0, %while.cond ]
  %policy.0.be = phi i8* [ %policy.0, %sw.bb62 ], [ %policy.0, %sw.bb60 ], [ %policy.0, %sw.bb58 ], [ %policy.0, %sw.bb56 ], [ %policy.0, %sw.bb54 ], [ %policy.0, %sw.bb52 ], [ %policy.0, %sw.bb50 ], [ %policy.0, %sw.bb48 ], [ %policy.0, %sw.bb46 ], [ %policy.0, %sw.bb44 ], [ %policy.0, %sw.bb42 ], [ %policy.0, %sw.bb41 ], [ %policy.0, %sw.bb40 ], [ %policy.0, %sw.bb38 ], [ %policy.0, %sw.bb37 ], [ %policy.0, %sw.bb35 ], [ %policy.0, %sw.bb34 ], [ %policy.0, %sw.bb33 ], [ %call32, %sw.bb31 ], [ %policy.0, %sw.bb26 ], [ %policy.0, %sw.bb20 ], [ %policy.0, %if.end69 ], [ %policy.0, %sw.bb17 ], [ %policy.0, %sw.bb15 ], [ %policy.0, %sw.bb9 ], [ %policy.0, %sw.bb7 ], [ %policy.0, %sw.bb11 ], [ %policy.0, %while.cond ]
  %in.0.be = phi i8* [ %in.0, %sw.bb62 ], [ %in.0, %sw.bb60 ], [ %in.0, %sw.bb58 ], [ %in.0, %sw.bb56 ], [ %in.0, %sw.bb54 ], [ %in.0, %sw.bb52 ], [ %in.0, %sw.bb50 ], [ %in.0, %sw.bb48 ], [ %in.0, %sw.bb46 ], [ %in.0, %sw.bb44 ], [ %in.0, %sw.bb42 ], [ %in.0, %sw.bb41 ], [ %in.0, %sw.bb40 ], [ %in.0, %sw.bb38 ], [ %in.0, %sw.bb37 ], [ %call36, %sw.bb35 ], [ %in.0, %sw.bb34 ], [ %in.0, %sw.bb33 ], [ %in.0, %sw.bb31 ], [ %in.0, %sw.bb26 ], [ %in.0, %sw.bb20 ], [ %in.0, %if.end69 ], [ %in.0, %sw.bb17 ], [ %in.0, %sw.bb15 ], [ %in.0, %sw.bb9 ], [ %in.0, %sw.bb7 ], [ %in.0, %sw.bb11 ], [ %in.0, %while.cond ]
  %out.0.be = phi i8* [ %out.0, %sw.bb62 ], [ %out.0, %sw.bb60 ], [ %out.0, %sw.bb58 ], [ %out.0, %sw.bb56 ], [ %out.0, %sw.bb54 ], [ %out.0, %sw.bb52 ], [ %out.0, %sw.bb50 ], [ %out.0, %sw.bb48 ], [ %out.0, %sw.bb46 ], [ %out.0, %sw.bb44 ], [ %out.0, %sw.bb42 ], [ %out.0, %sw.bb41 ], [ %out.0, %sw.bb40 ], [ %call39, %sw.bb38 ], [ %out.0, %sw.bb37 ], [ %out.0, %sw.bb35 ], [ %out.0, %sw.bb34 ], [ %out.0, %sw.bb33 ], [ %out.0, %sw.bb31 ], [ %out.0, %sw.bb26 ], [ %out.0, %sw.bb20 ], [ %out.0, %if.end69 ], [ %out.0, %sw.bb17 ], [ %out.0, %sw.bb15 ], [ %out.0, %sw.bb9 ], [ %out.0, %sw.bb7 ], [ %out.0, %sw.bb11 ], [ %out.0, %while.cond ]
  %queryfile.0.be = phi i8* [ %queryfile.0, %sw.bb62 ], [ %queryfile.0, %sw.bb60 ], [ %queryfile.0, %sw.bb58 ], [ %queryfile.0, %sw.bb56 ], [ %queryfile.0, %sw.bb54 ], [ %queryfile.0, %sw.bb52 ], [ %queryfile.0, %sw.bb50 ], [ %queryfile.0, %sw.bb48 ], [ %queryfile.0, %sw.bb46 ], [ %queryfile.0, %sw.bb44 ], [ %call43, %sw.bb42 ], [ %queryfile.0, %sw.bb41 ], [ %queryfile.0, %sw.bb40 ], [ %queryfile.0, %sw.bb38 ], [ %queryfile.0, %sw.bb37 ], [ %queryfile.0, %sw.bb35 ], [ %queryfile.0, %sw.bb34 ], [ %queryfile.0, %sw.bb33 ], [ %queryfile.0, %sw.bb31 ], [ %queryfile.0, %sw.bb26 ], [ %queryfile.0, %sw.bb20 ], [ %queryfile.0, %if.end69 ], [ %queryfile.0, %sw.bb17 ], [ %queryfile.0, %sw.bb15 ], [ %queryfile.0, %sw.bb9 ], [ %queryfile.0, %sw.bb7 ], [ %queryfile.0, %sw.bb11 ], [ %queryfile.0, %while.cond ]
  %passin.0.be = phi i8* [ %passin.0, %sw.bb62 ], [ %passin.0, %sw.bb60 ], [ %passin.0, %sw.bb58 ], [ %passin.0, %sw.bb56 ], [ %passin.0, %sw.bb54 ], [ %passin.0, %sw.bb52 ], [ %passin.0, %sw.bb50 ], [ %passin.0, %sw.bb48 ], [ %passin.0, %sw.bb46 ], [ %call45, %sw.bb44 ], [ %passin.0, %sw.bb42 ], [ %passin.0, %sw.bb41 ], [ %passin.0, %sw.bb40 ], [ %passin.0, %sw.bb38 ], [ %passin.0, %sw.bb37 ], [ %passin.0, %sw.bb35 ], [ %passin.0, %sw.bb34 ], [ %passin.0, %sw.bb33 ], [ %passin.0, %sw.bb31 ], [ %passin.0, %sw.bb26 ], [ %passin.0, %sw.bb20 ], [ %passin.0, %if.end69 ], [ %passin.0, %sw.bb17 ], [ %passin.0, %sw.bb15 ], [ %passin.0, %sw.bb9 ], [ %passin.0, %sw.bb7 ], [ %passin.0, %sw.bb11 ], [ %passin.0, %while.cond ]
  %inkey.0.be = phi i8* [ %inkey.0, %sw.bb62 ], [ %inkey.0, %sw.bb60 ], [ %inkey.0, %sw.bb58 ], [ %inkey.0, %sw.bb56 ], [ %inkey.0, %sw.bb54 ], [ %inkey.0, %sw.bb52 ], [ %inkey.0, %sw.bb50 ], [ %inkey.0, %sw.bb48 ], [ %call47, %sw.bb46 ], [ %inkey.0, %sw.bb44 ], [ %inkey.0, %sw.bb42 ], [ %inkey.0, %sw.bb41 ], [ %inkey.0, %sw.bb40 ], [ %inkey.0, %sw.bb38 ], [ %inkey.0, %sw.bb37 ], [ %inkey.0, %sw.bb35 ], [ %inkey.0, %sw.bb34 ], [ %inkey.0, %sw.bb33 ], [ %inkey.0, %sw.bb31 ], [ %inkey.0, %sw.bb26 ], [ %inkey.0, %sw.bb20 ], [ %inkey.0, %if.end69 ], [ %inkey.0, %sw.bb17 ], [ %inkey.0, %sw.bb15 ], [ %inkey.0, %sw.bb9 ], [ %inkey.0, %sw.bb7 ], [ %inkey.0, %sw.bb11 ], [ %inkey.0, %while.cond ]
  %signer.0.be = phi i8* [ %signer.0, %sw.bb62 ], [ %signer.0, %sw.bb60 ], [ %signer.0, %sw.bb58 ], [ %signer.0, %sw.bb56 ], [ %signer.0, %sw.bb54 ], [ %signer.0, %sw.bb52 ], [ %signer.0, %sw.bb50 ], [ %call49, %sw.bb48 ], [ %signer.0, %sw.bb46 ], [ %signer.0, %sw.bb44 ], [ %signer.0, %sw.bb42 ], [ %signer.0, %sw.bb41 ], [ %signer.0, %sw.bb40 ], [ %signer.0, %sw.bb38 ], [ %signer.0, %sw.bb37 ], [ %signer.0, %sw.bb35 ], [ %signer.0, %sw.bb34 ], [ %signer.0, %sw.bb33 ], [ %signer.0, %sw.bb31 ], [ %signer.0, %sw.bb26 ], [ %signer.0, %sw.bb20 ], [ %signer.0, %if.end69 ], [ %signer.0, %sw.bb17 ], [ %signer.0, %sw.bb15 ], [ %signer.0, %sw.bb9 ], [ %signer.0, %sw.bb7 ], [ %signer.0, %sw.bb11 ], [ %signer.0, %while.cond ]
  %chain.0.be = phi i8* [ %chain.0, %sw.bb62 ], [ %chain.0, %sw.bb60 ], [ %chain.0, %sw.bb58 ], [ %chain.0, %sw.bb56 ], [ %chain.0, %sw.bb54 ], [ %chain.0, %sw.bb52 ], [ %call51, %sw.bb50 ], [ %chain.0, %sw.bb48 ], [ %chain.0, %sw.bb46 ], [ %chain.0, %sw.bb44 ], [ %chain.0, %sw.bb42 ], [ %chain.0, %sw.bb41 ], [ %chain.0, %sw.bb40 ], [ %chain.0, %sw.bb38 ], [ %chain.0, %sw.bb37 ], [ %chain.0, %sw.bb35 ], [ %chain.0, %sw.bb34 ], [ %chain.0, %sw.bb33 ], [ %chain.0, %sw.bb31 ], [ %chain.0, %sw.bb26 ], [ %chain.0, %sw.bb20 ], [ %chain.0, %if.end69 ], [ %chain.0, %sw.bb17 ], [ %chain.0, %sw.bb15 ], [ %chain.0, %sw.bb9 ], [ %chain.0, %sw.bb7 ], [ %chain.0, %sw.bb11 ], [ %chain.0, %while.cond ]
  %CApath.0.be = phi i8* [ %CApath.0, %sw.bb62 ], [ %CApath.0, %sw.bb60 ], [ %CApath.0, %sw.bb58 ], [ %CApath.0, %sw.bb56 ], [ %CApath.0, %sw.bb54 ], [ %call53, %sw.bb52 ], [ %CApath.0, %sw.bb50 ], [ %CApath.0, %sw.bb48 ], [ %CApath.0, %sw.bb46 ], [ %CApath.0, %sw.bb44 ], [ %CApath.0, %sw.bb42 ], [ %CApath.0, %sw.bb41 ], [ %CApath.0, %sw.bb40 ], [ %CApath.0, %sw.bb38 ], [ %CApath.0, %sw.bb37 ], [ %CApath.0, %sw.bb35 ], [ %CApath.0, %sw.bb34 ], [ %CApath.0, %sw.bb33 ], [ %CApath.0, %sw.bb31 ], [ %CApath.0, %sw.bb26 ], [ %CApath.0, %sw.bb20 ], [ %CApath.0, %if.end69 ], [ %CApath.0, %sw.bb17 ], [ %CApath.0, %sw.bb15 ], [ %CApath.0, %sw.bb9 ], [ %CApath.0, %sw.bb7 ], [ %CApath.0, %sw.bb11 ], [ %CApath.0, %while.cond ]
  %CAstore.0.be = phi i8* [ %CAstore.0, %sw.bb62 ], [ %CAstore.0, %sw.bb60 ], [ %CAstore.0, %sw.bb58 ], [ %call57, %sw.bb56 ], [ %CAstore.0, %sw.bb54 ], [ %CAstore.0, %sw.bb52 ], [ %CAstore.0, %sw.bb50 ], [ %CAstore.0, %sw.bb48 ], [ %CAstore.0, %sw.bb46 ], [ %CAstore.0, %sw.bb44 ], [ %CAstore.0, %sw.bb42 ], [ %CAstore.0, %sw.bb41 ], [ %CAstore.0, %sw.bb40 ], [ %CAstore.0, %sw.bb38 ], [ %CAstore.0, %sw.bb37 ], [ %CAstore.0, %sw.bb35 ], [ %CAstore.0, %sw.bb34 ], [ %CAstore.0, %sw.bb33 ], [ %CAstore.0, %sw.bb31 ], [ %CAstore.0, %sw.bb26 ], [ %CAstore.0, %sw.bb20 ], [ %CAstore.0, %if.end69 ], [ %CAstore.0, %sw.bb17 ], [ %CAstore.0, %sw.bb15 ], [ %CAstore.0, %sw.bb9 ], [ %CAstore.0, %sw.bb7 ], [ %CAstore.0, %sw.bb11 ], [ %CAstore.0, %while.cond ]
  %mode.0.be = phi i32 [ %mode.0, %sw.bb62 ], [ %mode.0, %sw.bb60 ], [ %mode.0, %sw.bb58 ], [ %mode.0, %sw.bb56 ], [ %mode.0, %sw.bb54 ], [ %mode.0, %sw.bb52 ], [ %mode.0, %sw.bb50 ], [ %mode.0, %sw.bb48 ], [ %mode.0, %sw.bb46 ], [ %mode.0, %sw.bb44 ], [ %mode.0, %sw.bb42 ], [ %mode.0, %sw.bb41 ], [ %mode.0, %sw.bb40 ], [ %mode.0, %sw.bb38 ], [ %mode.0, %sw.bb37 ], [ %mode.0, %sw.bb35 ], [ %mode.0, %sw.bb34 ], [ %mode.0, %sw.bb33 ], [ %mode.0, %sw.bb31 ], [ %mode.0, %sw.bb26 ], [ %mode.0, %sw.bb20 ], [ %mode.0, %if.end69 ], [ %mode.0, %sw.bb17 ], [ %mode.0, %sw.bb15 ], [ %mode.0, %sw.bb9 ], [ %mode.0, %sw.bb7 ], [ %call2, %sw.bb11 ], [ %mode.0, %while.cond ]
  %no_nonce.0.be = phi i32 [ %no_nonce.0, %sw.bb62 ], [ %no_nonce.0, %sw.bb60 ], [ %no_nonce.0, %sw.bb58 ], [ %no_nonce.0, %sw.bb56 ], [ %no_nonce.0, %sw.bb54 ], [ %no_nonce.0, %sw.bb52 ], [ %no_nonce.0, %sw.bb50 ], [ %no_nonce.0, %sw.bb48 ], [ %no_nonce.0, %sw.bb46 ], [ %no_nonce.0, %sw.bb44 ], [ %no_nonce.0, %sw.bb42 ], [ %no_nonce.0, %sw.bb41 ], [ %no_nonce.0, %sw.bb40 ], [ %no_nonce.0, %sw.bb38 ], [ %no_nonce.0, %sw.bb37 ], [ %no_nonce.0, %sw.bb35 ], [ %no_nonce.0, %sw.bb34 ], [ 1, %sw.bb33 ], [ %no_nonce.0, %sw.bb31 ], [ %no_nonce.0, %sw.bb26 ], [ %no_nonce.0, %sw.bb20 ], [ %no_nonce.0, %if.end69 ], [ %no_nonce.0, %sw.bb17 ], [ %no_nonce.0, %sw.bb15 ], [ %no_nonce.0, %sw.bb9 ], [ %no_nonce.0, %sw.bb7 ], [ %no_nonce.0, %sw.bb11 ], [ %no_nonce.0, %while.cond ]
  %cert.0.be = phi i32 [ %cert.0, %sw.bb62 ], [ %cert.0, %sw.bb60 ], [ %cert.0, %sw.bb58 ], [ %cert.0, %sw.bb56 ], [ %cert.0, %sw.bb54 ], [ %cert.0, %sw.bb52 ], [ %cert.0, %sw.bb50 ], [ %cert.0, %sw.bb48 ], [ %cert.0, %sw.bb46 ], [ %cert.0, %sw.bb44 ], [ %cert.0, %sw.bb42 ], [ %cert.0, %sw.bb41 ], [ %cert.0, %sw.bb40 ], [ %cert.0, %sw.bb38 ], [ %cert.0, %sw.bb37 ], [ %cert.0, %sw.bb35 ], [ 1, %sw.bb34 ], [ %cert.0, %sw.bb33 ], [ %cert.0, %sw.bb31 ], [ %cert.0, %sw.bb26 ], [ %cert.0, %sw.bb20 ], [ %cert.0, %if.end69 ], [ %cert.0, %sw.bb17 ], [ %cert.0, %sw.bb15 ], [ %cert.0, %sw.bb9 ], [ %cert.0, %sw.bb7 ], [ %cert.0, %sw.bb11 ], [ %cert.0, %while.cond ]
  %text.0.be = phi i32 [ %text.0, %sw.bb62 ], [ %text.0, %sw.bb60 ], [ %text.0, %sw.bb58 ], [ %text.0, %sw.bb56 ], [ %text.0, %sw.bb54 ], [ %text.0, %sw.bb52 ], [ %text.0, %sw.bb50 ], [ %text.0, %sw.bb48 ], [ %text.0, %sw.bb46 ], [ %text.0, %sw.bb44 ], [ %text.0, %sw.bb42 ], [ 1, %sw.bb41 ], [ %text.0, %sw.bb40 ], [ %text.0, %sw.bb38 ], [ %text.0, %sw.bb37 ], [ %text.0, %sw.bb35 ], [ %text.0, %sw.bb34 ], [ %text.0, %sw.bb33 ], [ %text.0, %sw.bb31 ], [ %text.0, %sw.bb26 ], [ %text.0, %sw.bb20 ], [ %text.0, %if.end69 ], [ %text.0, %sw.bb17 ], [ %text.0, %sw.bb15 ], [ %text.0, %sw.bb9 ], [ %text.0, %sw.bb7 ], [ %text.0, %sw.bb11 ], [ %text.0, %while.cond ]
  %vpmtouched.0.be = phi i32 [ %vpmtouched.0, %sw.bb62 ], [ %vpmtouched.0, %sw.bb60 ], [ %vpmtouched.0, %sw.bb58 ], [ %vpmtouched.0, %sw.bb56 ], [ %vpmtouched.0, %sw.bb54 ], [ %vpmtouched.0, %sw.bb52 ], [ %vpmtouched.0, %sw.bb50 ], [ %vpmtouched.0, %sw.bb48 ], [ %vpmtouched.0, %sw.bb46 ], [ %vpmtouched.0, %sw.bb44 ], [ %vpmtouched.0, %sw.bb42 ], [ %vpmtouched.0, %sw.bb41 ], [ %vpmtouched.0, %sw.bb40 ], [ %vpmtouched.0, %sw.bb38 ], [ %vpmtouched.0, %sw.bb37 ], [ %vpmtouched.0, %sw.bb35 ], [ %vpmtouched.0, %sw.bb34 ], [ %vpmtouched.0, %sw.bb33 ], [ %vpmtouched.0, %sw.bb31 ], [ %vpmtouched.0, %sw.bb26 ], [ %vpmtouched.0, %sw.bb20 ], [ %inc, %if.end69 ], [ %vpmtouched.0, %sw.bb17 ], [ %vpmtouched.0, %sw.bb15 ], [ %vpmtouched.0, %sw.bb9 ], [ %vpmtouched.0, %sw.bb7 ], [ %vpmtouched.0, %sw.bb11 ], [ %vpmtouched.0, %while.cond ]
  %token_in.0.be = phi i32 [ %token_in.0, %sw.bb62 ], [ %token_in.0, %sw.bb60 ], [ %token_in.0, %sw.bb58 ], [ %token_in.0, %sw.bb56 ], [ %token_in.0, %sw.bb54 ], [ %token_in.0, %sw.bb52 ], [ %token_in.0, %sw.bb50 ], [ %token_in.0, %sw.bb48 ], [ %token_in.0, %sw.bb46 ], [ %token_in.0, %sw.bb44 ], [ %token_in.0, %sw.bb42 ], [ %token_in.0, %sw.bb41 ], [ %token_in.0, %sw.bb40 ], [ %token_in.0, %sw.bb38 ], [ 1, %sw.bb37 ], [ %token_in.0, %sw.bb35 ], [ %token_in.0, %sw.bb34 ], [ %token_in.0, %sw.bb33 ], [ %token_in.0, %sw.bb31 ], [ %token_in.0, %sw.bb26 ], [ %token_in.0, %sw.bb20 ], [ %token_in.0, %if.end69 ], [ %token_in.0, %sw.bb17 ], [ %token_in.0, %sw.bb15 ], [ %token_in.0, %sw.bb9 ], [ %token_in.0, %sw.bb7 ], [ %token_in.0, %sw.bb11 ], [ %token_in.0, %while.cond ]
  %token_out.0.be = phi i32 [ %token_out.0, %sw.bb62 ], [ %token_out.0, %sw.bb60 ], [ %token_out.0, %sw.bb58 ], [ %token_out.0, %sw.bb56 ], [ %token_out.0, %sw.bb54 ], [ %token_out.0, %sw.bb52 ], [ %token_out.0, %sw.bb50 ], [ %token_out.0, %sw.bb48 ], [ %token_out.0, %sw.bb46 ], [ %token_out.0, %sw.bb44 ], [ %token_out.0, %sw.bb42 ], [ %token_out.0, %sw.bb41 ], [ 1, %sw.bb40 ], [ %token_out.0, %sw.bb38 ], [ %token_out.0, %sw.bb37 ], [ %token_out.0, %sw.bb35 ], [ %token_out.0, %sw.bb34 ], [ %token_out.0, %sw.bb33 ], [ %token_out.0, %sw.bb31 ], [ %token_out.0, %sw.bb26 ], [ %token_out.0, %sw.bb20 ], [ %token_out.0, %if.end69 ], [ %token_out.0, %sw.bb17 ], [ %token_out.0, %sw.bb15 ], [ %token_out.0, %sw.bb9 ], [ %token_out.0, %sw.bb7 ], [ %token_out.0, %sw.bb11 ], [ %token_out.0, %while.cond ]
  br label %while.cond, !llvm.loop !7

opthelp:                                          ; preds = %while.cond, %sw.bb11, %if.end125, %if.else138, %lor.lhs.false154, %if.end120, %if.then117, %if.end108, %if.then105, %if.then80, %while.end
  %conf.0 = phi %struct.conf_st* [ null, %while.end ], [ %call94, %if.then105 ], [ %call94, %if.end108 ], [ %call94, %if.then117 ], [ %call94, %if.end120 ], [ %call94, %if.else138 ], [ %call94, %lor.lhs.false154 ], [ null, %if.then80 ], [ %call94, %if.end125 ], [ null, %sw.bb11 ], [ null, %while.cond ]
  %3 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call4 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %3, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.129, i64 0, i64 0), i8* noundef %call1) #6
  br label %end

sw.bb5:                                           ; preds = %while.cond
  tail call void @opt_help(%struct.options_st* noundef getelementptr inbounds ([69 x %struct.options_st], [69 x %struct.options_st]* @ts_options, i64 0, i64 0)) #6
  %4 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call6 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %4, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.130, i64 0, i64 0), i8* noundef nonnull getelementptr inbounds ([1 x i8], [1 x i8]* @.str.29, i64 0, i64 0)) #6
  %5 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call6.1 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %5, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.130, i64 0, i64 0), i8* noundef nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.133, i64 0, i64 0)) #6
  %6 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call6.2 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %6, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.130, i64 0, i64 0), i8* noundef nonnull getelementptr inbounds ([63 x i8], [63 x i8]* @.str.134, i64 0, i64 0)) #6
  %7 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call6.3 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %7, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.130, i64 0, i64 0), i8* noundef nonnull getelementptr inbounds ([60 x i8], [60 x i8]* @.str.135, i64 0, i64 0)) #6
  %8 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call6.4 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %8, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.130, i64 0, i64 0), i8* noundef nonnull getelementptr inbounds ([35 x i8], [35 x i8]* @.str.136, i64 0, i64 0)) #6
  %9 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call6.5 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %9, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.130, i64 0, i64 0), i8* noundef nonnull getelementptr inbounds ([1 x i8], [1 x i8]* @.str.29, i64 0, i64 0)) #6
  %10 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call6.6 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %10, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.130, i64 0, i64 0), i8* noundef nonnull getelementptr inbounds ([57 x i8], [57 x i8]* @.str.137, i64 0, i64 0)) #6
  %11 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call6.7 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %11, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.130, i64 0, i64 0), i8* noundef nonnull getelementptr inbounds ([41 x i8], [41 x i8]* @.str.138, i64 0, i64 0)) #6
  %12 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call6.8 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %12, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.130, i64 0, i64 0), i8* noundef nonnull getelementptr inbounds ([52 x i8], [52 x i8]* @.str.139, i64 0, i64 0)) #6
  %13 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call6.9 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %13, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.130, i64 0, i64 0), i8* noundef nonnull getelementptr inbounds ([44 x i8], [44 x i8]* @.str.140, i64 0, i64 0)) #6
  %14 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call6.10 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %14, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.130, i64 0, i64 0), i8* noundef nonnull getelementptr inbounds ([52 x i8], [52 x i8]* @.str.141, i64 0, i64 0)) #6
  %15 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call6.11 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %15, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.130, i64 0, i64 0), i8* noundef nonnull getelementptr inbounds ([25 x i8], [25 x i8]* @.str.142, i64 0, i64 0)) #6
  %16 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call6.12 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %16, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.130, i64 0, i64 0), i8* noundef nonnull getelementptr inbounds ([1 x i8], [1 x i8]* @.str.29, i64 0, i64 0)) #6
  %17 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call6.13 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %17, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.130, i64 0, i64 0), i8* noundef nonnull getelementptr inbounds ([67 x i8], [67 x i8]* @.str.143, i64 0, i64 0)) #6
  %18 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call6.14 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %18, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.130, i64 0, i64 0), i8* noundef nonnull getelementptr inbounds ([63 x i8], [63 x i8]* @.str.144, i64 0, i64 0)) #6
  %19 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call6.15 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %19, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.130, i64 0, i64 0), i8* noundef nonnull getelementptr inbounds ([62 x i8], [62 x i8]* @.str.145, i64 0, i64 0)) #6
  br label %end

sw.bb7:                                           ; preds = %while.cond
  %call8 = tail call i8* @opt_arg() #6
  br label %while.cond.backedge

sw.bb9:                                           ; preds = %while.cond
  %call10 = tail call i8* @opt_arg() #6
  br label %while.cond.backedge

sw.bb11:                                          ; preds = %while.cond, %while.cond, %while.cond
  %cmp12.not = icmp eq i32 %mode.0, -1
  br i1 %cmp12.not, label %while.cond.backedge, label %opthelp

sw.bb15:                                          ; preds = %while.cond
  %call16 = tail call i8* @opt_arg() #6
  br label %while.cond.backedge

sw.bb17:                                          ; preds = %while.cond
  %call18 = tail call i8* @opt_arg() #6
  br label %while.cond.backedge

sw.bb20:                                          ; preds = %while.cond, %while.cond
  %call21 = tail call i32 @opt_rand(i32 noundef %call2) #6
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %end, label %while.cond.backedge

sw.bb26:                                          ; preds = %while.cond, %while.cond, %while.cond
  %call27 = tail call i32 @opt_provider(i32 noundef %call2) #6
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %end, label %while.cond.backedge

sw.bb31:                                          ; preds = %while.cond
  %call32 = tail call i8* @opt_arg() #6
  br label %while.cond.backedge

sw.bb33:                                          ; preds = %while.cond
  br label %while.cond.backedge

sw.bb34:                                          ; preds = %while.cond
  br label %while.cond.backedge

sw.bb35:                                          ; preds = %while.cond
  %call36 = tail call i8* @opt_arg() #6
  br label %while.cond.backedge

sw.bb37:                                          ; preds = %while.cond
  br label %while.cond.backedge

sw.bb38:                                          ; preds = %while.cond
  %call39 = tail call i8* @opt_arg() #6
  br label %while.cond.backedge

sw.bb40:                                          ; preds = %while.cond
  br label %while.cond.backedge

sw.bb41:                                          ; preds = %while.cond
  br label %while.cond.backedge

sw.bb42:                                          ; preds = %while.cond
  %call43 = tail call i8* @opt_arg() #6
  br label %while.cond.backedge

sw.bb44:                                          ; preds = %while.cond
  %call45 = tail call i8* @opt_arg() #6
  br label %while.cond.backedge

sw.bb46:                                          ; preds = %while.cond
  %call47 = tail call i8* @opt_arg() #6
  br label %while.cond.backedge

sw.bb48:                                          ; preds = %while.cond
  %call49 = tail call i8* @opt_arg() #6
  br label %while.cond.backedge

sw.bb50:                                          ; preds = %while.cond
  %call51 = tail call i8* @opt_arg() #6
  br label %while.cond.backedge

sw.bb52:                                          ; preds = %while.cond
  %call53 = tail call i8* @opt_arg() #6
  br label %while.cond.backedge

sw.bb54:                                          ; preds = %while.cond
  %call55 = tail call i8* @opt_arg() #6
  br label %while.cond.backedge

sw.bb56:                                          ; preds = %while.cond
  %call57 = tail call i8* @opt_arg() #6
  br label %while.cond.backedge

sw.bb58:                                          ; preds = %while.cond
  %call59 = tail call i8* @opt_arg() #6
  br label %while.cond.backedge

sw.bb60:                                          ; preds = %while.cond
  %call61 = tail call i8* @opt_arg() #6
  br label %while.cond.backedge

sw.bb62:                                          ; preds = %while.cond
  %call63 = tail call i8* @opt_unknown() #6
  br label %while.cond.backedge

sw.bb65:                                          ; preds = %while.cond, %while.cond, %while.cond, %while.cond, %while.cond, %while.cond, %while.cond, %while.cond, %while.cond, %while.cond, %while.cond, %while.cond, %while.cond, %while.cond, %while.cond, %while.cond, %while.cond, %while.cond, %while.cond, %while.cond, %while.cond, %while.cond, %while.cond, %while.cond, %while.cond, %while.cond, %while.cond, %while.cond, %while.cond, %while.cond
  %call66 = tail call i32 @opt_verify(i32 noundef %call2, %struct.X509_VERIFY_PARAM_st* noundef nonnull %call) #6
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %end, label %if.end69

if.end69:                                         ; preds = %sw.bb65
  %inc = add nsw i32 %vpmtouched.0, 1
  br label %while.cond.backedge

while.end:                                        ; preds = %while.cond
  %call70 = tail call i32 @opt_num_rest() #6
  %cmp71 = icmp ne i32 %call70, 0
  %cmp72 = icmp eq i32 %mode.0, -1
  %or.cond = select i1 %cmp71, i1 true, i1 %cmp72
  br i1 %or.cond, label %opthelp, label %if.end74

if.end74:                                         ; preds = %while.end
  %call75 = tail call i32 @app_RAND_load() #6
  %tobool76.not = icmp eq i32 %call75, 0
  br i1 %tobool76.not, label %end, label %if.end78

if.end78:                                         ; preds = %if.end74
  %cmp79.not = icmp eq i8* %digestname.0, null
  br i1 %cmp79.not, label %if.end85, label %if.then80

if.then80:                                        ; preds = %if.end78
  %call81 = call i32 @opt_md(i8* noundef nonnull %digestname.0, %struct.evp_md_st** noundef nonnull %md) #6
  %tobool82.not = icmp eq i32 %call81, 0
  br i1 %tobool82.not, label %opthelp, label %if.end85

if.end85:                                         ; preds = %if.then80, %if.end78
  %cmp86 = icmp eq i32 %mode.0, 16
  %tobool87 = icmp ne i8* %passin.0, null
  %or.cond171 = select i1 %cmp86, i1 %tobool87, i1 false
  br i1 %or.cond171, label %land.lhs.true88, label %if.end93

land.lhs.true88:                                  ; preds = %if.end85
  %call89 = call i32 @app_passwd(i8* noundef nonnull %passin.0, i8* noundef null, i8** noundef nonnull %password, i8** noundef null) #6
  %tobool90.not = icmp eq i32 %call89, 0
  br i1 %tobool90.not, label %if.then91, label %if.end93

if.then91:                                        ; preds = %land.lhs.true88
  %20 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call92 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %20, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.131, i64 0, i64 0)) #6
  br label %end

if.end93:                                         ; preds = %land.lhs.true88, %if.end85
  %call94 = call fastcc %struct.conf_st* @load_config_file(i8* noundef %configfile.0) #7
  %cmp95 = icmp eq %struct.conf_st* %call94, null
  br i1 %cmp95, label %end, label %if.end97

if.end97:                                         ; preds = %if.end93
  %21 = load i8*, i8** @default_config_file, align 8, !tbaa !3
  %cmp98.not = icmp eq i8* %configfile.0, %21
  br i1 %cmp98.not, label %if.end103, label %land.lhs.true99

land.lhs.true99:                                  ; preds = %if.end97
  %call100 = call i32 @app_load_modules(%struct.conf_st* noundef nonnull %call94) #6
  %tobool101.not = icmp eq i32 %call100, 0
  br i1 %tobool101.not, label %end, label %if.end103

if.end103:                                        ; preds = %land.lhs.true99, %if.end97
  %cmp104 = icmp eq i32 %mode.0, 5
  br i1 %cmp104, label %if.then105, label %if.else

if.then105:                                       ; preds = %if.end103
  %tobool106.not = icmp eq i32 %vpmtouched.0, 0
  br i1 %tobool106.not, label %if.end108, label %opthelp

if.end108:                                        ; preds = %if.then105
  %cmp109 = icmp ne i8* %data.0, null
  %cmp111 = icmp ne i8* %digest.0, null
  %or.cond172 = select i1 %cmp109, i1 %cmp111, i1 false
  br i1 %or.cond172, label %opthelp, label %if.end113

if.end113:                                        ; preds = %if.end108
  %22 = load %struct.evp_md_st*, %struct.evp_md_st** %md, align 8, !tbaa !3
  %call114 = call fastcc i32 @query_command(i8* noundef %data.0, i8* noundef %digest.0, %struct.evp_md_st* noundef %22, i8* noundef %policy.0, i32 noundef %no_nonce.0, i32 noundef %cert.0, i8* noundef %in.0, i8* noundef %out.0, i32 noundef %text.0) #7
  %tobool115.not = icmp eq i32 %call114, 0
  br label %end

if.else:                                          ; preds = %if.end103
  br i1 %cmp86, label %if.then117, label %if.else138

if.then117:                                       ; preds = %if.else
  %tobool118.not = icmp eq i32 %vpmtouched.0, 0
  br i1 %tobool118.not, label %if.end120, label %opthelp

if.end120:                                        ; preds = %if.then117
  %cmp121 = icmp ne i8* %in.0, null
  %cmp123 = icmp ne i8* %queryfile.0, null
  %or.cond173 = select i1 %cmp121, i1 %cmp123, i1 false
  br i1 %or.cond173, label %opthelp, label %if.end125

if.end125:                                        ; preds = %if.end120
  %cmp130.not = icmp eq i32 %token_in.0, 0
  %or.cond261 = select i1 %cmp121, i1 true, i1 %cmp130.not
  br i1 %or.cond261, label %if.end133, label %opthelp

if.end133:                                        ; preds = %if.end125
  %23 = load i8*, i8** %password, align 8, !tbaa !3
  %24 = load %struct.evp_md_st*, %struct.evp_md_st** %md, align 8, !tbaa !3
  %call134 = call fastcc i32 @reply_command(%struct.conf_st* noundef nonnull %call94, i8* noundef %section.0, i8* noundef %engine.0, i8* noundef %queryfile.0, i8* noundef %23, i8* noundef %inkey.0, %struct.evp_md_st* noundef %24, i8* noundef %signer.0, i8* noundef %chain.0, i8* noundef %policy.0, i8* noundef %in.0, i32 noundef %token_in.0, i8* noundef %out.0, i32 noundef %token_out.0, i32 noundef %text.0) #7
  %tobool135.not = icmp eq i32 %call134, 0
  br label %end

if.else138:                                       ; preds = %if.else
  %cmp139 = icmp ne i32 %mode.0, 22
  %cmp141 = icmp eq i8* %in.0, null
  %or.cond181 = select i1 %cmp139, i1 true, i1 %cmp141
  br i1 %or.cond181, label %opthelp, label %lor.lhs.false142

lor.lhs.false142:                                 ; preds = %if.else138
  %tobool143 = icmp eq i8* %queryfile.0, null
  %tobool145 = icmp ne i8* %data.0, null
  %or.cond175 = select i1 %tobool143, i1 true, i1 %tobool145
  %tobool147 = icmp ne i8* %digest.0, null
  %or.cond176 = select i1 %or.cond175, i1 true, i1 %tobool147
  br i1 %or.cond176, label %lor.lhs.false148, label %if.end161

lor.lhs.false148:                                 ; preds = %lor.lhs.false142
  %tobool149 = icmp eq i8* %data.0, null
  %tobool151 = icmp ne i8* %queryfile.0, null
  %or.cond177 = select i1 %tobool149, i1 true, i1 %tobool151
  %or.cond178 = select i1 %or.cond177, i1 true, i1 %tobool147
  br i1 %or.cond178, label %lor.lhs.false154, label %if.end161

lor.lhs.false154:                                 ; preds = %lor.lhs.false148
  %tobool155 = icmp eq i8* %digest.0, null
  %or.cond179 = select i1 %tobool155, i1 true, i1 %tobool151
  %or.cond180 = select i1 %or.cond179, i1 true, i1 %tobool145
  br i1 %or.cond180, label %opthelp, label %if.end161

if.end161:                                        ; preds = %lor.lhs.false154, %lor.lhs.false148, %lor.lhs.false142
  %tobool162.not = icmp eq i32 %vpmtouched.0, 0
  %cond = select i1 %tobool162.not, %struct.X509_VERIFY_PARAM_st* null, %struct.X509_VERIFY_PARAM_st* %call
  %call163 = call fastcc i32 @verify_command(i8* noundef %data.0, i8* noundef %digest.0, i8* noundef %queryfile.0, i8* noundef nonnull %in.0, i32 noundef %token_in.0, i8* noundef %CApath.0, i8* noundef %CAfile.0, i8* noundef %CAstore.0, i8* noundef %untrusted.0, %struct.X509_VERIFY_PARAM_st* noundef %cond) #7
  %tobool164.not = icmp eq i32 %call163, 0
  br label %end

end:                                              ; preds = %sw.bb65, %sw.bb26, %sw.bb20, %sw.bb5, %if.end113, %if.end161, %if.end133, %land.lhs.true99, %if.end93, %if.end74, %entry, %if.then91, %opthelp
  %conf.1 = phi %struct.conf_st* [ null, %entry ], [ %conf.0, %opthelp ], [ null, %if.end93 ], [ %call94, %if.end113 ], [ %call94, %if.end133 ], [ %call94, %if.end161 ], [ %call94, %land.lhs.true99 ], [ null, %if.then91 ], [ null, %if.end74 ], [ null, %sw.bb5 ], [ null, %sw.bb20 ], [ null, %sw.bb26 ], [ null, %sw.bb65 ]
  %ret.0.shrunk = phi i1 [ true, %entry ], [ true, %opthelp ], [ true, %if.end93 ], [ %tobool115.not, %if.end113 ], [ %tobool135.not, %if.end133 ], [ %tobool164.not, %if.end161 ], [ true, %land.lhs.true99 ], [ true, %if.then91 ], [ true, %if.end74 ], [ false, %sw.bb5 ], [ true, %sw.bb20 ], [ true, %sw.bb26 ], [ true, %sw.bb65 ]
  %ret.0 = zext i1 %ret.0.shrunk to i32
  call void @X509_VERIFY_PARAM_free(%struct.X509_VERIFY_PARAM_st* noundef %call) #6
  %25 = load %struct.evp_md_st*, %struct.evp_md_st** %md, align 8, !tbaa !3
  call void @EVP_MD_free(%struct.evp_md_st* noundef %25) #6
  call void @NCONF_free(%struct.conf_st* noundef %conf.1) #6
  %26 = load i8*, i8** %password, align 8, !tbaa !3
  call void @CRYPTO_free(i8* noundef %26, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.132, i64 0, i64 0), i32 noundef 348) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #5
  ret i32 %ret.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare dso_local %struct.X509_VERIFY_PARAM_st* @X509_VERIFY_PARAM_new() local_unnamed_addr #2

declare dso_local i8* @opt_init(i32 noundef, i8** noundef, %struct.options_st* noundef) local_unnamed_addr #2

declare dso_local i32 @opt_next() local_unnamed_addr #2

declare dso_local i32 @BIO_printf(%struct.bio_st* noundef, i8* noundef, ...) local_unnamed_addr #2

declare dso_local void @opt_help(%struct.options_st* noundef) local_unnamed_addr #2

declare dso_local i8* @opt_arg() local_unnamed_addr #2

declare dso_local i32 @opt_rand(i32 noundef) local_unnamed_addr #2

declare dso_local i32 @opt_provider(i32 noundef) local_unnamed_addr #2

declare dso_local i8* @opt_unknown() local_unnamed_addr #2

declare dso_local i32 @opt_verify(i32 noundef, %struct.X509_VERIFY_PARAM_st* noundef) local_unnamed_addr #2

declare dso_local i32 @opt_num_rest() local_unnamed_addr #2

declare dso_local i32 @app_RAND_load() local_unnamed_addr #2

declare dso_local i32 @opt_md(i8* noundef, %struct.evp_md_st** noundef) local_unnamed_addr #2

declare dso_local i32 @app_passwd(i8* noundef, i8* noundef, i8** noundef, i8** noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.conf_st* @load_config_file(i8* noundef %configfile) unnamed_addr #0 {
entry:
  %call = tail call %struct.conf_st* @app_load_config_internal(i8* noundef %configfile, i32 noundef 0) #6
  %cmp.not = icmp eq %struct.conf_st* %call, null
  br i1 %cmp.not, label %if.end14, label %if.then

if.then:                                          ; preds = %entry
  %0 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call1 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %0, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.146, i64 0, i64 0), i8* noundef %configfile) #6
  %call2 = tail call i8* @NCONF_get_string(%struct.conf_st* noundef nonnull %call, i8* noundef null, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.147, i64 0, i64 0)) #6
  %cmp3.not = icmp eq i8* %call2, null
  br i1 %cmp3.not, label %if.else8, label %if.then4

if.then4:                                         ; preds = %if.then
  %call5 = tail call %struct.bio_st* @BIO_new_file(i8* noundef nonnull %call2, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.148, i64 0, i64 0)) #6
  %tobool.not = icmp eq %struct.bio_st* %call5, null
  br i1 %tobool.not, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.then4
  %1 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  tail call void @ERR_print_errors(%struct.bio_st* noundef %1) #6
  br label %if.end9

if.else:                                          ; preds = %if.then4
  %call7 = tail call i32 @OBJ_create_objects(%struct.bio_st* noundef nonnull %call5) #6
  tail call void @BIO_free_all(%struct.bio_st* noundef nonnull %call5) #6
  br label %if.end9

if.else8:                                         ; preds = %if.then
  tail call void @ERR_clear_error() #6
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.else, %if.else8
  %call10 = tail call i32 @add_oid_section(%struct.conf_st* noundef nonnull %call) #6
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.end9
  %2 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  tail call void @ERR_print_errors(%struct.bio_st* noundef %2) #6
  br label %if.end14

if.end14:                                         ; preds = %if.end9, %if.then12, %entry
  ret %struct.conf_st* %call
}

declare dso_local i32 @app_load_modules(%struct.conf_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @query_command(i8* noundef %data, i8* noundef %digest, %struct.evp_md_st* noundef %md, i8* noundef %policy, i32 noundef %no_nonce, i32 noundef %cert, i8* noundef %in, i8* noundef %out, i32 noundef %text) unnamed_addr #0 {
entry:
  %cmp.not = icmp eq i8* %in, null
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call %struct.bio_st* @bio_open_default(i8* noundef nonnull %in, i8 noundef signext 114, i32 noundef 4) #6
  %cmp1 = icmp eq %struct.bio_st* %call, null
  br i1 %cmp1, label %end, label %if.end

if.end:                                           ; preds = %if.then
  %call3 = tail call %struct.TS_req_st* @d2i_TS_REQ_bio(%struct.bio_st* noundef nonnull %call, %struct.TS_req_st** noundef null) #6
  br label %if.end10

if.else:                                          ; preds = %entry
  %cmp4 = icmp eq i8* %digest, null
  br i1 %cmp4, label %land.lhs.true, label %if.end8

land.lhs.true:                                    ; preds = %if.else
  %call5 = tail call %struct.bio_st* @bio_open_default(i8* noundef %data, i8 noundef signext 114, i32 noundef 4) #6
  %cmp6 = icmp eq %struct.bio_st* %call5, null
  br i1 %cmp6, label %end, label %if.end8

if.end8:                                          ; preds = %land.lhs.true, %if.else
  %data_bio.0 = phi %struct.bio_st* [ %call5, %land.lhs.true ], [ null, %if.else ]
  %call9 = tail call fastcc %struct.TS_req_st* @create_query(%struct.bio_st* noundef %data_bio.0, i8* noundef %digest, %struct.evp_md_st* noundef %md, i8* noundef %policy, i32 noundef %no_nonce, i32 noundef %cert) #7
  br label %if.end10

if.end10:                                         ; preds = %if.end8, %if.end
  %query.0 = phi %struct.TS_req_st* [ %call3, %if.end ], [ %call9, %if.end8 ]
  %in_bio.0 = phi %struct.bio_st* [ %call, %if.end ], [ null, %if.end8 ]
  %data_bio.1 = phi %struct.bio_st* [ null, %if.end ], [ %data_bio.0, %if.end8 ]
  %cmp11 = icmp eq %struct.TS_req_st* %query.0, null
  br i1 %cmp11, label %end, label %if.end13

if.end13:                                         ; preds = %if.end10
  %tobool.not = icmp eq i32 %text, 0
  br i1 %tobool.not, label %if.else23, label %if.then14

if.then14:                                        ; preds = %if.end13
  %call15 = tail call %struct.bio_st* @bio_open_default(i8* noundef %out, i8 noundef signext 119, i32 noundef 32769) #6
  %cmp16 = icmp eq %struct.bio_st* %call15, null
  br i1 %cmp16, label %end, label %if.end18

if.end18:                                         ; preds = %if.then14
  %call19 = tail call i32 @TS_REQ_print_bio(%struct.bio_st* noundef nonnull %call15, %struct.TS_req_st* noundef nonnull %query.0) #6
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %end, label %if.end32

if.else23:                                        ; preds = %if.end13
  %call24 = tail call %struct.bio_st* @bio_open_default(i8* noundef %out, i8 noundef signext 119, i32 noundef 4) #6
  %cmp25 = icmp eq %struct.bio_st* %call24, null
  br i1 %cmp25, label %end, label %if.end27

if.end27:                                         ; preds = %if.else23
  %call28 = tail call i32 @i2d_TS_REQ_bio(%struct.bio_st* noundef nonnull %call24, %struct.TS_req_st* noundef nonnull %query.0) #6
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %end, label %if.end32

if.end32:                                         ; preds = %if.end27, %if.end18
  %out_bio.0 = phi %struct.bio_st* [ %call15, %if.end18 ], [ %call24, %if.end27 ]
  br label %end

end:                                              ; preds = %if.end27, %if.else23, %if.end18, %if.then14, %if.end10, %land.lhs.true, %if.then, %if.end32
  %ret.0 = phi i32 [ 0, %if.then ], [ 0, %if.end10 ], [ 0, %if.then14 ], [ 1, %if.end32 ], [ 0, %if.end18 ], [ 0, %if.else23 ], [ 0, %if.end27 ], [ 0, %land.lhs.true ]
  %query.1 = phi %struct.TS_req_st* [ null, %if.then ], [ null, %if.end10 ], [ %query.0, %if.then14 ], [ %query.0, %if.end32 ], [ %query.0, %if.end18 ], [ %query.0, %if.else23 ], [ %query.0, %if.end27 ], [ null, %land.lhs.true ]
  %in_bio.1 = phi %struct.bio_st* [ null, %if.then ], [ %in_bio.0, %if.end10 ], [ %in_bio.0, %if.then14 ], [ %in_bio.0, %if.end32 ], [ %in_bio.0, %if.end18 ], [ %in_bio.0, %if.else23 ], [ %in_bio.0, %if.end27 ], [ null, %land.lhs.true ]
  %data_bio.2 = phi %struct.bio_st* [ null, %if.then ], [ %data_bio.1, %if.end10 ], [ %data_bio.1, %if.then14 ], [ %data_bio.1, %if.end32 ], [ %data_bio.1, %if.end18 ], [ %data_bio.1, %if.else23 ], [ %data_bio.1, %if.end27 ], [ null, %land.lhs.true ]
  %out_bio.1 = phi %struct.bio_st* [ null, %if.then ], [ null, %if.end10 ], [ null, %if.then14 ], [ %out_bio.0, %if.end32 ], [ %call15, %if.end18 ], [ null, %if.else23 ], [ %call24, %if.end27 ], [ null, %land.lhs.true ]
  %0 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  tail call void @ERR_print_errors(%struct.bio_st* noundef %0) #6
  tail call void @BIO_free_all(%struct.bio_st* noundef %in_bio.1) #6
  tail call void @BIO_free_all(%struct.bio_st* noundef %data_bio.2) #6
  tail call void @BIO_free_all(%struct.bio_st* noundef %out_bio.1) #6
  tail call void @TS_REQ_free(%struct.TS_req_st* noundef %query.1) #6
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @reply_command(%struct.conf_st* noundef %conf, i8* noundef %section, i8* noundef %engine, i8* noundef %queryfile, i8* noundef %passin, i8* noundef %inkey, %struct.evp_md_st* noundef %md, i8* noundef %signer, i8* noundef %chain, i8* noundef %policy, i8* noundef %in, i32 noundef %token_in, i8* noundef %out, i32 noundef %token_out, i32 noundef %text) unnamed_addr #0 {
entry:
  %cmp.not = icmp eq i8* %in, null
  br i1 %cmp.not, label %if.else7, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call %struct.bio_st* @BIO_new_file(i8* noundef nonnull %in, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.156, i64 0, i64 0)) #6
  %cmp1 = icmp eq %struct.bio_st* %call, null
  br i1 %cmp1, label %end, label %if.end

if.end:                                           ; preds = %if.then
  %tobool.not = icmp eq i32 %token_in, 0
  br i1 %tobool.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  %call4 = tail call fastcc %struct.TS_resp_st* @read_PKCS7(%struct.bio_st* noundef nonnull %call) #7
  br label %if.end15

if.else:                                          ; preds = %if.end
  %call5 = tail call %struct.TS_resp_st* @d2i_TS_RESP_bio(%struct.bio_st* noundef nonnull %call, %struct.TS_resp_st** noundef null) #6
  br label %if.end15

if.else7:                                         ; preds = %entry
  %call8 = tail call fastcc %struct.TS_resp_st* @create_response(%struct.conf_st* noundef %conf, i8* noundef %section, i8* noundef %engine, i8* noundef %queryfile, i8* noundef %passin, i8* noundef %inkey, %struct.evp_md_st* noundef %md, i8* noundef %signer, i8* noundef %chain, i8* noundef %policy) #7
  %cmp9.not = icmp eq %struct.TS_resp_st* %call8, null
  %0 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  br i1 %cmp9.not, label %if.end15.thread, label %if.end15.thread98

if.end15.thread98:                                ; preds = %if.else7
  %call11 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %0, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.157, i64 0, i64 0)) #6
  br label %if.end18

if.end15.thread:                                  ; preds = %if.else7
  %call13 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %0, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.158, i64 0, i64 0)) #6
  br label %end

if.end15:                                         ; preds = %if.then3, %if.else
  %response.0 = phi %struct.TS_resp_st* [ %call4, %if.then3 ], [ %call5, %if.else ]
  %cmp16 = icmp eq %struct.TS_resp_st* %response.0, null
  br i1 %cmp16, label %end, label %if.end18

if.end18:                                         ; preds = %if.end15.thread98, %if.end15
  %response.0103 = phi %struct.TS_resp_st* [ %call8, %if.end15.thread98 ], [ %response.0, %if.end15 ]
  %in_bio.0102 = phi %struct.bio_st* [ null, %if.end15.thread98 ], [ %call, %if.end15 ]
  %tobool19.not = icmp eq i32 %text, 0
  br i1 %tobool19.not, label %if.else38, label %if.then20

if.then20:                                        ; preds = %if.end18
  %call21 = tail call %struct.bio_st* @bio_open_default(i8* noundef %out, i8 noundef signext 119, i32 noundef 32769) #6
  %cmp22 = icmp eq %struct.bio_st* %call21, null
  br i1 %cmp22, label %end, label %if.end24

if.end24:                                         ; preds = %if.then20
  %tobool25.not = icmp eq i32 %token_out, 0
  br i1 %tobool25.not, label %if.else32, label %if.then26

if.then26:                                        ; preds = %if.end24
  %call27 = tail call %struct.TS_tst_info_st* @TS_RESP_get_tst_info(%struct.TS_resp_st* noundef nonnull %response.0103) #6
  %call28 = tail call i32 @TS_TST_INFO_print_bio(%struct.bio_st* noundef nonnull %call21, %struct.TS_tst_info_st* noundef %call27) #6
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %end, label %if.end59

if.else32:                                        ; preds = %if.end24
  %call33 = tail call i32 @TS_RESP_print_bio(%struct.bio_st* noundef nonnull %call21, %struct.TS_resp_st* noundef nonnull %response.0103) #6
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %end, label %if.end59

if.else38:                                        ; preds = %if.end18
  %call39 = tail call %struct.bio_st* @bio_open_default(i8* noundef %out, i8 noundef signext 119, i32 noundef 4) #6
  %cmp40 = icmp eq %struct.bio_st* %call39, null
  br i1 %cmp40, label %end, label %if.end42

if.end42:                                         ; preds = %if.else38
  %tobool43.not = icmp eq i32 %token_out, 0
  br i1 %tobool43.not, label %if.else53, label %if.then44

if.then44:                                        ; preds = %if.end42
  %call45 = tail call %struct.pkcs7_st* @TS_RESP_get_token(%struct.TS_resp_st* noundef nonnull %response.0103) #6
  %call46 = tail call i32 @i2d_PKCS7_bio(%struct.bio_st* noundef nonnull %call39, %struct.pkcs7_st* noundef %call45) #6
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %end, label %if.end59

if.else53:                                        ; preds = %if.end42
  %call54 = tail call i32 @i2d_TS_RESP_bio(%struct.bio_st* noundef nonnull %call39, %struct.TS_resp_st* noundef nonnull %response.0103) #6
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %end, label %if.end59

if.end59:                                         ; preds = %if.then44, %if.then26, %if.else53, %if.else32
  %out_bio.0 = phi %struct.bio_st* [ %call21, %if.then26 ], [ %call21, %if.else32 ], [ %call39, %if.then44 ], [ %call39, %if.else53 ]
  br label %end

end:                                              ; preds = %if.end15.thread, %if.then44, %if.then26, %if.else53, %if.else38, %if.else32, %if.then20, %if.end15, %if.then, %if.end59
  %in_bio.1 = phi %struct.bio_st* [ null, %if.then ], [ %call, %if.end15 ], [ %in_bio.0102, %if.then20 ], [ %in_bio.0102, %if.then26 ], [ %in_bio.0102, %if.end59 ], [ %in_bio.0102, %if.else32 ], [ %in_bio.0102, %if.else38 ], [ %in_bio.0102, %if.then44 ], [ %in_bio.0102, %if.else53 ], [ null, %if.end15.thread ]
  %response.1 = phi %struct.TS_resp_st* [ null, %if.then ], [ null, %if.end15 ], [ %response.0103, %if.then20 ], [ %response.0103, %if.then26 ], [ %response.0103, %if.end59 ], [ %response.0103, %if.else32 ], [ %response.0103, %if.else38 ], [ %response.0103, %if.then44 ], [ %response.0103, %if.else53 ], [ null, %if.end15.thread ]
  %out_bio.1 = phi %struct.bio_st* [ null, %if.then ], [ null, %if.end15 ], [ null, %if.then20 ], [ %call21, %if.then26 ], [ %out_bio.0, %if.end59 ], [ %call21, %if.else32 ], [ null, %if.else38 ], [ %call39, %if.then44 ], [ %call39, %if.else53 ], [ null, %if.end15.thread ]
  %ret.0 = phi i32 [ 0, %if.then ], [ 0, %if.end15 ], [ 0, %if.then20 ], [ 0, %if.then26 ], [ 1, %if.end59 ], [ 0, %if.else32 ], [ 0, %if.else38 ], [ 0, %if.then44 ], [ 0, %if.else53 ], [ 0, %if.end15.thread ]
  %1 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  tail call void @ERR_print_errors(%struct.bio_st* noundef %1) #6
  tail call void @BIO_free_all(%struct.bio_st* noundef %in_bio.1) #6
  tail call void @BIO_free_all(%struct.bio_st* noundef null) #6
  tail call void @BIO_free_all(%struct.bio_st* noundef null) #6
  tail call void @BIO_free_all(%struct.bio_st* noundef null) #6
  tail call void @BIO_free_all(%struct.bio_st* noundef %out_bio.1) #6
  tail call void @TS_RESP_free(%struct.TS_resp_st* noundef %response.1) #6
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @verify_command(i8* noundef %data, i8* noundef %digest, i8* noundef %queryfile, i8* noundef %in, i32 noundef %token_in, i8* noundef %CApath, i8* noundef %CAfile, i8* noundef %CAstore, i8* noundef %untrusted, %struct.X509_VERIFY_PARAM_st* noundef %vpm) unnamed_addr #0 {
entry:
  %call = tail call %struct.bio_st* @BIO_new_file(i8* noundef %in, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.156, i64 0, i64 0)) #6
  %cmp = icmp eq %struct.bio_st* %call, null
  br i1 %cmp, label %end.thread, label %if.end

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq i32 %token_in, 0
  br i1 %tobool.not, label %if.else, label %if.then1

if.then1:                                         ; preds = %if.end
  %call2 = tail call %struct.pkcs7_st* @d2i_PKCS7_bio(%struct.bio_st* noundef nonnull %call, %struct.pkcs7_st** noundef null) #6
  %cmp3 = icmp eq %struct.pkcs7_st* %call2, null
  br i1 %cmp3, label %end.thread, label %if.end10.thread

if.else:                                          ; preds = %if.end
  %call6 = tail call %struct.TS_resp_st* @d2i_TS_RESP_bio(%struct.bio_st* noundef nonnull %call, %struct.TS_resp_st** noundef null) #6
  %cmp7 = icmp eq %struct.TS_resp_st* %call6, null
  br i1 %cmp7, label %end.thread, label %if.end10

if.end10:                                         ; preds = %if.else
  %call11 = tail call fastcc %struct.TS_verify_ctx* @create_verify_ctx(i8* noundef %data, i8* noundef %digest, i8* noundef %queryfile, i8* noundef %CApath, i8* noundef %CAfile, i8* noundef %CAstore, i8* noundef %untrusted, %struct.X509_VERIFY_PARAM_st* noundef %vpm) #7
  %cmp12 = icmp eq %struct.TS_verify_ctx* %call11, null
  br i1 %cmp12, label %end.thread, label %cond.false

if.end10.thread:                                  ; preds = %if.then1
  %call1140 = tail call fastcc %struct.TS_verify_ctx* @create_verify_ctx(i8* noundef %data, i8* noundef %digest, i8* noundef %queryfile, i8* noundef %CApath, i8* noundef %CAfile, i8* noundef %CAstore, i8* noundef %untrusted, %struct.X509_VERIFY_PARAM_st* noundef %vpm) #7
  %cmp1241 = icmp eq %struct.TS_verify_ctx* %call1140, null
  br i1 %cmp1241, label %end.thread, label %cond.true

cond.true:                                        ; preds = %if.end10.thread
  %call16 = tail call i32 @TS_RESP_verify_token(%struct.TS_verify_ctx* noundef nonnull %call1140, %struct.pkcs7_st* noundef nonnull %call2) #6
  br label %end

cond.false:                                       ; preds = %if.end10
  %call17 = tail call i32 @TS_RESP_verify_response(%struct.TS_verify_ctx* noundef nonnull %call11, %struct.TS_resp_st* noundef nonnull %call6) #6
  br label %end

end.thread:                                       ; preds = %entry, %if.then1, %if.end10, %if.else, %if.end10.thread
  %token.1.ph = phi %struct.pkcs7_st* [ %call2, %if.end10.thread ], [ null, %if.else ], [ null, %if.end10 ], [ null, %if.then1 ], [ null, %entry ]
  %response.1.ph = phi %struct.TS_resp_st* [ null, %if.end10.thread ], [ null, %if.else ], [ %call6, %if.end10 ], [ null, %if.then1 ], [ null, %entry ]
  %call1855 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.165, i64 0, i64 0)) #6
  br label %if.else22

end:                                              ; preds = %cond.true, %cond.false
  %token.1 = phi %struct.pkcs7_st* [ null, %cond.false ], [ %call2, %cond.true ]
  %response.1 = phi %struct.TS_resp_st* [ %call6, %cond.false ], [ null, %cond.true ]
  %verify_ctx.0 = phi %struct.TS_verify_ctx* [ %call11, %cond.false ], [ %call1140, %cond.true ]
  %ret.0 = phi i32 [ %call17, %cond.false ], [ %call16, %cond.true ]
  %call18 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.165, i64 0, i64 0)) #6
  %tobool19.not = icmp eq i32 %ret.0, 0
  br i1 %tobool19.not, label %if.else22, label %if.then20

if.then20:                                        ; preds = %end
  %call21 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.166, i64 0, i64 0)) #6
  br label %if.end24

if.else22:                                        ; preds = %end.thread, %end
  %verify_ctx.062 = phi %struct.TS_verify_ctx* [ null, %end.thread ], [ %verify_ctx.0, %end ]
  %response.160 = phi %struct.TS_resp_st* [ %response.1.ph, %end.thread ], [ %response.1, %end ]
  %token.158 = phi %struct.pkcs7_st* [ %token.1.ph, %end.thread ], [ %token.1, %end ]
  %call23 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.167, i64 0, i64 0)) #6
  %0 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  tail call void @ERR_print_errors(%struct.bio_st* noundef %0) #6
  br label %if.end24

if.end24:                                         ; preds = %if.else22, %if.then20
  %ret.063 = phi i32 [ 0, %if.else22 ], [ %ret.0, %if.then20 ]
  %verify_ctx.061 = phi %struct.TS_verify_ctx* [ %verify_ctx.062, %if.else22 ], [ %verify_ctx.0, %if.then20 ]
  %response.159 = phi %struct.TS_resp_st* [ %response.160, %if.else22 ], [ %response.1, %if.then20 ]
  %token.157 = phi %struct.pkcs7_st* [ %token.158, %if.else22 ], [ %token.1, %if.then20 ]
  tail call void @BIO_free_all(%struct.bio_st* noundef %call) #6
  tail call void @PKCS7_free(%struct.pkcs7_st* noundef %token.157) #6
  tail call void @TS_RESP_free(%struct.TS_resp_st* noundef %response.159) #6
  tail call void @TS_VERIFY_CTX_free(%struct.TS_verify_ctx* noundef %verify_ctx.061) #6
  ret i32 %ret.063
}

declare dso_local void @X509_VERIFY_PARAM_free(%struct.X509_VERIFY_PARAM_st* noundef) local_unnamed_addr #2

declare dso_local void @EVP_MD_free(%struct.evp_md_st* noundef) local_unnamed_addr #2

declare dso_local void @NCONF_free(%struct.conf_st* noundef) local_unnamed_addr #2

declare dso_local void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

declare dso_local %struct.conf_st* @app_load_config_internal(i8* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i8* @NCONF_get_string(%struct.conf_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local %struct.bio_st* @BIO_new_file(i8* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local void @ERR_print_errors(%struct.bio_st* noundef) local_unnamed_addr #2

declare dso_local i32 @OBJ_create_objects(%struct.bio_st* noundef) local_unnamed_addr #2

declare dso_local void @BIO_free_all(%struct.bio_st* noundef) local_unnamed_addr #2

declare dso_local void @ERR_clear_error() local_unnamed_addr #2

declare dso_local i32 @add_oid_section(%struct.conf_st* noundef) local_unnamed_addr #2

declare dso_local %struct.bio_st* @bio_open_default(i8* noundef, i8 noundef signext, i32 noundef) local_unnamed_addr #2

declare dso_local %struct.TS_req_st* @d2i_TS_REQ_bio(%struct.bio_st* noundef, %struct.TS_req_st** noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.TS_req_st* @create_query(%struct.bio_st* noundef %data_bio, i8* noundef %digest, %struct.evp_md_st* noundef %md, i8* noundef %policy, i32 noundef %no_nonce, i32 noundef %cert) unnamed_addr #0 {
entry:
  %data = alloca i8*, align 8
  %0 = bitcast i8** %data to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #5
  store i8* null, i8** %data, align 8, !tbaa !3
  %cmp = icmp eq %struct.evp_md_st* %md, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %call = tail call %struct.evp_md_st* @EVP_get_digestbyname(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.149, i64 0, i64 0)) #6
  %cmp1 = icmp eq %struct.evp_md_st* %call, null
  br i1 %cmp1, label %if.then72, label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry
  %md.addr.0 = phi %struct.evp_md_st* [ %call, %land.lhs.true ], [ %md, %entry ]
  %call2 = tail call %struct.TS_req_st* @TS_REQ_new() #6
  %cmp3 = icmp eq %struct.TS_req_st* %call2, null
  br i1 %cmp3, label %if.then72, label %if.end5

if.end5:                                          ; preds = %if.end
  %call6 = tail call i32 @TS_REQ_set_version(%struct.TS_req_st* noundef nonnull %call2, i64 noundef 1) #6
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %if.then72, label %if.end8

if.end8:                                          ; preds = %if.end5
  %call9 = tail call %struct.TS_msg_imprint_st* @TS_MSG_IMPRINT_new() #6
  %cmp10 = icmp eq %struct.TS_msg_imprint_st* %call9, null
  br i1 %cmp10, label %if.then72, label %if.end12

if.end12:                                         ; preds = %if.end8
  %call13 = tail call %struct.X509_algor_st* @X509_ALGOR_new() #6
  %cmp14 = icmp eq %struct.X509_algor_st* %call13, null
  br i1 %cmp14, label %if.then72, label %if.end16

if.end16:                                         ; preds = %if.end12
  %call17 = tail call i32 @EVP_MD_get_type(%struct.evp_md_st* noundef nonnull %md.addr.0) #6
  %call18 = tail call %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef %call17) #6
  %algorithm = getelementptr inbounds %struct.X509_algor_st, %struct.X509_algor_st* %call13, i64 0, i32 0
  store %struct.asn1_object_st* %call18, %struct.asn1_object_st** %algorithm, align 8, !tbaa !9
  %cmp19 = icmp eq %struct.asn1_object_st* %call18, null
  br i1 %cmp19, label %if.then72, label %if.end21

if.end21:                                         ; preds = %if.end16
  %call22 = tail call %struct.asn1_type_st* @ASN1_TYPE_new() #6
  %parameter = getelementptr inbounds %struct.X509_algor_st, %struct.X509_algor_st* %call13, i64 0, i32 1
  store %struct.asn1_type_st* %call22, %struct.asn1_type_st** %parameter, align 8, !tbaa !11
  %cmp23 = icmp eq %struct.asn1_type_st* %call22, null
  br i1 %cmp23, label %if.then72, label %if.end25

if.end25:                                         ; preds = %if.end21
  %type = getelementptr inbounds %struct.asn1_type_st, %struct.asn1_type_st* %call22, i64 0, i32 0
  store i32 5, i32* %type, align 8, !tbaa !12
  %call27 = tail call i32 @TS_MSG_IMPRINT_set_algo(%struct.TS_msg_imprint_st* noundef nonnull %call9, %struct.X509_algor_st* noundef nonnull %call13) #6
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.then72, label %if.end30

if.end30:                                         ; preds = %if.end25
  %call31 = call fastcc i32 @create_digest(%struct.bio_st* noundef %data_bio, i8* noundef %digest, %struct.evp_md_st* noundef nonnull %md.addr.0, i8** noundef nonnull %data) #7
  %cmp32 = icmp eq i32 %call31, 0
  %.pre.pre = load i8*, i8** %data, align 8, !tbaa !3
  br i1 %cmp32, label %if.then72, label %if.end34

if.end34:                                         ; preds = %if.end30
  %call35 = tail call i32 @TS_MSG_IMPRINT_set_msg(%struct.TS_msg_imprint_st* noundef nonnull %call9, i8* noundef %.pre.pre, i32 noundef %call31) #6
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.then72, label %if.end38

if.end38:                                         ; preds = %if.end34
  %call39 = tail call i32 @TS_REQ_set_msg_imprint(%struct.TS_req_st* noundef nonnull %call2, %struct.TS_msg_imprint_st* noundef nonnull %call9) #6
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.then72, label %if.end42

if.end42:                                         ; preds = %if.end38
  %tobool43.not = icmp eq i8* %policy, null
  br i1 %tobool43.not, label %if.end54, label %land.lhs.true44

land.lhs.true44:                                  ; preds = %if.end42
  %call45 = tail call fastcc %struct.asn1_object_st* @txt2obj(i8* noundef nonnull %policy) #7
  %cmp46 = icmp eq %struct.asn1_object_st* %call45, null
  br i1 %cmp46, label %if.then72, label %land.lhs.true50

land.lhs.true50:                                  ; preds = %land.lhs.true44
  %call51 = tail call i32 @TS_REQ_set_policy_id(%struct.TS_req_st* noundef nonnull %call2, %struct.asn1_object_st* noundef nonnull %call45) #6
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.then72, label %if.end54

if.end54:                                         ; preds = %if.end42, %land.lhs.true50
  %policy_obj.0104 = phi %struct.asn1_object_st* [ %call45, %land.lhs.true50 ], [ null, %if.end42 ]
  %tobool55.not = icmp eq i32 %no_nonce, 0
  br i1 %tobool55.not, label %land.lhs.true56, label %err

land.lhs.true56:                                  ; preds = %if.end54
  %call57 = tail call fastcc %struct.asn1_string_st* @create_nonce() #7
  %cmp58 = icmp eq %struct.asn1_string_st* %call57, null
  br i1 %cmp58, label %if.then72, label %land.lhs.true62

land.lhs.true62:                                  ; preds = %land.lhs.true56
  %call63 = tail call i32 @TS_REQ_set_nonce(%struct.TS_req_st* noundef nonnull %call2, %struct.asn1_string_st* noundef nonnull %call57) #6
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %if.then72, label %err

err:                                              ; preds = %if.end54, %land.lhs.true62
  %nonce_asn1.0108 = phi %struct.asn1_string_st* [ %call57, %land.lhs.true62 ], [ null, %if.end54 ]
  %call67 = tail call i32 @TS_REQ_set_cert_req(%struct.TS_req_st* noundef nonnull %call2, i32 noundef %cert) #6
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %if.then72, label %if.end74

if.then72:                                        ; preds = %if.end30, %land.lhs.true, %if.end, %if.end5, %if.end8, %if.end12, %if.end16, %if.end21, %if.end25, %if.end34, %if.end38, %land.lhs.true44, %land.lhs.true50, %land.lhs.true56, %land.lhs.true62, %err
  %.pre = phi i8* [ %.pre.pre, %err ], [ null, %land.lhs.true ], [ null, %if.end ], [ null, %if.end5 ], [ null, %if.end8 ], [ null, %if.end12 ], [ null, %if.end16 ], [ null, %if.end21 ], [ null, %if.end25 ], [ %.pre.pre, %if.end34 ], [ %.pre.pre, %if.end38 ], [ %.pre.pre, %land.lhs.true44 ], [ %.pre.pre, %land.lhs.true50 ], [ %.pre.pre, %land.lhs.true56 ], [ %.pre.pre, %land.lhs.true62 ], [ %.pre.pre, %if.end30 ]
  %nonce_asn1.1123 = phi %struct.asn1_string_st* [ %nonce_asn1.0108, %err ], [ null, %land.lhs.true ], [ null, %if.end ], [ null, %if.end5 ], [ null, %if.end8 ], [ null, %if.end12 ], [ null, %if.end16 ], [ null, %if.end21 ], [ null, %if.end25 ], [ null, %if.end34 ], [ null, %if.end38 ], [ null, %land.lhs.true44 ], [ null, %land.lhs.true50 ], [ null, %land.lhs.true56 ], [ %call57, %land.lhs.true62 ], [ null, %if.end30 ]
  %policy_obj.1121 = phi %struct.asn1_object_st* [ %policy_obj.0104, %err ], [ null, %land.lhs.true ], [ null, %if.end ], [ null, %if.end5 ], [ null, %if.end8 ], [ null, %if.end12 ], [ null, %if.end16 ], [ null, %if.end21 ], [ null, %if.end25 ], [ null, %if.end34 ], [ null, %if.end38 ], [ null, %land.lhs.true44 ], [ %call45, %land.lhs.true50 ], [ %policy_obj.0104, %land.lhs.true56 ], [ %policy_obj.0104, %land.lhs.true62 ], [ null, %if.end30 ]
  %algo.0119 = phi %struct.X509_algor_st* [ %call13, %err ], [ null, %land.lhs.true ], [ null, %if.end ], [ null, %if.end5 ], [ null, %if.end8 ], [ null, %if.end12 ], [ %call13, %if.end16 ], [ %call13, %if.end21 ], [ %call13, %if.end25 ], [ %call13, %if.end34 ], [ %call13, %if.end38 ], [ %call13, %land.lhs.true44 ], [ %call13, %land.lhs.true50 ], [ %call13, %land.lhs.true56 ], [ %call13, %land.lhs.true62 ], [ %call13, %if.end30 ]
  %msg_imprint.0117 = phi %struct.TS_msg_imprint_st* [ %call9, %err ], [ null, %land.lhs.true ], [ null, %if.end ], [ null, %if.end5 ], [ null, %if.end8 ], [ %call9, %if.end12 ], [ %call9, %if.end16 ], [ %call9, %if.end21 ], [ %call9, %if.end25 ], [ %call9, %if.end34 ], [ %call9, %if.end38 ], [ %call9, %land.lhs.true44 ], [ %call9, %land.lhs.true50 ], [ %call9, %land.lhs.true56 ], [ %call9, %land.lhs.true62 ], [ %call9, %if.end30 ]
  %ts_req.0115 = phi %struct.TS_req_st* [ %call2, %err ], [ null, %land.lhs.true ], [ null, %if.end ], [ %call2, %if.end5 ], [ %call2, %if.end8 ], [ %call2, %if.end12 ], [ %call2, %if.end16 ], [ %call2, %if.end21 ], [ %call2, %if.end25 ], [ %call2, %if.end34 ], [ %call2, %if.end38 ], [ %call2, %land.lhs.true44 ], [ %call2, %land.lhs.true50 ], [ %call2, %land.lhs.true56 ], [ %call2, %land.lhs.true62 ], [ %call2, %if.end30 ]
  tail call void @TS_REQ_free(%struct.TS_req_st* noundef %ts_req.0115) #6
  %1 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call73 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %1, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.150, i64 0, i64 0)) #6
  %2 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  tail call void @ERR_print_errors(%struct.bio_st* noundef %2) #6
  br label %if.end74

if.end74:                                         ; preds = %if.then72, %err
  %3 = phi i8* [ %.pre.pre, %err ], [ %.pre, %if.then72 ]
  %nonce_asn1.1122 = phi %struct.asn1_string_st* [ %nonce_asn1.0108, %err ], [ %nonce_asn1.1123, %if.then72 ]
  %policy_obj.1120 = phi %struct.asn1_object_st* [ %policy_obj.0104, %err ], [ %policy_obj.1121, %if.then72 ]
  %algo.0118 = phi %struct.X509_algor_st* [ %call13, %err ], [ %algo.0119, %if.then72 ]
  %msg_imprint.0116 = phi %struct.TS_msg_imprint_st* [ %call9, %err ], [ %msg_imprint.0117, %if.then72 ]
  %ts_req.1 = phi %struct.TS_req_st* [ %call2, %err ], [ null, %if.then72 ]
  tail call void @TS_MSG_IMPRINT_free(%struct.TS_msg_imprint_st* noundef %msg_imprint.0116) #6
  tail call void @X509_ALGOR_free(%struct.X509_algor_st* noundef %algo.0118) #6
  tail call void @CRYPTO_free(i8* noundef %3, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.132, i64 0, i64 0), i32 noundef 499) #6
  tail call void @ASN1_OBJECT_free(%struct.asn1_object_st* noundef %policy_obj.1120) #6
  tail call void @ASN1_INTEGER_free(%struct.asn1_string_st* noundef %nonce_asn1.1122) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #5
  ret %struct.TS_req_st* %ts_req.1
}

declare dso_local i32 @TS_REQ_print_bio(%struct.bio_st* noundef, %struct.TS_req_st* noundef) local_unnamed_addr #2

declare dso_local i32 @i2d_TS_REQ_bio(%struct.bio_st* noundef, %struct.TS_req_st* noundef) local_unnamed_addr #2

declare dso_local void @TS_REQ_free(%struct.TS_req_st* noundef) local_unnamed_addr #2

declare dso_local %struct.evp_md_st* @EVP_get_digestbyname(i8* noundef) local_unnamed_addr #2

declare dso_local %struct.TS_req_st* @TS_REQ_new() local_unnamed_addr #2

declare dso_local i32 @TS_REQ_set_version(%struct.TS_req_st* noundef, i64 noundef) local_unnamed_addr #2

declare dso_local %struct.TS_msg_imprint_st* @TS_MSG_IMPRINT_new() local_unnamed_addr #2

declare dso_local %struct.X509_algor_st* @X509_ALGOR_new() local_unnamed_addr #2

declare dso_local %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef) local_unnamed_addr #2

declare dso_local i32 @EVP_MD_get_type(%struct.evp_md_st* noundef) local_unnamed_addr #2

declare dso_local %struct.asn1_type_st* @ASN1_TYPE_new() local_unnamed_addr #2

declare dso_local i32 @TS_MSG_IMPRINT_set_algo(%struct.TS_msg_imprint_st* noundef, %struct.X509_algor_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @create_digest(%struct.bio_st* noundef %input, i8* noundef %digest, %struct.evp_md_st* noundef %md, i8** nocapture noundef %md_value) unnamed_addr #0 {
entry:
  %buffer = alloca [4096 x i8], align 16
  %digest_len = alloca i64, align 8
  %call = tail call i32 @EVP_MD_get_size(%struct.evp_md_st* noundef %md) #6
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %cleanup39, label %if.end

if.end:                                           ; preds = %entry
  %cmp1.not = icmp eq %struct.bio_st* %input, null
  br i1 %cmp1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  %0 = getelementptr inbounds [4096 x i8], [4096 x i8]* %buffer, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 4096, i8* nonnull %0) #5
  %call3 = tail call %struct.evp_md_ctx_st* @EVP_MD_CTX_new() #6
  %cmp4 = icmp eq %struct.evp_md_ctx_st* %call3, null
  br i1 %cmp4, label %cleanup.thread65, label %if.end6

cleanup.thread65:                                 ; preds = %if.then2
  call void @llvm.lifetime.end.p0i8(i64 4096, i8* nonnull %0) #5
  br label %cleanup39

if.end6:                                          ; preds = %if.then2
  %conv69 = zext i32 %call to i64
  %call7 = tail call i8* @app_malloc(i64 noundef %conv69, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.151, i64 0, i64 0)) #6
  store i8* %call7, i8** %md_value, align 8, !tbaa !3
  %call8 = tail call i32 @EVP_DigestInit(%struct.evp_md_ctx_st* noundef nonnull %call3, %struct.evp_md_st* noundef %md) #6
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %cleanup.thread, label %while.cond

while.cond:                                       ; preds = %if.end6, %while.body
  %call11 = call i32 @BIO_read(%struct.bio_st* noundef nonnull %input, i8* noundef nonnull %0, i32 noundef 4096) #6
  %cmp12 = icmp sgt i32 %call11, 0
  br i1 %cmp12, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %conv1570 = zext i32 %call11 to i64
  %call16 = call i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef nonnull %call3, i8* noundef nonnull %0, i64 noundef %conv1570) #6
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %cleanup.thread, label %while.cond, !llvm.loop !15

while.end:                                        ; preds = %while.cond
  %1 = load i8*, i8** %md_value, align 8, !tbaa !3
  %call20 = call i32 @EVP_DigestFinal(%struct.evp_md_ctx_st* noundef nonnull %call3, i8* noundef %1, i32* noundef null) #6
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %cleanup.thread, label %cleanup

cleanup.thread:                                   ; preds = %while.body, %if.end6, %while.end
  call void @llvm.lifetime.end.p0i8(i64 4096, i8* nonnull %0) #5
  br label %err

cleanup:                                          ; preds = %while.end
  %call24 = call i32 @EVP_MD_get_size(%struct.evp_md_st* noundef %md) #6
  call void @llvm.lifetime.end.p0i8(i64 4096, i8* nonnull %0) #5
  br label %err

if.else:                                          ; preds = %if.end
  %2 = bitcast i64* %digest_len to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #5
  %call26 = call i8* @OPENSSL_hexstr2buf(i8* noundef %digest, i64* noundef nonnull %digest_len) #6
  store i8* %call26, i8** %md_value, align 8, !tbaa !3
  %cmp27 = icmp ne i8* %call26, null
  %conv2968 = zext i32 %call to i64
  %3 = load i64, i64* %digest_len, align 8
  %cmp30.not = icmp eq i64 %3, %conv2968
  %or.cond = select i1 %cmp27, i1 %cmp30.not, i1 false
  br i1 %or.cond, label %cleanup35, label %if.then32

if.then32:                                        ; preds = %if.else
  call void @CRYPTO_free(i8* noundef %call26, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.132, i64 0, i64 0), i32 noundef 538) #6
  store i8* null, i8** %md_value, align 8, !tbaa !3
  %4 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call33 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %4, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.152, i64 0, i64 0), i32 noundef %call) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #5
  br label %cleanup39

cleanup35:                                        ; preds = %if.else
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #5
  br label %err

err:                                              ; preds = %cleanup35, %cleanup, %cleanup.thread
  %rv.0 = phi i32 [ 0, %cleanup.thread ], [ %call24, %cleanup ], [ %call, %cleanup35 ]
  %md_ctx.1 = phi %struct.evp_md_ctx_st* [ %call3, %cleanup.thread ], [ %call3, %cleanup ], [ null, %cleanup35 ]
  call void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef %md_ctx.1) #6
  br label %cleanup39

cleanup39:                                        ; preds = %cleanup.thread65, %if.then32, %entry, %err
  %retval.2 = phi i32 [ %rv.0, %err ], [ 0, %entry ], [ 0, %if.then32 ], [ 0, %cleanup.thread65 ]
  ret i32 %retval.2
}

declare dso_local i32 @TS_MSG_IMPRINT_set_msg(%struct.TS_msg_imprint_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i32 @TS_REQ_set_msg_imprint(%struct.TS_req_st* noundef, %struct.TS_msg_imprint_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.asn1_object_st* @txt2obj(i8* noundef %oid) unnamed_addr #0 {
entry:
  %call = tail call %struct.asn1_object_st* @OBJ_txt2obj(i8* noundef %oid, i32 noundef 0) #6
  %cmp = icmp eq %struct.asn1_object_st* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call1 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %0, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.153, i64 0, i64 0), i8* noundef %oid) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret %struct.asn1_object_st* %call
}

declare dso_local i32 @TS_REQ_set_policy_id(%struct.TS_req_st* noundef, %struct.asn1_object_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.asn1_string_st* @create_nonce() unnamed_addr #0 {
entry:
  %buf = alloca [20 x i8], align 16
  %0 = getelementptr inbounds [20 x i8], [20 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %0) #5
  %call = call i32 @RAND_bytes(i8* noundef nonnull %0, i32 noundef 8) #6
  %cmp1 = icmp slt i32 %call, 1
  br i1 %cmp1, label %err, label %land.rhs.preheader

land.rhs.preheader:                               ; preds = %entry
  %1 = load i8, i8* %0, align 16, !tbaa !16
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %for.inc, label %for.end

for.inc:                                          ; preds = %land.rhs.preheader
  %arrayidx.1 = getelementptr inbounds [20 x i8], [20 x i8]* %buf, i64 0, i64 1
  %2 = load i8, i8* %arrayidx.1, align 1, !tbaa !16
  %tobool.not.1 = icmp eq i8 %2, 0
  br i1 %tobool.not.1, label %for.inc.1, label %for.end

for.inc.1:                                        ; preds = %for.inc
  %arrayidx.2 = getelementptr inbounds [20 x i8], [20 x i8]* %buf, i64 0, i64 2
  %3 = load i8, i8* %arrayidx.2, align 2, !tbaa !16
  %tobool.not.2 = icmp eq i8 %3, 0
  br i1 %tobool.not.2, label %for.inc.2, label %for.end

for.inc.2:                                        ; preds = %for.inc.1
  %arrayidx.3 = getelementptr inbounds [20 x i8], [20 x i8]* %buf, i64 0, i64 3
  %4 = load i8, i8* %arrayidx.3, align 1, !tbaa !16
  %tobool.not.3 = icmp eq i8 %4, 0
  br i1 %tobool.not.3, label %for.inc.3, label %for.end

for.inc.3:                                        ; preds = %for.inc.2
  %arrayidx.4 = getelementptr inbounds [20 x i8], [20 x i8]* %buf, i64 0, i64 4
  %5 = load i8, i8* %arrayidx.4, align 4, !tbaa !16
  %tobool.not.4 = icmp eq i8 %5, 0
  br i1 %tobool.not.4, label %for.inc.4, label %for.end

for.inc.4:                                        ; preds = %for.inc.3
  %arrayidx.5 = getelementptr inbounds [20 x i8], [20 x i8]* %buf, i64 0, i64 5
  %6 = load i8, i8* %arrayidx.5, align 1, !tbaa !16
  %tobool.not.5 = icmp eq i8 %6, 0
  br i1 %tobool.not.5, label %for.inc.5, label %for.end

for.inc.5:                                        ; preds = %for.inc.4
  %arrayidx.6 = getelementptr inbounds [20 x i8], [20 x i8]* %buf, i64 0, i64 6
  %7 = load i8, i8* %arrayidx.6, align 2, !tbaa !16
  %tobool.not.6 = icmp eq i8 %7, 0
  br i1 %tobool.not.6, label %for.inc.6, label %for.end

for.inc.6:                                        ; preds = %for.inc.5
  %arrayidx.7 = getelementptr inbounds [20 x i8], [20 x i8]* %buf, i64 0, i64 7
  %8 = load i8, i8* %arrayidx.7, align 1, !tbaa !16
  %tobool.not.7 = icmp eq i8 %8, 0
  %spec.select = select i1 %tobool.not.7, i32 8, i32 7
  br label %for.end

for.end:                                          ; preds = %for.inc.6, %for.inc.5, %for.inc.4, %for.inc.3, %for.inc.2, %for.inc.1, %for.inc, %land.rhs.preheader
  %i.0.lcssa = phi i32 [ 0, %land.rhs.preheader ], [ 1, %for.inc ], [ 2, %for.inc.1 ], [ 3, %for.inc.2 ], [ 4, %for.inc.3 ], [ 5, %for.inc.4 ], [ 6, %for.inc.5 ], [ %spec.select, %for.inc.6 ]
  %call5 = call %struct.asn1_string_st* @ASN1_INTEGER_new() #6
  %cmp6 = icmp eq %struct.asn1_string_st* %call5, null
  br i1 %cmp6, label %err, label %if.end8

if.end8:                                          ; preds = %for.end
  %data = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %call5, i64 0, i32 2
  %9 = load i8*, i8** %data, align 8, !tbaa !17
  call void @CRYPTO_free(i8* noundef %9, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.132, i64 0, i64 0), i32 noundef 568) #6
  %sub9 = sub nuw nsw i32 8, %i.0.lcssa
  %length = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %call5, i64 0, i32 0
  store i32 %sub9, i32* %length, align 8, !tbaa !20
  %add11 = sub nuw nsw i32 9, %i.0.lcssa
  %10 = zext i32 %add11 to i64
  %call12 = call i8* @app_malloc(i64 noundef %10, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.154, i64 0, i64 0)) #6
  store i8* %call12, i8** %data, align 8, !tbaa !17
  %idx.ext = zext i32 %i.0.lcssa to i64
  %add.ptr = getelementptr inbounds [20 x i8], [20 x i8]* %buf, i64 0, i64 %idx.ext
  %11 = load i32, i32* %length, align 8, !tbaa !20
  %conv17 = sext i32 %11 to i64
  %call18 = call i8* @memcpy(i8* noundef %call12, i8* noundef nonnull %add.ptr, i64 noundef %conv17) #6
  br label %cleanup

err:                                              ; preds = %for.end, %entry
  %12 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call19 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %12, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.155, i64 0, i64 0)) #6
  call void @ASN1_INTEGER_free(%struct.asn1_string_st* noundef null) #6
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end8
  %retval.0 = phi %struct.asn1_string_st* [ null, %err ], [ %call5, %if.end8 ]
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %0) #5
  ret %struct.asn1_string_st* %retval.0
}

declare dso_local i32 @TS_REQ_set_nonce(%struct.TS_req_st* noundef, %struct.asn1_string_st* noundef) local_unnamed_addr #2

declare dso_local i32 @TS_REQ_set_cert_req(%struct.TS_req_st* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local void @TS_MSG_IMPRINT_free(%struct.TS_msg_imprint_st* noundef) local_unnamed_addr #2

declare dso_local void @X509_ALGOR_free(%struct.X509_algor_st* noundef) local_unnamed_addr #2

declare dso_local void @ASN1_OBJECT_free(%struct.asn1_object_st* noundef) local_unnamed_addr #2

declare dso_local void @ASN1_INTEGER_free(%struct.asn1_string_st* noundef) local_unnamed_addr #2

declare dso_local i32 @EVP_MD_get_size(%struct.evp_md_st* noundef) local_unnamed_addr #2

declare dso_local %struct.evp_md_ctx_st* @EVP_MD_CTX_new() local_unnamed_addr #2

declare dso_local i8* @app_malloc(i64 noundef, i8* noundef) local_unnamed_addr #2

declare dso_local i32 @EVP_DigestInit(%struct.evp_md_ctx_st* noundef, %struct.evp_md_st* noundef) local_unnamed_addr #2

declare dso_local i32 @BIO_read(%struct.bio_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare dso_local i32 @EVP_DigestFinal(%struct.evp_md_ctx_st* noundef, i8* noundef, i32* noundef) local_unnamed_addr #2

declare dso_local i8* @OPENSSL_hexstr2buf(i8* noundef, i64* noundef) local_unnamed_addr #2

declare dso_local void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef) local_unnamed_addr #2

declare dso_local %struct.asn1_object_st* @OBJ_txt2obj(i8* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i32 @RAND_bytes(i8* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local %struct.asn1_string_st* @ASN1_INTEGER_new() local_unnamed_addr #2

; Function Attrs: nounwind
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.TS_resp_st* @read_PKCS7(%struct.bio_st* noundef %in_bio) unnamed_addr #0 {
entry:
  %call = tail call %struct.pkcs7_st* @d2i_PKCS7_bio(%struct.bio_st* noundef %in_bio, %struct.pkcs7_st** noundef null) #6
  %cmp = icmp eq %struct.pkcs7_st* %call, null
  br i1 %cmp, label %end, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call %struct.TS_tst_info_st* @PKCS7_to_TS_TST_INFO(%struct.pkcs7_st* noundef nonnull %call) #6
  %cmp2 = icmp eq %struct.TS_tst_info_st* %call1, null
  br i1 %cmp2, label %end, label %if.end4

if.end4:                                          ; preds = %if.end
  %call5 = tail call %struct.TS_resp_st* @TS_RESP_new() #6
  %cmp6 = icmp eq %struct.TS_resp_st* %call5, null
  br i1 %cmp6, label %end, label %if.end8

if.end8:                                          ; preds = %if.end4
  %call9 = tail call %struct.TS_status_info_st* @TS_STATUS_INFO_new() #6
  %cmp10 = icmp eq %struct.TS_status_info_st* %call9, null
  br i1 %cmp10, label %end, label %if.end12

if.end12:                                         ; preds = %if.end8
  %call13 = tail call i32 @TS_STATUS_INFO_set_status(%struct.TS_status_info_st* noundef nonnull %call9, i32 noundef 0) #6
  %tobool.not = icmp eq i32 %call13, 0
  br i1 %tobool.not, label %end, label %if.end15

if.end15:                                         ; preds = %if.end12
  %call16 = tail call i32 @TS_RESP_set_status_info(%struct.TS_resp_st* noundef nonnull %call5, %struct.TS_status_info_st* noundef nonnull %call9) #6
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %end, label %if.end19

if.end19:                                         ; preds = %if.end15
  tail call void @TS_RESP_set_tst_info(%struct.TS_resp_st* noundef nonnull %call5, %struct.pkcs7_st* noundef nonnull %call, %struct.TS_tst_info_st* noundef nonnull %call1) #6
  br label %end

end:                                              ; preds = %if.end15, %if.end12, %if.end8, %if.end4, %if.end, %entry, %if.end19
  %tobool20.not = phi i1 [ true, %if.end15 ], [ true, %if.end12 ], [ true, %if.end8 ], [ true, %if.end4 ], [ true, %if.end ], [ true, %entry ], [ false, %if.end19 ]
  %token.0 = phi %struct.pkcs7_st* [ %call, %if.end15 ], [ %call, %if.end12 ], [ %call, %if.end8 ], [ %call, %if.end4 ], [ %call, %if.end ], [ null, %entry ], [ null, %if.end19 ]
  %tst_info.0 = phi %struct.TS_tst_info_st* [ %call1, %if.end15 ], [ %call1, %if.end12 ], [ %call1, %if.end8 ], [ %call1, %if.end4 ], [ null, %if.end ], [ null, %entry ], [ null, %if.end19 ]
  %resp.0 = phi %struct.TS_resp_st* [ %call5, %if.end15 ], [ %call5, %if.end12 ], [ %call5, %if.end8 ], [ null, %if.end4 ], [ null, %if.end ], [ null, %entry ], [ %call5, %if.end19 ]
  %si.0 = phi %struct.TS_status_info_st* [ %call9, %if.end15 ], [ %call9, %if.end12 ], [ null, %if.end8 ], [ null, %if.end4 ], [ null, %if.end ], [ null, %entry ], [ %call9, %if.end19 ]
  tail call void @PKCS7_free(%struct.pkcs7_st* noundef %token.0) #6
  tail call void @TS_TST_INFO_free(%struct.TS_tst_info_st* noundef %tst_info.0) #6
  br i1 %tobool20.not, label %if.then21, label %if.end22

if.then21:                                        ; preds = %end
  tail call void @TS_RESP_free(%struct.TS_resp_st* noundef %resp.0) #6
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %end
  %resp.1 = phi %struct.TS_resp_st* [ %resp.0, %end ], [ null, %if.then21 ]
  tail call void @TS_STATUS_INFO_free(%struct.TS_status_info_st* noundef %si.0) #6
  ret %struct.TS_resp_st* %resp.1
}

declare dso_local %struct.TS_resp_st* @d2i_TS_RESP_bio(%struct.bio_st* noundef, %struct.TS_resp_st** noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.TS_resp_st* @create_response(%struct.conf_st* noundef %conf, i8* noundef %section, i8* noundef %engine, i8* noundef %queryfile, i8* noundef %passin, i8* noundef %inkey, %struct.evp_md_st* noundef %md, i8* noundef %signer, i8* noundef %chain, i8* noundef %policy) unnamed_addr #0 {
entry:
  %call = tail call %struct.bio_st* @BIO_new_file(i8* noundef %queryfile, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.156, i64 0, i64 0)) #6
  %cmp = icmp eq %struct.bio_st* %call, null
  br i1 %cmp, label %if.then80, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call i8* @TS_CONF_get_tsa_section(%struct.conf_st* noundef %conf, i8* noundef %section) #6
  %cmp2 = icmp eq i8* %call1, null
  br i1 %cmp2, label %if.then80, label %if.end4

if.end4:                                          ; preds = %if.end
  %call5 = tail call %struct.TS_resp_ctx* @TS_RESP_CTX_new() #6
  %cmp6 = icmp eq %struct.TS_resp_ctx* %call5, null
  br i1 %cmp6, label %if.then80, label %if.end8

if.end8:                                          ; preds = %if.end4
  %call9 = tail call i32 @TS_CONF_set_serial(%struct.conf_st* noundef %conf, i8* noundef nonnull %call1, %struct.asn1_string_st* (%struct.TS_resp_ctx*, i8*)* noundef nonnull @serial_cb, %struct.TS_resp_ctx* noundef nonnull %call5) #6
  %tobool.not = icmp eq i32 %call9, 0
  br i1 %tobool.not, label %if.then80, label %if.end11

if.end11:                                         ; preds = %if.end8
  %call12 = tail call i32 @TS_CONF_set_crypto_device(%struct.conf_st* noundef %conf, i8* noundef nonnull %call1, i8* noundef %engine) #6
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.then80, label %if.end15

if.end15:                                         ; preds = %if.end11
  %call16 = tail call i32 @TS_CONF_set_signer_cert(%struct.conf_st* noundef %conf, i8* noundef nonnull %call1, i8* noundef %signer, %struct.TS_resp_ctx* noundef nonnull %call5) #6
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.then80, label %if.end19

if.end19:                                         ; preds = %if.end15
  %call20 = tail call i32 @TS_CONF_set_certs(%struct.conf_st* noundef %conf, i8* noundef nonnull %call1, i8* noundef %chain, %struct.TS_resp_ctx* noundef nonnull %call5) #6
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.then80, label %if.end23

if.end23:                                         ; preds = %if.end19
  %call24 = tail call i32 @TS_CONF_set_signer_key(%struct.conf_st* noundef %conf, i8* noundef nonnull %call1, i8* noundef %inkey, i8* noundef %passin, %struct.TS_resp_ctx* noundef nonnull %call5) #6
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.then80, label %if.end27

if.end27:                                         ; preds = %if.end23
  %tobool28.not = icmp eq %struct.evp_md_st* %md, null
  br i1 %tobool28.not, label %if.else, label %if.then29

if.then29:                                        ; preds = %if.end27
  %call30 = tail call i32 @TS_RESP_CTX_set_signer_digest(%struct.TS_resp_ctx* noundef nonnull %call5, %struct.evp_md_st* noundef nonnull %md) #6
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.then80, label %if.end38

if.else:                                          ; preds = %if.end27
  %call34 = tail call i32 @TS_CONF_set_signer_digest(%struct.conf_st* noundef %conf, i8* noundef nonnull %call1, i8* noundef null, %struct.TS_resp_ctx* noundef nonnull %call5) #6
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.then80, label %if.end38

if.end38:                                         ; preds = %if.else, %if.then29
  %call39 = tail call i32 @TS_CONF_set_ess_cert_id_digest(%struct.conf_st* noundef %conf, i8* noundef nonnull %call1, %struct.TS_resp_ctx* noundef nonnull %call5) #6
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.then80, label %if.end42

if.end42:                                         ; preds = %if.end38
  %call43 = tail call i32 @TS_CONF_set_def_policy(%struct.conf_st* noundef %conf, i8* noundef nonnull %call1, i8* noundef %policy, %struct.TS_resp_ctx* noundef nonnull %call5) #6
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.then80, label %if.end46

if.end46:                                         ; preds = %if.end42
  %call47 = tail call i32 @TS_CONF_set_policies(%struct.conf_st* noundef %conf, i8* noundef nonnull %call1, %struct.TS_resp_ctx* noundef nonnull %call5) #6
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.then80, label %if.end50

if.end50:                                         ; preds = %if.end46
  %call51 = tail call i32 @TS_CONF_set_digests(%struct.conf_st* noundef %conf, i8* noundef nonnull %call1, %struct.TS_resp_ctx* noundef nonnull %call5) #6
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.then80, label %if.end54

if.end54:                                         ; preds = %if.end50
  %call55 = tail call i32 @TS_CONF_set_accuracy(%struct.conf_st* noundef %conf, i8* noundef nonnull %call1, %struct.TS_resp_ctx* noundef nonnull %call5) #6
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %if.then80, label %if.end58

if.end58:                                         ; preds = %if.end54
  %call59 = tail call i32 @TS_CONF_set_clock_precision_digits(%struct.conf_st* noundef %conf, i8* noundef nonnull %call1, %struct.TS_resp_ctx* noundef nonnull %call5) #6
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %if.then80, label %if.end62

if.end62:                                         ; preds = %if.end58
  %call63 = tail call i32 @TS_CONF_set_ordering(%struct.conf_st* noundef %conf, i8* noundef nonnull %call1, %struct.TS_resp_ctx* noundef nonnull %call5) #6
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %if.then80, label %if.end66

if.end66:                                         ; preds = %if.end62
  %call67 = tail call i32 @TS_CONF_set_tsa_name(%struct.conf_st* noundef %conf, i8* noundef nonnull %call1, %struct.TS_resp_ctx* noundef nonnull %call5) #6
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %if.then80, label %if.end70

if.end70:                                         ; preds = %if.end66
  %call71 = tail call i32 @TS_CONF_set_ess_cert_id_chain(%struct.conf_st* noundef %conf, i8* noundef nonnull %call1, %struct.TS_resp_ctx* noundef nonnull %call5) #6
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %if.then80, label %end

end:                                              ; preds = %if.end70
  %call75 = tail call %struct.TS_resp_st* @TS_RESP_create_response(%struct.TS_resp_ctx* noundef nonnull %call5, %struct.bio_st* noundef nonnull %call) #6
  %cmp76 = icmp eq %struct.TS_resp_st* %call75, null
  br i1 %cmp76, label %if.then80, label %if.end81

if.then80:                                        ; preds = %entry, %if.end, %if.end4, %if.end8, %if.end11, %if.end15, %if.end19, %if.end23, %if.then29, %if.else, %if.end38, %if.end42, %if.end46, %if.end50, %if.end54, %if.end58, %if.end62, %if.end66, %if.end70, %end
  %resp_ctx.0141 = phi %struct.TS_resp_ctx* [ %call5, %end ], [ null, %entry ], [ null, %if.end ], [ null, %if.end4 ], [ %call5, %if.end8 ], [ %call5, %if.end11 ], [ %call5, %if.end15 ], [ %call5, %if.end19 ], [ %call5, %if.end23 ], [ %call5, %if.then29 ], [ %call5, %if.else ], [ %call5, %if.end38 ], [ %call5, %if.end42 ], [ %call5, %if.end46 ], [ %call5, %if.end50 ], [ %call5, %if.end54 ], [ %call5, %if.end58 ], [ %call5, %if.end62 ], [ %call5, %if.end66 ], [ %call5, %if.end70 ]
  tail call void @TS_RESP_free(%struct.TS_resp_st* noundef null) #6
  br label %if.end81

if.end81:                                         ; preds = %if.then80, %end
  %resp_ctx.0140 = phi %struct.TS_resp_ctx* [ %call5, %end ], [ %resp_ctx.0141, %if.then80 ]
  %response.1 = phi %struct.TS_resp_st* [ %call75, %end ], [ null, %if.then80 ]
  tail call void @TS_RESP_CTX_free(%struct.TS_resp_ctx* noundef %resp_ctx.0140) #6
  tail call void @BIO_free_all(%struct.bio_st* noundef %call) #6
  ret %struct.TS_resp_st* %response.1
}

declare dso_local %struct.TS_tst_info_st* @TS_RESP_get_tst_info(%struct.TS_resp_st* noundef) local_unnamed_addr #2

declare dso_local i32 @TS_TST_INFO_print_bio(%struct.bio_st* noundef, %struct.TS_tst_info_st* noundef) local_unnamed_addr #2

declare dso_local i32 @TS_RESP_print_bio(%struct.bio_st* noundef, %struct.TS_resp_st* noundef) local_unnamed_addr #2

declare dso_local %struct.pkcs7_st* @TS_RESP_get_token(%struct.TS_resp_st* noundef) local_unnamed_addr #2

declare dso_local i32 @i2d_PKCS7_bio(%struct.bio_st* noundef, %struct.pkcs7_st* noundef) local_unnamed_addr #2

declare dso_local i32 @i2d_TS_RESP_bio(%struct.bio_st* noundef, %struct.TS_resp_st* noundef) local_unnamed_addr #2

declare dso_local void @TS_RESP_free(%struct.TS_resp_st* noundef) local_unnamed_addr #2

declare dso_local %struct.pkcs7_st* @d2i_PKCS7_bio(%struct.bio_st* noundef, %struct.pkcs7_st** noundef) local_unnamed_addr #2

declare dso_local %struct.TS_tst_info_st* @PKCS7_to_TS_TST_INFO(%struct.pkcs7_st* noundef) local_unnamed_addr #2

declare dso_local %struct.TS_resp_st* @TS_RESP_new() local_unnamed_addr #2

declare dso_local %struct.TS_status_info_st* @TS_STATUS_INFO_new() local_unnamed_addr #2

declare dso_local i32 @TS_STATUS_INFO_set_status(%struct.TS_status_info_st* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i32 @TS_RESP_set_status_info(%struct.TS_resp_st* noundef, %struct.TS_status_info_st* noundef) local_unnamed_addr #2

declare dso_local void @TS_RESP_set_tst_info(%struct.TS_resp_st* noundef, %struct.pkcs7_st* noundef, %struct.TS_tst_info_st* noundef) local_unnamed_addr #2

declare dso_local void @PKCS7_free(%struct.pkcs7_st* noundef) local_unnamed_addr #2

declare dso_local void @TS_TST_INFO_free(%struct.TS_tst_info_st* noundef) local_unnamed_addr #2

declare dso_local void @TS_STATUS_INFO_free(%struct.TS_status_info_st* noundef) local_unnamed_addr #2

declare dso_local i8* @TS_CONF_get_tsa_section(%struct.conf_st* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local %struct.TS_resp_ctx* @TS_RESP_CTX_new() local_unnamed_addr #2

declare dso_local i32 @TS_CONF_set_serial(%struct.conf_st* noundef, i8* noundef, %struct.asn1_string_st* (%struct.TS_resp_ctx*, i8*)* noundef, %struct.TS_resp_ctx* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal %struct.asn1_string_st* @serial_cb(%struct.TS_resp_ctx* noundef %ctx, i8* noundef %data) #0 {
entry:
  %call = tail call fastcc %struct.asn1_string_st* @next_serial(i8* noundef %data) #7
  %cmp = icmp eq %struct.asn1_string_st* %call, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call1 = tail call i32 @TS_RESP_CTX_set_status_info(%struct.TS_resp_ctx* noundef %ctx, i32 noundef 2, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.159, i64 0, i64 0)) #6
  %call2 = tail call i32 @TS_RESP_CTX_add_failure_info(%struct.TS_resp_ctx* noundef %ctx, i32 noundef 17) #6
  br label %if.end

if.else:                                          ; preds = %entry
  tail call fastcc void @save_ts_serial(i8* noundef %data, %struct.asn1_string_st* noundef nonnull %call) #7
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret %struct.asn1_string_st* %call
}

declare dso_local i32 @TS_CONF_set_crypto_device(%struct.conf_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local i32 @TS_CONF_set_signer_cert(%struct.conf_st* noundef, i8* noundef, i8* noundef, %struct.TS_resp_ctx* noundef) local_unnamed_addr #2

declare dso_local i32 @TS_CONF_set_certs(%struct.conf_st* noundef, i8* noundef, i8* noundef, %struct.TS_resp_ctx* noundef) local_unnamed_addr #2

declare dso_local i32 @TS_CONF_set_signer_key(%struct.conf_st* noundef, i8* noundef, i8* noundef, i8* noundef, %struct.TS_resp_ctx* noundef) local_unnamed_addr #2

declare dso_local i32 @TS_RESP_CTX_set_signer_digest(%struct.TS_resp_ctx* noundef, %struct.evp_md_st* noundef) local_unnamed_addr #2

declare dso_local i32 @TS_CONF_set_signer_digest(%struct.conf_st* noundef, i8* noundef, i8* noundef, %struct.TS_resp_ctx* noundef) local_unnamed_addr #2

declare dso_local i32 @TS_CONF_set_ess_cert_id_digest(%struct.conf_st* noundef, i8* noundef, %struct.TS_resp_ctx* noundef) local_unnamed_addr #2

declare dso_local i32 @TS_CONF_set_def_policy(%struct.conf_st* noundef, i8* noundef, i8* noundef, %struct.TS_resp_ctx* noundef) local_unnamed_addr #2

declare dso_local i32 @TS_CONF_set_policies(%struct.conf_st* noundef, i8* noundef, %struct.TS_resp_ctx* noundef) local_unnamed_addr #2

declare dso_local i32 @TS_CONF_set_digests(%struct.conf_st* noundef, i8* noundef, %struct.TS_resp_ctx* noundef) local_unnamed_addr #2

declare dso_local i32 @TS_CONF_set_accuracy(%struct.conf_st* noundef, i8* noundef, %struct.TS_resp_ctx* noundef) local_unnamed_addr #2

declare dso_local i32 @TS_CONF_set_clock_precision_digits(%struct.conf_st* noundef, i8* noundef, %struct.TS_resp_ctx* noundef) local_unnamed_addr #2

declare dso_local i32 @TS_CONF_set_ordering(%struct.conf_st* noundef, i8* noundef, %struct.TS_resp_ctx* noundef) local_unnamed_addr #2

declare dso_local i32 @TS_CONF_set_tsa_name(%struct.conf_st* noundef, i8* noundef, %struct.TS_resp_ctx* noundef) local_unnamed_addr #2

declare dso_local i32 @TS_CONF_set_ess_cert_id_chain(%struct.conf_st* noundef, i8* noundef, %struct.TS_resp_ctx* noundef) local_unnamed_addr #2

declare dso_local %struct.TS_resp_st* @TS_RESP_create_response(%struct.TS_resp_ctx* noundef, %struct.bio_st* noundef) local_unnamed_addr #2

declare dso_local void @TS_RESP_CTX_free(%struct.TS_resp_ctx* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.asn1_string_st* @next_serial(i8* noundef %serialfile) unnamed_addr #0 {
entry:
  %buf = alloca [1024 x i8], align 16
  %call = tail call %struct.asn1_string_st* @ASN1_INTEGER_new() #6
  %cmp = icmp eq %struct.asn1_string_st* %call, null
  br i1 %cmp, label %if.then27, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call %struct.bio_st* @BIO_new_file(i8* noundef %serialfile, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.148, i64 0, i64 0)) #6
  %cmp2 = icmp eq %struct.bio_st* %call1, null
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  tail call void @ERR_clear_error() #6
  %0 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call4 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %0, i8* noundef getelementptr inbounds ([69 x i8], [69 x i8]* @.str.160, i64 0, i64 0), i8* noundef %serialfile) #6
  %call5 = tail call i32 @ASN1_INTEGER_set(%struct.asn1_string_st* noundef nonnull %call, i64 noundef 1) #6
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.then27, label %if.end28

if.else:                                          ; preds = %if.end
  %1 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %1) #5
  %call8 = call i32 @a2i_ASN1_INTEGER(%struct.bio_st* noundef nonnull %call1, %struct.asn1_string_st* noundef nonnull %call, i8* noundef nonnull %1, i32 noundef 1024) #6
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.else
  %2 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call11 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %2, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.161, i64 0, i64 0), i8* noundef %serialfile) #6
  br label %cleanup.thread

if.end12:                                         ; preds = %if.else
  %call13 = call %struct.bignum_st* @ASN1_INTEGER_to_BN(%struct.asn1_string_st* noundef nonnull %call, %struct.bignum_st* noundef null) #6
  %cmp14 = icmp eq %struct.bignum_st* %call13, null
  br i1 %cmp14, label %cleanup.thread, label %if.end16

if.end16:                                         ; preds = %if.end12
  call void @ASN1_INTEGER_free(%struct.asn1_string_st* noundef nonnull %call) #6
  %call17 = call i32 @BN_add_word(%struct.bignum_st* noundef nonnull %call13, i64 noundef 1) #6
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %cleanup.thread, label %if.end20

if.end20:                                         ; preds = %if.end16
  %call21 = call %struct.asn1_string_st* @BN_to_ASN1_INTEGER(%struct.bignum_st* noundef nonnull %call13, %struct.asn1_string_st* noundef null) #6
  %cmp22 = icmp eq %struct.asn1_string_st* %call21, null
  br i1 %cmp22, label %cleanup.thread, label %cleanup

cleanup.thread:                                   ; preds = %if.then10, %if.end12, %if.end16, %if.end20
  %serial.0.ph = phi %struct.asn1_string_st* [ null, %if.end16 ], [ %call, %if.end12 ], [ %call, %if.then10 ], [ null, %if.end20 ]
  %bn.0.ph = phi %struct.bignum_st* [ %call13, %if.end16 ], [ null, %if.end12 ], [ null, %if.then10 ], [ %call13, %if.end20 ]
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %1) #5
  br label %if.then27

cleanup:                                          ; preds = %if.end20
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %1) #5
  br label %if.end28

if.then27:                                        ; preds = %if.then3, %entry, %cleanup.thread
  %in.0.ph = phi %struct.bio_st* [ %call1, %cleanup.thread ], [ null, %entry ], [ null, %if.then3 ]
  %serial.2.ph = phi %struct.asn1_string_st* [ %serial.0.ph, %cleanup.thread ], [ null, %entry ], [ %call, %if.then3 ]
  %bn.2.ph = phi %struct.bignum_st* [ %bn.0.ph, %cleanup.thread ], [ null, %entry ], [ null, %if.then3 ]
  call void @ASN1_INTEGER_free(%struct.asn1_string_st* noundef %serial.2.ph) #6
  br label %if.end28

if.end28:                                         ; preds = %cleanup, %if.then3, %if.then27
  %bn.259 = phi %struct.bignum_st* [ %bn.2.ph, %if.then27 ], [ null, %if.then3 ], [ %call13, %cleanup ]
  %in.056 = phi %struct.bio_st* [ %in.0.ph, %if.then27 ], [ null, %if.then3 ], [ %call1, %cleanup ]
  %serial.3 = phi %struct.asn1_string_st* [ null, %if.then27 ], [ %call, %if.then3 ], [ %call21, %cleanup ]
  call void @BIO_free_all(%struct.bio_st* noundef %in.056) #6
  call void @BN_free(%struct.bignum_st* noundef %bn.259) #6
  ret %struct.asn1_string_st* %serial.3
}

declare dso_local i32 @TS_RESP_CTX_set_status_info(%struct.TS_resp_ctx* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare dso_local i32 @TS_RESP_CTX_add_failure_info(%struct.TS_resp_ctx* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @save_ts_serial(i8* noundef %serialfile, %struct.asn1_string_st* noundef %serial) unnamed_addr #0 {
entry:
  %call = tail call %struct.bio_st* @BIO_new_file(i8* noundef %serialfile, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.162, i64 0, i64 0)) #6
  %cmp = icmp eq %struct.bio_st* %call, null
  br i1 %cmp, label %if.then9, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @i2a_ASN1_INTEGER(%struct.bio_st* noundef nonnull %call, %struct.asn1_string_st* noundef %serial) #6
  %cmp2 = icmp slt i32 %call1, 1
  br i1 %cmp2, label %if.then9, label %if.end4

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @BIO_puts(%struct.bio_st* noundef nonnull %call, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.163, i64 0, i64 0)) #6
  %cmp6 = icmp slt i32 %call5, 1
  br i1 %cmp6, label %if.then9, label %if.end11

if.then9:                                         ; preds = %entry, %if.end, %if.end4
  %0 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call10 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %0, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.164, i64 0, i64 0), i8* noundef %serialfile) #6
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end4
  tail call void @BIO_free_all(%struct.bio_st* noundef %call) #6
  ret void
}

declare dso_local i32 @ASN1_INTEGER_set(%struct.asn1_string_st* noundef, i64 noundef) local_unnamed_addr #2

declare dso_local i32 @a2i_ASN1_INTEGER(%struct.bio_st* noundef, %struct.asn1_string_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local %struct.bignum_st* @ASN1_INTEGER_to_BN(%struct.asn1_string_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #2

declare dso_local i32 @BN_add_word(%struct.bignum_st* noundef, i64 noundef) local_unnamed_addr #2

declare dso_local %struct.asn1_string_st* @BN_to_ASN1_INTEGER(%struct.bignum_st* noundef, %struct.asn1_string_st* noundef) local_unnamed_addr #2

declare dso_local void @BN_free(%struct.bignum_st* noundef) local_unnamed_addr #2

declare dso_local i32 @i2a_ASN1_INTEGER(%struct.bio_st* noundef, %struct.asn1_string_st* noundef) local_unnamed_addr #2

declare dso_local i32 @BIO_puts(%struct.bio_st* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.TS_verify_ctx* @create_verify_ctx(i8* noundef %data, i8* noundef %digest, i8* noundef %queryfile, i8* noundef %CApath, i8* noundef %CAfile, i8* noundef %CAstore, i8* noundef %untrusted, %struct.X509_VERIFY_PARAM_st* noundef %vpm) unnamed_addr #0 {
entry:
  %imprint_len = alloca i64, align 8
  %cmp = icmp ne i8* %data, null
  %cmp1 = icmp ne i8* %digest, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.else29

if.then:                                          ; preds = %entry
  %call = tail call %struct.TS_verify_ctx* @TS_VERIFY_CTX_new() #6
  %cmp2 = icmp eq %struct.TS_verify_ctx* %call, null
  br i1 %cmp2, label %if.then64, label %if.end

if.end:                                           ; preds = %if.then
  br i1 %cmp, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end
  %call6 = tail call %struct.bio_st* @BIO_new_file(i8* noundef nonnull %data, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.156, i64 0, i64 0)) #6
  %cmp7 = icmp eq %struct.bio_st* %call6, null
  br i1 %cmp7, label %if.then64, label %if.end9

if.end9:                                          ; preds = %if.then5
  %call10 = tail call %struct.bio_st* @TS_VERIFY_CTX_set_data(%struct.TS_verify_ctx* noundef nonnull %call, %struct.bio_st* noundef nonnull %call6) #6
  %cmp11 = icmp eq %struct.bio_st* %call10, null
  br i1 %cmp11, label %if.then12, label %if.end46

if.then12:                                        ; preds = %if.end9
  tail call void @BIO_free_all(%struct.bio_st* noundef nonnull %call6) #6
  br label %if.then64

if.else:                                          ; preds = %if.end
  br i1 %cmp1, label %if.then15, label %if.end46

if.then15:                                        ; preds = %if.else
  %0 = bitcast i64* %imprint_len to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #5
  %call16 = call i8* @OPENSSL_hexstr2buf(i8* noundef nonnull %digest, i64* noundef nonnull %imprint_len) #6
  %1 = load i64, i64* %imprint_len, align 8, !tbaa !21
  %call18 = call i8* @TS_VERIFY_CTX_set_imprint(%struct.TS_verify_ctx* noundef nonnull %call, i8* noundef %call16, i64 noundef %1) #6
  %cmp19 = icmp eq i8* %call18, null
  br i1 %cmp19, label %cleanup23, label %cleanup23.thread

cleanup23.thread:                                 ; preds = %if.then15
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #5
  br label %if.end46

cleanup23:                                        ; preds = %if.then15
  %2 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call21 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %2, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.168, i64 0, i64 0)) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #5
  br label %if.then64

if.else29:                                        ; preds = %entry
  %cmp30.not = icmp eq i8* %queryfile, null
  br i1 %cmp30.not, label %cleanup66, label %if.then31

if.then31:                                        ; preds = %if.else29
  %call32 = tail call %struct.bio_st* @BIO_new_file(i8* noundef nonnull %queryfile, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.156, i64 0, i64 0)) #6
  %cmp33 = icmp eq %struct.bio_st* %call32, null
  br i1 %cmp33, label %if.then64, label %if.end35

if.end35:                                         ; preds = %if.then31
  %call36 = tail call %struct.TS_req_st* @d2i_TS_REQ_bio(%struct.bio_st* noundef nonnull %call32, %struct.TS_req_st** noundef null) #6
  %cmp37 = icmp eq %struct.TS_req_st* %call36, null
  br i1 %cmp37, label %if.then64, label %if.end39

if.end39:                                         ; preds = %if.end35
  %call40 = tail call %struct.TS_verify_ctx* @TS_REQ_to_TS_VERIFY_CTX(%struct.TS_req_st* noundef nonnull %call36, %struct.TS_verify_ctx* noundef null) #6
  %cmp41 = icmp eq %struct.TS_verify_ctx* %call40, null
  br i1 %cmp41, label %if.then64, label %if.end46

if.end46:                                         ; preds = %cleanup23.thread, %if.end9, %if.end39, %if.else
  %ctx.0 = phi %struct.TS_verify_ctx* [ %call, %if.else ], [ %call40, %if.end39 ], [ %call, %if.end9 ], [ %call, %cleanup23.thread ]
  %input.0 = phi %struct.bio_st* [ null, %if.else ], [ %call32, %if.end39 ], [ null, %if.end9 ], [ null, %cleanup23.thread ]
  %request.0 = phi %struct.TS_req_st* [ null, %if.else ], [ %call36, %if.end39 ], [ null, %if.end9 ], [ null, %cleanup23.thread ]
  %f.0 = phi i32 [ 67, %if.else ], [ 1, %if.end39 ], [ 83, %if.end9 ], [ 75, %cleanup23.thread ]
  %call48 = call i32 @TS_VERIFY_CTX_add_flags(%struct.TS_verify_ctx* noundef nonnull %ctx.0, i32 noundef %f.0) #6
  %call49 = call fastcc %struct.x509_store_st* @create_cert_store(i8* noundef %CApath, i8* noundef %CAfile, i8* noundef %CAstore, %struct.X509_VERIFY_PARAM_st* noundef %vpm) #7
  %call50 = call %struct.x509_store_st* @TS_VERIFY_CTX_set_store(%struct.TS_verify_ctx* noundef nonnull %ctx.0, %struct.x509_store_st* noundef %call49) #6
  %cmp51 = icmp eq %struct.x509_store_st* %call50, null
  br i1 %cmp51, label %if.then64, label %if.end53

if.end53:                                         ; preds = %if.end46
  %cmp54.not = icmp eq i8* %untrusted, null
  br i1 %cmp54.not, label %if.end65, label %if.then55

if.then55:                                        ; preds = %if.end53
  %call56 = call %struct.stack_st_X509* @load_certs_multifile(i8* noundef nonnull %untrusted, i8* noundef null, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.169, i64 0, i64 0), %struct.X509_VERIFY_PARAM_st* noundef %vpm) #6
  %cmp57 = icmp eq %struct.stack_st_X509* %call56, null
  br i1 %cmp57, label %if.then64, label %lor.lhs.false58

lor.lhs.false58:                                  ; preds = %if.then55
  %call59 = call %struct.stack_st_X509* @TS_VERIFY_CTX_set_certs(%struct.TS_verify_ctx* noundef nonnull %ctx.0, %struct.stack_st_X509* noundef nonnull %call56) #6
  %cmp60 = icmp eq %struct.stack_st_X509* %call59, null
  br i1 %cmp60, label %if.then64, label %if.end65

if.then64:                                        ; preds = %if.then5, %if.then12, %if.then, %if.end46, %if.then55, %lor.lhs.false58, %cleanup23, %if.then31, %if.end35, %if.end39
  %ctx.1.ph = phi %struct.TS_verify_ctx* [ null, %if.end39 ], [ null, %if.end35 ], [ null, %if.then31 ], [ %call, %cleanup23 ], [ %ctx.0, %lor.lhs.false58 ], [ %ctx.0, %if.then55 ], [ %ctx.0, %if.end46 ], [ null, %if.then ], [ %call, %if.then12 ], [ %call, %if.then5 ]
  %input.1.ph = phi %struct.bio_st* [ %call32, %if.end39 ], [ %call32, %if.end35 ], [ null, %if.then31 ], [ null, %cleanup23 ], [ %input.0, %lor.lhs.false58 ], [ %input.0, %if.then55 ], [ %input.0, %if.end46 ], [ null, %if.then ], [ null, %if.then12 ], [ null, %if.then5 ]
  %request.1.ph = phi %struct.TS_req_st* [ %call36, %if.end39 ], [ null, %if.end35 ], [ null, %if.then31 ], [ null, %cleanup23 ], [ %request.0, %lor.lhs.false58 ], [ %request.0, %if.then55 ], [ %request.0, %if.end46 ], [ null, %if.then ], [ null, %if.then12 ], [ null, %if.then5 ]
  call void @TS_VERIFY_CTX_free(%struct.TS_verify_ctx* noundef %ctx.1.ph) #6
  br label %if.end65

if.end65:                                         ; preds = %lor.lhs.false58, %if.end53, %if.then64
  %request.1114 = phi %struct.TS_req_st* [ %request.1.ph, %if.then64 ], [ %request.0, %if.end53 ], [ %request.0, %lor.lhs.false58 ]
  %input.1112 = phi %struct.bio_st* [ %input.1.ph, %if.then64 ], [ %input.0, %if.end53 ], [ %input.0, %lor.lhs.false58 ]
  %ctx.2 = phi %struct.TS_verify_ctx* [ null, %if.then64 ], [ %ctx.0, %if.end53 ], [ %ctx.0, %lor.lhs.false58 ]
  call void @BIO_free_all(%struct.bio_st* noundef %input.1112) #6
  call void @TS_REQ_free(%struct.TS_req_st* noundef %request.1114) #6
  br label %cleanup66

cleanup66:                                        ; preds = %if.else29, %if.end65
  %retval.0 = phi %struct.TS_verify_ctx* [ %ctx.2, %if.end65 ], [ null, %if.else29 ]
  ret %struct.TS_verify_ctx* %retval.0
}

declare dso_local i32 @TS_RESP_verify_token(%struct.TS_verify_ctx* noundef, %struct.pkcs7_st* noundef) local_unnamed_addr #2

declare dso_local i32 @TS_RESP_verify_response(%struct.TS_verify_ctx* noundef, %struct.TS_resp_st* noundef) local_unnamed_addr #2

declare dso_local i32 @printf(i8* noundef, ...) local_unnamed_addr #2

declare dso_local void @TS_VERIFY_CTX_free(%struct.TS_verify_ctx* noundef) local_unnamed_addr #2

declare dso_local %struct.TS_verify_ctx* @TS_VERIFY_CTX_new() local_unnamed_addr #2

declare dso_local %struct.bio_st* @TS_VERIFY_CTX_set_data(%struct.TS_verify_ctx* noundef, %struct.bio_st* noundef) local_unnamed_addr #2

declare dso_local i8* @TS_VERIFY_CTX_set_imprint(%struct.TS_verify_ctx* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare dso_local %struct.TS_verify_ctx* @TS_REQ_to_TS_VERIFY_CTX(%struct.TS_req_st* noundef, %struct.TS_verify_ctx* noundef) local_unnamed_addr #2

declare dso_local i32 @TS_VERIFY_CTX_add_flags(%struct.TS_verify_ctx* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local %struct.x509_store_st* @TS_VERIFY_CTX_set_store(%struct.TS_verify_ctx* noundef, %struct.x509_store_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.x509_store_st* @create_cert_store(i8* noundef %CApath, i8* noundef %CAfile, i8* noundef %CAstore, %struct.X509_VERIFY_PARAM_st* noundef %vpm) unnamed_addr #0 {
entry:
  %call = tail call %struct.ossl_lib_ctx_st* @app_get0_libctx() #6
  %call1 = tail call i8* @app_get0_propq() #6
  %call2 = tail call %struct.x509_store_st* @X509_STORE_new() #6
  tail call void @X509_STORE_set_verify_cb(%struct.x509_store_st* noundef %call2, i32 (i32, %struct.x509_store_ctx_st*)* noundef nonnull @verify_cb) #6
  %cmp.not = icmp eq i8* %CApath, null
  br i1 %cmp.not, label %if.end12, label %if.then

if.then:                                          ; preds = %entry
  %call3 = tail call %struct.x509_lookup_method_st* @X509_LOOKUP_hash_dir() #6
  %call4 = tail call %struct.x509_lookup_st* @X509_STORE_add_lookup(%struct.x509_store_st* noundef %call2, %struct.x509_lookup_method_st* noundef %call3) #6
  %cmp5 = icmp eq %struct.x509_lookup_st* %call4, null
  br i1 %cmp5, label %if.then6, label %if.end

if.then6:                                         ; preds = %if.then
  %0 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call7 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %0, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.170, i64 0, i64 0)) #6
  br label %err

if.end:                                           ; preds = %if.then
  %call8 = tail call i32 @X509_LOOKUP_ctrl(%struct.x509_lookup_st* noundef nonnull %call4, i32 noundef 2, i8* noundef nonnull %CApath, i64 noundef 1, i8** noundef null) #6
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %if.then9, label %if.end12

if.then9:                                         ; preds = %if.end
  %1 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call10 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %1, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.171, i64 0, i64 0), i8* noundef nonnull %CApath) #6
  br label %err

if.end12:                                         ; preds = %if.end, %entry
  %cmp13.not = icmp eq i8* %CAfile, null
  br i1 %cmp13.not, label %if.end26, label %if.then14

if.then14:                                        ; preds = %if.end12
  %call15 = tail call %struct.x509_lookup_method_st* @X509_LOOKUP_file() #6
  %call16 = tail call %struct.x509_lookup_st* @X509_STORE_add_lookup(%struct.x509_store_st* noundef %call2, %struct.x509_lookup_method_st* noundef %call15) #6
  %cmp17 = icmp eq %struct.x509_lookup_st* %call16, null
  br i1 %cmp17, label %if.then18, label %if.end20

if.then18:                                        ; preds = %if.then14
  %2 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call19 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %2, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.170, i64 0, i64 0)) #6
  br label %err

if.end20:                                         ; preds = %if.then14
  %call21 = tail call i32 @X509_LOOKUP_ctrl_ex(%struct.x509_lookup_st* noundef nonnull %call16, i32 noundef 1, i8* noundef nonnull %CAfile, i64 noundef 1, i8** noundef null, %struct.ossl_lib_ctx_st* noundef %call, i8* noundef %call1) #6
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.then23, label %if.end26

if.then23:                                        ; preds = %if.end20
  %3 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call24 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %3, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.172, i64 0, i64 0), i8* noundef nonnull %CAfile) #6
  br label %err

if.end26:                                         ; preds = %if.end20, %if.end12
  %cmp27.not = icmp eq i8* %CAstore, null
  br i1 %cmp27.not, label %if.end40, label %if.then28

if.then28:                                        ; preds = %if.end26
  %call29 = tail call %struct.x509_lookup_method_st* @X509_LOOKUP_store() #6
  %call30 = tail call %struct.x509_lookup_st* @X509_STORE_add_lookup(%struct.x509_store_st* noundef %call2, %struct.x509_lookup_method_st* noundef %call29) #6
  %cmp31 = icmp eq %struct.x509_lookup_st* %call30, null
  br i1 %cmp31, label %if.then32, label %if.end34

if.then32:                                        ; preds = %if.then28
  %4 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call33 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %4, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.170, i64 0, i64 0)) #6
  br label %err

if.end34:                                         ; preds = %if.then28
  %call35 = tail call i32 @X509_LOOKUP_ctrl_ex(%struct.x509_lookup_st* noundef nonnull %call30, i32 noundef 4, i8* noundef nonnull %CAstore, i64 noundef 0, i8** noundef null, %struct.ossl_lib_ctx_st* noundef %call, i8* noundef %call1) #6
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.then37, label %if.end40

if.then37:                                        ; preds = %if.end34
  %5 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call38 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %5, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.173, i64 0, i64 0), i8* noundef nonnull %CAstore) #6
  br label %err

if.end40:                                         ; preds = %if.end34, %if.end26
  %cmp41.not = icmp eq %struct.X509_VERIFY_PARAM_st* %vpm, null
  br i1 %cmp41.not, label %cleanup, label %if.then42

if.then42:                                        ; preds = %if.end40
  %call43 = tail call i32 @X509_STORE_set1_param(%struct.x509_store_st* noundef %call2, %struct.X509_VERIFY_PARAM_st* noundef nonnull %vpm) #6
  br label %cleanup

err:                                              ; preds = %if.then37, %if.then32, %if.then23, %if.then18, %if.then9, %if.then6
  tail call void @X509_STORE_free(%struct.x509_store_st* noundef %call2) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end40, %if.then42, %err
  %retval.0 = phi %struct.x509_store_st* [ null, %err ], [ %call2, %if.then42 ], [ %call2, %if.end40 ]
  ret %struct.x509_store_st* %retval.0
}

declare dso_local %struct.stack_st_X509* @load_certs_multifile(i8* noundef, i8* noundef, i8* noundef, %struct.X509_VERIFY_PARAM_st* noundef) local_unnamed_addr #2

declare dso_local %struct.stack_st_X509* @TS_VERIFY_CTX_set_certs(%struct.TS_verify_ctx* noundef, %struct.stack_st_X509* noundef) local_unnamed_addr #2

declare dso_local %struct.ossl_lib_ctx_st* @app_get0_libctx() local_unnamed_addr #2

declare dso_local i8* @app_get0_propq() local_unnamed_addr #2

declare dso_local %struct.x509_store_st* @X509_STORE_new() local_unnamed_addr #2

declare dso_local void @X509_STORE_set_verify_cb(%struct.x509_store_st* noundef, i32 (i32, %struct.x509_store_ctx_st*)* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal i32 @verify_cb(i32 noundef returned %ok, %struct.x509_store_ctx_st* nocapture noundef readnone %ctx) #4 {
entry:
  ret i32 %ok
}

declare dso_local %struct.x509_lookup_st* @X509_STORE_add_lookup(%struct.x509_store_st* noundef, %struct.x509_lookup_method_st* noundef) local_unnamed_addr #2

declare dso_local %struct.x509_lookup_method_st* @X509_LOOKUP_hash_dir() local_unnamed_addr #2

declare dso_local i32 @X509_LOOKUP_ctrl(%struct.x509_lookup_st* noundef, i32 noundef, i8* noundef, i64 noundef, i8** noundef) local_unnamed_addr #2

declare dso_local %struct.x509_lookup_method_st* @X509_LOOKUP_file() local_unnamed_addr #2

declare dso_local i32 @X509_LOOKUP_ctrl_ex(%struct.x509_lookup_st* noundef, i32 noundef, i8* noundef, i64 noundef, i8** noundef, %struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local %struct.x509_lookup_method_st* @X509_LOOKUP_store() local_unnamed_addr #2

declare dso_local i32 @X509_STORE_set1_param(%struct.x509_store_st* noundef, %struct.X509_VERIFY_PARAM_st* noundef) local_unnamed_addr #2

declare dso_local void @X509_STORE_free(%struct.x509_store_st* noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { nobuiltin nounwind "no-builtins" }
attributes #7 = { nobuiltin "no-builtins" }

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
!9 = !{!10, !4, i64 0}
!10 = !{!"X509_algor_st", !4, i64 0, !4, i64 8}
!11 = !{!10, !4, i64 8}
!12 = !{!13, !14, i64 0}
!13 = !{!"asn1_type_st", !14, i64 0, !5, i64 8}
!14 = !{!"int", !5, i64 0}
!15 = distinct !{!15, !8}
!16 = !{!5, !5, i64 0}
!17 = !{!18, !4, i64 8}
!18 = !{!"asn1_string_st", !14, i64 0, !14, i64 4, !4, i64 8, !19, i64 16}
!19 = !{!"long", !5, i64 0}
!20 = !{!18, !14, i64 0}
!21 = !{!19, !19, i64 0}
