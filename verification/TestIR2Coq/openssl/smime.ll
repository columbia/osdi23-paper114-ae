; ModuleID = 'apps/smime.c'
source_filename = "apps/smime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.options_st = type { i8*, i32, i32, i8* }
%struct.bio_st = type opaque
%struct.pkcs7_st = type { i8*, i64, i32, i32, %struct.asn1_object_st*, %union.anon, %struct.PKCS7_CTX_st }
%struct.asn1_object_st = type opaque
%union.anon = type { i8* }
%struct.PKCS7_CTX_st = type { %struct.ossl_lib_ctx_st*, i8* }
%struct.ossl_lib_ctx_st = type opaque
%struct.stack_st_X509 = type opaque
%struct.evp_cipher_st = type opaque
%struct.evp_md_st = type opaque
%struct.X509_VERIFY_PARAM_st = type opaque
%struct.engine_st = type opaque
%struct.conf_st = type { %struct.conf_method_st*, i8*, %struct.lhash_st_CONF_VALUE*, i32, i32, i8*, %struct.ossl_lib_ctx_st* }
%struct.conf_method_st = type { i8*, %struct.conf_st* (%struct.conf_method_st*)*, i32 (%struct.conf_st*)*, i32 (%struct.conf_st*)*, i32 (%struct.conf_st*)*, i32 (%struct.conf_st*, %struct.bio_st*, i64*)*, i32 (%struct.conf_st*, %struct.bio_st*)*, i32 (%struct.conf_st*, i8)*, i32 (%struct.conf_st*, i8)*, i32 (%struct.conf_st*, i8*, i64*)* }
%struct.lhash_st_CONF_VALUE = type { %union.lh_CONF_VALUE_dummy }
%union.lh_CONF_VALUE_dummy = type { i8* }
%struct.stack_st_OPENSSL_STRING = type opaque
%struct.stack_st = type opaque
%struct.x509_st = type opaque
%struct.evp_pkey_st = type opaque
%struct.x509_store_st = type opaque
%struct.pkcs7_signer_info_st = type { %struct.asn1_string_st*, %struct.pkcs7_issuer_and_serial_st*, %struct.X509_algor_st*, %struct.stack_st_X509_ATTRIBUTE*, %struct.X509_algor_st*, %struct.asn1_string_st*, %struct.stack_st_X509_ATTRIBUTE*, %struct.evp_pkey_st*, %struct.PKCS7_CTX_st* }
%struct.pkcs7_issuer_and_serial_st = type { %struct.X509_name_st*, %struct.asn1_string_st* }
%struct.X509_name_st = type opaque
%struct.X509_algor_st = type { %struct.asn1_object_st*, %struct.asn1_type_st* }
%struct.asn1_type_st = type { i32, %union.anon.0 }
%union.anon.0 = type { i8* }
%struct.asn1_string_st = type { i32, i32, i8*, i64 }
%struct.stack_st_X509_ATTRIBUTE = type opaque
%struct.x509_store_ctx_st = type opaque

@OPT_HELP_STR = external dso_local constant [0 x i8], align 1
@.str = private unnamed_addr constant [31 x i8] c"Usage: %s [options] [cert...]\0A\00", align 1
@OPT_SECTION_STR = external dso_local constant [0 x i8], align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"General options:\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Display this summary\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"Input file\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"inform\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"Input format SMIME (default), PEM or DER\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"Output file\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"outform\00", align 1
@.str.11 = private unnamed_addr constant [42 x i8] c"Output format SMIME (default), PEM or DER\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"inkey\00", align 1
@.str.13 = private unnamed_addr constant [47 x i8] c"Input private key (if not signer or recipient)\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"keyform\00", align 1
@.str.15 = private unnamed_addr constant [56 x i8] c"Input private key format (ENGINE, other values ignored)\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"engine\00", align 1
@.str.17 = private unnamed_addr constant [39 x i8] c"Use engine, possibly a hardware device\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"stream\00", align 1
@.str.19 = private unnamed_addr constant [21 x i8] c"Enable CMS streaming\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"indef\00", align 1
@.str.21 = private unnamed_addr constant [16 x i8] c"Same as -stream\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"noindef\00", align 1
@.str.23 = private unnamed_addr constant [22 x i8] c"Disable CMS streaming\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"config\00", align 1
@.str.25 = private unnamed_addr constant [50 x i8] c"Load a configuration file (this may load modules)\00", align 1
@.str.26 = private unnamed_addr constant [17 x i8] c"Action options:\0A\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"encrypt\00", align 1
@.str.28 = private unnamed_addr constant [16 x i8] c"Encrypt message\00", align 1
@.str.29 = private unnamed_addr constant [8 x i8] c"decrypt\00", align 1
@.str.30 = private unnamed_addr constant [26 x i8] c"Decrypt encrypted message\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"sign\00", align 1
@.str.32 = private unnamed_addr constant [13 x i8] c"Sign message\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"resign\00", align 1
@.str.34 = private unnamed_addr constant [24 x i8] c"Resign a signed message\00", align 1
@.str.35 = private unnamed_addr constant [7 x i8] c"verify\00", align 1
@.str.36 = private unnamed_addr constant [22 x i8] c"Verify signed message\00", align 1
@.str.37 = private unnamed_addr constant [29 x i8] c"Signing/Encryption options:\0A\00", align 1
@.str.38 = private unnamed_addr constant [7 x i8] c"passin\00", align 1
@.str.39 = private unnamed_addr constant [30 x i8] c"Input file pass phrase source\00", align 1
@.str.40 = private unnamed_addr constant [3 x i8] c"md\00", align 1
@.str.41 = private unnamed_addr constant [50 x i8] c"Digest algorithm to use when signing or resigning\00", align 1
@.str.42 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.43 = private unnamed_addr constant [21 x i8] c"Any supported cipher\00", align 1
@.str.44 = private unnamed_addr constant [7 x i8] c"pk7out\00", align 1
@.str.45 = private unnamed_addr constant [24 x i8] c"Output PKCS#7 structure\00", align 1
@.str.46 = private unnamed_addr constant [9 x i8] c"nointern\00", align 1
@.str.47 = private unnamed_addr constant [48 x i8] c"Don't search certificates in message for signer\00", align 1
@.str.48 = private unnamed_addr constant [9 x i8] c"nodetach\00", align 1
@.str.49 = private unnamed_addr constant [19 x i8] c"Use opaque signing\00", align 1
@.str.50 = private unnamed_addr constant [7 x i8] c"noattr\00", align 1
@.str.51 = private unnamed_addr constant [36 x i8] c"Don't include any signed attributes\00", align 1
@.str.52 = private unnamed_addr constant [7 x i8] c"binary\00", align 1
@.str.53 = private unnamed_addr constant [32 x i8] c"Don't translate message to text\00", align 1
@.str.54 = private unnamed_addr constant [7 x i8] c"signer\00", align 1
@.str.55 = private unnamed_addr constant [24 x i8] c"Signer certificate file\00", align 1
@.str.56 = private unnamed_addr constant [8 x i8] c"content\00", align 1
@.str.57 = private unnamed_addr constant [50 x i8] c"Supply or override content for detached signature\00", align 1
@.str.58 = private unnamed_addr constant [8 x i8] c"nocerts\00", align 1
@.str.59 = private unnamed_addr constant [47 x i8] c"Don't include signers certificate when signing\00", align 1
@.str.60 = private unnamed_addr constant [34 x i8] c"Verification/Decryption options:\0A\00", align 1
@.str.61 = private unnamed_addr constant [7 x i8] c"nosigs\00", align 1
@.str.62 = private unnamed_addr constant [31 x i8] c"Don't verify message signature\00", align 1
@.str.63 = private unnamed_addr constant [9 x i8] c"noverify\00", align 1
@.str.64 = private unnamed_addr constant [33 x i8] c"Don't verify signers certificate\00", align 1
@.str.65 = private unnamed_addr constant [9 x i8] c"certfile\00", align 1
@.str.66 = private unnamed_addr constant [24 x i8] c"Other certificates file\00", align 1
@.str.67 = private unnamed_addr constant [6 x i8] c"recip\00", align 1
@.str.68 = private unnamed_addr constant [42 x i8] c"Recipient certificate file for decryption\00", align 1
@.str.69 = private unnamed_addr constant [16 x i8] c"Email options:\0A\00", align 1
@.str.70 = private unnamed_addr constant [3 x i8] c"to\00", align 1
@.str.71 = private unnamed_addr constant [11 x i8] c"To address\00", align 1
@.str.72 = private unnamed_addr constant [5 x i8] c"from\00", align 1
@.str.73 = private unnamed_addr constant [13 x i8] c"From address\00", align 1
@.str.74 = private unnamed_addr constant [8 x i8] c"subject\00", align 1
@.str.75 = private unnamed_addr constant [8 x i8] c"Subject\00", align 1
@.str.76 = private unnamed_addr constant [5 x i8] c"text\00", align 1
@.str.77 = private unnamed_addr constant [36 x i8] c"Include or delete text MIME headers\00", align 1
@.str.78 = private unnamed_addr constant [11 x i8] c"nosmimecap\00", align 1
@.str.79 = private unnamed_addr constant [37 x i8] c"Omit the SMIMECapabilities attribute\00", align 1
@.str.80 = private unnamed_addr constant [28 x i8] c"Certificate chain options:\0A\00", align 1
@.str.81 = private unnamed_addr constant [7 x i8] c"CApath\00", align 1
@.str.82 = private unnamed_addr constant [31 x i8] c"Trusted certificates directory\00", align 1
@.str.83 = private unnamed_addr constant [7 x i8] c"CAfile\00", align 1
@.str.84 = private unnamed_addr constant [26 x i8] c"Trusted certificates file\00", align 1
@.str.85 = private unnamed_addr constant [8 x i8] c"CAstore\00", align 1
@.str.86 = private unnamed_addr constant [31 x i8] c"Trusted certificates store URI\00", align 1
@.str.87 = private unnamed_addr constant [10 x i8] c"no-CAfile\00", align 1
@.str.88 = private unnamed_addr constant [42 x i8] c"Do not load the default certificates file\00", align 1
@.str.89 = private unnamed_addr constant [10 x i8] c"no-CApath\00", align 1
@.str.90 = private unnamed_addr constant [65 x i8] c"Do not load certificates from the default certificates directory\00", align 1
@.str.91 = private unnamed_addr constant [11 x i8] c"no-CAstore\00", align 1
@.str.92 = private unnamed_addr constant [61 x i8] c"Do not load certificates from the default certificates store\00", align 1
@.str.93 = private unnamed_addr constant [8 x i8] c"nochain\00", align 1
@.str.94 = private unnamed_addr constant [89 x i8] c"set PKCS7_NOCHAIN so certificates contained in the message are not used as untrusted CAs\00", align 1
@.str.95 = private unnamed_addr constant [8 x i8] c"crlfeol\00", align 1
@.str.96 = private unnamed_addr constant [47 x i8] c"Use CRLF as EOL termination instead of CR only\00", align 1
@.str.97 = private unnamed_addr constant [23 x i8] c"Random state options:\0A\00", align 1
@.str.98 = private unnamed_addr constant [5 x i8] c"rand\00", align 1
@.str.99 = private unnamed_addr constant [56 x i8] c"Load the given file(s) into the random number generator\00", align 1
@.str.100 = private unnamed_addr constant [10 x i8] c"writerand\00", align 1
@.str.101 = private unnamed_addr constant [40 x i8] c"Write random data to the specified file\00", align 1
@.str.102 = private unnamed_addr constant [21 x i8] c"Validation options:\0A\00", align 1
@.str.103 = private unnamed_addr constant [7 x i8] c"policy\00", align 1
@.str.104 = private unnamed_addr constant [41 x i8] c"adds policy to the acceptable policy set\00", align 1
@.str.105 = private unnamed_addr constant [8 x i8] c"purpose\00", align 1
@.str.106 = private unnamed_addr constant [26 x i8] c"certificate chain purpose\00", align 1
@.str.107 = private unnamed_addr constant [12 x i8] c"verify_name\00", align 1
@.str.108 = private unnamed_addr constant [25 x i8] c"verification policy name\00", align 1
@.str.109 = private unnamed_addr constant [13 x i8] c"verify_depth\00", align 1
@.str.110 = private unnamed_addr constant [18 x i8] c"chain depth limit\00", align 1
@.str.111 = private unnamed_addr constant [11 x i8] c"auth_level\00", align 1
@.str.112 = private unnamed_addr constant [36 x i8] c"chain authentication security level\00", align 1
@.str.113 = private unnamed_addr constant [7 x i8] c"attime\00", align 1
@.str.114 = private unnamed_addr constant [24 x i8] c"verification epoch time\00", align 1
@.str.115 = private unnamed_addr constant [16 x i8] c"verify_hostname\00", align 1
@.str.116 = private unnamed_addr constant [23 x i8] c"expected peer hostname\00", align 1
@.str.117 = private unnamed_addr constant [13 x i8] c"verify_email\00", align 1
@.str.118 = private unnamed_addr constant [20 x i8] c"expected peer email\00", align 1
@.str.119 = private unnamed_addr constant [10 x i8] c"verify_ip\00", align 1
@.str.120 = private unnamed_addr constant [25 x i8] c"expected peer IP address\00", align 1
@.str.121 = private unnamed_addr constant [16 x i8] c"ignore_critical\00", align 1
@.str.122 = private unnamed_addr constant [37 x i8] c"permit unhandled critical extensions\00", align 1
@.str.123 = private unnamed_addr constant [14 x i8] c"issuer_checks\00", align 1
@.str.124 = private unnamed_addr constant [13 x i8] c"(deprecated)\00", align 1
@.str.125 = private unnamed_addr constant [10 x i8] c"crl_check\00", align 1
@.str.126 = private unnamed_addr constant [34 x i8] c"check leaf certificate revocation\00", align 1
@.str.127 = private unnamed_addr constant [14 x i8] c"crl_check_all\00", align 1
@.str.128 = private unnamed_addr constant [28 x i8] c"check full chain revocation\00", align 1
@.str.129 = private unnamed_addr constant [13 x i8] c"policy_check\00", align 1
@.str.130 = private unnamed_addr constant [30 x i8] c"perform rfc5280 policy checks\00", align 1
@.str.131 = private unnamed_addr constant [16 x i8] c"explicit_policy\00", align 1
@.str.132 = private unnamed_addr constant [44 x i8] c"set policy variable require-explicit-policy\00", align 1
@.str.133 = private unnamed_addr constant [12 x i8] c"inhibit_any\00", align 1
@.str.134 = private unnamed_addr constant [39 x i8] c"set policy variable inhibit-any-policy\00", align 1
@.str.135 = private unnamed_addr constant [12 x i8] c"inhibit_map\00", align 1
@.str.136 = private unnamed_addr constant [43 x i8] c"set policy variable inhibit-policy-mapping\00", align 1
@.str.137 = private unnamed_addr constant [12 x i8] c"x509_strict\00", align 1
@.str.138 = private unnamed_addr constant [47 x i8] c"disable certificate compatibility work-arounds\00", align 1
@.str.139 = private unnamed_addr constant [13 x i8] c"extended_crl\00", align 1
@.str.140 = private unnamed_addr constant [29 x i8] c"enable extended CRL features\00", align 1
@.str.141 = private unnamed_addr constant [11 x i8] c"use_deltas\00", align 1
@.str.142 = private unnamed_addr constant [15 x i8] c"use delta CRLs\00", align 1
@.str.143 = private unnamed_addr constant [13 x i8] c"policy_print\00", align 1
@.str.144 = private unnamed_addr constant [36 x i8] c"print policy processing diagnostics\00", align 1
@.str.145 = private unnamed_addr constant [13 x i8] c"check_ss_sig\00", align 1
@.str.146 = private unnamed_addr constant [30 x i8] c"check root CA self-signatures\00", align 1
@.str.147 = private unnamed_addr constant [14 x i8] c"trusted_first\00", align 1
@.str.148 = private unnamed_addr constant [35 x i8] c"search trust store first (default)\00", align 1
@.str.149 = private unnamed_addr constant [16 x i8] c"suiteB_128_only\00", align 1
@.str.150 = private unnamed_addr constant [26 x i8] c"Suite B 128-bit-only mode\00", align 1
@.str.151 = private unnamed_addr constant [11 x i8] c"suiteB_128\00", align 1
@.str.152 = private unnamed_addr constant [49 x i8] c"Suite B 128-bit mode allowing 192-bit algorithms\00", align 1
@.str.153 = private unnamed_addr constant [11 x i8] c"suiteB_192\00", align 1
@.str.154 = private unnamed_addr constant [26 x i8] c"Suite B 192-bit-only mode\00", align 1
@.str.155 = private unnamed_addr constant [14 x i8] c"partial_chain\00", align 1
@.str.156 = private unnamed_addr constant [55 x i8] c"accept chains anchored by intermediate trust-store CAs\00", align 1
@.str.157 = private unnamed_addr constant [14 x i8] c"no_alt_chains\00", align 1
@.str.158 = private unnamed_addr constant [14 x i8] c"no_check_time\00", align 1
@.str.159 = private unnamed_addr constant [33 x i8] c"ignore certificate validity time\00", align 1
@.str.160 = private unnamed_addr constant [18 x i8] c"allow_proxy_certs\00", align 1
@.str.161 = private unnamed_addr constant [36 x i8] c"allow the use of proxy certificates\00", align 1
@.str.162 = private unnamed_addr constant [19 x i8] c"Provider options:\0A\00", align 1
@.str.163 = private unnamed_addr constant [14 x i8] c"provider-path\00", align 1
@.str.164 = private unnamed_addr constant [68 x i8] c"Provider load path (must be before 'provider' argument if required)\00", align 1
@.str.165 = private unnamed_addr constant [9 x i8] c"provider\00", align 1
@.str.166 = private unnamed_addr constant [51 x i8] c"Provider to load (can be specified multiple times)\00", align 1
@.str.167 = private unnamed_addr constant [10 x i8] c"propquery\00", align 1
@.str.168 = private unnamed_addr constant [45 x i8] c"Property query used when fetching algorithms\00", align 1
@OPT_PARAM_STR = external dso_local constant [0 x i8], align 1
@.str.169 = private unnamed_addr constant [13 x i8] c"Parameters:\0A\00", align 1
@.str.170 = private unnamed_addr constant [5 x i8] c"cert\00", align 1
@.str.171 = private unnamed_addr constant [38 x i8] c"Recipient certs, used when encrypting\00", align 1
@smime_options = dso_local constant [93 x %struct.options_st] [%struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_HELP_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0), i32 2032, i32 60, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i32 2033, i32 99, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0), i32 2034, i32 62, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), i32 2035, i32 99, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.11, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0), i32 31, i32 115, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.13, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i32 0, i32 0), i32 32, i32 102, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.15, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i32 0, i32 0), i32 22, i32 115, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.17, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i32 0, i32 0), i32 18, i32 45, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.19, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0), i32 19, i32 45, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i32 0, i32 0), i32 20, i32 45, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.23, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i32 0, i32 0), i32 1605, i32 60, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.25, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.26, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.27, i32 0, i32 0), i32 2, i32 45, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.28, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.29, i32 0, i32 0), i32 3, i32 45, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.30, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i32 0, i32 0), i32 4, i32 45, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.32, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.33, i32 0, i32 0), i32 5, i32 45, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.34, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.35, i32 0, i32 0), i32 6, i32 45, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.36, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.37, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.38, i32 0, i32 0), i32 23, i32 115, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.39, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.40, i32 0, i32 0), i32 29, i32 115, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.41, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.42, i32 0, i32 0), i32 30, i32 45, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.43, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.44, i32 0, i32 0), i32 7, i32 45, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.45, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.46, i32 0, i32 0), i32 9, i32 45, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.47, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.48, i32 0, i32 0), i32 14, i32 45, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.49, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.50, i32 0, i32 0), i32 13, i32 45, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.51, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.52, i32 0, i32 0), i32 16, i32 45, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.53, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.54, i32 0, i32 0), i32 27, i32 115, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.55, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.56, i32 0, i32 0), i32 2036, i32 60, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.57, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.58, i32 0, i32 0), i32 12, i32 45, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.59, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.60, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.61, i32 0, i32 0), i32 17, i32 45, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.62, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.63, i32 0, i32 0), i32 10, i32 45, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.64, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.65, i32 0, i32 0), i32 33, i32 60, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.66, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.67, i32 0, i32 0), i32 28, i32 60, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.68, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.69, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.70, i32 0, i32 0), i32 24, i32 115, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.71, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.72, i32 0, i32 0), i32 25, i32 115, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.73, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.74, i32 0, i32 0), i32 26, i32 115, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.75, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.76, i32 0, i32 0), i32 8, i32 45, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.77, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.78, i32 0, i32 0), i32 15, i32 45, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.79, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.80, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.81, i32 0, i32 0), i32 35, i32 47, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.82, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.83, i32 0, i32 0), i32 34, i32 60, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.84, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.85, i32 0, i32 0), i32 36, i32 58, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.86, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.87, i32 0, i32 0), i32 37, i32 45, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.88, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.89, i32 0, i32 0), i32 38, i32 45, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.90, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.91, i32 0, i32 0), i32 39, i32 45, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.92, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.93, i32 0, i32 0), i32 11, i32 45, i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.94, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.95, i32 0, i32 0), i32 21, i32 45, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.96, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.97, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.98, i32 0, i32 0), i32 1501, i32 115, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.99, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.100, i32 0, i32 0), i32 1502, i32 62, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.101, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.102, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.103, i32 0, i32 0), i32 2001, i32 115, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.104, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.105, i32 0, i32 0), i32 2002, i32 115, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.106, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.107, i32 0, i32 0), i32 2003, i32 115, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.108, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.109, i32 0, i32 0), i32 2004, i32 110, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.110, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.111, i32 0, i32 0), i32 2029, i32 110, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.112, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.113, i32 0, i32 0), i32 2005, i32 77, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.114, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.115, i32 0, i32 0), i32 2006, i32 115, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.116, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.117, i32 0, i32 0), i32 2007, i32 115, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.118, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.119, i32 0, i32 0), i32 2008, i32 115, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.120, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.121, i32 0, i32 0), i32 2009, i32 45, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.122, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.123, i32 0, i32 0), i32 2010, i32 45, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.124, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.125, i32 0, i32 0), i32 2011, i32 45, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.126, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.127, i32 0, i32 0), i32 2012, i32 45, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.128, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.129, i32 0, i32 0), i32 2013, i32 45, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.130, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.131, i32 0, i32 0), i32 2014, i32 45, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.132, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.133, i32 0, i32 0), i32 2015, i32 45, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.134, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.135, i32 0, i32 0), i32 2016, i32 45, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.136, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.137, i32 0, i32 0), i32 2017, i32 45, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.138, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.139, i32 0, i32 0), i32 2018, i32 45, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.140, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.141, i32 0, i32 0), i32 2019, i32 45, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.142, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.143, i32 0, i32 0), i32 2020, i32 45, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.144, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.145, i32 0, i32 0), i32 2021, i32 45, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.146, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.147, i32 0, i32 0), i32 2022, i32 45, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.148, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.149, i32 0, i32 0), i32 2023, i32 45, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.150, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.151, i32 0, i32 0), i32 2024, i32 45, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.152, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.153, i32 0, i32 0), i32 2025, i32 45, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.154, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.155, i32 0, i32 0), i32 2026, i32 45, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.156, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.157, i32 0, i32 0), i32 2027, i32 45, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.124, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.158, i32 0, i32 0), i32 2028, i32 45, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.159, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.160, i32 0, i32 0), i32 2030, i32 45, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.161, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.162, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.163, i32 0, i32 0), i32 1602, i32 115, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.164, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.165, i32 0, i32 0), i32 1601, i32 115, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.166, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.167, i32 0, i32 0), i32 1603, i32 115, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.168, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_PARAM_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.169, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.170, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.171, i32 0, i32 0) }, %struct.options_st zeroinitializer], align 16
@.str.172 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@bio_err = external dso_local local_unnamed_addr global %struct.bio_st*, align 8
@.str.173 = private unnamed_addr constant [28 x i8] c"%s: Use -help for summary.\0A\00", align 1
@.str.174 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@.str.175 = private unnamed_addr constant [37 x i8] c"%s: Must have -signer before -inkey\0A\00", align 1
@.str.176 = private unnamed_addr constant [38 x i8] c"Multiple signers or keys not allowed\0A\00", align 1
@.str.177 = private unnamed_addr constant [45 x i8] c"No operation (-encrypt|-sign|...) specified\0A\00", align 1
@.str.178 = private unnamed_addr constant [32 x i8] c"Illegal -inkey without -signer\0A\00", align 1
@.str.179 = private unnamed_addr constant [33 x i8] c"No signer certificate specified\0A\00", align 1
@.str.180 = private unnamed_addr constant [43 x i8] c"No recipient certificate or key specified\0A\00", align 1
@.str.181 = private unnamed_addr constant [42 x i8] c"No recipient(s) certificate(s) specified\0A\00", align 1
@.str.182 = private unnamed_addr constant [24 x i8] c"Error getting password\0A\00", align 1
@.str.183 = private unnamed_addr constant [27 x i8] c"recipient certificate file\00", align 1
@.str.184 = private unnamed_addr constant [13 x i8] c"certificates\00", align 1
@.str.185 = private unnamed_addr constant [12 x i8] c"signing key\00", align 1
@.str.186 = private unnamed_addr constant [31 x i8] c"Error allocating PKCS7 object\0A\00", align 1
@.str.187 = private unnamed_addr constant [34 x i8] c"Bad input format for PKCS#7 file\0A\00", align 1
@.str.188 = private unnamed_addr constant [30 x i8] c"Error reading S/MIME message\0A\00", align 1
@.str.189 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.190 = private unnamed_addr constant [28 x i8] c"Can't read content file %s\0A\00", align 1
@.str.191 = private unnamed_addr constant [19 x i8] c"signer certificate\00", align 1
@.str.192 = private unnamed_addr constant [33 x i8] c"Error creating PKCS#7 structure\0A\00", align 1
@.str.193 = private unnamed_addr constant [35 x i8] c"Error decrypting PKCS#7 structure\0A\00", align 1
@.str.194 = private unnamed_addr constant [25 x i8] c"Verification successful\0A\00", align 1
@.str.195 = private unnamed_addr constant [22 x i8] c"Verification failure\0A\00", align 1
@.str.196 = private unnamed_addr constant [29 x i8] c"Error writing signers to %s\0A\00", align 1
@.str.197 = private unnamed_addr constant [9 x i8] c"To: %s%s\00", align 1
@.str.198 = private unnamed_addr constant [11 x i8] c"From: %s%s\00", align 1
@.str.199 = private unnamed_addr constant [14 x i8] c"Subject: %s%s\00", align 1
@.str.200 = private unnamed_addr constant [35 x i8] c"Bad output format for PKCS#7 file\0A\00", align 1
@.str.201 = private unnamed_addr constant [22 x i8] c"Error writing output\0A\00", align 1
@.str.202 = private unnamed_addr constant [13 x i8] c"apps/smime.c\00", align 1
@.str.203 = private unnamed_addr constant [2 x i8] c"w\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @smime_main(i32 noundef %argc, i8** noundef %argv) local_unnamed_addr #0 {
entry:
  %indata = alloca %struct.bio_st*, align 8
  %p7 = alloca %struct.pkcs7_st*, align 8
  %other = alloca %struct.stack_st_X509*, align 8
  %cipher = alloca %struct.evp_cipher_st*, align 8
  %sign_md = alloca %struct.evp_md_st*, align 8
  %passin = alloca i8*, align 8
  %informat = alloca i32, align 4
  %outformat = alloca i32, align 4
  %keyform = alloca i32, align 4
  %0 = bitcast %struct.bio_st** %indata to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #4
  store %struct.bio_st* null, %struct.bio_st** %indata, align 8, !tbaa !3
  %1 = bitcast %struct.pkcs7_st** %p7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #4
  store %struct.pkcs7_st* null, %struct.pkcs7_st** %p7, align 8, !tbaa !3
  %2 = bitcast %struct.stack_st_X509** %other to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #4
  store %struct.stack_st_X509* null, %struct.stack_st_X509** %other, align 8, !tbaa !3
  %3 = bitcast %struct.evp_cipher_st** %cipher to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #4
  store %struct.evp_cipher_st* null, %struct.evp_cipher_st** %cipher, align 8, !tbaa !3
  %4 = bitcast %struct.evp_md_st** %sign_md to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #4
  store %struct.evp_md_st* null, %struct.evp_md_st** %sign_md, align 8, !tbaa !3
  %5 = bitcast i8** %passin to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #4
  store i8* null, i8** %passin, align 8, !tbaa !3
  %6 = bitcast i32* %informat to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #4
  store i32 32775, i32* %informat, align 4, !tbaa !7
  %7 = bitcast i32* %outformat to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #4
  store i32 32775, i32* %outformat, align 4, !tbaa !7
  %8 = bitcast i32* %keyform to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %8) #4
  store i32 0, i32* %keyform, align 4, !tbaa !7
  %call = tail call %struct.ossl_lib_ctx_st* @app_get0_libctx() #5
  %call1 = tail call %struct.X509_VERIFY_PARAM_st* @X509_VERIFY_PARAM_new() #5
  %cmp = icmp eq %struct.X509_VERIFY_PARAM_st* %call1, null
  br i1 %cmp, label %cleanup565, label %if.end

