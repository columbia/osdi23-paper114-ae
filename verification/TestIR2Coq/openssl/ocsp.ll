; ModuleID = 'apps/ocsp.c'
source_filename = "apps/ocsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.options_st = type { i8*, i32, i32, i8* }
%struct.bio_st = type opaque
%struct.evp_md_st = type opaque
%struct.ocsp_request_st = type opaque
%struct.ocsp_response_st = type opaque
%struct.stack_st_CONF_VALUE = type opaque
%struct.stack_st_X509 = type opaque
%struct.stack_st = type opaque
%struct.stack_st_OPENSSL_STRING = type opaque
%struct.stack_st_OCSP_CERTID = type opaque
%struct.X509_VERIFY_PARAM_st = type opaque
%struct.x509_st = type opaque
%struct.evp_pkey_st = type opaque
%struct.engine_st = type opaque
%struct.ca_db_st = type { %struct.db_attr_st, %struct.txt_db_st*, i8*, %struct.stat }
%struct.db_attr_st = type { i32 }
%struct.txt_db_st = type { i32, %struct.stack_st_OPENSSL_PSTRING*, %struct.lhash_st_OPENSSL_STRING**, i32 (i8**)**, i64, i64, i64, i8** }
%struct.stack_st_OPENSSL_PSTRING = type opaque
%struct.lhash_st_OPENSSL_STRING = type { %union.lh_OPENSSL_STRING_dummy }
%union.lh_OPENSSL_STRING_dummy = type { i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.ocsp_basic_response_st = type opaque
%struct.x509_store_st = type opaque
%struct.ocsp_cert_id_st = type opaque
%struct.ocsp_one_request_st = type opaque
%struct.X509_name_st = type opaque
%struct.asn1_string_st = type { i32, i32, i8*, i64 }
%struct.v3_ext_method = type { i32, i32, %struct.ASN1_ITEM_st* ()*, i8* ()*, void (i8*)*, i8* (i8*, i8**, i64)*, i32 (i8*, i8**)*, i8* (%struct.v3_ext_method*, i8*)*, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)*, %struct.stack_st_CONF_VALUE* (%struct.v3_ext_method*, i8*, %struct.stack_st_CONF_VALUE*)*, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, %struct.stack_st_CONF_VALUE*)*, i32 (%struct.v3_ext_method*, i8*, %struct.bio_st*, i32)*, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)*, i8* }
%struct.ASN1_ITEM_st = type opaque
%struct.v3_ext_ctx = type { i32, %struct.x509_st*, %struct.x509_st*, %struct.X509_req_st*, %struct.X509_crl_st*, %struct.X509V3_CONF_METHOD_st*, i8*, %struct.evp_pkey_st* }
%struct.X509_req_st = type opaque
%struct.X509_crl_st = type opaque
%struct.X509V3_CONF_METHOD_st = type { i8* (i8*, i8*, i8*)*, %struct.stack_st_CONF_VALUE* (i8*, i8*)*, void (i8*, i8*)*, void (i8*, %struct.stack_st_CONF_VALUE*)* }
%struct.ASN1_VALUE_st = type opaque
%struct.evp_pkey_ctx_st = type opaque
%struct.asn1_object_st = type opaque
%struct.ocsp_single_response_st = type opaque
%struct.evp_md_ctx_st = type opaque
%struct.ssl_method_st = type opaque
%struct.ssl_ctx_st = type opaque
%struct.CONF_VALUE = type { i8*, i8*, i8* }
%struct.bignum_st = type opaque

@OPT_SECTION_STR = external dso_local constant [0 x i8], align 1
@.str = private unnamed_addr constant [18 x i8] c"General options:\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Display this summary\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"ignore_err\00", align 1
@.str.4 = private unnamed_addr constant [62 x i8] c"Ignore error on OCSP request or response and continue running\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"CAfile\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"Trusted certificates file\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"CApath\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"Trusted certificates directory\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"CAstore\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"Trusted certificates store URI\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"no-CAfile\00", align 1
@.str.12 = private unnamed_addr constant [42 x i8] c"Do not load the default certificates file\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"no-CApath\00", align 1
@.str.14 = private unnamed_addr constant [65 x i8] c"Do not load certificates from the default certificates directory\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"no-CAstore\00", align 1
@.str.16 = private unnamed_addr constant [61 x i8] c"Do not load certificates from the default certificates store\00", align 1
@.str.17 = private unnamed_addr constant [20 x i8] c"Responder options:\0A\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"timeout\00", align 1
@.str.19 = private unnamed_addr constant [54 x i8] c"Connection timeout (in seconds) to the OCSP responder\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"resp_no_certs\00", align 1
@.str.21 = private unnamed_addr constant [43 x i8] c"Don't include any certificates in response\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"multi\00", align 1
@.str.23 = private unnamed_addr constant [33 x i8] c"run multiple responder processes\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"no_certs\00", align 1
@.str.25 = private unnamed_addr constant [49 x i8] c"Don't include any certificates in signed request\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"badsig\00", align 1
@.str.27 = private unnamed_addr constant [63 x i8] c"Corrupt last byte of loaded OSCP response signature (for test)\00", align 1
@.str.28 = private unnamed_addr constant [3 x i8] c"CA\00", align 1
@.str.29 = private unnamed_addr constant [15 x i8] c"CA certificate\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"nmin\00", align 1
@.str.31 = private unnamed_addr constant [37 x i8] c"Number of minutes before next update\00", align 1
@.str.32 = private unnamed_addr constant [9 x i8] c"nrequest\00", align 1
@.str.33 = private unnamed_addr constant [49 x i8] c"Number of requests to accept (default unlimited)\00", align 1
@.str.34 = private unnamed_addr constant [6 x i8] c"reqin\00", align 1
@.str.35 = private unnamed_addr constant [34 x i8] c"File with the DER-encoded request\00", align 1
@.str.36 = private unnamed_addr constant [7 x i8] c"signer\00", align 1
@.str.37 = private unnamed_addr constant [38 x i8] c"Certificate to sign OCSP request with\00", align 1
@.str.38 = private unnamed_addr constant [11 x i8] c"sign_other\00", align 1
@.str.39 = private unnamed_addr constant [53 x i8] c"Additional certificates to include in signed request\00", align 1
@.str.40 = private unnamed_addr constant [6 x i8] c"index\00", align 1
@.str.41 = private unnamed_addr constant [30 x i8] c"Certificate status index file\00", align 1
@.str.42 = private unnamed_addr constant [6 x i8] c"ndays\00", align 1
@.str.43 = private unnamed_addr constant [34 x i8] c"Number of days before next update\00", align 1
@.str.44 = private unnamed_addr constant [8 x i8] c"rsigner\00", align 1
@.str.45 = private unnamed_addr constant [45 x i8] c"Responder certificate to sign responses with\00", align 1
@.str.46 = private unnamed_addr constant [5 x i8] c"rkey\00", align 1
@.str.47 = private unnamed_addr constant [37 x i8] c"Responder key to sign responses with\00", align 1
@.str.48 = private unnamed_addr constant [7 x i8] c"passin\00", align 1
@.str.49 = private unnamed_addr constant [33 x i8] c"Responder key pass phrase source\00", align 1
@.str.50 = private unnamed_addr constant [7 x i8] c"rother\00", align 1
@.str.51 = private unnamed_addr constant [42 x i8] c"Other certificates to include in response\00", align 1
@.str.52 = private unnamed_addr constant [4 x i8] c"rmd\00", align 1
@.str.53 = private unnamed_addr constant [54 x i8] c"Digest Algorithm to use in signature of OCSP response\00", align 1
@.str.54 = private unnamed_addr constant [8 x i8] c"rsigopt\00", align 1
@.str.55 = private unnamed_addr constant [46 x i8] c"OCSP response signature parameter in n:v form\00", align 1
@.str.56 = private unnamed_addr constant [7 x i8] c"header\00", align 1
@.str.57 = private unnamed_addr constant [24 x i8] c"key=value header to add\00", align 1
@.str.58 = private unnamed_addr constant [5 x i8] c"rcid\00", align 1
@.str.59 = private unnamed_addr constant [48 x i8] c"Use specified algorithm for cert id in response\00", align 1
@.str.60 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.61 = private unnamed_addr constant [51 x i8] c"Any supported digest algorithm (sha1,sha256, ... )\00", align 1
@.str.62 = private unnamed_addr constant [17 x i8] c"Client options:\0A\00", align 1
@.str.63 = private unnamed_addr constant [4 x i8] c"url\00", align 1
@.str.64 = private unnamed_addr constant [14 x i8] c"Responder URL\00", align 1
@.str.65 = private unnamed_addr constant [5 x i8] c"host\00", align 1
@.str.66 = private unnamed_addr constant [35 x i8] c"TCP/IP hostname:port to connect to\00", align 1
@.str.67 = private unnamed_addr constant [5 x i8] c"port\00", align 1
@.str.68 = private unnamed_addr constant [25 x i8] c"Port to run responder on\00", align 1
@.str.69 = private unnamed_addr constant [5 x i8] c"path\00", align 1
@.str.70 = private unnamed_addr constant [28 x i8] c"Path to use in OCSP request\00", align 1
@.str.71 = private unnamed_addr constant [6 x i8] c"proxy\00", align 1
@.str.72 = private unnamed_addr constant [72 x i8] c"[http[s]://]host[:port][/path] of HTTP(S) proxy to use; path is ignored\00", align 1
@.str.73 = private unnamed_addr constant [9 x i8] c"no_proxy\00", align 1
@.str.74 = private unnamed_addr constant [58 x i8] c"List of addresses of servers not to use HTTP(S) proxy for\00", align 1
@OPT_MORE_STR = external dso_local constant [0 x i8], align 1
@.str.75 = private unnamed_addr constant [73 x i8] c"Default from environment variable 'no_proxy', else 'NO_PROXY', else none\00", align 1
@.str.76 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@.str.77 = private unnamed_addr constant [16 x i8] c"Output filename\00", align 1
@.str.78 = private unnamed_addr constant [9 x i8] c"noverify\00", align 1
@.str.79 = private unnamed_addr constant [29 x i8] c"Don't verify response at all\00", align 1
@.str.80 = private unnamed_addr constant [6 x i8] c"nonce\00", align 1
@.str.81 = private unnamed_addr constant [26 x i8] c"Add OCSP nonce to request\00", align 1
@.str.82 = private unnamed_addr constant [9 x i8] c"no_nonce\00", align 1
@.str.83 = private unnamed_addr constant [32 x i8] c"Don't add OCSP nonce to request\00", align 1
@.str.84 = private unnamed_addr constant [20 x i8] c"no_signature_verify\00", align 1
@.str.85 = private unnamed_addr constant [34 x i8] c"Don't check signature on response\00", align 1
@.str.86 = private unnamed_addr constant [12 x i8] c"resp_key_id\00", align 1
@.str.87 = private unnamed_addr constant [48 x i8] c"Identify response by signing certificate key ID\00", align 1
@.str.88 = private unnamed_addr constant [15 x i8] c"no_cert_verify\00", align 1
@.str.89 = private unnamed_addr constant [32 x i8] c"Don't check signing certificate\00", align 1
@.str.90 = private unnamed_addr constant [5 x i8] c"text\00", align 1
@.str.91 = private unnamed_addr constant [40 x i8] c"Print text form of request and response\00", align 1
@.str.92 = private unnamed_addr constant [9 x i8] c"req_text\00", align 1
@.str.93 = private unnamed_addr constant [27 x i8] c"Print text form of request\00", align 1
@.str.94 = private unnamed_addr constant [10 x i8] c"resp_text\00", align 1
@.str.95 = private unnamed_addr constant [28 x i8] c"Print text form of response\00", align 1
@.str.96 = private unnamed_addr constant [9 x i8] c"no_chain\00", align 1
@.str.97 = private unnamed_addr constant [28 x i8] c"Don't chain verify response\00", align 1
@.str.98 = private unnamed_addr constant [15 x i8] c"no_cert_checks\00", align 1
@.str.99 = private unnamed_addr constant [50 x i8] c"Don't do additional checks on signing certificate\00", align 1
@.str.100 = private unnamed_addr constant [12 x i8] c"no_explicit\00", align 1
@.str.101 = private unnamed_addr constant [56 x i8] c"Do not explicitly check the chain, just verify the root\00", align 1
@.str.102 = private unnamed_addr constant [12 x i8] c"trust_other\00", align 1
@.str.103 = private unnamed_addr constant [37 x i8] c"Don't verify additional certificates\00", align 1
@.str.104 = private unnamed_addr constant [10 x i8] c"no_intern\00", align 1
@.str.105 = private unnamed_addr constant [59 x i8] c"Don't search certificates contained in response for signer\00", align 1
@.str.106 = private unnamed_addr constant [7 x i8] c"respin\00", align 1
@.str.107 = private unnamed_addr constant [35 x i8] c"File with the DER-encoded response\00", align 1
@.str.108 = private unnamed_addr constant [7 x i8] c"VAfile\00", align 1
@.str.109 = private unnamed_addr constant [28 x i8] c"Validator certificates file\00", align 1
@.str.110 = private unnamed_addr constant [13 x i8] c"verify_other\00", align 1
@.str.111 = private unnamed_addr constant [45 x i8] c"Additional certificates to search for signer\00", align 1
@.str.112 = private unnamed_addr constant [5 x i8] c"cert\00", align 1
@.str.113 = private unnamed_addr constant [21 x i8] c"Certificate to check\00", align 1
@.str.114 = private unnamed_addr constant [7 x i8] c"serial\00", align 1
@.str.115 = private unnamed_addr constant [23 x i8] c"Serial number to check\00", align 1
@.str.116 = private unnamed_addr constant [16 x i8] c"validity_period\00", align 1
@.str.117 = private unnamed_addr constant [40 x i8] c"Maximum validity discrepancy in seconds\00", align 1
@.str.118 = private unnamed_addr constant [8 x i8] c"signkey\00", align 1
@.str.119 = private unnamed_addr constant [38 x i8] c"Private key to sign OCSP request with\00", align 1
@.str.120 = private unnamed_addr constant [7 x i8] c"reqout\00", align 1
@.str.121 = private unnamed_addr constant [40 x i8] c"Output file for the DER-encoded request\00", align 1
@.str.122 = private unnamed_addr constant [8 x i8] c"respout\00", align 1
@.str.123 = private unnamed_addr constant [41 x i8] c"Output file for the DER-encoded response\00", align 1
@.str.124 = private unnamed_addr constant [7 x i8] c"issuer\00", align 1
@.str.125 = private unnamed_addr constant [19 x i8] c"Issuer certificate\00", align 1
@.str.126 = private unnamed_addr constant [11 x i8] c"status_age\00", align 1
@.str.127 = private unnamed_addr constant [30 x i8] c"Maximum status age in seconds\00", align 1
@.str.128 = private unnamed_addr constant [21 x i8] c"Validation options:\0A\00", align 1
@.str.129 = private unnamed_addr constant [7 x i8] c"policy\00", align 1
@.str.130 = private unnamed_addr constant [41 x i8] c"adds policy to the acceptable policy set\00", align 1
@.str.131 = private unnamed_addr constant [8 x i8] c"purpose\00", align 1
@.str.132 = private unnamed_addr constant [26 x i8] c"certificate chain purpose\00", align 1
@.str.133 = private unnamed_addr constant [12 x i8] c"verify_name\00", align 1
@.str.134 = private unnamed_addr constant [25 x i8] c"verification policy name\00", align 1
@.str.135 = private unnamed_addr constant [13 x i8] c"verify_depth\00", align 1
@.str.136 = private unnamed_addr constant [18 x i8] c"chain depth limit\00", align 1
@.str.137 = private unnamed_addr constant [11 x i8] c"auth_level\00", align 1
@.str.138 = private unnamed_addr constant [36 x i8] c"chain authentication security level\00", align 1
@.str.139 = private unnamed_addr constant [7 x i8] c"attime\00", align 1
@.str.140 = private unnamed_addr constant [24 x i8] c"verification epoch time\00", align 1
@.str.141 = private unnamed_addr constant [16 x i8] c"verify_hostname\00", align 1
@.str.142 = private unnamed_addr constant [23 x i8] c"expected peer hostname\00", align 1
@.str.143 = private unnamed_addr constant [13 x i8] c"verify_email\00", align 1
@.str.144 = private unnamed_addr constant [20 x i8] c"expected peer email\00", align 1
@.str.145 = private unnamed_addr constant [10 x i8] c"verify_ip\00", align 1
@.str.146 = private unnamed_addr constant [25 x i8] c"expected peer IP address\00", align 1
@.str.147 = private unnamed_addr constant [16 x i8] c"ignore_critical\00", align 1
@.str.148 = private unnamed_addr constant [37 x i8] c"permit unhandled critical extensions\00", align 1
@.str.149 = private unnamed_addr constant [14 x i8] c"issuer_checks\00", align 1
@.str.150 = private unnamed_addr constant [13 x i8] c"(deprecated)\00", align 1
@.str.151 = private unnamed_addr constant [10 x i8] c"crl_check\00", align 1
@.str.152 = private unnamed_addr constant [34 x i8] c"check leaf certificate revocation\00", align 1
@.str.153 = private unnamed_addr constant [14 x i8] c"crl_check_all\00", align 1
@.str.154 = private unnamed_addr constant [28 x i8] c"check full chain revocation\00", align 1
@.str.155 = private unnamed_addr constant [13 x i8] c"policy_check\00", align 1
@.str.156 = private unnamed_addr constant [30 x i8] c"perform rfc5280 policy checks\00", align 1
@.str.157 = private unnamed_addr constant [16 x i8] c"explicit_policy\00", align 1
@.str.158 = private unnamed_addr constant [44 x i8] c"set policy variable require-explicit-policy\00", align 1
@.str.159 = private unnamed_addr constant [12 x i8] c"inhibit_any\00", align 1
@.str.160 = private unnamed_addr constant [39 x i8] c"set policy variable inhibit-any-policy\00", align 1
@.str.161 = private unnamed_addr constant [12 x i8] c"inhibit_map\00", align 1
@.str.162 = private unnamed_addr constant [43 x i8] c"set policy variable inhibit-policy-mapping\00", align 1
@.str.163 = private unnamed_addr constant [12 x i8] c"x509_strict\00", align 1
@.str.164 = private unnamed_addr constant [47 x i8] c"disable certificate compatibility work-arounds\00", align 1
@.str.165 = private unnamed_addr constant [13 x i8] c"extended_crl\00", align 1
@.str.166 = private unnamed_addr constant [29 x i8] c"enable extended CRL features\00", align 1
@.str.167 = private unnamed_addr constant [11 x i8] c"use_deltas\00", align 1
@.str.168 = private unnamed_addr constant [15 x i8] c"use delta CRLs\00", align 1
@.str.169 = private unnamed_addr constant [13 x i8] c"policy_print\00", align 1
@.str.170 = private unnamed_addr constant [36 x i8] c"print policy processing diagnostics\00", align 1
@.str.171 = private unnamed_addr constant [13 x i8] c"check_ss_sig\00", align 1
@.str.172 = private unnamed_addr constant [30 x i8] c"check root CA self-signatures\00", align 1
@.str.173 = private unnamed_addr constant [14 x i8] c"trusted_first\00", align 1
@.str.174 = private unnamed_addr constant [35 x i8] c"search trust store first (default)\00", align 1
@.str.175 = private unnamed_addr constant [16 x i8] c"suiteB_128_only\00", align 1
@.str.176 = private unnamed_addr constant [26 x i8] c"Suite B 128-bit-only mode\00", align 1
@.str.177 = private unnamed_addr constant [11 x i8] c"suiteB_128\00", align 1
@.str.178 = private unnamed_addr constant [49 x i8] c"Suite B 128-bit mode allowing 192-bit algorithms\00", align 1
@.str.179 = private unnamed_addr constant [11 x i8] c"suiteB_192\00", align 1
@.str.180 = private unnamed_addr constant [26 x i8] c"Suite B 192-bit-only mode\00", align 1
@.str.181 = private unnamed_addr constant [14 x i8] c"partial_chain\00", align 1
@.str.182 = private unnamed_addr constant [55 x i8] c"accept chains anchored by intermediate trust-store CAs\00", align 1
@.str.183 = private unnamed_addr constant [14 x i8] c"no_alt_chains\00", align 1
@.str.184 = private unnamed_addr constant [14 x i8] c"no_check_time\00", align 1
@.str.185 = private unnamed_addr constant [33 x i8] c"ignore certificate validity time\00", align 1
@.str.186 = private unnamed_addr constant [18 x i8] c"allow_proxy_certs\00", align 1
@.str.187 = private unnamed_addr constant [36 x i8] c"allow the use of proxy certificates\00", align 1
@.str.188 = private unnamed_addr constant [19 x i8] c"Provider options:\0A\00", align 1
@.str.189 = private unnamed_addr constant [14 x i8] c"provider-path\00", align 1
@.str.190 = private unnamed_addr constant [68 x i8] c"Provider load path (must be before 'provider' argument if required)\00", align 1
@.str.191 = private unnamed_addr constant [9 x i8] c"provider\00", align 1
@.str.192 = private unnamed_addr constant [51 x i8] c"Provider to load (can be specified multiple times)\00", align 1
@.str.193 = private unnamed_addr constant [10 x i8] c"propquery\00", align 1
@.str.194 = private unnamed_addr constant [45 x i8] c"Property query used when fetching algorithms\00", align 1
@ocsp_options = dso_local constant [102 x %struct.options_st] [%struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), i32 9, i32 45, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.4, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i32 33, i32 60, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), i32 34, i32 60, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), i32 35, i32 58, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i32 0, i32 0), i32 36, i32 45, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.12, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i32 0, i32 0), i32 37, i32 45, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.14, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i32 0, i32 0), i32 38, i32 45, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.16, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i32 0, i32 0), i32 3, i32 112, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.19, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i32 0, i32 0), i32 13, i32 45, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.21, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i32 0, i32 0), i32 2033, i32 112, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.23, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i32 0, i32 0), i32 15, i32 45, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.25, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i32 0, i32 0), i32 23, i32 45, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.27, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i32 0, i32 0), i32 49, i32 60, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.29, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i32 0, i32 0), i32 50, i32 112, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.31, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.32, i32 0, i32 0), i32 51, i32 112, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.33, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.34, i32 0, i32 0), i32 27, i32 115, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.35, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36, i32 0, i32 0), i32 29, i32 60, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.37, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.38, i32 0, i32 0), i32 31, i32 60, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.39, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.40, i32 0, i32 0), i32 48, i32 60, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.41, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.42, i32 0, i32 0), i32 52, i32 112, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.43, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.44, i32 0, i32 0), i32 53, i32 60, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.45, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.46, i32 0, i32 0), i32 54, i32 60, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.47, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.48, i32 0, i32 0), i32 59, i32 115, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.49, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.50, i32 0, i32 0), i32 55, i32 60, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.51, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.52, i32 0, i32 0), i32 56, i32 115, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.53, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.54, i32 0, i32 0), i32 57, i32 115, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.55, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.56, i32 0, i32 0), i32 58, i32 115, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.57, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.58, i32 0, i32 0), i32 60, i32 115, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.59, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.60, i32 0, i32 0), i32 2032, i32 45, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.61, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.62, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.63, i32 0, i32 0), i32 4, i32 115, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.64, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.65, i32 0, i32 0), i32 5, i32 115, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.66, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.67, i32 0, i32 0), i32 6, i32 78, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.68, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.69, i32 0, i32 0), i32 44, i32 115, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.70, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.71, i32 0, i32 0), i32 7, i32 115, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.72, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.73, i32 0, i32 0), i32 8, i32 115, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.74, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_MORE_STR, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.75, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.76, i32 0, i32 0), i32 2, i32 62, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.77, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.78, i32 0, i32 0), i32 10, i32 45, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.79, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.80, i32 0, i32 0), i32 11, i32 45, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.81, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.82, i32 0, i32 0), i32 12, i32 45, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.83, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.84, i32 0, i32 0), i32 16, i32 45, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.85, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.86, i32 0, i32 0), i32 14, i32 45, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.87, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.88, i32 0, i32 0), i32 17, i32 45, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.89, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.90, i32 0, i32 0), i32 24, i32 45, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.91, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.92, i32 0, i32 0), i32 25, i32 45, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.93, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.94, i32 0, i32 0), i32 26, i32 45, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.95, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.96, i32 0, i32 0), i32 18, i32 45, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.97, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.98, i32 0, i32 0), i32 19, i32 45, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.99, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.100, i32 0, i32 0), i32 20, i32 45, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.101, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.102, i32 0, i32 0), i32 21, i32 45, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.103, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.104, i32 0, i32 0), i32 22, i32 45, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.105, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.106, i32 0, i32 0), i32 28, i32 115, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.107, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.108, i32 0, i32 0), i32 30, i32 60, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.109, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.110, i32 0, i32 0), i32 32, i32 60, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.111, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.112, i32 0, i32 0), i32 46, i32 60, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.113, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.114, i32 0, i32 0), i32 47, i32 115, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.115, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.116, i32 0, i32 0), i32 39, i32 117, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.117, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.118, i32 0, i32 0), i32 41, i32 115, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.119, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.120, i32 0, i32 0), i32 42, i32 115, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.121, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.122, i32 0, i32 0), i32 43, i32 115, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.123, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.124, i32 0, i32 0), i32 45, i32 60, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.125, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.126, i32 0, i32 0), i32 40, i32 112, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.127, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.128, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.129, i32 0, i32 0), i32 2001, i32 115, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.130, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.131, i32 0, i32 0), i32 2002, i32 115, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.132, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.133, i32 0, i32 0), i32 2003, i32 115, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.134, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.135, i32 0, i32 0), i32 2004, i32 110, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.136, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.137, i32 0, i32 0), i32 2029, i32 110, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.138, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.139, i32 0, i32 0), i32 2005, i32 77, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.140, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.141, i32 0, i32 0), i32 2006, i32 115, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.142, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.143, i32 0, i32 0), i32 2007, i32 115, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.144, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.145, i32 0, i32 0), i32 2008, i32 115, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.146, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.147, i32 0, i32 0), i32 2009, i32 45, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.148, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.149, i32 0, i32 0), i32 2010, i32 45, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.150, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.151, i32 0, i32 0), i32 2011, i32 45, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.152, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.153, i32 0, i32 0), i32 2012, i32 45, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.154, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.155, i32 0, i32 0), i32 2013, i32 45, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.156, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.157, i32 0, i32 0), i32 2014, i32 45, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.158, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.159, i32 0, i32 0), i32 2015, i32 45, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.160, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.161, i32 0, i32 0), i32 2016, i32 45, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.162, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.163, i32 0, i32 0), i32 2017, i32 45, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.164, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.165, i32 0, i32 0), i32 2018, i32 45, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.166, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.167, i32 0, i32 0), i32 2019, i32 45, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.168, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.169, i32 0, i32 0), i32 2020, i32 45, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.170, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.171, i32 0, i32 0), i32 2021, i32 45, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.172, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.173, i32 0, i32 0), i32 2022, i32 45, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.174, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.175, i32 0, i32 0), i32 2023, i32 45, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.176, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.177, i32 0, i32 0), i32 2024, i32 45, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.178, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.179, i32 0, i32 0), i32 2025, i32 45, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.180, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.181, i32 0, i32 0), i32 2026, i32 45, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.182, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.183, i32 0, i32 0), i32 2027, i32 45, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.150, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.184, i32 0, i32 0), i32 2028, i32 45, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.185, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.186, i32 0, i32 0), i32 2030, i32 45, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.187, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.188, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.189, i32 0, i32 0), i32 1602, i32 115, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.190, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.191, i32 0, i32 0), i32 1601, i32 115, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.192, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.193, i32 0, i32 0), i32 1603, i32 115, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.194, i32 0, i32 0) }, %struct.options_st zeroinitializer], align 16
@.str.195 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@prog = internal unnamed_addr global i8* null, align 8
@bio_err = external dso_local local_unnamed_addr global %struct.bio_st*, align 8
@.str.196 = private unnamed_addr constant [28 x i8] c"%s: Use -help for summary.\0A\00", align 1
@.str.197 = private unnamed_addr constant [12 x i8] c"apps/ocsp.c\00", align 1
@.str.198 = private unnamed_addr constant [32 x i8] c"%s Error parsing -url argument\0A\00", align 1
@.str.199 = private unnamed_addr constant [19 x i8] c"issuer certificate\00", align 1
@.str.200 = private unnamed_addr constant [12 x i8] c"certificate\00", align 1
@.str.201 = private unnamed_addr constant [31 x i8] c"Missing = in header key=value\0A\00", align 1
@.str.202 = private unnamed_addr constant [44 x i8] c"%s: Digest must be before -cert or -serial\0A\00", align 1
@multi = external dso_local local_unnamed_addr global i32, align 4
@.str.203 = private unnamed_addr constant [28 x i8] c"Error reading OCSP request\0A\00", align 1
@.str.204 = private unnamed_addr constant [22 x i8] c"responder certificate\00", align 1
@.str.205 = private unnamed_addr constant [37 x i8] c"Error loading responder certificate\0A\00", align 1
@.str.206 = private unnamed_addr constant [16 x i8] c"CA certificates\00", align 1
@.str.207 = private unnamed_addr constant [29 x i8] c"responder other certificates\00", align 1
@.str.208 = private unnamed_addr constant [24 x i8] c"Error getting password\0A\00", align 1
@.str.209 = private unnamed_addr constant [22 x i8] c"responder private key\00", align 1
@.str.210 = private unnamed_addr constant [51 x i8] c"Responder mode requires certificate, key, and CA.\0A\00", align 1
@.str.211 = private unnamed_addr constant [57 x i8] c"Problem with index file: %s (could not load/parse file)\0A\00", align 1
@.str.212 = private unnamed_addr constant [39 x i8] c"waiting for OCSP client connections...\00", align 1
@.str.213 = private unnamed_addr constant [34 x i8] c"error reloading updated index: %s\00", align 1
@.str.214 = private unnamed_addr constant [42 x i8] c"Need an OCSP request for this operation!\0A\00", align 1
@.str.215 = private unnamed_addr constant [19 x i8] c"signer certificate\00", align 1
@.str.216 = private unnamed_addr constant [34 x i8] c"Error loading signer certificate\0A\00", align 1
@.str.217 = private unnamed_addr constant [20 x i8] c"signer certificates\00", align 1
@.str.218 = private unnamed_addr constant [19 x i8] c"signer private key\00", align 1
@.str.219 = private unnamed_addr constant [28 x i8] c"Error signing OCSP request\0A\00", align 1
@.str.220 = private unnamed_addr constant [29 x i8] c"Error reading OCSP response\0A\00", align 1
@.str.221 = private unnamed_addr constant [26 x i8] c"Responder Error: %s (%d)\0A\00", align 1
@.str.222 = private unnamed_addr constant [23 x i8] c"validator certificates\00", align 1
@.str.223 = private unnamed_addr constant [24 x i8] c"Error parsing response\0A\00", align 1
@.str.224 = private unnamed_addr constant [31 x i8] c"WARNING: no nonce in response\0A\00", align 1
@.str.225 = private unnamed_addr constant [20 x i8] c"Nonce Verify error\0A\00", align 1
@.str.226 = private unnamed_addr constant [25 x i8] c"Response Verify Failure\0A\00", align 1
@.str.227 = private unnamed_addr constant [20 x i8] c"Response verify OK\0A\00", align 1
@.str.228 = private unnamed_addr constant [29 x i8] c"Error creating SSL context.\0A\00", align 1
@.str.229 = private unnamed_addr constant [25 x i8] c"application/ocsp-request\00", align 1
@.str.230 = private unnamed_addr constant [26 x i8] c"application/ocsp-response\00", align 1
@.str.231 = private unnamed_addr constant [31 x i8] c"Error querying OCSP responder\0A\00", align 1
@.str.232 = private unnamed_addr constant [30 x i8] c"index file changed, reloading\00", align 1
@.str.233 = private unnamed_addr constant [33 x i8] c"No issuer certificate specified\0A\00", align 1
@.str.234 = private unnamed_addr constant [29 x i8] c"Error Creating OCSP request\0A\00", align 1
@.str.235 = private unnamed_addr constant [35 x i8] c"Error converting serial number %s\0A\00", align 1
@.str.236 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@.str.237 = private unnamed_addr constant [25 x i8] c"ERROR: No Status found.\0A\00", align 1
@.str.238 = private unnamed_addr constant [32 x i8] c"WARNING: Status times invalid.\0A\00", align 1
@.str.239 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.240 = private unnamed_addr constant [15 x i8] c"\09This Update: \00", align 1
@.str.241 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.242 = private unnamed_addr constant [15 x i8] c"\09Next Update: \00", align 1
@.str.243 = private unnamed_addr constant [13 x i8] c"\09Reason: %s\0A\00", align 1
@.str.244 = private unnamed_addr constant [19 x i8] c"\09Revocation Time: \00", align 1
@.str.245 = private unnamed_addr constant [22 x i8] c"parameter error \22%s\22\0A\00", align 1
@.str.246 = private unnamed_addr constant [21 x i8] c"assertion failed: bn\00", align 1
@.str.247 = private unnamed_addr constant [3 x i8] c"00\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @ocsp_main(i32 noundef %argc, i8** noundef %argv) local_unnamed_addr #0 {
entry:
  %cbio = alloca %struct.bio_st*, align 8
  %cert_id_md = alloca %struct.evp_md_st*, align 8
  %rsign_md = alloca %struct.evp_md_st*, align 8
  %req = alloca %struct.ocsp_request_st*, align 8
  %resp = alloca %struct.ocsp_response_st*, align 8
  %headers = alloca %struct.stack_st_CONF_VALUE*, align 8
  %sign_other = alloca %struct.stack_st_X509*, align 8
  %verify_other = alloca %struct.stack_st_X509*, align 8
  %rother = alloca %struct.stack_st_X509*, align 8
  %rca_cert = alloca %struct.stack_st_X509*, align 8
  %resp_certid_md = alloca %struct.evp_md_st*, align 8
  %host = alloca i8*, align 8
  %port = alloca i8*, align 8
  %path = alloca i8*, align 8
  %passin = alloca i8*, align 8
  %use_ssl = alloca i32, align 4
  %nsec = alloca i64, align 8
  %maxage = alloca i64, align 8
  %0 = bitcast %struct.bio_st** %cbio to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8
  store %struct.bio_st* null, %struct.bio_st** %cbio, align 8, !tbaa !3
  %1 = bitcast %struct.evp_md_st** %cert_id_md to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #8
  store %struct.evp_md_st* null, %struct.evp_md_st** %cert_id_md, align 8, !tbaa !3
  %2 = bitcast %struct.evp_md_st** %rsign_md to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #8
  store %struct.evp_md_st* null, %struct.evp_md_st** %rsign_md, align 8, !tbaa !3
  %3 = bitcast %struct.ocsp_request_st** %req to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #8
  store %struct.ocsp_request_st* null, %struct.ocsp_request_st** %req, align 8, !tbaa !3
  %4 = bitcast %struct.ocsp_response_st** %resp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #8
  store %struct.ocsp_response_st* null, %struct.ocsp_response_st** %resp, align 8, !tbaa !3
  %5 = bitcast %struct.stack_st_CONF_VALUE** %headers to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #8
  store %struct.stack_st_CONF_VALUE* null, %struct.stack_st_CONF_VALUE** %headers, align 8, !tbaa !3
  %6 = bitcast %struct.stack_st_X509** %sign_other to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #8
  store %struct.stack_st_X509* null, %struct.stack_st_X509** %sign_other, align 8, !tbaa !3
  %7 = bitcast %struct.stack_st_X509** %verify_other to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #8
  store %struct.stack_st_X509* null, %struct.stack_st_X509** %verify_other, align 8, !tbaa !3
  %8 = bitcast %struct.stack_st_X509** %rother to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #8
  store %struct.stack_st_X509* null, %struct.stack_st_X509** %rother, align 8, !tbaa !3
  %9 = bitcast %struct.stack_st_X509** %rca_cert to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %9) #8
  store %struct.stack_st_X509* null, %struct.stack_st_X509** %rca_cert, align 8, !tbaa !3
  %10 = bitcast %struct.evp_md_st** %resp_certid_md to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #8
  store %struct.evp_md_st* null, %struct.evp_md_st** %resp_certid_md, align 8, !tbaa !3
  %11 = bitcast i8** %host to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %11) #8
  store i8* null, i8** %host, align 8, !tbaa !3
  %12 = bitcast i8** %port to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %12) #8
  store i8* null, i8** %port, align 8, !tbaa !3
  %13 = bitcast i8** %path to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %13) #8
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.195, i64 0, i64 0), i8** %path, align 8, !tbaa !3
  %14 = bitcast i8** %passin to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %14) #8
  store i8* null, i8** %passin, align 8, !tbaa !3
  %15 = bitcast i32* %use_ssl to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %15) #8
  store i32 -1, i32* %use_ssl, align 4, !tbaa !7
  %16 = bitcast i64* %nsec to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %16) #8
  store i64 300, i64* %nsec, align 8, !tbaa !9
  %17 = bitcast i64* %maxage to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %17) #8
  store i64 -1, i64* %maxage, align 8, !tbaa !9
  %call = tail call %struct.stack_st* @OPENSSL_sk_new_null() #9
  %18 = bitcast %struct.stack_st* %call to %struct.stack_st_OPENSSL_STRING*
  %cmp = icmp eq %struct.stack_st* %call, null
  br i1 %cmp, label %end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call1 = tail call %struct.stack_st* @OPENSSL_sk_new_null() #9
  %19 = bitcast %struct.stack_st* %call1 to %struct.stack_st_OCSP_CERTID*
  %cmp2 = icmp eq %struct.stack_st* %call1, null
  br i1 %cmp2, label %end, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %call4 = tail call %struct.X509_VERIFY_PARAM_st* @X509_VERIFY_PARAM_new() #9
  %cmp5 = icmp eq %struct.X509_VERIFY_PARAM_st* %call4, null
  br i1 %cmp5, label %end, label %if.end

if.end:                                           ; preds = %lor.lhs.false3
  %call6 = tail call i8* @opt_init(i32 noundef %argc, i8** noundef %argv, %struct.options_st* noundef getelementptr inbounds ([102 x %struct.options_st], [102 x %struct.options_st]* @ocsp_options, i64 0, i64 0)) #9
  store i8* %call6, i8** @prog, align 8, !tbaa !3
  %call71136 = call i32 @opt_next() #9
  %cmp8.not1137 = icmp eq i32 %call71136, 0
  br i1 %cmp8.not1137, label %while.end.thread, label %while.body

while.body:                                       ; preds = %if.end, %sw.epilog
  %call71191 = phi i32 [ %call7, %sw.epilog ], [ %call71136, %if.end ]
  %rflags.01190 = phi i64 [ %rflags.1, %sw.epilog ], [ 0, %if.end ]
  %verify_flags.01189 = phi i64 [ %verify_flags.1, %sw.epilog ], [ 0, %if.end ]
  %sign_flags.01188 = phi i64 [ %sign_flags.1, %sw.epilog ], [ 0, %if.end ]
  %req_timeout.01187 = phi i32 [ %req_timeout.1, %sw.epilog ], [ -1, %if.end ]
  %resp_text.01186 = phi i32 [ %resp_text.1, %sw.epilog ], [ 0, %if.end ]
  %req_text.01185 = phi i32 [ %req_text.1, %sw.epilog ], [ 0, %if.end ]
  %ndays.01184 = phi i32 [ %ndays.1, %sw.epilog ], [ -1, %if.end ]
  %nmin.01183 = phi i32 [ %nmin.1, %sw.epilog ], [ 0, %if.end ]
  %ignore_err.01182 = phi i32 [ %ignore_err.1, %sw.epilog ], [ 0, %if.end ]
  %badsig.01181 = phi i32 [ %badsig.1, %sw.epilog ], [ 0, %if.end ]
  %vpmtouched.01180 = phi i32 [ %vpmtouched.1, %sw.epilog ], [ 0, %if.end ]
  %noverify.01179 = phi i32 [ %noverify.1, %sw.epilog ], [ 0, %if.end ]
  %add_nonce.01178 = phi i32 [ %add_nonce.1, %sw.epilog ], [ 1, %if.end ]
  %accept_count.01177 = phi i32 [ %accept_count.1, %sw.epilog ], [ -1, %if.end ]
  %noCAstore.01176 = phi i32 [ %noCAstore.1, %sw.epilog ], [ 0, %if.end ]
  %noCApath.01175 = phi i32 [ %noCApath.1, %sw.epilog ], [ 0, %if.end ]
  %noCAfile.01174 = phi i32 [ %noCAfile.1, %sw.epilog ], [ 0, %if.end ]
  %tpath.01172 = phi i8* [ %tpath.1, %sw.epilog ], [ null, %if.end ]
  %tport.01170 = phi i8* [ %tport.1, %sw.epilog ], [ null, %if.end ]
  %thost.01168 = phi i8* [ %thost.1, %sw.epilog ], [ null, %if.end ]
  %keyfile.01167 = phi i8* [ %keyfile.1, %sw.epilog ], [ null, %if.end ]
  %signfile.01166 = phi i8* [ %signfile.1, %sw.epilog ], [ null, %if.end ]
  %rcertfile.01165 = phi i8* [ %rcertfile.1, %sw.epilog ], [ null, %if.end ]
  %verify_certfile.01164 = phi i8* [ %verify_certfile.1, %sw.epilog ], [ null, %if.end ]
  %sign_certfile.01163 = phi i8* [ %sign_certfile.1, %sw.epilog ], [ null, %if.end ]
  %passinarg.01162 = phi i8* [ %passinarg.1, %sw.epilog ], [ null, %if.end ]
  %rkeyfile.01161 = phi i8* [ %rkeyfile.1, %sw.epilog ], [ null, %if.end ]
  %rsignfile.01160 = phi i8* [ %rsignfile.1, %sw.epilog ], [ null, %if.end ]
  %ridx_filename.01159 = phi i8* [ %ridx_filename.1, %sw.epilog ], [ null, %if.end ]
  %respout.01158 = phi i8* [ %respout.1, %sw.epilog ], [ null, %if.end ]
  %reqout.01157 = phi i8* [ %reqout.1, %sw.epilog ], [ null, %if.end ]
  %respin.01156 = phi i8* [ %respin.1, %sw.epilog ], [ null, %if.end ]
  %reqin.01155 = phi i8* [ %reqin.1, %sw.epilog ], [ null, %if.end ]
  %rca_filename.01154 = phi i8* [ %rca_filename.1, %sw.epilog ], [ null, %if.end ]
  %opt_no_proxy.01153 = phi i8* [ %opt_no_proxy.1, %sw.epilog ], [ null, %if.end ]
  %opt_proxy.01152 = phi i8* [ %opt_proxy.1, %sw.epilog ], [ null, %if.end ]
  %outfile.01151 = phi i8* [ %outfile.1, %sw.epilog ], [ null, %if.end ]
  %respdigname.01150 = phi i8* [ %respdigname.1, %sw.epilog ], [ null, %if.end ]
  %CAstore.01149 = phi i8* [ %CAstore.1, %sw.epilog ], [ null, %if.end ]
  %CApath.01148 = phi i8* [ %CApath.1, %sw.epilog ], [ null, %if.end ]
  %CAfile.01147 = phi i8* [ %CAfile.1, %sw.epilog ], [ null, %if.end ]
  %cert.01144 = phi %struct.x509_st* [ %cert.1, %sw.epilog ], [ null, %if.end ]
  %issuer.01143 = phi %struct.x509_st* [ %issuer.1, %sw.epilog ], [ null, %if.end ]
  %issuers.01141 = phi %struct.stack_st_X509* [ %issuers.2, %sw.epilog ], [ null, %if.end ]
  %trailing_md.01140 = phi i32 [ %trailing_md.1, %sw.epilog ], [ 0, %if.end ]
  %rsign_sigopts.01138 = phi %struct.stack_st_OPENSSL_STRING* [ %rsign_sigopts.2, %sw.epilog ], [ null, %if.end ]
  switch i32 %call71191, label %sw.epilog [
    i32 1601, label %sw.bb225
    i32 -1, label %opthelp
    i32 1, label %sw.bb10
    i32 2, label %sw.bb11
    i32 3, label %sw.bb13
    i32 4, label %sw.bb16
    i32 5, label %sw.bb22
    i32 6, label %sw.bb24
    i32 44, label %sw.bb26
    i32 7, label %sw.bb28
    i32 8, label %sw.bb30
    i32 9, label %sw.bb32
    i32 10, label %sw.bb33
    i32 11, label %sw.bb34
    i32 12, label %sw.bb35
    i32 13, label %sw.bb36
    i32 14, label %sw.bb37
    i32 15, label %sw.bb39
    i32 16, label %sw.bb41
    i32 17, label %sw.bb43
    i32 18, label %sw.bb45
    i32 19, label %sw.bb47
    i32 20, label %sw.bb49
    i32 21, label %sw.bb51
    i32 22, label %sw.bb53
    i32 23, label %sw.bb55
    i32 24, label %sw.bb56
    i32 25, label %sw.bb57
    i32 26, label %sw.bb58
    i32 27, label %sw.bb59
    i32 28, label %sw.bb61
    i32 29, label %sw.bb63
    i32 30, label %sw.bb65
    i32 31, label %sw.bb68
    i32 32, label %sw.bb70
    i32 33, label %sw.bb72
    i32 34, label %sw.bb74
    i32 35, label %sw.bb76
    i32 36, label %sw.bb78
    i32 37, label %sw.bb79
    i32 38, label %sw.bb80
    i32 1603, label %sw.bb225
    i32 1602, label %sw.bb225
    i32 2001, label %sw.bb82
    i32 2002, label %sw.bb82
    i32 2003, label %sw.bb82
    i32 2004, label %sw.bb82
    i32 2029, label %sw.bb82
    i32 2005, label %sw.bb82
    i32 2006, label %sw.bb82
    i32 2007, label %sw.bb82
    i32 2008, label %sw.bb82
    i32 2009, label %sw.bb82
    i32 2010, label %sw.bb82
    i32 2011, label %sw.bb82
    i32 2012, label %sw.bb82
    i32 2013, label %sw.bb82
    i32 2014, label %sw.bb82
    i32 2015, label %sw.bb82
    i32 2016, label %sw.bb82
    i32 2017, label %sw.bb82
    i32 2018, label %sw.bb82
    i32 2019, label %sw.bb82
    i32 2020, label %sw.bb82
    i32 2021, label %sw.bb82
    i32 2022, label %sw.bb82
    i32 2023, label %sw.bb82
    i32 2024, label %sw.bb82
    i32 2025, label %sw.bb82
    i32 2026, label %sw.bb82
    i32 2027, label %sw.bb82
    i32 2028, label %sw.bb82
    i32 2030, label %sw.bb82
    i32 39, label %sw.bb87
    i32 40, label %sw.bb90
    i32 41, label %sw.bb93
    i32 42, label %sw.bb95
    i32 43, label %sw.bb97
    i32 45, label %sw.bb99
    i32 46, label %sw.bb118
    i32 47, label %sw.bb139
    i32 48, label %sw.bb156
    i32 49, label %sw.bb158
    i32 50, label %sw.bb160
    i32 51, label %sw.bb165
    i32 52, label %sw.bb167
    i32 53, label %sw.bb170
    i32 54, label %sw.bb172
    i32 59, label %sw.bb174
    i32 55, label %sw.bb176
    i32 56, label %sw.bb178
    i32 57, label %sw.bb180
    i32 58, label %sw.bb194
    i32 60, label %sw.bb205
    i32 2032, label %sw.bb211
    i32 2033, label %sw.bb221
  ]

opthelp:                                          ; preds = %if.end215, %sw.bb205, %while.body, %while.end.thread, %land.lhs.true249, %while.end, %if.then235, %if.then213, %if.then198
  %rsign_sigopts.01135 = phi %struct.stack_st_OPENSSL_STRING* [ %rsign_sigopts.0.lcssa133814911537, %land.lhs.true249 ], [ %rsign_sigopts.2, %while.end ], [ %rsign_sigopts.2, %if.then235 ], [ %rsign_sigopts.01138, %if.then213 ], [ %rsign_sigopts.01138, %if.then198 ], [ null, %while.end.thread ], [ %rsign_sigopts.01138, %while.body ], [ %rsign_sigopts.01138, %sw.bb205 ], [ %rsign_sigopts.01138, %if.end215 ]
  %issuers.01121 = phi %struct.stack_st_X509* [ %issuers.0.lcssa134314901538, %land.lhs.true249 ], [ %issuers.2, %while.end ], [ %issuers.2, %if.then235 ], [ %issuers.01141, %if.then213 ], [ %issuers.01141, %if.then198 ], [ null, %while.end.thread ], [ %issuers.01141, %while.body ], [ %issuers.01141, %sw.bb205 ], [ %issuers.01141, %if.end215 ]
  %cert.01113 = phi %struct.x509_st* [ %cert.0.lcssa134714891539, %land.lhs.true249 ], [ %cert.1, %while.end ], [ %cert.1, %if.then235 ], [ %cert.01144, %if.then213 ], [ %cert.01144, %if.then198 ], [ null, %while.end.thread ], [ %cert.01144, %while.body ], [ %cert.01144, %sw.bb205 ], [ %cert.01144, %if.end215 ]
  %thost.0978 = phi i8* [ %thost.0.lcssa137314671560, %land.lhs.true249 ], [ %thost.1, %while.end ], [ %thost.1, %if.then235 ], [ %thost.01168, %if.then213 ], [ %thost.01168, %if.then198 ], [ null, %while.end.thread ], [ %thost.01168, %while.body ], [ %thost.01168, %sw.bb205 ], [ %thost.01168, %if.end215 ]
  %tport.0970 = phi i8* [ %tport.0.lcssa137714661561, %land.lhs.true249 ], [ %tport.1, %while.end ], [ %tport.1, %if.then235 ], [ %tport.01170, %if.then213 ], [ %tport.01170, %if.then198 ], [ null, %while.end.thread ], [ %tport.01170, %while.body ], [ %tport.01170, %sw.bb205 ], [ %tport.01170, %if.end215 ]
  %tpath.0962 = phi i8* [ %tpath.0.lcssa138114651562, %land.lhs.true249 ], [ %tpath.1, %while.end ], [ %tpath.1, %if.then235 ], [ %tpath.01172, %if.then213 ], [ %tpath.01172, %if.then198 ], [ null, %while.end.thread ], [ %tpath.01172, %while.body ], [ %tpath.01172, %sw.bb205 ], [ %tpath.01172, %if.end215 ]
  %20 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %21 = load i8*, i8** @prog, align 8, !tbaa !3
  %call9 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %20, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.196, i64 0, i64 0), i8* noundef %21) #9
  br label %end

sw.bb10:                                          ; preds = %while.body
  call void @opt_help(%struct.options_st* noundef getelementptr inbounds ([102 x %struct.options_st], [102 x %struct.options_st]* @ocsp_options, i64 0, i64 0)) #9
  br label %end

sw.bb11:                                          ; preds = %while.body
  %call12 = call i8* @opt_arg() #9
  br label %sw.epilog

sw.bb13:                                          ; preds = %while.body
  %call14 = call i8* @opt_arg() #9
  %call15 = call i32 @atoi(i8* noundef %call14) #10
  br label %sw.epilog

sw.bb16:                                          ; preds = %while.body
  call void @CRYPTO_free(i8* noundef %thost.01168, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.197, i64 0, i64 0), i32 noundef 285) #9
  call void @CRYPTO_free(i8* noundef %tport.01170, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.197, i64 0, i64 0), i32 noundef 286) #9
  call void @CRYPTO_free(i8* noundef %tpath.01172, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.197, i64 0, i64 0), i32 noundef 287) #9
  %call17 = call i8* @opt_arg() #9
  %call18 = call i32 @OSSL_HTTP_parse_url(i8* noundef %call17, i32* noundef nonnull %use_ssl, i8** noundef null, i8** noundef nonnull %host, i8** noundef nonnull %port, i32* noundef null, i8** noundef nonnull %path, i8** noundef null, i8** noundef null) #9
  %tobool.not = icmp eq i32 %call18, 0
  br i1 %tobool.not, label %if.then19, label %if.end21

if.then19:                                        ; preds = %sw.bb16
  %22 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %23 = load i8*, i8** @prog, align 8, !tbaa !3
  %call20 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %22, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.198, i64 0, i64 0), i8* noundef %23) #9
  br label %end

if.end21:                                         ; preds = %sw.bb16
  %24 = load i8*, i8** %host, align 8, !tbaa !3
  %25 = load i8*, i8** %port, align 8, !tbaa !3
  %26 = load i8*, i8** %path, align 8, !tbaa !3
  br label %sw.epilog

sw.bb22:                                          ; preds = %while.body
  %call23 = call i8* @opt_arg() #9
  store i8* %call23, i8** %host, align 8, !tbaa !3
  br label %sw.epilog

sw.bb24:                                          ; preds = %while.body
  %call25 = call i8* @opt_arg() #9
  store i8* %call25, i8** %port, align 8, !tbaa !3
  br label %sw.epilog

sw.bb26:                                          ; preds = %while.body
  %call27 = call i8* @opt_arg() #9
  store i8* %call27, i8** %path, align 8, !tbaa !3
  br label %sw.epilog

sw.bb28:                                          ; preds = %while.body
  %call29 = call i8* @opt_arg() #9
  br label %sw.epilog

sw.bb30:                                          ; preds = %while.body
  %call31 = call i8* @opt_arg() #9
  br label %sw.epilog

sw.bb32:                                          ; preds = %while.body
  br label %sw.epilog

sw.bb33:                                          ; preds = %while.body
  br label %sw.epilog

sw.bb34:                                          ; preds = %while.body
  br label %sw.epilog

sw.bb35:                                          ; preds = %while.body
  br label %sw.epilog

sw.bb36:                                          ; preds = %while.body
  %or = or i64 %rflags.01190, 1
  br label %sw.epilog

sw.bb37:                                          ; preds = %while.body
  %or38 = or i64 %rflags.01190, 1024
  br label %sw.epilog

sw.bb39:                                          ; preds = %while.body
  %or40 = or i64 %sign_flags.01188, 1
  br label %sw.epilog

sw.bb41:                                          ; preds = %while.body
  %or42 = or i64 %verify_flags.01189, 4
  br label %sw.epilog

sw.bb43:                                          ; preds = %while.body
  %or44 = or i64 %verify_flags.01189, 16
  br label %sw.epilog

sw.bb45:                                          ; preds = %while.body
  %or46 = or i64 %verify_flags.01189, 8
  br label %sw.epilog

sw.bb47:                                          ; preds = %while.body
  %or48 = or i64 %verify_flags.01189, 256
  br label %sw.epilog

sw.bb49:                                          ; preds = %while.body
  %or50 = or i64 %verify_flags.01189, 32
  br label %sw.epilog

sw.bb51:                                          ; preds = %while.body
  %or52 = or i64 %verify_flags.01189, 512
  br label %sw.epilog

sw.bb53:                                          ; preds = %while.body
  %or54 = or i64 %verify_flags.01189, 2
  br label %sw.epilog

sw.bb55:                                          ; preds = %while.body
  br label %sw.epilog

sw.bb56:                                          ; preds = %while.body
  br label %sw.epilog

sw.bb57:                                          ; preds = %while.body
  br label %sw.epilog

sw.bb58:                                          ; preds = %while.body
  br label %sw.epilog

sw.bb59:                                          ; preds = %while.body
  %call60 = call i8* @opt_arg() #9
  br label %sw.epilog

sw.bb61:                                          ; preds = %while.body
  %call62 = call i8* @opt_arg() #9
  br label %sw.epilog

sw.bb63:                                          ; preds = %while.body
  %call64 = call i8* @opt_arg() #9
  br label %sw.epilog

sw.bb65:                                          ; preds = %while.body
  %call66 = call i8* @opt_arg() #9
  %or67 = or i64 %verify_flags.01189, 512
  br label %sw.epilog

sw.bb68:                                          ; preds = %while.body
  %call69 = call i8* @opt_arg() #9
  br label %sw.epilog

sw.bb70:                                          ; preds = %while.body
  %call71 = call i8* @opt_arg() #9
  br label %sw.epilog

sw.bb72:                                          ; preds = %while.body
  %call73 = call i8* @opt_arg() #9
  br label %sw.epilog

sw.bb74:                                          ; preds = %while.body
  %call75 = call i8* @opt_arg() #9
  br label %sw.epilog

sw.bb76:                                          ; preds = %while.body
  %call77 = call i8* @opt_arg() #9
  br label %sw.epilog

sw.bb78:                                          ; preds = %while.body
  br label %sw.epilog

sw.bb79:                                          ; preds = %while.body
  br label %sw.epilog

sw.bb80:                                          ; preds = %while.body
  br label %sw.epilog

sw.bb82:                                          ; preds = %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body
  %call83 = call i32 @opt_verify(i32 noundef %call71191, %struct.X509_VERIFY_PARAM_st* noundef %call4) #9
  %tobool84.not = icmp eq i32 %call83, 0
  br i1 %tobool84.not, label %end, label %if.end86

if.end86:                                         ; preds = %sw.bb82
  %inc = add nsw i32 %vpmtouched.01180, 1
  br label %sw.epilog

sw.bb87:                                          ; preds = %while.body
  %call88 = call i8* @opt_arg() #9
  %call89 = call i32 @opt_long(i8* noundef %call88, i64* noundef nonnull %nsec) #9
  br label %sw.epilog

sw.bb90:                                          ; preds = %while.body
  %call91 = call i8* @opt_arg() #9
  %call92 = call i32 @opt_long(i8* noundef %call91, i64* noundef nonnull %maxage) #9
  br label %sw.epilog

sw.bb93:                                          ; preds = %while.body
  %call94 = call i8* @opt_arg() #9
  br label %sw.epilog

sw.bb95:                                          ; preds = %while.body
  %call96 = call i8* @opt_arg() #9
  br label %sw.epilog

sw.bb97:                                          ; preds = %while.body
  %call98 = call i8* @opt_arg() #9
  br label %sw.epilog

sw.bb99:                                          ; preds = %while.body
  %call100 = call i8* @opt_arg() #9
  %call101 = call %struct.x509_st* @load_cert_pass(i8* noundef %call100, i32 noundef 0, i32 noundef 1, i8* noundef null, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.199, i64 0, i64 0)) #9
  %cmp102 = icmp eq %struct.x509_st* %call101, null
  br i1 %cmp102, label %end, label %if.end104

if.end104:                                        ; preds = %sw.bb99
  %cmp105 = icmp eq %struct.stack_st_X509* %issuers.01141, null
  br i1 %cmp105, label %if.then106, label %if.end111

if.then106:                                       ; preds = %if.end104
  %call107 = call %struct.stack_st* @OPENSSL_sk_new_null() #9
  %27 = bitcast %struct.stack_st* %call107 to %struct.stack_st_X509*
  %cmp108 = icmp eq %struct.stack_st* %call107, null
  br i1 %cmp108, label %end, label %if.end111

if.end111:                                        ; preds = %if.then106, %if.end104
  %issuers.1 = phi %struct.stack_st_X509* [ %27, %if.then106 ], [ %issuers.01141, %if.end104 ]
  %call112 = call fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef %issuers.1) #11
  %28 = bitcast %struct.x509_st* %call101 to i8*
  %call114 = call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call112, i8* noundef nonnull %28) #9
  %tobool115.not = icmp eq i32 %call114, 0
  br i1 %tobool115.not, label %end, label %sw.epilog

sw.bb118:                                         ; preds = %while.body
  call void @X509_free(%struct.x509_st* noundef %cert.01144) #9
  %call119 = call i8* @opt_arg() #9
  %call120 = call %struct.x509_st* @load_cert_pass(i8* noundef %call119, i32 noundef 0, i32 noundef 1, i8* noundef null, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.200, i64 0, i64 0)) #9
  %cmp121 = icmp eq %struct.x509_st* %call120, null
  br i1 %cmp121, label %end, label %if.end123

if.end123:                                        ; preds = %sw.bb118
  %29 = load %struct.evp_md_st*, %struct.evp_md_st** %cert_id_md, align 8, !tbaa !3
  %cmp124 = icmp eq %struct.evp_md_st* %29, null
  br i1 %cmp124, label %if.then125, label %if.end127

if.then125:                                       ; preds = %if.end123
  %call126 = call %struct.evp_md_st* @EVP_sha1() #9
  store %struct.evp_md_st* %call126, %struct.evp_md_st** %cert_id_md, align 8, !tbaa !3
  br label %if.end127

if.end127:                                        ; preds = %if.then125, %if.end123
  %30 = phi %struct.evp_md_st* [ %call126, %if.then125 ], [ %29, %if.end123 ]
  %call128 = call fastcc i32 @add_ocsp_cert(%struct.ocsp_request_st** noundef nonnull %req, %struct.x509_st* noundef nonnull %call120, %struct.evp_md_st* noundef %30, %struct.x509_st* noundef %issuer.01143, %struct.stack_st_OCSP_CERTID* noundef nonnull %19) #11
  %tobool129.not = icmp eq i32 %call128, 0
  br i1 %tobool129.not, label %end, label %if.end131

if.end131:                                        ; preds = %if.end127
  %call132 = call fastcc %struct.stack_st* @ossl_check_OPENSSL_STRING_sk_type(%struct.stack_st_OPENSSL_STRING* noundef nonnull %18) #11
  %call133 = call i8* @opt_arg() #9
  %call135 = call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call132, i8* noundef %call133) #9
  %tobool136.not = icmp eq i32 %call135, 0
  br i1 %tobool136.not, label %end, label %sw.epilog

sw.bb139:                                         ; preds = %while.body
  %31 = load %struct.evp_md_st*, %struct.evp_md_st** %cert_id_md, align 8, !tbaa !3
  %cmp140 = icmp eq %struct.evp_md_st* %31, null
  br i1 %cmp140, label %if.then141, label %if.end143

if.then141:                                       ; preds = %sw.bb139
  %call142 = call %struct.evp_md_st* @EVP_sha1() #9
  store %struct.evp_md_st* %call142, %struct.evp_md_st** %cert_id_md, align 8, !tbaa !3
  br label %if.end143

if.end143:                                        ; preds = %if.then141, %sw.bb139
  %call144 = call i8* @opt_arg() #9
  %32 = load %struct.evp_md_st*, %struct.evp_md_st** %cert_id_md, align 8, !tbaa !3
  %call145 = call fastcc i32 @add_ocsp_serial(%struct.ocsp_request_st** noundef nonnull %req, i8* noundef %call144, %struct.evp_md_st* noundef %32, %struct.x509_st* noundef %issuer.01143, %struct.stack_st_OCSP_CERTID* noundef nonnull %19) #11
  %tobool146.not = icmp eq i32 %call145, 0
  br i1 %tobool146.not, label %end, label %if.end148

if.end148:                                        ; preds = %if.end143
  %call149 = call fastcc %struct.stack_st* @ossl_check_OPENSSL_STRING_sk_type(%struct.stack_st_OPENSSL_STRING* noundef nonnull %18) #11
  %call150 = call i8* @opt_arg() #9
  %call152 = call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call149, i8* noundef %call150) #9
  %tobool153.not = icmp eq i32 %call152, 0
  br i1 %tobool153.not, label %end, label %sw.epilog

sw.bb156:                                         ; preds = %while.body
  %call157 = call i8* @opt_arg() #9
  br label %sw.epilog

sw.bb158:                                         ; preds = %while.body
  %call159 = call i8* @opt_arg() #9
  br label %sw.epilog

sw.bb160:                                         ; preds = %while.body
  %call161 = call i32 @opt_int_arg() #9
  %cmp162 = icmp eq i32 %ndays.01184, -1
  %spec.store.select = select i1 %cmp162, i32 0, i32 %ndays.01184
  br label %sw.epilog

sw.bb165:                                         ; preds = %while.body
  %call166 = call i32 @opt_int_arg() #9
  br label %sw.epilog

sw.bb167:                                         ; preds = %while.body
  %call168 = call i8* @opt_arg() #9
  %call169 = call i32 @atoi(i8* noundef %call168) #10
  br label %sw.epilog

sw.bb170:                                         ; preds = %while.body
  %call171 = call i8* @opt_arg() #9
  br label %sw.epilog

sw.bb172:                                         ; preds = %while.body
  %call173 = call i8* @opt_arg() #9
  br label %sw.epilog

sw.bb174:                                         ; preds = %while.body
  %call175 = call i8* @opt_arg() #9
  br label %sw.epilog

sw.bb176:                                         ; preds = %while.body
  %call177 = call i8* @opt_arg() #9
  br label %sw.epilog

sw.bb178:                                         ; preds = %while.body
  %call179 = call i8* @opt_arg() #9
  br label %sw.epilog

sw.bb180:                                         ; preds = %while.body
  %cmp181 = icmp eq %struct.stack_st_OPENSSL_STRING* %rsign_sigopts.01138, null
  br i1 %cmp181, label %if.end184, label %lor.lhs.false186

if.end184:                                        ; preds = %sw.bb180
  %call183 = call %struct.stack_st* @OPENSSL_sk_new_null() #9
  %33 = bitcast %struct.stack_st* %call183 to %struct.stack_st_OPENSSL_STRING*
  %cmp185 = icmp eq %struct.stack_st* %call183, null
  br i1 %cmp185, label %end, label %lor.lhs.false186

lor.lhs.false186:                                 ; preds = %sw.bb180, %if.end184
  %rsign_sigopts.1822 = phi %struct.stack_st_OPENSSL_STRING* [ %33, %if.end184 ], [ %rsign_sigopts.01138, %sw.bb180 ]
  %call187 = call fastcc %struct.stack_st* @ossl_check_OPENSSL_STRING_sk_type(%struct.stack_st_OPENSSL_STRING* noundef nonnull %rsign_sigopts.1822) #11
  %call188 = call i8* @opt_arg() #9
  %call190 = call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call187, i8* noundef %call188) #9
  %tobool191.not = icmp eq i32 %call190, 0
  br i1 %tobool191.not, label %end, label %sw.epilog

sw.bb194:                                         ; preds = %while.body
  %call195 = call i8* @opt_arg() #9
  %call196 = call i8* @strchr(i8* noundef %call195, i32 noundef 61) #10
  %cmp197 = icmp eq i8* %call196, null
  br i1 %cmp197, label %if.then198, label %if.end200

if.then198:                                       ; preds = %sw.bb194
  %34 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call199 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %34, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.201, i64 0, i64 0)) #9
  br label %opthelp

if.end200:                                        ; preds = %sw.bb194
  %incdec.ptr = getelementptr inbounds i8, i8* %call196, i64 1
  store i8 0, i8* %call196, align 1, !tbaa !11
  %call201 = call i32 @X509V3_add_value(i8* noundef %call195, i8* noundef nonnull %incdec.ptr, %struct.stack_st_CONF_VALUE** noundef nonnull %headers) #9
  %tobool202.not = icmp eq i32 %call201, 0
  br i1 %tobool202.not, label %end, label %sw.epilog

sw.bb205:                                         ; preds = %while.body
  %call206 = call i8* @opt_arg() #9
  %call207 = call i32 @opt_md(i8* noundef %call206, %struct.evp_md_st** noundef nonnull %resp_certid_md) #9
  %tobool208.not = icmp eq i32 %call207, 0
  br i1 %tobool208.not, label %opthelp, label %sw.epilog

sw.bb211:                                         ; preds = %while.body
  %tobool212.not = icmp eq i32 %trailing_md.01140, 0
  br i1 %tobool212.not, label %if.end215, label %if.then213

if.then213:                                       ; preds = %sw.bb211
  %35 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %36 = load i8*, i8** @prog, align 8, !tbaa !3
  %call214 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %35, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.202, i64 0, i64 0), i8* noundef %36) #9
  br label %opthelp

if.end215:                                        ; preds = %sw.bb211
  %call216 = call i8* @opt_unknown() #9
  %call217 = call i32 @opt_md(i8* noundef %call216, %struct.evp_md_st** noundef nonnull %cert_id_md) #9
  %tobool218.not = icmp eq i32 %call217, 0
  br i1 %tobool218.not, label %opthelp, label %sw.epilog

sw.bb221:                                         ; preds = %while.body
  %call222 = call i8* @opt_arg() #9
  %call223 = call i32 @atoi(i8* noundef %call222) #10
  store i32 %call223, i32* @multi, align 4, !tbaa !7
  br label %sw.epilog

sw.bb225:                                         ; preds = %while.body, %while.body, %while.body
  %call226 = call i32 @opt_provider(i32 noundef %call71191) #9
  %tobool227.not = icmp eq i32 %call226, 0
  br i1 %tobool227.not, label %end, label %sw.epilog

sw.epilog:                                        ; preds = %if.end215, %if.end148, %if.end131, %sw.bb225, %sw.bb205, %if.end200, %lor.lhs.false186, %if.end111, %while.body, %sw.bb221, %sw.bb178, %sw.bb176, %sw.bb174, %sw.bb172, %sw.bb170, %sw.bb167, %sw.bb165, %sw.bb160, %sw.bb158, %sw.bb156, %sw.bb97, %sw.bb95, %sw.bb93, %sw.bb90, %sw.bb87, %if.end86, %sw.bb80, %sw.bb79, %sw.bb78, %sw.bb76, %sw.bb74, %sw.bb72, %sw.bb70, %sw.bb68, %sw.bb65, %sw.bb63, %sw.bb61, %sw.bb59, %sw.bb58, %sw.bb57, %sw.bb56, %sw.bb55, %sw.bb53, %sw.bb51, %sw.bb49, %sw.bb47, %sw.bb45, %sw.bb43, %sw.bb41, %sw.bb39, %sw.bb37, %sw.bb36, %sw.bb35, %sw.bb34, %sw.bb33, %sw.bb32, %sw.bb30, %sw.bb28, %sw.bb26, %sw.bb24, %sw.bb22, %if.end21, %sw.bb13, %sw.bb11
  %rsign_sigopts.2 = phi %struct.stack_st_OPENSSL_STRING* [ %rsign_sigopts.01138, %while.body ], [ %rsign_sigopts.01138, %sw.bb221 ], [ %rsign_sigopts.01138, %sw.bb205 ], [ %rsign_sigopts.01138, %if.end200 ], [ %rsign_sigopts.1822, %lor.lhs.false186 ], [ %rsign_sigopts.01138, %sw.bb178 ], [ %rsign_sigopts.01138, %sw.bb176 ], [ %rsign_sigopts.01138, %sw.bb174 ], [ %rsign_sigopts.01138, %sw.bb172 ], [ %rsign_sigopts.01138, %sw.bb170 ], [ %rsign_sigopts.01138, %sw.bb167 ], [ %rsign_sigopts.01138, %sw.bb165 ], [ %rsign_sigopts.01138, %sw.bb160 ], [ %rsign_sigopts.01138, %sw.bb158 ], [ %rsign_sigopts.01138, %sw.bb156 ], [ %rsign_sigopts.01138, %if.end111 ], [ %rsign_sigopts.01138, %sw.bb97 ], [ %rsign_sigopts.01138, %sw.bb95 ], [ %rsign_sigopts.01138, %sw.bb93 ], [ %rsign_sigopts.01138, %sw.bb90 ], [ %rsign_sigopts.01138, %sw.bb87 ], [ %rsign_sigopts.01138, %if.end86 ], [ %rsign_sigopts.01138, %sw.bb225 ], [ %rsign_sigopts.01138, %sw.bb80 ], [ %rsign_sigopts.01138, %sw.bb79 ], [ %rsign_sigopts.01138, %sw.bb78 ], [ %rsign_sigopts.01138, %sw.bb76 ], [ %rsign_sigopts.01138, %sw.bb74 ], [ %rsign_sigopts.01138, %sw.bb72 ], [ %rsign_sigopts.01138, %sw.bb70 ], [ %rsign_sigopts.01138, %sw.bb68 ], [ %rsign_sigopts.01138, %sw.bb65 ], [ %rsign_sigopts.01138, %sw.bb63 ], [ %rsign_sigopts.01138, %sw.bb61 ], [ %rsign_sigopts.01138, %sw.bb59 ], [ %rsign_sigopts.01138, %sw.bb58 ], [ %rsign_sigopts.01138, %sw.bb57 ], [ %rsign_sigopts.01138, %sw.bb56 ], [ %rsign_sigopts.01138, %sw.bb55 ], [ %rsign_sigopts.01138, %sw.bb53 ], [ %rsign_sigopts.01138, %sw.bb51 ], [ %rsign_sigopts.01138, %sw.bb49 ], [ %rsign_sigopts.01138, %sw.bb47 ], [ %rsign_sigopts.01138, %sw.bb45 ], [ %rsign_sigopts.01138, %sw.bb43 ], [ %rsign_sigopts.01138, %sw.bb41 ], [ %rsign_sigopts.01138, %sw.bb39 ], [ %rsign_sigopts.01138, %sw.bb37 ], [ %rsign_sigopts.01138, %sw.bb36 ], [ %rsign_sigopts.01138, %sw.bb35 ], [ %rsign_sigopts.01138, %sw.bb34 ], [ %rsign_sigopts.01138, %sw.bb33 ], [ %rsign_sigopts.01138, %sw.bb32 ], [ %rsign_sigopts.01138, %sw.bb30 ], [ %rsign_sigopts.01138, %sw.bb28 ], [ %rsign_sigopts.01138, %sw.bb26 ], [ %rsign_sigopts.01138, %sw.bb24 ], [ %rsign_sigopts.01138, %sw.bb22 ], [ %rsign_sigopts.01138, %if.end21 ], [ %rsign_sigopts.01138, %sw.bb13 ], [ %rsign_sigopts.01138, %sw.bb11 ], [ %rsign_sigopts.01138, %if.end131 ], [ %rsign_sigopts.01138, %if.end148 ], [ %rsign_sigopts.01138, %if.end215 ]
  %trailing_md.1 = phi i32 [ %trailing_md.01140, %while.body ], [ %trailing_md.01140, %sw.bb221 ], [ %trailing_md.01140, %sw.bb205 ], [ %trailing_md.01140, %if.end200 ], [ %trailing_md.01140, %lor.lhs.false186 ], [ %trailing_md.01140, %sw.bb178 ], [ %trailing_md.01140, %sw.bb176 ], [ %trailing_md.01140, %sw.bb174 ], [ %trailing_md.01140, %sw.bb172 ], [ %trailing_md.01140, %sw.bb170 ], [ %trailing_md.01140, %sw.bb167 ], [ %trailing_md.01140, %sw.bb165 ], [ %trailing_md.01140, %sw.bb160 ], [ %trailing_md.01140, %sw.bb158 ], [ %trailing_md.01140, %sw.bb156 ], [ %trailing_md.01140, %if.end111 ], [ %trailing_md.01140, %sw.bb97 ], [ %trailing_md.01140, %sw.bb95 ], [ %trailing_md.01140, %sw.bb93 ], [ %trailing_md.01140, %sw.bb90 ], [ %trailing_md.01140, %sw.bb87 ], [ %trailing_md.01140, %if.end86 ], [ %trailing_md.01140, %sw.bb225 ], [ %trailing_md.01140, %sw.bb80 ], [ %trailing_md.01140, %sw.bb79 ], [ %trailing_md.01140, %sw.bb78 ], [ %trailing_md.01140, %sw.bb76 ], [ %trailing_md.01140, %sw.bb74 ], [ %trailing_md.01140, %sw.bb72 ], [ %trailing_md.01140, %sw.bb70 ], [ %trailing_md.01140, %sw.bb68 ], [ %trailing_md.01140, %sw.bb65 ], [ %trailing_md.01140, %sw.bb63 ], [ %trailing_md.01140, %sw.bb61 ], [ %trailing_md.01140, %sw.bb59 ], [ %trailing_md.01140, %sw.bb58 ], [ %trailing_md.01140, %sw.bb57 ], [ %trailing_md.01140, %sw.bb56 ], [ %trailing_md.01140, %sw.bb55 ], [ %trailing_md.01140, %sw.bb53 ], [ %trailing_md.01140, %sw.bb51 ], [ %trailing_md.01140, %sw.bb49 ], [ %trailing_md.01140, %sw.bb47 ], [ %trailing_md.01140, %sw.bb45 ], [ %trailing_md.01140, %sw.bb43 ], [ %trailing_md.01140, %sw.bb41 ], [ %trailing_md.01140, %sw.bb39 ], [ %trailing_md.01140, %sw.bb37 ], [ %trailing_md.01140, %sw.bb36 ], [ %trailing_md.01140, %sw.bb35 ], [ %trailing_md.01140, %sw.bb34 ], [ %trailing_md.01140, %sw.bb33 ], [ %trailing_md.01140, %sw.bb32 ], [ %trailing_md.01140, %sw.bb30 ], [ %trailing_md.01140, %sw.bb28 ], [ %trailing_md.01140, %sw.bb26 ], [ %trailing_md.01140, %sw.bb24 ], [ %trailing_md.01140, %sw.bb22 ], [ %trailing_md.01140, %if.end21 ], [ %trailing_md.01140, %sw.bb13 ], [ %trailing_md.01140, %sw.bb11 ], [ 0, %if.end131 ], [ 0, %if.end148 ], [ 1, %if.end215 ]
  %issuers.2 = phi %struct.stack_st_X509* [ %issuers.01141, %while.body ], [ %issuers.01141, %sw.bb221 ], [ %issuers.01141, %sw.bb205 ], [ %issuers.01141, %if.end200 ], [ %issuers.01141, %lor.lhs.false186 ], [ %issuers.01141, %sw.bb178 ], [ %issuers.01141, %sw.bb176 ], [ %issuers.01141, %sw.bb174 ], [ %issuers.01141, %sw.bb172 ], [ %issuers.01141, %sw.bb170 ], [ %issuers.01141, %sw.bb167 ], [ %issuers.01141, %sw.bb165 ], [ %issuers.01141, %sw.bb160 ], [ %issuers.01141, %sw.bb158 ], [ %issuers.01141, %sw.bb156 ], [ %issuers.1, %if.end111 ], [ %issuers.01141, %sw.bb97 ], [ %issuers.01141, %sw.bb95 ], [ %issuers.01141, %sw.bb93 ], [ %issuers.01141, %sw.bb90 ], [ %issuers.01141, %sw.bb87 ], [ %issuers.01141, %if.end86 ], [ %issuers.01141, %sw.bb225 ], [ %issuers.01141, %sw.bb80 ], [ %issuers.01141, %sw.bb79 ], [ %issuers.01141, %sw.bb78 ], [ %issuers.01141, %sw.bb76 ], [ %issuers.01141, %sw.bb74 ], [ %issuers.01141, %sw.bb72 ], [ %issuers.01141, %sw.bb70 ], [ %issuers.01141, %sw.bb68 ], [ %issuers.01141, %sw.bb65 ], [ %issuers.01141, %sw.bb63 ], [ %issuers.01141, %sw.bb61 ], [ %issuers.01141, %sw.bb59 ], [ %issuers.01141, %sw.bb58 ], [ %issuers.01141, %sw.bb57 ], [ %issuers.01141, %sw.bb56 ], [ %issuers.01141, %sw.bb55 ], [ %issuers.01141, %sw.bb53 ], [ %issuers.01141, %sw.bb51 ], [ %issuers.01141, %sw.bb49 ], [ %issuers.01141, %sw.bb47 ], [ %issuers.01141, %sw.bb45 ], [ %issuers.01141, %sw.bb43 ], [ %issuers.01141, %sw.bb41 ], [ %issuers.01141, %sw.bb39 ], [ %issuers.01141, %sw.bb37 ], [ %issuers.01141, %sw.bb36 ], [ %issuers.01141, %sw.bb35 ], [ %issuers.01141, %sw.bb34 ], [ %issuers.01141, %sw.bb33 ], [ %issuers.01141, %sw.bb32 ], [ %issuers.01141, %sw.bb30 ], [ %issuers.01141, %sw.bb28 ], [ %issuers.01141, %sw.bb26 ], [ %issuers.01141, %sw.bb24 ], [ %issuers.01141, %sw.bb22 ], [ %issuers.01141, %if.end21 ], [ %issuers.01141, %sw.bb13 ], [ %issuers.01141, %sw.bb11 ], [ %issuers.01141, %if.end131 ], [ %issuers.01141, %if.end148 ], [ %issuers.01141, %if.end215 ]
  %issuer.1 = phi %struct.x509_st* [ %issuer.01143, %while.body ], [ %issuer.01143, %sw.bb221 ], [ %issuer.01143, %sw.bb205 ], [ %issuer.01143, %if.end200 ], [ %issuer.01143, %lor.lhs.false186 ], [ %issuer.01143, %sw.bb178 ], [ %issuer.01143, %sw.bb176 ], [ %issuer.01143, %sw.bb174 ], [ %issuer.01143, %sw.bb172 ], [ %issuer.01143, %sw.bb170 ], [ %issuer.01143, %sw.bb167 ], [ %issuer.01143, %sw.bb165 ], [ %issuer.01143, %sw.bb160 ], [ %issuer.01143, %sw.bb158 ], [ %issuer.01143, %sw.bb156 ], [ %call101, %if.end111 ], [ %issuer.01143, %sw.bb97 ], [ %issuer.01143, %sw.bb95 ], [ %issuer.01143, %sw.bb93 ], [ %issuer.01143, %sw.bb90 ], [ %issuer.01143, %sw.bb87 ], [ %issuer.01143, %if.end86 ], [ %issuer.01143, %sw.bb225 ], [ %issuer.01143, %sw.bb80 ], [ %issuer.01143, %sw.bb79 ], [ %issuer.01143, %sw.bb78 ], [ %issuer.01143, %sw.bb76 ], [ %issuer.01143, %sw.bb74 ], [ %issuer.01143, %sw.bb72 ], [ %issuer.01143, %sw.bb70 ], [ %issuer.01143, %sw.bb68 ], [ %issuer.01143, %sw.bb65 ], [ %issuer.01143, %sw.bb63 ], [ %issuer.01143, %sw.bb61 ], [ %issuer.01143, %sw.bb59 ], [ %issuer.01143, %sw.bb58 ], [ %issuer.01143, %sw.bb57 ], [ %issuer.01143, %sw.bb56 ], [ %issuer.01143, %sw.bb55 ], [ %issuer.01143, %sw.bb53 ], [ %issuer.01143, %sw.bb51 ], [ %issuer.01143, %sw.bb49 ], [ %issuer.01143, %sw.bb47 ], [ %issuer.01143, %sw.bb45 ], [ %issuer.01143, %sw.bb43 ], [ %issuer.01143, %sw.bb41 ], [ %issuer.01143, %sw.bb39 ], [ %issuer.01143, %sw.bb37 ], [ %issuer.01143, %sw.bb36 ], [ %issuer.01143, %sw.bb35 ], [ %issuer.01143, %sw.bb34 ], [ %issuer.01143, %sw.bb33 ], [ %issuer.01143, %sw.bb32 ], [ %issuer.01143, %sw.bb30 ], [ %issuer.01143, %sw.bb28 ], [ %issuer.01143, %sw.bb26 ], [ %issuer.01143, %sw.bb24 ], [ %issuer.01143, %sw.bb22 ], [ %issuer.01143, %if.end21 ], [ %issuer.01143, %sw.bb13 ], [ %issuer.01143, %sw.bb11 ], [ %issuer.01143, %if.end131 ], [ %issuer.01143, %if.end148 ], [ %issuer.01143, %if.end215 ]
  %cert.1 = phi %struct.x509_st* [ %cert.01144, %while.body ], [ %cert.01144, %sw.bb221 ], [ %cert.01144, %sw.bb205 ], [ %cert.01144, %if.end200 ], [ %cert.01144, %lor.lhs.false186 ], [ %cert.01144, %sw.bb178 ], [ %cert.01144, %sw.bb176 ], [ %cert.01144, %sw.bb174 ], [ %cert.01144, %sw.bb172 ], [ %cert.01144, %sw.bb170 ], [ %cert.01144, %sw.bb167 ], [ %cert.01144, %sw.bb165 ], [ %cert.01144, %sw.bb160 ], [ %cert.01144, %sw.bb158 ], [ %cert.01144, %sw.bb156 ], [ %cert.01144, %if.end111 ], [ %cert.01144, %sw.bb97 ], [ %cert.01144, %sw.bb95 ], [ %cert.01144, %sw.bb93 ], [ %cert.01144, %sw.bb90 ], [ %cert.01144, %sw.bb87 ], [ %cert.01144, %if.end86 ], [ %cert.01144, %sw.bb225 ], [ %cert.01144, %sw.bb80 ], [ %cert.01144, %sw.bb79 ], [ %cert.01144, %sw.bb78 ], [ %cert.01144, %sw.bb76 ], [ %cert.01144, %sw.bb74 ], [ %cert.01144, %sw.bb72 ], [ %cert.01144, %sw.bb70 ], [ %cert.01144, %sw.bb68 ], [ %cert.01144, %sw.bb65 ], [ %cert.01144, %sw.bb63 ], [ %cert.01144, %sw.bb61 ], [ %cert.01144, %sw.bb59 ], [ %cert.01144, %sw.bb58 ], [ %cert.01144, %sw.bb57 ], [ %cert.01144, %sw.bb56 ], [ %cert.01144, %sw.bb55 ], [ %cert.01144, %sw.bb53 ], [ %cert.01144, %sw.bb51 ], [ %cert.01144, %sw.bb49 ], [ %cert.01144, %sw.bb47 ], [ %cert.01144, %sw.bb45 ], [ %cert.01144, %sw.bb43 ], [ %cert.01144, %sw.bb41 ], [ %cert.01144, %sw.bb39 ], [ %cert.01144, %sw.bb37 ], [ %cert.01144, %sw.bb36 ], [ %cert.01144, %sw.bb35 ], [ %cert.01144, %sw.bb34 ], [ %cert.01144, %sw.bb33 ], [ %cert.01144, %sw.bb32 ], [ %cert.01144, %sw.bb30 ], [ %cert.01144, %sw.bb28 ], [ %cert.01144, %sw.bb26 ], [ %cert.01144, %sw.bb24 ], [ %cert.01144, %sw.bb22 ], [ %cert.01144, %if.end21 ], [ %cert.01144, %sw.bb13 ], [ %cert.01144, %sw.bb11 ], [ %call120, %if.end131 ], [ %cert.01144, %if.end148 ], [ %cert.01144, %if.end215 ]
  %CAfile.1 = phi i8* [ %CAfile.01147, %while.body ], [ %CAfile.01147, %sw.bb221 ], [ %CAfile.01147, %sw.bb205 ], [ %CAfile.01147, %if.end200 ], [ %CAfile.01147, %lor.lhs.false186 ], [ %CAfile.01147, %sw.bb178 ], [ %CAfile.01147, %sw.bb176 ], [ %CAfile.01147, %sw.bb174 ], [ %CAfile.01147, %sw.bb172 ], [ %CAfile.01147, %sw.bb170 ], [ %CAfile.01147, %sw.bb167 ], [ %CAfile.01147, %sw.bb165 ], [ %CAfile.01147, %sw.bb160 ], [ %CAfile.01147, %sw.bb158 ], [ %CAfile.01147, %sw.bb156 ], [ %CAfile.01147, %if.end111 ], [ %CAfile.01147, %sw.bb97 ], [ %CAfile.01147, %sw.bb95 ], [ %CAfile.01147, %sw.bb93 ], [ %CAfile.01147, %sw.bb90 ], [ %CAfile.01147, %sw.bb87 ], [ %CAfile.01147, %if.end86 ], [ %CAfile.01147, %sw.bb225 ], [ %CAfile.01147, %sw.bb80 ], [ %CAfile.01147, %sw.bb79 ], [ %CAfile.01147, %sw.bb78 ], [ %CAfile.01147, %sw.bb76 ], [ %CAfile.01147, %sw.bb74 ], [ %call73, %sw.bb72 ], [ %CAfile.01147, %sw.bb70 ], [ %CAfile.01147, %sw.bb68 ], [ %CAfile.01147, %sw.bb65 ], [ %CAfile.01147, %sw.bb63 ], [ %CAfile.01147, %sw.bb61 ], [ %CAfile.01147, %sw.bb59 ], [ %CAfile.01147, %sw.bb58 ], [ %CAfile.01147, %sw.bb57 ], [ %CAfile.01147, %sw.bb56 ], [ %CAfile.01147, %sw.bb55 ], [ %CAfile.01147, %sw.bb53 ], [ %CAfile.01147, %sw.bb51 ], [ %CAfile.01147, %sw.bb49 ], [ %CAfile.01147, %sw.bb47 ], [ %CAfile.01147, %sw.bb45 ], [ %CAfile.01147, %sw.bb43 ], [ %CAfile.01147, %sw.bb41 ], [ %CAfile.01147, %sw.bb39 ], [ %CAfile.01147, %sw.bb37 ], [ %CAfile.01147, %sw.bb36 ], [ %CAfile.01147, %sw.bb35 ], [ %CAfile.01147, %sw.bb34 ], [ %CAfile.01147, %sw.bb33 ], [ %CAfile.01147, %sw.bb32 ], [ %CAfile.01147, %sw.bb30 ], [ %CAfile.01147, %sw.bb28 ], [ %CAfile.01147, %sw.bb26 ], [ %CAfile.01147, %sw.bb24 ], [ %CAfile.01147, %sw.bb22 ], [ %CAfile.01147, %if.end21 ], [ %CAfile.01147, %sw.bb13 ], [ %CAfile.01147, %sw.bb11 ], [ %CAfile.01147, %if.end131 ], [ %CAfile.01147, %if.end148 ], [ %CAfile.01147, %if.end215 ]
  %CApath.1 = phi i8* [ %CApath.01148, %while.body ], [ %CApath.01148, %sw.bb221 ], [ %CApath.01148, %sw.bb205 ], [ %CApath.01148, %if.end200 ], [ %CApath.01148, %lor.lhs.false186 ], [ %CApath.01148, %sw.bb178 ], [ %CApath.01148, %sw.bb176 ], [ %CApath.01148, %sw.bb174 ], [ %CApath.01148, %sw.bb172 ], [ %CApath.01148, %sw.bb170 ], [ %CApath.01148, %sw.bb167 ], [ %CApath.01148, %sw.bb165 ], [ %CApath.01148, %sw.bb160 ], [ %CApath.01148, %sw.bb158 ], [ %CApath.01148, %sw.bb156 ], [ %CApath.01148, %if.end111 ], [ %CApath.01148, %sw.bb97 ], [ %CApath.01148, %sw.bb95 ], [ %CApath.01148, %sw.bb93 ], [ %CApath.01148, %sw.bb90 ], [ %CApath.01148, %sw.bb87 ], [ %CApath.01148, %if.end86 ], [ %CApath.01148, %sw.bb225 ], [ %CApath.01148, %sw.bb80 ], [ %CApath.01148, %sw.bb79 ], [ %CApath.01148, %sw.bb78 ], [ %CApath.01148, %sw.bb76 ], [ %call75, %sw.bb74 ], [ %CApath.01148, %sw.bb72 ], [ %CApath.01148, %sw.bb70 ], [ %CApath.01148, %sw.bb68 ], [ %CApath.01148, %sw.bb65 ], [ %CApath.01148, %sw.bb63 ], [ %CApath.01148, %sw.bb61 ], [ %CApath.01148, %sw.bb59 ], [ %CApath.01148, %sw.bb58 ], [ %CApath.01148, %sw.bb57 ], [ %CApath.01148, %sw.bb56 ], [ %CApath.01148, %sw.bb55 ], [ %CApath.01148, %sw.bb53 ], [ %CApath.01148, %sw.bb51 ], [ %CApath.01148, %sw.bb49 ], [ %CApath.01148, %sw.bb47 ], [ %CApath.01148, %sw.bb45 ], [ %CApath.01148, %sw.bb43 ], [ %CApath.01148, %sw.bb41 ], [ %CApath.01148, %sw.bb39 ], [ %CApath.01148, %sw.bb37 ], [ %CApath.01148, %sw.bb36 ], [ %CApath.01148, %sw.bb35 ], [ %CApath.01148, %sw.bb34 ], [ %CApath.01148, %sw.bb33 ], [ %CApath.01148, %sw.bb32 ], [ %CApath.01148, %sw.bb30 ], [ %CApath.01148, %sw.bb28 ], [ %CApath.01148, %sw.bb26 ], [ %CApath.01148, %sw.bb24 ], [ %CApath.01148, %sw.bb22 ], [ %CApath.01148, %if.end21 ], [ %CApath.01148, %sw.bb13 ], [ %CApath.01148, %sw.bb11 ], [ %CApath.01148, %if.end131 ], [ %CApath.01148, %if.end148 ], [ %CApath.01148, %if.end215 ]
  %CAstore.1 = phi i8* [ %CAstore.01149, %while.body ], [ %CAstore.01149, %sw.bb221 ], [ %CAstore.01149, %sw.bb205 ], [ %CAstore.01149, %if.end200 ], [ %CAstore.01149, %lor.lhs.false186 ], [ %CAstore.01149, %sw.bb178 ], [ %CAstore.01149, %sw.bb176 ], [ %CAstore.01149, %sw.bb174 ], [ %CAstore.01149, %sw.bb172 ], [ %CAstore.01149, %sw.bb170 ], [ %CAstore.01149, %sw.bb167 ], [ %CAstore.01149, %sw.bb165 ], [ %CAstore.01149, %sw.bb160 ], [ %CAstore.01149, %sw.bb158 ], [ %CAstore.01149, %sw.bb156 ], [ %CAstore.01149, %if.end111 ], [ %CAstore.01149, %sw.bb97 ], [ %CAstore.01149, %sw.bb95 ], [ %CAstore.01149, %sw.bb93 ], [ %CAstore.01149, %sw.bb90 ], [ %CAstore.01149, %sw.bb87 ], [ %CAstore.01149, %if.end86 ], [ %CAstore.01149, %sw.bb225 ], [ %CAstore.01149, %sw.bb80 ], [ %CAstore.01149, %sw.bb79 ], [ %CAstore.01149, %sw.bb78 ], [ %call77, %sw.bb76 ], [ %CAstore.01149, %sw.bb74 ], [ %CAstore.01149, %sw.bb72 ], [ %CAstore.01149, %sw.bb70 ], [ %CAstore.01149, %sw.bb68 ], [ %CAstore.01149, %sw.bb65 ], [ %CAstore.01149, %sw.bb63 ], [ %CAstore.01149, %sw.bb61 ], [ %CAstore.01149, %sw.bb59 ], [ %CAstore.01149, %sw.bb58 ], [ %CAstore.01149, %sw.bb57 ], [ %CAstore.01149, %sw.bb56 ], [ %CAstore.01149, %sw.bb55 ], [ %CAstore.01149, %sw.bb53 ], [ %CAstore.01149, %sw.bb51 ], [ %CAstore.01149, %sw.bb49 ], [ %CAstore.01149, %sw.bb47 ], [ %CAstore.01149, %sw.bb45 ], [ %CAstore.01149, %sw.bb43 ], [ %CAstore.01149, %sw.bb41 ], [ %CAstore.01149, %sw.bb39 ], [ %CAstore.01149, %sw.bb37 ], [ %CAstore.01149, %sw.bb36 ], [ %CAstore.01149, %sw.bb35 ], [ %CAstore.01149, %sw.bb34 ], [ %CAstore.01149, %sw.bb33 ], [ %CAstore.01149, %sw.bb32 ], [ %CAstore.01149, %sw.bb30 ], [ %CAstore.01149, %sw.bb28 ], [ %CAstore.01149, %sw.bb26 ], [ %CAstore.01149, %sw.bb24 ], [ %CAstore.01149, %sw.bb22 ], [ %CAstore.01149, %if.end21 ], [ %CAstore.01149, %sw.bb13 ], [ %CAstore.01149, %sw.bb11 ], [ %CAstore.01149, %if.end131 ], [ %CAstore.01149, %if.end148 ], [ %CAstore.01149, %if.end215 ]
  %respdigname.1 = phi i8* [ %respdigname.01150, %while.body ], [ %respdigname.01150, %sw.bb221 ], [ %respdigname.01150, %sw.bb205 ], [ %respdigname.01150, %if.end200 ], [ %respdigname.01150, %lor.lhs.false186 ], [ %call179, %sw.bb178 ], [ %respdigname.01150, %sw.bb176 ], [ %respdigname.01150, %sw.bb174 ], [ %respdigname.01150, %sw.bb172 ], [ %respdigname.01150, %sw.bb170 ], [ %respdigname.01150, %sw.bb167 ], [ %respdigname.01150, %sw.bb165 ], [ %respdigname.01150, %sw.bb160 ], [ %respdigname.01150, %sw.bb158 ], [ %respdigname.01150, %sw.bb156 ], [ %respdigname.01150, %if.end111 ], [ %respdigname.01150, %sw.bb97 ], [ %respdigname.01150, %sw.bb95 ], [ %respdigname.01150, %sw.bb93 ], [ %respdigname.01150, %sw.bb90 ], [ %respdigname.01150, %sw.bb87 ], [ %respdigname.01150, %if.end86 ], [ %respdigname.01150, %sw.bb225 ], [ %respdigname.01150, %sw.bb80 ], [ %respdigname.01150, %sw.bb79 ], [ %respdigname.01150, %sw.bb78 ], [ %respdigname.01150, %sw.bb76 ], [ %respdigname.01150, %sw.bb74 ], [ %respdigname.01150, %sw.bb72 ], [ %respdigname.01150, %sw.bb70 ], [ %respdigname.01150, %sw.bb68 ], [ %respdigname.01150, %sw.bb65 ], [ %respdigname.01150, %sw.bb63 ], [ %respdigname.01150, %sw.bb61 ], [ %respdigname.01150, %sw.bb59 ], [ %respdigname.01150, %sw.bb58 ], [ %respdigname.01150, %sw.bb57 ], [ %respdigname.01150, %sw.bb56 ], [ %respdigname.01150, %sw.bb55 ], [ %respdigname.01150, %sw.bb53 ], [ %respdigname.01150, %sw.bb51 ], [ %respdigname.01150, %sw.bb49 ], [ %respdigname.01150, %sw.bb47 ], [ %respdigname.01150, %sw.bb45 ], [ %respdigname.01150, %sw.bb43 ], [ %respdigname.01150, %sw.bb41 ], [ %respdigname.01150, %sw.bb39 ], [ %respdigname.01150, %sw.bb37 ], [ %respdigname.01150, %sw.bb36 ], [ %respdigname.01150, %sw.bb35 ], [ %respdigname.01150, %sw.bb34 ], [ %respdigname.01150, %sw.bb33 ], [ %respdigname.01150, %sw.bb32 ], [ %respdigname.01150, %sw.bb30 ], [ %respdigname.01150, %sw.bb28 ], [ %respdigname.01150, %sw.bb26 ], [ %respdigname.01150, %sw.bb24 ], [ %respdigname.01150, %sw.bb22 ], [ %respdigname.01150, %if.end21 ], [ %respdigname.01150, %sw.bb13 ], [ %respdigname.01150, %sw.bb11 ], [ %respdigname.01150, %if.end131 ], [ %respdigname.01150, %if.end148 ], [ %respdigname.01150, %if.end215 ]
  %outfile.1 = phi i8* [ %outfile.01151, %while.body ], [ %outfile.01151, %sw.bb221 ], [ %outfile.01151, %sw.bb205 ], [ %outfile.01151, %if.end200 ], [ %outfile.01151, %lor.lhs.false186 ], [ %outfile.01151, %sw.bb178 ], [ %outfile.01151, %sw.bb176 ], [ %outfile.01151, %sw.bb174 ], [ %outfile.01151, %sw.bb172 ], [ %outfile.01151, %sw.bb170 ], [ %outfile.01151, %sw.bb167 ], [ %outfile.01151, %sw.bb165 ], [ %outfile.01151, %sw.bb160 ], [ %outfile.01151, %sw.bb158 ], [ %outfile.01151, %sw.bb156 ], [ %outfile.01151, %if.end111 ], [ %outfile.01151, %sw.bb97 ], [ %outfile.01151, %sw.bb95 ], [ %outfile.01151, %sw.bb93 ], [ %outfile.01151, %sw.bb90 ], [ %outfile.01151, %sw.bb87 ], [ %outfile.01151, %if.end86 ], [ %outfile.01151, %sw.bb225 ], [ %outfile.01151, %sw.bb80 ], [ %outfile.01151, %sw.bb79 ], [ %outfile.01151, %sw.bb78 ], [ %outfile.01151, %sw.bb76 ], [ %outfile.01151, %sw.bb74 ], [ %outfile.01151, %sw.bb72 ], [ %outfile.01151, %sw.bb70 ], [ %outfile.01151, %sw.bb68 ], [ %outfile.01151, %sw.bb65 ], [ %outfile.01151, %sw.bb63 ], [ %outfile.01151, %sw.bb61 ], [ %outfile.01151, %sw.bb59 ], [ %outfile.01151, %sw.bb58 ], [ %outfile.01151, %sw.bb57 ], [ %outfile.01151, %sw.bb56 ], [ %outfile.01151, %sw.bb55 ], [ %outfile.01151, %sw.bb53 ], [ %outfile.01151, %sw.bb51 ], [ %outfile.01151, %sw.bb49 ], [ %outfile.01151, %sw.bb47 ], [ %outfile.01151, %sw.bb45 ], [ %outfile.01151, %sw.bb43 ], [ %outfile.01151, %sw.bb41 ], [ %outfile.01151, %sw.bb39 ], [ %outfile.01151, %sw.bb37 ], [ %outfile.01151, %sw.bb36 ], [ %outfile.01151, %sw.bb35 ], [ %outfile.01151, %sw.bb34 ], [ %outfile.01151, %sw.bb33 ], [ %outfile.01151, %sw.bb32 ], [ %outfile.01151, %sw.bb30 ], [ %outfile.01151, %sw.bb28 ], [ %outfile.01151, %sw.bb26 ], [ %outfile.01151, %sw.bb24 ], [ %outfile.01151, %sw.bb22 ], [ %outfile.01151, %if.end21 ], [ %outfile.01151, %sw.bb13 ], [ %call12, %sw.bb11 ], [ %outfile.01151, %if.end131 ], [ %outfile.01151, %if.end148 ], [ %outfile.01151, %if.end215 ]
  %opt_proxy.1 = phi i8* [ %opt_proxy.01152, %while.body ], [ %opt_proxy.01152, %sw.bb221 ], [ %opt_proxy.01152, %sw.bb205 ], [ %opt_proxy.01152, %if.end200 ], [ %opt_proxy.01152, %lor.lhs.false186 ], [ %opt_proxy.01152, %sw.bb178 ], [ %opt_proxy.01152, %sw.bb176 ], [ %opt_proxy.01152, %sw.bb174 ], [ %opt_proxy.01152, %sw.bb172 ], [ %opt_proxy.01152, %sw.bb170 ], [ %opt_proxy.01152, %sw.bb167 ], [ %opt_proxy.01152, %sw.bb165 ], [ %opt_proxy.01152, %sw.bb160 ], [ %opt_proxy.01152, %sw.bb158 ], [ %opt_proxy.01152, %sw.bb156 ], [ %opt_proxy.01152, %if.end111 ], [ %opt_proxy.01152, %sw.bb97 ], [ %opt_proxy.01152, %sw.bb95 ], [ %opt_proxy.01152, %sw.bb93 ], [ %opt_proxy.01152, %sw.bb90 ], [ %opt_proxy.01152, %sw.bb87 ], [ %opt_proxy.01152, %if.end86 ], [ %opt_proxy.01152, %sw.bb225 ], [ %opt_proxy.01152, %sw.bb80 ], [ %opt_proxy.01152, %sw.bb79 ], [ %opt_proxy.01152, %sw.bb78 ], [ %opt_proxy.01152, %sw.bb76 ], [ %opt_proxy.01152, %sw.bb74 ], [ %opt_proxy.01152, %sw.bb72 ], [ %opt_proxy.01152, %sw.bb70 ], [ %opt_proxy.01152, %sw.bb68 ], [ %opt_proxy.01152, %sw.bb65 ], [ %opt_proxy.01152, %sw.bb63 ], [ %opt_proxy.01152, %sw.bb61 ], [ %opt_proxy.01152, %sw.bb59 ], [ %opt_proxy.01152, %sw.bb58 ], [ %opt_proxy.01152, %sw.bb57 ], [ %opt_proxy.01152, %sw.bb56 ], [ %opt_proxy.01152, %sw.bb55 ], [ %opt_proxy.01152, %sw.bb53 ], [ %opt_proxy.01152, %sw.bb51 ], [ %opt_proxy.01152, %sw.bb49 ], [ %opt_proxy.01152, %sw.bb47 ], [ %opt_proxy.01152, %sw.bb45 ], [ %opt_proxy.01152, %sw.bb43 ], [ %opt_proxy.01152, %sw.bb41 ], [ %opt_proxy.01152, %sw.bb39 ], [ %opt_proxy.01152, %sw.bb37 ], [ %opt_proxy.01152, %sw.bb36 ], [ %opt_proxy.01152, %sw.bb35 ], [ %opt_proxy.01152, %sw.bb34 ], [ %opt_proxy.01152, %sw.bb33 ], [ %opt_proxy.01152, %sw.bb32 ], [ %opt_proxy.01152, %sw.bb30 ], [ %call29, %sw.bb28 ], [ %opt_proxy.01152, %sw.bb26 ], [ %opt_proxy.01152, %sw.bb24 ], [ %opt_proxy.01152, %sw.bb22 ], [ %opt_proxy.01152, %if.end21 ], [ %opt_proxy.01152, %sw.bb13 ], [ %opt_proxy.01152, %sw.bb11 ], [ %opt_proxy.01152, %if.end131 ], [ %opt_proxy.01152, %if.end148 ], [ %opt_proxy.01152, %if.end215 ]
  %opt_no_proxy.1 = phi i8* [ %opt_no_proxy.01153, %while.body ], [ %opt_no_proxy.01153, %sw.bb221 ], [ %opt_no_proxy.01153, %sw.bb205 ], [ %opt_no_proxy.01153, %if.end200 ], [ %opt_no_proxy.01153, %lor.lhs.false186 ], [ %opt_no_proxy.01153, %sw.bb178 ], [ %opt_no_proxy.01153, %sw.bb176 ], [ %opt_no_proxy.01153, %sw.bb174 ], [ %opt_no_proxy.01153, %sw.bb172 ], [ %opt_no_proxy.01153, %sw.bb170 ], [ %opt_no_proxy.01153, %sw.bb167 ], [ %opt_no_proxy.01153, %sw.bb165 ], [ %opt_no_proxy.01153, %sw.bb160 ], [ %opt_no_proxy.01153, %sw.bb158 ], [ %opt_no_proxy.01153, %sw.bb156 ], [ %opt_no_proxy.01153, %if.end111 ], [ %opt_no_proxy.01153, %sw.bb97 ], [ %opt_no_proxy.01153, %sw.bb95 ], [ %opt_no_proxy.01153, %sw.bb93 ], [ %opt_no_proxy.01153, %sw.bb90 ], [ %opt_no_proxy.01153, %sw.bb87 ], [ %opt_no_proxy.01153, %if.end86 ], [ %opt_no_proxy.01153, %sw.bb225 ], [ %opt_no_proxy.01153, %sw.bb80 ], [ %opt_no_proxy.01153, %sw.bb79 ], [ %opt_no_proxy.01153, %sw.bb78 ], [ %opt_no_proxy.01153, %sw.bb76 ], [ %opt_no_proxy.01153, %sw.bb74 ], [ %opt_no_proxy.01153, %sw.bb72 ], [ %opt_no_proxy.01153, %sw.bb70 ], [ %opt_no_proxy.01153, %sw.bb68 ], [ %opt_no_proxy.01153, %sw.bb65 ], [ %opt_no_proxy.01153, %sw.bb63 ], [ %opt_no_proxy.01153, %sw.bb61 ], [ %opt_no_proxy.01153, %sw.bb59 ], [ %opt_no_proxy.01153, %sw.bb58 ], [ %opt_no_proxy.01153, %sw.bb57 ], [ %opt_no_proxy.01153, %sw.bb56 ], [ %opt_no_proxy.01153, %sw.bb55 ], [ %opt_no_proxy.01153, %sw.bb53 ], [ %opt_no_proxy.01153, %sw.bb51 ], [ %opt_no_proxy.01153, %sw.bb49 ], [ %opt_no_proxy.01153, %sw.bb47 ], [ %opt_no_proxy.01153, %sw.bb45 ], [ %opt_no_proxy.01153, %sw.bb43 ], [ %opt_no_proxy.01153, %sw.bb41 ], [ %opt_no_proxy.01153, %sw.bb39 ], [ %opt_no_proxy.01153, %sw.bb37 ], [ %opt_no_proxy.01153, %sw.bb36 ], [ %opt_no_proxy.01153, %sw.bb35 ], [ %opt_no_proxy.01153, %sw.bb34 ], [ %opt_no_proxy.01153, %sw.bb33 ], [ %opt_no_proxy.01153, %sw.bb32 ], [ %call31, %sw.bb30 ], [ %opt_no_proxy.01153, %sw.bb28 ], [ %opt_no_proxy.01153, %sw.bb26 ], [ %opt_no_proxy.01153, %sw.bb24 ], [ %opt_no_proxy.01153, %sw.bb22 ], [ %opt_no_proxy.01153, %if.end21 ], [ %opt_no_proxy.01153, %sw.bb13 ], [ %opt_no_proxy.01153, %sw.bb11 ], [ %opt_no_proxy.01153, %if.end131 ], [ %opt_no_proxy.01153, %if.end148 ], [ %opt_no_proxy.01153, %if.end215 ]
  %rca_filename.1 = phi i8* [ %rca_filename.01154, %while.body ], [ %rca_filename.01154, %sw.bb221 ], [ %rca_filename.01154, %sw.bb205 ], [ %rca_filename.01154, %if.end200 ], [ %rca_filename.01154, %lor.lhs.false186 ], [ %rca_filename.01154, %sw.bb178 ], [ %rca_filename.01154, %sw.bb176 ], [ %rca_filename.01154, %sw.bb174 ], [ %rca_filename.01154, %sw.bb172 ], [ %rca_filename.01154, %sw.bb170 ], [ %rca_filename.01154, %sw.bb167 ], [ %rca_filename.01154, %sw.bb165 ], [ %rca_filename.01154, %sw.bb160 ], [ %call159, %sw.bb158 ], [ %rca_filename.01154, %sw.bb156 ], [ %rca_filename.01154, %if.end111 ], [ %rca_filename.01154, %sw.bb97 ], [ %rca_filename.01154, %sw.bb95 ], [ %rca_filename.01154, %sw.bb93 ], [ %rca_filename.01154, %sw.bb90 ], [ %rca_filename.01154, %sw.bb87 ], [ %rca_filename.01154, %if.end86 ], [ %rca_filename.01154, %sw.bb225 ], [ %rca_filename.01154, %sw.bb80 ], [ %rca_filename.01154, %sw.bb79 ], [ %rca_filename.01154, %sw.bb78 ], [ %rca_filename.01154, %sw.bb76 ], [ %rca_filename.01154, %sw.bb74 ], [ %rca_filename.01154, %sw.bb72 ], [ %rca_filename.01154, %sw.bb70 ], [ %rca_filename.01154, %sw.bb68 ], [ %rca_filename.01154, %sw.bb65 ], [ %rca_filename.01154, %sw.bb63 ], [ %rca_filename.01154, %sw.bb61 ], [ %rca_filename.01154, %sw.bb59 ], [ %rca_filename.01154, %sw.bb58 ], [ %rca_filename.01154, %sw.bb57 ], [ %rca_filename.01154, %sw.bb56 ], [ %rca_filename.01154, %sw.bb55 ], [ %rca_filename.01154, %sw.bb53 ], [ %rca_filename.01154, %sw.bb51 ], [ %rca_filename.01154, %sw.bb49 ], [ %rca_filename.01154, %sw.bb47 ], [ %rca_filename.01154, %sw.bb45 ], [ %rca_filename.01154, %sw.bb43 ], [ %rca_filename.01154, %sw.bb41 ], [ %rca_filename.01154, %sw.bb39 ], [ %rca_filename.01154, %sw.bb37 ], [ %rca_filename.01154, %sw.bb36 ], [ %rca_filename.01154, %sw.bb35 ], [ %rca_filename.01154, %sw.bb34 ], [ %rca_filename.01154, %sw.bb33 ], [ %rca_filename.01154, %sw.bb32 ], [ %rca_filename.01154, %sw.bb30 ], [ %rca_filename.01154, %sw.bb28 ], [ %rca_filename.01154, %sw.bb26 ], [ %rca_filename.01154, %sw.bb24 ], [ %rca_filename.01154, %sw.bb22 ], [ %rca_filename.01154, %if.end21 ], [ %rca_filename.01154, %sw.bb13 ], [ %rca_filename.01154, %sw.bb11 ], [ %rca_filename.01154, %if.end131 ], [ %rca_filename.01154, %if.end148 ], [ %rca_filename.01154, %if.end215 ]
  %reqin.1 = phi i8* [ %reqin.01155, %while.body ], [ %reqin.01155, %sw.bb221 ], [ %reqin.01155, %sw.bb205 ], [ %reqin.01155, %if.end200 ], [ %reqin.01155, %lor.lhs.false186 ], [ %reqin.01155, %sw.bb178 ], [ %reqin.01155, %sw.bb176 ], [ %reqin.01155, %sw.bb174 ], [ %reqin.01155, %sw.bb172 ], [ %reqin.01155, %sw.bb170 ], [ %reqin.01155, %sw.bb167 ], [ %reqin.01155, %sw.bb165 ], [ %reqin.01155, %sw.bb160 ], [ %reqin.01155, %sw.bb158 ], [ %reqin.01155, %sw.bb156 ], [ %reqin.01155, %if.end111 ], [ %reqin.01155, %sw.bb97 ], [ %reqin.01155, %sw.bb95 ], [ %reqin.01155, %sw.bb93 ], [ %reqin.01155, %sw.bb90 ], [ %reqin.01155, %sw.bb87 ], [ %reqin.01155, %if.end86 ], [ %reqin.01155, %sw.bb225 ], [ %reqin.01155, %sw.bb80 ], [ %reqin.01155, %sw.bb79 ], [ %reqin.01155, %sw.bb78 ], [ %reqin.01155, %sw.bb76 ], [ %reqin.01155, %sw.bb74 ], [ %reqin.01155, %sw.bb72 ], [ %reqin.01155, %sw.bb70 ], [ %reqin.01155, %sw.bb68 ], [ %reqin.01155, %sw.bb65 ], [ %reqin.01155, %sw.bb63 ], [ %reqin.01155, %sw.bb61 ], [ %call60, %sw.bb59 ], [ %reqin.01155, %sw.bb58 ], [ %reqin.01155, %sw.bb57 ], [ %reqin.01155, %sw.bb56 ], [ %reqin.01155, %sw.bb55 ], [ %reqin.01155, %sw.bb53 ], [ %reqin.01155, %sw.bb51 ], [ %reqin.01155, %sw.bb49 ], [ %reqin.01155, %sw.bb47 ], [ %reqin.01155, %sw.bb45 ], [ %reqin.01155, %sw.bb43 ], [ %reqin.01155, %sw.bb41 ], [ %reqin.01155, %sw.bb39 ], [ %reqin.01155, %sw.bb37 ], [ %reqin.01155, %sw.bb36 ], [ %reqin.01155, %sw.bb35 ], [ %reqin.01155, %sw.bb34 ], [ %reqin.01155, %sw.bb33 ], [ %reqin.01155, %sw.bb32 ], [ %reqin.01155, %sw.bb30 ], [ %reqin.01155, %sw.bb28 ], [ %reqin.01155, %sw.bb26 ], [ %reqin.01155, %sw.bb24 ], [ %reqin.01155, %sw.bb22 ], [ %reqin.01155, %if.end21 ], [ %reqin.01155, %sw.bb13 ], [ %reqin.01155, %sw.bb11 ], [ %reqin.01155, %if.end131 ], [ %reqin.01155, %if.end148 ], [ %reqin.01155, %if.end215 ]
  %respin.1 = phi i8* [ %respin.01156, %while.body ], [ %respin.01156, %sw.bb221 ], [ %respin.01156, %sw.bb205 ], [ %respin.01156, %if.end200 ], [ %respin.01156, %lor.lhs.false186 ], [ %respin.01156, %sw.bb178 ], [ %respin.01156, %sw.bb176 ], [ %respin.01156, %sw.bb174 ], [ %respin.01156, %sw.bb172 ], [ %respin.01156, %sw.bb170 ], [ %respin.01156, %sw.bb167 ], [ %respin.01156, %sw.bb165 ], [ %respin.01156, %sw.bb160 ], [ %respin.01156, %sw.bb158 ], [ %respin.01156, %sw.bb156 ], [ %respin.01156, %if.end111 ], [ %respin.01156, %sw.bb97 ], [ %respin.01156, %sw.bb95 ], [ %respin.01156, %sw.bb93 ], [ %respin.01156, %sw.bb90 ], [ %respin.01156, %sw.bb87 ], [ %respin.01156, %if.end86 ], [ %respin.01156, %sw.bb225 ], [ %respin.01156, %sw.bb80 ], [ %respin.01156, %sw.bb79 ], [ %respin.01156, %sw.bb78 ], [ %respin.01156, %sw.bb76 ], [ %respin.01156, %sw.bb74 ], [ %respin.01156, %sw.bb72 ], [ %respin.01156, %sw.bb70 ], [ %respin.01156, %sw.bb68 ], [ %respin.01156, %sw.bb65 ], [ %respin.01156, %sw.bb63 ], [ %call62, %sw.bb61 ], [ %respin.01156, %sw.bb59 ], [ %respin.01156, %sw.bb58 ], [ %respin.01156, %sw.bb57 ], [ %respin.01156, %sw.bb56 ], [ %respin.01156, %sw.bb55 ], [ %respin.01156, %sw.bb53 ], [ %respin.01156, %sw.bb51 ], [ %respin.01156, %sw.bb49 ], [ %respin.01156, %sw.bb47 ], [ %respin.01156, %sw.bb45 ], [ %respin.01156, %sw.bb43 ], [ %respin.01156, %sw.bb41 ], [ %respin.01156, %sw.bb39 ], [ %respin.01156, %sw.bb37 ], [ %respin.01156, %sw.bb36 ], [ %respin.01156, %sw.bb35 ], [ %respin.01156, %sw.bb34 ], [ %respin.01156, %sw.bb33 ], [ %respin.01156, %sw.bb32 ], [ %respin.01156, %sw.bb30 ], [ %respin.01156, %sw.bb28 ], [ %respin.01156, %sw.bb26 ], [ %respin.01156, %sw.bb24 ], [ %respin.01156, %sw.bb22 ], [ %respin.01156, %if.end21 ], [ %respin.01156, %sw.bb13 ], [ %respin.01156, %sw.bb11 ], [ %respin.01156, %if.end131 ], [ %respin.01156, %if.end148 ], [ %respin.01156, %if.end215 ]
  %reqout.1 = phi i8* [ %reqout.01157, %while.body ], [ %reqout.01157, %sw.bb221 ], [ %reqout.01157, %sw.bb205 ], [ %reqout.01157, %if.end200 ], [ %reqout.01157, %lor.lhs.false186 ], [ %reqout.01157, %sw.bb178 ], [ %reqout.01157, %sw.bb176 ], [ %reqout.01157, %sw.bb174 ], [ %reqout.01157, %sw.bb172 ], [ %reqout.01157, %sw.bb170 ], [ %reqout.01157, %sw.bb167 ], [ %reqout.01157, %sw.bb165 ], [ %reqout.01157, %sw.bb160 ], [ %reqout.01157, %sw.bb158 ], [ %reqout.01157, %sw.bb156 ], [ %reqout.01157, %if.end111 ], [ %reqout.01157, %sw.bb97 ], [ %call96, %sw.bb95 ], [ %reqout.01157, %sw.bb93 ], [ %reqout.01157, %sw.bb90 ], [ %reqout.01157, %sw.bb87 ], [ %reqout.01157, %if.end86 ], [ %reqout.01157, %sw.bb225 ], [ %reqout.01157, %sw.bb80 ], [ %reqout.01157, %sw.bb79 ], [ %reqout.01157, %sw.bb78 ], [ %reqout.01157, %sw.bb76 ], [ %reqout.01157, %sw.bb74 ], [ %reqout.01157, %sw.bb72 ], [ %reqout.01157, %sw.bb70 ], [ %reqout.01157, %sw.bb68 ], [ %reqout.01157, %sw.bb65 ], [ %reqout.01157, %sw.bb63 ], [ %reqout.01157, %sw.bb61 ], [ %reqout.01157, %sw.bb59 ], [ %reqout.01157, %sw.bb58 ], [ %reqout.01157, %sw.bb57 ], [ %reqout.01157, %sw.bb56 ], [ %reqout.01157, %sw.bb55 ], [ %reqout.01157, %sw.bb53 ], [ %reqout.01157, %sw.bb51 ], [ %reqout.01157, %sw.bb49 ], [ %reqout.01157, %sw.bb47 ], [ %reqout.01157, %sw.bb45 ], [ %reqout.01157, %sw.bb43 ], [ %reqout.01157, %sw.bb41 ], [ %reqout.01157, %sw.bb39 ], [ %reqout.01157, %sw.bb37 ], [ %reqout.01157, %sw.bb36 ], [ %reqout.01157, %sw.bb35 ], [ %reqout.01157, %sw.bb34 ], [ %reqout.01157, %sw.bb33 ], [ %reqout.01157, %sw.bb32 ], [ %reqout.01157, %sw.bb30 ], [ %reqout.01157, %sw.bb28 ], [ %reqout.01157, %sw.bb26 ], [ %reqout.01157, %sw.bb24 ], [ %reqout.01157, %sw.bb22 ], [ %reqout.01157, %if.end21 ], [ %reqout.01157, %sw.bb13 ], [ %reqout.01157, %sw.bb11 ], [ %reqout.01157, %if.end131 ], [ %reqout.01157, %if.end148 ], [ %reqout.01157, %if.end215 ]
  %respout.1 = phi i8* [ %respout.01158, %while.body ], [ %respout.01158, %sw.bb221 ], [ %respout.01158, %sw.bb205 ], [ %respout.01158, %if.end200 ], [ %respout.01158, %lor.lhs.false186 ], [ %respout.01158, %sw.bb178 ], [ %respout.01158, %sw.bb176 ], [ %respout.01158, %sw.bb174 ], [ %respout.01158, %sw.bb172 ], [ %respout.01158, %sw.bb170 ], [ %respout.01158, %sw.bb167 ], [ %respout.01158, %sw.bb165 ], [ %respout.01158, %sw.bb160 ], [ %respout.01158, %sw.bb158 ], [ %respout.01158, %sw.bb156 ], [ %respout.01158, %if.end111 ], [ %call98, %sw.bb97 ], [ %respout.01158, %sw.bb95 ], [ %respout.01158, %sw.bb93 ], [ %respout.01158, %sw.bb90 ], [ %respout.01158, %sw.bb87 ], [ %respout.01158, %if.end86 ], [ %respout.01158, %sw.bb225 ], [ %respout.01158, %sw.bb80 ], [ %respout.01158, %sw.bb79 ], [ %respout.01158, %sw.bb78 ], [ %respout.01158, %sw.bb76 ], [ %respout.01158, %sw.bb74 ], [ %respout.01158, %sw.bb72 ], [ %respout.01158, %sw.bb70 ], [ %respout.01158, %sw.bb68 ], [ %respout.01158, %sw.bb65 ], [ %respout.01158, %sw.bb63 ], [ %respout.01158, %sw.bb61 ], [ %respout.01158, %sw.bb59 ], [ %respout.01158, %sw.bb58 ], [ %respout.01158, %sw.bb57 ], [ %respout.01158, %sw.bb56 ], [ %respout.01158, %sw.bb55 ], [ %respout.01158, %sw.bb53 ], [ %respout.01158, %sw.bb51 ], [ %respout.01158, %sw.bb49 ], [ %respout.01158, %sw.bb47 ], [ %respout.01158, %sw.bb45 ], [ %respout.01158, %sw.bb43 ], [ %respout.01158, %sw.bb41 ], [ %respout.01158, %sw.bb39 ], [ %respout.01158, %sw.bb37 ], [ %respout.01158, %sw.bb36 ], [ %respout.01158, %sw.bb35 ], [ %respout.01158, %sw.bb34 ], [ %respout.01158, %sw.bb33 ], [ %respout.01158, %sw.bb32 ], [ %respout.01158, %sw.bb30 ], [ %respout.01158, %sw.bb28 ], [ %respout.01158, %sw.bb26 ], [ %respout.01158, %sw.bb24 ], [ %respout.01158, %sw.bb22 ], [ %respout.01158, %if.end21 ], [ %respout.01158, %sw.bb13 ], [ %respout.01158, %sw.bb11 ], [ %respout.01158, %if.end131 ], [ %respout.01158, %if.end148 ], [ %respout.01158, %if.end215 ]
  %ridx_filename.1 = phi i8* [ %ridx_filename.01159, %while.body ], [ %ridx_filename.01159, %sw.bb221 ], [ %ridx_filename.01159, %sw.bb205 ], [ %ridx_filename.01159, %if.end200 ], [ %ridx_filename.01159, %lor.lhs.false186 ], [ %ridx_filename.01159, %sw.bb178 ], [ %ridx_filename.01159, %sw.bb176 ], [ %ridx_filename.01159, %sw.bb174 ], [ %ridx_filename.01159, %sw.bb172 ], [ %ridx_filename.01159, %sw.bb170 ], [ %ridx_filename.01159, %sw.bb167 ], [ %ridx_filename.01159, %sw.bb165 ], [ %ridx_filename.01159, %sw.bb160 ], [ %ridx_filename.01159, %sw.bb158 ], [ %call157, %sw.bb156 ], [ %ridx_filename.01159, %if.end111 ], [ %ridx_filename.01159, %sw.bb97 ], [ %ridx_filename.01159, %sw.bb95 ], [ %ridx_filename.01159, %sw.bb93 ], [ %ridx_filename.01159, %sw.bb90 ], [ %ridx_filename.01159, %sw.bb87 ], [ %ridx_filename.01159, %if.end86 ], [ %ridx_filename.01159, %sw.bb225 ], [ %ridx_filename.01159, %sw.bb80 ], [ %ridx_filename.01159, %sw.bb79 ], [ %ridx_filename.01159, %sw.bb78 ], [ %ridx_filename.01159, %sw.bb76 ], [ %ridx_filename.01159, %sw.bb74 ], [ %ridx_filename.01159, %sw.bb72 ], [ %ridx_filename.01159, %sw.bb70 ], [ %ridx_filename.01159, %sw.bb68 ], [ %ridx_filename.01159, %sw.bb65 ], [ %ridx_filename.01159, %sw.bb63 ], [ %ridx_filename.01159, %sw.bb61 ], [ %ridx_filename.01159, %sw.bb59 ], [ %ridx_filename.01159, %sw.bb58 ], [ %ridx_filename.01159, %sw.bb57 ], [ %ridx_filename.01159, %sw.bb56 ], [ %ridx_filename.01159, %sw.bb55 ], [ %ridx_filename.01159, %sw.bb53 ], [ %ridx_filename.01159, %sw.bb51 ], [ %ridx_filename.01159, %sw.bb49 ], [ %ridx_filename.01159, %sw.bb47 ], [ %ridx_filename.01159, %sw.bb45 ], [ %ridx_filename.01159, %sw.bb43 ], [ %ridx_filename.01159, %sw.bb41 ], [ %ridx_filename.01159, %sw.bb39 ], [ %ridx_filename.01159, %sw.bb37 ], [ %ridx_filename.01159, %sw.bb36 ], [ %ridx_filename.01159, %sw.bb35 ], [ %ridx_filename.01159, %sw.bb34 ], [ %ridx_filename.01159, %sw.bb33 ], [ %ridx_filename.01159, %sw.bb32 ], [ %ridx_filename.01159, %sw.bb30 ], [ %ridx_filename.01159, %sw.bb28 ], [ %ridx_filename.01159, %sw.bb26 ], [ %ridx_filename.01159, %sw.bb24 ], [ %ridx_filename.01159, %sw.bb22 ], [ %ridx_filename.01159, %if.end21 ], [ %ridx_filename.01159, %sw.bb13 ], [ %ridx_filename.01159, %sw.bb11 ], [ %ridx_filename.01159, %if.end131 ], [ %ridx_filename.01159, %if.end148 ], [ %ridx_filename.01159, %if.end215 ]
  %rsignfile.1 = phi i8* [ %rsignfile.01160, %while.body ], [ %rsignfile.01160, %sw.bb221 ], [ %rsignfile.01160, %sw.bb205 ], [ %rsignfile.01160, %if.end200 ], [ %rsignfile.01160, %lor.lhs.false186 ], [ %rsignfile.01160, %sw.bb178 ], [ %rsignfile.01160, %sw.bb176 ], [ %rsignfile.01160, %sw.bb174 ], [ %rsignfile.01160, %sw.bb172 ], [ %call171, %sw.bb170 ], [ %rsignfile.01160, %sw.bb167 ], [ %rsignfile.01160, %sw.bb165 ], [ %rsignfile.01160, %sw.bb160 ], [ %rsignfile.01160, %sw.bb158 ], [ %rsignfile.01160, %sw.bb156 ], [ %rsignfile.01160, %if.end111 ], [ %rsignfile.01160, %sw.bb97 ], [ %rsignfile.01160, %sw.bb95 ], [ %rsignfile.01160, %sw.bb93 ], [ %rsignfile.01160, %sw.bb90 ], [ %rsignfile.01160, %sw.bb87 ], [ %rsignfile.01160, %if.end86 ], [ %rsignfile.01160, %sw.bb225 ], [ %rsignfile.01160, %sw.bb80 ], [ %rsignfile.01160, %sw.bb79 ], [ %rsignfile.01160, %sw.bb78 ], [ %rsignfile.01160, %sw.bb76 ], [ %rsignfile.01160, %sw.bb74 ], [ %rsignfile.01160, %sw.bb72 ], [ %rsignfile.01160, %sw.bb70 ], [ %rsignfile.01160, %sw.bb68 ], [ %rsignfile.01160, %sw.bb65 ], [ %rsignfile.01160, %sw.bb63 ], [ %rsignfile.01160, %sw.bb61 ], [ %rsignfile.01160, %sw.bb59 ], [ %rsignfile.01160, %sw.bb58 ], [ %rsignfile.01160, %sw.bb57 ], [ %rsignfile.01160, %sw.bb56 ], [ %rsignfile.01160, %sw.bb55 ], [ %rsignfile.01160, %sw.bb53 ], [ %rsignfile.01160, %sw.bb51 ], [ %rsignfile.01160, %sw.bb49 ], [ %rsignfile.01160, %sw.bb47 ], [ %rsignfile.01160, %sw.bb45 ], [ %rsignfile.01160, %sw.bb43 ], [ %rsignfile.01160, %sw.bb41 ], [ %rsignfile.01160, %sw.bb39 ], [ %rsignfile.01160, %sw.bb37 ], [ %rsignfile.01160, %sw.bb36 ], [ %rsignfile.01160, %sw.bb35 ], [ %rsignfile.01160, %sw.bb34 ], [ %rsignfile.01160, %sw.bb33 ], [ %rsignfile.01160, %sw.bb32 ], [ %rsignfile.01160, %sw.bb30 ], [ %rsignfile.01160, %sw.bb28 ], [ %rsignfile.01160, %sw.bb26 ], [ %rsignfile.01160, %sw.bb24 ], [ %rsignfile.01160, %sw.bb22 ], [ %rsignfile.01160, %if.end21 ], [ %rsignfile.01160, %sw.bb13 ], [ %rsignfile.01160, %sw.bb11 ], [ %rsignfile.01160, %if.end131 ], [ %rsignfile.01160, %if.end148 ], [ %rsignfile.01160, %if.end215 ]
  %rkeyfile.1 = phi i8* [ %rkeyfile.01161, %while.body ], [ %rkeyfile.01161, %sw.bb221 ], [ %rkeyfile.01161, %sw.bb205 ], [ %rkeyfile.01161, %if.end200 ], [ %rkeyfile.01161, %lor.lhs.false186 ], [ %rkeyfile.01161, %sw.bb178 ], [ %rkeyfile.01161, %sw.bb176 ], [ %rkeyfile.01161, %sw.bb174 ], [ %call173, %sw.bb172 ], [ %rkeyfile.01161, %sw.bb170 ], [ %rkeyfile.01161, %sw.bb167 ], [ %rkeyfile.01161, %sw.bb165 ], [ %rkeyfile.01161, %sw.bb160 ], [ %rkeyfile.01161, %sw.bb158 ], [ %rkeyfile.01161, %sw.bb156 ], [ %rkeyfile.01161, %if.end111 ], [ %rkeyfile.01161, %sw.bb97 ], [ %rkeyfile.01161, %sw.bb95 ], [ %rkeyfile.01161, %sw.bb93 ], [ %rkeyfile.01161, %sw.bb90 ], [ %rkeyfile.01161, %sw.bb87 ], [ %rkeyfile.01161, %if.end86 ], [ %rkeyfile.01161, %sw.bb225 ], [ %rkeyfile.01161, %sw.bb80 ], [ %rkeyfile.01161, %sw.bb79 ], [ %rkeyfile.01161, %sw.bb78 ], [ %rkeyfile.01161, %sw.bb76 ], [ %rkeyfile.01161, %sw.bb74 ], [ %rkeyfile.01161, %sw.bb72 ], [ %rkeyfile.01161, %sw.bb70 ], [ %rkeyfile.01161, %sw.bb68 ], [ %rkeyfile.01161, %sw.bb65 ], [ %rkeyfile.01161, %sw.bb63 ], [ %rkeyfile.01161, %sw.bb61 ], [ %rkeyfile.01161, %sw.bb59 ], [ %rkeyfile.01161, %sw.bb58 ], [ %rkeyfile.01161, %sw.bb57 ], [ %rkeyfile.01161, %sw.bb56 ], [ %rkeyfile.01161, %sw.bb55 ], [ %rkeyfile.01161, %sw.bb53 ], [ %rkeyfile.01161, %sw.bb51 ], [ %rkeyfile.01161, %sw.bb49 ], [ %rkeyfile.01161, %sw.bb47 ], [ %rkeyfile.01161, %sw.bb45 ], [ %rkeyfile.01161, %sw.bb43 ], [ %rkeyfile.01161, %sw.bb41 ], [ %rkeyfile.01161, %sw.bb39 ], [ %rkeyfile.01161, %sw.bb37 ], [ %rkeyfile.01161, %sw.bb36 ], [ %rkeyfile.01161, %sw.bb35 ], [ %rkeyfile.01161, %sw.bb34 ], [ %rkeyfile.01161, %sw.bb33 ], [ %rkeyfile.01161, %sw.bb32 ], [ %rkeyfile.01161, %sw.bb30 ], [ %rkeyfile.01161, %sw.bb28 ], [ %rkeyfile.01161, %sw.bb26 ], [ %rkeyfile.01161, %sw.bb24 ], [ %rkeyfile.01161, %sw.bb22 ], [ %rkeyfile.01161, %if.end21 ], [ %rkeyfile.01161, %sw.bb13 ], [ %rkeyfile.01161, %sw.bb11 ], [ %rkeyfile.01161, %if.end131 ], [ %rkeyfile.01161, %if.end148 ], [ %rkeyfile.01161, %if.end215 ]
  %passinarg.1 = phi i8* [ %passinarg.01162, %while.body ], [ %passinarg.01162, %sw.bb221 ], [ %passinarg.01162, %sw.bb205 ], [ %passinarg.01162, %if.end200 ], [ %passinarg.01162, %lor.lhs.false186 ], [ %passinarg.01162, %sw.bb178 ], [ %passinarg.01162, %sw.bb176 ], [ %call175, %sw.bb174 ], [ %passinarg.01162, %sw.bb172 ], [ %passinarg.01162, %sw.bb170 ], [ %passinarg.01162, %sw.bb167 ], [ %passinarg.01162, %sw.bb165 ], [ %passinarg.01162, %sw.bb160 ], [ %passinarg.01162, %sw.bb158 ], [ %passinarg.01162, %sw.bb156 ], [ %passinarg.01162, %if.end111 ], [ %passinarg.01162, %sw.bb97 ], [ %passinarg.01162, %sw.bb95 ], [ %passinarg.01162, %sw.bb93 ], [ %passinarg.01162, %sw.bb90 ], [ %passinarg.01162, %sw.bb87 ], [ %passinarg.01162, %if.end86 ], [ %passinarg.01162, %sw.bb225 ], [ %passinarg.01162, %sw.bb80 ], [ %passinarg.01162, %sw.bb79 ], [ %passinarg.01162, %sw.bb78 ], [ %passinarg.01162, %sw.bb76 ], [ %passinarg.01162, %sw.bb74 ], [ %passinarg.01162, %sw.bb72 ], [ %passinarg.01162, %sw.bb70 ], [ %passinarg.01162, %sw.bb68 ], [ %passinarg.01162, %sw.bb65 ], [ %passinarg.01162, %sw.bb63 ], [ %passinarg.01162, %sw.bb61 ], [ %passinarg.01162, %sw.bb59 ], [ %passinarg.01162, %sw.bb58 ], [ %passinarg.01162, %sw.bb57 ], [ %passinarg.01162, %sw.bb56 ], [ %passinarg.01162, %sw.bb55 ], [ %passinarg.01162, %sw.bb53 ], [ %passinarg.01162, %sw.bb51 ], [ %passinarg.01162, %sw.bb49 ], [ %passinarg.01162, %sw.bb47 ], [ %passinarg.01162, %sw.bb45 ], [ %passinarg.01162, %sw.bb43 ], [ %passinarg.01162, %sw.bb41 ], [ %passinarg.01162, %sw.bb39 ], [ %passinarg.01162, %sw.bb37 ], [ %passinarg.01162, %sw.bb36 ], [ %passinarg.01162, %sw.bb35 ], [ %passinarg.01162, %sw.bb34 ], [ %passinarg.01162, %sw.bb33 ], [ %passinarg.01162, %sw.bb32 ], [ %passinarg.01162, %sw.bb30 ], [ %passinarg.01162, %sw.bb28 ], [ %passinarg.01162, %sw.bb26 ], [ %passinarg.01162, %sw.bb24 ], [ %passinarg.01162, %sw.bb22 ], [ %passinarg.01162, %if.end21 ], [ %passinarg.01162, %sw.bb13 ], [ %passinarg.01162, %sw.bb11 ], [ %passinarg.01162, %if.end131 ], [ %passinarg.01162, %if.end148 ], [ %passinarg.01162, %if.end215 ]
  %sign_certfile.1 = phi i8* [ %sign_certfile.01163, %while.body ], [ %sign_certfile.01163, %sw.bb221 ], [ %sign_certfile.01163, %sw.bb205 ], [ %sign_certfile.01163, %if.end200 ], [ %sign_certfile.01163, %lor.lhs.false186 ], [ %sign_certfile.01163, %sw.bb178 ], [ %sign_certfile.01163, %sw.bb176 ], [ %sign_certfile.01163, %sw.bb174 ], [ %sign_certfile.01163, %sw.bb172 ], [ %sign_certfile.01163, %sw.bb170 ], [ %sign_certfile.01163, %sw.bb167 ], [ %sign_certfile.01163, %sw.bb165 ], [ %sign_certfile.01163, %sw.bb160 ], [ %sign_certfile.01163, %sw.bb158 ], [ %sign_certfile.01163, %sw.bb156 ], [ %sign_certfile.01163, %if.end111 ], [ %sign_certfile.01163, %sw.bb97 ], [ %sign_certfile.01163, %sw.bb95 ], [ %sign_certfile.01163, %sw.bb93 ], [ %sign_certfile.01163, %sw.bb90 ], [ %sign_certfile.01163, %sw.bb87 ], [ %sign_certfile.01163, %if.end86 ], [ %sign_certfile.01163, %sw.bb225 ], [ %sign_certfile.01163, %sw.bb80 ], [ %sign_certfile.01163, %sw.bb79 ], [ %sign_certfile.01163, %sw.bb78 ], [ %sign_certfile.01163, %sw.bb76 ], [ %sign_certfile.01163, %sw.bb74 ], [ %sign_certfile.01163, %sw.bb72 ], [ %sign_certfile.01163, %sw.bb70 ], [ %call69, %sw.bb68 ], [ %sign_certfile.01163, %sw.bb65 ], [ %sign_certfile.01163, %sw.bb63 ], [ %sign_certfile.01163, %sw.bb61 ], [ %sign_certfile.01163, %sw.bb59 ], [ %sign_certfile.01163, %sw.bb58 ], [ %sign_certfile.01163, %sw.bb57 ], [ %sign_certfile.01163, %sw.bb56 ], [ %sign_certfile.01163, %sw.bb55 ], [ %sign_certfile.01163, %sw.bb53 ], [ %sign_certfile.01163, %sw.bb51 ], [ %sign_certfile.01163, %sw.bb49 ], [ %sign_certfile.01163, %sw.bb47 ], [ %sign_certfile.01163, %sw.bb45 ], [ %sign_certfile.01163, %sw.bb43 ], [ %sign_certfile.01163, %sw.bb41 ], [ %sign_certfile.01163, %sw.bb39 ], [ %sign_certfile.01163, %sw.bb37 ], [ %sign_certfile.01163, %sw.bb36 ], [ %sign_certfile.01163, %sw.bb35 ], [ %sign_certfile.01163, %sw.bb34 ], [ %sign_certfile.01163, %sw.bb33 ], [ %sign_certfile.01163, %sw.bb32 ], [ %sign_certfile.01163, %sw.bb30 ], [ %sign_certfile.01163, %sw.bb28 ], [ %sign_certfile.01163, %sw.bb26 ], [ %sign_certfile.01163, %sw.bb24 ], [ %sign_certfile.01163, %sw.bb22 ], [ %sign_certfile.01163, %if.end21 ], [ %sign_certfile.01163, %sw.bb13 ], [ %sign_certfile.01163, %sw.bb11 ], [ %sign_certfile.01163, %if.end131 ], [ %sign_certfile.01163, %if.end148 ], [ %sign_certfile.01163, %if.end215 ]
  %verify_certfile.1 = phi i8* [ %verify_certfile.01164, %while.body ], [ %verify_certfile.01164, %sw.bb221 ], [ %verify_certfile.01164, %sw.bb205 ], [ %verify_certfile.01164, %if.end200 ], [ %verify_certfile.01164, %lor.lhs.false186 ], [ %verify_certfile.01164, %sw.bb178 ], [ %verify_certfile.01164, %sw.bb176 ], [ %verify_certfile.01164, %sw.bb174 ], [ %verify_certfile.01164, %sw.bb172 ], [ %verify_certfile.01164, %sw.bb170 ], [ %verify_certfile.01164, %sw.bb167 ], [ %verify_certfile.01164, %sw.bb165 ], [ %verify_certfile.01164, %sw.bb160 ], [ %verify_certfile.01164, %sw.bb158 ], [ %verify_certfile.01164, %sw.bb156 ], [ %verify_certfile.01164, %if.end111 ], [ %verify_certfile.01164, %sw.bb97 ], [ %verify_certfile.01164, %sw.bb95 ], [ %verify_certfile.01164, %sw.bb93 ], [ %verify_certfile.01164, %sw.bb90 ], [ %verify_certfile.01164, %sw.bb87 ], [ %verify_certfile.01164, %if.end86 ], [ %verify_certfile.01164, %sw.bb225 ], [ %verify_certfile.01164, %sw.bb80 ], [ %verify_certfile.01164, %sw.bb79 ], [ %verify_certfile.01164, %sw.bb78 ], [ %verify_certfile.01164, %sw.bb76 ], [ %verify_certfile.01164, %sw.bb74 ], [ %verify_certfile.01164, %sw.bb72 ], [ %call71, %sw.bb70 ], [ %verify_certfile.01164, %sw.bb68 ], [ %call66, %sw.bb65 ], [ %verify_certfile.01164, %sw.bb63 ], [ %verify_certfile.01164, %sw.bb61 ], [ %verify_certfile.01164, %sw.bb59 ], [ %verify_certfile.01164, %sw.bb58 ], [ %verify_certfile.01164, %sw.bb57 ], [ %verify_certfile.01164, %sw.bb56 ], [ %verify_certfile.01164, %sw.bb55 ], [ %verify_certfile.01164, %sw.bb53 ], [ %verify_certfile.01164, %sw.bb51 ], [ %verify_certfile.01164, %sw.bb49 ], [ %verify_certfile.01164, %sw.bb47 ], [ %verify_certfile.01164, %sw.bb45 ], [ %verify_certfile.01164, %sw.bb43 ], [ %verify_certfile.01164, %sw.bb41 ], [ %verify_certfile.01164, %sw.bb39 ], [ %verify_certfile.01164, %sw.bb37 ], [ %verify_certfile.01164, %sw.bb36 ], [ %verify_certfile.01164, %sw.bb35 ], [ %verify_certfile.01164, %sw.bb34 ], [ %verify_certfile.01164, %sw.bb33 ], [ %verify_certfile.01164, %sw.bb32 ], [ %verify_certfile.01164, %sw.bb30 ], [ %verify_certfile.01164, %sw.bb28 ], [ %verify_certfile.01164, %sw.bb26 ], [ %verify_certfile.01164, %sw.bb24 ], [ %verify_certfile.01164, %sw.bb22 ], [ %verify_certfile.01164, %if.end21 ], [ %verify_certfile.01164, %sw.bb13 ], [ %verify_certfile.01164, %sw.bb11 ], [ %verify_certfile.01164, %if.end131 ], [ %verify_certfile.01164, %if.end148 ], [ %verify_certfile.01164, %if.end215 ]
  %rcertfile.1 = phi i8* [ %rcertfile.01165, %while.body ], [ %rcertfile.01165, %sw.bb221 ], [ %rcertfile.01165, %sw.bb205 ], [ %rcertfile.01165, %if.end200 ], [ %rcertfile.01165, %lor.lhs.false186 ], [ %rcertfile.01165, %sw.bb178 ], [ %call177, %sw.bb176 ], [ %rcertfile.01165, %sw.bb174 ], [ %rcertfile.01165, %sw.bb172 ], [ %rcertfile.01165, %sw.bb170 ], [ %rcertfile.01165, %sw.bb167 ], [ %rcertfile.01165, %sw.bb165 ], [ %rcertfile.01165, %sw.bb160 ], [ %rcertfile.01165, %sw.bb158 ], [ %rcertfile.01165, %sw.bb156 ], [ %rcertfile.01165, %if.end111 ], [ %rcertfile.01165, %sw.bb97 ], [ %rcertfile.01165, %sw.bb95 ], [ %rcertfile.01165, %sw.bb93 ], [ %rcertfile.01165, %sw.bb90 ], [ %rcertfile.01165, %sw.bb87 ], [ %rcertfile.01165, %if.end86 ], [ %rcertfile.01165, %sw.bb225 ], [ %rcertfile.01165, %sw.bb80 ], [ %rcertfile.01165, %sw.bb79 ], [ %rcertfile.01165, %sw.bb78 ], [ %rcertfile.01165, %sw.bb76 ], [ %rcertfile.01165, %sw.bb74 ], [ %rcertfile.01165, %sw.bb72 ], [ %rcertfile.01165, %sw.bb70 ], [ %rcertfile.01165, %sw.bb68 ], [ %rcertfile.01165, %sw.bb65 ], [ %rcertfile.01165, %sw.bb63 ], [ %rcertfile.01165, %sw.bb61 ], [ %rcertfile.01165, %sw.bb59 ], [ %rcertfile.01165, %sw.bb58 ], [ %rcertfile.01165, %sw.bb57 ], [ %rcertfile.01165, %sw.bb56 ], [ %rcertfile.01165, %sw.bb55 ], [ %rcertfile.01165, %sw.bb53 ], [ %rcertfile.01165, %sw.bb51 ], [ %rcertfile.01165, %sw.bb49 ], [ %rcertfile.01165, %sw.bb47 ], [ %rcertfile.01165, %sw.bb45 ], [ %rcertfile.01165, %sw.bb43 ], [ %rcertfile.01165, %sw.bb41 ], [ %rcertfile.01165, %sw.bb39 ], [ %rcertfile.01165, %sw.bb37 ], [ %rcertfile.01165, %sw.bb36 ], [ %rcertfile.01165, %sw.bb35 ], [ %rcertfile.01165, %sw.bb34 ], [ %rcertfile.01165, %sw.bb33 ], [ %rcertfile.01165, %sw.bb32 ], [ %rcertfile.01165, %sw.bb30 ], [ %rcertfile.01165, %sw.bb28 ], [ %rcertfile.01165, %sw.bb26 ], [ %rcertfile.01165, %sw.bb24 ], [ %rcertfile.01165, %sw.bb22 ], [ %rcertfile.01165, %if.end21 ], [ %rcertfile.01165, %sw.bb13 ], [ %rcertfile.01165, %sw.bb11 ], [ %rcertfile.01165, %if.end131 ], [ %rcertfile.01165, %if.end148 ], [ %rcertfile.01165, %if.end215 ]
  %signfile.1 = phi i8* [ %signfile.01166, %while.body ], [ %signfile.01166, %sw.bb221 ], [ %signfile.01166, %sw.bb205 ], [ %signfile.01166, %if.end200 ], [ %signfile.01166, %lor.lhs.false186 ], [ %signfile.01166, %sw.bb178 ], [ %signfile.01166, %sw.bb176 ], [ %signfile.01166, %sw.bb174 ], [ %signfile.01166, %sw.bb172 ], [ %signfile.01166, %sw.bb170 ], [ %signfile.01166, %sw.bb167 ], [ %signfile.01166, %sw.bb165 ], [ %signfile.01166, %sw.bb160 ], [ %signfile.01166, %sw.bb158 ], [ %signfile.01166, %sw.bb156 ], [ %signfile.01166, %if.end111 ], [ %signfile.01166, %sw.bb97 ], [ %signfile.01166, %sw.bb95 ], [ %signfile.01166, %sw.bb93 ], [ %signfile.01166, %sw.bb90 ], [ %signfile.01166, %sw.bb87 ], [ %signfile.01166, %if.end86 ], [ %signfile.01166, %sw.bb225 ], [ %signfile.01166, %sw.bb80 ], [ %signfile.01166, %sw.bb79 ], [ %signfile.01166, %sw.bb78 ], [ %signfile.01166, %sw.bb76 ], [ %signfile.01166, %sw.bb74 ], [ %signfile.01166, %sw.bb72 ], [ %signfile.01166, %sw.bb70 ], [ %signfile.01166, %sw.bb68 ], [ %signfile.01166, %sw.bb65 ], [ %call64, %sw.bb63 ], [ %signfile.01166, %sw.bb61 ], [ %signfile.01166, %sw.bb59 ], [ %signfile.01166, %sw.bb58 ], [ %signfile.01166, %sw.bb57 ], [ %signfile.01166, %sw.bb56 ], [ %signfile.01166, %sw.bb55 ], [ %signfile.01166, %sw.bb53 ], [ %signfile.01166, %sw.bb51 ], [ %signfile.01166, %sw.bb49 ], [ %signfile.01166, %sw.bb47 ], [ %signfile.01166, %sw.bb45 ], [ %signfile.01166, %sw.bb43 ], [ %signfile.01166, %sw.bb41 ], [ %signfile.01166, %sw.bb39 ], [ %signfile.01166, %sw.bb37 ], [ %signfile.01166, %sw.bb36 ], [ %signfile.01166, %sw.bb35 ], [ %signfile.01166, %sw.bb34 ], [ %signfile.01166, %sw.bb33 ], [ %signfile.01166, %sw.bb32 ], [ %signfile.01166, %sw.bb30 ], [ %signfile.01166, %sw.bb28 ], [ %signfile.01166, %sw.bb26 ], [ %signfile.01166, %sw.bb24 ], [ %signfile.01166, %sw.bb22 ], [ %signfile.01166, %if.end21 ], [ %signfile.01166, %sw.bb13 ], [ %signfile.01166, %sw.bb11 ], [ %signfile.01166, %if.end131 ], [ %signfile.01166, %if.end148 ], [ %signfile.01166, %if.end215 ]
  %keyfile.1 = phi i8* [ %keyfile.01167, %while.body ], [ %keyfile.01167, %sw.bb221 ], [ %keyfile.01167, %sw.bb205 ], [ %keyfile.01167, %if.end200 ], [ %keyfile.01167, %lor.lhs.false186 ], [ %keyfile.01167, %sw.bb178 ], [ %keyfile.01167, %sw.bb176 ], [ %keyfile.01167, %sw.bb174 ], [ %keyfile.01167, %sw.bb172 ], [ %keyfile.01167, %sw.bb170 ], [ %keyfile.01167, %sw.bb167 ], [ %keyfile.01167, %sw.bb165 ], [ %keyfile.01167, %sw.bb160 ], [ %keyfile.01167, %sw.bb158 ], [ %keyfile.01167, %sw.bb156 ], [ %keyfile.01167, %if.end111 ], [ %keyfile.01167, %sw.bb97 ], [ %keyfile.01167, %sw.bb95 ], [ %call94, %sw.bb93 ], [ %keyfile.01167, %sw.bb90 ], [ %keyfile.01167, %sw.bb87 ], [ %keyfile.01167, %if.end86 ], [ %keyfile.01167, %sw.bb225 ], [ %keyfile.01167, %sw.bb80 ], [ %keyfile.01167, %sw.bb79 ], [ %keyfile.01167, %sw.bb78 ], [ %keyfile.01167, %sw.bb76 ], [ %keyfile.01167, %sw.bb74 ], [ %keyfile.01167, %sw.bb72 ], [ %keyfile.01167, %sw.bb70 ], [ %keyfile.01167, %sw.bb68 ], [ %keyfile.01167, %sw.bb65 ], [ %keyfile.01167, %sw.bb63 ], [ %keyfile.01167, %sw.bb61 ], [ %keyfile.01167, %sw.bb59 ], [ %keyfile.01167, %sw.bb58 ], [ %keyfile.01167, %sw.bb57 ], [ %keyfile.01167, %sw.bb56 ], [ %keyfile.01167, %sw.bb55 ], [ %keyfile.01167, %sw.bb53 ], [ %keyfile.01167, %sw.bb51 ], [ %keyfile.01167, %sw.bb49 ], [ %keyfile.01167, %sw.bb47 ], [ %keyfile.01167, %sw.bb45 ], [ %keyfile.01167, %sw.bb43 ], [ %keyfile.01167, %sw.bb41 ], [ %keyfile.01167, %sw.bb39 ], [ %keyfile.01167, %sw.bb37 ], [ %keyfile.01167, %sw.bb36 ], [ %keyfile.01167, %sw.bb35 ], [ %keyfile.01167, %sw.bb34 ], [ %keyfile.01167, %sw.bb33 ], [ %keyfile.01167, %sw.bb32 ], [ %keyfile.01167, %sw.bb30 ], [ %keyfile.01167, %sw.bb28 ], [ %keyfile.01167, %sw.bb26 ], [ %keyfile.01167, %sw.bb24 ], [ %keyfile.01167, %sw.bb22 ], [ %keyfile.01167, %if.end21 ], [ %keyfile.01167, %sw.bb13 ], [ %keyfile.01167, %sw.bb11 ], [ %keyfile.01167, %if.end131 ], [ %keyfile.01167, %if.end148 ], [ %keyfile.01167, %if.end215 ]
  %thost.1 = phi i8* [ %thost.01168, %while.body ], [ %thost.01168, %sw.bb221 ], [ %thost.01168, %sw.bb205 ], [ %thost.01168, %if.end200 ], [ %thost.01168, %lor.lhs.false186 ], [ %thost.01168, %sw.bb178 ], [ %thost.01168, %sw.bb176 ], [ %thost.01168, %sw.bb174 ], [ %thost.01168, %sw.bb172 ], [ %thost.01168, %sw.bb170 ], [ %thost.01168, %sw.bb167 ], [ %thost.01168, %sw.bb165 ], [ %thost.01168, %sw.bb160 ], [ %thost.01168, %sw.bb158 ], [ %thost.01168, %sw.bb156 ], [ %thost.01168, %if.end111 ], [ %thost.01168, %sw.bb97 ], [ %thost.01168, %sw.bb95 ], [ %thost.01168, %sw.bb93 ], [ %thost.01168, %sw.bb90 ], [ %thost.01168, %sw.bb87 ], [ %thost.01168, %if.end86 ], [ %thost.01168, %sw.bb225 ], [ %thost.01168, %sw.bb80 ], [ %thost.01168, %sw.bb79 ], [ %thost.01168, %sw.bb78 ], [ %thost.01168, %sw.bb76 ], [ %thost.01168, %sw.bb74 ], [ %thost.01168, %sw.bb72 ], [ %thost.01168, %sw.bb70 ], [ %thost.01168, %sw.bb68 ], [ %thost.01168, %sw.bb65 ], [ %thost.01168, %sw.bb63 ], [ %thost.01168, %sw.bb61 ], [ %thost.01168, %sw.bb59 ], [ %thost.01168, %sw.bb58 ], [ %thost.01168, %sw.bb57 ], [ %thost.01168, %sw.bb56 ], [ %thost.01168, %sw.bb55 ], [ %thost.01168, %sw.bb53 ], [ %thost.01168, %sw.bb51 ], [ %thost.01168, %sw.bb49 ], [ %thost.01168, %sw.bb47 ], [ %thost.01168, %sw.bb45 ], [ %thost.01168, %sw.bb43 ], [ %thost.01168, %sw.bb41 ], [ %thost.01168, %sw.bb39 ], [ %thost.01168, %sw.bb37 ], [ %thost.01168, %sw.bb36 ], [ %thost.01168, %sw.bb35 ], [ %thost.01168, %sw.bb34 ], [ %thost.01168, %sw.bb33 ], [ %thost.01168, %sw.bb32 ], [ %thost.01168, %sw.bb30 ], [ %thost.01168, %sw.bb28 ], [ %thost.01168, %sw.bb26 ], [ %thost.01168, %sw.bb24 ], [ %thost.01168, %sw.bb22 ], [ %24, %if.end21 ], [ %thost.01168, %sw.bb13 ], [ %thost.01168, %sw.bb11 ], [ %thost.01168, %if.end131 ], [ %thost.01168, %if.end148 ], [ %thost.01168, %if.end215 ]
  %tport.1 = phi i8* [ %tport.01170, %while.body ], [ %tport.01170, %sw.bb221 ], [ %tport.01170, %sw.bb205 ], [ %tport.01170, %if.end200 ], [ %tport.01170, %lor.lhs.false186 ], [ %tport.01170, %sw.bb178 ], [ %tport.01170, %sw.bb176 ], [ %tport.01170, %sw.bb174 ], [ %tport.01170, %sw.bb172 ], [ %tport.01170, %sw.bb170 ], [ %tport.01170, %sw.bb167 ], [ %tport.01170, %sw.bb165 ], [ %tport.01170, %sw.bb160 ], [ %tport.01170, %sw.bb158 ], [ %tport.01170, %sw.bb156 ], [ %tport.01170, %if.end111 ], [ %tport.01170, %sw.bb97 ], [ %tport.01170, %sw.bb95 ], [ %tport.01170, %sw.bb93 ], [ %tport.01170, %sw.bb90 ], [ %tport.01170, %sw.bb87 ], [ %tport.01170, %if.end86 ], [ %tport.01170, %sw.bb225 ], [ %tport.01170, %sw.bb80 ], [ %tport.01170, %sw.bb79 ], [ %tport.01170, %sw.bb78 ], [ %tport.01170, %sw.bb76 ], [ %tport.01170, %sw.bb74 ], [ %tport.01170, %sw.bb72 ], [ %tport.01170, %sw.bb70 ], [ %tport.01170, %sw.bb68 ], [ %tport.01170, %sw.bb65 ], [ %tport.01170, %sw.bb63 ], [ %tport.01170, %sw.bb61 ], [ %tport.01170, %sw.bb59 ], [ %tport.01170, %sw.bb58 ], [ %tport.01170, %sw.bb57 ], [ %tport.01170, %sw.bb56 ], [ %tport.01170, %sw.bb55 ], [ %tport.01170, %sw.bb53 ], [ %tport.01170, %sw.bb51 ], [ %tport.01170, %sw.bb49 ], [ %tport.01170, %sw.bb47 ], [ %tport.01170, %sw.bb45 ], [ %tport.01170, %sw.bb43 ], [ %tport.01170, %sw.bb41 ], [ %tport.01170, %sw.bb39 ], [ %tport.01170, %sw.bb37 ], [ %tport.01170, %sw.bb36 ], [ %tport.01170, %sw.bb35 ], [ %tport.01170, %sw.bb34 ], [ %tport.01170, %sw.bb33 ], [ %tport.01170, %sw.bb32 ], [ %tport.01170, %sw.bb30 ], [ %tport.01170, %sw.bb28 ], [ %tport.01170, %sw.bb26 ], [ %tport.01170, %sw.bb24 ], [ %tport.01170, %sw.bb22 ], [ %25, %if.end21 ], [ %tport.01170, %sw.bb13 ], [ %tport.01170, %sw.bb11 ], [ %tport.01170, %if.end131 ], [ %tport.01170, %if.end148 ], [ %tport.01170, %if.end215 ]
  %tpath.1 = phi i8* [ %tpath.01172, %while.body ], [ %tpath.01172, %sw.bb221 ], [ %tpath.01172, %sw.bb205 ], [ %tpath.01172, %if.end200 ], [ %tpath.01172, %lor.lhs.false186 ], [ %tpath.01172, %sw.bb178 ], [ %tpath.01172, %sw.bb176 ], [ %tpath.01172, %sw.bb174 ], [ %tpath.01172, %sw.bb172 ], [ %tpath.01172, %sw.bb170 ], [ %tpath.01172, %sw.bb167 ], [ %tpath.01172, %sw.bb165 ], [ %tpath.01172, %sw.bb160 ], [ %tpath.01172, %sw.bb158 ], [ %tpath.01172, %sw.bb156 ], [ %tpath.01172, %if.end111 ], [ %tpath.01172, %sw.bb97 ], [ %tpath.01172, %sw.bb95 ], [ %tpath.01172, %sw.bb93 ], [ %tpath.01172, %sw.bb90 ], [ %tpath.01172, %sw.bb87 ], [ %tpath.01172, %if.end86 ], [ %tpath.01172, %sw.bb225 ], [ %tpath.01172, %sw.bb80 ], [ %tpath.01172, %sw.bb79 ], [ %tpath.01172, %sw.bb78 ], [ %tpath.01172, %sw.bb76 ], [ %tpath.01172, %sw.bb74 ], [ %tpath.01172, %sw.bb72 ], [ %tpath.01172, %sw.bb70 ], [ %tpath.01172, %sw.bb68 ], [ %tpath.01172, %sw.bb65 ], [ %tpath.01172, %sw.bb63 ], [ %tpath.01172, %sw.bb61 ], [ %tpath.01172, %sw.bb59 ], [ %tpath.01172, %sw.bb58 ], [ %tpath.01172, %sw.bb57 ], [ %tpath.01172, %sw.bb56 ], [ %tpath.01172, %sw.bb55 ], [ %tpath.01172, %sw.bb53 ], [ %tpath.01172, %sw.bb51 ], [ %tpath.01172, %sw.bb49 ], [ %tpath.01172, %sw.bb47 ], [ %tpath.01172, %sw.bb45 ], [ %tpath.01172, %sw.bb43 ], [ %tpath.01172, %sw.bb41 ], [ %tpath.01172, %sw.bb39 ], [ %tpath.01172, %sw.bb37 ], [ %tpath.01172, %sw.bb36 ], [ %tpath.01172, %sw.bb35 ], [ %tpath.01172, %sw.bb34 ], [ %tpath.01172, %sw.bb33 ], [ %tpath.01172, %sw.bb32 ], [ %tpath.01172, %sw.bb30 ], [ %tpath.01172, %sw.bb28 ], [ %tpath.01172, %sw.bb26 ], [ %tpath.01172, %sw.bb24 ], [ %tpath.01172, %sw.bb22 ], [ %26, %if.end21 ], [ %tpath.01172, %sw.bb13 ], [ %tpath.01172, %sw.bb11 ], [ %tpath.01172, %if.end131 ], [ %tpath.01172, %if.end148 ], [ %tpath.01172, %if.end215 ]
  %noCAfile.1 = phi i32 [ %noCAfile.01174, %while.body ], [ %noCAfile.01174, %sw.bb221 ], [ %noCAfile.01174, %sw.bb205 ], [ %noCAfile.01174, %if.end200 ], [ %noCAfile.01174, %lor.lhs.false186 ], [ %noCAfile.01174, %sw.bb178 ], [ %noCAfile.01174, %sw.bb176 ], [ %noCAfile.01174, %sw.bb174 ], [ %noCAfile.01174, %sw.bb172 ], [ %noCAfile.01174, %sw.bb170 ], [ %noCAfile.01174, %sw.bb167 ], [ %noCAfile.01174, %sw.bb165 ], [ %noCAfile.01174, %sw.bb160 ], [ %noCAfile.01174, %sw.bb158 ], [ %noCAfile.01174, %sw.bb156 ], [ %noCAfile.01174, %if.end111 ], [ %noCAfile.01174, %sw.bb97 ], [ %noCAfile.01174, %sw.bb95 ], [ %noCAfile.01174, %sw.bb93 ], [ %noCAfile.01174, %sw.bb90 ], [ %noCAfile.01174, %sw.bb87 ], [ %noCAfile.01174, %if.end86 ], [ %noCAfile.01174, %sw.bb225 ], [ %noCAfile.01174, %sw.bb80 ], [ %noCAfile.01174, %sw.bb79 ], [ 1, %sw.bb78 ], [ %noCAfile.01174, %sw.bb76 ], [ %noCAfile.01174, %sw.bb74 ], [ %noCAfile.01174, %sw.bb72 ], [ %noCAfile.01174, %sw.bb70 ], [ %noCAfile.01174, %sw.bb68 ], [ %noCAfile.01174, %sw.bb65 ], [ %noCAfile.01174, %sw.bb63 ], [ %noCAfile.01174, %sw.bb61 ], [ %noCAfile.01174, %sw.bb59 ], [ %noCAfile.01174, %sw.bb58 ], [ %noCAfile.01174, %sw.bb57 ], [ %noCAfile.01174, %sw.bb56 ], [ %noCAfile.01174, %sw.bb55 ], [ %noCAfile.01174, %sw.bb53 ], [ %noCAfile.01174, %sw.bb51 ], [ %noCAfile.01174, %sw.bb49 ], [ %noCAfile.01174, %sw.bb47 ], [ %noCAfile.01174, %sw.bb45 ], [ %noCAfile.01174, %sw.bb43 ], [ %noCAfile.01174, %sw.bb41 ], [ %noCAfile.01174, %sw.bb39 ], [ %noCAfile.01174, %sw.bb37 ], [ %noCAfile.01174, %sw.bb36 ], [ %noCAfile.01174, %sw.bb35 ], [ %noCAfile.01174, %sw.bb34 ], [ %noCAfile.01174, %sw.bb33 ], [ %noCAfile.01174, %sw.bb32 ], [ %noCAfile.01174, %sw.bb30 ], [ %noCAfile.01174, %sw.bb28 ], [ %noCAfile.01174, %sw.bb26 ], [ %noCAfile.01174, %sw.bb24 ], [ %noCAfile.01174, %sw.bb22 ], [ %noCAfile.01174, %if.end21 ], [ %noCAfile.01174, %sw.bb13 ], [ %noCAfile.01174, %sw.bb11 ], [ %noCAfile.01174, %if.end131 ], [ %noCAfile.01174, %if.end148 ], [ %noCAfile.01174, %if.end215 ]
  %noCApath.1 = phi i32 [ %noCApath.01175, %while.body ], [ %noCApath.01175, %sw.bb221 ], [ %noCApath.01175, %sw.bb205 ], [ %noCApath.01175, %if.end200 ], [ %noCApath.01175, %lor.lhs.false186 ], [ %noCApath.01175, %sw.bb178 ], [ %noCApath.01175, %sw.bb176 ], [ %noCApath.01175, %sw.bb174 ], [ %noCApath.01175, %sw.bb172 ], [ %noCApath.01175, %sw.bb170 ], [ %noCApath.01175, %sw.bb167 ], [ %noCApath.01175, %sw.bb165 ], [ %noCApath.01175, %sw.bb160 ], [ %noCApath.01175, %sw.bb158 ], [ %noCApath.01175, %sw.bb156 ], [ %noCApath.01175, %if.end111 ], [ %noCApath.01175, %sw.bb97 ], [ %noCApath.01175, %sw.bb95 ], [ %noCApath.01175, %sw.bb93 ], [ %noCApath.01175, %sw.bb90 ], [ %noCApath.01175, %sw.bb87 ], [ %noCApath.01175, %if.end86 ], [ %noCApath.01175, %sw.bb225 ], [ %noCApath.01175, %sw.bb80 ], [ 1, %sw.bb79 ], [ %noCApath.01175, %sw.bb78 ], [ %noCApath.01175, %sw.bb76 ], [ %noCApath.01175, %sw.bb74 ], [ %noCApath.01175, %sw.bb72 ], [ %noCApath.01175, %sw.bb70 ], [ %noCApath.01175, %sw.bb68 ], [ %noCApath.01175, %sw.bb65 ], [ %noCApath.01175, %sw.bb63 ], [ %noCApath.01175, %sw.bb61 ], [ %noCApath.01175, %sw.bb59 ], [ %noCApath.01175, %sw.bb58 ], [ %noCApath.01175, %sw.bb57 ], [ %noCApath.01175, %sw.bb56 ], [ %noCApath.01175, %sw.bb55 ], [ %noCApath.01175, %sw.bb53 ], [ %noCApath.01175, %sw.bb51 ], [ %noCApath.01175, %sw.bb49 ], [ %noCApath.01175, %sw.bb47 ], [ %noCApath.01175, %sw.bb45 ], [ %noCApath.01175, %sw.bb43 ], [ %noCApath.01175, %sw.bb41 ], [ %noCApath.01175, %sw.bb39 ], [ %noCApath.01175, %sw.bb37 ], [ %noCApath.01175, %sw.bb36 ], [ %noCApath.01175, %sw.bb35 ], [ %noCApath.01175, %sw.bb34 ], [ %noCApath.01175, %sw.bb33 ], [ %noCApath.01175, %sw.bb32 ], [ %noCApath.01175, %sw.bb30 ], [ %noCApath.01175, %sw.bb28 ], [ %noCApath.01175, %sw.bb26 ], [ %noCApath.01175, %sw.bb24 ], [ %noCApath.01175, %sw.bb22 ], [ %noCApath.01175, %if.end21 ], [ %noCApath.01175, %sw.bb13 ], [ %noCApath.01175, %sw.bb11 ], [ %noCApath.01175, %if.end131 ], [ %noCApath.01175, %if.end148 ], [ %noCApath.01175, %if.end215 ]
  %noCAstore.1 = phi i32 [ %noCAstore.01176, %while.body ], [ %noCAstore.01176, %sw.bb221 ], [ %noCAstore.01176, %sw.bb205 ], [ %noCAstore.01176, %if.end200 ], [ %noCAstore.01176, %lor.lhs.false186 ], [ %noCAstore.01176, %sw.bb178 ], [ %noCAstore.01176, %sw.bb176 ], [ %noCAstore.01176, %sw.bb174 ], [ %noCAstore.01176, %sw.bb172 ], [ %noCAstore.01176, %sw.bb170 ], [ %noCAstore.01176, %sw.bb167 ], [ %noCAstore.01176, %sw.bb165 ], [ %noCAstore.01176, %sw.bb160 ], [ %noCAstore.01176, %sw.bb158 ], [ %noCAstore.01176, %sw.bb156 ], [ %noCAstore.01176, %if.end111 ], [ %noCAstore.01176, %sw.bb97 ], [ %noCAstore.01176, %sw.bb95 ], [ %noCAstore.01176, %sw.bb93 ], [ %noCAstore.01176, %sw.bb90 ], [ %noCAstore.01176, %sw.bb87 ], [ %noCAstore.01176, %if.end86 ], [ %noCAstore.01176, %sw.bb225 ], [ 1, %sw.bb80 ], [ %noCAstore.01176, %sw.bb79 ], [ %noCAstore.01176, %sw.bb78 ], [ %noCAstore.01176, %sw.bb76 ], [ %noCAstore.01176, %sw.bb74 ], [ %noCAstore.01176, %sw.bb72 ], [ %noCAstore.01176, %sw.bb70 ], [ %noCAstore.01176, %sw.bb68 ], [ %noCAstore.01176, %sw.bb65 ], [ %noCAstore.01176, %sw.bb63 ], [ %noCAstore.01176, %sw.bb61 ], [ %noCAstore.01176, %sw.bb59 ], [ %noCAstore.01176, %sw.bb58 ], [ %noCAstore.01176, %sw.bb57 ], [ %noCAstore.01176, %sw.bb56 ], [ %noCAstore.01176, %sw.bb55 ], [ %noCAstore.01176, %sw.bb53 ], [ %noCAstore.01176, %sw.bb51 ], [ %noCAstore.01176, %sw.bb49 ], [ %noCAstore.01176, %sw.bb47 ], [ %noCAstore.01176, %sw.bb45 ], [ %noCAstore.01176, %sw.bb43 ], [ %noCAstore.01176, %sw.bb41 ], [ %noCAstore.01176, %sw.bb39 ], [ %noCAstore.01176, %sw.bb37 ], [ %noCAstore.01176, %sw.bb36 ], [ %noCAstore.01176, %sw.bb35 ], [ %noCAstore.01176, %sw.bb34 ], [ %noCAstore.01176, %sw.bb33 ], [ %noCAstore.01176, %sw.bb32 ], [ %noCAstore.01176, %sw.bb30 ], [ %noCAstore.01176, %sw.bb28 ], [ %noCAstore.01176, %sw.bb26 ], [ %noCAstore.01176, %sw.bb24 ], [ %noCAstore.01176, %sw.bb22 ], [ %noCAstore.01176, %if.end21 ], [ %noCAstore.01176, %sw.bb13 ], [ %noCAstore.01176, %sw.bb11 ], [ %noCAstore.01176, %if.end131 ], [ %noCAstore.01176, %if.end148 ], [ %noCAstore.01176, %if.end215 ]
  %accept_count.1 = phi i32 [ %accept_count.01177, %while.body ], [ %accept_count.01177, %sw.bb221 ], [ %accept_count.01177, %sw.bb205 ], [ %accept_count.01177, %if.end200 ], [ %accept_count.01177, %lor.lhs.false186 ], [ %accept_count.01177, %sw.bb178 ], [ %accept_count.01177, %sw.bb176 ], [ %accept_count.01177, %sw.bb174 ], [ %accept_count.01177, %sw.bb172 ], [ %accept_count.01177, %sw.bb170 ], [ %accept_count.01177, %sw.bb167 ], [ %call166, %sw.bb165 ], [ %accept_count.01177, %sw.bb160 ], [ %accept_count.01177, %sw.bb158 ], [ %accept_count.01177, %sw.bb156 ], [ %accept_count.01177, %if.end111 ], [ %accept_count.01177, %sw.bb97 ], [ %accept_count.01177, %sw.bb95 ], [ %accept_count.01177, %sw.bb93 ], [ %accept_count.01177, %sw.bb90 ], [ %accept_count.01177, %sw.bb87 ], [ %accept_count.01177, %if.end86 ], [ %accept_count.01177, %sw.bb225 ], [ %accept_count.01177, %sw.bb80 ], [ %accept_count.01177, %sw.bb79 ], [ %accept_count.01177, %sw.bb78 ], [ %accept_count.01177, %sw.bb76 ], [ %accept_count.01177, %sw.bb74 ], [ %accept_count.01177, %sw.bb72 ], [ %accept_count.01177, %sw.bb70 ], [ %accept_count.01177, %sw.bb68 ], [ %accept_count.01177, %sw.bb65 ], [ %accept_count.01177, %sw.bb63 ], [ %accept_count.01177, %sw.bb61 ], [ %accept_count.01177, %sw.bb59 ], [ %accept_count.01177, %sw.bb58 ], [ %accept_count.01177, %sw.bb57 ], [ %accept_count.01177, %sw.bb56 ], [ %accept_count.01177, %sw.bb55 ], [ %accept_count.01177, %sw.bb53 ], [ %accept_count.01177, %sw.bb51 ], [ %accept_count.01177, %sw.bb49 ], [ %accept_count.01177, %sw.bb47 ], [ %accept_count.01177, %sw.bb45 ], [ %accept_count.01177, %sw.bb43 ], [ %accept_count.01177, %sw.bb41 ], [ %accept_count.01177, %sw.bb39 ], [ %accept_count.01177, %sw.bb37 ], [ %accept_count.01177, %sw.bb36 ], [ %accept_count.01177, %sw.bb35 ], [ %accept_count.01177, %sw.bb34 ], [ %accept_count.01177, %sw.bb33 ], [ %accept_count.01177, %sw.bb32 ], [ %accept_count.01177, %sw.bb30 ], [ %accept_count.01177, %sw.bb28 ], [ %accept_count.01177, %sw.bb26 ], [ %accept_count.01177, %sw.bb24 ], [ %accept_count.01177, %sw.bb22 ], [ %accept_count.01177, %if.end21 ], [ %accept_count.01177, %sw.bb13 ], [ %accept_count.01177, %sw.bb11 ], [ %accept_count.01177, %if.end131 ], [ %accept_count.01177, %if.end148 ], [ %accept_count.01177, %if.end215 ]
  %add_nonce.1 = phi i32 [ %add_nonce.01178, %while.body ], [ %add_nonce.01178, %sw.bb221 ], [ %add_nonce.01178, %sw.bb205 ], [ %add_nonce.01178, %if.end200 ], [ %add_nonce.01178, %lor.lhs.false186 ], [ %add_nonce.01178, %sw.bb178 ], [ %add_nonce.01178, %sw.bb176 ], [ %add_nonce.01178, %sw.bb174 ], [ %add_nonce.01178, %sw.bb172 ], [ %add_nonce.01178, %sw.bb170 ], [ %add_nonce.01178, %sw.bb167 ], [ %add_nonce.01178, %sw.bb165 ], [ %add_nonce.01178, %sw.bb160 ], [ %add_nonce.01178, %sw.bb158 ], [ %add_nonce.01178, %sw.bb156 ], [ %add_nonce.01178, %if.end111 ], [ %add_nonce.01178, %sw.bb97 ], [ %add_nonce.01178, %sw.bb95 ], [ %add_nonce.01178, %sw.bb93 ], [ %add_nonce.01178, %sw.bb90 ], [ %add_nonce.01178, %sw.bb87 ], [ %add_nonce.01178, %if.end86 ], [ %add_nonce.01178, %sw.bb225 ], [ %add_nonce.01178, %sw.bb80 ], [ %add_nonce.01178, %sw.bb79 ], [ %add_nonce.01178, %sw.bb78 ], [ %add_nonce.01178, %sw.bb76 ], [ %add_nonce.01178, %sw.bb74 ], [ %add_nonce.01178, %sw.bb72 ], [ %add_nonce.01178, %sw.bb70 ], [ %add_nonce.01178, %sw.bb68 ], [ %add_nonce.01178, %sw.bb65 ], [ %add_nonce.01178, %sw.bb63 ], [ %add_nonce.01178, %sw.bb61 ], [ %add_nonce.01178, %sw.bb59 ], [ %add_nonce.01178, %sw.bb58 ], [ %add_nonce.01178, %sw.bb57 ], [ %add_nonce.01178, %sw.bb56 ], [ %add_nonce.01178, %sw.bb55 ], [ %add_nonce.01178, %sw.bb53 ], [ %add_nonce.01178, %sw.bb51 ], [ %add_nonce.01178, %sw.bb49 ], [ %add_nonce.01178, %sw.bb47 ], [ %add_nonce.01178, %sw.bb45 ], [ %add_nonce.01178, %sw.bb43 ], [ %add_nonce.01178, %sw.bb41 ], [ %add_nonce.01178, %sw.bb39 ], [ %add_nonce.01178, %sw.bb37 ], [ %add_nonce.01178, %sw.bb36 ], [ 0, %sw.bb35 ], [ 2, %sw.bb34 ], [ %add_nonce.01178, %sw.bb33 ], [ %add_nonce.01178, %sw.bb32 ], [ %add_nonce.01178, %sw.bb30 ], [ %add_nonce.01178, %sw.bb28 ], [ %add_nonce.01178, %sw.bb26 ], [ %add_nonce.01178, %sw.bb24 ], [ %add_nonce.01178, %sw.bb22 ], [ %add_nonce.01178, %if.end21 ], [ %add_nonce.01178, %sw.bb13 ], [ %add_nonce.01178, %sw.bb11 ], [ %add_nonce.01178, %if.end131 ], [ %add_nonce.01178, %if.end148 ], [ %add_nonce.01178, %if.end215 ]
  %noverify.1 = phi i32 [ %noverify.01179, %while.body ], [ %noverify.01179, %sw.bb221 ], [ %noverify.01179, %sw.bb205 ], [ %noverify.01179, %if.end200 ], [ %noverify.01179, %lor.lhs.false186 ], [ %noverify.01179, %sw.bb178 ], [ %noverify.01179, %sw.bb176 ], [ %noverify.01179, %sw.bb174 ], [ %noverify.01179, %sw.bb172 ], [ %noverify.01179, %sw.bb170 ], [ %noverify.01179, %sw.bb167 ], [ %noverify.01179, %sw.bb165 ], [ %noverify.01179, %sw.bb160 ], [ %noverify.01179, %sw.bb158 ], [ %noverify.01179, %sw.bb156 ], [ %noverify.01179, %if.end111 ], [ %noverify.01179, %sw.bb97 ], [ %noverify.01179, %sw.bb95 ], [ %noverify.01179, %sw.bb93 ], [ %noverify.01179, %sw.bb90 ], [ %noverify.01179, %sw.bb87 ], [ %noverify.01179, %if.end86 ], [ %noverify.01179, %sw.bb225 ], [ %noverify.01179, %sw.bb80 ], [ %noverify.01179, %sw.bb79 ], [ %noverify.01179, %sw.bb78 ], [ %noverify.01179, %sw.bb76 ], [ %noverify.01179, %sw.bb74 ], [ %noverify.01179, %sw.bb72 ], [ %noverify.01179, %sw.bb70 ], [ %noverify.01179, %sw.bb68 ], [ %noverify.01179, %sw.bb65 ], [ %noverify.01179, %sw.bb63 ], [ %noverify.01179, %sw.bb61 ], [ %noverify.01179, %sw.bb59 ], [ %noverify.01179, %sw.bb58 ], [ %noverify.01179, %sw.bb57 ], [ %noverify.01179, %sw.bb56 ], [ %noverify.01179, %sw.bb55 ], [ %noverify.01179, %sw.bb53 ], [ %noverify.01179, %sw.bb51 ], [ %noverify.01179, %sw.bb49 ], [ %noverify.01179, %sw.bb47 ], [ %noverify.01179, %sw.bb45 ], [ %noverify.01179, %sw.bb43 ], [ %noverify.01179, %sw.bb41 ], [ %noverify.01179, %sw.bb39 ], [ %noverify.01179, %sw.bb37 ], [ %noverify.01179, %sw.bb36 ], [ %noverify.01179, %sw.bb35 ], [ %noverify.01179, %sw.bb34 ], [ 1, %sw.bb33 ], [ %noverify.01179, %sw.bb32 ], [ %noverify.01179, %sw.bb30 ], [ %noverify.01179, %sw.bb28 ], [ %noverify.01179, %sw.bb26 ], [ %noverify.01179, %sw.bb24 ], [ %noverify.01179, %sw.bb22 ], [ %noverify.01179, %if.end21 ], [ %noverify.01179, %sw.bb13 ], [ %noverify.01179, %sw.bb11 ], [ %noverify.01179, %if.end131 ], [ %noverify.01179, %if.end148 ], [ %noverify.01179, %if.end215 ]
  %vpmtouched.1 = phi i32 [ %vpmtouched.01180, %while.body ], [ %vpmtouched.01180, %sw.bb221 ], [ %vpmtouched.01180, %sw.bb205 ], [ %vpmtouched.01180, %if.end200 ], [ %vpmtouched.01180, %lor.lhs.false186 ], [ %vpmtouched.01180, %sw.bb178 ], [ %vpmtouched.01180, %sw.bb176 ], [ %vpmtouched.01180, %sw.bb174 ], [ %vpmtouched.01180, %sw.bb172 ], [ %vpmtouched.01180, %sw.bb170 ], [ %vpmtouched.01180, %sw.bb167 ], [ %vpmtouched.01180, %sw.bb165 ], [ %vpmtouched.01180, %sw.bb160 ], [ %vpmtouched.01180, %sw.bb158 ], [ %vpmtouched.01180, %sw.bb156 ], [ %vpmtouched.01180, %if.end111 ], [ %vpmtouched.01180, %sw.bb97 ], [ %vpmtouched.01180, %sw.bb95 ], [ %vpmtouched.01180, %sw.bb93 ], [ %vpmtouched.01180, %sw.bb90 ], [ %vpmtouched.01180, %sw.bb87 ], [ %inc, %if.end86 ], [ %vpmtouched.01180, %sw.bb225 ], [ %vpmtouched.01180, %sw.bb80 ], [ %vpmtouched.01180, %sw.bb79 ], [ %vpmtouched.01180, %sw.bb78 ], [ %vpmtouched.01180, %sw.bb76 ], [ %vpmtouched.01180, %sw.bb74 ], [ %vpmtouched.01180, %sw.bb72 ], [ %vpmtouched.01180, %sw.bb70 ], [ %vpmtouched.01180, %sw.bb68 ], [ %vpmtouched.01180, %sw.bb65 ], [ %vpmtouched.01180, %sw.bb63 ], [ %vpmtouched.01180, %sw.bb61 ], [ %vpmtouched.01180, %sw.bb59 ], [ %vpmtouched.01180, %sw.bb58 ], [ %vpmtouched.01180, %sw.bb57 ], [ %vpmtouched.01180, %sw.bb56 ], [ %vpmtouched.01180, %sw.bb55 ], [ %vpmtouched.01180, %sw.bb53 ], [ %vpmtouched.01180, %sw.bb51 ], [ %vpmtouched.01180, %sw.bb49 ], [ %vpmtouched.01180, %sw.bb47 ], [ %vpmtouched.01180, %sw.bb45 ], [ %vpmtouched.01180, %sw.bb43 ], [ %vpmtouched.01180, %sw.bb41 ], [ %vpmtouched.01180, %sw.bb39 ], [ %vpmtouched.01180, %sw.bb37 ], [ %vpmtouched.01180, %sw.bb36 ], [ %vpmtouched.01180, %sw.bb35 ], [ %vpmtouched.01180, %sw.bb34 ], [ %vpmtouched.01180, %sw.bb33 ], [ %vpmtouched.01180, %sw.bb32 ], [ %vpmtouched.01180, %sw.bb30 ], [ %vpmtouched.01180, %sw.bb28 ], [ %vpmtouched.01180, %sw.bb26 ], [ %vpmtouched.01180, %sw.bb24 ], [ %vpmtouched.01180, %sw.bb22 ], [ %vpmtouched.01180, %if.end21 ], [ %vpmtouched.01180, %sw.bb13 ], [ %vpmtouched.01180, %sw.bb11 ], [ %vpmtouched.01180, %if.end131 ], [ %vpmtouched.01180, %if.end148 ], [ %vpmtouched.01180, %if.end215 ]
  %badsig.1 = phi i32 [ %badsig.01181, %while.body ], [ %badsig.01181, %sw.bb221 ], [ %badsig.01181, %sw.bb205 ], [ %badsig.01181, %if.end200 ], [ %badsig.01181, %lor.lhs.false186 ], [ %badsig.01181, %sw.bb178 ], [ %badsig.01181, %sw.bb176 ], [ %badsig.01181, %sw.bb174 ], [ %badsig.01181, %sw.bb172 ], [ %badsig.01181, %sw.bb170 ], [ %badsig.01181, %sw.bb167 ], [ %badsig.01181, %sw.bb165 ], [ %badsig.01181, %sw.bb160 ], [ %badsig.01181, %sw.bb158 ], [ %badsig.01181, %sw.bb156 ], [ %badsig.01181, %if.end111 ], [ %badsig.01181, %sw.bb97 ], [ %badsig.01181, %sw.bb95 ], [ %badsig.01181, %sw.bb93 ], [ %badsig.01181, %sw.bb90 ], [ %badsig.01181, %sw.bb87 ], [ %badsig.01181, %if.end86 ], [ %badsig.01181, %sw.bb225 ], [ %badsig.01181, %sw.bb80 ], [ %badsig.01181, %sw.bb79 ], [ %badsig.01181, %sw.bb78 ], [ %badsig.01181, %sw.bb76 ], [ %badsig.01181, %sw.bb74 ], [ %badsig.01181, %sw.bb72 ], [ %badsig.01181, %sw.bb70 ], [ %badsig.01181, %sw.bb68 ], [ %badsig.01181, %sw.bb65 ], [ %badsig.01181, %sw.bb63 ], [ %badsig.01181, %sw.bb61 ], [ %badsig.01181, %sw.bb59 ], [ %badsig.01181, %sw.bb58 ], [ %badsig.01181, %sw.bb57 ], [ %badsig.01181, %sw.bb56 ], [ 1, %sw.bb55 ], [ %badsig.01181, %sw.bb53 ], [ %badsig.01181, %sw.bb51 ], [ %badsig.01181, %sw.bb49 ], [ %badsig.01181, %sw.bb47 ], [ %badsig.01181, %sw.bb45 ], [ %badsig.01181, %sw.bb43 ], [ %badsig.01181, %sw.bb41 ], [ %badsig.01181, %sw.bb39 ], [ %badsig.01181, %sw.bb37 ], [ %badsig.01181, %sw.bb36 ], [ %badsig.01181, %sw.bb35 ], [ %badsig.01181, %sw.bb34 ], [ %badsig.01181, %sw.bb33 ], [ %badsig.01181, %sw.bb32 ], [ %badsig.01181, %sw.bb30 ], [ %badsig.01181, %sw.bb28 ], [ %badsig.01181, %sw.bb26 ], [ %badsig.01181, %sw.bb24 ], [ %badsig.01181, %sw.bb22 ], [ %badsig.01181, %if.end21 ], [ %badsig.01181, %sw.bb13 ], [ %badsig.01181, %sw.bb11 ], [ %badsig.01181, %if.end131 ], [ %badsig.01181, %if.end148 ], [ %badsig.01181, %if.end215 ]
  %ignore_err.1 = phi i32 [ %ignore_err.01182, %while.body ], [ %ignore_err.01182, %sw.bb221 ], [ %ignore_err.01182, %sw.bb205 ], [ %ignore_err.01182, %if.end200 ], [ %ignore_err.01182, %lor.lhs.false186 ], [ %ignore_err.01182, %sw.bb178 ], [ %ignore_err.01182, %sw.bb176 ], [ %ignore_err.01182, %sw.bb174 ], [ %ignore_err.01182, %sw.bb172 ], [ %ignore_err.01182, %sw.bb170 ], [ %ignore_err.01182, %sw.bb167 ], [ %ignore_err.01182, %sw.bb165 ], [ %ignore_err.01182, %sw.bb160 ], [ %ignore_err.01182, %sw.bb158 ], [ %ignore_err.01182, %sw.bb156 ], [ %ignore_err.01182, %if.end111 ], [ %ignore_err.01182, %sw.bb97 ], [ %ignore_err.01182, %sw.bb95 ], [ %ignore_err.01182, %sw.bb93 ], [ %ignore_err.01182, %sw.bb90 ], [ %ignore_err.01182, %sw.bb87 ], [ %ignore_err.01182, %if.end86 ], [ %ignore_err.01182, %sw.bb225 ], [ %ignore_err.01182, %sw.bb80 ], [ %ignore_err.01182, %sw.bb79 ], [ %ignore_err.01182, %sw.bb78 ], [ %ignore_err.01182, %sw.bb76 ], [ %ignore_err.01182, %sw.bb74 ], [ %ignore_err.01182, %sw.bb72 ], [ %ignore_err.01182, %sw.bb70 ], [ %ignore_err.01182, %sw.bb68 ], [ %ignore_err.01182, %sw.bb65 ], [ %ignore_err.01182, %sw.bb63 ], [ %ignore_err.01182, %sw.bb61 ], [ %ignore_err.01182, %sw.bb59 ], [ %ignore_err.01182, %sw.bb58 ], [ %ignore_err.01182, %sw.bb57 ], [ %ignore_err.01182, %sw.bb56 ], [ %ignore_err.01182, %sw.bb55 ], [ %ignore_err.01182, %sw.bb53 ], [ %ignore_err.01182, %sw.bb51 ], [ %ignore_err.01182, %sw.bb49 ], [ %ignore_err.01182, %sw.bb47 ], [ %ignore_err.01182, %sw.bb45 ], [ %ignore_err.01182, %sw.bb43 ], [ %ignore_err.01182, %sw.bb41 ], [ %ignore_err.01182, %sw.bb39 ], [ %ignore_err.01182, %sw.bb37 ], [ %ignore_err.01182, %sw.bb36 ], [ %ignore_err.01182, %sw.bb35 ], [ %ignore_err.01182, %sw.bb34 ], [ %ignore_err.01182, %sw.bb33 ], [ 1, %sw.bb32 ], [ %ignore_err.01182, %sw.bb30 ], [ %ignore_err.01182, %sw.bb28 ], [ %ignore_err.01182, %sw.bb26 ], [ %ignore_err.01182, %sw.bb24 ], [ %ignore_err.01182, %sw.bb22 ], [ %ignore_err.01182, %if.end21 ], [ %ignore_err.01182, %sw.bb13 ], [ %ignore_err.01182, %sw.bb11 ], [ %ignore_err.01182, %if.end131 ], [ %ignore_err.01182, %if.end148 ], [ %ignore_err.01182, %if.end215 ]
  %nmin.1 = phi i32 [ %nmin.01183, %while.body ], [ %nmin.01183, %sw.bb221 ], [ %nmin.01183, %sw.bb205 ], [ %nmin.01183, %if.end200 ], [ %nmin.01183, %lor.lhs.false186 ], [ %nmin.01183, %sw.bb178 ], [ %nmin.01183, %sw.bb176 ], [ %nmin.01183, %sw.bb174 ], [ %nmin.01183, %sw.bb172 ], [ %nmin.01183, %sw.bb170 ], [ %nmin.01183, %sw.bb167 ], [ %nmin.01183, %sw.bb165 ], [ %call161, %sw.bb160 ], [ %nmin.01183, %sw.bb158 ], [ %nmin.01183, %sw.bb156 ], [ %nmin.01183, %if.end111 ], [ %nmin.01183, %sw.bb97 ], [ %nmin.01183, %sw.bb95 ], [ %nmin.01183, %sw.bb93 ], [ %nmin.01183, %sw.bb90 ], [ %nmin.01183, %sw.bb87 ], [ %nmin.01183, %if.end86 ], [ %nmin.01183, %sw.bb225 ], [ %nmin.01183, %sw.bb80 ], [ %nmin.01183, %sw.bb79 ], [ %nmin.01183, %sw.bb78 ], [ %nmin.01183, %sw.bb76 ], [ %nmin.01183, %sw.bb74 ], [ %nmin.01183, %sw.bb72 ], [ %nmin.01183, %sw.bb70 ], [ %nmin.01183, %sw.bb68 ], [ %nmin.01183, %sw.bb65 ], [ %nmin.01183, %sw.bb63 ], [ %nmin.01183, %sw.bb61 ], [ %nmin.01183, %sw.bb59 ], [ %nmin.01183, %sw.bb58 ], [ %nmin.01183, %sw.bb57 ], [ %nmin.01183, %sw.bb56 ], [ %nmin.01183, %sw.bb55 ], [ %nmin.01183, %sw.bb53 ], [ %nmin.01183, %sw.bb51 ], [ %nmin.01183, %sw.bb49 ], [ %nmin.01183, %sw.bb47 ], [ %nmin.01183, %sw.bb45 ], [ %nmin.01183, %sw.bb43 ], [ %nmin.01183, %sw.bb41 ], [ %nmin.01183, %sw.bb39 ], [ %nmin.01183, %sw.bb37 ], [ %nmin.01183, %sw.bb36 ], [ %nmin.01183, %sw.bb35 ], [ %nmin.01183, %sw.bb34 ], [ %nmin.01183, %sw.bb33 ], [ %nmin.01183, %sw.bb32 ], [ %nmin.01183, %sw.bb30 ], [ %nmin.01183, %sw.bb28 ], [ %nmin.01183, %sw.bb26 ], [ %nmin.01183, %sw.bb24 ], [ %nmin.01183, %sw.bb22 ], [ %nmin.01183, %if.end21 ], [ %nmin.01183, %sw.bb13 ], [ %nmin.01183, %sw.bb11 ], [ %nmin.01183, %if.end131 ], [ %nmin.01183, %if.end148 ], [ %nmin.01183, %if.end215 ]
  %ndays.1 = phi i32 [ %ndays.01184, %while.body ], [ %ndays.01184, %sw.bb221 ], [ %ndays.01184, %sw.bb205 ], [ %ndays.01184, %if.end200 ], [ %ndays.01184, %lor.lhs.false186 ], [ %ndays.01184, %sw.bb178 ], [ %ndays.01184, %sw.bb176 ], [ %ndays.01184, %sw.bb174 ], [ %ndays.01184, %sw.bb172 ], [ %ndays.01184, %sw.bb170 ], [ %call169, %sw.bb167 ], [ %ndays.01184, %sw.bb165 ], [ %spec.store.select, %sw.bb160 ], [ %ndays.01184, %sw.bb158 ], [ %ndays.01184, %sw.bb156 ], [ %ndays.01184, %if.end111 ], [ %ndays.01184, %sw.bb97 ], [ %ndays.01184, %sw.bb95 ], [ %ndays.01184, %sw.bb93 ], [ %ndays.01184, %sw.bb90 ], [ %ndays.01184, %sw.bb87 ], [ %ndays.01184, %if.end86 ], [ %ndays.01184, %sw.bb225 ], [ %ndays.01184, %sw.bb80 ], [ %ndays.01184, %sw.bb79 ], [ %ndays.01184, %sw.bb78 ], [ %ndays.01184, %sw.bb76 ], [ %ndays.01184, %sw.bb74 ], [ %ndays.01184, %sw.bb72 ], [ %ndays.01184, %sw.bb70 ], [ %ndays.01184, %sw.bb68 ], [ %ndays.01184, %sw.bb65 ], [ %ndays.01184, %sw.bb63 ], [ %ndays.01184, %sw.bb61 ], [ %ndays.01184, %sw.bb59 ], [ %ndays.01184, %sw.bb58 ], [ %ndays.01184, %sw.bb57 ], [ %ndays.01184, %sw.bb56 ], [ %ndays.01184, %sw.bb55 ], [ %ndays.01184, %sw.bb53 ], [ %ndays.01184, %sw.bb51 ], [ %ndays.01184, %sw.bb49 ], [ %ndays.01184, %sw.bb47 ], [ %ndays.01184, %sw.bb45 ], [ %ndays.01184, %sw.bb43 ], [ %ndays.01184, %sw.bb41 ], [ %ndays.01184, %sw.bb39 ], [ %ndays.01184, %sw.bb37 ], [ %ndays.01184, %sw.bb36 ], [ %ndays.01184, %sw.bb35 ], [ %ndays.01184, %sw.bb34 ], [ %ndays.01184, %sw.bb33 ], [ %ndays.01184, %sw.bb32 ], [ %ndays.01184, %sw.bb30 ], [ %ndays.01184, %sw.bb28 ], [ %ndays.01184, %sw.bb26 ], [ %ndays.01184, %sw.bb24 ], [ %ndays.01184, %sw.bb22 ], [ %ndays.01184, %if.end21 ], [ %ndays.01184, %sw.bb13 ], [ %ndays.01184, %sw.bb11 ], [ %ndays.01184, %if.end131 ], [ %ndays.01184, %if.end148 ], [ %ndays.01184, %if.end215 ]
  %req_text.1 = phi i32 [ %req_text.01185, %while.body ], [ %req_text.01185, %sw.bb221 ], [ %req_text.01185, %sw.bb205 ], [ %req_text.01185, %if.end200 ], [ %req_text.01185, %lor.lhs.false186 ], [ %req_text.01185, %sw.bb178 ], [ %req_text.01185, %sw.bb176 ], [ %req_text.01185, %sw.bb174 ], [ %req_text.01185, %sw.bb172 ], [ %req_text.01185, %sw.bb170 ], [ %req_text.01185, %sw.bb167 ], [ %req_text.01185, %sw.bb165 ], [ %req_text.01185, %sw.bb160 ], [ %req_text.01185, %sw.bb158 ], [ %req_text.01185, %sw.bb156 ], [ %req_text.01185, %if.end111 ], [ %req_text.01185, %sw.bb97 ], [ %req_text.01185, %sw.bb95 ], [ %req_text.01185, %sw.bb93 ], [ %req_text.01185, %sw.bb90 ], [ %req_text.01185, %sw.bb87 ], [ %req_text.01185, %if.end86 ], [ %req_text.01185, %sw.bb225 ], [ %req_text.01185, %sw.bb80 ], [ %req_text.01185, %sw.bb79 ], [ %req_text.01185, %sw.bb78 ], [ %req_text.01185, %sw.bb76 ], [ %req_text.01185, %sw.bb74 ], [ %req_text.01185, %sw.bb72 ], [ %req_text.01185, %sw.bb70 ], [ %req_text.01185, %sw.bb68 ], [ %req_text.01185, %sw.bb65 ], [ %req_text.01185, %sw.bb63 ], [ %req_text.01185, %sw.bb61 ], [ %req_text.01185, %sw.bb59 ], [ %req_text.01185, %sw.bb58 ], [ 1, %sw.bb57 ], [ 1, %sw.bb56 ], [ %req_text.01185, %sw.bb55 ], [ %req_text.01185, %sw.bb53 ], [ %req_text.01185, %sw.bb51 ], [ %req_text.01185, %sw.bb49 ], [ %req_text.01185, %sw.bb47 ], [ %req_text.01185, %sw.bb45 ], [ %req_text.01185, %sw.bb43 ], [ %req_text.01185, %sw.bb41 ], [ %req_text.01185, %sw.bb39 ], [ %req_text.01185, %sw.bb37 ], [ %req_text.01185, %sw.bb36 ], [ %req_text.01185, %sw.bb35 ], [ %req_text.01185, %sw.bb34 ], [ %req_text.01185, %sw.bb33 ], [ %req_text.01185, %sw.bb32 ], [ %req_text.01185, %sw.bb30 ], [ %req_text.01185, %sw.bb28 ], [ %req_text.01185, %sw.bb26 ], [ %req_text.01185, %sw.bb24 ], [ %req_text.01185, %sw.bb22 ], [ %req_text.01185, %if.end21 ], [ %req_text.01185, %sw.bb13 ], [ %req_text.01185, %sw.bb11 ], [ %req_text.01185, %if.end131 ], [ %req_text.01185, %if.end148 ], [ %req_text.01185, %if.end215 ]
  %resp_text.1 = phi i32 [ %resp_text.01186, %while.body ], [ %resp_text.01186, %sw.bb221 ], [ %resp_text.01186, %sw.bb205 ], [ %resp_text.01186, %if.end200 ], [ %resp_text.01186, %lor.lhs.false186 ], [ %resp_text.01186, %sw.bb178 ], [ %resp_text.01186, %sw.bb176 ], [ %resp_text.01186, %sw.bb174 ], [ %resp_text.01186, %sw.bb172 ], [ %resp_text.01186, %sw.bb170 ], [ %resp_text.01186, %sw.bb167 ], [ %resp_text.01186, %sw.bb165 ], [ %resp_text.01186, %sw.bb160 ], [ %resp_text.01186, %sw.bb158 ], [ %resp_text.01186, %sw.bb156 ], [ %resp_text.01186, %if.end111 ], [ %resp_text.01186, %sw.bb97 ], [ %resp_text.01186, %sw.bb95 ], [ %resp_text.01186, %sw.bb93 ], [ %resp_text.01186, %sw.bb90 ], [ %resp_text.01186, %sw.bb87 ], [ %resp_text.01186, %if.end86 ], [ %resp_text.01186, %sw.bb225 ], [ %resp_text.01186, %sw.bb80 ], [ %resp_text.01186, %sw.bb79 ], [ %resp_text.01186, %sw.bb78 ], [ %resp_text.01186, %sw.bb76 ], [ %resp_text.01186, %sw.bb74 ], [ %resp_text.01186, %sw.bb72 ], [ %resp_text.01186, %sw.bb70 ], [ %resp_text.01186, %sw.bb68 ], [ %resp_text.01186, %sw.bb65 ], [ %resp_text.01186, %sw.bb63 ], [ %resp_text.01186, %sw.bb61 ], [ %resp_text.01186, %sw.bb59 ], [ 1, %sw.bb58 ], [ %resp_text.01186, %sw.bb57 ], [ 1, %sw.bb56 ], [ %resp_text.01186, %sw.bb55 ], [ %resp_text.01186, %sw.bb53 ], [ %resp_text.01186, %sw.bb51 ], [ %resp_text.01186, %sw.bb49 ], [ %resp_text.01186, %sw.bb47 ], [ %resp_text.01186, %sw.bb45 ], [ %resp_text.01186, %sw.bb43 ], [ %resp_text.01186, %sw.bb41 ], [ %resp_text.01186, %sw.bb39 ], [ %resp_text.01186, %sw.bb37 ], [ %resp_text.01186, %sw.bb36 ], [ %resp_text.01186, %sw.bb35 ], [ %resp_text.01186, %sw.bb34 ], [ %resp_text.01186, %sw.bb33 ], [ %resp_text.01186, %sw.bb32 ], [ %resp_text.01186, %sw.bb30 ], [ %resp_text.01186, %sw.bb28 ], [ %resp_text.01186, %sw.bb26 ], [ %resp_text.01186, %sw.bb24 ], [ %resp_text.01186, %sw.bb22 ], [ %resp_text.01186, %if.end21 ], [ %resp_text.01186, %sw.bb13 ], [ %resp_text.01186, %sw.bb11 ], [ %resp_text.01186, %if.end131 ], [ %resp_text.01186, %if.end148 ], [ %resp_text.01186, %if.end215 ]
  %req_timeout.1 = phi i32 [ %req_timeout.01187, %while.body ], [ %req_timeout.01187, %sw.bb221 ], [ %req_timeout.01187, %sw.bb205 ], [ %req_timeout.01187, %if.end200 ], [ %req_timeout.01187, %lor.lhs.false186 ], [ %req_timeout.01187, %sw.bb178 ], [ %req_timeout.01187, %sw.bb176 ], [ %req_timeout.01187, %sw.bb174 ], [ %req_timeout.01187, %sw.bb172 ], [ %req_timeout.01187, %sw.bb170 ], [ %req_timeout.01187, %sw.bb167 ], [ %req_timeout.01187, %sw.bb165 ], [ %req_timeout.01187, %sw.bb160 ], [ %req_timeout.01187, %sw.bb158 ], [ %req_timeout.01187, %sw.bb156 ], [ %req_timeout.01187, %if.end111 ], [ %req_timeout.01187, %sw.bb97 ], [ %req_timeout.01187, %sw.bb95 ], [ %req_timeout.01187, %sw.bb93 ], [ %req_timeout.01187, %sw.bb90 ], [ %req_timeout.01187, %sw.bb87 ], [ %req_timeout.01187, %if.end86 ], [ %req_timeout.01187, %sw.bb225 ], [ %req_timeout.01187, %sw.bb80 ], [ %req_timeout.01187, %sw.bb79 ], [ %req_timeout.01187, %sw.bb78 ], [ %req_timeout.01187, %sw.bb76 ], [ %req_timeout.01187, %sw.bb74 ], [ %req_timeout.01187, %sw.bb72 ], [ %req_timeout.01187, %sw.bb70 ], [ %req_timeout.01187, %sw.bb68 ], [ %req_timeout.01187, %sw.bb65 ], [ %req_timeout.01187, %sw.bb63 ], [ %req_timeout.01187, %sw.bb61 ], [ %req_timeout.01187, %sw.bb59 ], [ %req_timeout.01187, %sw.bb58 ], [ %req_timeout.01187, %sw.bb57 ], [ %req_timeout.01187, %sw.bb56 ], [ %req_timeout.01187, %sw.bb55 ], [ %req_timeout.01187, %sw.bb53 ], [ %req_timeout.01187, %sw.bb51 ], [ %req_timeout.01187, %sw.bb49 ], [ %req_timeout.01187, %sw.bb47 ], [ %req_timeout.01187, %sw.bb45 ], [ %req_timeout.01187, %sw.bb43 ], [ %req_timeout.01187, %sw.bb41 ], [ %req_timeout.01187, %sw.bb39 ], [ %req_timeout.01187, %sw.bb37 ], [ %req_timeout.01187, %sw.bb36 ], [ %req_timeout.01187, %sw.bb35 ], [ %req_timeout.01187, %sw.bb34 ], [ %req_timeout.01187, %sw.bb33 ], [ %req_timeout.01187, %sw.bb32 ], [ %req_timeout.01187, %sw.bb30 ], [ %req_timeout.01187, %sw.bb28 ], [ %req_timeout.01187, %sw.bb26 ], [ %req_timeout.01187, %sw.bb24 ], [ %req_timeout.01187, %sw.bb22 ], [ %req_timeout.01187, %if.end21 ], [ %call15, %sw.bb13 ], [ %req_timeout.01187, %sw.bb11 ], [ %req_timeout.01187, %if.end131 ], [ %req_timeout.01187, %if.end148 ], [ %req_timeout.01187, %if.end215 ]
  %sign_flags.1 = phi i64 [ %sign_flags.01188, %while.body ], [ %sign_flags.01188, %sw.bb221 ], [ %sign_flags.01188, %sw.bb205 ], [ %sign_flags.01188, %if.end200 ], [ %sign_flags.01188, %lor.lhs.false186 ], [ %sign_flags.01188, %sw.bb178 ], [ %sign_flags.01188, %sw.bb176 ], [ %sign_flags.01188, %sw.bb174 ], [ %sign_flags.01188, %sw.bb172 ], [ %sign_flags.01188, %sw.bb170 ], [ %sign_flags.01188, %sw.bb167 ], [ %sign_flags.01188, %sw.bb165 ], [ %sign_flags.01188, %sw.bb160 ], [ %sign_flags.01188, %sw.bb158 ], [ %sign_flags.01188, %sw.bb156 ], [ %sign_flags.01188, %if.end111 ], [ %sign_flags.01188, %sw.bb97 ], [ %sign_flags.01188, %sw.bb95 ], [ %sign_flags.01188, %sw.bb93 ], [ %sign_flags.01188, %sw.bb90 ], [ %sign_flags.01188, %sw.bb87 ], [ %sign_flags.01188, %if.end86 ], [ %sign_flags.01188, %sw.bb225 ], [ %sign_flags.01188, %sw.bb80 ], [ %sign_flags.01188, %sw.bb79 ], [ %sign_flags.01188, %sw.bb78 ], [ %sign_flags.01188, %sw.bb76 ], [ %sign_flags.01188, %sw.bb74 ], [ %sign_flags.01188, %sw.bb72 ], [ %sign_flags.01188, %sw.bb70 ], [ %sign_flags.01188, %sw.bb68 ], [ %sign_flags.01188, %sw.bb65 ], [ %sign_flags.01188, %sw.bb63 ], [ %sign_flags.01188, %sw.bb61 ], [ %sign_flags.01188, %sw.bb59 ], [ %sign_flags.01188, %sw.bb58 ], [ %sign_flags.01188, %sw.bb57 ], [ %sign_flags.01188, %sw.bb56 ], [ %sign_flags.01188, %sw.bb55 ], [ %sign_flags.01188, %sw.bb53 ], [ %sign_flags.01188, %sw.bb51 ], [ %sign_flags.01188, %sw.bb49 ], [ %sign_flags.01188, %sw.bb47 ], [ %sign_flags.01188, %sw.bb45 ], [ %sign_flags.01188, %sw.bb43 ], [ %sign_flags.01188, %sw.bb41 ], [ %or40, %sw.bb39 ], [ %sign_flags.01188, %sw.bb37 ], [ %sign_flags.01188, %sw.bb36 ], [ %sign_flags.01188, %sw.bb35 ], [ %sign_flags.01188, %sw.bb34 ], [ %sign_flags.01188, %sw.bb33 ], [ %sign_flags.01188, %sw.bb32 ], [ %sign_flags.01188, %sw.bb30 ], [ %sign_flags.01188, %sw.bb28 ], [ %sign_flags.01188, %sw.bb26 ], [ %sign_flags.01188, %sw.bb24 ], [ %sign_flags.01188, %sw.bb22 ], [ %sign_flags.01188, %if.end21 ], [ %sign_flags.01188, %sw.bb13 ], [ %sign_flags.01188, %sw.bb11 ], [ %sign_flags.01188, %if.end131 ], [ %sign_flags.01188, %if.end148 ], [ %sign_flags.01188, %if.end215 ]
  %verify_flags.1 = phi i64 [ %verify_flags.01189, %while.body ], [ %verify_flags.01189, %sw.bb221 ], [ %verify_flags.01189, %sw.bb205 ], [ %verify_flags.01189, %if.end200 ], [ %verify_flags.01189, %lor.lhs.false186 ], [ %verify_flags.01189, %sw.bb178 ], [ %verify_flags.01189, %sw.bb176 ], [ %verify_flags.01189, %sw.bb174 ], [ %verify_flags.01189, %sw.bb172 ], [ %verify_flags.01189, %sw.bb170 ], [ %verify_flags.01189, %sw.bb167 ], [ %verify_flags.01189, %sw.bb165 ], [ %verify_flags.01189, %sw.bb160 ], [ %verify_flags.01189, %sw.bb158 ], [ %verify_flags.01189, %sw.bb156 ], [ %verify_flags.01189, %if.end111 ], [ %verify_flags.01189, %sw.bb97 ], [ %verify_flags.01189, %sw.bb95 ], [ %verify_flags.01189, %sw.bb93 ], [ %verify_flags.01189, %sw.bb90 ], [ %verify_flags.01189, %sw.bb87 ], [ %verify_flags.01189, %if.end86 ], [ %verify_flags.01189, %sw.bb225 ], [ %verify_flags.01189, %sw.bb80 ], [ %verify_flags.01189, %sw.bb79 ], [ %verify_flags.01189, %sw.bb78 ], [ %verify_flags.01189, %sw.bb76 ], [ %verify_flags.01189, %sw.bb74 ], [ %verify_flags.01189, %sw.bb72 ], [ %verify_flags.01189, %sw.bb70 ], [ %verify_flags.01189, %sw.bb68 ], [ %or67, %sw.bb65 ], [ %verify_flags.01189, %sw.bb63 ], [ %verify_flags.01189, %sw.bb61 ], [ %verify_flags.01189, %sw.bb59 ], [ %verify_flags.01189, %sw.bb58 ], [ %verify_flags.01189, %sw.bb57 ], [ %verify_flags.01189, %sw.bb56 ], [ %verify_flags.01189, %sw.bb55 ], [ %or54, %sw.bb53 ], [ %or52, %sw.bb51 ], [ %or50, %sw.bb49 ], [ %or48, %sw.bb47 ], [ %or46, %sw.bb45 ], [ %or44, %sw.bb43 ], [ %or42, %sw.bb41 ], [ %verify_flags.01189, %sw.bb39 ], [ %verify_flags.01189, %sw.bb37 ], [ %verify_flags.01189, %sw.bb36 ], [ %verify_flags.01189, %sw.bb35 ], [ %verify_flags.01189, %sw.bb34 ], [ %verify_flags.01189, %sw.bb33 ], [ %verify_flags.01189, %sw.bb32 ], [ %verify_flags.01189, %sw.bb30 ], [ %verify_flags.01189, %sw.bb28 ], [ %verify_flags.01189, %sw.bb26 ], [ %verify_flags.01189, %sw.bb24 ], [ %verify_flags.01189, %sw.bb22 ], [ %verify_flags.01189, %if.end21 ], [ %verify_flags.01189, %sw.bb13 ], [ %verify_flags.01189, %sw.bb11 ], [ %verify_flags.01189, %if.end131 ], [ %verify_flags.01189, %if.end148 ], [ %verify_flags.01189, %if.end215 ]
  %rflags.1 = phi i64 [ %rflags.01190, %while.body ], [ %rflags.01190, %sw.bb221 ], [ %rflags.01190, %sw.bb205 ], [ %rflags.01190, %if.end200 ], [ %rflags.01190, %lor.lhs.false186 ], [ %rflags.01190, %sw.bb178 ], [ %rflags.01190, %sw.bb176 ], [ %rflags.01190, %sw.bb174 ], [ %rflags.01190, %sw.bb172 ], [ %rflags.01190, %sw.bb170 ], [ %rflags.01190, %sw.bb167 ], [ %rflags.01190, %sw.bb165 ], [ %rflags.01190, %sw.bb160 ], [ %rflags.01190, %sw.bb158 ], [ %rflags.01190, %sw.bb156 ], [ %rflags.01190, %if.end111 ], [ %rflags.01190, %sw.bb97 ], [ %rflags.01190, %sw.bb95 ], [ %rflags.01190, %sw.bb93 ], [ %rflags.01190, %sw.bb90 ], [ %rflags.01190, %sw.bb87 ], [ %rflags.01190, %if.end86 ], [ %rflags.01190, %sw.bb225 ], [ %rflags.01190, %sw.bb80 ], [ %rflags.01190, %sw.bb79 ], [ %rflags.01190, %sw.bb78 ], [ %rflags.01190, %sw.bb76 ], [ %rflags.01190, %sw.bb74 ], [ %rflags.01190, %sw.bb72 ], [ %rflags.01190, %sw.bb70 ], [ %rflags.01190, %sw.bb68 ], [ %rflags.01190, %sw.bb65 ], [ %rflags.01190, %sw.bb63 ], [ %rflags.01190, %sw.bb61 ], [ %rflags.01190, %sw.bb59 ], [ %rflags.01190, %sw.bb58 ], [ %rflags.01190, %sw.bb57 ], [ %rflags.01190, %sw.bb56 ], [ %rflags.01190, %sw.bb55 ], [ %rflags.01190, %sw.bb53 ], [ %rflags.01190, %sw.bb51 ], [ %rflags.01190, %sw.bb49 ], [ %rflags.01190, %sw.bb47 ], [ %rflags.01190, %sw.bb45 ], [ %rflags.01190, %sw.bb43 ], [ %rflags.01190, %sw.bb41 ], [ %rflags.01190, %sw.bb39 ], [ %or38, %sw.bb37 ], [ %or, %sw.bb36 ], [ %rflags.01190, %sw.bb35 ], [ %rflags.01190, %sw.bb34 ], [ %rflags.01190, %sw.bb33 ], [ %rflags.01190, %sw.bb32 ], [ %rflags.01190, %sw.bb30 ], [ %rflags.01190, %sw.bb28 ], [ %rflags.01190, %sw.bb26 ], [ %rflags.01190, %sw.bb24 ], [ %rflags.01190, %sw.bb22 ], [ %rflags.01190, %if.end21 ], [ %rflags.01190, %sw.bb13 ], [ %rflags.01190, %sw.bb11 ], [ %rflags.01190, %if.end131 ], [ %rflags.01190, %if.end148 ], [ %rflags.01190, %if.end215 ]
  %call7 = call i32 @opt_next() #9
  %cmp8.not = icmp eq i32 %call7, 0
  br i1 %cmp8.not, label %while.end, label %while.body, !llvm.loop !12

while.end:                                        ; preds = %sw.epilog
  %call230 = call i32 @opt_num_rest() #9
  %cmp231.not = icmp eq i32 %call230, 0
  br i1 %cmp231.not, label %if.end233, label %opthelp

while.end.thread:                                 ; preds = %if.end
  %call2301336 = call i32 @opt_num_rest() #9
  %cmp231.not1337 = icmp eq i32 %call2301336, 0
  br i1 %cmp231.not1337, label %if.end244, label %opthelp

if.end233:                                        ; preds = %while.end
  %tobool234.not = icmp eq i32 %trailing_md.1, 0
  br i1 %tobool234.not, label %if.end237, label %if.then235

if.then235:                                       ; preds = %if.end233
  %37 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %38 = load i8*, i8** @prog, align 8, !tbaa !3
  %call236 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %37, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.202, i64 0, i64 0), i8* noundef %38) #9
  br label %opthelp

if.end237:                                        ; preds = %if.end233
  %cmp238.not = icmp eq i8* %respdigname.1, null
  br i1 %cmp238.not, label %if.end244, label %if.then239

if.then239:                                       ; preds = %if.end237
  %call240 = call i32 @opt_md(i8* noundef nonnull %respdigname.1, %struct.evp_md_st** noundef nonnull %rsign_md) #9
  %tobool241.not = icmp eq i32 %call240, 0
  br i1 %tobool241.not, label %end, label %if.end244

if.end244:                                        ; preds = %while.end.thread, %if.then239, %if.end237
  %rflags.0.lcssa140114481579 = phi i64 [ %rflags.1, %if.then239 ], [ %rflags.1, %if.end237 ], [ 0, %while.end.thread ]
  %verify_flags.0.lcssa140014491578 = phi i64 [ %verify_flags.1, %if.then239 ], [ %verify_flags.1, %if.end237 ], [ 0, %while.end.thread ]
  %sign_flags.0.lcssa139914501577 = phi i64 [ %sign_flags.1, %if.then239 ], [ %sign_flags.1, %if.end237 ], [ 0, %while.end.thread ]
  %req_timeout.0.lcssa139814511576 = phi i32 [ %req_timeout.1, %if.then239 ], [ %req_timeout.1, %if.end237 ], [ -1, %while.end.thread ]
  %resp_text.0.lcssa139714521575 = phi i32 [ %resp_text.1, %if.then239 ], [ %resp_text.1, %if.end237 ], [ 0, %while.end.thread ]
  %req_text.0.lcssa139614531574 = phi i32 [ %req_text.1, %if.then239 ], [ %req_text.1, %if.end237 ], [ 0, %while.end.thread ]
  %ndays.0.lcssa139514541573 = phi i32 [ %ndays.1, %if.then239 ], [ %ndays.1, %if.end237 ], [ -1, %while.end.thread ]
  %nmin.0.lcssa139414551572 = phi i32 [ %nmin.1, %if.then239 ], [ %nmin.1, %if.end237 ], [ 0, %while.end.thread ]
  %ignore_err.0.lcssa139314561571 = phi i32 [ %ignore_err.1, %if.then239 ], [ %ignore_err.1, %if.end237 ], [ 0, %while.end.thread ]
  %badsig.0.lcssa139214571570 = phi i32 [ %badsig.1, %if.then239 ], [ %badsig.1, %if.end237 ], [ 0, %while.end.thread ]
  %vpmtouched.0.lcssa139114581569 = phi i32 [ %vpmtouched.1, %if.then239 ], [ %vpmtouched.1, %if.end237 ], [ 0, %while.end.thread ]
  %noverify.0.lcssa139014591568 = phi i32 [ %noverify.1, %if.then239 ], [ %noverify.1, %if.end237 ], [ 0, %while.end.thread ]
  %add_nonce.0.lcssa138914601567 = phi i32 [ %add_nonce.1, %if.then239 ], [ %add_nonce.1, %if.end237 ], [ 1, %while.end.thread ]
  %accept_count.0.lcssa138814611566 = phi i32 [ %accept_count.1, %if.then239 ], [ %accept_count.1, %if.end237 ], [ -1, %while.end.thread ]
  %noCAstore.0.lcssa138714621565 = phi i32 [ %noCAstore.1, %if.then239 ], [ %noCAstore.1, %if.end237 ], [ 0, %while.end.thread ]
  %noCApath.0.lcssa138614631564 = phi i32 [ %noCApath.1, %if.then239 ], [ %noCApath.1, %if.end237 ], [ 0, %while.end.thread ]
  %noCAfile.0.lcssa138514641563 = phi i32 [ %noCAfile.1, %if.then239 ], [ %noCAfile.1, %if.end237 ], [ 0, %while.end.thread ]
  %tpath.0.lcssa138114651562 = phi i8* [ %tpath.1, %if.then239 ], [ %tpath.1, %if.end237 ], [ null, %while.end.thread ]
  %tport.0.lcssa137714661561 = phi i8* [ %tport.1, %if.then239 ], [ %tport.1, %if.end237 ], [ null, %while.end.thread ]
  %thost.0.lcssa137314671560 = phi i8* [ %thost.1, %if.then239 ], [ %thost.1, %if.end237 ], [ null, %while.end.thread ]
  %keyfile.0.lcssa137214681559 = phi i8* [ %keyfile.1, %if.then239 ], [ %keyfile.1, %if.end237 ], [ null, %while.end.thread ]
  %signfile.0.lcssa137114691558 = phi i8* [ %signfile.1, %if.then239 ], [ %signfile.1, %if.end237 ], [ null, %while.end.thread ]
  %rcertfile.0.lcssa137014701557 = phi i8* [ %rcertfile.1, %if.then239 ], [ %rcertfile.1, %if.end237 ], [ null, %while.end.thread ]
  %verify_certfile.0.lcssa136914711556 = phi i8* [ %verify_certfile.1, %if.then239 ], [ %verify_certfile.1, %if.end237 ], [ null, %while.end.thread ]
  %sign_certfile.0.lcssa136814721555 = phi i8* [ %sign_certfile.1, %if.then239 ], [ %sign_certfile.1, %if.end237 ], [ null, %while.end.thread ]
  %passinarg.0.lcssa136714731554 = phi i8* [ %passinarg.1, %if.then239 ], [ %passinarg.1, %if.end237 ], [ null, %while.end.thread ]
  %rkeyfile.0.lcssa136614741553 = phi i8* [ %rkeyfile.1, %if.then239 ], [ %rkeyfile.1, %if.end237 ], [ null, %while.end.thread ]
  %rsignfile.0.lcssa136514751552 = phi i8* [ %rsignfile.1, %if.then239 ], [ %rsignfile.1, %if.end237 ], [ null, %while.end.thread ]
  %ridx_filename.0.lcssa136314761551 = phi i8* [ %ridx_filename.1, %if.then239 ], [ %ridx_filename.1, %if.end237 ], [ null, %while.end.thread ]
  %respout.0.lcssa136214771550 = phi i8* [ %respout.1, %if.then239 ], [ %respout.1, %if.end237 ], [ null, %while.end.thread ]
  %reqout.0.lcssa136114781549 = phi i8* [ %reqout.1, %if.then239 ], [ %reqout.1, %if.end237 ], [ null, %while.end.thread ]
  %respin.0.lcssa136014791548 = phi i8* [ %respin.1, %if.then239 ], [ %respin.1, %if.end237 ], [ null, %while.end.thread ]
  %reqin.0.lcssa135914801547 = phi i8* [ %reqin.1, %if.then239 ], [ %reqin.1, %if.end237 ], [ null, %while.end.thread ]
  %rca_filename.0.lcssa135814811546 = phi i8* [ %rca_filename.1, %if.then239 ], [ %rca_filename.1, %if.end237 ], [ null, %while.end.thread ]
  %opt_no_proxy.0.lcssa135714821545 = phi i8* [ %opt_no_proxy.1, %if.then239 ], [ %opt_no_proxy.1, %if.end237 ], [ null, %while.end.thread ]
  %opt_proxy.0.lcssa135614831544 = phi i8* [ %opt_proxy.1, %if.then239 ], [ %opt_proxy.1, %if.end237 ], [ null, %while.end.thread ]
  %outfile.0.lcssa135514841543 = phi i8* [ %outfile.1, %if.then239 ], [ %outfile.1, %if.end237 ], [ null, %while.end.thread ]
  %CAstore.0.lcssa135314861542 = phi i8* [ %CAstore.1, %if.then239 ], [ %CAstore.1, %if.end237 ], [ null, %while.end.thread ]
  %CApath.0.lcssa135214871541 = phi i8* [ %CApath.1, %if.then239 ], [ %CApath.1, %if.end237 ], [ null, %while.end.thread ]
  %CAfile.0.lcssa135114881540 = phi i8* [ %CAfile.1, %if.then239 ], [ %CAfile.1, %if.end237 ], [ null, %while.end.thread ]
  %cert.0.lcssa134714891539 = phi %struct.x509_st* [ %cert.1, %if.then239 ], [ %cert.1, %if.end237 ], [ null, %while.end.thread ]
  %issuers.0.lcssa134314901538 = phi %struct.stack_st_X509* [ %issuers.2, %if.then239 ], [ %issuers.2, %if.end237 ], [ null, %while.end.thread ]
  %rsign_sigopts.0.lcssa133814911537 = phi %struct.stack_st_OPENSSL_STRING* [ %rsign_sigopts.2, %if.then239 ], [ %rsign_sigopts.2, %if.end237 ], [ null, %while.end.thread ]
  %39 = load %struct.ocsp_request_st*, %struct.ocsp_request_st** %req, align 8, !tbaa !3
  %cmp245 = icmp eq %struct.ocsp_request_st* %39, null
  %cmp246 = icmp eq i8* %reqin.0.lcssa135914801547, null
  %or.cond = select i1 %cmp245, i1 %cmp246, i1 false
  %cmp248 = icmp eq i8* %respin.0.lcssa136014791548, null
  %or.cond592 = select i1 %or.cond, i1 %cmp248, i1 false
  br i1 %or.cond592, label %land.lhs.true249, label %if.end254

land.lhs.true249:                                 ; preds = %if.end244
  %40 = load i8*, i8** %port, align 8, !tbaa !3
  %cmp250 = icmp ne i8* %40, null
  %cmp252 = icmp ne i8* %ridx_filename.0.lcssa136314761551, null
  %or.cond593 = select i1 %cmp250, i1 %cmp252, i1 false
  br i1 %or.cond593, label %if.end254, label %opthelp

if.end254:                                        ; preds = %land.lhs.true249, %if.end244
  %call255 = call %struct.bio_st* @bio_open_default(i8* noundef %outfile.0.lcssa135514841543, i8 noundef signext 119, i32 noundef 32769) #9
  %cmp256 = icmp eq %struct.bio_st* %call255, null
  br i1 %cmp256, label %end, label %if.end258

if.end258:                                        ; preds = %if.end254
  %41 = load %struct.ocsp_request_st*, %struct.ocsp_request_st** %req, align 8, !tbaa !3
  %cmp259 = icmp eq %struct.ocsp_request_st* %41, null
  %cmp261 = icmp ne i32 %add_nonce.0.lcssa138914601567, 2
  %or.cond594 = select i1 %cmp259, i1 %cmp261, i1 false
  %spec.store.select608 = select i1 %or.cond594, i32 0, i32 %add_nonce.0.lcssa138914601567
  %cmp266 = icmp ne i8* %reqin.0.lcssa135914801547, null
  %or.cond595 = select i1 %cmp259, i1 %cmp266, i1 false
  br i1 %or.cond595, label %if.then267, label %if.end278

if.then267:                                       ; preds = %if.end258
  %call268 = call %struct.bio_st* @bio_open_default(i8* noundef nonnull %reqin.0.lcssa135914801547, i8 noundef signext 114, i32 noundef 4) #9
  %cmp269 = icmp eq %struct.bio_st* %call268, null
  br i1 %cmp269, label %end, label %if.end271

if.end271:                                        ; preds = %if.then267
  %call272 = call i8* @ASN1_d2i_bio(i8* ()* noundef bitcast (%struct.ocsp_request_st* ()* @OCSP_REQUEST_new to i8* ()*), i8* (i8**, i8**, i64)* noundef bitcast (%struct.ocsp_request_st* (%struct.ocsp_request_st**, i8**, i64)* @d2i_OCSP_REQUEST to i8* (i8**, i8**, i64)*), %struct.bio_st* noundef nonnull %call268, i8** noundef null) #9
  %42 = bitcast %struct.ocsp_request_st** %req to i8**
  store i8* %call272, i8** %42, align 8, !tbaa !3
  %call273 = call i32 @BIO_free(%struct.bio_st* noundef nonnull %call268) #9
  %43 = load %struct.ocsp_request_st*, %struct.ocsp_request_st** %req, align 8, !tbaa !3
  %cmp274 = icmp eq %struct.ocsp_request_st* %43, null
  br i1 %cmp274, label %if.then275, label %if.end287

if.then275:                                       ; preds = %if.end271
  %44 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call276 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %44, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.203, i64 0, i64 0)) #9
  br label %end

if.end278:                                        ; preds = %if.end258
  %cmp279 = icmp eq %struct.ocsp_request_st* %41, null
  %45 = load i8*, i8** %port, align 8
  %cmp281 = icmp ne i8* %45, null
  %or.cond596 = select i1 %cmp279, i1 %cmp281, i1 false
  br i1 %or.cond596, label %if.then282, label %if.end287

if.then282:                                       ; preds = %if.end278
  %46 = load i8*, i8** @prog, align 8, !tbaa !3
  %call283 = call %struct.bio_st* @http_server_init_bio(i8* noundef %46, i8* noundef nonnull %45) #9
  %cmp284 = icmp eq %struct.bio_st* %call283, null
  br i1 %cmp284, label %end, label %if.end287

if.end287:                                        ; preds = %if.end271, %if.then282, %if.end278
  %acbio.0 = phi %struct.bio_st* [ %call283, %if.then282 ], [ null, %if.end278 ], [ null, %if.end271 ]
  %cmp288.not = icmp eq i8* %rsignfile.0.lcssa136514751552, null
  br i1 %cmp288.not, label %if.end318, label %if.then289

if.then289:                                       ; preds = %if.end287
  %cmp290 = icmp eq i8* %rkeyfile.0.lcssa136614741553, null
  %spec.select = select i1 %cmp290, i8* %rsignfile.0.lcssa136514751552, i8* %rkeyfile.0.lcssa136614741553
  %call293 = call %struct.x509_st* @load_cert_pass(i8* noundef nonnull %rsignfile.0.lcssa136514751552, i32 noundef 0, i32 noundef 1, i8* noundef null, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.204, i64 0, i64 0)) #9
  %cmp294 = icmp eq %struct.x509_st* %call293, null
  br i1 %cmp294, label %if.then295, label %if.end297

if.then295:                                       ; preds = %if.then289
  %47 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call296 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %47, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.205, i64 0, i64 0)) #9
  br label %end

if.end297:                                        ; preds = %if.then289
  %call298 = call i32 @load_certs(i8* noundef %rca_filename.0.lcssa135814811546, i32 noundef 0, %struct.stack_st_X509** noundef nonnull %rca_cert, i8* noundef null, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.206, i64 0, i64 0)) #9
  %tobool299.not = icmp eq i32 %call298, 0
  br i1 %tobool299.not, label %end, label %if.end301

if.end301:                                        ; preds = %if.end297
  %cmp302.not = icmp eq i8* %rcertfile.0.lcssa137014701557, null
  br i1 %cmp302.not, label %if.end308, label %if.then303

if.then303:                                       ; preds = %if.end301
  %call304 = call i32 @load_certs(i8* noundef nonnull %rcertfile.0.lcssa137014701557, i32 noundef 0, %struct.stack_st_X509** noundef nonnull %rother, i8* noundef null, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.207, i64 0, i64 0)) #9
  %tobool305.not = icmp eq i32 %call304, 0
  br i1 %tobool305.not, label %end, label %if.end308

if.end308:                                        ; preds = %if.then303, %if.end301
  %call309 = call i32 @app_passwd(i8* noundef %passinarg.0.lcssa136714731554, i8* noundef null, i8** noundef nonnull %passin, i8** noundef null) #9
  %tobool310.not = icmp eq i32 %call309, 0
  br i1 %tobool310.not, label %if.then311, label %if.end313

if.then311:                                       ; preds = %if.end308
  %48 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call312 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %48, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.208, i64 0, i64 0)) #9
  br label %end

if.end313:                                        ; preds = %if.end308
  %49 = load i8*, i8** %passin, align 8, !tbaa !3
  %call314 = call %struct.evp_pkey_st* @load_key(i8* noundef nonnull %spec.select, i32 noundef 0, i32 noundef 0, i8* noundef %49, %struct.engine_st* noundef null, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.209, i64 0, i64 0)) #9
  %cmp315 = icmp eq %struct.evp_pkey_st* %call314, null
  br i1 %cmp315, label %end, label %if.end318

if.end318:                                        ; preds = %if.end313, %if.end287
  %rkey.0 = phi %struct.evp_pkey_st* [ %call314, %if.end313 ], [ null, %if.end287 ]
  %rsigner.0 = phi %struct.x509_st* [ %call293, %if.end313 ], [ null, %if.end287 ]
  %cmp319 = icmp ne i8* %ridx_filename.0.lcssa136314761551, null
  br i1 %cmp319, label %land.lhs.true320, label %if.end339

land.lhs.true320:                                 ; preds = %if.end318
  %cmp321 = icmp eq %struct.evp_pkey_st* %rkey.0, null
  %cmp323 = icmp eq %struct.x509_st* %rsigner.0, null
  %or.cond597 = select i1 %cmp321, i1 true, i1 %cmp323
  %50 = load %struct.stack_st_X509*, %struct.stack_st_X509** %rca_cert, align 8
  %cmp325 = icmp eq %struct.stack_st_X509* %50, null
  %or.cond598 = select i1 %or.cond597, i1 true, i1 %cmp325
  br i1 %or.cond598, label %if.then326, label %if.then330

if.then326:                                       ; preds = %land.lhs.true320
  %51 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call327 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %51, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.210, i64 0, i64 0)) #9
  br label %end

if.then330:                                       ; preds = %land.lhs.true320
  %call331 = call %struct.ca_db_st* @load_index(i8* noundef nonnull %ridx_filename.0.lcssa136314761551, %struct.db_attr_st* noundef null) #9
  %cmp332 = icmp eq %struct.ca_db_st* %call331, null
  br i1 %cmp332, label %if.then336, label %lor.lhs.false333

lor.lhs.false333:                                 ; preds = %if.then330
  %call334 = call i32 @index_index(%struct.ca_db_st* noundef nonnull %call331) #9
  %cmp335 = icmp slt i32 %call334, 1
  br i1 %cmp335, label %if.then336, label %if.end339

if.then336:                                       ; preds = %lor.lhs.false333, %if.then330
  %52 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call337 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %52, i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @.str.211, i64 0, i64 0), i8* noundef nonnull %ridx_filename.0.lcssa136314761551) #9
  br label %end

if.end339:                                        ; preds = %if.end318, %lor.lhs.false333
  %ridx_filename.0.lcssa1364 = phi i8* [ %ridx_filename.0.lcssa136314761551, %lor.lhs.false333 ], [ null, %if.end318 ]
  %rdb.0 = phi %struct.ca_db_st* [ %call331, %lor.lhs.false333 ], [ null, %if.end318 ]
  %53 = load i32, i32* @multi, align 4, !tbaa !7
  %tobool340 = icmp ne i32 %53, 0
  %cmp342 = icmp ne %struct.bio_st* %acbio.0, null
  %or.cond599 = select i1 %tobool340, i1 %cmp342, i1 false
  br i1 %or.cond599, label %if.then343, label %if.end344

if.then343:                                       ; preds = %if.end339
  %54 = load i8*, i8** @prog, align 8, !tbaa !3
  call void @spawn_loop(i8* noundef %54) #9
  br label %if.end344

if.end344:                                        ; preds = %if.then343, %if.end339
  %cmp347 = icmp sgt i32 %req_timeout.0.lcssa139814511576, 0
  %or.cond600 = select i1 %cmp342, i1 %cmp347, i1 false
  br i1 %or.cond600, label %if.then348, label %if.end350

if.then348:                                       ; preds = %if.end344
  %call349 = call void (i32)* @signal(i32 noundef 14, void (i32)* noundef nonnull @socket_timeout) #9
  br label %if.end350

if.end350:                                        ; preds = %if.then348, %if.end344
  br i1 %cmp342, label %if.then352, label %if.end353

if.then352:                                       ; preds = %if.end350
  %55 = load i8*, i8** @prog, align 8, !tbaa !3
  call void (i8*, i32, i8*, ...) @log_message(i8* noundef %55, i32 noundef 6, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.212, i64 0, i64 0)) #9
  br label %if.end353

if.end353:                                        ; preds = %if.then352, %if.end350
  %cmp382 = icmp ne i8* %signfile.0.lcssa137114691558, null
  %cmp384 = icmp ne i8* %reqout.0.lcssa136114781549, null
  %or.cond601 = select i1 %cmp382, i1 true, i1 %cmp384
  %tobool388 = icmp ne i32 %spec.store.select608, 0
  %tobool396.not = icmp eq i32 %spec.store.select608, 0
  %cmp403.not = icmp eq i8* %signfile.0.lcssa137114691558, null
  %cmp413.not = icmp eq i8* %sign_certfile.0.lcssa136814721555, null
  %tobool430 = icmp ne i32 %req_text.0.lcssa139614531574, 0
  %cmp436.not = icmp eq i8* %reqout.0.lcssa136114781549, null
  %56 = bitcast %struct.ocsp_request_st** %req to i8**
  %57 = bitcast %struct.ocsp_response_st** %resp to i8**
  %cmp475.not = icmp eq i8* %respout.0.lcssa136214771550, null
  %tobool489.not = icmp eq i32 %ignore_err.0.lcssa139314561571, 0
  %tobool493.not = icmp eq i32 %resp_text.0.lcssa139714521575, 0
  br label %redo_accept.outer

redo_accept.outer:                                ; preds = %if.end506, %if.end353
  %rdb.1.ph = phi %struct.ca_db_st* [ %rdb.5, %if.end506 ], [ %rdb.0, %if.end353 ]
  %key.0.ph = phi %struct.evp_pkey_st* [ %key.2, %if.end506 ], [ null, %if.end353 ]
  %signer.0.ph = phi %struct.x509_st* [ %signer.2, %if.end506 ], [ null, %if.end353 ]
  %keyfile.2.ph = phi i8* [ %keyfile.5, %if.end506 ], [ %keyfile.0.lcssa137214681559, %if.end353 ]
  %accept_count.2.ph = phi i32 [ %accept_count.3, %if.end506 ], [ %accept_count.0.lcssa138814611566, %if.end353 ]
  br label %redo_accept

redo_accept:                                      ; preds = %redo_accept.outer, %if.end366
  %rdb.1 = phi %struct.ca_db_st* [ %rdb.3, %if.end366 ], [ %rdb.1.ph, %redo_accept.outer ]
  br i1 %cmp342, label %if.then355, label %if.end379

if.then355:                                       ; preds = %redo_accept
  %call356 = call fastcc i32 @index_changed(%struct.ca_db_st* noundef %rdb.1) #11
  %tobool357.not = icmp eq i32 %call356, 0
  br i1 %tobool357.not, label %if.end366, label %if.then358

if.then358:                                       ; preds = %if.then355
  %call359 = call %struct.ca_db_st* @load_index(i8* noundef %ridx_filename.0.lcssa1364, %struct.db_attr_st* noundef null) #9
  %cmp360.not = icmp eq %struct.ca_db_st* %call359, null
  br i1 %cmp360.not, label %if.else, label %land.lhs.true361

land.lhs.true361:                                 ; preds = %if.then358
  %call362 = call i32 @index_index(%struct.ca_db_st* noundef nonnull %call359) #9
  %cmp363 = icmp sgt i32 %call362, 0
  br i1 %cmp363, label %if.then364, label %if.else

if.then364:                                       ; preds = %land.lhs.true361
  call void @free_index(%struct.ca_db_st* noundef %rdb.1) #9
  br label %if.end366

if.else:                                          ; preds = %land.lhs.true361, %if.then358
  call void @free_index(%struct.ca_db_st* noundef %call359) #9
  %58 = load i8*, i8** @prog, align 8, !tbaa !3
  call void (i8*, i32, i8*, ...) @log_message(i8* noundef %58, i32 noundef 3, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.213, i64 0, i64 0), i8* noundef %ridx_filename.0.lcssa1364) #9
  br label %if.end366

if.end366:                                        ; preds = %if.then364, %if.else, %if.then355
  %rdb.3 = phi %struct.ca_db_st* [ %rdb.1, %if.then355 ], [ %call359, %if.then364 ], [ %rdb.1, %if.else ]
  store %struct.ocsp_request_st* null, %struct.ocsp_request_st** %req, align 8, !tbaa !3
  %59 = load i8*, i8** %port, align 8, !tbaa !3
  %call367 = call fastcc i32 @do_responder(%struct.ocsp_request_st** noundef nonnull %req, %struct.bio_st** noundef nonnull %cbio, %struct.bio_st* noundef nonnull %acbio.0, i8* noundef %59, i32 noundef %req_timeout.0.lcssa139814511576) #11
  %cmp368 = icmp eq i32 %call367, 0
  br i1 %cmp368, label %redo_accept, label %if.end370

if.end370:                                        ; preds = %if.end366
  %60 = load %struct.ocsp_request_st*, %struct.ocsp_request_st** %req, align 8, !tbaa !3
  %cmp371 = icmp eq %struct.ocsp_request_st* %60, null
  br i1 %cmp371, label %if.then372, label %if.end393

if.then372:                                       ; preds = %if.end370
  %cmp373 = icmp eq i32 %call367, 1
  br i1 %cmp373, label %if.then374, label %done_resp

if.then374:                                       ; preds = %if.then372
  %call375 = call %struct.ocsp_response_st* @OCSP_response_create(i32 noundef 1, %struct.ocsp_basic_response_st* noundef null) #9
  store %struct.ocsp_response_st* %call375, %struct.ocsp_response_st** %resp, align 8, !tbaa !3
  %61 = load %struct.bio_st*, %struct.bio_st** %cbio, align 8, !tbaa !3
  call fastcc void @send_ocsp_response(%struct.bio_st* noundef %61, %struct.ocsp_response_st* noundef %call375) #11
  br label %done_resp

if.end379:                                        ; preds = %redo_accept
  %.pr = load %struct.ocsp_request_st*, %struct.ocsp_request_st** %req, align 8, !tbaa !3
  %cmp380 = icmp eq %struct.ocsp_request_st* %.pr, null
  br i1 %cmp380, label %land.lhs.true381, label %if.end393

land.lhs.true381:                                 ; preds = %if.end379
  %62 = load i8*, i8** %host, align 8
  %cmp386 = icmp ne i8* %62, null
  %or.cond602 = select i1 %or.cond601, i1 true, i1 %cmp386
  %or.cond603 = select i1 %or.cond602, i1 true, i1 %tobool388
  %or.cond604 = select i1 %or.cond603, i1 true, i1 %cmp319
  br i1 %or.cond604, label %if.then391, label %if.end429

if.then391:                                       ; preds = %land.lhs.true381
  %63 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call392 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %63, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.214, i64 0, i64 0)) #9
  br label %end

if.end393:                                        ; preds = %if.end370, %if.end379
  %rdb.4825 = phi %struct.ca_db_st* [ %rdb.1.ph, %if.end379 ], [ %rdb.3, %if.end370 ]
  %64 = phi %struct.ocsp_request_st* [ %.pr, %if.end379 ], [ %60, %if.end370 ]
  br i1 %tobool396.not, label %if.end402, label %if.then397

if.then397:                                       ; preds = %if.end393
  %call398 = call i32 @OCSP_request_add1_nonce(%struct.ocsp_request_st* noundef nonnull %64, i8* noundef null, i32 noundef -1) #9
  %tobool399.not = icmp eq i32 %call398, 0
  br i1 %tobool399.not, label %end, label %if.end402

if.end402:                                        ; preds = %if.then397, %if.end393
  br i1 %cmp403.not, label %if.end429, label %if.then404

if.then404:                                       ; preds = %if.end402
  %cmp405 = icmp eq i8* %keyfile.2.ph, null
  %spec.select818 = select i1 %cmp405, i8* %signfile.0.lcssa137114691558, i8* %keyfile.2.ph
  %call408 = call %struct.x509_st* @load_cert_pass(i8* noundef nonnull %signfile.0.lcssa137114691558, i32 noundef 0, i32 noundef 1, i8* noundef null, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.215, i64 0, i64 0)) #9
  %cmp409 = icmp eq %struct.x509_st* %call408, null
  br i1 %cmp409, label %if.then410, label %if.end412

if.then410:                                       ; preds = %if.then404
  %65 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call411 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %65, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.216, i64 0, i64 0)) #9
  br label %end

if.end412:                                        ; preds = %if.then404
  br i1 %cmp413.not, label %if.end419, label %if.then414

if.then414:                                       ; preds = %if.end412
  %call415 = call i32 @load_certs(i8* noundef nonnull %sign_certfile.0.lcssa136814721555, i32 noundef 0, %struct.stack_st_X509** noundef nonnull %sign_other, i8* noundef null, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.217, i64 0, i64 0)) #9
  %tobool416.not = icmp eq i32 %call415, 0
  br i1 %tobool416.not, label %end, label %if.end419

if.end419:                                        ; preds = %if.then414, %if.end412
  %call420 = call %struct.evp_pkey_st* @load_key(i8* noundef nonnull %spec.select818, i32 noundef 0, i32 noundef 0, i8* noundef null, %struct.engine_st* noundef null, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.218, i64 0, i64 0)) #9
  %cmp421 = icmp eq %struct.evp_pkey_st* %call420, null
  br i1 %cmp421, label %end, label %if.end423

if.end423:                                        ; preds = %if.end419
  %66 = load %struct.ocsp_request_st*, %struct.ocsp_request_st** %req, align 8, !tbaa !3
  %67 = load %struct.stack_st_X509*, %struct.stack_st_X509** %sign_other, align 8, !tbaa !3
  %call424 = call i32 @OCSP_request_sign(%struct.ocsp_request_st* noundef %66, %struct.x509_st* noundef nonnull %call408, %struct.evp_pkey_st* noundef nonnull %call420, %struct.evp_md_st* noundef null, %struct.stack_st_X509* noundef %67, i64 noundef %sign_flags.0.lcssa139914501577) #9
  %tobool425.not = icmp eq i32 %call424, 0
  br i1 %tobool425.not, label %if.then426, label %if.end429

if.then426:                                       ; preds = %if.end423
  %68 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call427 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %68, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.219, i64 0, i64 0)) #9
  br label %end

if.end429:                                        ; preds = %land.lhs.true381, %if.end423, %if.end402
  %rdb.4825830833 = phi %struct.ca_db_st* [ %rdb.4825, %if.end423 ], [ %rdb.4825, %if.end402 ], [ %rdb.1.ph, %land.lhs.true381 ]
  %key.1 = phi %struct.evp_pkey_st* [ %call420, %if.end423 ], [ %key.0.ph, %if.end402 ], [ %key.0.ph, %land.lhs.true381 ]
  %signer.1 = phi %struct.x509_st* [ %call408, %if.end423 ], [ %signer.0.ph, %if.end402 ], [ %signer.0.ph, %land.lhs.true381 ]
  %keyfile.4 = phi i8* [ %spec.select818, %if.end423 ], [ %keyfile.2.ph, %if.end402 ], [ %keyfile.2.ph, %land.lhs.true381 ]
  %69 = load %struct.ocsp_request_st*, %struct.ocsp_request_st** %req, align 8
  %cmp432 = icmp ne %struct.ocsp_request_st* %69, null
  %or.cond606 = select i1 %tobool430, i1 %cmp432, i1 false
  br i1 %or.cond606, label %if.then433, label %if.end435

if.then433:                                       ; preds = %if.end429
  %call434 = call i32 @OCSP_REQUEST_print(%struct.bio_st* noundef %call255, %struct.ocsp_request_st* noundef nonnull %69, i64 noundef 0) #9
  br label %if.end435

if.end435:                                        ; preds = %if.then433, %if.end429
  br i1 %cmp436.not, label %if.end444, label %if.then437

if.then437:                                       ; preds = %if.end435
  %call438 = call %struct.bio_st* @bio_open_default(i8* noundef nonnull %reqout.0.lcssa136114781549, i8 noundef signext 119, i32 noundef 4) #9
  %cmp439 = icmp eq %struct.bio_st* %call438, null
  br i1 %cmp439, label %end, label %if.end441

if.end441:                                        ; preds = %if.then437
  %70 = load i8*, i8** %56, align 8, !tbaa !3
  %call442 = call i32 @ASN1_i2d_bio(i32 (i8*, i8**)* noundef bitcast (i32 (%struct.ocsp_request_st*, i8**)* @i2d_OCSP_REQUEST to i32 (i8*, i8**)*), %struct.bio_st* noundef nonnull %call438, i8* noundef %70) #9
  %call443 = call i32 @BIO_free(%struct.bio_st* noundef nonnull %call438) #9
  br label %if.end444

if.end444:                                        ; preds = %if.end441, %if.end435
  %cmp445.not = icmp eq %struct.ca_db_st* %rdb.4825830833, null
  br i1 %cmp445.not, label %if.else451, label %if.then446

if.then446:                                       ; preds = %if.end444
  %71 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %72 = load %struct.ocsp_request_st*, %struct.ocsp_request_st** %req, align 8, !tbaa !3
  %73 = load %struct.stack_st_X509*, %struct.stack_st_X509** %rca_cert, align 8, !tbaa !3
  %74 = load %struct.evp_md_st*, %struct.evp_md_st** %rsign_md, align 8, !tbaa !3
  %75 = load %struct.stack_st_X509*, %struct.stack_st_X509** %rother, align 8, !tbaa !3
  %76 = load %struct.evp_md_st*, %struct.evp_md_st** %resp_certid_md, align 8, !tbaa !3
  call fastcc void @make_ocsp_response(%struct.bio_st* noundef %71, %struct.ocsp_response_st** noundef nonnull %resp, %struct.ocsp_request_st* noundef %72, %struct.ca_db_st* noundef nonnull %rdb.4825830833, %struct.stack_st_X509* noundef %73, %struct.x509_st* noundef %rsigner.0, %struct.evp_pkey_st* noundef %rkey.0, %struct.evp_md_st* noundef %74, %struct.stack_st_OPENSSL_STRING* noundef %rsign_sigopts.0.lcssa133814911537, %struct.stack_st_X509* noundef %75, i64 noundef %rflags.0.lcssa140114481579, i32 noundef %nmin.0.lcssa139414551572, i32 noundef %ndays.0.lcssa139514541573, i32 noundef %badsig.0.lcssa139214571570, %struct.evp_md_st* noundef %76) #11
  %77 = load %struct.bio_st*, %struct.bio_st** %cbio, align 8, !tbaa !3
  %cmp447.not = icmp eq %struct.bio_st* %77, null
  br i1 %cmp447.not, label %done_resp, label %if.then448

if.then448:                                       ; preds = %if.then446
  %78 = load %struct.ocsp_response_st*, %struct.ocsp_response_st** %resp, align 8, !tbaa !3
  call fastcc void @send_ocsp_response(%struct.bio_st* noundef nonnull %77, %struct.ocsp_response_st* noundef %78) #11
  br label %done_resp

if.else451:                                       ; preds = %if.end444
  %79 = load i8*, i8** %host, align 8, !tbaa !3
  %cmp452.not = icmp eq i8* %79, null
  br i1 %cmp452.not, label %if.else458, label %if.then453

if.then453:                                       ; preds = %if.else451
  %80 = load %struct.ocsp_request_st*, %struct.ocsp_request_st** %req, align 8, !tbaa !3
  %81 = load i8*, i8** %port, align 8, !tbaa !3
  %82 = load i8*, i8** %path, align 8, !tbaa !3
  %83 = load i32, i32* %use_ssl, align 4, !tbaa !7
  %84 = load %struct.stack_st_CONF_VALUE*, %struct.stack_st_CONF_VALUE** %headers, align 8, !tbaa !3
  %call454 = call %struct.ocsp_response_st* @process_responder(%struct.ocsp_request_st* noundef %80, i8* noundef nonnull %79, i8* noundef %81, i8* noundef %82, i8* noundef %opt_proxy.0.lcssa135614831544, i8* noundef %opt_no_proxy.0.lcssa135714821545, i32 noundef %83, %struct.stack_st_CONF_VALUE* noundef %84, i32 noundef %req_timeout.0.lcssa139814511576) #11
  store %struct.ocsp_response_st* %call454, %struct.ocsp_response_st** %resp, align 8, !tbaa !3
  %cmp455 = icmp eq %struct.ocsp_response_st* %call454, null
  br i1 %cmp455, label %end, label %done_resp

if.else458:                                       ; preds = %if.else451
  br i1 %cmp248, label %end, label %if.then460

if.then460:                                       ; preds = %if.else458
  %call461 = call %struct.bio_st* @bio_open_default(i8* noundef nonnull %respin.0.lcssa136014791548, i8 noundef signext 114, i32 noundef 4) #9
  %cmp462 = icmp eq %struct.bio_st* %call461, null
  br i1 %cmp462, label %end, label %if.end464

if.end464:                                        ; preds = %if.then460
  %call465 = call i8* @ASN1_d2i_bio(i8* ()* noundef bitcast (%struct.ocsp_response_st* ()* @OCSP_RESPONSE_new to i8* ()*), i8* (i8**, i8**, i64)* noundef bitcast (%struct.ocsp_response_st* (%struct.ocsp_response_st**, i8**, i64)* @d2i_OCSP_RESPONSE to i8* (i8**, i8**, i64)*), %struct.bio_st* noundef nonnull %call461, i8** noundef null) #9
  store i8* %call465, i8** %57, align 8, !tbaa !3
  %call466 = call i32 @BIO_free(%struct.bio_st* noundef nonnull %call461) #9
  %cmp467 = icmp eq i8* %call465, null
  br i1 %cmp467, label %if.then468, label %done_resp

if.then468:                                       ; preds = %if.end464
  %85 = bitcast i8* %call465 to %struct.ocsp_response_st*
  %86 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call469 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %86, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.220, i64 0, i64 0)) #9
  br label %end

done_resp:                                        ; preds = %if.then448, %if.then446, %if.end464, %if.then453, %if.then372, %if.then374
  %rdb.5 = phi %struct.ca_db_st* [ %rdb.3, %if.then374 ], [ %rdb.3, %if.then372 ], [ %rdb.4825830833, %if.then448 ], [ %rdb.4825830833, %if.then446 ], [ null, %if.then453 ], [ null, %if.end464 ]
  %key.2 = phi %struct.evp_pkey_st* [ %key.0.ph, %if.then374 ], [ %key.0.ph, %if.then372 ], [ %key.1, %if.then448 ], [ %key.1, %if.then446 ], [ %key.1, %if.then453 ], [ %key.1, %if.end464 ]
  %signer.2 = phi %struct.x509_st* [ %signer.0.ph, %if.then374 ], [ %signer.0.ph, %if.then372 ], [ %signer.1, %if.then448 ], [ %signer.1, %if.then446 ], [ %signer.1, %if.then453 ], [ %signer.1, %if.end464 ]
  %keyfile.5 = phi i8* [ %keyfile.2.ph, %if.then374 ], [ %keyfile.2.ph, %if.then372 ], [ %keyfile.4, %if.then448 ], [ %keyfile.4, %if.then446 ], [ %keyfile.4, %if.then453 ], [ %keyfile.4, %if.end464 ]
  br i1 %cmp475.not, label %done_resp.if.end483_crit_edge, label %if.then476

done_resp.if.end483_crit_edge:                    ; preds = %done_resp
  %.pre = load %struct.ocsp_response_st*, %struct.ocsp_response_st** %resp, align 8, !tbaa !3
  br label %if.end483

if.then476:                                       ; preds = %done_resp
  %call477 = call %struct.bio_st* @bio_open_default(i8* noundef nonnull %respout.0.lcssa136214771550, i8 noundef signext 119, i32 noundef 4) #9
  %cmp478 = icmp eq %struct.bio_st* %call477, null
  br i1 %cmp478, label %if.then476.end.loopexit_crit_edge, label %if.end480

if.then476.end.loopexit_crit_edge:                ; preds = %if.then476
  %.pre1286.pre = load %struct.ocsp_response_st*, %struct.ocsp_response_st** %resp, align 8, !tbaa !3
  br label %end

if.end480:                                        ; preds = %if.then476
  %87 = load i8*, i8** %57, align 8, !tbaa !3
  %call481 = call i32 @ASN1_i2d_bio(i32 (i8*, i8**)* noundef bitcast (i32 (%struct.ocsp_response_st*, i8**)* @i2d_OCSP_RESPONSE to i32 (i8*, i8**)*), %struct.bio_st* noundef nonnull %call477, i8* noundef %87) #9
  %call482 = call i32 @BIO_free(%struct.bio_st* noundef nonnull %call477) #9
  %88 = bitcast i8* %87 to %struct.ocsp_response_st*
  br label %if.end483

if.end483:                                        ; preds = %done_resp.if.end483_crit_edge, %if.end480
  %.pre12861289 = phi %struct.ocsp_response_st* [ %.pre, %done_resp.if.end483_crit_edge ], [ %88, %if.end480 ]
  %call484 = call i32 @OCSP_response_status(%struct.ocsp_response_st* noundef %.pre12861289) #9
  %cmp485.not = icmp eq i32 %call484, 0
  br i1 %cmp485.not, label %if.end492, label %if.then486

if.then486:                                       ; preds = %if.end483
  %conv = sext i32 %call484 to i64
  %call487 = call i8* @OCSP_response_status_str(i64 noundef %conv) #9
  %call488 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %call255, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.221, i64 0, i64 0), i8* noundef %call487, i32 noundef %call484) #9
  br i1 %tobool489.not, label %end, label %if.end492

if.end492:                                        ; preds = %if.then486, %if.end483
  br i1 %tobool493.not, label %if.end496, label %if.then494

if.then494:                                       ; preds = %if.end492
  %call495 = call i32 @OCSP_RESPONSE_print(%struct.bio_st* noundef %call255, %struct.ocsp_response_st* noundef %.pre12861289, i64 noundef 0) #9
  br label %if.end496

if.end496:                                        ; preds = %if.then494, %if.end492
  %89 = load %struct.bio_st*, %struct.bio_st** %cbio, align 8, !tbaa !3
  %cmp497.not = icmp eq %struct.bio_st* %89, null
  br i1 %cmp497.not, label %if.end507, label %if.then499

if.then499:                                       ; preds = %if.end496
  %cmp500.not = icmp eq i32 %accept_count.2.ph, -1
  br i1 %cmp500.not, label %if.end506, label %land.lhs.true502

land.lhs.true502:                                 ; preds = %if.then499
  %dec = add nsw i32 %accept_count.2.ph, -1
  %cmp503 = icmp slt i32 %accept_count.2.ph, 2
  br i1 %cmp503, label %end, label %if.end506

if.end506:                                        ; preds = %land.lhs.true502, %if.then499
  %accept_count.3 = phi i32 [ %dec, %land.lhs.true502 ], [ -1, %if.then499 ]
  call void @BIO_free_all(%struct.bio_st* noundef nonnull %89) #9
  store %struct.bio_st* null, %struct.bio_st** %cbio, align 8, !tbaa !3
  %90 = load %struct.ocsp_request_st*, %struct.ocsp_request_st** %req, align 8, !tbaa !3
  call void @OCSP_REQUEST_free(%struct.ocsp_request_st* noundef %90) #9
  store %struct.ocsp_request_st* null, %struct.ocsp_request_st** %req, align 8, !tbaa !3
  call void @OCSP_RESPONSE_free(%struct.ocsp_response_st* noundef %.pre12861289) #9
  store %struct.ocsp_response_st* null, %struct.ocsp_response_st** %resp, align 8, !tbaa !3
  br label %redo_accept.outer

if.end507:                                        ; preds = %if.end496
  br i1 %cmp319, label %end, label %if.then514

if.then514:                                       ; preds = %if.end507
  %call515 = call %struct.x509_store_st* @setup_verify(i8* noundef %CAfile.0.lcssa135114881540, i32 noundef %noCAfile.0.lcssa138514641563, i8* noundef %CApath.0.lcssa135214871541, i32 noundef %noCApath.0.lcssa138614631564, i8* noundef %CAstore.0.lcssa135314861542, i32 noundef %noCAstore.0.lcssa138714621565) #9
  %tobool516.not = icmp eq %struct.x509_store_st* %call515, null
  br i1 %tobool516.not, label %end, label %if.end519

if.end519:                                        ; preds = %if.then514
  %tobool520.not = icmp eq i32 %vpmtouched.0.lcssa139114581569, 0
  br i1 %tobool520.not, label %if.end523, label %if.then521

if.then521:                                       ; preds = %if.end519
  %call522 = call i32 @X509_STORE_set1_param(%struct.x509_store_st* noundef nonnull %call515, %struct.X509_VERIFY_PARAM_st* noundef %call4) #9
  br label %if.end523

if.end523:                                        ; preds = %if.then521, %if.end519
  %cmp524.not = icmp eq i8* %verify_certfile.0.lcssa136914711556, null
  br i1 %cmp524.not, label %if.end531, label %if.then526

if.then526:                                       ; preds = %if.end523
  %call527 = call i32 @load_certs(i8* noundef nonnull %verify_certfile.0.lcssa136914711556, i32 noundef 0, %struct.stack_st_X509** noundef nonnull %verify_other, i8* noundef null, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.222, i64 0, i64 0)) #9
  %tobool528.not = icmp eq i32 %call527, 0
  br i1 %tobool528.not, label %end, label %if.end531

if.end531:                                        ; preds = %if.then526, %if.end523
  %call532 = call %struct.ocsp_basic_response_st* @OCSP_response_get1_basic(%struct.ocsp_response_st* noundef %.pre12861289) #9
  %cmp533 = icmp eq %struct.ocsp_basic_response_st* %call532, null
  br i1 %cmp533, label %if.then535, label %if.end537

if.then535:                                       ; preds = %if.end531
  %91 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call536 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %91, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.223, i64 0, i64 0)) #9
  br label %end

if.end537:                                        ; preds = %if.end531
  %tobool538.not = icmp eq i32 %noverify.0.lcssa139014591568, 0
  br i1 %tobool538.not, label %if.then539, label %if.end574

if.then539:                                       ; preds = %if.end537
  %92 = load %struct.ocsp_request_st*, %struct.ocsp_request_st** %req, align 8, !tbaa !3
  %cmp540.not = icmp eq %struct.ocsp_request_st* %92, null
  br i1 %cmp540.not, label %if.end554, label %land.lhs.true542

land.lhs.true542:                                 ; preds = %if.then539
  %call543 = call i32 @OCSP_check_nonce(%struct.ocsp_request_st* noundef nonnull %92, %struct.ocsp_basic_response_st* noundef nonnull %call532) #9
  %cmp544 = icmp slt i32 %call543, 1
  br i1 %cmp544, label %if.then546, label %if.end554

if.then546:                                       ; preds = %land.lhs.true542
  %cmp547 = icmp eq i32 %call543, -1
  %93 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  br i1 %cmp547, label %if.then549, label %if.else551

if.then549:                                       ; preds = %if.then546
  %call550 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %93, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.224, i64 0, i64 0)) #9
  br label %if.end554

if.else551:                                       ; preds = %if.then546
  %call552 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %93, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.225, i64 0, i64 0)) #9
  br label %end

if.end554:                                        ; preds = %if.then549, %land.lhs.true542, %if.then539
  %94 = load %struct.stack_st_X509*, %struct.stack_st_X509** %verify_other, align 8, !tbaa !3
  %call555 = call i32 @OCSP_basic_verify(%struct.ocsp_basic_response_st* noundef nonnull %call532, %struct.stack_st_X509* noundef %94, %struct.x509_store_st* noundef nonnull %call515, i64 noundef %verify_flags.0.lcssa140014491578) #9
  %cmp556 = icmp slt i32 %call555, 1
  %tobool559 = icmp ne %struct.stack_st_X509* %issuers.0.lcssa134314901538, null
  %or.cond607 = select i1 %cmp556, i1 %tobool559, i1 false
  br i1 %or.cond607, label %if.then560, label %if.end566

if.then560:                                       ; preds = %if.end554
  %call561 = call i32 @OCSP_basic_verify(%struct.ocsp_basic_response_st* noundef nonnull %call532, %struct.stack_st_X509* noundef nonnull %issuers.0.lcssa134314901538, %struct.x509_store_st* noundef nonnull %call515, i64 noundef 512) #9
  %cmp562 = icmp sgt i32 %call561, 0
  br i1 %cmp562, label %if.end566.thread836, label %if.then569

if.end566.thread836:                              ; preds = %if.then560
  call void @ERR_clear_error() #9
  br label %if.else571

if.end566:                                        ; preds = %if.end554
  br i1 %cmp556, label %if.then569, label %if.else571

if.then569:                                       ; preds = %if.then560, %if.end566
  %95 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call570 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %95, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.226, i64 0, i64 0)) #9
  %96 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  call void @ERR_print_errors(%struct.bio_st* noundef %96) #9
  br label %if.end574

if.else571:                                       ; preds = %if.end566.thread836, %if.end566
  %97 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call572 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %97, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.227, i64 0, i64 0)) #9
  br label %if.end574

if.end574:                                        ; preds = %if.then569, %if.else571, %if.end537
  %ret.0 = phi i32 [ 0, %if.end537 ], [ 1, %if.then569 ], [ 0, %if.else571 ]
  %98 = load %struct.ocsp_request_st*, %struct.ocsp_request_st** %req, align 8, !tbaa !3
  %99 = load i64, i64* %nsec, align 8, !tbaa !9
  %100 = load i64, i64* %maxage, align 8, !tbaa !9
  %call575 = call fastcc i32 @print_ocsp_summary(%struct.bio_st* noundef %call255, %struct.ocsp_basic_response_st* noundef nonnull %call532, %struct.ocsp_request_st* noundef %98, %struct.stack_st_OPENSSL_STRING* noundef nonnull %18, %struct.stack_st_OCSP_CERTID* noundef nonnull %19, i64 noundef %99, i64 noundef %100) #11
  %tobool576.not = icmp eq i32 %call575, 0
  %spec.select819 = select i1 %tobool576.not, i32 1, i32 %ret.0
  br label %end

end:                                              ; preds = %sw.bb225, %if.end200, %if.end184, %lor.lhs.false186, %if.end148, %if.end143, %if.end131, %if.end127, %sw.bb118, %if.end111, %if.then106, %sw.bb99, %sw.bb82, %land.lhs.true502, %if.else458, %if.then486, %if.then460, %if.then453, %if.then437, %if.end419, %if.then414, %if.then397, %if.then476.end.loopexit_crit_edge, %if.end574, %if.end507, %if.then526, %if.then514, %if.end313, %if.then303, %if.end297, %if.then282, %if.then267, %if.end254, %if.then239, %entry, %lor.lhs.false, %lor.lhs.false3, %if.else551, %if.then535, %if.then468, %if.then426, %if.then410, %if.then391, %if.then336, %if.then326, %if.then311, %if.then295, %if.then275, %if.then19, %sw.bb10, %opthelp
  %101 = phi %struct.ocsp_response_st* [ null, %entry ], [ null, %lor.lhs.false ], [ null, %lor.lhs.false3 ], [ null, %opthelp ], [ null, %if.then19 ], [ null, %sw.bb10 ], [ null, %if.end254 ], [ null, %if.then267 ], [ null, %if.then275 ], [ null, %if.then282 ], [ null, %if.then295 ], [ null, %if.end313 ], [ null, %if.then326 ], [ null, %if.then336 ], [ %.pre12861289, %if.then535 ], [ %.pre12861289, %if.else551 ], [ %.pre12861289, %if.then526 ], [ %.pre12861289, %if.then514 ], [ null, %if.then391 ], [ null, %if.then410 ], [ %85, %if.then468 ], [ null, %if.then426 ], [ null, %if.then311 ], [ null, %if.then303 ], [ null, %if.end297 ], [ null, %if.then239 ], [ %.pre12861289, %if.end507 ], [ %.pre12861289, %if.end574 ], [ %.pre1286.pre, %if.then476.end.loopexit_crit_edge ], [ %.pre12861289, %land.lhs.true502 ], [ null, %if.else458 ], [ %.pre12861289, %if.then486 ], [ null, %if.then460 ], [ null, %if.then453 ], [ null, %if.then437 ], [ null, %if.end419 ], [ null, %if.then414 ], [ null, %if.then397 ], [ null, %sw.bb82 ], [ null, %sw.bb99 ], [ null, %if.then106 ], [ null, %if.end111 ], [ null, %sw.bb118 ], [ null, %if.end127 ], [ null, %if.end131 ], [ null, %if.end143 ], [ null, %if.end148 ], [ null, %lor.lhs.false186 ], [ null, %if.end184 ], [ null, %if.end200 ], [ null, %sw.bb225 ]
  %rsign_sigopts.3 = phi %struct.stack_st_OPENSSL_STRING* [ null, %entry ], [ null, %lor.lhs.false ], [ null, %lor.lhs.false3 ], [ %rsign_sigopts.01135, %opthelp ], [ %rsign_sigopts.01138, %if.then19 ], [ %rsign_sigopts.01138, %sw.bb10 ], [ %rsign_sigopts.0.lcssa133814911537, %if.end254 ], [ %rsign_sigopts.0.lcssa133814911537, %if.then267 ], [ %rsign_sigopts.0.lcssa133814911537, %if.then275 ], [ %rsign_sigopts.0.lcssa133814911537, %if.then282 ], [ %rsign_sigopts.0.lcssa133814911537, %if.then295 ], [ %rsign_sigopts.0.lcssa133814911537, %if.end313 ], [ %rsign_sigopts.0.lcssa133814911537, %if.then326 ], [ %rsign_sigopts.0.lcssa133814911537, %if.then336 ], [ %rsign_sigopts.0.lcssa133814911537, %if.then535 ], [ %rsign_sigopts.0.lcssa133814911537, %if.else551 ], [ %rsign_sigopts.0.lcssa133814911537, %if.then526 ], [ %rsign_sigopts.0.lcssa133814911537, %if.then514 ], [ %rsign_sigopts.0.lcssa133814911537, %if.then391 ], [ %rsign_sigopts.0.lcssa133814911537, %if.then410 ], [ %rsign_sigopts.0.lcssa133814911537, %if.then468 ], [ %rsign_sigopts.0.lcssa133814911537, %if.then426 ], [ %rsign_sigopts.0.lcssa133814911537, %if.then311 ], [ %rsign_sigopts.0.lcssa133814911537, %if.then303 ], [ %rsign_sigopts.0.lcssa133814911537, %if.end297 ], [ %rsign_sigopts.2, %if.then239 ], [ %rsign_sigopts.0.lcssa133814911537, %if.end507 ], [ %rsign_sigopts.0.lcssa133814911537, %if.end574 ], [ %rsign_sigopts.0.lcssa133814911537, %if.then476.end.loopexit_crit_edge ], [ %rsign_sigopts.0.lcssa133814911537, %if.then397 ], [ %rsign_sigopts.0.lcssa133814911537, %if.then414 ], [ %rsign_sigopts.0.lcssa133814911537, %if.end419 ], [ %rsign_sigopts.0.lcssa133814911537, %if.then437 ], [ %rsign_sigopts.0.lcssa133814911537, %if.then453 ], [ %rsign_sigopts.0.lcssa133814911537, %if.then460 ], [ %rsign_sigopts.0.lcssa133814911537, %if.then486 ], [ %rsign_sigopts.0.lcssa133814911537, %if.else458 ], [ %rsign_sigopts.0.lcssa133814911537, %land.lhs.true502 ], [ %rsign_sigopts.01138, %sw.bb225 ], [ %rsign_sigopts.01138, %if.end200 ], [ null, %if.end184 ], [ %rsign_sigopts.1822, %lor.lhs.false186 ], [ %rsign_sigopts.01138, %if.end148 ], [ %rsign_sigopts.01138, %if.end143 ], [ %rsign_sigopts.01138, %if.end131 ], [ %rsign_sigopts.01138, %if.end127 ], [ %rsign_sigopts.01138, %sw.bb118 ], [ %rsign_sigopts.01138, %if.end111 ], [ %rsign_sigopts.01138, %if.then106 ], [ %rsign_sigopts.01138, %sw.bb99 ], [ %rsign_sigopts.01138, %sw.bb82 ]
  %rdb.6 = phi %struct.ca_db_st* [ null, %entry ], [ null, %lor.lhs.false ], [ null, %lor.lhs.false3 ], [ null, %opthelp ], [ null, %if.then19 ], [ null, %sw.bb10 ], [ null, %if.end254 ], [ null, %if.then267 ], [ null, %if.then275 ], [ null, %if.then282 ], [ null, %if.then295 ], [ null, %if.end313 ], [ null, %if.then326 ], [ %call331, %if.then336 ], [ %rdb.5, %if.then535 ], [ %rdb.5, %if.else551 ], [ %rdb.5, %if.then526 ], [ %rdb.5, %if.then514 ], [ %rdb.1.ph, %if.then391 ], [ %rdb.4825, %if.then410 ], [ null, %if.then468 ], [ %rdb.4825, %if.then426 ], [ null, %if.then311 ], [ null, %if.then303 ], [ null, %if.end297 ], [ null, %if.then239 ], [ %rdb.5, %if.end507 ], [ %rdb.5, %if.end574 ], [ %rdb.5, %if.then476.end.loopexit_crit_edge ], [ %rdb.5, %land.lhs.true502 ], [ null, %if.else458 ], [ %rdb.5, %if.then486 ], [ null, %if.then460 ], [ null, %if.then453 ], [ %rdb.4825830833, %if.then437 ], [ %rdb.4825, %if.end419 ], [ %rdb.4825, %if.then414 ], [ %rdb.4825, %if.then397 ], [ null, %sw.bb82 ], [ null, %sw.bb99 ], [ null, %if.then106 ], [ null, %if.end111 ], [ null, %sw.bb118 ], [ null, %if.end127 ], [ null, %if.end131 ], [ null, %if.end143 ], [ null, %if.end148 ], [ null, %lor.lhs.false186 ], [ null, %if.end184 ], [ null, %if.end200 ], [ null, %sw.bb225 ]
  %key.3 = phi %struct.evp_pkey_st* [ null, %entry ], [ null, %lor.lhs.false ], [ null, %lor.lhs.false3 ], [ null, %opthelp ], [ null, %if.then19 ], [ null, %sw.bb10 ], [ null, %if.end254 ], [ null, %if.then267 ], [ null, %if.then275 ], [ null, %if.then282 ], [ null, %if.then295 ], [ null, %if.end313 ], [ null, %if.then326 ], [ null, %if.then336 ], [ %key.2, %if.then535 ], [ %key.2, %if.else551 ], [ %key.2, %if.then526 ], [ %key.2, %if.then514 ], [ %key.0.ph, %if.then391 ], [ %key.0.ph, %if.then410 ], [ %key.1, %if.then468 ], [ %call420, %if.then426 ], [ null, %if.then311 ], [ null, %if.then303 ], [ null, %if.end297 ], [ null, %if.then239 ], [ %key.2, %if.end507 ], [ %key.2, %if.end574 ], [ %key.2, %if.then476.end.loopexit_crit_edge ], [ %key.2, %land.lhs.true502 ], [ %key.1, %if.else458 ], [ %key.2, %if.then486 ], [ %key.1, %if.then460 ], [ %key.1, %if.then453 ], [ %key.1, %if.then437 ], [ null, %if.end419 ], [ %key.0.ph, %if.then414 ], [ %key.0.ph, %if.then397 ], [ null, %sw.bb82 ], [ null, %sw.bb99 ], [ null, %if.then106 ], [ null, %if.end111 ], [ null, %sw.bb118 ], [ null, %if.end127 ], [ null, %if.end131 ], [ null, %if.end143 ], [ null, %if.end148 ], [ null, %lor.lhs.false186 ], [ null, %if.end184 ], [ null, %if.end200 ], [ null, %sw.bb225 ]
  %rkey.1 = phi %struct.evp_pkey_st* [ null, %entry ], [ null, %lor.lhs.false ], [ null, %lor.lhs.false3 ], [ null, %opthelp ], [ null, %if.then19 ], [ null, %sw.bb10 ], [ null, %if.end254 ], [ null, %if.then267 ], [ null, %if.then275 ], [ null, %if.then282 ], [ null, %if.then295 ], [ null, %if.end313 ], [ %rkey.0, %if.then326 ], [ %rkey.0, %if.then336 ], [ %rkey.0, %if.then535 ], [ %rkey.0, %if.else551 ], [ %rkey.0, %if.then526 ], [ %rkey.0, %if.then514 ], [ %rkey.0, %if.then391 ], [ %rkey.0, %if.then410 ], [ %rkey.0, %if.then468 ], [ %rkey.0, %if.then426 ], [ null, %if.then311 ], [ null, %if.then303 ], [ null, %if.end297 ], [ null, %if.then239 ], [ %rkey.0, %if.end507 ], [ %rkey.0, %if.end574 ], [ %rkey.0, %if.then476.end.loopexit_crit_edge ], [ %rkey.0, %if.then397 ], [ %rkey.0, %if.then414 ], [ %rkey.0, %if.end419 ], [ %rkey.0, %if.then437 ], [ %rkey.0, %if.then453 ], [ %rkey.0, %if.then460 ], [ %rkey.0, %if.then486 ], [ %rkey.0, %if.else458 ], [ %rkey.0, %land.lhs.true502 ], [ null, %sw.bb82 ], [ null, %sw.bb99 ], [ null, %if.then106 ], [ null, %if.end111 ], [ null, %sw.bb118 ], [ null, %if.end127 ], [ null, %if.end131 ], [ null, %if.end143 ], [ null, %if.end148 ], [ null, %lor.lhs.false186 ], [ null, %if.end184 ], [ null, %if.end200 ], [ null, %sw.bb225 ]
  %bs.0 = phi %struct.ocsp_basic_response_st* [ null, %entry ], [ null, %lor.lhs.false ], [ null, %lor.lhs.false3 ], [ null, %opthelp ], [ null, %if.then19 ], [ null, %sw.bb10 ], [ null, %if.end254 ], [ null, %if.then267 ], [ null, %if.then275 ], [ null, %if.then282 ], [ null, %if.then295 ], [ null, %if.end313 ], [ null, %if.then326 ], [ null, %if.then336 ], [ null, %if.then535 ], [ %call532, %if.else551 ], [ null, %if.then526 ], [ null, %if.then514 ], [ null, %if.then391 ], [ null, %if.then410 ], [ null, %if.then468 ], [ null, %if.then426 ], [ null, %if.then311 ], [ null, %if.then303 ], [ null, %if.end297 ], [ null, %if.then239 ], [ null, %if.end507 ], [ %call532, %if.end574 ], [ null, %if.then476.end.loopexit_crit_edge ], [ null, %if.then397 ], [ null, %if.then414 ], [ null, %if.end419 ], [ null, %if.then437 ], [ null, %if.then453 ], [ null, %if.then460 ], [ null, %if.then486 ], [ null, %if.else458 ], [ null, %land.lhs.true502 ], [ null, %sw.bb82 ], [ null, %sw.bb99 ], [ null, %if.then106 ], [ null, %if.end111 ], [ null, %sw.bb118 ], [ null, %if.end127 ], [ null, %if.end131 ], [ null, %if.end143 ], [ null, %if.end148 ], [ null, %lor.lhs.false186 ], [ null, %if.end184 ], [ null, %if.end200 ], [ null, %sw.bb225 ]
  %ids.0 = phi %struct.stack_st_OCSP_CERTID* [ null, %entry ], [ null, %lor.lhs.false ], [ %19, %lor.lhs.false3 ], [ %19, %opthelp ], [ %19, %if.then19 ], [ %19, %sw.bb10 ], [ %19, %if.end254 ], [ %19, %if.then267 ], [ %19, %if.then275 ], [ %19, %if.then282 ], [ %19, %if.then295 ], [ %19, %if.end313 ], [ %19, %if.then326 ], [ %19, %if.then336 ], [ %19, %if.then535 ], [ %19, %if.else551 ], [ %19, %if.then526 ], [ %19, %if.then514 ], [ %19, %if.then391 ], [ %19, %if.then410 ], [ %19, %if.then468 ], [ %19, %if.then426 ], [ %19, %if.then311 ], [ %19, %if.then303 ], [ %19, %if.end297 ], [ %19, %if.then239 ], [ %19, %if.end507 ], [ %19, %if.end574 ], [ %19, %if.then476.end.loopexit_crit_edge ], [ %19, %if.then397 ], [ %19, %if.then414 ], [ %19, %if.end419 ], [ %19, %if.then437 ], [ %19, %if.then453 ], [ %19, %if.then460 ], [ %19, %if.then486 ], [ %19, %if.else458 ], [ %19, %land.lhs.true502 ], [ %19, %sw.bb82 ], [ %19, %sw.bb99 ], [ %19, %if.then106 ], [ %19, %if.end111 ], [ %19, %sw.bb118 ], [ %19, %if.end127 ], [ %19, %if.end131 ], [ %19, %if.end143 ], [ %19, %if.end148 ], [ %19, %lor.lhs.false186 ], [ %19, %if.end184 ], [ %19, %if.end200 ], [ %19, %sw.bb225 ]
  %issuers.3 = phi %struct.stack_st_X509* [ null, %entry ], [ null, %lor.lhs.false ], [ null, %lor.lhs.false3 ], [ %issuers.01121, %opthelp ], [ %issuers.01141, %if.then19 ], [ %issuers.01141, %sw.bb10 ], [ %issuers.0.lcssa134314901538, %if.end254 ], [ %issuers.0.lcssa134314901538, %if.then267 ], [ %issuers.0.lcssa134314901538, %if.then275 ], [ %issuers.0.lcssa134314901538, %if.then282 ], [ %issuers.0.lcssa134314901538, %if.then295 ], [ %issuers.0.lcssa134314901538, %if.end313 ], [ %issuers.0.lcssa134314901538, %if.then326 ], [ %issuers.0.lcssa134314901538, %if.then336 ], [ %issuers.0.lcssa134314901538, %if.then535 ], [ %issuers.0.lcssa134314901538, %if.else551 ], [ %issuers.0.lcssa134314901538, %if.then526 ], [ %issuers.0.lcssa134314901538, %if.then514 ], [ %issuers.0.lcssa134314901538, %if.then391 ], [ %issuers.0.lcssa134314901538, %if.then410 ], [ %issuers.0.lcssa134314901538, %if.then468 ], [ %issuers.0.lcssa134314901538, %if.then426 ], [ %issuers.0.lcssa134314901538, %if.then311 ], [ %issuers.0.lcssa134314901538, %if.then303 ], [ %issuers.0.lcssa134314901538, %if.end297 ], [ %issuers.2, %if.then239 ], [ %issuers.0.lcssa134314901538, %if.end507 ], [ %issuers.0.lcssa134314901538, %if.end574 ], [ %issuers.0.lcssa134314901538, %if.then476.end.loopexit_crit_edge ], [ %issuers.0.lcssa134314901538, %if.then397 ], [ %issuers.0.lcssa134314901538, %if.then414 ], [ %issuers.0.lcssa134314901538, %if.end419 ], [ %issuers.0.lcssa134314901538, %if.then437 ], [ %issuers.0.lcssa134314901538, %if.then453 ], [ %issuers.0.lcssa134314901538, %if.then460 ], [ %issuers.0.lcssa134314901538, %if.then486 ], [ %issuers.0.lcssa134314901538, %if.else458 ], [ %issuers.0.lcssa134314901538, %land.lhs.true502 ], [ %issuers.01141, %sw.bb225 ], [ %issuers.01141, %if.end200 ], [ %issuers.01141, %if.end184 ], [ %issuers.01141, %lor.lhs.false186 ], [ %issuers.01141, %if.end148 ], [ %issuers.01141, %if.end143 ], [ %issuers.01141, %if.end131 ], [ %issuers.01141, %if.end127 ], [ %issuers.01141, %sw.bb118 ], [ %issuers.1, %if.end111 ], [ null, %if.then106 ], [ %issuers.01141, %sw.bb99 ], [ %issuers.01141, %sw.bb82 ]
  %cert.2 = phi %struct.x509_st* [ null, %entry ], [ null, %lor.lhs.false ], [ null, %lor.lhs.false3 ], [ %cert.01113, %opthelp ], [ %cert.01144, %if.then19 ], [ %cert.01144, %sw.bb10 ], [ %cert.0.lcssa134714891539, %if.end254 ], [ %cert.0.lcssa134714891539, %if.then267 ], [ %cert.0.lcssa134714891539, %if.then275 ], [ %cert.0.lcssa134714891539, %if.then282 ], [ %cert.0.lcssa134714891539, %if.then295 ], [ %cert.0.lcssa134714891539, %if.end313 ], [ %cert.0.lcssa134714891539, %if.then326 ], [ %cert.0.lcssa134714891539, %if.then336 ], [ %cert.0.lcssa134714891539, %if.then535 ], [ %cert.0.lcssa134714891539, %if.else551 ], [ %cert.0.lcssa134714891539, %if.then526 ], [ %cert.0.lcssa134714891539, %if.then514 ], [ %cert.0.lcssa134714891539, %if.then391 ], [ %cert.0.lcssa134714891539, %if.then410 ], [ %cert.0.lcssa134714891539, %if.then468 ], [ %cert.0.lcssa134714891539, %if.then426 ], [ %cert.0.lcssa134714891539, %if.then311 ], [ %cert.0.lcssa134714891539, %if.then303 ], [ %cert.0.lcssa134714891539, %if.end297 ], [ %cert.1, %if.then239 ], [ %cert.0.lcssa134714891539, %if.end507 ], [ %cert.0.lcssa134714891539, %if.end574 ], [ %cert.0.lcssa134714891539, %if.then476.end.loopexit_crit_edge ], [ %cert.0.lcssa134714891539, %if.then397 ], [ %cert.0.lcssa134714891539, %if.then414 ], [ %cert.0.lcssa134714891539, %if.end419 ], [ %cert.0.lcssa134714891539, %if.then437 ], [ %cert.0.lcssa134714891539, %if.then453 ], [ %cert.0.lcssa134714891539, %if.then460 ], [ %cert.0.lcssa134714891539, %if.then486 ], [ %cert.0.lcssa134714891539, %if.else458 ], [ %cert.0.lcssa134714891539, %land.lhs.true502 ], [ %cert.01144, %sw.bb225 ], [ %cert.01144, %if.end200 ], [ %cert.01144, %if.end184 ], [ %cert.01144, %lor.lhs.false186 ], [ %cert.01144, %if.end148 ], [ %cert.01144, %if.end143 ], [ %call120, %if.end131 ], [ %call120, %if.end127 ], [ null, %sw.bb118 ], [ %cert.01144, %if.end111 ], [ %cert.01144, %if.then106 ], [ %cert.01144, %sw.bb99 ], [ %cert.01144, %sw.bb82 ]
  %signer.3 = phi %struct.x509_st* [ null, %entry ], [ null, %lor.lhs.false ], [ null, %lor.lhs.false3 ], [ null, %opthelp ], [ null, %if.then19 ], [ null, %sw.bb10 ], [ null, %if.end254 ], [ null, %if.then267 ], [ null, %if.then275 ], [ null, %if.then282 ], [ null, %if.then295 ], [ null, %if.end313 ], [ null, %if.then326 ], [ null, %if.then336 ], [ %signer.2, %if.then535 ], [ %signer.2, %if.else551 ], [ %signer.2, %if.then526 ], [ %signer.2, %if.then514 ], [ %signer.0.ph, %if.then391 ], [ null, %if.then410 ], [ %signer.1, %if.then468 ], [ %call408, %if.then426 ], [ null, %if.then311 ], [ null, %if.then303 ], [ null, %if.end297 ], [ null, %if.then239 ], [ %signer.2, %if.end507 ], [ %signer.2, %if.end574 ], [ %signer.2, %if.then476.end.loopexit_crit_edge ], [ %signer.2, %land.lhs.true502 ], [ %signer.1, %if.else458 ], [ %signer.2, %if.then486 ], [ %signer.1, %if.then460 ], [ %signer.1, %if.then453 ], [ %signer.1, %if.then437 ], [ %call408, %if.end419 ], [ %call408, %if.then414 ], [ %signer.0.ph, %if.then397 ], [ null, %sw.bb82 ], [ null, %sw.bb99 ], [ null, %if.then106 ], [ null, %if.end111 ], [ null, %sw.bb118 ], [ null, %if.end127 ], [ null, %if.end131 ], [ null, %if.end143 ], [ null, %if.end148 ], [ null, %lor.lhs.false186 ], [ null, %if.end184 ], [ null, %if.end200 ], [ null, %sw.bb225 ]
  %rsigner.1 = phi %struct.x509_st* [ null, %entry ], [ null, %lor.lhs.false ], [ null, %lor.lhs.false3 ], [ null, %opthelp ], [ null, %if.then19 ], [ null, %sw.bb10 ], [ null, %if.end254 ], [ null, %if.then267 ], [ null, %if.then275 ], [ null, %if.then282 ], [ null, %if.then295 ], [ %call293, %if.end313 ], [ %rsigner.0, %if.then326 ], [ %rsigner.0, %if.then336 ], [ %rsigner.0, %if.then535 ], [ %rsigner.0, %if.else551 ], [ %rsigner.0, %if.then526 ], [ %rsigner.0, %if.then514 ], [ %rsigner.0, %if.then391 ], [ %rsigner.0, %if.then410 ], [ %rsigner.0, %if.then468 ], [ %rsigner.0, %if.then426 ], [ %call293, %if.then311 ], [ %call293, %if.then303 ], [ %call293, %if.end297 ], [ null, %if.then239 ], [ %rsigner.0, %if.end507 ], [ %rsigner.0, %if.end574 ], [ %rsigner.0, %if.then476.end.loopexit_crit_edge ], [ %rsigner.0, %if.then397 ], [ %rsigner.0, %if.then414 ], [ %rsigner.0, %if.end419 ], [ %rsigner.0, %if.then437 ], [ %rsigner.0, %if.then453 ], [ %rsigner.0, %if.then460 ], [ %rsigner.0, %if.then486 ], [ %rsigner.0, %if.else458 ], [ %rsigner.0, %land.lhs.true502 ], [ null, %sw.bb82 ], [ null, %sw.bb99 ], [ null, %if.then106 ], [ null, %if.end111 ], [ null, %sw.bb118 ], [ null, %if.end127 ], [ null, %if.end131 ], [ null, %if.end143 ], [ null, %if.end148 ], [ null, %lor.lhs.false186 ], [ null, %if.end184 ], [ null, %if.end200 ], [ null, %sw.bb225 ]
  %store.1 = phi %struct.x509_store_st* [ null, %entry ], [ null, %lor.lhs.false ], [ null, %lor.lhs.false3 ], [ null, %opthelp ], [ null, %if.then19 ], [ null, %sw.bb10 ], [ null, %if.end254 ], [ null, %if.then267 ], [ null, %if.then275 ], [ null, %if.then282 ], [ null, %if.then295 ], [ null, %if.end313 ], [ null, %if.then326 ], [ null, %if.then336 ], [ %call515, %if.then535 ], [ %call515, %if.else551 ], [ %call515, %if.then526 ], [ null, %if.then514 ], [ null, %if.then391 ], [ null, %if.then410 ], [ null, %if.then468 ], [ null, %if.then426 ], [ null, %if.then311 ], [ null, %if.then303 ], [ null, %if.end297 ], [ null, %if.then239 ], [ null, %if.end507 ], [ %call515, %if.end574 ], [ null, %if.then476.end.loopexit_crit_edge ], [ null, %if.then397 ], [ null, %if.then414 ], [ null, %if.end419 ], [ null, %if.then437 ], [ null, %if.then453 ], [ null, %if.then460 ], [ null, %if.then486 ], [ null, %if.else458 ], [ null, %land.lhs.true502 ], [ null, %sw.bb82 ], [ null, %sw.bb99 ], [ null, %if.then106 ], [ null, %if.end111 ], [ null, %sw.bb118 ], [ null, %if.end127 ], [ null, %if.end131 ], [ null, %if.end143 ], [ null, %if.end148 ], [ null, %lor.lhs.false186 ], [ null, %if.end184 ], [ null, %if.end200 ], [ null, %sw.bb225 ]
  %vpm.0 = phi %struct.X509_VERIFY_PARAM_st* [ null, %entry ], [ null, %lor.lhs.false ], [ null, %lor.lhs.false3 ], [ %call4, %opthelp ], [ %call4, %if.then19 ], [ %call4, %sw.bb10 ], [ %call4, %if.end254 ], [ %call4, %if.then267 ], [ %call4, %if.then275 ], [ %call4, %if.then282 ], [ %call4, %if.then295 ], [ %call4, %if.end313 ], [ %call4, %if.then326 ], [ %call4, %if.then336 ], [ %call4, %if.then535 ], [ %call4, %if.else551 ], [ %call4, %if.then526 ], [ %call4, %if.then514 ], [ %call4, %if.then391 ], [ %call4, %if.then410 ], [ %call4, %if.then468 ], [ %call4, %if.then426 ], [ %call4, %if.then311 ], [ %call4, %if.then303 ], [ %call4, %if.end297 ], [ %call4, %if.then239 ], [ %call4, %if.end507 ], [ %call4, %if.end574 ], [ %call4, %if.then476.end.loopexit_crit_edge ], [ %call4, %if.then397 ], [ %call4, %if.then414 ], [ %call4, %if.end419 ], [ %call4, %if.then437 ], [ %call4, %if.then453 ], [ %call4, %if.then460 ], [ %call4, %if.then486 ], [ %call4, %if.else458 ], [ %call4, %land.lhs.true502 ], [ %call4, %sw.bb82 ], [ %call4, %sw.bb99 ], [ %call4, %if.then106 ], [ %call4, %if.end111 ], [ %call4, %sw.bb118 ], [ %call4, %if.end127 ], [ %call4, %if.end131 ], [ %call4, %if.end143 ], [ %call4, %if.end148 ], [ %call4, %lor.lhs.false186 ], [ %call4, %if.end184 ], [ %call4, %if.end200 ], [ %call4, %sw.bb225 ]
  %out.0 = phi %struct.bio_st* [ null, %entry ], [ null, %lor.lhs.false ], [ null, %lor.lhs.false3 ], [ null, %opthelp ], [ null, %if.then19 ], [ null, %sw.bb10 ], [ null, %if.end254 ], [ %call255, %if.then267 ], [ %call255, %if.then275 ], [ %call255, %if.then282 ], [ %call255, %if.then295 ], [ %call255, %if.end313 ], [ %call255, %if.then326 ], [ %call255, %if.then336 ], [ %call255, %if.then535 ], [ %call255, %if.else551 ], [ %call255, %if.then526 ], [ %call255, %if.then514 ], [ %call255, %if.then391 ], [ %call255, %if.then410 ], [ %call255, %if.then468 ], [ %call255, %if.then426 ], [ %call255, %if.then311 ], [ %call255, %if.then303 ], [ %call255, %if.end297 ], [ null, %if.then239 ], [ %call255, %if.end507 ], [ %call255, %if.end574 ], [ %call255, %if.then476.end.loopexit_crit_edge ], [ %call255, %if.then397 ], [ %call255, %if.then414 ], [ %call255, %if.end419 ], [ %call255, %if.then437 ], [ %call255, %if.then453 ], [ %call255, %if.then460 ], [ %call255, %if.then486 ], [ %call255, %if.else458 ], [ %call255, %land.lhs.true502 ], [ null, %sw.bb82 ], [ null, %sw.bb99 ], [ null, %if.then106 ], [ null, %if.end111 ], [ null, %sw.bb118 ], [ null, %if.end127 ], [ null, %if.end131 ], [ null, %if.end143 ], [ null, %if.end148 ], [ null, %lor.lhs.false186 ], [ null, %if.end184 ], [ null, %if.end200 ], [ null, %sw.bb225 ]
  %thost.2 = phi i8* [ null, %entry ], [ null, %lor.lhs.false ], [ null, %lor.lhs.false3 ], [ %thost.0978, %opthelp ], [ null, %if.then19 ], [ %thost.01168, %sw.bb10 ], [ %thost.0.lcssa137314671560, %if.end254 ], [ %thost.0.lcssa137314671560, %if.then267 ], [ %thost.0.lcssa137314671560, %if.then275 ], [ %thost.0.lcssa137314671560, %if.then282 ], [ %thost.0.lcssa137314671560, %if.then295 ], [ %thost.0.lcssa137314671560, %if.end313 ], [ %thost.0.lcssa137314671560, %if.then326 ], [ %thost.0.lcssa137314671560, %if.then336 ], [ %thost.0.lcssa137314671560, %if.then535 ], [ %thost.0.lcssa137314671560, %if.else551 ], [ %thost.0.lcssa137314671560, %if.then526 ], [ %thost.0.lcssa137314671560, %if.then514 ], [ %thost.0.lcssa137314671560, %if.then391 ], [ %thost.0.lcssa137314671560, %if.then410 ], [ %thost.0.lcssa137314671560, %if.then468 ], [ %thost.0.lcssa137314671560, %if.then426 ], [ %thost.0.lcssa137314671560, %if.then311 ], [ %thost.0.lcssa137314671560, %if.then303 ], [ %thost.0.lcssa137314671560, %if.end297 ], [ %thost.1, %if.then239 ], [ %thost.0.lcssa137314671560, %if.end507 ], [ %thost.0.lcssa137314671560, %if.end574 ], [ %thost.0.lcssa137314671560, %if.then476.end.loopexit_crit_edge ], [ %thost.0.lcssa137314671560, %if.then397 ], [ %thost.0.lcssa137314671560, %if.then414 ], [ %thost.0.lcssa137314671560, %if.end419 ], [ %thost.0.lcssa137314671560, %if.then437 ], [ %thost.0.lcssa137314671560, %if.then453 ], [ %thost.0.lcssa137314671560, %if.then460 ], [ %thost.0.lcssa137314671560, %if.then486 ], [ %thost.0.lcssa137314671560, %if.else458 ], [ %thost.0.lcssa137314671560, %land.lhs.true502 ], [ %thost.01168, %sw.bb82 ], [ %thost.01168, %sw.bb99 ], [ %thost.01168, %if.then106 ], [ %thost.01168, %if.end111 ], [ %thost.01168, %sw.bb118 ], [ %thost.01168, %if.end127 ], [ %thost.01168, %if.end131 ], [ %thost.01168, %if.end143 ], [ %thost.01168, %if.end148 ], [ %thost.01168, %lor.lhs.false186 ], [ %thost.01168, %if.end184 ], [ %thost.01168, %if.end200 ], [ %thost.01168, %sw.bb225 ]
  %tport.2 = phi i8* [ null, %entry ], [ null, %lor.lhs.false ], [ null, %lor.lhs.false3 ], [ %tport.0970, %opthelp ], [ null, %if.then19 ], [ %tport.01170, %sw.bb10 ], [ %tport.0.lcssa137714661561, %if.end254 ], [ %tport.0.lcssa137714661561, %if.then267 ], [ %tport.0.lcssa137714661561, %if.then275 ], [ %tport.0.lcssa137714661561, %if.then282 ], [ %tport.0.lcssa137714661561, %if.then295 ], [ %tport.0.lcssa137714661561, %if.end313 ], [ %tport.0.lcssa137714661561, %if.then326 ], [ %tport.0.lcssa137714661561, %if.then336 ], [ %tport.0.lcssa137714661561, %if.then535 ], [ %tport.0.lcssa137714661561, %if.else551 ], [ %tport.0.lcssa137714661561, %if.then526 ], [ %tport.0.lcssa137714661561, %if.then514 ], [ %tport.0.lcssa137714661561, %if.then391 ], [ %tport.0.lcssa137714661561, %if.then410 ], [ %tport.0.lcssa137714661561, %if.then468 ], [ %tport.0.lcssa137714661561, %if.then426 ], [ %tport.0.lcssa137714661561, %if.then311 ], [ %tport.0.lcssa137714661561, %if.then303 ], [ %tport.0.lcssa137714661561, %if.end297 ], [ %tport.1, %if.then239 ], [ %tport.0.lcssa137714661561, %if.end507 ], [ %tport.0.lcssa137714661561, %if.end574 ], [ %tport.0.lcssa137714661561, %if.then476.end.loopexit_crit_edge ], [ %tport.0.lcssa137714661561, %if.then397 ], [ %tport.0.lcssa137714661561, %if.then414 ], [ %tport.0.lcssa137714661561, %if.end419 ], [ %tport.0.lcssa137714661561, %if.then437 ], [ %tport.0.lcssa137714661561, %if.then453 ], [ %tport.0.lcssa137714661561, %if.then460 ], [ %tport.0.lcssa137714661561, %if.then486 ], [ %tport.0.lcssa137714661561, %if.else458 ], [ %tport.0.lcssa137714661561, %land.lhs.true502 ], [ %tport.01170, %sw.bb82 ], [ %tport.01170, %sw.bb99 ], [ %tport.01170, %if.then106 ], [ %tport.01170, %if.end111 ], [ %tport.01170, %sw.bb118 ], [ %tport.01170, %if.end127 ], [ %tport.01170, %if.end131 ], [ %tport.01170, %if.end143 ], [ %tport.01170, %if.end148 ], [ %tport.01170, %lor.lhs.false186 ], [ %tport.01170, %if.end184 ], [ %tport.01170, %if.end200 ], [ %tport.01170, %sw.bb225 ]
  %tpath.2 = phi i8* [ null, %entry ], [ null, %lor.lhs.false ], [ null, %lor.lhs.false3 ], [ %tpath.0962, %opthelp ], [ null, %if.then19 ], [ %tpath.01172, %sw.bb10 ], [ %tpath.0.lcssa138114651562, %if.end254 ], [ %tpath.0.lcssa138114651562, %if.then267 ], [ %tpath.0.lcssa138114651562, %if.then275 ], [ %tpath.0.lcssa138114651562, %if.then282 ], [ %tpath.0.lcssa138114651562, %if.then295 ], [ %tpath.0.lcssa138114651562, %if.end313 ], [ %tpath.0.lcssa138114651562, %if.then326 ], [ %tpath.0.lcssa138114651562, %if.then336 ], [ %tpath.0.lcssa138114651562, %if.then535 ], [ %tpath.0.lcssa138114651562, %if.else551 ], [ %tpath.0.lcssa138114651562, %if.then526 ], [ %tpath.0.lcssa138114651562, %if.then514 ], [ %tpath.0.lcssa138114651562, %if.then391 ], [ %tpath.0.lcssa138114651562, %if.then410 ], [ %tpath.0.lcssa138114651562, %if.then468 ], [ %tpath.0.lcssa138114651562, %if.then426 ], [ %tpath.0.lcssa138114651562, %if.then311 ], [ %tpath.0.lcssa138114651562, %if.then303 ], [ %tpath.0.lcssa138114651562, %if.end297 ], [ %tpath.1, %if.then239 ], [ %tpath.0.lcssa138114651562, %if.end507 ], [ %tpath.0.lcssa138114651562, %if.end574 ], [ %tpath.0.lcssa138114651562, %if.then476.end.loopexit_crit_edge ], [ %tpath.0.lcssa138114651562, %if.then397 ], [ %tpath.0.lcssa138114651562, %if.then414 ], [ %tpath.0.lcssa138114651562, %if.end419 ], [ %tpath.0.lcssa138114651562, %if.then437 ], [ %tpath.0.lcssa138114651562, %if.then453 ], [ %tpath.0.lcssa138114651562, %if.then460 ], [ %tpath.0.lcssa138114651562, %if.then486 ], [ %tpath.0.lcssa138114651562, %if.else458 ], [ %tpath.0.lcssa138114651562, %land.lhs.true502 ], [ %tpath.01172, %sw.bb82 ], [ %tpath.01172, %sw.bb99 ], [ %tpath.01172, %if.then106 ], [ %tpath.01172, %if.end111 ], [ %tpath.01172, %sw.bb118 ], [ %tpath.01172, %if.end127 ], [ %tpath.01172, %if.end131 ], [ %tpath.01172, %if.end143 ], [ %tpath.01172, %if.end148 ], [ %tpath.01172, %lor.lhs.false186 ], [ %tpath.01172, %if.end184 ], [ %tpath.01172, %if.end200 ], [ %tpath.01172, %sw.bb225 ]
  %ret.1 = phi i32 [ 1, %entry ], [ 1, %lor.lhs.false ], [ 1, %lor.lhs.false3 ], [ 1, %opthelp ], [ 1, %if.then19 ], [ 0, %sw.bb10 ], [ 1, %if.end254 ], [ 1, %if.then267 ], [ 1, %if.then275 ], [ 1, %if.then282 ], [ 1, %if.then295 ], [ 1, %if.end313 ], [ 1, %if.then326 ], [ 1, %if.then336 ], [ 1, %if.then535 ], [ 1, %if.else551 ], [ 1, %if.then526 ], [ 1, %if.then514 ], [ 1, %if.then391 ], [ 1, %if.then410 ], [ 1, %if.then468 ], [ 1, %if.then426 ], [ 1, %if.then311 ], [ 1, %if.then303 ], [ 1, %if.end297 ], [ 1, %if.then239 ], [ 0, %if.end507 ], [ %spec.select819, %if.end574 ], [ 1, %if.then476.end.loopexit_crit_edge ], [ 0, %land.lhs.true502 ], [ 0, %if.else458 ], [ 1, %if.then486 ], [ 1, %if.then460 ], [ 1, %if.then453 ], [ 1, %if.then437 ], [ 1, %if.end419 ], [ 1, %if.then414 ], [ 1, %if.then397 ], [ 1, %sw.bb82 ], [ 1, %sw.bb99 ], [ 1, %if.then106 ], [ 1, %if.end111 ], [ 1, %sw.bb118 ], [ 1, %if.end127 ], [ 1, %if.end131 ], [ 1, %if.end143 ], [ 1, %if.end148 ], [ 1, %lor.lhs.false186 ], [ 1, %if.end184 ], [ 1, %if.end200 ], [ 1, %sw.bb225 ]
  %acbio.1 = phi %struct.bio_st* [ null, %entry ], [ null, %lor.lhs.false ], [ null, %lor.lhs.false3 ], [ null, %opthelp ], [ null, %if.then19 ], [ null, %sw.bb10 ], [ null, %if.end254 ], [ null, %if.then267 ], [ null, %if.then275 ], [ null, %if.then282 ], [ %acbio.0, %if.then295 ], [ %acbio.0, %if.end313 ], [ %acbio.0, %if.then326 ], [ %acbio.0, %if.then336 ], [ %acbio.0, %if.then535 ], [ %acbio.0, %if.else551 ], [ %acbio.0, %if.then526 ], [ %acbio.0, %if.then514 ], [ null, %if.then391 ], [ %acbio.0, %if.then410 ], [ %acbio.0, %if.then468 ], [ %acbio.0, %if.then426 ], [ %acbio.0, %if.then311 ], [ %acbio.0, %if.then303 ], [ %acbio.0, %if.end297 ], [ null, %if.then239 ], [ %acbio.0, %if.end507 ], [ %acbio.0, %if.end574 ], [ %acbio.0, %if.then476.end.loopexit_crit_edge ], [ %acbio.0, %if.then397 ], [ %acbio.0, %if.then414 ], [ %acbio.0, %if.end419 ], [ %acbio.0, %if.then437 ], [ %acbio.0, %if.then453 ], [ %acbio.0, %if.then460 ], [ %acbio.0, %if.then486 ], [ %acbio.0, %if.else458 ], [ %acbio.0, %land.lhs.true502 ], [ null, %sw.bb82 ], [ null, %sw.bb99 ], [ null, %if.then106 ], [ null, %if.end111 ], [ null, %sw.bb118 ], [ null, %if.end127 ], [ null, %if.end131 ], [ null, %if.end143 ], [ null, %if.end148 ], [ null, %lor.lhs.false186 ], [ null, %if.end184 ], [ null, %if.end200 ], [ null, %sw.bb225 ]
  %102 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  call void @ERR_print_errors(%struct.bio_st* noundef %102) #9
  call void @X509_free(%struct.x509_st* noundef %signer.3) #9
  call void @X509_STORE_free(%struct.x509_store_st* noundef %store.1) #9
  call void @X509_VERIFY_PARAM_free(%struct.X509_VERIFY_PARAM_st* noundef %vpm.0) #9
  %call579 = call fastcc %struct.stack_st* @ossl_check_OPENSSL_STRING_sk_type(%struct.stack_st_OPENSSL_STRING* noundef %rsign_sigopts.3) #11
  call void @OPENSSL_sk_free(%struct.stack_st* noundef %call579) #9
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %key.3) #9
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %rkey.1) #9
  %103 = load %struct.evp_md_st*, %struct.evp_md_st** %cert_id_md, align 8, !tbaa !3
  call void @EVP_MD_free(%struct.evp_md_st* noundef %103) #9
  %104 = load %struct.evp_md_st*, %struct.evp_md_st** %rsign_md, align 8, !tbaa !3
  call void @EVP_MD_free(%struct.evp_md_st* noundef %104) #9
  %105 = load %struct.evp_md_st*, %struct.evp_md_st** %resp_certid_md, align 8, !tbaa !3
  call void @EVP_MD_free(%struct.evp_md_st* noundef %105) #9
  call void @X509_free(%struct.x509_st* noundef %cert.2) #9
  %call580 = call fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef %issuers.3) #11
  call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call580, void (i8*)* noundef bitcast (void (%struct.x509_st*)* @X509_free to void (i8*)*)) #9
  call void @X509_free(%struct.x509_st* noundef %rsigner.1) #9
  %106 = load %struct.stack_st_X509*, %struct.stack_st_X509** %rca_cert, align 8, !tbaa !3
  %call582 = call fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef %106) #11
  call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call582, void (i8*)* noundef bitcast (void (%struct.x509_st*)* @X509_free to void (i8*)*)) #9
  call void @free_index(%struct.ca_db_st* noundef %rdb.6) #9
  %107 = load %struct.bio_st*, %struct.bio_st** %cbio, align 8, !tbaa !3
  call void @BIO_free_all(%struct.bio_st* noundef %107) #9
  call void @BIO_free_all(%struct.bio_st* noundef %acbio.1) #9
  call void @BIO_free_all(%struct.bio_st* noundef %out.0) #9
  %108 = load %struct.ocsp_request_st*, %struct.ocsp_request_st** %req, align 8, !tbaa !3
  call void @OCSP_REQUEST_free(%struct.ocsp_request_st* noundef %108) #9
  call void @OCSP_RESPONSE_free(%struct.ocsp_response_st* noundef %101) #9
  call void @OCSP_BASICRESP_free(%struct.ocsp_basic_response_st* noundef %bs.0) #9
  %call584 = call fastcc %struct.stack_st* @ossl_check_OPENSSL_STRING_sk_type(%struct.stack_st_OPENSSL_STRING* noundef %18) #11
  call void @OPENSSL_sk_free(%struct.stack_st* noundef %call584) #9
  %call585 = call fastcc %struct.stack_st* @ossl_check_OCSP_CERTID_sk_type(%struct.stack_st_OCSP_CERTID* noundef %ids.0) #11
  call void @OPENSSL_sk_free(%struct.stack_st* noundef %call585) #9
  %109 = load %struct.stack_st_X509*, %struct.stack_st_X509** %sign_other, align 8, !tbaa !3
  %call586 = call fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef %109) #11
  call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call586, void (i8*)* noundef bitcast (void (%struct.x509_st*)* @X509_free to void (i8*)*)) #9
  %110 = load %struct.stack_st_X509*, %struct.stack_st_X509** %verify_other, align 8, !tbaa !3
  %call588 = call fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef %110) #11
  call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call588, void (i8*)* noundef bitcast (void (%struct.x509_st*)* @X509_free to void (i8*)*)) #9
  %111 = load %struct.stack_st_CONF_VALUE*, %struct.stack_st_CONF_VALUE** %headers, align 8, !tbaa !3
  %call590 = call fastcc %struct.stack_st* @ossl_check_CONF_VALUE_sk_type(%struct.stack_st_CONF_VALUE* noundef %111) #11
  call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call590, void (i8*)* noundef bitcast (void (%struct.CONF_VALUE*)* @X509V3_conf_free to void (i8*)*)) #9
  call void @CRYPTO_free(i8* noundef %thost.2, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.197, i64 0, i64 0), i32 noundef 874) #9
  call void @CRYPTO_free(i8* noundef %tport.2, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.197, i64 0, i64 0), i32 noundef 875) #9
  call void @CRYPTO_free(i8* noundef %tpath.2, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.197, i64 0, i64 0), i32 noundef 876) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %17) #8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %16) #8
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %15) #8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %14) #8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %13) #8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %12) #8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %11) #8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %9) #8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8
  ret i32 %ret.1
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare dso_local %struct.stack_st* @OPENSSL_sk_new_null() local_unnamed_addr #2

declare dso_local %struct.X509_VERIFY_PARAM_st* @X509_VERIFY_PARAM_new() local_unnamed_addr #2

declare dso_local i8* @opt_init(i32 noundef, i8** noundef, %struct.options_st* noundef) local_unnamed_addr #2

declare dso_local i32 @opt_next() local_unnamed_addr #2

declare dso_local i32 @BIO_printf(%struct.bio_st* noundef, i8* noundef, ...) local_unnamed_addr #2

declare dso_local void @opt_help(%struct.options_st* noundef) local_unnamed_addr #2

declare dso_local i8* @opt_arg() local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline nounwind readonly uwtable willreturn
declare dso_local i32 @atoi(i8* noundef nonnull) local_unnamed_addr #3

declare dso_local void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i32 @OSSL_HTTP_parse_url(i8* noundef, i32* noundef, i8** noundef, i8** noundef, i8** noundef, i32* noundef, i8** noundef, i8** noundef, i8** noundef) local_unnamed_addr #2

declare dso_local i32 @opt_verify(i32 noundef, %struct.X509_VERIFY_PARAM_st* noundef) local_unnamed_addr #2

declare dso_local i32 @opt_long(i8* noundef, i64* noundef) local_unnamed_addr #2

declare dso_local %struct.x509_st* @load_cert_pass(i8* noundef, i32 noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local i32 @OPENSSL_sk_push(%struct.stack_st* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef readnone %sk) unnamed_addr #4 {
entry:
  %0 = bitcast %struct.stack_st_X509* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare dso_local void @X509_free(%struct.x509_st* noundef) #2

declare dso_local %struct.evp_md_st* @EVP_sha1() local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @add_ocsp_cert(%struct.ocsp_request_st** nocapture noundef %req, %struct.x509_st* noundef %cert, %struct.evp_md_st* noundef %cert_id_md, %struct.x509_st* noundef %issuer, %struct.stack_st_OCSP_CERTID* noundef %ids) unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.x509_st* %issuer, null
  br i1 %cmp, label %cleanup.sink.split, label %if.end

if.end:                                           ; preds = %entry
  %0 = load %struct.ocsp_request_st*, %struct.ocsp_request_st** %req, align 8, !tbaa !3
  %cmp1 = icmp eq %struct.ocsp_request_st* %0, null
  br i1 %cmp1, label %if.end4, label %if.end7

if.end4:                                          ; preds = %if.end
  %call3 = tail call %struct.ocsp_request_st* @OCSP_REQUEST_new() #9
  store %struct.ocsp_request_st* %call3, %struct.ocsp_request_st** %req, align 8, !tbaa !3
  %cmp5 = icmp eq %struct.ocsp_request_st* %call3, null
  br i1 %cmp5, label %cleanup.sink.split, label %if.end7

if.end7:                                          ; preds = %if.end, %if.end4
  %call8 = tail call %struct.ocsp_cert_id_st* @OCSP_cert_to_id(%struct.evp_md_st* noundef %cert_id_md, %struct.x509_st* noundef %cert, %struct.x509_st* noundef nonnull %issuer) #9
  %cmp9 = icmp eq %struct.ocsp_cert_id_st* %call8, null
  br i1 %cmp9, label %cleanup.sink.split, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end7
  %call10 = tail call fastcc %struct.stack_st* @ossl_check_OCSP_CERTID_sk_type(%struct.stack_st_OCSP_CERTID* noundef %ids) #11
  %1 = bitcast %struct.ocsp_cert_id_st* %call8 to i8*
  %call12 = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call10, i8* noundef nonnull %1) #9
  %tobool.not = icmp eq i32 %call12, 0
  br i1 %tobool.not, label %cleanup.sink.split, label %if.end14

if.end14:                                         ; preds = %lor.lhs.false
  %2 = load %struct.ocsp_request_st*, %struct.ocsp_request_st** %req, align 8, !tbaa !3
  %call15 = tail call %struct.ocsp_one_request_st* @OCSP_request_add0_id(%struct.ocsp_request_st* noundef %2, %struct.ocsp_cert_id_st* noundef nonnull %call8) #9
  %tobool16.not = icmp eq %struct.ocsp_one_request_st* %call15, null
  br i1 %tobool16.not, label %cleanup.sink.split, label %cleanup

cleanup.sink.split:                               ; preds = %if.end4, %lor.lhs.false, %if.end7, %if.end14, %entry
  %.sink28 = phi i8* [ getelementptr inbounds ([33 x i8], [33 x i8]* @.str.233, i64 0, i64 0), %entry ], [ getelementptr inbounds ([29 x i8], [29 x i8]* @.str.234, i64 0, i64 0), %if.end14 ], [ getelementptr inbounds ([29 x i8], [29 x i8]* @.str.234, i64 0, i64 0), %if.end7 ], [ getelementptr inbounds ([29 x i8], [29 x i8]* @.str.234, i64 0, i64 0), %lor.lhs.false ], [ getelementptr inbounds ([29 x i8], [29 x i8]* @.str.234, i64 0, i64 0), %if.end4 ]
  %3 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call19 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %3, i8* noundef %.sink28) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end14
  %retval.0 = phi i32 [ 1, %if.end14 ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_OPENSSL_STRING_sk_type(%struct.stack_st_OPENSSL_STRING* noundef readnone %sk) unnamed_addr #4 {
entry:
  %0 = bitcast %struct.stack_st_OPENSSL_STRING* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @add_ocsp_serial(%struct.ocsp_request_st** nocapture noundef %req, i8* noundef %serial, %struct.evp_md_st* noundef %cert_id_md, %struct.x509_st* noundef %issuer, %struct.stack_st_OCSP_CERTID* noundef %ids) unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.x509_st* %issuer, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %0, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.233, i64 0, i64 0)) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = load %struct.ocsp_request_st*, %struct.ocsp_request_st** %req, align 8, !tbaa !3
  %cmp1 = icmp eq %struct.ocsp_request_st* %1, null
  br i1 %cmp1, label %if.end4, label %if.end7

if.end4:                                          ; preds = %if.end
  %call3 = tail call %struct.ocsp_request_st* @OCSP_REQUEST_new() #9
  store %struct.ocsp_request_st* %call3, %struct.ocsp_request_st** %req, align 8, !tbaa !3
  %cmp5 = icmp eq %struct.ocsp_request_st* %call3, null
  br i1 %cmp5, label %err, label %if.end7

if.end7:                                          ; preds = %if.end, %if.end4
  %call8 = tail call %struct.X509_name_st* @X509_get_subject_name(%struct.x509_st* noundef nonnull %issuer) #9
  %call9 = tail call %struct.asn1_string_st* @X509_get0_pubkey_bitstr(%struct.x509_st* noundef nonnull %issuer) #9
  %call10 = tail call %struct.asn1_string_st* @s2i_ASN1_INTEGER(%struct.v3_ext_method* noundef null, i8* noundef %serial) #9
  %cmp11 = icmp eq %struct.asn1_string_st* %call10, null
  br i1 %cmp11, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.end7
  %2 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call13 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %2, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.235, i64 0, i64 0), i8* noundef %serial) #9
  br label %cleanup

if.end14:                                         ; preds = %if.end7
  %call15 = tail call %struct.ocsp_cert_id_st* @OCSP_cert_id_new(%struct.evp_md_st* noundef %cert_id_md, %struct.X509_name_st* noundef %call8, %struct.asn1_string_st* noundef %call9, %struct.asn1_string_st* noundef nonnull %call10) #9
  tail call void @ASN1_INTEGER_free(%struct.asn1_string_st* noundef nonnull %call10) #9
  %cmp16 = icmp eq %struct.ocsp_cert_id_st* %call15, null
  br i1 %cmp16, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end14
  %call17 = tail call fastcc %struct.stack_st* @ossl_check_OCSP_CERTID_sk_type(%struct.stack_st_OCSP_CERTID* noundef %ids) #11
  %3 = bitcast %struct.ocsp_cert_id_st* %call15 to i8*
  %call19 = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call17, i8* noundef nonnull %3) #9
  %tobool.not = icmp eq i32 %call19, 0
  br i1 %tobool.not, label %err, label %if.end21

if.end21:                                         ; preds = %lor.lhs.false
  %4 = load %struct.ocsp_request_st*, %struct.ocsp_request_st** %req, align 8, !tbaa !3
  %call22 = tail call %struct.ocsp_one_request_st* @OCSP_request_add0_id(%struct.ocsp_request_st* noundef %4, %struct.ocsp_cert_id_st* noundef nonnull %call15) #9
  %tobool23.not = icmp eq %struct.ocsp_one_request_st* %call22, null
  br i1 %tobool23.not, label %err, label %cleanup

err:                                              ; preds = %if.end21, %if.end14, %lor.lhs.false, %if.end4
  %5 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call26 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %5, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.234, i64 0, i64 0)) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %err, %if.then12, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %err ], [ 0, %if.then12 ], [ 1, %if.end21 ]
  ret i32 %retval.0
}

declare dso_local i32 @opt_int_arg() local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i8* @strchr(i8* noundef, i32 noundef) local_unnamed_addr #5

declare dso_local i32 @X509V3_add_value(i8* noundef, i8* noundef, %struct.stack_st_CONF_VALUE** noundef) local_unnamed_addr #2

declare dso_local i32 @opt_md(i8* noundef, %struct.evp_md_st** noundef) local_unnamed_addr #2

declare dso_local i8* @opt_unknown() local_unnamed_addr #2

declare dso_local i32 @opt_provider(i32 noundef) local_unnamed_addr #2

declare dso_local i32 @opt_num_rest() local_unnamed_addr #2

declare dso_local %struct.bio_st* @bio_open_default(i8* noundef, i8 noundef signext, i32 noundef) local_unnamed_addr #2

declare dso_local i8* @ASN1_d2i_bio(i8* ()* noundef, i8* (i8**, i8**, i64)* noundef, %struct.bio_st* noundef, i8** noundef) local_unnamed_addr #2

declare dso_local %struct.ocsp_request_st* @OCSP_REQUEST_new() #2

declare dso_local %struct.ocsp_request_st* @d2i_OCSP_REQUEST(%struct.ocsp_request_st** noundef, i8** noundef, i64 noundef) #2

declare dso_local i32 @BIO_free(%struct.bio_st* noundef) local_unnamed_addr #2

declare dso_local %struct.bio_st* @http_server_init_bio(i8* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local i32 @load_certs(i8* noundef, i32 noundef, %struct.stack_st_X509** noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local i32 @app_passwd(i8* noundef, i8* noundef, i8** noundef, i8** noundef) local_unnamed_addr #2

declare dso_local %struct.evp_pkey_st* @load_key(i8* noundef, i32 noundef, i32 noundef, i8* noundef, %struct.engine_st* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local %struct.ca_db_st* @load_index(i8* noundef, %struct.db_attr_st* noundef) local_unnamed_addr #2

declare dso_local i32 @index_index(%struct.ca_db_st* noundef) local_unnamed_addr #2

declare dso_local void @spawn_loop(i8* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare dso_local void (i32)* @signal(i32 noundef, void (i32)* noundef) local_unnamed_addr #6

declare dso_local void @socket_timeout(i32 noundef) #2

declare dso_local void @log_message(i8* noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @index_changed(%struct.ca_db_st* noundef readonly %rdb) unnamed_addr #0 {
entry:
  %sb = alloca %struct.stat, align 8
  %0 = bitcast %struct.stat* %sb to i8*
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %0) #8
  %cmp.not = icmp eq %struct.ca_db_st* %rdb, null
  br i1 %cmp.not, label %cleanup, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %dbfname = getelementptr inbounds %struct.ca_db_st, %struct.ca_db_st* %rdb, i64 0, i32 2
  %1 = load i8*, i8** %dbfname, align 8, !tbaa !14
  %call = call i32 @stat(i8* noundef %1, %struct.stat* noundef %sb) #9
  %cmp1.not = icmp eq i32 %call, -1
  br i1 %cmp1.not, label %cleanup, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %tv_sec = getelementptr inbounds %struct.ca_db_st, %struct.ca_db_st* %rdb, i64 0, i32 3, i32 12, i32 0
  %2 = load i64, i64* %tv_sec, align 8, !tbaa !19
  %tv_sec3 = getelementptr inbounds %struct.stat, %struct.stat* %sb, i64 0, i32 12, i32 0
  %3 = load i64, i64* %tv_sec3, align 8, !tbaa !20
  %cmp4.not = icmp eq i64 %2, %3
  br i1 %cmp4.not, label %lor.lhs.false, label %if.then18

lor.lhs.false:                                    ; preds = %if.then
  %tv_sec6 = getelementptr inbounds %struct.ca_db_st, %struct.ca_db_st* %rdb, i64 0, i32 3, i32 13, i32 0
  %4 = load i64, i64* %tv_sec6, align 8, !tbaa !21
  %tv_sec8 = getelementptr inbounds %struct.stat, %struct.stat* %sb, i64 0, i32 13, i32 0
  %5 = load i64, i64* %tv_sec8, align 8, !tbaa !22
  %cmp9.not = icmp eq i64 %4, %5
  br i1 %cmp9.not, label %lor.lhs.false10, label %if.then18

lor.lhs.false10:                                  ; preds = %lor.lhs.false
  %st_ino = getelementptr inbounds %struct.ca_db_st, %struct.ca_db_st* %rdb, i64 0, i32 3, i32 1
  %6 = load i64, i64* %st_ino, align 8, !tbaa !23
  %st_ino12 = getelementptr inbounds %struct.stat, %struct.stat* %sb, i64 0, i32 1
  %7 = load i64, i64* %st_ino12, align 8, !tbaa !24
  %cmp13.not = icmp eq i64 %6, %7
  br i1 %cmp13.not, label %lor.lhs.false14, label %if.then18

lor.lhs.false14:                                  ; preds = %lor.lhs.false10
  %st_dev = getelementptr inbounds %struct.ca_db_st, %struct.ca_db_st* %rdb, i64 0, i32 3, i32 0
  %8 = load i64, i64* %st_dev, align 8, !tbaa !25
  %st_dev16 = getelementptr inbounds %struct.stat, %struct.stat* %sb, i64 0, i32 0
  %9 = load i64, i64* %st_dev16, align 8, !tbaa !26
  %cmp17.not = icmp eq i64 %8, %9
  br i1 %cmp17.not, label %cleanup, label %if.then18

if.then18:                                        ; preds = %lor.lhs.false14, %lor.lhs.false10, %lor.lhs.false, %if.then
  call void (i32, i8*, ...) @syslog(i32 noundef 6, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.232, i64 0, i64 0)) #9
  br label %cleanup

cleanup:                                          ; preds = %entry, %land.lhs.true, %lor.lhs.false14, %if.then18
  %retval.0 = phi i32 [ 1, %if.then18 ], [ 0, %lor.lhs.false14 ], [ 0, %land.lhs.true ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %0) #8
  ret i32 %retval.0
}

declare dso_local void @free_index(%struct.ca_db_st* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @do_responder(%struct.ocsp_request_st** noundef %preq, %struct.bio_st** noundef %pcbio, %struct.bio_st* noundef %acbio, i8* noundef %port, i32 noundef %timeout) unnamed_addr #0 {
entry:
  %call = tail call %struct.ASN1_ITEM_st* @OCSP_REQUEST_it() #9
  %0 = bitcast %struct.ocsp_request_st** %preq to %struct.ASN1_VALUE_st**
  %1 = load i8*, i8** @prog, align 8, !tbaa !3
  %call1 = tail call i32 @http_server_get_asn1_req(%struct.ASN1_ITEM_st* noundef %call, %struct.ASN1_VALUE_st** noundef %0, i8** noundef null, %struct.bio_st** noundef %pcbio, %struct.bio_st* noundef %acbio, i32* noundef null, i8* noundef %1, i8* noundef %port, i32 noundef 1, i32 noundef %timeout) #9
  ret i32 %call1
}

declare dso_local %struct.ocsp_response_st* @OCSP_response_create(i32 noundef, %struct.ocsp_basic_response_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @send_ocsp_response(%struct.bio_st* noundef %cbio, %struct.ocsp_response_st* noundef %resp) unnamed_addr #0 {
entry:
  %call = tail call %struct.ASN1_ITEM_st* @OCSP_RESPONSE_it() #9
  %0 = bitcast %struct.ocsp_response_st* %resp to %struct.ASN1_VALUE_st*
  %call1 = tail call i32 @http_server_send_asn1_resp(%struct.bio_st* noundef %cbio, i32 noundef 0, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.230, i64 0, i64 0), %struct.ASN1_ITEM_st* noundef %call, %struct.ASN1_VALUE_st* noundef %0) #9
  ret void
}

declare dso_local i32 @OCSP_request_add1_nonce(%struct.ocsp_request_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i32 @OCSP_request_sign(%struct.ocsp_request_st* noundef, %struct.x509_st* noundef, %struct.evp_pkey_st* noundef, %struct.evp_md_st* noundef, %struct.stack_st_X509* noundef, i64 noundef) local_unnamed_addr #2

declare dso_local i32 @OCSP_REQUEST_print(%struct.bio_st* noundef, %struct.ocsp_request_st* noundef, i64 noundef) local_unnamed_addr #2

declare dso_local i32 @ASN1_i2d_bio(i32 (i8*, i8**)* noundef, %struct.bio_st* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local i32 @i2d_OCSP_REQUEST(%struct.ocsp_request_st* noundef, i8** noundef) #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @make_ocsp_response(%struct.bio_st* noundef %err, %struct.ocsp_response_st** nocapture noundef writeonly %resp, %struct.ocsp_request_st* noundef %req, %struct.ca_db_st* nocapture noundef readonly %db, %struct.stack_st_X509* noundef %ca, %struct.x509_st* noundef %rcert, %struct.evp_pkey_st* noundef %rkey, %struct.evp_md_st* noundef %rmd, %struct.stack_st_OPENSSL_STRING* noundef %sigopts, %struct.stack_st_X509* noundef %rother, i64 noundef %flags, i32 noundef %nmin, i32 noundef %ndays, i32 noundef %badsig, %struct.evp_md_st* noundef %resp_md) unnamed_addr #0 {
entry:
  %pkctx = alloca %struct.evp_pkey_ctx_st*, align 8
  %serial = alloca %struct.asn1_string_st*, align 8
  %cert_id_md_oid = alloca %struct.asn1_object_st*, align 8
  %inst = alloca %struct.asn1_object_st*, align 8
  %revtm = alloca %struct.asn1_string_st*, align 8
  %invtm = alloca %struct.asn1_string_st*, align 8
  %reason = alloca i32, align 4
  %0 = bitcast %struct.evp_pkey_ctx_st** %pkctx to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8
  store %struct.evp_pkey_ctx_st* null, %struct.evp_pkey_ctx_st** %pkctx, align 8, !tbaa !3
  %call = tail call i32 @OCSP_request_onereq_count(%struct.ocsp_request_st* noundef %req) #9
  %cmp = icmp slt i32 %call, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = tail call %struct.ocsp_response_st* @OCSP_response_create(i32 noundef 1, %struct.ocsp_basic_response_st* noundef null) #9
  store %struct.ocsp_response_st* %call1, %struct.ocsp_response_st** %resp, align 8, !tbaa !3
  br label %end

if.end:                                           ; preds = %entry
  %call2 = tail call %struct.ocsp_basic_response_st* @OCSP_BASICRESP_new() #9
  %call3 = tail call %struct.asn1_string_st* @X509_gmtime_adj(%struct.asn1_string_st* noundef null, i64 noundef 0) #9
  %cmp4.not = icmp eq i32 %ndays, -1
  br i1 %cmp4.not, label %for.body.lr.ph, label %if.then5

if.then5:                                         ; preds = %if.end
  %mul = mul nsw i32 %nmin, 60
  %conv = sext i32 %mul to i64
  %call6 = tail call %struct.asn1_string_st* @X509_time_adj_ex(%struct.asn1_string_st* noundef null, i32 noundef %ndays, i64 noundef %conv, i64* noundef null) #9
  br label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end, %if.then5
  %nextupd.0 = phi %struct.asn1_string_st* [ %call6, %if.then5 ], [ null, %if.end ]
  %1 = bitcast %struct.asn1_string_st** %serial to i8*
  %2 = bitcast %struct.asn1_object_st** %cert_id_md_oid to i8*
  %cmp34.not = icmp eq %struct.evp_md_st* %resp_md, null
  %3 = bitcast %struct.asn1_object_st** %inst to i8*
  %4 = bitcast %struct.asn1_string_st** %revtm to i8*
  %5 = bitcast %struct.asn1_string_st** %invtm to i8*
  %6 = bitcast i32* %reason to i8*
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc89
  %i.0222 = phi i32 [ 0, %for.body.lr.ph ], [ %inc90, %for.inc89 ]
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #8
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #8
  %call10 = call %struct.ocsp_one_request_st* @OCSP_request_onereq_get0(%struct.ocsp_request_st* noundef %req, i32 noundef %i.0222) #9
  %call11 = call %struct.ocsp_cert_id_st* @OCSP_onereq_get0_id(%struct.ocsp_one_request_st* noundef %call10) #9
  %call12 = call i32 @OCSP_id_get0_info(%struct.asn1_string_st** noundef null, %struct.asn1_object_st** noundef nonnull %cert_id_md_oid, %struct.asn1_string_st** noundef null, %struct.asn1_string_st** noundef null, %struct.ocsp_cert_id_st* noundef %call11) #9
  %7 = load %struct.asn1_object_st*, %struct.asn1_object_st** %cert_id_md_oid, align 8, !tbaa !3
  %call13 = call i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef %7) #9
  %call14 = call i8* @OBJ_nid2sn(i32 noundef %call13) #9
  %call15 = call %struct.evp_md_st* @EVP_get_digestbyname(i8* noundef %call14) #9
  %cmp16 = icmp eq %struct.evp_md_st* %call15, null
  br i1 %cmp16, label %cleanup, label %for.cond21.preheader

for.cond21.preheader:                             ; preds = %for.body
  %call22 = call fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef %ca) #11
  %call23216 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call22) #9
  %cmp24217 = icmp sgt i32 %call23216, 0
  br i1 %cmp24217, label %for.body26, label %for.end

for.body26:                                       ; preds = %for.cond21.preheader, %if.end39
  %cid_resp_md.0219 = phi %struct.ocsp_cert_id_st* [ %cid_resp_md.1, %if.end39 ], [ null, %for.cond21.preheader ]
  %jj.0218 = phi i32 [ %inc, %if.end39 ], [ 0, %for.cond21.preheader ]
  %call28 = call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call22, i32 noundef %jj.0218) #9
  %8 = bitcast i8* %call28 to %struct.x509_st*
  %call29 = call %struct.ocsp_cert_id_st* @OCSP_cert_to_id(%struct.evp_md_st* noundef nonnull %call15, %struct.x509_st* noundef null, %struct.x509_st* noundef %8) #9
  %call30 = call i32 @OCSP_id_issuer_cmp(%struct.ocsp_cert_id_st* noundef %call29, %struct.ocsp_cert_id_st* noundef %call11) #9
  %cmp31 = icmp ne i32 %call30, 0
  %brmerge = or i1 %cmp31, %cmp34.not
  %not.cmp31 = xor i1 %cmp31, true
  %.mux = zext i1 %not.cmp31 to i32
  br i1 %brmerge, label %if.end39, label %if.then36

if.then36:                                        ; preds = %for.body26
  %call37 = call %struct.ocsp_cert_id_st* @OCSP_cert_to_id(%struct.evp_md_st* noundef nonnull %resp_md, %struct.x509_st* noundef null, %struct.x509_st* noundef %8) #9
  br label %if.end39

if.end39:                                         ; preds = %for.body26, %if.then36
  %found.1 = phi i32 [ 1, %if.then36 ], [ %.mux, %for.body26 ]
  %cid_resp_md.1 = phi %struct.ocsp_cert_id_st* [ %call37, %if.then36 ], [ %cid_resp_md.0219, %for.body26 ]
  call void @OCSP_CERTID_free(%struct.ocsp_cert_id_st* noundef %call29) #9
  %inc = add nuw nsw i32 %jj.0218, 1
  %call23 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call22) #9
  %cmp24 = icmp slt i32 %inc, %call23
  %tobool.not = icmp eq i32 %found.1, 0
  %9 = and i1 %tobool.not, %cmp24
  br i1 %9, label %for.body26, label %for.end, !llvm.loop !27

for.end:                                          ; preds = %if.end39, %for.cond21.preheader
  %cid_resp_md.0.lcssa = phi %struct.ocsp_cert_id_st* [ null, %for.cond21.preheader ], [ %cid_resp_md.1, %if.end39 ]
  %tobool.not.lcssa = phi i1 [ true, %for.cond21.preheader ], [ %tobool.not, %if.end39 ]
  %call40 = call i32 @OCSP_id_get0_info(%struct.asn1_string_st** noundef null, %struct.asn1_object_st** noundef null, %struct.asn1_string_st** noundef null, %struct.asn1_string_st** noundef nonnull %serial, %struct.ocsp_cert_id_st* noundef %call11) #9
  %10 = load %struct.asn1_string_st*, %struct.asn1_string_st** %serial, align 8, !tbaa !3
  %call41 = call fastcc i8** @lookup_serial(%struct.ca_db_st* noundef %db, %struct.asn1_string_st* noundef %10) #11
  %cmp42.not = icmp eq %struct.ocsp_cert_id_st* %cid_resp_md.0.lcssa, null
  %cond = select i1 %cmp42.not, %struct.ocsp_cert_id_st* %call11, %struct.ocsp_cert_id_st* %cid_resp_md.0.lcssa
  br i1 %tobool.not.lcssa, label %if.then45, label %if.end47

if.then45:                                        ; preds = %for.end
  %call46 = call %struct.ocsp_single_response_st* @OCSP_basic_add1_status(%struct.ocsp_basic_response_st* noundef %call2, %struct.ocsp_cert_id_st* noundef %cond, i32 noundef 2, i32 noundef 0, %struct.asn1_string_st* noundef null, %struct.asn1_string_st* noundef %call3, %struct.asn1_string_st* noundef %nextupd.0) #9
  br label %for.inc89

if.end47:                                         ; preds = %for.end
  %cmp48 = icmp eq i8** %call41, null
  br i1 %cmp48, label %if.then50, label %if.else

if.then50:                                        ; preds = %if.end47
  %call51 = call %struct.ocsp_single_response_st* @OCSP_basic_add1_status(%struct.ocsp_basic_response_st* noundef %call2, %struct.ocsp_cert_id_st* noundef %cond, i32 noundef 2, i32 noundef 0, %struct.asn1_string_st* noundef null, %struct.asn1_string_st* noundef %call3, %struct.asn1_string_st* noundef %nextupd.0) #9
  br label %if.end81

if.else:                                          ; preds = %if.end47
  %11 = load i8*, i8** %call41, align 8, !tbaa !3
  %12 = load i8, i8* %11, align 1, !tbaa !11
  switch i8 %12, label %if.end81 [
    i8 86, label %if.then56
    i8 82, label %if.then64
  ]

if.then56:                                        ; preds = %if.else
  %call57 = call %struct.ocsp_single_response_st* @OCSP_basic_add1_status(%struct.ocsp_basic_response_st* noundef %call2, %struct.ocsp_cert_id_st* noundef %cond, i32 noundef 0, i32 noundef 0, %struct.asn1_string_st* noundef null, %struct.asn1_string_st* noundef %call3, %struct.asn1_string_st* noundef %nextupd.0) #9
  br label %if.end81

if.then64:                                        ; preds = %if.else
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #8
  store %struct.asn1_object_st* null, %struct.asn1_object_st** %inst, align 8, !tbaa !3
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #8
  store %struct.asn1_string_st* null, %struct.asn1_string_st** %revtm, align 8, !tbaa !3
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #8
  store %struct.asn1_string_st* null, %struct.asn1_string_st** %invtm, align 8, !tbaa !3
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #8
  store i32 -1, i32* %reason, align 4, !tbaa !7
  %arrayidx65 = getelementptr inbounds i8*, i8** %call41, i64 2
  %13 = load i8*, i8** %arrayidx65, align 8, !tbaa !3
  %call66 = call i32 @unpack_revinfo(%struct.asn1_string_st** noundef nonnull %revtm, i32* noundef nonnull %reason, %struct.asn1_object_st** noundef nonnull %inst, %struct.asn1_string_st** noundef nonnull %invtm, i8* noundef %13) #9
  %14 = load i32, i32* %reason, align 4, !tbaa !7
  %15 = load %struct.asn1_string_st*, %struct.asn1_string_st** %revtm, align 8, !tbaa !3
  %call67 = call %struct.ocsp_single_response_st* @OCSP_basic_add1_status(%struct.ocsp_basic_response_st* noundef %call2, %struct.ocsp_cert_id_st* noundef %cond, i32 noundef 1, i32 noundef %14, %struct.asn1_string_st* noundef %15, %struct.asn1_string_st* noundef %call3, %struct.asn1_string_st* noundef %nextupd.0) #9
  %16 = load %struct.asn1_string_st*, %struct.asn1_string_st** %invtm, align 8, !tbaa !3
  %cmp68.not = icmp eq %struct.asn1_string_st* %16, null
  br i1 %cmp68.not, label %if.else72, label %if.then70

if.then70:                                        ; preds = %if.then64
  %17 = bitcast %struct.asn1_string_st* %16 to i8*
  %call71 = call i32 @OCSP_SINGLERESP_add1_ext_i2d(%struct.ocsp_single_response_st* noundef %call67, i32 noundef 142, i8* noundef nonnull %17, i32 noundef 0, i64 noundef 0) #9
  br label %if.end78

if.else72:                                        ; preds = %if.then64
  %18 = load %struct.asn1_object_st*, %struct.asn1_object_st** %inst, align 8, !tbaa !3
  %cmp73.not = icmp eq %struct.asn1_object_st* %18, null
  br i1 %cmp73.not, label %if.end78, label %if.then75

if.then75:                                        ; preds = %if.else72
  %19 = bitcast %struct.asn1_object_st* %18 to i8*
  %call76 = call i32 @OCSP_SINGLERESP_add1_ext_i2d(%struct.ocsp_single_response_st* noundef %call67, i32 noundef 430, i8* noundef nonnull %19, i32 noundef 0, i64 noundef 0) #9
  br label %if.end78

if.end78:                                         ; preds = %if.else72, %if.then75, %if.then70
  %20 = load %struct.asn1_object_st*, %struct.asn1_object_st** %inst, align 8, !tbaa !3
  call void @ASN1_OBJECT_free(%struct.asn1_object_st* noundef %20) #9
  %21 = load %struct.asn1_string_st*, %struct.asn1_string_st** %revtm, align 8, !tbaa !3
  call void @ASN1_TIME_free(%struct.asn1_string_st* noundef %21) #9
  %22 = load %struct.asn1_string_st*, %struct.asn1_string_st** %invtm, align 8, !tbaa !3
  call void @ASN1_GENERALIZEDTIME_free(%struct.asn1_string_st* noundef %22) #9
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #8
  br label %if.end81

if.end81:                                         ; preds = %if.else, %if.then56, %if.end78, %if.then50
  call void @OCSP_CERTID_free(%struct.ocsp_cert_id_st* noundef %cid_resp_md.0.lcssa) #9
  br label %for.inc89

cleanup:                                          ; preds = %for.body
  %call19 = call %struct.ocsp_response_st* @OCSP_response_create(i32 noundef 2, %struct.ocsp_basic_response_st* noundef null) #9
  store %struct.ocsp_response_st* %call19, %struct.ocsp_response_st** %resp, align 8, !tbaa !3
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #8
  br label %end

for.inc89:                                        ; preds = %if.end81, %if.then45
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #8
  %inc90 = add nuw nsw i32 %i.0222, 1
  %exitcond.not = icmp eq i32 %inc90, %call
  br i1 %exitcond.not, label %for.end91, label %for.body, !llvm.loop !28

for.end91:                                        ; preds = %for.inc89
  %call92 = call i32 @OCSP_copy_nonce(%struct.ocsp_basic_response_st* noundef %call2, %struct.ocsp_request_st* noundef %req) #9
  %call93 = call %struct.evp_md_ctx_st* @EVP_MD_CTX_new() #9
  %cmp94 = icmp eq %struct.evp_md_ctx_st* %call93, null
  br i1 %cmp94, label %if.then98, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end91
  %call96 = call i32 @EVP_DigestSignInit(%struct.evp_md_ctx_st* noundef nonnull %call93, %struct.evp_pkey_ctx_st** noundef nonnull %pkctx, %struct.evp_md_st* noundef %rmd, %struct.engine_st* noundef null, %struct.evp_pkey_st* noundef %rkey) #9
  %tobool97.not = icmp eq i32 %call96, 0
  br i1 %tobool97.not, label %if.then98, label %for.cond101.preheader

for.cond101.preheader:                            ; preds = %lor.lhs.false
  %call102 = call fastcc %struct.stack_st* @ossl_check_const_OPENSSL_STRING_sk_type(%struct.stack_st_OPENSSL_STRING* noundef %sigopts) #11
  %call103223 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call102) #9
  %cmp104224 = icmp sgt i32 %call103223, 0
  br i1 %cmp104224, label %for.body106, label %for.end121

if.then98:                                        ; preds = %lor.lhs.false, %for.end91
  %call99 = call %struct.ocsp_response_st* @OCSP_response_create(i32 noundef 2, %struct.ocsp_basic_response_st* noundef null) #9
  store %struct.ocsp_response_st* %call99, %struct.ocsp_response_st** %resp, align 8, !tbaa !3
  br label %end

for.cond101:                                      ; preds = %for.body106
  %call103 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call102) #9
  %cmp104 = icmp slt i32 %inc120, %call103
  br i1 %cmp104, label %for.body106, label %for.end121, !llvm.loop !29

for.body106:                                      ; preds = %for.cond101.preheader, %for.cond101
  %i.1225 = phi i32 [ %inc120, %for.cond101 ], [ 0, %for.cond101.preheader ]
  %call108 = call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call102, i32 noundef %i.1225) #9
  %23 = load %struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st** %pkctx, align 8, !tbaa !3
  %call109 = call i32 @pkey_ctrl_string(%struct.evp_pkey_ctx_st* noundef %23, i8* noundef %call108) #9
  %cmp110 = icmp slt i32 %call109, 1
  %inc120 = add nuw nsw i32 %i.1225, 1
  br i1 %cmp110, label %cleanup116, label %for.cond101

cleanup116:                                       ; preds = %for.body106
  %call113 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %err, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.245, i64 0, i64 0), i8* noundef %call108) #9
  %24 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  call void @ERR_print_errors(%struct.bio_st* noundef %24) #9
  %call114 = call %struct.ocsp_response_st* @OCSP_response_create(i32 noundef 2, %struct.ocsp_basic_response_st* noundef null) #9
  store %struct.ocsp_response_st* %call114, %struct.ocsp_response_st** %resp, align 8, !tbaa !3
  br label %end

for.end121:                                       ; preds = %for.cond101, %for.cond101.preheader
  %call122 = call i32 @OCSP_basic_sign_ctx(%struct.ocsp_basic_response_st* noundef %call2, %struct.x509_st* noundef %rcert, %struct.evp_md_ctx_st* noundef nonnull %call93, %struct.stack_st_X509* noundef %rother, i64 noundef %flags) #9
  %tobool123.not = icmp eq i32 %call122, 0
  br i1 %tobool123.not, label %if.then124, label %if.end126

if.then124:                                       ; preds = %for.end121
  %call125 = call %struct.ocsp_response_st* @OCSP_response_create(i32 noundef 2, %struct.ocsp_basic_response_st* noundef %call2) #9
  store %struct.ocsp_response_st* %call125, %struct.ocsp_response_st** %resp, align 8, !tbaa !3
  br label %end

if.end126:                                        ; preds = %for.end121
  %tobool127.not = icmp eq i32 %badsig, 0
  br i1 %tobool127.not, label %if.end130, label %if.then128

if.then128:                                       ; preds = %if.end126
  %call129 = call %struct.asn1_string_st* @OCSP_resp_get0_signature(%struct.ocsp_basic_response_st* noundef %call2) #9
  call void @corrupt_signature(%struct.asn1_string_st* noundef %call129) #9
  br label %if.end130

if.end130:                                        ; preds = %if.then128, %if.end126
  %call131 = call %struct.ocsp_response_st* @OCSP_response_create(i32 noundef 0, %struct.ocsp_basic_response_st* noundef %call2) #9
  store %struct.ocsp_response_st* %call131, %struct.ocsp_response_st** %resp, align 8, !tbaa !3
  br label %end

end:                                              ; preds = %cleanup116, %cleanup, %if.end130, %if.then124, %if.then98, %if.then
  %mctx.0 = phi %struct.evp_md_ctx_st* [ null, %if.then ], [ null, %cleanup ], [ %call93, %if.then98 ], [ %call93, %cleanup116 ], [ %call93, %if.end130 ], [ %call93, %if.then124 ]
  %bs.0 = phi %struct.ocsp_basic_response_st* [ null, %if.then ], [ %call2, %cleanup ], [ %call2, %if.then98 ], [ %call2, %cleanup116 ], [ %call2, %if.end130 ], [ %call2, %if.then124 ]
  %nextupd.1 = phi %struct.asn1_string_st* [ null, %if.then ], [ %nextupd.0, %cleanup ], [ %nextupd.0, %if.then98 ], [ %nextupd.0, %cleanup116 ], [ %nextupd.0, %if.end130 ], [ %nextupd.0, %if.then124 ]
  %thisupd.0 = phi %struct.asn1_string_st* [ null, %if.then ], [ %call3, %cleanup ], [ %call3, %if.then98 ], [ %call3, %cleanup116 ], [ %call3, %if.end130 ], [ %call3, %if.then124 ]
  call void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef %mctx.0) #9
  call void @ASN1_TIME_free(%struct.asn1_string_st* noundef %thisupd.0) #9
  call void @ASN1_TIME_free(%struct.asn1_string_st* noundef %nextupd.1) #9
  call void @OCSP_BASICRESP_free(%struct.ocsp_basic_response_st* noundef %bs.0) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.ocsp_response_st* @process_responder(%struct.ocsp_request_st* noundef %req, i8* noundef %host, i8* noundef %port, i8* noundef %path, i8* noundef %proxy, i8* noundef %no_proxy, i32 noundef %use_ssl, %struct.stack_st_CONF_VALUE* noundef %headers, i32 noundef %req_timeout) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq i32 %use_ssl, 1
  br i1 %cmp, label %if.then, label %if.end5

if.then:                                          ; preds = %entry
  %call = tail call %struct.ssl_method_st* @TLS_client_method() #9
  %call1 = tail call %struct.ssl_ctx_st* @SSL_CTX_new(%struct.ssl_method_st* noundef %call) #9
  %cmp2 = icmp eq %struct.ssl_ctx_st* %call1, null
  br i1 %cmp2, label %end.sink.split, label %if.end5

if.end5:                                          ; preds = %if.then, %entry
  %ctx.0 = phi %struct.ssl_ctx_st* [ %call1, %if.then ], [ null, %entry ]
  %0 = bitcast %struct.ocsp_request_st* %req to %struct.ASN1_VALUE_st*
  %call6 = tail call %struct.ASN1_ITEM_st* @OCSP_REQUEST_it() #9
  %conv = sext i32 %req_timeout to i64
  %call7 = tail call %struct.ASN1_ITEM_st* @OCSP_RESPONSE_it() #9
  %call8 = tail call %struct.ASN1_VALUE_st* @app_http_post_asn1(i8* noundef %host, i8* noundef %port, i8* noundef %path, i8* noundef %proxy, i8* noundef %no_proxy, %struct.ssl_ctx_st* noundef %ctx.0, %struct.stack_st_CONF_VALUE* noundef %headers, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.229, i64 0, i64 0), %struct.ASN1_VALUE_st* noundef %0, %struct.ASN1_ITEM_st* noundef %call6, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.230, i64 0, i64 0), i64 noundef %conv, %struct.ASN1_ITEM_st* noundef %call7) #9
  %1 = bitcast %struct.ASN1_VALUE_st* %call8 to %struct.ocsp_response_st*
  %cmp9 = icmp eq %struct.ASN1_VALUE_st* %call8, null
  br i1 %cmp9, label %end.sink.split, label %end

end.sink.split:                                   ; preds = %if.end5, %if.then
  %.sink19 = phi i8* [ getelementptr inbounds ([29 x i8], [29 x i8]* @.str.228, i64 0, i64 0), %if.then ], [ getelementptr inbounds ([31 x i8], [31 x i8]* @.str.231, i64 0, i64 0), %if.end5 ]
  %ctx.1.ph = phi %struct.ssl_ctx_st* [ null, %if.then ], [ %ctx.0, %if.end5 ]
  %2 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call12 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %2, i8* noundef %.sink19) #9
  br label %end

end:                                              ; preds = %end.sink.split, %if.end5
  %ctx.1 = phi %struct.ssl_ctx_st* [ %ctx.0, %if.end5 ], [ %ctx.1.ph, %end.sink.split ]
  %resp.0 = phi %struct.ocsp_response_st* [ %1, %if.end5 ], [ null, %end.sink.split ]
  tail call void @SSL_CTX_free(%struct.ssl_ctx_st* noundef %ctx.1) #9
  ret %struct.ocsp_response_st* %resp.0
}

declare dso_local %struct.ocsp_response_st* @OCSP_RESPONSE_new() #2

declare dso_local %struct.ocsp_response_st* @d2i_OCSP_RESPONSE(%struct.ocsp_response_st** noundef, i8** noundef, i64 noundef) #2

declare dso_local i32 @i2d_OCSP_RESPONSE(%struct.ocsp_response_st* noundef, i8** noundef) #2

declare dso_local i32 @OCSP_response_status(%struct.ocsp_response_st* noundef) local_unnamed_addr #2

declare dso_local i8* @OCSP_response_status_str(i64 noundef) local_unnamed_addr #2

declare dso_local i32 @OCSP_RESPONSE_print(%struct.bio_st* noundef, %struct.ocsp_response_st* noundef, i64 noundef) local_unnamed_addr #2

declare dso_local void @BIO_free_all(%struct.bio_st* noundef) local_unnamed_addr #2

declare dso_local void @OCSP_REQUEST_free(%struct.ocsp_request_st* noundef) local_unnamed_addr #2

declare dso_local void @OCSP_RESPONSE_free(%struct.ocsp_response_st* noundef) local_unnamed_addr #2

declare dso_local %struct.x509_store_st* @setup_verify(i8* noundef, i32 noundef, i8* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i32 @X509_STORE_set1_param(%struct.x509_store_st* noundef, %struct.X509_VERIFY_PARAM_st* noundef) local_unnamed_addr #2

declare dso_local %struct.ocsp_basic_response_st* @OCSP_response_get1_basic(%struct.ocsp_response_st* noundef) local_unnamed_addr #2

declare dso_local i32 @OCSP_check_nonce(%struct.ocsp_request_st* noundef, %struct.ocsp_basic_response_st* noundef) local_unnamed_addr #2

declare dso_local i32 @OCSP_basic_verify(%struct.ocsp_basic_response_st* noundef, %struct.stack_st_X509* noundef, %struct.x509_store_st* noundef, i64 noundef) local_unnamed_addr #2

declare dso_local void @ERR_clear_error() local_unnamed_addr #2

declare dso_local void @ERR_print_errors(%struct.bio_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @print_ocsp_summary(%struct.bio_st* noundef %out, %struct.ocsp_basic_response_st* noundef %bs, %struct.ocsp_request_st* noundef readnone %req, %struct.stack_st_OPENSSL_STRING* noundef %names, %struct.stack_st_OCSP_CERTID* noundef %ids, i64 noundef %nsec, i64 noundef %maxage) unnamed_addr #0 {
entry:
  %status = alloca i32, align 4
  %reason = alloca i32, align 4
  %rev = alloca %struct.asn1_string_st*, align 8
  %thisupd = alloca %struct.asn1_string_st*, align 8
  %nextupd = alloca %struct.asn1_string_st*, align 8
  %0 = bitcast i32* %status to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #8
  %1 = bitcast i32* %reason to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #8
  %2 = bitcast %struct.asn1_string_st** %rev to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #8
  %3 = bitcast %struct.asn1_string_st** %thisupd to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #8
  %4 = bitcast %struct.asn1_string_st** %nextupd to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #8
  %cmp = icmp eq %struct.ocsp_request_st* %req, null
  br i1 %cmp, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call = tail call fastcc %struct.stack_st* @ossl_check_const_OPENSSL_STRING_sk_type(%struct.stack_st_OPENSSL_STRING* noundef %names) #11
  %call1 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #9
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %cmp2 = icmp eq %struct.ocsp_basic_response_st* %bs, null
  br i1 %cmp2, label %cleanup, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %if.end
  %call4 = tail call fastcc %struct.stack_st* @ossl_check_const_OCSP_CERTID_sk_type(%struct.stack_st_OCSP_CERTID* noundef %ids) #11
  %call5 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call4) #9
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %cleanup, label %for.cond.preheader

for.cond.preheader:                               ; preds = %lor.lhs.false3
  %call1085 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call4) #9
  %cmp1186 = icmp sgt i32 %call1085, 0
  br i1 %cmp1186, label %for.body, label %cleanup

for.body:                                         ; preds = %for.cond.preheader, %for.inc
  %ret.088 = phi i32 [ %ret.1, %for.inc ], [ 1, %for.cond.preheader ]
  %i.087 = phi i32 [ %inc, %for.inc ], [ 0, %for.cond.preheader ]
  %call13 = call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call4, i32 noundef %i.087) #9
  %5 = bitcast i8* %call13 to %struct.ocsp_cert_id_st*
  %call15 = call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call, i32 noundef %i.087) #9
  %call16 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.236, i64 0, i64 0), i8* noundef %call15) #9
  %call17 = call i32 @OCSP_resp_find_status(%struct.ocsp_basic_response_st* noundef nonnull %bs, %struct.ocsp_cert_id_st* noundef %5, i32* noundef nonnull %status, i32* noundef nonnull %reason, %struct.asn1_string_st** noundef nonnull %rev, %struct.asn1_string_st** noundef nonnull %thisupd, %struct.asn1_string_st** noundef nonnull %nextupd) #9
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %for.inc.sink.split, label %if.end21

if.end21:                                         ; preds = %for.body
  %6 = load %struct.asn1_string_st*, %struct.asn1_string_st** %thisupd, align 8, !tbaa !3
  %7 = load %struct.asn1_string_st*, %struct.asn1_string_st** %nextupd, align 8, !tbaa !3
  %call22 = call i32 @OCSP_check_validity(%struct.asn1_string_st* noundef %6, %struct.asn1_string_st* noundef %7, i64 noundef %nsec, i64 noundef %maxage) #9
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.then24, label %if.end26

if.then24:                                        ; preds = %if.end21
  %call25 = call i32 @BIO_puts(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.238, i64 0, i64 0)) #9
  call void @ERR_print_errors(%struct.bio_st* noundef %out) #9
  br label %if.end26

if.end26:                                         ; preds = %if.then24, %if.end21
  %8 = load i32, i32* %status, align 4, !tbaa !7
  %conv = sext i32 %8 to i64
  %call27 = call i8* @OCSP_cert_status_str(i64 noundef %conv) #9
  %call28 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.239, i64 0, i64 0), i8* noundef %call27) #9
  %call29 = call i32 @BIO_puts(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.240, i64 0, i64 0)) #9
  %9 = load %struct.asn1_string_st*, %struct.asn1_string_st** %thisupd, align 8, !tbaa !3
  %call30 = call i32 @ASN1_GENERALIZEDTIME_print(%struct.bio_st* noundef %out, %struct.asn1_string_st* noundef %9) #9
  %call31 = call i32 @BIO_puts(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.241, i64 0, i64 0)) #9
  %10 = load %struct.asn1_string_st*, %struct.asn1_string_st** %nextupd, align 8, !tbaa !3
  %tobool32.not = icmp eq %struct.asn1_string_st* %10, null
  br i1 %tobool32.not, label %if.end37, label %if.then33

if.then33:                                        ; preds = %if.end26
  %call34 = call i32 @BIO_puts(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.242, i64 0, i64 0)) #9
  %11 = load %struct.asn1_string_st*, %struct.asn1_string_st** %nextupd, align 8, !tbaa !3
  %call35 = call i32 @ASN1_GENERALIZEDTIME_print(%struct.bio_st* noundef %out, %struct.asn1_string_st* noundef %11) #9
  %call36 = call i32 @BIO_puts(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.241, i64 0, i64 0)) #9
  br label %if.end37

if.end37:                                         ; preds = %if.then33, %if.end26
  %12 = load i32, i32* %status, align 4, !tbaa !7
  %cmp38.not = icmp eq i32 %12, 1
  br i1 %cmp38.not, label %if.end41, label %for.inc

if.end41:                                         ; preds = %if.end37
  %13 = load i32, i32* %reason, align 4, !tbaa !7
  %cmp42.not = icmp eq i32 %13, -1
  br i1 %cmp42.not, label %if.end48, label %if.then44

if.then44:                                        ; preds = %if.end41
  %conv45 = sext i32 %13 to i64
  %call46 = call i8* @OCSP_crl_reason_str(i64 noundef %conv45) #9
  %call47 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.243, i64 0, i64 0), i8* noundef %call46) #9
  br label %if.end48

if.end48:                                         ; preds = %if.then44, %if.end41
  %call49 = call i32 @BIO_puts(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.244, i64 0, i64 0)) #9
  %14 = load %struct.asn1_string_st*, %struct.asn1_string_st** %rev, align 8, !tbaa !3
  %call50 = call i32 @ASN1_GENERALIZEDTIME_print(%struct.bio_st* noundef %out, %struct.asn1_string_st* noundef %14) #9
  br label %for.inc.sink.split

for.inc.sink.split:                               ; preds = %for.body, %if.end48
  %.sink = phi i8* [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.241, i64 0, i64 0), %if.end48 ], [ getelementptr inbounds ([25 x i8], [25 x i8]* @.str.237, i64 0, i64 0), %for.body ]
  %ret.1.ph = phi i32 [ %ret.088, %if.end48 ], [ 0, %for.body ]
  %call51 = call i32 @BIO_puts(%struct.bio_st* noundef %out, i8* noundef %.sink) #9
  br label %for.inc

for.inc:                                          ; preds = %for.inc.sink.split, %if.end37
  %ret.1 = phi i32 [ %ret.088, %if.end37 ], [ %ret.1.ph, %for.inc.sink.split ]
  %inc = add nuw nsw i32 %i.087, 1
  %call10 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call4) #9
  %cmp11 = icmp slt i32 %inc, %call10
  br i1 %cmp11, label %for.body, label %cleanup, !llvm.loop !30

cleanup:                                          ; preds = %for.inc, %for.cond.preheader, %if.end, %lor.lhs.false3, %entry, %lor.lhs.false
  %retval.0 = phi i32 [ 1, %lor.lhs.false ], [ 1, %entry ], [ 0, %lor.lhs.false3 ], [ 0, %if.end ], [ 1, %for.cond.preheader ], [ %ret.1, %for.inc ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #8
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #8
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #8
  ret i32 %retval.0
}

declare dso_local void @X509_STORE_free(%struct.x509_store_st* noundef) local_unnamed_addr #2

declare dso_local void @X509_VERIFY_PARAM_free(%struct.X509_VERIFY_PARAM_st* noundef) local_unnamed_addr #2

declare dso_local void @OPENSSL_sk_free(%struct.stack_st* noundef) local_unnamed_addr #2

declare dso_local void @EVP_PKEY_free(%struct.evp_pkey_st* noundef) local_unnamed_addr #2

declare dso_local void @EVP_MD_free(%struct.evp_md_st* noundef) local_unnamed_addr #2

declare dso_local void @OPENSSL_sk_pop_free(%struct.stack_st* noundef, void (i8*)* noundef) local_unnamed_addr #2

declare dso_local void @OCSP_BASICRESP_free(%struct.ocsp_basic_response_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_OCSP_CERTID_sk_type(%struct.stack_st_OCSP_CERTID* noundef readnone %sk) unnamed_addr #4 {
entry:
  %0 = bitcast %struct.stack_st_OCSP_CERTID* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_CONF_VALUE_sk_type(%struct.stack_st_CONF_VALUE* noundef readnone %sk) unnamed_addr #4 {
entry:
  %0 = bitcast %struct.stack_st_CONF_VALUE* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare dso_local void @X509V3_conf_free(%struct.CONF_VALUE* noundef) #2

declare dso_local %struct.ssl_ctx_st* @SSL_CTX_new(%struct.ssl_method_st* noundef) local_unnamed_addr #2

declare dso_local %struct.ssl_method_st* @TLS_client_method() local_unnamed_addr #2

declare dso_local %struct.ASN1_VALUE_st* @app_http_post_asn1(i8* noundef, i8* noundef, i8* noundef, i8* noundef, i8* noundef, %struct.ssl_ctx_st* noundef, %struct.stack_st_CONF_VALUE* noundef, i8* noundef, %struct.ASN1_VALUE_st* noundef, %struct.ASN1_ITEM_st* noundef, i8* noundef, i64 noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

declare dso_local %struct.ASN1_ITEM_st* @OCSP_REQUEST_it() local_unnamed_addr #2

declare dso_local %struct.ASN1_ITEM_st* @OCSP_RESPONSE_it() local_unnamed_addr #2

declare dso_local void @SSL_CTX_free(%struct.ssl_ctx_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
declare dso_local i32 @stat(i8* noundef nonnull, %struct.stat* noundef nonnull) local_unnamed_addr #0

declare dso_local void @syslog(i32 noundef, i8* noundef, ...) local_unnamed_addr #2

declare dso_local %struct.ocsp_cert_id_st* @OCSP_cert_to_id(%struct.evp_md_st* noundef, %struct.x509_st* noundef, %struct.x509_st* noundef) local_unnamed_addr #2

declare dso_local %struct.ocsp_one_request_st* @OCSP_request_add0_id(%struct.ocsp_request_st* noundef, %struct.ocsp_cert_id_st* noundef) local_unnamed_addr #2

declare dso_local %struct.X509_name_st* @X509_get_subject_name(%struct.x509_st* noundef) local_unnamed_addr #2

declare dso_local %struct.asn1_string_st* @X509_get0_pubkey_bitstr(%struct.x509_st* noundef) local_unnamed_addr #2

declare dso_local %struct.asn1_string_st* @s2i_ASN1_INTEGER(%struct.v3_ext_method* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local %struct.ocsp_cert_id_st* @OCSP_cert_id_new(%struct.evp_md_st* noundef, %struct.X509_name_st* noundef, %struct.asn1_string_st* noundef, %struct.asn1_string_st* noundef) local_unnamed_addr #2

declare dso_local void @ASN1_INTEGER_free(%struct.asn1_string_st* noundef) local_unnamed_addr #2

declare dso_local i32 @OPENSSL_sk_num(%struct.stack_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_OPENSSL_STRING_sk_type(%struct.stack_st_OPENSSL_STRING* noundef readnone %sk) unnamed_addr #4 {
entry:
  %0 = bitcast %struct.stack_st_OPENSSL_STRING* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_OCSP_CERTID_sk_type(%struct.stack_st_OCSP_CERTID* noundef readnone %sk) unnamed_addr #4 {
entry:
  %0 = bitcast %struct.stack_st_OCSP_CERTID* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare dso_local i8* @OPENSSL_sk_value(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i32 @OCSP_resp_find_status(%struct.ocsp_basic_response_st* noundef, %struct.ocsp_cert_id_st* noundef, i32* noundef, i32* noundef, %struct.asn1_string_st** noundef, %struct.asn1_string_st** noundef, %struct.asn1_string_st** noundef) local_unnamed_addr #2

declare dso_local i32 @BIO_puts(%struct.bio_st* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local i32 @OCSP_check_validity(%struct.asn1_string_st* noundef, %struct.asn1_string_st* noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare dso_local i8* @OCSP_cert_status_str(i64 noundef) local_unnamed_addr #2

declare dso_local i32 @ASN1_GENERALIZEDTIME_print(%struct.bio_st* noundef, %struct.asn1_string_st* noundef) local_unnamed_addr #2

declare dso_local i8* @OCSP_crl_reason_str(i64 noundef) local_unnamed_addr #2

declare dso_local i32 @OCSP_request_onereq_count(%struct.ocsp_request_st* noundef) local_unnamed_addr #2

declare dso_local %struct.ocsp_basic_response_st* @OCSP_BASICRESP_new() local_unnamed_addr #2

declare dso_local %struct.asn1_string_st* @X509_gmtime_adj(%struct.asn1_string_st* noundef, i64 noundef) local_unnamed_addr #2

declare dso_local %struct.asn1_string_st* @X509_time_adj_ex(%struct.asn1_string_st* noundef, i32 noundef, i64 noundef, i64* noundef) local_unnamed_addr #2

declare dso_local %struct.ocsp_one_request_st* @OCSP_request_onereq_get0(%struct.ocsp_request_st* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local %struct.ocsp_cert_id_st* @OCSP_onereq_get0_id(%struct.ocsp_one_request_st* noundef) local_unnamed_addr #2

declare dso_local i32 @OCSP_id_get0_info(%struct.asn1_string_st** noundef, %struct.asn1_object_st** noundef, %struct.asn1_string_st** noundef, %struct.asn1_string_st** noundef, %struct.ocsp_cert_id_st* noundef) local_unnamed_addr #2

declare dso_local %struct.evp_md_st* @EVP_get_digestbyname(i8* noundef) local_unnamed_addr #2

declare dso_local i8* @OBJ_nid2sn(i32 noundef) local_unnamed_addr #2

declare dso_local i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef readnone %sk) unnamed_addr #4 {
entry:
  %0 = bitcast %struct.stack_st_X509* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare dso_local i32 @OCSP_id_issuer_cmp(%struct.ocsp_cert_id_st* noundef, %struct.ocsp_cert_id_st* noundef) local_unnamed_addr #2

declare dso_local void @OCSP_CERTID_free(%struct.ocsp_cert_id_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i8** @lookup_serial(%struct.ca_db_st* nocapture noundef readonly %db, %struct.asn1_string_st* noundef %ser) unnamed_addr #0 {
entry:
  %row = alloca [6 x i8*], align 16
  %0 = bitcast [6 x i8*]* %row to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %0) #8
  %1 = bitcast [6 x i8*]* %row to <2 x i8*>*
  store <2 x i8*> zeroinitializer, <2 x i8*>* %1, align 16, !tbaa !3
  %arrayidx.2 = getelementptr inbounds [6 x i8*], [6 x i8*]* %row, i64 0, i64 2
  store i8* null, i8** %arrayidx.2, align 16, !tbaa !3
  %arrayidx.4 = getelementptr inbounds [6 x i8*], [6 x i8*]* %row, i64 0, i64 4
  %2 = bitcast i8** %arrayidx.4 to <2 x i8*>*
  store <2 x i8*> zeroinitializer, <2 x i8*>* %2, align 16, !tbaa !3
  %call = tail call %struct.bignum_st* @ASN1_INTEGER_to_BN(%struct.asn1_string_st* noundef %ser, %struct.bignum_st* noundef null) #9
  %tobool.not = icmp eq %struct.bignum_st* %call, null
  br i1 %tobool.not, label %cond.false, label %cond.end

cond.false:                                       ; preds = %entry
  tail call void @OPENSSL_die(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.246, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.197, i64 0, i64 0), i32 noundef 1177) #12
  unreachable

cond.end:                                         ; preds = %entry
  %call1 = tail call i32 @BN_is_zero(%struct.bignum_st* noundef nonnull %call) #9
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.else, label %if.then

if.then:                                          ; preds = %cond.end
  %call3 = tail call i8* @CRYPTO_strdup(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.247, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.197, i64 0, i64 0), i32 noundef 1180) #9
  br label %if.end

if.else:                                          ; preds = %cond.end
  %call4 = tail call i8* @BN_bn2hex(%struct.bignum_st* noundef nonnull %call) #9
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %itmp.0 = phi i8* [ %call3, %if.then ], [ %call4, %if.else ]
  %arrayidx = getelementptr inbounds [6 x i8*], [6 x i8*]* %row, i64 0, i64 0
  %arrayidx.3 = getelementptr inbounds [6 x i8*], [6 x i8*]* %row, i64 0, i64 3
  store i8* %itmp.0, i8** %arrayidx.3, align 8, !tbaa !3
  tail call void @BN_free(%struct.bignum_st* noundef nonnull %call) #9
  %db6 = getelementptr inbounds %struct.ca_db_st, %struct.ca_db_st* %db, i64 0, i32 1
  %3 = load %struct.txt_db_st*, %struct.txt_db_st** %db6, align 8, !tbaa !31
  %call7 = call i8** @TXT_DB_get_by_index(%struct.txt_db_st* noundef %3, i32 noundef 3, i8** noundef nonnull %arrayidx) #9
  call void @CRYPTO_free(i8* noundef %itmp.0, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.197, i64 0, i64 0), i32 noundef 1186) #9
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %0) #8
  ret i8** %call7
}

declare dso_local %struct.ocsp_single_response_st* @OCSP_basic_add1_status(%struct.ocsp_basic_response_st* noundef, %struct.ocsp_cert_id_st* noundef, i32 noundef, i32 noundef, %struct.asn1_string_st* noundef, %struct.asn1_string_st* noundef, %struct.asn1_string_st* noundef) local_unnamed_addr #2

declare dso_local i32 @unpack_revinfo(%struct.asn1_string_st** noundef, i32* noundef, %struct.asn1_object_st** noundef, %struct.asn1_string_st** noundef, i8* noundef) local_unnamed_addr #2

declare dso_local i32 @OCSP_SINGLERESP_add1_ext_i2d(%struct.ocsp_single_response_st* noundef, i32 noundef, i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

declare dso_local void @ASN1_OBJECT_free(%struct.asn1_object_st* noundef) local_unnamed_addr #2

declare dso_local void @ASN1_TIME_free(%struct.asn1_string_st* noundef) local_unnamed_addr #2

declare dso_local void @ASN1_GENERALIZEDTIME_free(%struct.asn1_string_st* noundef) local_unnamed_addr #2

declare dso_local i32 @OCSP_copy_nonce(%struct.ocsp_basic_response_st* noundef, %struct.ocsp_request_st* noundef) local_unnamed_addr #2

declare dso_local %struct.evp_md_ctx_st* @EVP_MD_CTX_new() local_unnamed_addr #2

declare dso_local i32 @EVP_DigestSignInit(%struct.evp_md_ctx_st* noundef, %struct.evp_pkey_ctx_st** noundef, %struct.evp_md_st* noundef, %struct.engine_st* noundef, %struct.evp_pkey_st* noundef) local_unnamed_addr #2

declare dso_local i32 @pkey_ctrl_string(%struct.evp_pkey_ctx_st* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local i32 @OCSP_basic_sign_ctx(%struct.ocsp_basic_response_st* noundef, %struct.x509_st* noundef, %struct.evp_md_ctx_st* noundef, %struct.stack_st_X509* noundef, i64 noundef) local_unnamed_addr #2

declare dso_local %struct.asn1_string_st* @OCSP_resp_get0_signature(%struct.ocsp_basic_response_st* noundef) local_unnamed_addr #2

declare dso_local void @corrupt_signature(%struct.asn1_string_st* noundef) local_unnamed_addr #2

declare dso_local void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef) local_unnamed_addr #2

declare dso_local %struct.bignum_st* @ASN1_INTEGER_to_BN(%struct.asn1_string_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare dso_local void @OPENSSL_die(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #7

declare dso_local i32 @BN_is_zero(%struct.bignum_st* noundef) local_unnamed_addr #2

declare dso_local i8* @CRYPTO_strdup(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i8* @BN_bn2hex(%struct.bignum_st* noundef) local_unnamed_addr #2

declare dso_local void @BN_free(%struct.bignum_st* noundef) local_unnamed_addr #2

declare dso_local i8** @TXT_DB_get_by_index(%struct.txt_db_st* noundef, i32 noundef, i8** noundef) local_unnamed_addr #2

declare dso_local i32 @http_server_get_asn1_req(%struct.ASN1_ITEM_st* noundef, %struct.ASN1_VALUE_st** noundef, i8** noundef, %struct.bio_st** noundef, %struct.bio_st* noundef, i32* noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i32 @http_server_send_asn1_resp(%struct.bio_st* noundef, i32 noundef, i8* noundef, %struct.ASN1_ITEM_st* noundef, %struct.ASN1_VALUE_st* noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }
attributes #9 = { nobuiltin nounwind "no-builtins" }
attributes #10 = { nobuiltin nounwind readonly willreturn "no-builtins" }
attributes #11 = { nobuiltin "no-builtins" }
attributes #12 = { nobuiltin noreturn nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.0"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !5, i64 0}
!9 = !{!10, !10, i64 0}
!10 = !{!"long", !5, i64 0}
!11 = !{!5, !5, i64 0}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!15, !4, i64 16}
!15 = !{!"ca_db_st", !16, i64 0, !4, i64 8, !4, i64 16, !17, i64 24}
!16 = !{!"db_attr_st", !8, i64 0}
!17 = !{!"stat", !10, i64 0, !10, i64 8, !10, i64 16, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !18, i64 72, !18, i64 88, !18, i64 104, !5, i64 120}
!18 = !{!"timespec", !10, i64 0, !10, i64 8}
!19 = !{!15, !10, i64 112}
!20 = !{!17, !10, i64 88}
!21 = !{!15, !10, i64 128}
!22 = !{!17, !10, i64 104}
!23 = !{!15, !10, i64 32}
!24 = !{!17, !10, i64 8}
!25 = !{!15, !10, i64 24}
!26 = !{!17, !10, i64 0}
!27 = distinct !{!27, !13}
!28 = distinct !{!28, !13}
!29 = distinct !{!29, !13}
!30 = distinct !{!30, !13}
!31 = !{!15, !4, i64 8}