if.end:                                           ; preds = %entry
  %call2 = tail call i8* @opt_init(i32 noundef %argc, i8** noundef %argv, %struct.options_st* noundef getelementptr inbounds ([93 x %struct.options_st], [93 x %struct.options_st]* @smime_options, i64 0, i64 0)) #5
  %call31037 = call i32 @opt_next() #5
  %cmp4.not1038 = icmp eq i32 %call31037, 0
  br i1 %cmp4.not1038, label %while.end, label %while.body

while.body:                                       ; preds = %if.end, %sw.epilog
  %call31079 = phi i32 [ %call3, %sw.epilog ], [ %call31037, %if.end ]
  %mime_eol.01078 = phi i8* [ %mime_eol.1, %sw.epilog ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.172, i64 0, i64 0), %if.end ]
  %e.01073 = phi %struct.engine_st* [ %e.1, %sw.epilog ], [ null, %if.end ]
  %vpmtouched.01072 = phi i32 [ %vpmtouched.1, %sw.epilog ], [ 0, %if.end ]
  %indef.01071 = phi i32 [ %indef.1, %sw.epilog ], [ 0, %if.end ]
  %operation.01070 = phi i32 [ %operation.1, %sw.epilog ], [ 0, %if.end ]
  %flags.01069 = phi i32 [ %flags.1, %sw.epilog ], [ 64, %if.end ]
  %noCAstore.01068 = phi i32 [ %noCAstore.1, %sw.epilog ], [ 0, %if.end ]
  %noCAfile.01067 = phi i32 [ %noCAfile.1, %sw.epilog ], [ 0, %if.end ]
  %noCApath.01066 = phi i32 [ %noCApath.1, %sw.epilog ], [ 0, %if.end ]
  %conf.01059 = phi %struct.conf_st* [ %conf.1, %sw.epilog ], [ null, %if.end ]
  %ciphername.01058 = phi i8* [ %ciphername.1, %sw.epilog ], [ null, %if.end ]
  %digestname.01057 = phi i8* [ %digestname.1, %sw.epilog ], [ null, %if.end ]
  %subject.01056 = phi i8* [ %subject.1, %sw.epilog ], [ null, %if.end ]
  %from.01055 = phi i8* [ %from.1, %sw.epilog ], [ null, %if.end ]
  %to.01054 = phi i8* [ %to.1, %sw.epilog ], [ null, %if.end ]
  %passinarg.01053 = phi i8* [ %passinarg.1, %sw.epilog ], [ null, %if.end ]
  %recipfile.01052 = phi i8* [ %recipfile.1, %sw.epilog ], [ null, %if.end ]
  %signerfile.01051 = phi i8* [ %signerfile.2, %sw.epilog ], [ null, %if.end ]
  %outfile.01050 = phi i8* [ %outfile.1, %sw.epilog ], [ null, %if.end ]
  %infile.01049 = phi i8* [ %infile.1, %sw.epilog ], [ null, %if.end ]
  %contfile.01048 = phi i8* [ %contfile.1, %sw.epilog ], [ null, %if.end ]
  %keyfile.01047 = phi i8* [ %keyfile.3, %sw.epilog ], [ null, %if.end ]
  %certfile.01046 = phi i8* [ %certfile.1, %sw.epilog ], [ null, %if.end ]
  %CAstore.01045 = phi i8* [ %CAstore.1, %sw.epilog ], [ null, %if.end ]
  %CApath.01044 = phi i8* [ %CApath.1, %sw.epilog ], [ null, %if.end ]
  %CAfile.01043 = phi i8* [ %CAfile.1, %sw.epilog ], [ null, %if.end ]
  %skkeys.01040 = phi %struct.stack_st_OPENSSL_STRING* [ %skkeys.6, %sw.epilog ], [ null, %if.end ]
  %sksigners.01039 = phi %struct.stack_st_OPENSSL_STRING* [ %sksigners.6, %sw.epilog ], [ null, %if.end ]
  switch i32 %call31079, label %sw.epilog [
    i32 2023, label %sw.bb157
    i32 -1, label %opthelp
    i32 1, label %sw.bb6
    i32 2033, label %sw.bb7
    i32 2032, label %sw.bb12
    i32 2035, label %sw.bb14
    i32 2034, label %sw.bb20
    i32 2, label %sw.bb22
    i32 3, label %sw.bb23
    i32 4, label %sw.bb24
    i32 5, label %sw.bb25
    i32 6, label %sw.bb26
    i32 7, label %sw.bb27
    i32 8, label %sw.bb28
    i32 9, label %sw.bb29
    i32 10, label %sw.bb31
    i32 11, label %sw.bb33
    i32 12, label %sw.bb35
    i32 13, label %sw.bb37
    i32 14, label %sw.bb39
    i32 15, label %sw.bb40
    i32 16, label %sw.bb42
    i32 17, label %sw.bb44
    i32 18, label %sw.bb46
    i32 19, label %sw.bb46
    i32 20, label %sw.bb47
    i32 21, label %sw.bb48
    i32 2030, label %sw.bb157
    i32 2028, label %sw.bb157
    i32 1501, label %sw.bb51
    i32 1502, label %sw.bb51
    i32 2027, label %sw.bb157
    i32 2026, label %sw.bb157
    i32 1601, label %sw.bb57
    i32 1602, label %sw.bb57
    i32 1603, label %sw.bb57
    i32 1605, label %sw.bb62
    i32 22, label %sw.bb68
    i32 23, label %sw.bb71
    i32 24, label %sw.bb73
    i32 25, label %sw.bb75
    i32 26, label %sw.bb77
    i32 27, label %sw.bb79
    i32 28, label %sw.bb104
    i32 29, label %sw.bb106
    i32 30, label %sw.bb108
    i32 31, label %sw.bb110
    i32 32, label %sw.bb137
    i32 33, label %sw.bb143
    i32 34, label %sw.bb145
    i32 35, label %sw.bb147
    i32 36, label %sw.bb149
    i32 37, label %sw.bb151
    i32 38, label %sw.bb152
    i32 39, label %sw.bb153
    i32 2036, label %sw.bb154
    i32 2025, label %sw.bb157
    i32 2024, label %sw.bb157
    i32 2001, label %sw.bb157
    i32 2002, label %sw.bb157
    i32 2003, label %sw.bb157
    i32 2004, label %sw.bb157
    i32 2029, label %sw.bb157
    i32 2005, label %sw.bb157
    i32 2006, label %sw.bb157
    i32 2007, label %sw.bb157
    i32 2008, label %sw.bb157
    i32 2009, label %sw.bb157
    i32 2010, label %sw.bb157
    i32 2011, label %sw.bb157
    i32 2012, label %sw.bb157
    i32 2013, label %sw.bb157
    i32 2014, label %sw.bb157
    i32 2015, label %sw.bb157
    i32 2016, label %sw.bb157
    i32 2017, label %sw.bb157
    i32 2018, label %sw.bb157
    i32 2019, label %sw.bb157
    i32 2020, label %sw.bb157
    i32 2021, label %sw.bb157
    i32 2022, label %sw.bb157
  ]

opthelp:                                          ; preds = %sw.bb157, %sw.bb137, %sw.bb14, %sw.bb7, %while.body, %if.then176, %if.then169, %if.then243, %if.then236, %if.then228, %if.then200, %if.then191, %if.then187, %if.then114
  %conf.0959 = phi %struct.conf_st* [ %conf.01059, %if.then114 ], [ %conf.0.lcssa, %if.then228 ], [ %conf.0.lcssa, %if.then200 ], [ %conf.0.lcssa, %if.then236 ], [ %conf.0.lcssa, %if.then243 ], [ %conf.0.lcssa, %if.then191 ], [ %conf.0.lcssa, %if.then187 ], [ %conf.0.lcssa, %if.then176 ], [ %conf.0.lcssa, %if.then169 ], [ %conf.01059, %while.body ], [ %conf.01059, %sw.bb7 ], [ %conf.01059, %sw.bb14 ], [ %conf.01059, %sw.bb137 ], [ %conf.01059, %sw.bb157 ]
  %e.0924 = phi %struct.engine_st* [ %e.01073, %if.then114 ], [ %e.0.lcssa, %if.then228 ], [ %e.0.lcssa, %if.then200 ], [ %e.0.lcssa, %if.then236 ], [ %e.0.lcssa, %if.then243 ], [ %e.0.lcssa, %if.then191 ], [ %e.0.lcssa, %if.then187 ], [ %e.0.lcssa, %if.then176 ], [ %e.0.lcssa, %if.then169 ], [ %e.01073, %while.body ], [ %e.01073, %sw.bb7 ], [ %e.01073, %sw.bb14 ], [ %e.01073, %sw.bb137 ], [ %e.01073, %sw.bb157 ]
  %sksigners.1 = phi %struct.stack_st_OPENSSL_STRING* [ %sksigners.01039, %if.then114 ], [ null, %if.then228 ], [ %sksigners.0.lcssa, %if.then200 ], [ null, %if.then236 ], [ null, %if.then243 ], [ null, %if.then191 ], [ %sksigners.0.lcssa, %if.then187 ], [ %sksigners.0.lcssa, %if.then176 ], [ %sksigners.0.lcssa, %if.then169 ], [ %sksigners.01039, %while.body ], [ %sksigners.01039, %sw.bb7 ], [ %sksigners.01039, %sw.bb14 ], [ %sksigners.01039, %sw.bb137 ], [ %sksigners.01039, %sw.bb157 ]
  %skkeys.1 = phi %struct.stack_st_OPENSSL_STRING* [ %skkeys.01040, %if.then114 ], [ %skkeys.8, %if.then228 ], [ %skkeys.0.lcssa, %if.then200 ], [ null, %if.then236 ], [ null, %if.then243 ], [ null, %if.then191 ], [ %skkeys.0.lcssa, %if.then187 ], [ %skkeys.0.lcssa, %if.then176 ], [ %skkeys.0.lcssa, %if.then169 ], [ %skkeys.01040, %while.body ], [ %skkeys.01040, %sw.bb7 ], [ %skkeys.01040, %sw.bb14 ], [ %skkeys.01040, %sw.bb137 ], [ %skkeys.01040, %sw.bb157 ]
  %9 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call5 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %9, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.173, i64 0, i64 0), i8* noundef %call2) #5
  br label %if.end556

sw.bb6:                                           ; preds = %while.body
  call void @opt_help(%struct.options_st* noundef getelementptr inbounds ([93 x %struct.options_st], [93 x %struct.options_st]* @smime_options, i64 0, i64 0)) #5
  br label %if.end556

sw.bb7:                                           ; preds = %while.body
  %call8 = call i8* @opt_arg() #5
  %call9 = call i32 @opt_format(i8* noundef %call8, i64 noundef 10, i32* noundef nonnull %informat) #5
  %tobool.not = icmp eq i32 %call9, 0
  br i1 %tobool.not, label %opthelp, label %sw.epilog

sw.bb12:                                          ; preds = %while.body
  %call13 = call i8* @opt_arg() #5
  br label %sw.epilog

sw.bb14:                                          ; preds = %while.body
  %call15 = call i8* @opt_arg() #5
  %call16 = call i32 @opt_format(i8* noundef %call15, i64 noundef 10, i32* noundef nonnull %outformat) #5
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %opthelp, label %sw.epilog

sw.bb20:                                          ; preds = %while.body
  %call21 = call i8* @opt_arg() #5
  br label %sw.epilog

sw.bb22:                                          ; preds = %while.body
  br label %sw.epilog

sw.bb23:                                          ; preds = %while.body
  br label %sw.epilog

sw.bb24:                                          ; preds = %while.body
  br label %sw.epilog

sw.bb25:                                          ; preds = %while.body
  br label %sw.epilog

sw.bb26:                                          ; preds = %while.body
  br label %sw.epilog

sw.bb27:                                          ; preds = %while.body
  br label %sw.epilog

sw.bb28:                                          ; preds = %while.body
  %or = or i32 %flags.01069, 1
  br label %sw.epilog

sw.bb29:                                          ; preds = %while.body
  %or30 = or i32 %flags.01069, 16
  br label %sw.epilog

sw.bb31:                                          ; preds = %while.body
  %or32 = or i32 %flags.01069, 32
  br label %sw.epilog

sw.bb33:                                          ; preds = %while.body
  %or34 = or i32 %flags.01069, 8
  br label %sw.epilog

sw.bb35:                                          ; preds = %while.body
  %or36 = or i32 %flags.01069, 2
  br label %sw.epilog

sw.bb37:                                          ; preds = %while.body
  %or38 = or i32 %flags.01069, 256
  br label %sw.epilog

sw.bb39:                                          ; preds = %while.body
  %and = and i32 %flags.01069, -65
  br label %sw.epilog

sw.bb40:                                          ; preds = %while.body
  %or41 = or i32 %flags.01069, 512
  br label %sw.epilog

sw.bb42:                                          ; preds = %while.body
  %or43 = or i32 %flags.01069, 128
  br label %sw.epilog

sw.bb44:                                          ; preds = %while.body
  %or45 = or i32 %flags.01069, 4
  br label %sw.epilog

sw.bb46:                                          ; preds = %while.body, %while.body
  br label %sw.epilog

sw.bb47:                                          ; preds = %while.body
  br label %sw.epilog

sw.bb48:                                          ; preds = %while.body
  %or49 = or i32 %flags.01069, 2048
  br label %sw.epilog

sw.bb51:                                          ; preds = %while.body, %while.body
  %call52 = call i32 @opt_rand(i32 noundef %call31079) #5
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.end556, label %sw.epilog

sw.bb57:                                          ; preds = %while.body, %while.body, %while.body
  %call58 = call i32 @opt_provider(i32 noundef %call31079) #5
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %if.end556, label %sw.epilog

sw.bb62:                                          ; preds = %while.body
  %call63 = call i8* @opt_arg() #5
  %call64 = call %struct.conf_st* @app_load_config_modules(i8* noundef %call63) #5
  %cmp65 = icmp eq %struct.conf_st* %call64, null
  br i1 %cmp65, label %if.end556, label %sw.epilog

sw.bb68:                                          ; preds = %while.body
  %call69 = call i8* @opt_arg() #5
  %call70 = call %struct.engine_st* @setup_engine_methods(i8* noundef %call69, i32 noundef -1, i32 noundef 0) #5
  br label %sw.epilog

sw.bb71:                                          ; preds = %while.body
  %call72 = call i8* @opt_arg() #5
  br label %sw.epilog

sw.bb73:                                          ; preds = %while.body
  %call74 = call i8* @opt_arg() #5
  br label %sw.epilog

sw.bb75:                                          ; preds = %while.body
  %call76 = call i8* @opt_arg() #5
  br label %sw.epilog

sw.bb77:                                          ; preds = %while.body
  %call78 = call i8* @opt_arg() #5
  br label %sw.epilog

sw.bb79:                                          ; preds = %while.body
  %cmp80.not = icmp eq i8* %signerfile.01051, null
  br i1 %cmp80.not, label %if.end102, label %if.then81

if.then81:                                        ; preds = %sw.bb79
  %cmp82 = icmp eq %struct.stack_st_OPENSSL_STRING* %sksigners.01039, null
  br i1 %cmp82, label %land.lhs.true, label %if.end86

land.lhs.true:                                    ; preds = %if.then81
  %call83 = call %struct.stack_st* @OPENSSL_sk_new_null() #5
  %10 = bitcast %struct.stack_st* %call83 to %struct.stack_st_OPENSSL_STRING*
  %cmp84 = icmp eq %struct.stack_st* %call83, null
  br i1 %cmp84, label %if.end556, label %if.end86

if.end86:                                         ; preds = %land.lhs.true, %if.then81
  %sksigners.2 = phi %struct.stack_st_OPENSSL_STRING* [ %10, %land.lhs.true ], [ %sksigners.01039, %if.then81 ]
  %call87 = call fastcc %struct.stack_st* @ossl_check_OPENSSL_STRING_sk_type(%struct.stack_st_OPENSSL_STRING* noundef %sksigners.2) #6
  %call89 = call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call87, i8* noundef nonnull %signerfile.01051) #5
  %cmp90 = icmp eq i8* %keyfile.01047, null
  %spec.select = select i1 %cmp90, i8* %signerfile.01051, i8* %keyfile.01047
  %cmp93 = icmp eq %struct.stack_st_OPENSSL_STRING* %skkeys.01040, null
  br i1 %cmp93, label %land.lhs.true94, label %if.end98

land.lhs.true94:                                  ; preds = %if.end86
  %call95 = call %struct.stack_st* @OPENSSL_sk_new_null() #5
  %11 = bitcast %struct.stack_st* %call95 to %struct.stack_st_OPENSSL_STRING*
  %cmp96 = icmp eq %struct.stack_st* %call95, null
  br i1 %cmp96, label %if.end556, label %if.end98

if.end98:                                         ; preds = %land.lhs.true94, %if.end86
  %skkeys.2 = phi %struct.stack_st_OPENSSL_STRING* [ %11, %land.lhs.true94 ], [ %skkeys.01040, %if.end86 ]
  %call99 = call fastcc %struct.stack_st* @ossl_check_OPENSSL_STRING_sk_type(%struct.stack_st_OPENSSL_STRING* noundef %skkeys.2) #6
  %call101 = call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call99, i8* noundef nonnull %spec.select) #5
  br label %if.end102

if.end102:                                        ; preds = %if.end98, %sw.bb79
  %sksigners.3 = phi %struct.stack_st_OPENSSL_STRING* [ %sksigners.2, %if.end98 ], [ %sksigners.01039, %sw.bb79 ]
  %skkeys.3 = phi %struct.stack_st_OPENSSL_STRING* [ %skkeys.2, %if.end98 ], [ %skkeys.01040, %sw.bb79 ]
  %keyfile.2 = phi i8* [ null, %if.end98 ], [ %keyfile.01047, %sw.bb79 ]
  %call103 = call i8* @opt_arg() #5
  br label %sw.epilog

sw.bb104:                                         ; preds = %while.body
  %call105 = call i8* @opt_arg() #5
  br label %sw.epilog

sw.bb106:                                         ; preds = %while.body
  %call107 = call i8* @opt_arg() #5
  br label %sw.epilog

sw.bb108:                                         ; preds = %while.body
  %call109 = call i8* @opt_unknown() #5
  br label %sw.epilog

sw.bb110:                                         ; preds = %while.body
  %cmp111.not = icmp eq i8* %keyfile.01047, null
  br i1 %cmp111.not, label %if.end135, label %if.then112

if.then112:                                       ; preds = %sw.bb110
  %cmp113 = icmp eq i8* %signerfile.01051, null
  br i1 %cmp113, label %if.then114, label %if.end116

if.then114:                                       ; preds = %if.then112
  %12 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call115 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %12, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.175, i64 0, i64 0), i8* noundef %call2) #5
  br label %opthelp

if.end116:                                        ; preds = %if.then112
  %cmp117 = icmp eq %struct.stack_st_OPENSSL_STRING* %sksigners.01039, null
  br i1 %cmp117, label %land.lhs.true118, label %if.end122

land.lhs.true118:                                 ; preds = %if.end116
  %call119 = call %struct.stack_st* @OPENSSL_sk_new_null() #5
  %13 = bitcast %struct.stack_st* %call119 to %struct.stack_st_OPENSSL_STRING*
  %cmp120 = icmp eq %struct.stack_st* %call119, null
  br i1 %cmp120, label %if.end556, label %if.end122

if.end122:                                        ; preds = %land.lhs.true118, %if.end116
  %sksigners.4 = phi %struct.stack_st_OPENSSL_STRING* [ %13, %land.lhs.true118 ], [ %sksigners.01039, %if.end116 ]
  %call123 = call fastcc %struct.stack_st* @ossl_check_OPENSSL_STRING_sk_type(%struct.stack_st_OPENSSL_STRING* noundef %sksigners.4) #6
  %call125 = call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call123, i8* noundef nonnull %signerfile.01051) #5
  %cmp126 = icmp eq %struct.stack_st_OPENSSL_STRING* %skkeys.01040, null
  br i1 %cmp126, label %land.lhs.true127, label %if.end131

land.lhs.true127:                                 ; preds = %if.end122
  %call128 = call %struct.stack_st* @OPENSSL_sk_new_null() #5
  %14 = bitcast %struct.stack_st* %call128 to %struct.stack_st_OPENSSL_STRING*
  %cmp129 = icmp eq %struct.stack_st* %call128, null
  br i1 %cmp129, label %if.end556, label %if.end131

if.end131:                                        ; preds = %land.lhs.true127, %if.end122
  %skkeys.4 = phi %struct.stack_st_OPENSSL_STRING* [ %14, %land.lhs.true127 ], [ %skkeys.01040, %if.end122 ]
  %call132 = call fastcc %struct.stack_st* @ossl_check_OPENSSL_STRING_sk_type(%struct.stack_st_OPENSSL_STRING* noundef %skkeys.4) #6
  %call134 = call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call132, i8* noundef nonnull %keyfile.01047) #5
  br label %if.end135

if.end135:                                        ; preds = %if.end131, %sw.bb110
  %sksigners.5 = phi %struct.stack_st_OPENSSL_STRING* [ %sksigners.4, %if.end131 ], [ %sksigners.01039, %sw.bb110 ]
  %skkeys.5 = phi %struct.stack_st_OPENSSL_STRING* [ %skkeys.4, %if.end131 ], [ %skkeys.01040, %sw.bb110 ]
  %signerfile.1 = phi i8* [ null, %if.end131 ], [ %signerfile.01051, %sw.bb110 ]
  %call136 = call i8* @opt_arg() #5
  br label %sw.epilog

sw.bb137:                                         ; preds = %while.body
  %call138 = call i8* @opt_arg() #5
  %call139 = call i32 @opt_format(i8* noundef %call138, i64 noundef 1982, i32* noundef nonnull %keyform) #5
  %tobool140.not = icmp eq i32 %call139, 0
  br i1 %tobool140.not, label %opthelp, label %sw.epilog

sw.bb143:                                         ; preds = %while.body
  %call144 = call i8* @opt_arg() #5
  br label %sw.epilog

sw.bb145:                                         ; preds = %while.body
  %call146 = call i8* @opt_arg() #5
  br label %sw.epilog

sw.bb147:                                         ; preds = %while.body
  %call148 = call i8* @opt_arg() #5
  br label %sw.epilog

sw.bb149:                                         ; preds = %while.body
  %call150 = call i8* @opt_arg() #5
  br label %sw.epilog

sw.bb151:                                         ; preds = %while.body
  br label %sw.epilog

sw.bb152:                                         ; preds = %while.body
  br label %sw.epilog

sw.bb153:                                         ; preds = %while.body
  br label %sw.epilog

sw.bb154:                                         ; preds = %while.body
  %call155 = call i8* @opt_arg() #5
  br label %sw.epilog

sw.bb157:                                         ; preds = %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body
  %call158 = call i32 @opt_verify(i32 noundef %call31079, %struct.X509_VERIFY_PARAM_st* noundef nonnull %call1) #5
  %tobool159.not = icmp eq i32 %call158, 0
  br i1 %tobool159.not, label %opthelp, label %if.end161

if.end161:                                        ; preds = %sw.bb157
  %inc = add nsw i32 %vpmtouched.01072, 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb137, %sw.bb62, %sw.bb57, %sw.bb51, %sw.bb14, %sw.bb7, %while.body, %if.end161, %sw.bb154, %sw.bb153, %sw.bb152, %sw.bb151, %sw.bb149, %sw.bb147, %sw.bb145, %sw.bb143, %if.end135, %sw.bb108, %sw.bb106, %sw.bb104, %if.end102, %sw.bb77, %sw.bb75, %sw.bb73, %sw.bb71, %sw.bb68, %sw.bb48, %sw.bb47, %sw.bb46, %sw.bb44, %sw.bb42, %sw.bb40, %sw.bb39, %sw.bb37, %sw.bb35, %sw.bb33, %sw.bb31, %sw.bb29, %sw.bb28, %sw.bb27, %sw.bb26, %sw.bb25, %sw.bb24, %sw.bb23, %sw.bb22, %sw.bb20, %sw.bb12
  %sksigners.6 = phi %struct.stack_st_OPENSSL_STRING* [ %sksigners.01039, %while.body ], [ %sksigners.01039, %sw.bb154 ], [ %sksigners.01039, %sw.bb153 ], [ %sksigners.01039, %sw.bb152 ], [ %sksigners.01039, %sw.bb151 ], [ %sksigners.01039, %sw.bb149 ], [ %sksigners.01039, %sw.bb147 ], [ %sksigners.01039, %sw.bb145 ], [ %sksigners.01039, %sw.bb143 ], [ %sksigners.01039, %sw.bb137 ], [ %sksigners.5, %if.end135 ], [ %sksigners.01039, %sw.bb108 ], [ %sksigners.01039, %sw.bb106 ], [ %sksigners.01039, %sw.bb104 ], [ %sksigners.3, %if.end102 ], [ %sksigners.01039, %sw.bb77 ], [ %sksigners.01039, %sw.bb75 ], [ %sksigners.01039, %sw.bb73 ], [ %sksigners.01039, %sw.bb71 ], [ %sksigners.01039, %sw.bb68 ], [ %sksigners.01039, %sw.bb62 ], [ %sksigners.01039, %sw.bb57 ], [ %sksigners.01039, %sw.bb51 ], [ %sksigners.01039, %if.end161 ], [ %sksigners.01039, %sw.bb48 ], [ %sksigners.01039, %sw.bb47 ], [ %sksigners.01039, %sw.bb46 ], [ %sksigners.01039, %sw.bb44 ], [ %sksigners.01039, %sw.bb42 ], [ %sksigners.01039, %sw.bb40 ], [ %sksigners.01039, %sw.bb39 ], [ %sksigners.01039, %sw.bb37 ], [ %sksigners.01039, %sw.bb35 ], [ %sksigners.01039, %sw.bb33 ], [ %sksigners.01039, %sw.bb31 ], [ %sksigners.01039, %sw.bb29 ], [ %sksigners.01039, %sw.bb28 ], [ %sksigners.01039, %sw.bb27 ], [ %sksigners.01039, %sw.bb26 ], [ %sksigners.01039, %sw.bb25 ], [ %sksigners.01039, %sw.bb24 ], [ %sksigners.01039, %sw.bb23 ], [ %sksigners.01039, %sw.bb22 ], [ %sksigners.01039, %sw.bb20 ], [ %sksigners.01039, %sw.bb14 ], [ %sksigners.01039, %sw.bb12 ], [ %sksigners.01039, %sw.bb7 ]
  %skkeys.6 = phi %struct.stack_st_OPENSSL_STRING* [ %skkeys.01040, %while.body ], [ %skkeys.01040, %sw.bb154 ], [ %skkeys.01040, %sw.bb153 ], [ %skkeys.01040, %sw.bb152 ], [ %skkeys.01040, %sw.bb151 ], [ %skkeys.01040, %sw.bb149 ], [ %skkeys.01040, %sw.bb147 ], [ %skkeys.01040, %sw.bb145 ], [ %skkeys.01040, %sw.bb143 ], [ %skkeys.01040, %sw.bb137 ], [ %skkeys.5, %if.end135 ], [ %skkeys.01040, %sw.bb108 ], [ %skkeys.01040, %sw.bb106 ], [ %skkeys.01040, %sw.bb104 ], [ %skkeys.3, %if.end102 ], [ %skkeys.01040, %sw.bb77 ], [ %skkeys.01040, %sw.bb75 ], [ %skkeys.01040, %sw.bb73 ], [ %skkeys.01040, %sw.bb71 ], [ %skkeys.01040, %sw.bb68 ], [ %skkeys.01040, %sw.bb62 ], [ %skkeys.01040, %sw.bb57 ], [ %skkeys.01040, %sw.bb51 ], [ %skkeys.01040, %if.end161 ], [ %skkeys.01040, %sw.bb48 ], [ %skkeys.01040, %sw.bb47 ], [ %skkeys.01040, %sw.bb46 ], [ %skkeys.01040, %sw.bb44 ], [ %skkeys.01040, %sw.bb42 ], [ %skkeys.01040, %sw.bb40 ], [ %skkeys.01040, %sw.bb39 ], [ %skkeys.01040, %sw.bb37 ], [ %skkeys.01040, %sw.bb35 ], [ %skkeys.01040, %sw.bb33 ], [ %skkeys.01040, %sw.bb31 ], [ %skkeys.01040, %sw.bb29 ], [ %skkeys.01040, %sw.bb28 ], [ %skkeys.01040, %sw.bb27 ], [ %skkeys.01040, %sw.bb26 ], [ %skkeys.01040, %sw.bb25 ], [ %skkeys.01040, %sw.bb24 ], [ %skkeys.01040, %sw.bb23 ], [ %skkeys.01040, %sw.bb22 ], [ %skkeys.01040, %sw.bb20 ], [ %skkeys.01040, %sw.bb14 ], [ %skkeys.01040, %sw.bb12 ], [ %skkeys.01040, %sw.bb7 ]
  %CAfile.1 = phi i8* [ %CAfile.01043, %while.body ], [ %CAfile.01043, %sw.bb154 ], [ %CAfile.01043, %sw.bb153 ], [ %CAfile.01043, %sw.bb152 ], [ %CAfile.01043, %sw.bb151 ], [ %CAfile.01043, %sw.bb149 ], [ %CAfile.01043, %sw.bb147 ], [ %call146, %sw.bb145 ], [ %CAfile.01043, %sw.bb143 ], [ %CAfile.01043, %sw.bb137 ], [ %CAfile.01043, %if.end135 ], [ %CAfile.01043, %sw.bb108 ], [ %CAfile.01043, %sw.bb106 ], [ %CAfile.01043, %sw.bb104 ], [ %CAfile.01043, %if.end102 ], [ %CAfile.01043, %sw.bb77 ], [ %CAfile.01043, %sw.bb75 ], [ %CAfile.01043, %sw.bb73 ], [ %CAfile.01043, %sw.bb71 ], [ %CAfile.01043, %sw.bb68 ], [ %CAfile.01043, %sw.bb62 ], [ %CAfile.01043, %sw.bb57 ], [ %CAfile.01043, %sw.bb51 ], [ %CAfile.01043, %if.end161 ], [ %CAfile.01043, %sw.bb48 ], [ %CAfile.01043, %sw.bb47 ], [ %CAfile.01043, %sw.bb46 ], [ %CAfile.01043, %sw.bb44 ], [ %CAfile.01043, %sw.bb42 ], [ %CAfile.01043, %sw.bb40 ], [ %CAfile.01043, %sw.bb39 ], [ %CAfile.01043, %sw.bb37 ], [ %CAfile.01043, %sw.bb35 ], [ %CAfile.01043, %sw.bb33 ], [ %CAfile.01043, %sw.bb31 ], [ %CAfile.01043, %sw.bb29 ], [ %CAfile.01043, %sw.bb28 ], [ %CAfile.01043, %sw.bb27 ], [ %CAfile.01043, %sw.bb26 ], [ %CAfile.01043, %sw.bb25 ], [ %CAfile.01043, %sw.bb24 ], [ %CAfile.01043, %sw.bb23 ], [ %CAfile.01043, %sw.bb22 ], [ %CAfile.01043, %sw.bb20 ], [ %CAfile.01043, %sw.bb14 ], [ %CAfile.01043, %sw.bb12 ], [ %CAfile.01043, %sw.bb7 ]
  %CApath.1 = phi i8* [ %CApath.01044, %while.body ], [ %CApath.01044, %sw.bb154 ], [ %CApath.01044, %sw.bb153 ], [ %CApath.01044, %sw.bb152 ], [ %CApath.01044, %sw.bb151 ], [ %CApath.01044, %sw.bb149 ], [ %call148, %sw.bb147 ], [ %CApath.01044, %sw.bb145 ], [ %CApath.01044, %sw.bb143 ], [ %CApath.01044, %sw.bb137 ], [ %CApath.01044, %if.end135 ], [ %CApath.01044, %sw.bb108 ], [ %CApath.01044, %sw.bb106 ], [ %CApath.01044, %sw.bb104 ], [ %CApath.01044, %if.end102 ], [ %CApath.01044, %sw.bb77 ], [ %CApath.01044, %sw.bb75 ], [ %CApath.01044, %sw.bb73 ], [ %CApath.01044, %sw.bb71 ], [ %CApath.01044, %sw.bb68 ], [ %CApath.01044, %sw.bb62 ], [ %CApath.01044, %sw.bb57 ], [ %CApath.01044, %sw.bb51 ], [ %CApath.01044, %if.end161 ], [ %CApath.01044, %sw.bb48 ], [ %CApath.01044, %sw.bb47 ], [ %CApath.01044, %sw.bb46 ], [ %CApath.01044, %sw.bb44 ], [ %CApath.01044, %sw.bb42 ], [ %CApath.01044, %sw.bb40 ], [ %CApath.01044, %sw.bb39 ], [ %CApath.01044, %sw.bb37 ], [ %CApath.01044, %sw.bb35 ], [ %CApath.01044, %sw.bb33 ], [ %CApath.01044, %sw.bb31 ], [ %CApath.01044, %sw.bb29 ], [ %CApath.01044, %sw.bb28 ], [ %CApath.01044, %sw.bb27 ], [ %CApath.01044, %sw.bb26 ], [ %CApath.01044, %sw.bb25 ], [ %CApath.01044, %sw.bb24 ], [ %CApath.01044, %sw.bb23 ], [ %CApath.01044, %sw.bb22 ], [ %CApath.01044, %sw.bb20 ], [ %CApath.01044, %sw.bb14 ], [ %CApath.01044, %sw.bb12 ], [ %CApath.01044, %sw.bb7 ]
  %CAstore.1 = phi i8* [ %CAstore.01045, %while.body ], [ %CAstore.01045, %sw.bb154 ], [ %CAstore.01045, %sw.bb153 ], [ %CAstore.01045, %sw.bb152 ], [ %CAstore.01045, %sw.bb151 ], [ %call150, %sw.bb149 ], [ %CAstore.01045, %sw.bb147 ], [ %CAstore.01045, %sw.bb145 ], [ %CAstore.01045, %sw.bb143 ], [ %CAstore.01045, %sw.bb137 ], [ %CAstore.01045, %if.end135 ], [ %CAstore.01045, %sw.bb108 ], [ %CAstore.01045, %sw.bb106 ], [ %CAstore.01045, %sw.bb104 ], [ %CAstore.01045, %if.end102 ], [ %CAstore.01045, %sw.bb77 ], [ %CAstore.01045, %sw.bb75 ], [ %CAstore.01045, %sw.bb73 ], [ %CAstore.01045, %sw.bb71 ], [ %CAstore.01045, %sw.bb68 ], [ %CAstore.01045, %sw.bb62 ], [ %CAstore.01045, %sw.bb57 ], [ %CAstore.01045, %sw.bb51 ], [ %CAstore.01045, %if.end161 ], [ %CAstore.01045, %sw.bb48 ], [ %CAstore.01045, %sw.bb47 ], [ %CAstore.01045, %sw.bb46 ], [ %CAstore.01045, %sw.bb44 ], [ %CAstore.01045, %sw.bb42 ], [ %CAstore.01045, %sw.bb40 ], [ %CAstore.01045, %sw.bb39 ], [ %CAstore.01045, %sw.bb37 ], [ %CAstore.01045, %sw.bb35 ], [ %CAstore.01045, %sw.bb33 ], [ %CAstore.01045, %sw.bb31 ], [ %CAstore.01045, %sw.bb29 ], [ %CAstore.01045, %sw.bb28 ], [ %CAstore.01045, %sw.bb27 ], [ %CAstore.01045, %sw.bb26 ], [ %CAstore.01045, %sw.bb25 ], [ %CAstore.01045, %sw.bb24 ], [ %CAstore.01045, %sw.bb23 ], [ %CAstore.01045, %sw.bb22 ], [ %CAstore.01045, %sw.bb20 ], [ %CAstore.01045, %sw.bb14 ], [ %CAstore.01045, %sw.bb12 ], [ %CAstore.01045, %sw.bb7 ]
  %certfile.1 = phi i8* [ %certfile.01046, %while.body ], [ %certfile.01046, %sw.bb154 ], [ %certfile.01046, %sw.bb153 ], [ %certfile.01046, %sw.bb152 ], [ %certfile.01046, %sw.bb151 ], [ %certfile.01046, %sw.bb149 ], [ %certfile.01046, %sw.bb147 ], [ %certfile.01046, %sw.bb145 ], [ %call144, %sw.bb143 ], [ %certfile.01046, %sw.bb137 ], [ %certfile.01046, %if.end135 ], [ %certfile.01046, %sw.bb108 ], [ %certfile.01046, %sw.bb106 ], [ %certfile.01046, %sw.bb104 ], [ %certfile.01046, %if.end102 ], [ %certfile.01046, %sw.bb77 ], [ %certfile.01046, %sw.bb75 ], [ %certfile.01046, %sw.bb73 ], [ %certfile.01046, %sw.bb71 ], [ %certfile.01046, %sw.bb68 ], [ %certfile.01046, %sw.bb62 ], [ %certfile.01046, %sw.bb57 ], [ %certfile.01046, %sw.bb51 ], [ %certfile.01046, %if.end161 ], [ %certfile.01046, %sw.bb48 ], [ %certfile.01046, %sw.bb47 ], [ %certfile.01046, %sw.bb46 ], [ %certfile.01046, %sw.bb44 ], [ %certfile.01046, %sw.bb42 ], [ %certfile.01046, %sw.bb40 ], [ %certfile.01046, %sw.bb39 ], [ %certfile.01046, %sw.bb37 ], [ %certfile.01046, %sw.bb35 ], [ %certfile.01046, %sw.bb33 ], [ %certfile.01046, %sw.bb31 ], [ %certfile.01046, %sw.bb29 ], [ %certfile.01046, %sw.bb28 ], [ %certfile.01046, %sw.bb27 ], [ %certfile.01046, %sw.bb26 ], [ %certfile.01046, %sw.bb25 ], [ %certfile.01046, %sw.bb24 ], [ %certfile.01046, %sw.bb23 ], [ %certfile.01046, %sw.bb22 ], [ %certfile.01046, %sw.bb20 ], [ %certfile.01046, %sw.bb14 ], [ %certfile.01046, %sw.bb12 ], [ %certfile.01046, %sw.bb7 ]
  %keyfile.3 = phi i8* [ %keyfile.01047, %while.body ], [ %keyfile.01047, %sw.bb154 ], [ %keyfile.01047, %sw.bb153 ], [ %keyfile.01047, %sw.bb152 ], [ %keyfile.01047, %sw.bb151 ], [ %keyfile.01047, %sw.bb149 ], [ %keyfile.01047, %sw.bb147 ], [ %keyfile.01047, %sw.bb145 ], [ %keyfile.01047, %sw.bb143 ], [ %keyfile.01047, %sw.bb137 ], [ %call136, %if.end135 ], [ %keyfile.01047, %sw.bb108 ], [ %keyfile.01047, %sw.bb106 ], [ %keyfile.01047, %sw.bb104 ], [ %keyfile.2, %if.end102 ], [ %keyfile.01047, %sw.bb77 ], [ %keyfile.01047, %sw.bb75 ], [ %keyfile.01047, %sw.bb73 ], [ %keyfile.01047, %sw.bb71 ], [ %keyfile.01047, %sw.bb68 ], [ %keyfile.01047, %sw.bb62 ], [ %keyfile.01047, %sw.bb57 ], [ %keyfile.01047, %sw.bb51 ], [ %keyfile.01047, %if.end161 ], [ %keyfile.01047, %sw.bb48 ], [ %keyfile.01047, %sw.bb47 ], [ %keyfile.01047, %sw.bb46 ], [ %keyfile.01047, %sw.bb44 ], [ %keyfile.01047, %sw.bb42 ], [ %keyfile.01047, %sw.bb40 ], [ %keyfile.01047, %sw.bb39 ], [ %keyfile.01047, %sw.bb37 ], [ %keyfile.01047, %sw.bb35 ], [ %keyfile.01047, %sw.bb33 ], [ %keyfile.01047, %sw.bb31 ], [ %keyfile.01047, %sw.bb29 ], [ %keyfile.01047, %sw.bb28 ], [ %keyfile.01047, %sw.bb27 ], [ %keyfile.01047, %sw.bb26 ], [ %keyfile.01047, %sw.bb25 ], [ %keyfile.01047, %sw.bb24 ], [ %keyfile.01047, %sw.bb23 ], [ %keyfile.01047, %sw.bb22 ], [ %keyfile.01047, %sw.bb20 ], [ %keyfile.01047, %sw.bb14 ], [ %keyfile.01047, %sw.bb12 ], [ %keyfile.01047, %sw.bb7 ]
  %contfile.1 = phi i8* [ %contfile.01048, %while.body ], [ %call155, %sw.bb154 ], [ %contfile.01048, %sw.bb153 ], [ %contfile.01048, %sw.bb152 ], [ %contfile.01048, %sw.bb151 ], [ %contfile.01048, %sw.bb149 ], [ %contfile.01048, %sw.bb147 ], [ %contfile.01048, %sw.bb145 ], [ %contfile.01048, %sw.bb143 ], [ %contfile.01048, %sw.bb137 ], [ %contfile.01048, %if.end135 ], [ %contfile.01048, %sw.bb108 ], [ %contfile.01048, %sw.bb106 ], [ %contfile.01048, %sw.bb104 ], [ %contfile.01048, %if.end102 ], [ %contfile.01048, %sw.bb77 ], [ %contfile.01048, %sw.bb75 ], [ %contfile.01048, %sw.bb73 ], [ %contfile.01048, %sw.bb71 ], [ %contfile.01048, %sw.bb68 ], [ %contfile.01048, %sw.bb62 ], [ %contfile.01048, %sw.bb57 ], [ %contfile.01048, %sw.bb51 ], [ %contfile.01048, %if.end161 ], [ %contfile.01048, %sw.bb48 ], [ %contfile.01048, %sw.bb47 ], [ %contfile.01048, %sw.bb46 ], [ %contfile.01048, %sw.bb44 ], [ %contfile.01048, %sw.bb42 ], [ %contfile.01048, %sw.bb40 ], [ %contfile.01048, %sw.bb39 ], [ %contfile.01048, %sw.bb37 ], [ %contfile.01048, %sw.bb35 ], [ %contfile.01048, %sw.bb33 ], [ %contfile.01048, %sw.bb31 ], [ %contfile.01048, %sw.bb29 ], [ %contfile.01048, %sw.bb28 ], [ %contfile.01048, %sw.bb27 ], [ %contfile.01048, %sw.bb26 ], [ %contfile.01048, %sw.bb25 ], [ %contfile.01048, %sw.bb24 ], [ %contfile.01048, %sw.bb23 ], [ %contfile.01048, %sw.bb22 ], [ %contfile.01048, %sw.bb20 ], [ %contfile.01048, %sw.bb14 ], [ %contfile.01048, %sw.bb12 ], [ %contfile.01048, %sw.bb7 ]
  %infile.1 = phi i8* [ %infile.01049, %while.body ], [ %infile.01049, %sw.bb154 ], [ %infile.01049, %sw.bb153 ], [ %infile.01049, %sw.bb152 ], [ %infile.01049, %sw.bb151 ], [ %infile.01049, %sw.bb149 ], [ %infile.01049, %sw.bb147 ], [ %infile.01049, %sw.bb145 ], [ %infile.01049, %sw.bb143 ], [ %infile.01049, %sw.bb137 ], [ %infile.01049, %if.end135 ], [ %infile.01049, %sw.bb108 ], [ %infile.01049, %sw.bb106 ], [ %infile.01049, %sw.bb104 ], [ %infile.01049, %if.end102 ], [ %infile.01049, %sw.bb77 ], [ %infile.01049, %sw.bb75 ], [ %infile.01049, %sw.bb73 ], [ %infile.01049, %sw.bb71 ], [ %infile.01049, %sw.bb68 ], [ %infile.01049, %sw.bb62 ], [ %infile.01049, %sw.bb57 ], [ %infile.01049, %sw.bb51 ], [ %infile.01049, %if.end161 ], [ %infile.01049, %sw.bb48 ], [ %infile.01049, %sw.bb47 ], [ %infile.01049, %sw.bb46 ], [ %infile.01049, %sw.bb44 ], [ %infile.01049, %sw.bb42 ], [ %infile.01049, %sw.bb40 ], [ %infile.01049, %sw.bb39 ], [ %infile.01049, %sw.bb37 ], [ %infile.01049, %sw.bb35 ], [ %infile.01049, %sw.bb33 ], [ %infile.01049, %sw.bb31 ], [ %infile.01049, %sw.bb29 ], [ %infile.01049, %sw.bb28 ], [ %infile.01049, %sw.bb27 ], [ %infile.01049, %sw.bb26 ], [ %infile.01049, %sw.bb25 ], [ %infile.01049, %sw.bb24 ], [ %infile.01049, %sw.bb23 ], [ %infile.01049, %sw.bb22 ], [ %infile.01049, %sw.bb20 ], [ %infile.01049, %sw.bb14 ], [ %call13, %sw.bb12 ], [ %infile.01049, %sw.bb7 ]
  %outfile.1 = phi i8* [ %outfile.01050, %while.body ], [ %outfile.01050, %sw.bb154 ], [ %outfile.01050, %sw.bb153 ], [ %outfile.01050, %sw.bb152 ], [ %outfile.01050, %sw.bb151 ], [ %outfile.01050, %sw.bb149 ], [ %outfile.01050, %sw.bb147 ], [ %outfile.01050, %sw.bb145 ], [ %outfile.01050, %sw.bb143 ], [ %outfile.01050, %sw.bb137 ], [ %outfile.01050, %if.end135 ], [ %outfile.01050, %sw.bb108 ], [ %outfile.01050, %sw.bb106 ], [ %outfile.01050, %sw.bb104 ], [ %outfile.01050, %if.end102 ], [ %outfile.01050, %sw.bb77 ], [ %outfile.01050, %sw.bb75 ], [ %outfile.01050, %sw.bb73 ], [ %outfile.01050, %sw.bb71 ], [ %outfile.01050, %sw.bb68 ], [ %outfile.01050, %sw.bb62 ], [ %outfile.01050, %sw.bb57 ], [ %outfile.01050, %sw.bb51 ], [ %outfile.01050, %if.end161 ], [ %outfile.01050, %sw.bb48 ], [ %outfile.01050, %sw.bb47 ], [ %outfile.01050, %sw.bb46 ], [ %outfile.01050, %sw.bb44 ], [ %outfile.01050, %sw.bb42 ], [ %outfile.01050, %sw.bb40 ], [ %outfile.01050, %sw.bb39 ], [ %outfile.01050, %sw.bb37 ], [ %outfile.01050, %sw.bb35 ], [ %outfile.01050, %sw.bb33 ], [ %outfile.01050, %sw.bb31 ], [ %outfile.01050, %sw.bb29 ], [ %outfile.01050, %sw.bb28 ], [ %outfile.01050, %sw.bb27 ], [ %outfile.01050, %sw.bb26 ], [ %outfile.01050, %sw.bb25 ], [ %outfile.01050, %sw.bb24 ], [ %outfile.01050, %sw.bb23 ], [ %outfile.01050, %sw.bb22 ], [ %call21, %sw.bb20 ], [ %outfile.01050, %sw.bb14 ], [ %outfile.01050, %sw.bb12 ], [ %outfile.01050, %sw.bb7 ]
  %signerfile.2 = phi i8* [ %signerfile.01051, %while.body ], [ %signerfile.01051, %sw.bb154 ], [ %signerfile.01051, %sw.bb153 ], [ %signerfile.01051, %sw.bb152 ], [ %signerfile.01051, %sw.bb151 ], [ %signerfile.01051, %sw.bb149 ], [ %signerfile.01051, %sw.bb147 ], [ %signerfile.01051, %sw.bb145 ], [ %signerfile.01051, %sw.bb143 ], [ %signerfile.01051, %sw.bb137 ], [ %signerfile.1, %if.end135 ], [ %signerfile.01051, %sw.bb108 ], [ %signerfile.01051, %sw.bb106 ], [ %signerfile.01051, %sw.bb104 ], [ %call103, %if.end102 ], [ %signerfile.01051, %sw.bb77 ], [ %signerfile.01051, %sw.bb75 ], [ %signerfile.01051, %sw.bb73 ], [ %signerfile.01051, %sw.bb71 ], [ %signerfile.01051, %sw.bb68 ], [ %signerfile.01051, %sw.bb62 ], [ %signerfile.01051, %sw.bb57 ], [ %signerfile.01051, %sw.bb51 ], [ %signerfile.01051, %if.end161 ], [ %signerfile.01051, %sw.bb48 ], [ %signerfile.01051, %sw.bb47 ], [ %signerfile.01051, %sw.bb46 ], [ %signerfile.01051, %sw.bb44 ], [ %signerfile.01051, %sw.bb42 ], [ %signerfile.01051, %sw.bb40 ], [ %signerfile.01051, %sw.bb39 ], [ %signerfile.01051, %sw.bb37 ], [ %signerfile.01051, %sw.bb35 ], [ %signerfile.01051, %sw.bb33 ], [ %signerfile.01051, %sw.bb31 ], [ %signerfile.01051, %sw.bb29 ], [ %signerfile.01051, %sw.bb28 ], [ %signerfile.01051, %sw.bb27 ], [ %signerfile.01051, %sw.bb26 ], [ %signerfile.01051, %sw.bb25 ], [ %signerfile.01051, %sw.bb24 ], [ %signerfile.01051, %sw.bb23 ], [ %signerfile.01051, %sw.bb22 ], [ %signerfile.01051, %sw.bb20 ], [ %signerfile.01051, %sw.bb14 ], [ %signerfile.01051, %sw.bb12 ], [ %signerfile.01051, %sw.bb7 ]
  %recipfile.1 = phi i8* [ %recipfile.01052, %while.body ], [ %recipfile.01052, %sw.bb154 ], [ %recipfile.01052, %sw.bb153 ], [ %recipfile.01052, %sw.bb152 ], [ %recipfile.01052, %sw.bb151 ], [ %recipfile.01052, %sw.bb149 ], [ %recipfile.01052, %sw.bb147 ], [ %recipfile.01052, %sw.bb145 ], [ %recipfile.01052, %sw.bb143 ], [ %recipfile.01052, %sw.bb137 ], [ %recipfile.01052, %if.end135 ], [ %recipfile.01052, %sw.bb108 ], [ %recipfile.01052, %sw.bb106 ], [ %call105, %sw.bb104 ], [ %recipfile.01052, %if.end102 ], [ %recipfile.01052, %sw.bb77 ], [ %recipfile.01052, %sw.bb75 ], [ %recipfile.01052, %sw.bb73 ], [ %recipfile.01052, %sw.bb71 ], [ %recipfile.01052, %sw.bb68 ], [ %recipfile.01052, %sw.bb62 ], [ %recipfile.01052, %sw.bb57 ], [ %recipfile.01052, %sw.bb51 ], [ %recipfile.01052, %if.end161 ], [ %recipfile.01052, %sw.bb48 ], [ %recipfile.01052, %sw.bb47 ], [ %recipfile.01052, %sw.bb46 ], [ %recipfile.01052, %sw.bb44 ], [ %recipfile.01052, %sw.bb42 ], [ %recipfile.01052, %sw.bb40 ], [ %recipfile.01052, %sw.bb39 ], [ %recipfile.01052, %sw.bb37 ], [ %recipfile.01052, %sw.bb35 ], [ %recipfile.01052, %sw.bb33 ], [ %recipfile.01052, %sw.bb31 ], [ %recipfile.01052, %sw.bb29 ], [ %recipfile.01052, %sw.bb28 ], [ %recipfile.01052, %sw.bb27 ], [ %recipfile.01052, %sw.bb26 ], [ %recipfile.01052, %sw.bb25 ], [ %recipfile.01052, %sw.bb24 ], [ %recipfile.01052, %sw.bb23 ], [ %recipfile.01052, %sw.bb22 ], [ %recipfile.01052, %sw.bb20 ], [ %recipfile.01052, %sw.bb14 ], [ %recipfile.01052, %sw.bb12 ], [ %recipfile.01052, %sw.bb7 ]
  %passinarg.1 = phi i8* [ %passinarg.01053, %while.body ], [ %passinarg.01053, %sw.bb154 ], [ %passinarg.01053, %sw.bb153 ], [ %passinarg.01053, %sw.bb152 ], [ %passinarg.01053, %sw.bb151 ], [ %passinarg.01053, %sw.bb149 ], [ %passinarg.01053, %sw.bb147 ], [ %passinarg.01053, %sw.bb145 ], [ %passinarg.01053, %sw.bb143 ], [ %passinarg.01053, %sw.bb137 ], [ %passinarg.01053, %if.end135 ], [ %passinarg.01053, %sw.bb108 ], [ %passinarg.01053, %sw.bb106 ], [ %passinarg.01053, %sw.bb104 ], [ %passinarg.01053, %if.end102 ], [ %passinarg.01053, %sw.bb77 ], [ %passinarg.01053, %sw.bb75 ], [ %passinarg.01053, %sw.bb73 ], [ %call72, %sw.bb71 ], [ %passinarg.01053, %sw.bb68 ], [ %passinarg.01053, %sw.bb62 ], [ %passinarg.01053, %sw.bb57 ], [ %passinarg.01053, %sw.bb51 ], [ %passinarg.01053, %if.end161 ], [ %passinarg.01053, %sw.bb48 ], [ %passinarg.01053, %sw.bb47 ], [ %passinarg.01053, %sw.bb46 ], [ %passinarg.01053, %sw.bb44 ], [ %passinarg.01053, %sw.bb42 ], [ %passinarg.01053, %sw.bb40 ], [ %passinarg.01053, %sw.bb39 ], [ %passinarg.01053, %sw.bb37 ], [ %passinarg.01053, %sw.bb35 ], [ %passinarg.01053, %sw.bb33 ], [ %passinarg.01053, %sw.bb31 ], [ %passinarg.01053, %sw.bb29 ], [ %passinarg.01053, %sw.bb28 ], [ %passinarg.01053, %sw.bb27 ], [ %passinarg.01053, %sw.bb26 ], [ %passinarg.01053, %sw.bb25 ], [ %passinarg.01053, %sw.bb24 ], [ %passinarg.01053, %sw.bb23 ], [ %passinarg.01053, %sw.bb22 ], [ %passinarg.01053, %sw.bb20 ], [ %passinarg.01053, %sw.bb14 ], [ %passinarg.01053, %sw.bb12 ], [ %passinarg.01053, %sw.bb7 ]
  %to.1 = phi i8* [ %to.01054, %while.body ], [ %to.01054, %sw.bb154 ], [ %to.01054, %sw.bb153 ], [ %to.01054, %sw.bb152 ], [ %to.01054, %sw.bb151 ], [ %to.01054, %sw.bb149 ], [ %to.01054, %sw.bb147 ], [ %to.01054, %sw.bb145 ], [ %to.01054, %sw.bb143 ], [ %to.01054, %sw.bb137 ], [ %to.01054, %if.end135 ], [ %to.01054, %sw.bb108 ], [ %to.01054, %sw.bb106 ], [ %to.01054, %sw.bb104 ], [ %to.01054, %if.end102 ], [ %to.01054, %sw.bb77 ], [ %to.01054, %sw.bb75 ], [ %call74, %sw.bb73 ], [ %to.01054, %sw.bb71 ], [ %to.01054, %sw.bb68 ], [ %to.01054, %sw.bb62 ], [ %to.01054, %sw.bb57 ], [ %to.01054, %sw.bb51 ], [ %to.01054, %if.end161 ], [ %to.01054, %sw.bb48 ], [ %to.01054, %sw.bb47 ], [ %to.01054, %sw.bb46 ], [ %to.01054, %sw.bb44 ], [ %to.01054, %sw.bb42 ], [ %to.01054, %sw.bb40 ], [ %to.01054, %sw.bb39 ], [ %to.01054, %sw.bb37 ], [ %to.01054, %sw.bb35 ], [ %to.01054, %sw.bb33 ], [ %to.01054, %sw.bb31 ], [ %to.01054, %sw.bb29 ], [ %to.01054, %sw.bb28 ], [ %to.01054, %sw.bb27 ], [ %to.01054, %sw.bb26 ], [ %to.01054, %sw.bb25 ], [ %to.01054, %sw.bb24 ], [ %to.01054, %sw.bb23 ], [ %to.01054, %sw.bb22 ], [ %to.01054, %sw.bb20 ], [ %to.01054, %sw.bb14 ], [ %to.01054, %sw.bb12 ], [ %to.01054, %sw.bb7 ]
  %from.1 = phi i8* [ %from.01055, %while.body ], [ %from.01055, %sw.bb154 ], [ %from.01055, %sw.bb153 ], [ %from.01055, %sw.bb152 ], [ %from.01055, %sw.bb151 ], [ %from.01055, %sw.bb149 ], [ %from.01055, %sw.bb147 ], [ %from.01055, %sw.bb145 ], [ %from.01055, %sw.bb143 ], [ %from.01055, %sw.bb137 ], [ %from.01055, %if.end135 ], [ %from.01055, %sw.bb108 ], [ %from.01055, %sw.bb106 ], [ %from.01055, %sw.bb104 ], [ %from.01055, %if.end102 ], [ %from.01055, %sw.bb77 ], [ %call76, %sw.bb75 ], [ %from.01055, %sw.bb73 ], [ %from.01055, %sw.bb71 ], [ %from.01055, %sw.bb68 ], [ %from.01055, %sw.bb62 ], [ %from.01055, %sw.bb57 ], [ %from.01055, %sw.bb51 ], [ %from.01055, %if.end161 ], [ %from.01055, %sw.bb48 ], [ %from.01055, %sw.bb47 ], [ %from.01055, %sw.bb46 ], [ %from.01055, %sw.bb44 ], [ %from.01055, %sw.bb42 ], [ %from.01055, %sw.bb40 ], [ %from.01055, %sw.bb39 ], [ %from.01055, %sw.bb37 ], [ %from.01055, %sw.bb35 ], [ %from.01055, %sw.bb33 ], [ %from.01055, %sw.bb31 ], [ %from.01055, %sw.bb29 ], [ %from.01055, %sw.bb28 ], [ %from.01055, %sw.bb27 ], [ %from.01055, %sw.bb26 ], [ %from.01055, %sw.bb25 ], [ %from.01055, %sw.bb24 ], [ %from.01055, %sw.bb23 ], [ %from.01055, %sw.bb22 ], [ %from.01055, %sw.bb20 ], [ %from.01055, %sw.bb14 ], [ %from.01055, %sw.bb12 ], [ %from.01055, %sw.bb7 ]
  %subject.1 = phi i8* [ %subject.01056, %while.body ], [ %subject.01056, %sw.bb154 ], [ %subject.01056, %sw.bb153 ], [ %subject.01056, %sw.bb152 ], [ %subject.01056, %sw.bb151 ], [ %subject.01056, %sw.bb149 ], [ %subject.01056, %sw.bb147 ], [ %subject.01056, %sw.bb145 ], [ %subject.01056, %sw.bb143 ], [ %subject.01056, %sw.bb137 ], [ %subject.01056, %if.end135 ], [ %subject.01056, %sw.bb108 ], [ %subject.01056, %sw.bb106 ], [ %subject.01056, %sw.bb104 ], [ %subject.01056, %if.end102 ], [ %call78, %sw.bb77 ], [ %subject.01056, %sw.bb75 ], [ %subject.01056, %sw.bb73 ], [ %subject.01056, %sw.bb71 ], [ %subject.01056, %sw.bb68 ], [ %subject.01056, %sw.bb62 ], [ %subject.01056, %sw.bb57 ], [ %subject.01056, %sw.bb51 ], [ %subject.01056, %if.end161 ], [ %subject.01056, %sw.bb48 ], [ %subject.01056, %sw.bb47 ], [ %subject.01056, %sw.bb46 ], [ %subject.01056, %sw.bb44 ], [ %subject.01056, %sw.bb42 ], [ %subject.01056, %sw.bb40 ], [ %subject.01056, %sw.bb39 ], [ %subject.01056, %sw.bb37 ], [ %subject.01056, %sw.bb35 ], [ %subject.01056, %sw.bb33 ], [ %subject.01056, %sw.bb31 ], [ %subject.01056, %sw.bb29 ], [ %subject.01056, %sw.bb28 ], [ %subject.01056, %sw.bb27 ], [ %subject.01056, %sw.bb26 ], [ %subject.01056, %sw.bb25 ], [ %subject.01056, %sw.bb24 ], [ %subject.01056, %sw.bb23 ], [ %subject.01056, %sw.bb22 ], [ %subject.01056, %sw.bb20 ], [ %subject.01056, %sw.bb14 ], [ %subject.01056, %sw.bb12 ], [ %subject.01056, %sw.bb7 ]
  %digestname.1 = phi i8* [ %digestname.01057, %while.body ], [ %digestname.01057, %sw.bb154 ], [ %digestname.01057, %sw.bb153 ], [ %digestname.01057, %sw.bb152 ], [ %digestname.01057, %sw.bb151 ], [ %digestname.01057, %sw.bb149 ], [ %digestname.01057, %sw.bb147 ], [ %digestname.01057, %sw.bb145 ], [ %digestname.01057, %sw.bb143 ], [ %digestname.01057, %sw.bb137 ], [ %digestname.01057, %if.end135 ], [ %digestname.01057, %sw.bb108 ], [ %call107, %sw.bb106 ], [ %digestname.01057, %sw.bb104 ], [ %digestname.01057, %if.end102 ], [ %digestname.01057, %sw.bb77 ], [ %digestname.01057, %sw.bb75 ], [ %digestname.01057, %sw.bb73 ], [ %digestname.01057, %sw.bb71 ], [ %digestname.01057, %sw.bb68 ], [ %digestname.01057, %sw.bb62 ], [ %digestname.01057, %sw.bb57 ], [ %digestname.01057, %sw.bb51 ], [ %digestname.01057, %if.end161 ], [ %digestname.01057, %sw.bb48 ], [ %digestname.01057, %sw.bb47 ], [ %digestname.01057, %sw.bb46 ], [ %digestname.01057, %sw.bb44 ], [ %digestname.01057, %sw.bb42 ], [ %digestname.01057, %sw.bb40 ], [ %digestname.01057, %sw.bb39 ], [ %digestname.01057, %sw.bb37 ], [ %digestname.01057, %sw.bb35 ], [ %digestname.01057, %sw.bb33 ], [ %digestname.01057, %sw.bb31 ], [ %digestname.01057, %sw.bb29 ], [ %digestname.01057, %sw.bb28 ], [ %digestname.01057, %sw.bb27 ], [ %digestname.01057, %sw.bb26 ], [ %digestname.01057, %sw.bb25 ], [ %digestname.01057, %sw.bb24 ], [ %digestname.01057, %sw.bb23 ], [ %digestname.01057, %sw.bb22 ], [ %digestname.01057, %sw.bb20 ], [ %digestname.01057, %sw.bb14 ], [ %digestname.01057, %sw.bb12 ], [ %digestname.01057, %sw.bb7 ]
  %ciphername.1 = phi i8* [ %ciphername.01058, %while.body ], [ %ciphername.01058, %sw.bb154 ], [ %ciphername.01058, %sw.bb153 ], [ %ciphername.01058, %sw.bb152 ], [ %ciphername.01058, %sw.bb151 ], [ %ciphername.01058, %sw.bb149 ], [ %ciphername.01058, %sw.bb147 ], [ %ciphername.01058, %sw.bb145 ], [ %ciphername.01058, %sw.bb143 ], [ %ciphername.01058, %sw.bb137 ], [ %ciphername.01058, %if.end135 ], [ %call109, %sw.bb108 ], [ %ciphername.01058, %sw.bb106 ], [ %ciphername.01058, %sw.bb104 ], [ %ciphername.01058, %if.end102 ], [ %ciphername.01058, %sw.bb77 ], [ %ciphername.01058, %sw.bb75 ], [ %ciphername.01058, %sw.bb73 ], [ %ciphername.01058, %sw.bb71 ], [ %ciphername.01058, %sw.bb68 ], [ %ciphername.01058, %sw.bb62 ], [ %ciphername.01058, %sw.bb57 ], [ %ciphername.01058, %sw.bb51 ], [ %ciphername.01058, %if.end161 ], [ %ciphername.01058, %sw.bb48 ], [ %ciphername.01058, %sw.bb47 ], [ %ciphername.01058, %sw.bb46 ], [ %ciphername.01058, %sw.bb44 ], [ %ciphername.01058, %sw.bb42 ], [ %ciphername.01058, %sw.bb40 ], [ %ciphername.01058, %sw.bb39 ], [ %ciphername.01058, %sw.bb37 ], [ %ciphername.01058, %sw.bb35 ], [ %ciphername.01058, %sw.bb33 ], [ %ciphername.01058, %sw.bb31 ], [ %ciphername.01058, %sw.bb29 ], [ %ciphername.01058, %sw.bb28 ], [ %ciphername.01058, %sw.bb27 ], [ %ciphername.01058, %sw.bb26 ], [ %ciphername.01058, %sw.bb25 ], [ %ciphername.01058, %sw.bb24 ], [ %ciphername.01058, %sw.bb23 ], [ %ciphername.01058, %sw.bb22 ], [ %ciphername.01058, %sw.bb20 ], [ %ciphername.01058, %sw.bb14 ], [ %ciphername.01058, %sw.bb12 ], [ %ciphername.01058, %sw.bb7 ]
  %conf.1 = phi %struct.conf_st* [ %conf.01059, %while.body ], [ %conf.01059, %sw.bb154 ], [ %conf.01059, %sw.bb153 ], [ %conf.01059, %sw.bb152 ], [ %conf.01059, %sw.bb151 ], [ %conf.01059, %sw.bb149 ], [ %conf.01059, %sw.bb147 ], [ %conf.01059, %sw.bb145 ], [ %conf.01059, %sw.bb143 ], [ %conf.01059, %sw.bb137 ], [ %conf.01059, %if.end135 ], [ %conf.01059, %sw.bb108 ], [ %conf.01059, %sw.bb106 ], [ %conf.01059, %sw.bb104 ], [ %conf.01059, %if.end102 ], [ %conf.01059, %sw.bb77 ], [ %conf.01059, %sw.bb75 ], [ %conf.01059, %sw.bb73 ], [ %conf.01059, %sw.bb71 ], [ %conf.01059, %sw.bb68 ], [ %call64, %sw.bb62 ], [ %conf.01059, %sw.bb57 ], [ %conf.01059, %sw.bb51 ], [ %conf.01059, %if.end161 ], [ %conf.01059, %sw.bb48 ], [ %conf.01059, %sw.bb47 ], [ %conf.01059, %sw.bb46 ], [ %conf.01059, %sw.bb44 ], [ %conf.01059, %sw.bb42 ], [ %conf.01059, %sw.bb40 ], [ %conf.01059, %sw.bb39 ], [ %conf.01059, %sw.bb37 ], [ %conf.01059, %sw.bb35 ], [ %conf.01059, %sw.bb33 ], [ %conf.01059, %sw.bb31 ], [ %conf.01059, %sw.bb29 ], [ %conf.01059, %sw.bb28 ], [ %conf.01059, %sw.bb27 ], [ %conf.01059, %sw.bb26 ], [ %conf.01059, %sw.bb25 ], [ %conf.01059, %sw.bb24 ], [ %conf.01059, %sw.bb23 ], [ %conf.01059, %sw.bb22 ], [ %conf.01059, %sw.bb20 ], [ %conf.01059, %sw.bb14 ], [ %conf.01059, %sw.bb12 ], [ %conf.01059, %sw.bb7 ]
  %noCApath.1 = phi i32 [ %noCApath.01066, %while.body ], [ %noCApath.01066, %sw.bb154 ], [ %noCApath.01066, %sw.bb153 ], [ 1, %sw.bb152 ], [ %noCApath.01066, %sw.bb151 ], [ %noCApath.01066, %sw.bb149 ], [ %noCApath.01066, %sw.bb147 ], [ %noCApath.01066, %sw.bb145 ], [ %noCApath.01066, %sw.bb143 ], [ %noCApath.01066, %sw.bb137 ], [ %noCApath.01066, %if.end135 ], [ %noCApath.01066, %sw.bb108 ], [ %noCApath.01066, %sw.bb106 ], [ %noCApath.01066, %sw.bb104 ], [ %noCApath.01066, %if.end102 ], [ %noCApath.01066, %sw.bb77 ], [ %noCApath.01066, %sw.bb75 ], [ %noCApath.01066, %sw.bb73 ], [ %noCApath.01066, %sw.bb71 ], [ %noCApath.01066, %sw.bb68 ], [ %noCApath.01066, %sw.bb62 ], [ %noCApath.01066, %sw.bb57 ], [ %noCApath.01066, %sw.bb51 ], [ %noCApath.01066, %if.end161 ], [ %noCApath.01066, %sw.bb48 ], [ %noCApath.01066, %sw.bb47 ], [ %noCApath.01066, %sw.bb46 ], [ %noCApath.01066, %sw.bb44 ], [ %noCApath.01066, %sw.bb42 ], [ %noCApath.01066, %sw.bb40 ], [ %noCApath.01066, %sw.bb39 ], [ %noCApath.01066, %sw.bb37 ], [ %noCApath.01066, %sw.bb35 ], [ %noCApath.01066, %sw.bb33 ], [ %noCApath.01066, %sw.bb31 ], [ %noCApath.01066, %sw.bb29 ], [ %noCApath.01066, %sw.bb28 ], [ %noCApath.01066, %sw.bb27 ], [ %noCApath.01066, %sw.bb26 ], [ %noCApath.01066, %sw.bb25 ], [ %noCApath.01066, %sw.bb24 ], [ %noCApath.01066, %sw.bb23 ], [ %noCApath.01066, %sw.bb22 ], [ %noCApath.01066, %sw.bb20 ], [ %noCApath.01066, %sw.bb14 ], [ %noCApath.01066, %sw.bb12 ], [ %noCApath.01066, %sw.bb7 ]
  %noCAfile.1 = phi i32 [ %noCAfile.01067, %while.body ], [ %noCAfile.01067, %sw.bb154 ], [ %noCAfile.01067, %sw.bb153 ], [ %noCAfile.01067, %sw.bb152 ], [ 1, %sw.bb151 ], [ %noCAfile.01067, %sw.bb149 ], [ %noCAfile.01067, %sw.bb147 ], [ %noCAfile.01067, %sw.bb145 ], [ %noCAfile.01067, %sw.bb143 ], [ %noCAfile.01067, %sw.bb137 ], [ %noCAfile.01067, %if.end135 ], [ %noCAfile.01067, %sw.bb108 ], [ %noCAfile.01067, %sw.bb106 ], [ %noCAfile.01067, %sw.bb104 ], [ %noCAfile.01067, %if.end102 ], [ %noCAfile.01067, %sw.bb77 ], [ %noCAfile.01067, %sw.bb75 ], [ %noCAfile.01067, %sw.bb73 ], [ %noCAfile.01067, %sw.bb71 ], [ %noCAfile.01067, %sw.bb68 ], [ %noCAfile.01067, %sw.bb62 ], [ %noCAfile.01067, %sw.bb57 ], [ %noCAfile.01067, %sw.bb51 ], [ %noCAfile.01067, %if.end161 ], [ %noCAfile.01067, %sw.bb48 ], [ %noCAfile.01067, %sw.bb47 ], [ %noCAfile.01067, %sw.bb46 ], [ %noCAfile.01067, %sw.bb44 ], [ %noCAfile.01067, %sw.bb42 ], [ %noCAfile.01067, %sw.bb40 ], [ %noCAfile.01067, %sw.bb39 ], [ %noCAfile.01067, %sw.bb37 ], [ %noCAfile.01067, %sw.bb35 ], [ %noCAfile.01067, %sw.bb33 ], [ %noCAfile.01067, %sw.bb31 ], [ %noCAfile.01067, %sw.bb29 ], [ %noCAfile.01067, %sw.bb28 ], [ %noCAfile.01067, %sw.bb27 ], [ %noCAfile.01067, %sw.bb26 ], [ %noCAfile.01067, %sw.bb25 ], [ %noCAfile.01067, %sw.bb24 ], [ %noCAfile.01067, %sw.bb23 ], [ %noCAfile.01067, %sw.bb22 ], [ %noCAfile.01067, %sw.bb20 ], [ %noCAfile.01067, %sw.bb14 ], [ %noCAfile.01067, %sw.bb12 ], [ %noCAfile.01067, %sw.bb7 ]
  %noCAstore.1 = phi i32 [ %noCAstore.01068, %while.body ], [ %noCAstore.01068, %sw.bb154 ], [ 1, %sw.bb153 ], [ %noCAstore.01068, %sw.bb152 ], [ %noCAstore.01068, %sw.bb151 ], [ %noCAstore.01068, %sw.bb149 ], [ %noCAstore.01068, %sw.bb147 ], [ %noCAstore.01068, %sw.bb145 ], [ %noCAstore.01068, %sw.bb143 ], [ %noCAstore.01068, %sw.bb137 ], [ %noCAstore.01068, %if.end135 ], [ %noCAstore.01068, %sw.bb108 ], [ %noCAstore.01068, %sw.bb106 ], [ %noCAstore.01068, %sw.bb104 ], [ %noCAstore.01068, %if.end102 ], [ %noCAstore.01068, %sw.bb77 ], [ %noCAstore.01068, %sw.bb75 ], [ %noCAstore.01068, %sw.bb73 ], [ %noCAstore.01068, %sw.bb71 ], [ %noCAstore.01068, %sw.bb68 ], [ %noCAstore.01068, %sw.bb62 ], [ %noCAstore.01068, %sw.bb57 ], [ %noCAstore.01068, %sw.bb51 ], [ %noCAstore.01068, %if.end161 ], [ %noCAstore.01068, %sw.bb48 ], [ %noCAstore.01068, %sw.bb47 ], [ %noCAstore.01068, %sw.bb46 ], [ %noCAstore.01068, %sw.bb44 ], [ %noCAstore.01068, %sw.bb42 ], [ %noCAstore.01068, %sw.bb40 ], [ %noCAstore.01068, %sw.bb39 ], [ %noCAstore.01068, %sw.bb37 ], [ %noCAstore.01068, %sw.bb35 ], [ %noCAstore.01068, %sw.bb33 ], [ %noCAstore.01068, %sw.bb31 ], [ %noCAstore.01068, %sw.bb29 ], [ %noCAstore.01068, %sw.bb28 ], [ %noCAstore.01068, %sw.bb27 ], [ %noCAstore.01068, %sw.bb26 ], [ %noCAstore.01068, %sw.bb25 ], [ %noCAstore.01068, %sw.bb24 ], [ %noCAstore.01068, %sw.bb23 ], [ %noCAstore.01068, %sw.bb22 ], [ %noCAstore.01068, %sw.bb20 ], [ %noCAstore.01068, %sw.bb14 ], [ %noCAstore.01068, %sw.bb12 ], [ %noCAstore.01068, %sw.bb7 ]
  %flags.1 = phi i32 [ %flags.01069, %while.body ], [ %flags.01069, %sw.bb154 ], [ %flags.01069, %sw.bb153 ], [ %flags.01069, %sw.bb152 ], [ %flags.01069, %sw.bb151 ], [ %flags.01069, %sw.bb149 ], [ %flags.01069, %sw.bb147 ], [ %flags.01069, %sw.bb145 ], [ %flags.01069, %sw.bb143 ], [ %flags.01069, %sw.bb137 ], [ %flags.01069, %if.end135 ], [ %flags.01069, %sw.bb108 ], [ %flags.01069, %sw.bb106 ], [ %flags.01069, %sw.bb104 ], [ %flags.01069, %if.end102 ], [ %flags.01069, %sw.bb77 ], [ %flags.01069, %sw.bb75 ], [ %flags.01069, %sw.bb73 ], [ %flags.01069, %sw.bb71 ], [ %flags.01069, %sw.bb68 ], [ %flags.01069, %sw.bb62 ], [ %flags.01069, %sw.bb57 ], [ %flags.01069, %sw.bb51 ], [ %flags.01069, %if.end161 ], [ %or49, %sw.bb48 ], [ %flags.01069, %sw.bb47 ], [ %flags.01069, %sw.bb46 ], [ %or45, %sw.bb44 ], [ %or43, %sw.bb42 ], [ %or41, %sw.bb40 ], [ %and, %sw.bb39 ], [ %or38, %sw.bb37 ], [ %or36, %sw.bb35 ], [ %or34, %sw.bb33 ], [ %or32, %sw.bb31 ], [ %or30, %sw.bb29 ], [ %or, %sw.bb28 ], [ %flags.01069, %sw.bb27 ], [ %flags.01069, %sw.bb26 ], [ %flags.01069, %sw.bb25 ], [ %flags.01069, %sw.bb24 ], [ %flags.01069, %sw.bb23 ], [ %flags.01069, %sw.bb22 ], [ %flags.01069, %sw.bb20 ], [ %flags.01069, %sw.bb14 ], [ %flags.01069, %sw.bb12 ], [ %flags.01069, %sw.bb7 ]
  %operation.1 = phi i32 [ %operation.01070, %while.body ], [ %operation.01070, %sw.bb154 ], [ %operation.01070, %sw.bb153 ], [ %operation.01070, %sw.bb152 ], [ %operation.01070, %sw.bb151 ], [ %operation.01070, %sw.bb149 ], [ %operation.01070, %sw.bb147 ], [ %operation.01070, %sw.bb145 ], [ %operation.01070, %sw.bb143 ], [ %operation.01070, %sw.bb137 ], [ %operation.01070, %if.end135 ], [ %operation.01070, %sw.bb108 ], [ %operation.01070, %sw.bb106 ], [ %operation.01070, %sw.bb104 ], [ %operation.01070, %if.end102 ], [ %operation.01070, %sw.bb77 ], [ %operation.01070, %sw.bb75 ], [ %operation.01070, %sw.bb73 ], [ %operation.01070, %sw.bb71 ], [ %operation.01070, %sw.bb68 ], [ %operation.01070, %sw.bb62 ], [ %operation.01070, %sw.bb57 ], [ %operation.01070, %sw.bb51 ], [ %operation.01070, %if.end161 ], [ %operation.01070, %sw.bb48 ], [ %operation.01070, %sw.bb47 ], [ %operation.01070, %sw.bb46 ], [ %operation.01070, %sw.bb44 ], [ %operation.01070, %sw.bb42 ], [ %operation.01070, %sw.bb40 ], [ %operation.01070, %sw.bb39 ], [ %operation.01070, %sw.bb37 ], [ %operation.01070, %sw.bb35 ], [ %operation.01070, %sw.bb33 ], [ %operation.01070, %sw.bb31 ], [ %operation.01070, %sw.bb29 ], [ %operation.01070, %sw.bb28 ], [ 53, %sw.bb27 ], [ 36, %sw.bb26 ], [ 118, %sw.bb25 ], [ 83, %sw.bb24 ], [ 34, %sw.bb23 ], [ 17, %sw.bb22 ], [ %operation.01070, %sw.bb20 ], [ %operation.01070, %sw.bb14 ], [ %operation.01070, %sw.bb12 ], [ %operation.01070, %sw.bb7 ]
  %indef.1 = phi i32 [ %indef.01071, %while.body ], [ %indef.01071, %sw.bb154 ], [ %indef.01071, %sw.bb153 ], [ %indef.01071, %sw.bb152 ], [ %indef.01071, %sw.bb151 ], [ %indef.01071, %sw.bb149 ], [ %indef.01071, %sw.bb147 ], [ %indef.01071, %sw.bb145 ], [ %indef.01071, %sw.bb143 ], [ %indef.01071, %sw.bb137 ], [ %indef.01071, %if.end135 ], [ %indef.01071, %sw.bb108 ], [ %indef.01071, %sw.bb106 ], [ %indef.01071, %sw.bb104 ], [ %indef.01071, %if.end102 ], [ %indef.01071, %sw.bb77 ], [ %indef.01071, %sw.bb75 ], [ %indef.01071, %sw.bb73 ], [ %indef.01071, %sw.bb71 ], [ %indef.01071, %sw.bb68 ], [ %indef.01071, %sw.bb62 ], [ %indef.01071, %sw.bb57 ], [ %indef.01071, %sw.bb51 ], [ %indef.01071, %if.end161 ], [ %indef.01071, %sw.bb48 ], [ 0, %sw.bb47 ], [ 1, %sw.bb46 ], [ %indef.01071, %sw.bb44 ], [ %indef.01071, %sw.bb42 ], [ %indef.01071, %sw.bb40 ], [ %indef.01071, %sw.bb39 ], [ %indef.01071, %sw.bb37 ], [ %indef.01071, %sw.bb35 ], [ %indef.01071, %sw.bb33 ], [ %indef.01071, %sw.bb31 ], [ %indef.01071, %sw.bb29 ], [ %indef.01071, %sw.bb28 ], [ %indef.01071, %sw.bb27 ], [ %indef.01071, %sw.bb26 ], [ %indef.01071, %sw.bb25 ], [ %indef.01071, %sw.bb24 ], [ %indef.01071, %sw.bb23 ], [ %indef.01071, %sw.bb22 ], [ %indef.01071, %sw.bb20 ], [ %indef.01071, %sw.bb14 ], [ %indef.01071, %sw.bb12 ], [ %indef.01071, %sw.bb7 ]
  %vpmtouched.1 = phi i32 [ %vpmtouched.01072, %while.body ], [ %vpmtouched.01072, %sw.bb154 ], [ %vpmtouched.01072, %sw.bb153 ], [ %vpmtouched.01072, %sw.bb152 ], [ %vpmtouched.01072, %sw.bb151 ], [ %vpmtouched.01072, %sw.bb149 ], [ %vpmtouched.01072, %sw.bb147 ], [ %vpmtouched.01072, %sw.bb145 ], [ %vpmtouched.01072, %sw.bb143 ], [ %vpmtouched.01072, %sw.bb137 ], [ %vpmtouched.01072, %if.end135 ], [ %vpmtouched.01072, %sw.bb108 ], [ %vpmtouched.01072, %sw.bb106 ], [ %vpmtouched.01072, %sw.bb104 ], [ %vpmtouched.01072, %if.end102 ], [ %vpmtouched.01072, %sw.bb77 ], [ %vpmtouched.01072, %sw.bb75 ], [ %vpmtouched.01072, %sw.bb73 ], [ %vpmtouched.01072, %sw.bb71 ], [ %vpmtouched.01072, %sw.bb68 ], [ %vpmtouched.01072, %sw.bb62 ], [ %vpmtouched.01072, %sw.bb57 ], [ %vpmtouched.01072, %sw.bb51 ], [ %inc, %if.end161 ], [ %vpmtouched.01072, %sw.bb48 ], [ %vpmtouched.01072, %sw.bb47 ], [ %vpmtouched.01072, %sw.bb46 ], [ %vpmtouched.01072, %sw.bb44 ], [ %vpmtouched.01072, %sw.bb42 ], [ %vpmtouched.01072, %sw.bb40 ], [ %vpmtouched.01072, %sw.bb39 ], [ %vpmtouched.01072, %sw.bb37 ], [ %vpmtouched.01072, %sw.bb35 ], [ %vpmtouched.01072, %sw.bb33 ], [ %vpmtouched.01072, %sw.bb31 ], [ %vpmtouched.01072, %sw.bb29 ], [ %vpmtouched.01072, %sw.bb28 ], [ %vpmtouched.01072, %sw.bb27 ], [ %vpmtouched.01072, %sw.bb26 ], [ %vpmtouched.01072, %sw.bb25 ], [ %vpmtouched.01072, %sw.bb24 ], [ %vpmtouched.01072, %sw.bb23 ], [ %vpmtouched.01072, %sw.bb22 ], [ %vpmtouched.01072, %sw.bb20 ], [ %vpmtouched.01072, %sw.bb14 ], [ %vpmtouched.01072, %sw.bb12 ], [ %vpmtouched.01072, %sw.bb7 ]
  %e.1 = phi %struct.engine_st* [ %e.01073, %while.body ], [ %e.01073, %sw.bb154 ], [ %e.01073, %sw.bb153 ], [ %e.01073, %sw.bb152 ], [ %e.01073, %sw.bb151 ], [ %e.01073, %sw.bb149 ], [ %e.01073, %sw.bb147 ], [ %e.01073, %sw.bb145 ], [ %e.01073, %sw.bb143 ], [ %e.01073, %sw.bb137 ], [ %e.01073, %if.end135 ], [ %e.01073, %sw.bb108 ], [ %e.01073, %sw.bb106 ], [ %e.01073, %sw.bb104 ], [ %e.01073, %if.end102 ], [ %e.01073, %sw.bb77 ], [ %e.01073, %sw.bb75 ], [ %e.01073, %sw.bb73 ], [ %e.01073, %sw.bb71 ], [ %call70, %sw.bb68 ], [ %e.01073, %sw.bb62 ], [ %e.01073, %sw.bb57 ], [ %e.01073, %sw.bb51 ], [ %e.01073, %if.end161 ], [ %e.01073, %sw.bb48 ], [ %e.01073, %sw.bb47 ], [ %e.01073, %sw.bb46 ], [ %e.01073, %sw.bb44 ], [ %e.01073, %sw.bb42 ], [ %e.01073, %sw.bb40 ], [ %e.01073, %sw.bb39 ], [ %e.01073, %sw.bb37 ], [ %e.01073, %sw.bb35 ], [ %e.01073, %sw.bb33 ], [ %e.01073, %sw.bb31 ], [ %e.01073, %sw.bb29 ], [ %e.01073, %sw.bb28 ], [ %e.01073, %sw.bb27 ], [ %e.01073, %sw.bb26 ], [ %e.01073, %sw.bb25 ], [ %e.01073, %sw.bb24 ], [ %e.01073, %sw.bb23 ], [ %e.01073, %sw.bb22 ], [ %e.01073, %sw.bb20 ], [ %e.01073, %sw.bb14 ], [ %e.01073, %sw.bb12 ], [ %e.01073, %sw.bb7 ]
  %mime_eol.1 = phi i8* [ %mime_eol.01078, %while.body ], [ %mime_eol.01078, %sw.bb154 ], [ %mime_eol.01078, %sw.bb153 ], [ %mime_eol.01078, %sw.bb152 ], [ %mime_eol.01078, %sw.bb151 ], [ %mime_eol.01078, %sw.bb149 ], [ %mime_eol.01078, %sw.bb147 ], [ %mime_eol.01078, %sw.bb145 ], [ %mime_eol.01078, %sw.bb143 ], [ %mime_eol.01078, %sw.bb137 ], [ %mime_eol.01078, %if.end135 ], [ %mime_eol.01078, %sw.bb108 ], [ %mime_eol.01078, %sw.bb106 ], [ %mime_eol.01078, %sw.bb104 ], [ %mime_eol.01078, %if.end102 ], [ %mime_eol.01078, %sw.bb77 ], [ %mime_eol.01078, %sw.bb75 ], [ %mime_eol.01078, %sw.bb73 ], [ %mime_eol.01078, %sw.bb71 ], [ %mime_eol.01078, %sw.bb68 ], [ %mime_eol.01078, %sw.bb62 ], [ %mime_eol.01078, %sw.bb57 ], [ %mime_eol.01078, %sw.bb51 ], [ %mime_eol.01078, %if.end161 ], [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.174, i64 0, i64 0), %sw.bb48 ], [ %mime_eol.01078, %sw.bb47 ], [ %mime_eol.01078, %sw.bb46 ], [ %mime_eol.01078, %sw.bb44 ], [ %mime_eol.01078, %sw.bb42 ], [ %mime_eol.01078, %sw.bb40 ], [ %mime_eol.01078, %sw.bb39 ], [ %mime_eol.01078, %sw.bb37 ], [ %mime_eol.01078, %sw.bb35 ], [ %mime_eol.01078, %sw.bb33 ], [ %mime_eol.01078, %sw.bb31 ], [ %mime_eol.01078, %sw.bb29 ], [ %mime_eol.01078, %sw.bb28 ], [ %mime_eol.01078, %sw.bb27 ], [ %mime_eol.01078, %sw.bb26 ], [ %mime_eol.01078, %sw.bb25 ], [ %mime_eol.01078, %sw.bb24 ], [ %mime_eol.01078, %sw.bb23 ], [ %mime_eol.01078, %sw.bb22 ], [ %mime_eol.01078, %sw.bb20 ], [ %mime_eol.01078, %sw.bb14 ], [ %mime_eol.01078, %sw.bb12 ], [ %mime_eol.01078, %sw.bb7 ]
  %call3 = call i32 @opt_next() #5
  %cmp4.not = icmp eq i32 %call3, 0
  br i1 %cmp4.not, label %while.end, label %while.body, !llvm.loop !9

while.end:                                        ; preds = %sw.epilog, %if.end
  %sksigners.0.lcssa = phi %struct.stack_st_OPENSSL_STRING* [ null, %if.end ], [ %sksigners.6, %sw.epilog ]
  %skkeys.0.lcssa = phi %struct.stack_st_OPENSSL_STRING* [ null, %if.end ], [ %skkeys.6, %sw.epilog ]
  %CAfile.0.lcssa = phi i8* [ null, %if.end ], [ %CAfile.1, %sw.epilog ]
  %CApath.0.lcssa = phi i8* [ null, %if.end ], [ %CApath.1, %sw.epilog ]
  %CAstore.0.lcssa = phi i8* [ null, %if.end ], [ %CAstore.1, %sw.epilog ]
  %certfile.0.lcssa = phi i8* [ null, %if.end ], [ %certfile.1, %sw.epilog ]
  %keyfile.0.lcssa = phi i8* [ null, %if.end ], [ %keyfile.3, %sw.epilog ]
  %contfile.0.lcssa = phi i8* [ null, %if.end ], [ %contfile.1, %sw.epilog ]
  %infile.0.lcssa = phi i8* [ null, %if.end ], [ %infile.1, %sw.epilog ]
  %outfile.0.lcssa = phi i8* [ null, %if.end ], [ %outfile.1, %sw.epilog ]
  %signerfile.0.lcssa = phi i8* [ null, %if.end ], [ %signerfile.2, %sw.epilog ]
  %recipfile.0.lcssa = phi i8* [ null, %if.end ], [ %recipfile.1, %sw.epilog ]
  %passinarg.0.lcssa = phi i8* [ null, %if.end ], [ %passinarg.1, %sw.epilog ]
  %to.0.lcssa = phi i8* [ null, %if.end ], [ %to.1, %sw.epilog ]
  %from.0.lcssa = phi i8* [ null, %if.end ], [ %from.1, %sw.epilog ]
  %subject.0.lcssa = phi i8* [ null, %if.end ], [ %subject.1, %sw.epilog ]
  %digestname.0.lcssa = phi i8* [ null, %if.end ], [ %digestname.1, %sw.epilog ]
  %ciphername.0.lcssa = phi i8* [ null, %if.end ], [ %ciphername.1, %sw.epilog ]
  %conf.0.lcssa = phi %struct.conf_st* [ null, %if.end ], [ %conf.1, %sw.epilog ]
  %noCApath.0.lcssa = phi i32 [ 0, %if.end ], [ %noCApath.1, %sw.epilog ]
  %noCAfile.0.lcssa = phi i32 [ 0, %if.end ], [ %noCAfile.1, %sw.epilog ]
  %noCAstore.0.lcssa = phi i32 [ 0, %if.end ], [ %noCAstore.1, %sw.epilog ]
  %flags.0.lcssa = phi i32 [ 64, %if.end ], [ %flags.1, %sw.epilog ]
  %operation.0.lcssa = phi i32 [ 0, %if.end ], [ %operation.1, %sw.epilog ]
  %indef.0.lcssa = phi i32 [ 0, %if.end ], [ %indef.1, %sw.epilog ]
  %vpmtouched.0.lcssa = phi i32 [ 0, %if.end ], [ %vpmtouched.1, %sw.epilog ]
  %e.0.lcssa = phi %struct.engine_st* [ null, %if.end ], [ %e.1, %sw.epilog ]
  %mime_eol.0.lcssa = phi i8* [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.172, i64 0, i64 0), %if.end ], [ %mime_eol.1, %sw.epilog ]
  %call162 = call i32 @opt_num_rest() #5
  %call163 = call i8** @opt_rest() #5
  %call164 = call i32 @app_RAND_load() #5
  %tobool165.not = icmp eq i32 %call164, 0
  br i1 %tobool165.not, label %if.end556, label %if.end167

if.end167:                                        ; preds = %while.end
  %cmp168.not = icmp eq i8* %digestname.0.lcssa, null
  br i1 %cmp168.not, label %if.end174, label %if.then169

if.then169:                                       ; preds = %if.end167
  %call170 = call i32 @opt_md(i8* noundef nonnull %digestname.0.lcssa, %struct.evp_md_st** noundef nonnull %sign_md) #5
  %tobool171.not = icmp eq i32 %call170, 0
  br i1 %tobool171.not, label %opthelp, label %if.end174

if.end174:                                        ; preds = %if.then169, %if.end167
  %cmp175.not = icmp eq i8* %ciphername.0.lcssa, null
  br i1 %cmp175.not, label %if.end181, label %if.then176

if.then176:                                       ; preds = %if.end174
  %call177 = call i32 @opt_cipher_any(i8* noundef nonnull %ciphername.0.lcssa, %struct.evp_cipher_st** noundef nonnull %cipher) #5
  %tobool178.not = icmp eq i32 %call177, 0
  br i1 %tobool178.not, label %opthelp, label %if.end181

if.end181:                                        ; preds = %if.then176, %if.end174
  %and182 = and i32 %operation.0.lcssa, 64
  %tobool183.not = icmp eq i32 %and182, 0
  br i1 %tobool183.not, label %land.lhs.true184, label %if.then196

land.lhs.true184:                                 ; preds = %if.end181
  %cmp185 = icmp ne %struct.stack_st_OPENSSL_STRING* %skkeys.0.lcssa, null
  %cmp186 = icmp ne %struct.stack_st_OPENSSL_STRING* %sksigners.0.lcssa, null
  %or.cond = select i1 %cmp185, i1 true, i1 %cmp186
  br i1 %or.cond, label %if.then187, label %if.end189

if.then187:                                       ; preds = %land.lhs.true184
  %15 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call188 = call i32 @BIO_puts(%struct.bio_st* noundef %15, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.176, i64 0, i64 0)) #5
  br label %opthelp

if.end189:                                        ; preds = %land.lhs.true184
  switch i32 %operation.0.lcssa, label %if.else239 [
    i32 0, label %if.then191
    i32 34, label %if.then232
  ]

if.then191:                                       ; preds = %if.end189
  %16 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call192 = call i32 @BIO_puts(%struct.bio_st* noundef %16, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.177, i64 0, i64 0)) #5
  br label %opthelp

if.then196:                                       ; preds = %if.end181
  %tobool197 = icmp eq i8* %keyfile.0.lcssa, null
  %tobool199 = icmp ne i8* %signerfile.0.lcssa, null
  %or.cond616 = select i1 %tobool197, i1 true, i1 %tobool199
  br i1 %or.cond616, label %if.end202, label %if.then200

if.then200:                                       ; preds = %if.then196
  %17 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call201 = call i32 @BIO_puts(%struct.bio_st* noundef %17, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.178, i64 0, i64 0)) #5
  br label %opthelp

if.end202:                                        ; preds = %if.then196
  br i1 %tobool199, label %if.then204, label %if.end226

if.then204:                                       ; preds = %if.end202
  %cmp205 = icmp eq %struct.stack_st_OPENSSL_STRING* %sksigners.0.lcssa, null
  br i1 %cmp205, label %land.lhs.true206, label %if.end210

land.lhs.true206:                                 ; preds = %if.then204
  %call207 = call %struct.stack_st* @OPENSSL_sk_new_null() #5
  %18 = bitcast %struct.stack_st* %call207 to %struct.stack_st_OPENSSL_STRING*
  %cmp208 = icmp eq %struct.stack_st* %call207, null
  br i1 %cmp208, label %if.end556, label %if.end210

if.end210:                                        ; preds = %land.lhs.true206, %if.then204
  %sksigners.7 = phi %struct.stack_st_OPENSSL_STRING* [ %18, %land.lhs.true206 ], [ %sksigners.0.lcssa, %if.then204 ]
  %call211 = call fastcc %struct.stack_st* @ossl_check_OPENSSL_STRING_sk_type(%struct.stack_st_OPENSSL_STRING* noundef %sksigners.7) #6
  %call213 = call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call211, i8* noundef nonnull %signerfile.0.lcssa) #5
  %tobool214.not = icmp eq %struct.stack_st_OPENSSL_STRING* %skkeys.0.lcssa, null
  br i1 %tobool214.not, label %land.lhs.true215, label %if.end219

land.lhs.true215:                                 ; preds = %if.end210
  %call216 = call %struct.stack_st* @OPENSSL_sk_new_null() #5
  %19 = bitcast %struct.stack_st* %call216 to %struct.stack_st_OPENSSL_STRING*
  %cmp217 = icmp eq %struct.stack_st* %call216, null
  br i1 %cmp217, label %if.end556, label %if.end219

if.end219:                                        ; preds = %land.lhs.true215, %if.end210
  %skkeys.7 = phi %struct.stack_st_OPENSSL_STRING* [ %skkeys.0.lcssa, %if.end210 ], [ %19, %land.lhs.true215 ]
  %spec.select854 = select i1 %tobool197, i8* %signerfile.0.lcssa, i8* %keyfile.0.lcssa
  %call223 = call fastcc %struct.stack_st* @ossl_check_OPENSSL_STRING_sk_type(%struct.stack_st_OPENSSL_STRING* noundef %skkeys.7) #6
  %call225 = call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call223, i8* noundef %spec.select854) #5
  br label %if.end226

if.end226:                                        ; preds = %if.end219, %if.end202
  %sksigners.8 = phi %struct.stack_st_OPENSSL_STRING* [ %sksigners.7, %if.end219 ], [ %sksigners.0.lcssa, %if.end202 ]
  %skkeys.8 = phi %struct.stack_st_OPENSSL_STRING* [ %skkeys.7, %if.end219 ], [ %skkeys.0.lcssa, %if.end202 ]
  %cmp227 = icmp eq %struct.stack_st_OPENSSL_STRING* %sksigners.8, null
  br i1 %cmp227, label %if.then228, label %if.end248

if.then228:                                       ; preds = %if.end226
  %20 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call229 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %20, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.179, i64 0, i64 0)) #5
  br label %opthelp

if.then232:                                       ; preds = %if.end189
  %cmp233 = icmp eq i8* %recipfile.0.lcssa, null
  %cmp235 = icmp eq i8* %keyfile.0.lcssa, null
  %or.cond617 = select i1 %cmp233, i1 %cmp235, i1 false
  br i1 %or.cond617, label %if.then236, label %if.end248

if.then236:                                       ; preds = %if.then232
  %21 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call237 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %21, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.180, i64 0, i64 0)) #5
  br label %opthelp

if.else239:                                       ; preds = %if.end189
  %cmp240 = icmp eq i32 %operation.0.lcssa, 17
  %cmp242 = icmp eq i32 %call162, 0
  %or.cond619 = select i1 %cmp240, i1 %cmp242, i1 false
  br i1 %or.cond619, label %if.then243, label %if.end248

if.then243:                                       ; preds = %if.else239
  %22 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call244 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %22, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.181, i64 0, i64 0)) #5
  br label %opthelp

if.end248:                                        ; preds = %if.end226, %if.then232, %if.else239
  %sksigners.9 = phi %struct.stack_st_OPENSSL_STRING* [ null, %if.then232 ], [ null, %if.else239 ], [ %sksigners.8, %if.end226 ]
  %skkeys.9 = phi %struct.stack_st_OPENSSL_STRING* [ null, %if.then232 ], [ null, %if.else239 ], [ %skkeys.8, %if.end226 ]
  %keyfile.5 = phi i8* [ %keyfile.0.lcssa, %if.then232 ], [ %keyfile.0.lcssa, %if.else239 ], [ null, %if.end226 ]
  %signerfile.3 = phi i8* [ %signerfile.0.lcssa, %if.then232 ], [ %signerfile.0.lcssa, %if.else239 ], [ null, %if.end226 ]
  %call249 = call i32 @app_passwd(i8* noundef %passinarg.0.lcssa, i8* noundef null, i8** noundef nonnull %passin, i8** noundef null) #5
  %tobool250.not = icmp eq i32 %call249, 0
  br i1 %tobool250.not, label %if.then251, label %if.end253

if.then251:                                       ; preds = %if.end248
  %23 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call252 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %23, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.182, i64 0, i64 0)) #5
  br label %if.end556

if.end253:                                        ; preds = %if.end248
  %and257 = and i32 %flags.0.lcssa, -65
  %spec.select855 = select i1 %tobool183.not, i32 %and257, i32 %flags.0.lcssa
  %and259 = and i32 %operation.0.lcssa, 16
  %tobool260.not = icmp ne i32 %and259, 0
  %and262 = and i32 %spec.select855, 128
  %tobool263.not = icmp eq i32 %and262, 0
  %or.cond856 = select i1 %tobool260.not, i1 true, i1 %tobool263.not
  br i1 %or.cond856, label %if.end266, label %if.then264

if.then264:                                       ; preds = %if.end253
  store i32 2, i32* %outformat, align 4, !tbaa !7
  br label %if.end266

if.end266:                                        ; preds = %if.then264, %if.end253
  %and267 = and i32 %operation.0.lcssa, 32
  %tobool268.not = icmp eq i32 %and267, 0
  %tobool268.not.not = xor i1 %tobool268.not, true
  %or.cond857 = select i1 %tobool268.not.not, i1 true, i1 %tobool263.not
  br i1 %or.cond857, label %if.end274, label %if.then272

if.then272:                                       ; preds = %if.end266
  store i32 2, i32* %informat, align 4, !tbaa !7
  br label %if.end274

if.end274:                                        ; preds = %if.then272, %if.end266
  %cmp275 = icmp eq i32 %operation.0.lcssa, 17
  br i1 %cmp275, label %if.then276, label %if.end296

if.then276:                                       ; preds = %if.end274
  %24 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %cipher, align 8, !tbaa !3
  %cmp277 = icmp eq %struct.evp_cipher_st* %24, null
  br i1 %cmp277, label %if.then278, label %if.end280

if.then278:                                       ; preds = %if.then276
  %call279 = call %struct.evp_cipher_st* @EVP_des_ede3_cbc() #5
  store %struct.evp_cipher_st* %call279, %struct.evp_cipher_st** %cipher, align 8, !tbaa !3
  br label %if.end280

if.end280:                                        ; preds = %if.then278, %if.then276
  %call281 = call %struct.stack_st* @OPENSSL_sk_new_null() #5
  %25 = bitcast %struct.stack_st* %call281 to %struct.stack_st_X509*
  %cmp282 = icmp eq %struct.stack_st* %call281, null
  br i1 %cmp282, label %if.then555, label %while.cond285.preheader

while.cond285.preheader:                          ; preds = %if.end280
  %26 = load i8*, i8** %call163, align 8, !tbaa !3
  %cmp286.not1107 = icmp eq i8* %26, null
  br i1 %cmp286.not1107, label %if.end296, label %while.body287

while.body287:                                    ; preds = %while.cond285.preheader, %if.end291
  %27 = phi i8* [ %29, %if.end291 ], [ %26, %while.cond285.preheader ]
  %argv.addr.01108 = phi i8** [ %incdec.ptr, %if.end291 ], [ %call163, %while.cond285.preheader ]
  %call288 = call %struct.x509_st* @load_cert_pass(i8* noundef nonnull %27, i32 noundef 0, i32 noundef 1, i8* noundef null, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.183, i64 0, i64 0)) #5
  %cmp289 = icmp eq %struct.x509_st* %call288, null
  br i1 %cmp289, label %if.then555, label %if.end291

if.end291:                                        ; preds = %while.body287
  %call292 = call fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef nonnull %25) #6
  %28 = bitcast %struct.x509_st* %call288 to i8*
  %call294 = call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call292, i8* noundef nonnull %28) #5
  %incdec.ptr = getelementptr inbounds i8*, i8** %argv.addr.01108, i64 1
  %29 = load i8*, i8** %incdec.ptr, align 8, !tbaa !3
  %cmp286.not = icmp eq i8* %29, null
  br i1 %cmp286.not, label %if.end296, label %while.body287, !llvm.loop !11

if.end296:                                        ; preds = %if.end291, %while.cond285.preheader, %if.end274
  %encerts.0 = phi %struct.stack_st_X509* [ null, %if.end274 ], [ %25, %while.cond285.preheader ], [ %25, %if.end291 ]
  %cmp297.not = icmp eq i8* %certfile.0.lcssa, null
  br i1 %cmp297.not, label %if.end303, label %if.then298

if.then298:                                       ; preds = %if.end296
  %call299 = call i32 @load_certs(i8* noundef nonnull %certfile.0.lcssa, i32 noundef 0, %struct.stack_st_X509** noundef nonnull %other, i8* noundef null, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.184, i64 0, i64 0)) #5
  %tobool300.not = icmp eq i32 %call299, 0
  br i1 %tobool300.not, label %if.then301, label %if.end303

if.then301:                                       ; preds = %if.then298
  %30 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  call void @ERR_print_errors(%struct.bio_st* noundef %30) #5
  br label %if.then555

if.end303:                                        ; preds = %if.then298, %if.end296
  %cmp304 = icmp ne i8* %recipfile.0.lcssa, null
  %cmp306 = icmp eq i32 %operation.0.lcssa, 34
  %or.cond618 = select i1 %cmp304, i1 %cmp306, i1 false
  br i1 %or.cond618, label %if.then307, label %if.end312

if.then307:                                       ; preds = %if.end303
  %call308 = call %struct.x509_st* @load_cert_pass(i8* noundef nonnull %recipfile.0.lcssa, i32 noundef 0, i32 noundef 1, i8* noundef null, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.183, i64 0, i64 0)) #5
  %cmp309 = icmp eq %struct.x509_st* %call308, null
  br i1 %cmp309, label %if.then310, label %if.end326

if.then310:                                       ; preds = %if.then307
  %31 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  call void @ERR_print_errors(%struct.bio_st* noundef %31) #5
  br label %if.then555

if.end312:                                        ; preds = %if.end303
  br i1 %cmp306, label %if.end326, label %if.else318

if.else318:                                       ; preds = %if.end312
  %cmp319 = icmp eq i32 %operation.0.lcssa, 83
  br i1 %cmp319, label %if.end326, label %if.end333

if.end326:                                        ; preds = %if.else318, %if.end312, %if.then307
  %signerfile.3.sink = phi i8* [ %recipfile.0.lcssa, %if.then307 ], [ %recipfile.0.lcssa, %if.end312 ], [ %signerfile.3, %if.else318 ]
  %recip.0866 = phi %struct.x509_st* [ %call308, %if.then307 ], [ null, %if.end312 ], [ null, %if.else318 ]
  %cmp321 = icmp eq i8* %keyfile.5, null
  %spec.select859 = select i1 %cmp321, i8* %signerfile.3.sink, i8* %keyfile.5
  %cmp327.not = icmp eq i8* %spec.select859, null
  br i1 %cmp327.not, label %if.end333, label %if.then328

if.then328:                                       ; preds = %if.end326
  %32 = load i32, i32* %keyform, align 4, !tbaa !7
  %33 = load i8*, i8** %passin, align 8, !tbaa !3
  %call329 = call %struct.evp_pkey_st* @load_key(i8* noundef nonnull %spec.select859, i32 noundef %32, i32 noundef 0, i8* noundef %33, %struct.engine_st* noundef %e.0.lcssa, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.185, i64 0, i64 0)) #5
  %cmp330 = icmp eq %struct.evp_pkey_st* %call329, null
  br i1 %cmp330, label %if.then555, label %if.end333

if.end333:                                        ; preds = %if.else318, %if.then328, %if.end326
  %recip.0869 = phi %struct.x509_st* [ %recip.0866, %if.then328 ], [ %recip.0866, %if.end326 ], [ null, %if.else318 ]
  %key.0 = phi %struct.evp_pkey_st* [ %call329, %if.then328 ], [ null, %if.end326 ], [ null, %if.else318 ]
  %34 = load i32, i32* %informat, align 4, !tbaa !7
  %call334 = call %struct.bio_st* @bio_open_default(i8* noundef %infile.0.lcssa, i8 noundef signext 114, i32 noundef %34) #5
  %cmp335 = icmp eq %struct.bio_st* %call334, null
  br i1 %cmp335, label %if.then555, label %if.end337

if.end337:                                        ; preds = %if.end333
  br i1 %tobool268.not, label %if.end376, label %if.then340

if.then340:                                       ; preds = %if.end337
  %call341 = call i8* @app_get0_propq() #5
  %call342 = call %struct.pkcs7_st* @PKCS7_new_ex(%struct.ossl_lib_ctx_st* noundef %call, i8* noundef %call341) #5
  store %struct.pkcs7_st* %call342, %struct.pkcs7_st** %p7, align 8, !tbaa !3
  %cmp343 = icmp eq %struct.pkcs7_st* %call342, null
  br i1 %cmp343, label %if.then344, label %if.end346

if.then344:                                       ; preds = %if.then340
  %35 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call345 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %35, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.186, i64 0, i64 0)) #5
  br label %if.then555

if.end346:                                        ; preds = %if.then340
  %36 = load i32, i32* %informat, align 4, !tbaa !7
  switch i32 %36, label %if.else358 [
    i32 32775, label %if.then348
    i32 32773, label %if.then352
    i32 4, label %if.then356
  ]

if.then348:                                       ; preds = %if.end346
  %call349 = call %struct.pkcs7_st* @SMIME_read_PKCS7_ex(%struct.bio_st* noundef nonnull %call334, %struct.bio_st** noundef nonnull %indata, %struct.pkcs7_st** noundef nonnull %p7) #5
  br label %if.end362

if.then352:                                       ; preds = %if.end346
  %call353 = call %struct.pkcs7_st* @PEM_read_bio_PKCS7(%struct.bio_st* noundef nonnull %call334, %struct.pkcs7_st** noundef nonnull %p7, i32 (i8*, i32, i32, i8*)* noundef null, i8* noundef null) #5
  br label %if.end362

if.then356:                                       ; preds = %if.end346
  %call357 = call %struct.pkcs7_st* @d2i_PKCS7_bio(%struct.bio_st* noundef nonnull %call334, %struct.pkcs7_st** noundef nonnull %p7) #5
  br label %if.end362

if.else358:                                       ; preds = %if.end346
  %37 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call359 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %37, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.187, i64 0, i64 0)) #5
  br label %if.then555

if.end362:                                        ; preds = %if.then352, %if.then356, %if.then348
  %p7_in.0 = phi %struct.pkcs7_st* [ %call349, %if.then348 ], [ %call353, %if.then352 ], [ %call357, %if.then356 ]
  %cmp363 = icmp eq %struct.pkcs7_st* %p7_in.0, null
  br i1 %cmp363, label %if.then364, label %if.end366

if.then364:                                       ; preds = %if.end362
  %38 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call365 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %38, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.188, i64 0, i64 0)) #5
  br label %if.then555

if.end366:                                        ; preds = %if.end362
  %cmp367.not = icmp eq i8* %contfile.0.lcssa, null
  br i1 %cmp367.not, label %if.end376, label %if.then368

if.then368:                                       ; preds = %if.end366
  %39 = load %struct.bio_st*, %struct.bio_st** %indata, align 8, !tbaa !3
  %call369 = call i32 @BIO_free(%struct.bio_st* noundef %39) #5
  %call370 = call %struct.bio_st* @BIO_new_file(i8* noundef nonnull %contfile.0.lcssa, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.189, i64 0, i64 0)) #5
  store %struct.bio_st* %call370, %struct.bio_st** %indata, align 8, !tbaa !3
  %cmp371 = icmp eq %struct.bio_st* %call370, null
  br i1 %cmp371, label %if.then372, label %if.end376

if.then372:                                       ; preds = %if.then368
  %40 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call373 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %40, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.190, i64 0, i64 0), i8* noundef nonnull %contfile.0.lcssa) #5
  br label %if.then555

if.end376:                                        ; preds = %if.then368, %if.end366, %if.end337
  %41 = load i32, i32* %outformat, align 4, !tbaa !7
  %call377 = call %struct.bio_st* @bio_open_default(i8* noundef %outfile.0.lcssa, i8 noundef signext 119, i32 noundef %41) #5
  %cmp378 = icmp eq %struct.bio_st* %call377, null
  br i1 %cmp378, label %if.then555, label %if.end380

if.end380:                                        ; preds = %if.end376
  %cmp381 = icmp eq i32 %operation.0.lcssa, 36
  br i1 %cmp381, label %if.then382, label %if.end391

if.then382:                                       ; preds = %if.end380
  %call383 = call %struct.x509_store_st* @setup_verify(i8* noundef %CAfile.0.lcssa, i32 noundef %noCAfile.0.lcssa, i8* noundef %CApath.0.lcssa, i32 noundef %noCApath.0.lcssa, i8* noundef %CAstore.0.lcssa, i32 noundef %noCAstore.0.lcssa) #5
  %cmp384 = icmp eq %struct.x509_store_st* %call383, null
  br i1 %cmp384, label %if.then555, label %if.end386

if.end386:                                        ; preds = %if.then382
  call void @X509_STORE_set_verify_cb(%struct.x509_store_st* noundef nonnull %call383, i32 (i32, %struct.x509_store_ctx_st*)* noundef nonnull @smime_cb) #5
  %tobool387.not = icmp eq i32 %vpmtouched.0.lcssa, 0
  br i1 %tobool387.not, label %if.end391, label %if.then388

if.then388:                                       ; preds = %if.end386
  %call389 = call i32 @X509_STORE_set1_param(%struct.x509_store_st* noundef nonnull %call383, %struct.X509_VERIFY_PARAM_st* noundef nonnull %call1) #5
  br label %if.end391

if.end391:                                        ; preds = %if.end386, %if.then388, %if.end380
  %store.0 = phi %struct.x509_store_st* [ %call383, %if.then388 ], [ %call383, %if.end386 ], [ null, %if.end380 ]
  br i1 %cmp275, label %if.then393, label %if.else400

if.then393:                                       ; preds = %if.end391
  %tobool394.not = icmp eq i32 %indef.0.lcssa, 0
  %or396 = or i32 %spec.select855, 4096
  %spec.select860 = select i1 %tobool394.not, i32 %spec.select855, i32 %or396
  %42 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %cipher, align 8, !tbaa !3
  %call398 = call i8* @app_get0_propq() #5
  %call399 = call %struct.pkcs7_st* @PKCS7_encrypt_ex(%struct.stack_st_X509* noundef %encerts.0, %struct.bio_st* noundef nonnull %call334, %struct.evp_cipher_st* noundef %42, i32 noundef %spec.select860, %struct.ossl_lib_ctx_st* noundef %call, i8* noundef %call398) #5
  store %struct.pkcs7_st* %call399, %struct.pkcs7_st** %p7, align 8, !tbaa !3
  br label %if.end477

if.else400:                                       ; preds = %if.end391
  br i1 %tobool183.not, label %if.end477thread-pre-split, label %if.then403

if.then403:                                       ; preds = %if.else400
  %cmp404 = icmp eq i32 %operation.0.lcssa, 83
  br i1 %cmp404, label %if.then405, label %if.else436

if.then405:                                       ; preds = %if.then403
  %and406 = and i32 %spec.select855, 64
  %tobool407.not = icmp eq i32 %and406, 0
  br i1 %tobool407.not, label %if.else413, label %if.then408

if.then408:                                       ; preds = %if.then405
  %43 = load i32, i32* %outformat, align 4, !tbaa !7
  %cmp409 = icmp eq i32 %43, 32775
  %or411 = or i32 %spec.select855, 4096
  %spec.select861 = select i1 %cmp409, i32 %or411, i32 %spec.select855
  br label %if.end418

if.else413:                                       ; preds = %if.then405
  %tobool414.not = icmp eq i32 %indef.0.lcssa, 0
  %or416 = or i32 %spec.select855, 4096
  %spec.select862 = select i1 %tobool414.not, i32 %spec.select855, i32 %or416
  br label %if.end418

if.end418:                                        ; preds = %if.else413, %if.then408
  %flags.4 = phi i32 [ %spec.select861, %if.then408 ], [ %spec.select862, %if.else413 ]
  %or419 = or i32 %flags.4, 16384
  %44 = load %struct.stack_st_X509*, %struct.stack_st_X509** %other, align 8, !tbaa !3
  %call420 = call i8* @app_get0_propq() #5
  %call421 = call %struct.pkcs7_st* @PKCS7_sign_ex(%struct.x509_st* noundef null, %struct.evp_pkey_st* noundef null, %struct.stack_st_X509* noundef %44, %struct.bio_st* noundef nonnull %call334, i32 noundef %or419, %struct.ossl_lib_ctx_st* noundef %call, i8* noundef %call420) #5
  store %struct.pkcs7_st* %call421, %struct.pkcs7_st** %p7, align 8, !tbaa !3
  %cmp422 = icmp eq %struct.pkcs7_st* %call421, null
  br i1 %cmp422, label %if.then555, label %if.end424

if.end424:                                        ; preds = %if.end418
  %and425 = and i32 %flags.4, 2
  %tobool426.not = icmp eq i32 %and425, 0
  br i1 %tobool426.not, label %if.end438, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end424
  %45 = load %struct.stack_st_X509*, %struct.stack_st_X509** %other, align 8, !tbaa !3
  %call4281109 = call fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef %45) #6
  %call4291110 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call4281109) #5
  %cmp4301111 = icmp sgt i32 %call4291110, 0
  br i1 %cmp4301111, label %for.body, label %if.end438

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %i.01112 = phi i32 [ %inc434, %for.body ], [ 0, %for.cond.preheader ]
  %46 = load %struct.stack_st_X509*, %struct.stack_st_X509** %other, align 8, !tbaa !3
  %call431 = call fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef %46) #6
  %call432 = call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call431, i32 noundef %i.01112) #5
  %47 = bitcast i8* %call432 to %struct.x509_st*
  %48 = load %struct.pkcs7_st*, %struct.pkcs7_st** %p7, align 8, !tbaa !3
  %call433 = call i32 @PKCS7_add_certificate(%struct.pkcs7_st* noundef %48, %struct.x509_st* noundef %47) #5
  %inc434 = add nuw nsw i32 %i.01112, 1
  %49 = load %struct.stack_st_X509*, %struct.stack_st_X509** %other, align 8, !tbaa !3
  %call428 = call fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef %49) #6
  %call429 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call428) #5
  %cmp430 = icmp slt i32 %inc434, %call429
  br i1 %cmp430, label %for.body, label %if.end438, !llvm.loop !12

if.else436:                                       ; preds = %if.then403
  %or437 = or i32 %spec.select855, 32768
  br label %if.end438

if.end438:                                        ; preds = %for.body, %for.cond.preheader, %if.end424, %if.else436
  %flags.5 = phi i32 [ %or419, %if.end424 ], [ %or437, %if.else436 ], [ %or419, %for.cond.preheader ], [ %or419, %for.body ]
  %call440 = call fastcc %struct.stack_st* @ossl_check_const_OPENSSL_STRING_sk_type(%struct.stack_st_OPENSSL_STRING* noundef %sksigners.9) #6
  %call4411113 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call440) #5
  %cmp4421114 = icmp sgt i32 %call4411113, 0
  br i1 %cmp4421114, label %for.body443.preheader, label %for.end462

for.body443.preheader:                            ; preds = %if.end438
  %call4451173 = call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call440, i32 noundef 0) #5
  %call446 = call fastcc %struct.stack_st* @ossl_check_const_OPENSSL_STRING_sk_type(%struct.stack_st_OPENSSL_STRING* noundef %skkeys.9) #6
  %call4471174 = call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call446, i32 noundef 0) #5
  %call4481175 = call %struct.x509_st* @load_cert_pass(i8* noundef %call4451173, i32 noundef 0, i32 noundef 1, i8* noundef null, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.191, i64 0, i64 0)) #5
  %cmp4491176 = icmp eq %struct.x509_st* %call4481175, null
  br i1 %cmp4491176, label %if.then555, label %if.end451

for.body443:                                      ; preds = %if.end459
  %call445 = call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call440, i32 noundef %inc461) #5
  %call447 = call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call446, i32 noundef %inc461) #5
  %call448 = call %struct.x509_st* @load_cert_pass(i8* noundef %call445, i32 noundef 0, i32 noundef 1, i8* noundef null, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.191, i64 0, i64 0)) #5
  %cmp449 = icmp eq %struct.x509_st* %call448, null
  br i1 %cmp449, label %if.then555, label %if.end451, !llvm.loop !13

if.end451:                                        ; preds = %for.body443.preheader, %for.body443
  %call4481180 = phi %struct.x509_st* [ %call448, %for.body443 ], [ %call4481175, %for.body443.preheader ]
  %call4471179 = phi i8* [ %call447, %for.body443 ], [ %call4471174, %for.body443.preheader ]
  %call4451178 = phi i8* [ %call445, %for.body443 ], [ %call4451173, %for.body443.preheader ]
  %i.111161177 = phi i32 [ %inc461, %for.body443 ], [ 0, %for.body443.preheader ]
  %50 = load i32, i32* %keyform, align 4, !tbaa !7
  %51 = load i8*, i8** %passin, align 8, !tbaa !3
  %call452 = call %struct.evp_pkey_st* @load_key(i8* noundef %call4471179, i32 noundef %50, i32 noundef 0, i8* noundef %51, %struct.engine_st* noundef %e.0.lcssa, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.185, i64 0, i64 0)) #5
  %cmp453 = icmp eq %struct.evp_pkey_st* %call452, null
  br i1 %cmp453, label %if.then555, label %if.end455

if.end455:                                        ; preds = %if.end451
  %52 = load %struct.pkcs7_st*, %struct.pkcs7_st** %p7, align 8, !tbaa !3
  %53 = load %struct.evp_md_st*, %struct.evp_md_st** %sign_md, align 8, !tbaa !3
  %call456 = call %struct.pkcs7_signer_info_st* @PKCS7_sign_add_signer(%struct.pkcs7_st* noundef %52, %struct.x509_st* noundef nonnull %call4481180, %struct.evp_pkey_st* noundef nonnull %call452, %struct.evp_md_st* noundef %53, i32 noundef %flags.5) #5
  %tobool457.not = icmp eq %struct.pkcs7_signer_info_st* %call456, null
  br i1 %tobool457.not, label %if.then555, label %if.end459

if.end459:                                        ; preds = %if.end455
  call void @X509_free(%struct.x509_st* noundef nonnull %call4481180) #5
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef nonnull %call452) #5
  %inc461 = add nuw nsw i32 %i.111161177, 1
  %call441 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call440) #5
  %cmp442 = icmp slt i32 %inc461, %call441
  br i1 %cmp442, label %for.body443, label %for.end462, !llvm.loop !13

for.end462:                                       ; preds = %if.end459, %if.end438
  %key.1.lcssa = phi %struct.evp_pkey_st* [ %key.0, %if.end438 ], [ null, %if.end459 ]
  %signerfile.4.lcssa = phi i8* [ %signerfile.3, %if.end438 ], [ %call4451178, %if.end459 ]
  %and465 = and i32 %flags.5, 4096
  %tobool466.not = icmp eq i32 %and465, 0
  %or.cond863 = select i1 %cmp404, i1 %tobool466.not, i1 false
  br i1 %or.cond863, label %if.then467, label %if.end477thread-pre-split

if.then467:                                       ; preds = %for.end462
  %54 = load %struct.pkcs7_st*, %struct.pkcs7_st** %p7, align 8, !tbaa !3
  %call468 = call i32 @PKCS7_final(%struct.pkcs7_st* noundef %54, %struct.bio_st* noundef nonnull %call334, i32 noundef %flags.5) #5
  %tobool469.not = icmp eq i32 %call468, 0
  br i1 %tobool469.not, label %if.then555, label %if.end477thread-pre-split

if.end477thread-pre-split:                        ; preds = %if.else400, %for.end462, %if.then467
  %key.3.ph = phi %struct.evp_pkey_st* [ %key.1.lcssa, %if.then467 ], [ %key.1.lcssa, %for.end462 ], [ %key.0, %if.else400 ]
  %signerfile.6.ph = phi i8* [ %signerfile.4.lcssa, %if.then467 ], [ %signerfile.4.lcssa, %for.end462 ], [ %signerfile.3, %if.else400 ]
  %flags.7.ph = phi i32 [ %flags.5, %if.then467 ], [ %flags.5, %for.end462 ], [ %and257, %if.else400 ]
  %.pr = load %struct.pkcs7_st*, %struct.pkcs7_st** %p7, align 8, !tbaa !3
  br label %if.end477

if.end477:                                        ; preds = %if.end477thread-pre-split, %if.then393
  %55 = phi %struct.pkcs7_st* [ %.pr, %if.end477thread-pre-split ], [ %call399, %if.then393 ]
  %key.3 = phi %struct.evp_pkey_st* [ %key.3.ph, %if.end477thread-pre-split ], [ %key.0, %if.then393 ]
  %signerfile.6 = phi i8* [ %signerfile.6.ph, %if.end477thread-pre-split ], [ %signerfile.3, %if.then393 ]
  %flags.7 = phi i32 [ %flags.7.ph, %if.end477thread-pre-split ], [ %spec.select860, %if.then393 ]
  %cmp478 = icmp eq %struct.pkcs7_st* %55, null
  br i1 %cmp478, label %if.then479, label %if.end481

if.then479:                                       ; preds = %if.end477
  %56 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call480 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %56, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.192, i64 0, i64 0)) #5
  br label %if.then555

if.end481:                                        ; preds = %if.end477
  br i1 %cmp306, label %if.then483, label %if.else489

if.then483:                                       ; preds = %if.end481
  %call484 = call i32 @PKCS7_decrypt(%struct.pkcs7_st* noundef nonnull %55, %struct.evp_pkey_st* noundef %key.3, %struct.x509_st* noundef %recip.0869, %struct.bio_st* noundef nonnull %call377, i32 noundef %flags.7) #5
  %tobool485.not = icmp eq i32 %call484, 0
  br i1 %tobool485.not, label %if.then486, label %if.end556

if.then486:                                       ; preds = %if.then483
  %57 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call487 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %57, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.193, i64 0, i64 0)) #5
  br label %if.then555

if.else489:                                       ; preds = %if.end481
  br i1 %cmp381, label %if.then491, label %if.else509

if.then491:                                       ; preds = %if.else489
  %58 = load %struct.stack_st_X509*, %struct.stack_st_X509** %other, align 8, !tbaa !3
  %59 = load %struct.bio_st*, %struct.bio_st** %indata, align 8, !tbaa !3
  %call492 = call i32 @PKCS7_verify(%struct.pkcs7_st* noundef nonnull %55, %struct.stack_st_X509* noundef %58, %struct.x509_store_st* noundef %store.0, %struct.bio_st* noundef %59, %struct.bio_st* noundef nonnull %call377, i32 noundef %flags.7) #5
  %tobool493.not = icmp eq i32 %call492, 0
  %60 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  br i1 %tobool493.not, label %if.else496, label %if.then494

if.then494:                                       ; preds = %if.then491
  %call495 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %60, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.194, i64 0, i64 0)) #5
  %61 = load %struct.pkcs7_st*, %struct.pkcs7_st** %p7, align 8, !tbaa !3
  %62 = load %struct.stack_st_X509*, %struct.stack_st_X509** %other, align 8, !tbaa !3
  %call499 = call %struct.stack_st_X509* @PKCS7_get0_signers(%struct.pkcs7_st* noundef %61, %struct.stack_st_X509* noundef %62, i32 noundef %flags.7) #5
  %call500 = call fastcc i32 @save_certs(i8* noundef %signerfile.6, %struct.stack_st_X509* noundef %call499) #6
  %tobool501.not = icmp eq i32 %call500, 0
  br i1 %tobool501.not, label %if.then502, label %cleanup506

if.else496:                                       ; preds = %if.then491
  %call497 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %60, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.195, i64 0, i64 0)) #5
  br label %if.then555

if.then502:                                       ; preds = %if.then494
  %63 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call503 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %63, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.196, i64 0, i64 0), i8* noundef %signerfile.6) #5
  br label %if.then555

cleanup506:                                       ; preds = %if.then494
  %call505 = call fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef %call499) #6
  call void @OPENSSL_sk_free(%struct.stack_st* noundef %call505) #5
  br label %if.end556

if.else509:                                       ; preds = %if.else489
  %cmp510 = icmp eq i32 %operation.0.lcssa, 53
  br i1 %cmp510, label %if.then511, label %if.else513

if.then511:                                       ; preds = %if.else509
  %call512 = call i32 @PEM_write_bio_PKCS7(%struct.bio_st* noundef nonnull %call377, %struct.pkcs7_st* noundef nonnull %55) #5
  br label %if.end556

if.else513:                                       ; preds = %if.else509
  %tobool514.not = icmp eq i8* %to.0.lcssa, null
  br i1 %tobool514.not, label %if.end517, label %if.then515

if.then515:                                       ; preds = %if.else513
  %call516 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef nonnull %call377, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.197, i64 0, i64 0), i8* noundef nonnull %to.0.lcssa, i8* noundef %mime_eol.0.lcssa) #5
  br label %if.end517

if.end517:                                        ; preds = %if.then515, %if.else513
  %tobool518.not = icmp eq i8* %from.0.lcssa, null
  br i1 %tobool518.not, label %if.end521, label %if.then519

if.then519:                                       ; preds = %if.end517
  %call520 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef nonnull %call377, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.198, i64 0, i64 0), i8* noundef nonnull %from.0.lcssa, i8* noundef %mime_eol.0.lcssa) #5
  br label %if.end521

if.end521:                                        ; preds = %if.then519, %if.end517
  %tobool522.not = icmp eq i8* %subject.0.lcssa, null
  br i1 %tobool522.not, label %if.end525, label %if.then523

if.then523:                                       ; preds = %if.end521
  %call524 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef nonnull %call377, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.199, i64 0, i64 0), i8* noundef nonnull %subject.0.lcssa, i8* noundef %mime_eol.0.lcssa) #5
  br label %if.end525

if.end525:                                        ; preds = %if.then523, %if.end521
  %64 = load i32, i32* %outformat, align 4, !tbaa !7
  switch i32 %64, label %if.else542 [
    i32 32775, label %if.then527
    i32 32773, label %if.then536
    i32 4, label %if.then540
  ]

if.then527:                                       ; preds = %if.end525
  %cmp528 = icmp eq i32 %operation.0.lcssa, 118
  %65 = load %struct.pkcs7_st*, %struct.pkcs7_st** %p7, align 8, !tbaa !3
  br i1 %cmp528, label %if.then529, label %if.else531

if.then529:                                       ; preds = %if.then527
  %66 = load %struct.bio_st*, %struct.bio_st** %indata, align 8, !tbaa !3
  %call530 = call i32 @SMIME_write_PKCS7(%struct.bio_st* noundef nonnull %call377, %struct.pkcs7_st* noundef %65, %struct.bio_st* noundef %66, i32 noundef %flags.7) #5
  br label %if.end546

if.else531:                                       ; preds = %if.then527
  %call532 = call i32 @SMIME_write_PKCS7(%struct.bio_st* noundef nonnull %call377, %struct.pkcs7_st* noundef %65, %struct.bio_st* noundef nonnull %call334, i32 noundef %flags.7) #5
  br label %if.end546

if.then536:                                       ; preds = %if.end525
  %67 = load %struct.pkcs7_st*, %struct.pkcs7_st** %p7, align 8, !tbaa !3
  %call537 = call i32 @PEM_write_bio_PKCS7_stream(%struct.bio_st* noundef nonnull %call377, %struct.pkcs7_st* noundef %67, %struct.bio_st* noundef nonnull %call334, i32 noundef %flags.7) #5
  br label %if.end546

if.then540:                                       ; preds = %if.end525
  %68 = load %struct.pkcs7_st*, %struct.pkcs7_st** %p7, align 8, !tbaa !3
  %call541 = call i32 @i2d_PKCS7_bio_stream(%struct.bio_st* noundef nonnull %call377, %struct.pkcs7_st* noundef %68, %struct.bio_st* noundef nonnull %call334, i32 noundef %flags.7) #5
  br label %if.end546

if.else542:                                       ; preds = %if.end525
  %69 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call543 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %69, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.200, i64 0, i64 0)) #5
  br label %if.then555

if.end546:                                        ; preds = %if.then536, %if.then540, %if.then529, %if.else531
  %rv.0 = phi i32 [ %call530, %if.then529 ], [ %call532, %if.else531 ], [ %call537, %if.then536 ], [ %call541, %if.then540 ]
  %cmp547 = icmp eq i32 %rv.0, 0
  br i1 %cmp547, label %if.then548, label %if.end556

if.then548:                                       ; preds = %if.end546
  %70 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call549 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %70, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.201, i64 0, i64 0)) #5
  br label %if.then555

if.then555:                                       ; preds = %while.body287, %for.body443, %if.end451, %if.end455, %for.body443.preheader, %if.else496, %if.then502, %if.then467, %if.end418, %if.else358, %if.then372, %if.then364, %if.then344, %if.then301, %if.then310, %if.then479, %if.then486, %if.else542, %if.then548, %if.end280, %if.then328, %if.end333, %if.end376, %if.then382
  %in.0 = phi %struct.bio_st* [ null, %if.end280 ], [ null, %if.then310 ], [ null, %if.then328 ], [ null, %if.end333 ], [ %call334, %if.end376 ], [ %call334, %if.then382 ], [ %call334, %if.then479 ], [ %call334, %if.then486 ], [ %call334, %if.then548 ], [ %call334, %if.else542 ], [ null, %if.then301 ], [ %call334, %if.then344 ], [ %call334, %if.then364 ], [ %call334, %if.then372 ], [ %call334, %if.else358 ], [ %call334, %if.end418 ], [ %call334, %if.then467 ], [ %call334, %if.then502 ], [ %call334, %if.else496 ], [ %call334, %for.body443.preheader ], [ %call334, %if.end455 ], [ %call334, %if.end451 ], [ %call334, %for.body443 ], [ null, %while.body287 ]
  %out.0 = phi %struct.bio_st* [ null, %if.end280 ], [ null, %if.then310 ], [ null, %if.then328 ], [ null, %if.end333 ], [ null, %if.end376 ], [ %call377, %if.then382 ], [ %call377, %if.then479 ], [ %call377, %if.then486 ], [ %call377, %if.then548 ], [ %call377, %if.else542 ], [ null, %if.then301 ], [ null, %if.then344 ], [ null, %if.then364 ], [ null, %if.then372 ], [ null, %if.else358 ], [ %call377, %if.end418 ], [ %call377, %if.then467 ], [ %call377, %if.then502 ], [ %call377, %if.else496 ], [ %call377, %for.body443.preheader ], [ %call377, %if.end455 ], [ %call377, %if.end451 ], [ %call377, %for.body443 ], [ null, %while.body287 ]
  %key.4 = phi %struct.evp_pkey_st* [ null, %if.end280 ], [ null, %if.then310 ], [ null, %if.then328 ], [ %key.0, %if.end333 ], [ %key.0, %if.end376 ], [ %key.0, %if.then382 ], [ %key.3, %if.then479 ], [ %key.3, %if.then486 ], [ %key.3, %if.then548 ], [ %key.3, %if.else542 ], [ null, %if.then301 ], [ %key.0, %if.then344 ], [ %key.0, %if.then364 ], [ %key.0, %if.then372 ], [ %key.0, %if.else358 ], [ %key.0, %if.end418 ], [ %key.1.lcssa, %if.then467 ], [ %key.3, %if.then502 ], [ %key.3, %if.else496 ], [ %key.0, %for.body443.preheader ], [ null, %for.body443 ], [ null, %if.end451 ], [ %call452, %if.end455 ], [ null, %while.body287 ]
  %encerts.1 = phi %struct.stack_st_X509* [ null, %if.end280 ], [ %encerts.0, %if.then310 ], [ %encerts.0, %if.then328 ], [ %encerts.0, %if.end333 ], [ %encerts.0, %if.end376 ], [ %encerts.0, %if.then382 ], [ %encerts.0, %if.then479 ], [ %encerts.0, %if.then486 ], [ %encerts.0, %if.then548 ], [ %encerts.0, %if.else542 ], [ %encerts.0, %if.then301 ], [ %encerts.0, %if.then344 ], [ %encerts.0, %if.then364 ], [ %encerts.0, %if.then372 ], [ %encerts.0, %if.else358 ], [ %encerts.0, %if.end418 ], [ %encerts.0, %if.then467 ], [ %encerts.0, %if.then502 ], [ %encerts.0, %if.else496 ], [ %encerts.0, %for.body443.preheader ], [ %encerts.0, %if.end455 ], [ %encerts.0, %if.end451 ], [ %encerts.0, %for.body443 ], [ %25, %while.body287 ]
  %recip.1 = phi %struct.x509_st* [ null, %if.end280 ], [ null, %if.then310 ], [ %recip.0866, %if.then328 ], [ %recip.0869, %if.end333 ], [ %recip.0869, %if.end376 ], [ %recip.0869, %if.then382 ], [ %recip.0869, %if.then479 ], [ %recip.0869, %if.then486 ], [ %recip.0869, %if.then548 ], [ %recip.0869, %if.else542 ], [ null, %if.then301 ], [ %recip.0869, %if.then344 ], [ %recip.0869, %if.then364 ], [ %recip.0869, %if.then372 ], [ %recip.0869, %if.else358 ], [ %recip.0869, %if.end418 ], [ %recip.0869, %if.then467 ], [ %recip.0869, %if.then502 ], [ %recip.0869, %if.else496 ], [ %recip.0869, %for.body443.preheader ], [ %recip.0869, %if.end455 ], [ %recip.0869, %if.end451 ], [ %recip.0869, %for.body443 ], [ null, %while.body287 ]
  %signer.3 = phi %struct.x509_st* [ null, %if.end280 ], [ null, %if.then310 ], [ null, %if.then328 ], [ null, %if.end333 ], [ null, %if.end376 ], [ null, %if.then382 ], [ null, %if.then479 ], [ null, %if.then486 ], [ null, %if.then548 ], [ null, %if.else542 ], [ null, %if.then301 ], [ null, %if.then344 ], [ null, %if.then364 ], [ null, %if.then372 ], [ null, %if.else358 ], [ null, %if.end418 ], [ null, %if.then467 ], [ null, %if.then502 ], [ null, %if.else496 ], [ null, %for.body443.preheader ], [ null, %for.body443 ], [ %call4481180, %if.end451 ], [ %call4481180, %if.end455 ], [ null, %while.body287 ]
  %store.1 = phi %struct.x509_store_st* [ null, %if.end280 ], [ null, %if.then310 ], [ null, %if.then328 ], [ null, %if.end333 ], [ null, %if.end376 ], [ null, %if.then382 ], [ %store.0, %if.then479 ], [ %store.0, %if.then486 ], [ %store.0, %if.then548 ], [ %store.0, %if.else542 ], [ null, %if.then301 ], [ null, %if.then344 ], [ null, %if.then364 ], [ null, %if.then372 ], [ null, %if.else358 ], [ %store.0, %if.end418 ], [ %store.0, %if.then467 ], [ %store.0, %if.then502 ], [ %store.0, %if.else496 ], [ %store.0, %for.body443.preheader ], [ %store.0, %if.end455 ], [ %store.0, %if.end451 ], [ %store.0, %for.body443 ], [ null, %while.body287 ]
  %ret.1 = phi i32 [ 2, %if.end280 ], [ 2, %if.then310 ], [ 2, %if.then328 ], [ 2, %if.end333 ], [ 2, %if.end376 ], [ 2, %if.then382 ], [ 3, %if.then479 ], [ 4, %if.then486 ], [ 3, %if.then548 ], [ 4, %if.else542 ], [ 2, %if.then301 ], [ 2, %if.then344 ], [ 2, %if.then364 ], [ 2, %if.then372 ], [ 2, %if.else358 ], [ 3, %if.end418 ], [ 3, %if.then467 ], [ 5, %if.then502 ], [ 4, %if.else496 ], [ 3, %for.body443.preheader ], [ 3, %if.end455 ], [ 3, %if.end451 ], [ 3, %for.body443 ], [ 2, %while.body287 ]
  %71 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  call void @ERR_print_errors(%struct.bio_st* noundef %71) #5
  br label %if.end556

if.end556:                                        ; preds = %sw.bb51, %sw.bb57, %sw.bb62, %land.lhs.true94, %land.lhs.true, %land.lhs.true127, %land.lhs.true118, %if.then483, %if.then511, %if.end546, %cleanup506, %while.end, %land.lhs.true215, %if.then251, %land.lhs.true206, %sw.bb6, %opthelp, %if.then555
  %e.0920 = phi %struct.engine_st* [ %e.0.lcssa, %if.then555 ], [ %e.0924, %opthelp ], [ %e.01073, %sw.bb6 ], [ %e.0.lcssa, %land.lhs.true206 ], [ %e.0.lcssa, %if.then251 ], [ %e.0.lcssa, %land.lhs.true215 ], [ %e.0.lcssa, %while.end ], [ %e.0.lcssa, %cleanup506 ], [ %e.0.lcssa, %if.end546 ], [ %e.0.lcssa, %if.then511 ], [ %e.0.lcssa, %if.then483 ], [ %e.01073, %land.lhs.true118 ], [ %e.01073, %land.lhs.true127 ], [ %e.01073, %land.lhs.true ], [ %e.01073, %land.lhs.true94 ], [ %e.01073, %sw.bb62 ], [ %e.01073, %sw.bb57 ], [ %e.01073, %sw.bb51 ]
  %ret.1908 = phi i32 [ %ret.1, %if.then555 ], [ 0, %opthelp ], [ 0, %sw.bb6 ], [ 0, %land.lhs.true206 ], [ 0, %if.then251 ], [ 0, %land.lhs.true215 ], [ 0, %while.end ], [ 0, %cleanup506 ], [ 0, %if.end546 ], [ 0, %if.then511 ], [ 0, %if.then483 ], [ 0, %land.lhs.true118 ], [ 0, %land.lhs.true127 ], [ 0, %land.lhs.true ], [ 0, %land.lhs.true94 ], [ 0, %sw.bb62 ], [ 0, %sw.bb57 ], [ 0, %sw.bb51 ]
  %conf.2907 = phi %struct.conf_st* [ %conf.0.lcssa, %if.then555 ], [ %conf.0959, %opthelp ], [ %conf.01059, %sw.bb6 ], [ %conf.0.lcssa, %land.lhs.true206 ], [ %conf.0.lcssa, %if.then251 ], [ %conf.0.lcssa, %land.lhs.true215 ], [ %conf.0.lcssa, %while.end ], [ %conf.0.lcssa, %cleanup506 ], [ %conf.0.lcssa, %if.end546 ], [ %conf.0.lcssa, %if.then511 ], [ %conf.0.lcssa, %if.then483 ], [ %conf.01059, %sw.bb51 ], [ %conf.01059, %sw.bb57 ], [ null, %sw.bb62 ], [ %conf.01059, %land.lhs.true94 ], [ %conf.01059, %land.lhs.true ], [ %conf.01059, %land.lhs.true127 ], [ %conf.01059, %land.lhs.true118 ]
  %store.1906 = phi %struct.x509_store_st* [ %store.1, %if.then555 ], [ null, %opthelp ], [ null, %sw.bb6 ], [ null, %land.lhs.true206 ], [ null, %if.then251 ], [ null, %land.lhs.true215 ], [ null, %while.end ], [ %store.0, %cleanup506 ], [ %store.0, %if.end546 ], [ %store.0, %if.then511 ], [ %store.0, %if.then483 ], [ null, %land.lhs.true118 ], [ null, %land.lhs.true127 ], [ null, %land.lhs.true ], [ null, %land.lhs.true94 ], [ null, %sw.bb62 ], [ null, %sw.bb57 ], [ null, %sw.bb51 ]
  %signer.3905 = phi %struct.x509_st* [ %signer.3, %if.then555 ], [ null, %opthelp ], [ null, %sw.bb6 ], [ null, %land.lhs.true206 ], [ null, %if.then251 ], [ null, %land.lhs.true215 ], [ null, %while.end ], [ null, %cleanup506 ], [ null, %if.end546 ], [ null, %if.then511 ], [ null, %if.then483 ], [ null, %land.lhs.true118 ], [ null, %land.lhs.true127 ], [ null, %land.lhs.true ], [ null, %land.lhs.true94 ], [ null, %sw.bb62 ], [ null, %sw.bb57 ], [ null, %sw.bb51 ]
  %recip.1904 = phi %struct.x509_st* [ %recip.1, %if.then555 ], [ null, %opthelp ], [ null, %sw.bb6 ], [ null, %land.lhs.true206 ], [ null, %if.then251 ], [ null, %land.lhs.true215 ], [ null, %while.end ], [ %recip.0869, %cleanup506 ], [ %recip.0869, %if.end546 ], [ %recip.0869, %if.then511 ], [ %recip.0869, %if.then483 ], [ null, %land.lhs.true118 ], [ null, %land.lhs.true127 ], [ null, %land.lhs.true ], [ null, %land.lhs.true94 ], [ null, %sw.bb62 ], [ null, %sw.bb57 ], [ null, %sw.bb51 ]
  %encerts.1903 = phi %struct.stack_st_X509* [ %encerts.1, %if.then555 ], [ null, %opthelp ], [ null, %sw.bb6 ], [ null, %land.lhs.true206 ], [ null, %if.then251 ], [ null, %land.lhs.true215 ], [ null, %while.end ], [ %encerts.0, %cleanup506 ], [ %encerts.0, %if.end546 ], [ %encerts.0, %if.then511 ], [ %encerts.0, %if.then483 ], [ null, %land.lhs.true118 ], [ null, %land.lhs.true127 ], [ null, %land.lhs.true ], [ null, %land.lhs.true94 ], [ null, %sw.bb62 ], [ null, %sw.bb57 ], [ null, %sw.bb51 ]
  %skkeys.10902 = phi %struct.stack_st_OPENSSL_STRING* [ %skkeys.9, %if.then555 ], [ %skkeys.1, %opthelp ], [ %skkeys.01040, %sw.bb6 ], [ %skkeys.0.lcssa, %land.lhs.true206 ], [ %skkeys.9, %if.then251 ], [ null, %land.lhs.true215 ], [ %skkeys.0.lcssa, %while.end ], [ %skkeys.9, %cleanup506 ], [ %skkeys.9, %if.end546 ], [ %skkeys.9, %if.then511 ], [ %skkeys.9, %if.then483 ], [ %skkeys.01040, %sw.bb51 ], [ %skkeys.01040, %sw.bb57 ], [ %skkeys.01040, %sw.bb62 ], [ null, %land.lhs.true94 ], [ %skkeys.01040, %land.lhs.true ], [ null, %land.lhs.true127 ], [ %skkeys.01040, %land.lhs.true118 ]
  %sksigners.10901 = phi %struct.stack_st_OPENSSL_STRING* [ %sksigners.9, %if.then555 ], [ %sksigners.1, %opthelp ], [ %sksigners.01039, %sw.bb6 ], [ null, %land.lhs.true206 ], [ %sksigners.9, %if.then251 ], [ %sksigners.7, %land.lhs.true215 ], [ %sksigners.0.lcssa, %while.end ], [ %sksigners.9, %cleanup506 ], [ %sksigners.9, %if.end546 ], [ %sksigners.9, %if.then511 ], [ %sksigners.9, %if.then483 ], [ %sksigners.01039, %sw.bb51 ], [ %sksigners.01039, %sw.bb57 ], [ %sksigners.01039, %sw.bb62 ], [ %sksigners.2, %land.lhs.true94 ], [ null, %land.lhs.true ], [ %sksigners.4, %land.lhs.true127 ], [ null, %land.lhs.true118 ]
  %key.4900 = phi %struct.evp_pkey_st* [ %key.4, %if.then555 ], [ null, %opthelp ], [ null, %sw.bb6 ], [ null, %land.lhs.true206 ], [ null, %if.then251 ], [ null, %land.lhs.true215 ], [ null, %while.end ], [ %key.3, %cleanup506 ], [ %key.3, %if.end546 ], [ %key.3, %if.then511 ], [ %key.3, %if.then483 ], [ null, %land.lhs.true118 ], [ null, %land.lhs.true127 ], [ null, %land.lhs.true ], [ null, %land.lhs.true94 ], [ null, %sw.bb62 ], [ null, %sw.bb57 ], [ null, %sw.bb51 ]
  %out.0899 = phi %struct.bio_st* [ %out.0, %if.then555 ], [ null, %opthelp ], [ null, %sw.bb6 ], [ null, %land.lhs.true206 ], [ null, %if.then251 ], [ null, %land.lhs.true215 ], [ null, %while.end ], [ %call377, %cleanup506 ], [ %call377, %if.end546 ], [ %call377, %if.then511 ], [ %call377, %if.then483 ], [ null, %land.lhs.true118 ], [ null, %land.lhs.true127 ], [ null, %land.lhs.true ], [ null, %land.lhs.true94 ], [ null, %sw.bb62 ], [ null, %sw.bb57 ], [ null, %sw.bb51 ]
  %in.0898 = phi %struct.bio_st* [ %in.0, %if.then555 ], [ null, %opthelp ], [ null, %sw.bb6 ], [ null, %land.lhs.true206 ], [ null, %if.then251 ], [ null, %land.lhs.true215 ], [ null, %while.end ], [ %call334, %cleanup506 ], [ %call334, %if.end546 ], [ %call334, %if.then511 ], [ %call334, %if.then483 ], [ null, %land.lhs.true118 ], [ null, %land.lhs.true127 ], [ null, %land.lhs.true ], [ null, %land.lhs.true94 ], [ null, %sw.bb62 ], [ null, %sw.bb57 ], [ null, %sw.bb51 ]
  %call557 = call fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef %encerts.1903) #6
  call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call557, void (i8*)* noundef bitcast (void (%struct.x509_st*)* @X509_free to void (i8*)*)) #5
  %72 = load %struct.stack_st_X509*, %struct.stack_st_X509** %other, align 8, !tbaa !3
  %call559 = call fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef %72) #6
  call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call559, void (i8*)* noundef bitcast (void (%struct.x509_st*)* @X509_free to void (i8*)*)) #5
  call void @X509_VERIFY_PARAM_free(%struct.X509_VERIFY_PARAM_st* noundef nonnull %call1) #5
  %call561 = call fastcc %struct.stack_st* @ossl_check_OPENSSL_STRING_sk_type(%struct.stack_st_OPENSSL_STRING* noundef %sksigners.10901) #6
  call void @OPENSSL_sk_free(%struct.stack_st* noundef %call561) #5
  %call562 = call fastcc %struct.stack_st* @ossl_check_OPENSSL_STRING_sk_type(%struct.stack_st_OPENSSL_STRING* noundef %skkeys.10902) #6
  call void @OPENSSL_sk_free(%struct.stack_st* noundef %call562) #5
  call void @X509_STORE_free(%struct.x509_store_st* noundef %store.1906) #5
  call void @X509_free(%struct.x509_st* noundef null) #5
  call void @X509_free(%struct.x509_st* noundef %recip.1904) #5
  call void @X509_free(%struct.x509_st* noundef %signer.3905) #5
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %key.4900) #5
  %73 = load %struct.evp_md_st*, %struct.evp_md_st** %sign_md, align 8, !tbaa !3
  call void @EVP_MD_free(%struct.evp_md_st* noundef %73) #5
  %74 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %cipher, align 8, !tbaa !3
  call void @EVP_CIPHER_free(%struct.evp_cipher_st* noundef %74) #5
  %75 = load %struct.pkcs7_st*, %struct.pkcs7_st** %p7, align 8, !tbaa !3
  call void @PKCS7_free(%struct.pkcs7_st* noundef %75) #5
  call void @release_engine(%struct.engine_st* noundef %e.0920) #5
  %call563 = call i32 @BIO_free(%struct.bio_st* noundef %in.0898) #5
  %76 = load %struct.bio_st*, %struct.bio_st** %indata, align 8, !tbaa !3
  %call564 = call i32 @BIO_free(%struct.bio_st* noundef %76) #5
  call void @BIO_free_all(%struct.bio_st* noundef %out.0899) #5
  %77 = load i8*, i8** %passin, align 8, !tbaa !3
  call void @CRYPTO_free(i8* noundef %77, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.202, i64 0, i64 0), i32 noundef 673) #5
  call void @NCONF_free(%struct.conf_st* noundef %conf.2907) #5
  br label %cleanup565

cleanup565:                                       ; preds = %entry, %if.end556
  %retval.0 = phi i32 [ %ret.1908, %if.end556 ], [ 1, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %8) #4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #4
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare dso_local %struct.ossl_lib_ctx_st* @app_get0_libctx() local_unnamed_addr #2

declare dso_local %struct.X509_VERIFY_PARAM_st* @X509_VERIFY_PARAM_new() local_unnamed_addr #2

declare dso_local i8* @opt_init(i32 noundef, i8** noundef, %struct.options_st* noundef) local_unnamed_addr #2

declare dso_local i32 @opt_next() local_unnamed_addr #2

declare dso_local i32 @BIO_printf(%struct.bio_st* noundef, i8* noundef, ...) local_unnamed_addr #2

declare dso_local void @opt_help(%struct.options_st* noundef) local_unnamed_addr #2

declare dso_local i32 @opt_format(i8* noundef, i64 noundef, i32* noundef) local_unnamed_addr #2

declare dso_local i8* @opt_arg() local_unnamed_addr #2

declare dso_local i32 @opt_rand(i32 noundef) local_unnamed_addr #2

declare dso_local i32 @opt_provider(i32 noundef) local_unnamed_addr #2

declare dso_local %struct.conf_st* @app_load_config_modules(i8* noundef) local_unnamed_addr #2

declare dso_local %struct.engine_st* @setup_engine_methods(i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare dso_local %struct.stack_st* @OPENSSL_sk_new_null() local_unnamed_addr #2

declare dso_local i32 @OPENSSL_sk_push(%struct.stack_st* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_OPENSSL_STRING_sk_type(%struct.stack_st_OPENSSL_STRING* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_OPENSSL_STRING* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare dso_local i8* @opt_unknown() local_unnamed_addr #2

declare dso_local i32 @opt_verify(i32 noundef, %struct.X509_VERIFY_PARAM_st* noundef) local_unnamed_addr #2

declare dso_local i32 @opt_num_rest() local_unnamed_addr #2

declare dso_local i8** @opt_rest() local_unnamed_addr #2

declare dso_local i32 @app_RAND_load() local_unnamed_addr #2

declare dso_local i32 @opt_md(i8* noundef, %struct.evp_md_st** noundef) local_unnamed_addr #2

declare dso_local i32 @opt_cipher_any(i8* noundef, %struct.evp_cipher_st** noundef) local_unnamed_addr #2

declare dso_local i32 @BIO_puts(%struct.bio_st* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local i32 @app_passwd(i8* noundef, i8* noundef, i8** noundef, i8** noundef) local_unnamed_addr #2

declare dso_local %struct.evp_cipher_st* @EVP_des_ede3_cbc() local_unnamed_addr #2

declare dso_local %struct.x509_st* @load_cert_pass(i8* noundef, i32 noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_X509* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare dso_local i32 @load_certs(i8* noundef, i32 noundef, %struct.stack_st_X509** noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local void @ERR_print_errors(%struct.bio_st* noundef) local_unnamed_addr #2

declare dso_local %struct.evp_pkey_st* @load_key(i8* noundef, i32 noundef, i32 noundef, i8* noundef, %struct.engine_st* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local %struct.bio_st* @bio_open_default(i8* noundef, i8 noundef signext, i32 noundef) local_unnamed_addr #2

declare dso_local %struct.pkcs7_st* @PKCS7_new_ex(%struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local i8* @app_get0_propq() local_unnamed_addr #2

declare dso_local %struct.pkcs7_st* @SMIME_read_PKCS7_ex(%struct.bio_st* noundef, %struct.bio_st** noundef, %struct.pkcs7_st** noundef) local_unnamed_addr #2

declare dso_local %struct.pkcs7_st* @PEM_read_bio_PKCS7(%struct.bio_st* noundef, %struct.pkcs7_st** noundef, i32 (i8*, i32, i32, i8*)* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local %struct.pkcs7_st* @d2i_PKCS7_bio(%struct.bio_st* noundef, %struct.pkcs7_st** noundef) local_unnamed_addr #2

declare dso_local i32 @BIO_free(%struct.bio_st* noundef) local_unnamed_addr #2

declare dso_local %struct.bio_st* @BIO_new_file(i8* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

declare dso_local %struct.x509_store_st* @setup_verify(i8* noundef, i32 noundef, i8* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local void @X509_STORE_set_verify_cb(%struct.x509_store_st* noundef, i32 (i32, %struct.x509_store_ctx_st*)* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @smime_cb(i32 noundef returned %ok, %struct.x509_store_ctx_st* noundef %ctx) #0 {
entry:
  %call = tail call i32 @X509_STORE_CTX_get_error(%struct.x509_store_ctx_st* noundef %ctx) #5
  %cmp.not = icmp eq i32 %call, 43
  br i1 %cmp.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %cmp1 = icmp ne i32 %call, 0
  %cmp2 = icmp ne i32 %ok, 2
  %or.cond = or i1 %cmp2, %cmp1
  br i1 %or.cond, label %cleanup, label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry
  tail call void @policies_print(%struct.x509_store_ctx_st* noundef %ctx) #5
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true, %if.end
  ret i32 %ok
}

declare dso_local i32 @X509_STORE_set1_param(%struct.x509_store_st* noundef, %struct.X509_VERIFY_PARAM_st* noundef) local_unnamed_addr #2

declare dso_local %struct.pkcs7_st* @PKCS7_encrypt_ex(%struct.stack_st_X509* noundef, %struct.bio_st* noundef, %struct.evp_cipher_st* noundef, i32 noundef, %struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local %struct.pkcs7_st* @PKCS7_sign_ex(%struct.x509_st* noundef, %struct.evp_pkey_st* noundef, %struct.stack_st_X509* noundef, %struct.bio_st* noundef, i32 noundef, %struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local i32 @OPENSSL_sk_num(%struct.stack_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_X509* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare dso_local i8* @OPENSSL_sk_value(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i32 @PKCS7_add_certificate(%struct.pkcs7_st* noundef, %struct.x509_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_OPENSSL_STRING_sk_type(%struct.stack_st_OPENSSL_STRING* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_OPENSSL_STRING* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare dso_local %struct.pkcs7_signer_info_st* @PKCS7_sign_add_signer(%struct.pkcs7_st* noundef, %struct.x509_st* noundef, %struct.evp_pkey_st* noundef, %struct.evp_md_st* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local void @X509_free(%struct.x509_st* noundef) #2

declare dso_local void @EVP_PKEY_free(%struct.evp_pkey_st* noundef) local_unnamed_addr #2

declare dso_local i32 @PKCS7_final(%struct.pkcs7_st* noundef, %struct.bio_st* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i32 @PKCS7_decrypt(%struct.pkcs7_st* noundef, %struct.evp_pkey_st* noundef, %struct.x509_st* noundef, %struct.bio_st* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i32 @PKCS7_verify(%struct.pkcs7_st* noundef, %struct.stack_st_X509* noundef, %struct.x509_store_st* noundef, %struct.bio_st* noundef, %struct.bio_st* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local %struct.stack_st_X509* @PKCS7_get0_signers(%struct.pkcs7_st* noundef, %struct.stack_st_X509* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @save_certs(i8* noundef %signerfile, %struct.stack_st_X509* noundef %signers) unnamed_addr #0 {
entry:
  %cmp = icmp eq i8* %signerfile, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call %struct.bio_st* @BIO_new_file(i8* noundef nonnull %signerfile, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.203, i64 0, i64 0)) #5
  %cmp1 = icmp eq %struct.bio_st* %call, null
  br i1 %cmp1, label %cleanup, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end
  %call4 = tail call fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef %signers) #6
  %call520 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call4) #5
  %cmp621 = icmp sgt i32 %call520, 0
  br i1 %cmp621, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %i.022 = phi i32 [ %inc, %for.body ], [ 0, %for.cond.preheader ]
  %call8 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call4, i32 noundef %i.022) #5
  %0 = bitcast i8* %call8 to %struct.x509_st*
  %call9 = tail call i32 @PEM_write_bio_X509(%struct.bio_st* noundef nonnull %call, %struct.x509_st* noundef %0) #5
  %inc = add nuw nsw i32 %i.022, 1
  %call5 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call4) #5
  %cmp6 = icmp slt i32 %inc, %call5
  br i1 %cmp6, label %for.body, label %for.end, !llvm.loop !14

for.end:                                          ; preds = %for.body, %for.cond.preheader
  %call10 = tail call i32 @BIO_free(%struct.bio_st* noundef nonnull %call) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %for.end
  %retval.0 = phi i32 [ 1, %for.end ], [ 1, %entry ], [ 0, %if.end ]
  ret i32 %retval.0
}

declare dso_local void @OPENSSL_sk_free(%struct.stack_st* noundef) local_unnamed_addr #2

declare dso_local i32 @PEM_write_bio_PKCS7(%struct.bio_st* noundef, %struct.pkcs7_st* noundef) local_unnamed_addr #2

declare dso_local i32 @SMIME_write_PKCS7(%struct.bio_st* noundef, %struct.pkcs7_st* noundef, %struct.bio_st* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i32 @PEM_write_bio_PKCS7_stream(%struct.bio_st* noundef, %struct.pkcs7_st* noundef, %struct.bio_st* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i32 @i2d_PKCS7_bio_stream(%struct.bio_st* noundef, %struct.pkcs7_st* noundef, %struct.bio_st* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local void @OPENSSL_sk_pop_free(%struct.stack_st* noundef, void (i8*)* noundef) local_unnamed_addr #2

declare dso_local void @X509_VERIFY_PARAM_free(%struct.X509_VERIFY_PARAM_st* noundef) local_unnamed_addr #2

declare dso_local void @X509_STORE_free(%struct.x509_store_st* noundef) local_unnamed_addr #2

declare dso_local void @EVP_MD_free(%struct.evp_md_st* noundef) local_unnamed_addr #2

declare dso_local void @EVP_CIPHER_free(%struct.evp_cipher_st* noundef) local_unnamed_addr #2

declare dso_local void @PKCS7_free(%struct.pkcs7_st* noundef) local_unnamed_addr #2

declare dso_local void @release_engine(%struct.engine_st* noundef) local_unnamed_addr #2

declare dso_local void @BIO_free_all(%struct.bio_st* noundef) local_unnamed_addr #2

declare dso_local void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local void @NCONF_free(%struct.conf_st* noundef) local_unnamed_addr #2

declare dso_local i32 @PEM_write_bio_X509(%struct.bio_st* noundef, %struct.x509_st* noundef) local_unnamed_addr #2

declare dso_local i32 @X509_STORE_CTX_get_error(%struct.x509_store_ctx_st* noundef) local_unnamed_addr #2

declare dso_local void @policies_print(%struct.x509_store_ctx_st* noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { nobuiltin nounwind "no-builtins" }
attributes #6 = { nobuiltin "no-builtins" }

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
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = distinct !{!11, !10}
!12 = distinct !{!12, !10}
!13 = distinct !{!13, !10}
!14 = distinct !{!14, !10}
