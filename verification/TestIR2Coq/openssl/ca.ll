; ModuleID = 'apps/ca.c'
source_filename = "apps/ca.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.options_st = type { i8*, i32, i32, i8* }
%struct.bio_st = type opaque
%struct.conf_st = type { %struct.conf_method_st*, i8*, %struct.lhash_st_CONF_VALUE*, i32, i32, i8*, %struct.ossl_lib_ctx_st* }
%struct.conf_method_st = type { i8*, %struct.conf_st* (%struct.conf_method_st*)*, i32 (%struct.conf_st*)*, i32 (%struct.conf_st*)*, i32 (%struct.conf_st*)*, i32 (%struct.conf_st*, %struct.bio_st*, i64*)*, i32 (%struct.conf_st*, %struct.bio_st*)*, i32 (%struct.conf_st*, i8)*, i32 (%struct.conf_st*, i8)*, i32 (%struct.conf_st*, i8*, i64*)* }
%struct.lhash_st_CONF_VALUE = type { %union.lh_CONF_VALUE_dummy }
%union.lh_CONF_VALUE_dummy = type { i8* }
%struct.ossl_lib_ctx_st = type opaque
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.bignum_st = type opaque
%struct.db_attr_st = type { i32 }
%struct.x509_st = type opaque
%struct.v3_ext_ctx = type { i32, %struct.x509_st*, %struct.x509_st*, %struct.X509_req_st*, %struct.X509_crl_st*, %struct.X509V3_CONF_METHOD_st*, i8*, %struct.evp_pkey_st* }
%struct.X509_req_st = type opaque
%struct.X509_crl_st = type opaque
%struct.X509V3_CONF_METHOD_st = type { i8* (i8*, i8*, i8*)*, %struct.stack_st_CONF_VALUE* (i8*, i8*)*, void (i8*, i8*)*, void (i8*, %struct.stack_st_CONF_VALUE*)* }
%struct.stack_st_CONF_VALUE = type opaque
%struct.evp_pkey_st = type opaque
%struct.stack_st_OPENSSL_STRING = type opaque
%struct.engine_st = type opaque
%struct.stack_st = type opaque
%struct.ca_db_st = type { %struct.db_attr_st, %struct.txt_db_st*, i8*, %struct.stat }
%struct.txt_db_st = type { i32, %struct.stack_st_OPENSSL_PSTRING*, %struct.lhash_st_OPENSSL_STRING**, i32 (i8**)**, i64, i64, i64, i8** }
%struct.stack_st_OPENSSL_PSTRING = type opaque
%struct.lhash_st_OPENSSL_STRING = type { %union.lh_OPENSSL_STRING_dummy }
%union.lh_OPENSSL_STRING_dummy = type { i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.x509_revoked_st = type opaque
%struct.asn1_string_st = type { i32, i32, i8*, i64 }
%struct.stack_st_X509 = type opaque
%struct.X509_name_st = type opaque
%struct.asn1_object_st = type opaque
%struct.Netscape_spki_st = type { %struct.Netscape_spkac_st*, %struct.X509_algor_st, %struct.asn1_string_st* }
%struct.Netscape_spkac_st = type { %struct.X509_pubkey_st*, %struct.asn1_string_st* }
%struct.X509_pubkey_st = type opaque
%struct.X509_algor_st = type { %struct.asn1_object_st*, %struct.asn1_type_st* }
%struct.asn1_type_st = type { i32, %union.anon }
%union.anon = type { i8* }
%struct.X509_name_entry_st = type opaque
%struct.evp_md_st = type opaque

@OPT_HELP_STR = external dso_local constant [0 x i8], align 1
@.str = private unnamed_addr constant [34 x i8] c"Usage: %s [options] [certreq...]\0A\00", align 1
@OPT_SECTION_STR = external dso_local constant [0 x i8], align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"General options:\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Display this summary\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"verbose\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"Verbose output during processing\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"outdir\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"Where to put output cert\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"The input cert request(s)\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"inform\00", align 1
@.str.11 = private unnamed_addr constant [43 x i8] c"CSR input format (DER or PEM); default PEM\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"infiles\00", align 1
@.str.13 = private unnamed_addr constant [39 x i8] c"The last argument, requests to process\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@.str.15 = private unnamed_addr constant [32 x i8] c"Where to put the output file(s)\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"dateopt\00", align 1
@.str.17 = private unnamed_addr constant [75 x i8] c"Datetime format used for printing. (rfc_822/iso_8601). Default is rfc_822.\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"notext\00", align 1
@.str.19 = private unnamed_addr constant [39 x i8] c"Do not print the generated certificate\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"batch\00", align 1
@.str.21 = private unnamed_addr constant [20 x i8] c"Don't ask questions\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"msie_hack\00", align 1
@.str.23 = private unnamed_addr constant [51 x i8] c"msie modifications to handle all Universal Strings\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"ss_cert\00", align 1
@.str.25 = private unnamed_addr constant [41 x i8] c"File contains a self signed cert to sign\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"spkac\00", align 1
@.str.27 = private unnamed_addr constant [53 x i8] c"File contains DN and signed public key and challenge\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"engine\00", align 1
@.str.29 = private unnamed_addr constant [39 x i8] c"Use engine, possibly a hardware device\00", align 1
@.str.30 = private unnamed_addr constant [24 x i8] c"Configuration options:\0A\00", align 1
@.str.31 = private unnamed_addr constant [7 x i8] c"config\00", align 1
@.str.32 = private unnamed_addr constant [14 x i8] c"A config file\00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.34 = private unnamed_addr constant [36 x i8] c"The particular CA definition to use\00", align 1
@.str.35 = private unnamed_addr constant [8 x i8] c"section\00", align 1
@.str.36 = private unnamed_addr constant [19 x i8] c"An alias for -name\00", align 1
@.str.37 = private unnamed_addr constant [7 x i8] c"policy\00", align 1
@.str.38 = private unnamed_addr constant [27 x i8] c"The CA 'policy' to support\00", align 1
@.str.39 = private unnamed_addr constant [22 x i8] c"Certificate options:\0A\00", align 1
@.str.40 = private unnamed_addr constant [5 x i8] c"subj\00", align 1
@.str.41 = private unnamed_addr constant [37 x i8] c"Use arg instead of request's subject\00", align 1
@.str.42 = private unnamed_addr constant [5 x i8] c"utf8\00", align 1
@.str.43 = private unnamed_addr constant [41 x i8] c"Input characters are UTF8; default ASCII\00", align 1
@.str.44 = private unnamed_addr constant [14 x i8] c"create_serial\00", align 1
@.str.45 = private unnamed_addr constant [52 x i8] c"If reading serial fails, create a new random serial\00", align 1
@.str.46 = private unnamed_addr constant [12 x i8] c"rand_serial\00", align 1
@.str.47 = private unnamed_addr constant [47 x i8] c"Always create a random serial; do not store it\00", align 1
@.str.48 = private unnamed_addr constant [15 x i8] c"multivalue-rdn\00", align 1
@.str.49 = private unnamed_addr constant [52 x i8] c"Deprecated; multi-valued RDNs support is always on.\00", align 1
@.str.50 = private unnamed_addr constant [10 x i8] c"startdate\00", align 1
@.str.51 = private unnamed_addr constant [30 x i8] c"Cert notBefore, YYMMDDHHMMSSZ\00", align 1
@.str.52 = private unnamed_addr constant [8 x i8] c"enddate\00", align 1
@.str.53 = private unnamed_addr constant [46 x i8] c"YYMMDDHHMMSSZ cert notAfter (overrides -days)\00", align 1
@.str.54 = private unnamed_addr constant [5 x i8] c"days\00", align 1
@.str.55 = private unnamed_addr constant [39 x i8] c"Number of days to certify the cert for\00", align 1
@.str.56 = private unnamed_addr constant [11 x i8] c"extensions\00", align 1
@.str.57 = private unnamed_addr constant [50 x i8] c"Extension section (override value in config file)\00", align 1
@.str.58 = private unnamed_addr constant [8 x i8] c"extfile\00", align 1
@.str.59 = private unnamed_addr constant [49 x i8] c"Configuration file with X509v3 extensions to add\00", align 1
@.str.60 = private unnamed_addr constant [11 x i8] c"preserveDN\00", align 1
@.str.61 = private unnamed_addr constant [22 x i8] c"Don't re-order the DN\00", align 1
@.str.62 = private unnamed_addr constant [10 x i8] c"noemailDN\00", align 1
@.str.63 = private unnamed_addr constant [36 x i8] c"Don't add the EMAIL field to the DN\00", align 1
@.str.64 = private unnamed_addr constant [18 x i8] c"Signing options:\0A\00", align 1
@.str.65 = private unnamed_addr constant [3 x i8] c"md\00", align 1
@.str.66 = private unnamed_addr constant [30 x i8] c"Digest to use, such as sha256\00", align 1
@.str.67 = private unnamed_addr constant [8 x i8] c"keyfile\00", align 1
@.str.68 = private unnamed_addr constant [19 x i8] c"The CA private key\00", align 1
@.str.69 = private unnamed_addr constant [8 x i8] c"keyform\00", align 1
@.str.70 = private unnamed_addr constant [55 x i8] c"Private key file format (ENGINE, other values ignored)\00", align 1
@.str.71 = private unnamed_addr constant [7 x i8] c"passin\00", align 1
@.str.72 = private unnamed_addr constant [43 x i8] c"Key and cert input file pass phrase source\00", align 1
@.str.73 = private unnamed_addr constant [4 x i8] c"key\00", align 1
@.str.74 = private unnamed_addr constant [78 x i8] c"Key to decrypt the private key or cert files if encrypted. Better use -passin\00", align 1
@.str.75 = private unnamed_addr constant [5 x i8] c"cert\00", align 1
@.str.76 = private unnamed_addr constant [12 x i8] c"The CA cert\00", align 1
@.str.77 = private unnamed_addr constant [9 x i8] c"certform\00", align 1
@.str.78 = private unnamed_addr constant [54 x i8] c"Certificate input format (DER/PEM/P12); has no effect\00", align 1
@.str.79 = private unnamed_addr constant [9 x i8] c"selfsign\00", align 1
@.str.80 = private unnamed_addr constant [44 x i8] c"Sign a cert with the key associated with it\00", align 1
@.str.81 = private unnamed_addr constant [7 x i8] c"sigopt\00", align 1
@.str.82 = private unnamed_addr constant [32 x i8] c"Signature parameter in n:v form\00", align 1
@.str.83 = private unnamed_addr constant [7 x i8] c"vfyopt\00", align 1
@.str.84 = private unnamed_addr constant [35 x i8] c"Verification parameter in n:v form\00", align 1
@.str.85 = private unnamed_addr constant [21 x i8] c"Revocation options:\0A\00", align 1
@.str.86 = private unnamed_addr constant [7 x i8] c"gencrl\00", align 1
@.str.87 = private unnamed_addr constant [19 x i8] c"Generate a new CRL\00", align 1
@.str.88 = private unnamed_addr constant [6 x i8] c"valid\00", align 1
@.str.89 = private unnamed_addr constant [63 x i8] c"Add a Valid(not-revoked) DB entry about a cert (given in file)\00", align 1
@.str.90 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@.str.91 = private unnamed_addr constant [42 x i8] c"Shows cert status given the serial number\00", align 1
@.str.92 = private unnamed_addr constant [9 x i8] c"updatedb\00", align 1
@.str.93 = private unnamed_addr constant [28 x i8] c"Updates db for expired cert\00", align 1
@.str.94 = private unnamed_addr constant [8 x i8] c"crlexts\00", align 1
@.str.95 = private unnamed_addr constant [54 x i8] c"CRL extension section (override value in config file)\00", align 1
@.str.96 = private unnamed_addr constant [11 x i8] c"crl_reason\00", align 1
@.str.97 = private unnamed_addr constant [18 x i8] c"revocation reason\00", align 1
@.str.98 = private unnamed_addr constant [9 x i8] c"crl_hold\00", align 1
@.str.99 = private unnamed_addr constant [72 x i8] c"the hold instruction, an OID. Sets revocation reason to certificateHold\00", align 1
@.str.100 = private unnamed_addr constant [15 x i8] c"crl_compromise\00", align 1
@.str.101 = private unnamed_addr constant [71 x i8] c"sets compromise time to val and the revocation reason to keyCompromise\00", align 1
@.str.102 = private unnamed_addr constant [18 x i8] c"crl_CA_compromise\00", align 1
@.str.103 = private unnamed_addr constant [70 x i8] c"sets compromise time to val and the revocation reason to CACompromise\00", align 1
@.str.104 = private unnamed_addr constant [15 x i8] c"crl_lastupdate\00", align 1
@.str.105 = private unnamed_addr constant [71 x i8] c"Sets the CRL lastUpdate time to val (YYMMDDHHMMSSZ or YYYYMMDDHHMMSSZ)\00", align 1
@.str.106 = private unnamed_addr constant [15 x i8] c"crl_nextupdate\00", align 1
@.str.107 = private unnamed_addr constant [71 x i8] c"Sets the CRL nextUpdate time to val (YYMMDDHHMMSSZ or YYYYMMDDHHMMSSZ)\00", align 1
@.str.108 = private unnamed_addr constant [8 x i8] c"crldays\00", align 1
@.str.109 = private unnamed_addr constant [31 x i8] c"Days until the next CRL is due\00", align 1
@.str.110 = private unnamed_addr constant [9 x i8] c"crlhours\00", align 1
@.str.111 = private unnamed_addr constant [32 x i8] c"Hours until the next CRL is due\00", align 1
@.str.112 = private unnamed_addr constant [7 x i8] c"crlsec\00", align 1
@.str.113 = private unnamed_addr constant [34 x i8] c"Seconds until the next CRL is due\00", align 1
@.str.114 = private unnamed_addr constant [7 x i8] c"revoke\00", align 1
@.str.115 = private unnamed_addr constant [30 x i8] c"Revoke a cert (given in file)\00", align 1
@.str.116 = private unnamed_addr constant [23 x i8] c"Random state options:\0A\00", align 1
@.str.117 = private unnamed_addr constant [5 x i8] c"rand\00", align 1
@.str.118 = private unnamed_addr constant [56 x i8] c"Load the given file(s) into the random number generator\00", align 1
@.str.119 = private unnamed_addr constant [10 x i8] c"writerand\00", align 1
@.str.120 = private unnamed_addr constant [40 x i8] c"Write random data to the specified file\00", align 1
@.str.121 = private unnamed_addr constant [19 x i8] c"Provider options:\0A\00", align 1
@.str.122 = private unnamed_addr constant [14 x i8] c"provider-path\00", align 1
@.str.123 = private unnamed_addr constant [68 x i8] c"Provider load path (must be before 'provider' argument if required)\00", align 1
@.str.124 = private unnamed_addr constant [9 x i8] c"provider\00", align 1
@.str.125 = private unnamed_addr constant [51 x i8] c"Provider to load (can be specified multiple times)\00", align 1
@.str.126 = private unnamed_addr constant [10 x i8] c"propquery\00", align 1
@.str.127 = private unnamed_addr constant [45 x i8] c"Property query used when fetching algorithms\00", align 1
@OPT_PARAM_STR = external dso_local constant [0 x i8], align 1
@.str.128 = private unnamed_addr constant [13 x i8] c"Parameters:\0A\00", align 1
@.str.129 = private unnamed_addr constant [8 x i8] c"certreq\00", align 1
@.str.130 = private unnamed_addr constant [45 x i8] c"Certificate requests to be signed (optional)\00", align 1
@ca_options = dso_local constant [71 x %struct.options_st] [%struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_HELP_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i32 3, i32 45, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i32 26, i32 47, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i32 0, i32 0), i32 22, i32 60, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0), i32 23, i32 70, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.11, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0), i32 40, i32 45, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.13, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i32 0, i32 0), i32 24, i32 62, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.15, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i32 0, i32 0), i32 25, i32 115, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.17, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i32 0, i32 0), i32 29, i32 45, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.19, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0), i32 30, i32 45, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.21, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i32 0, i32 0), i32 34, i32 45, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.23, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i32 0, i32 0), i32 41, i32 60, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.25, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i32 0, i32 0), i32 42, i32 60, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.27, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i32 0, i32 0), i32 2, i32 115, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.29, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.30, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i32 0, i32 0), i32 4, i32 115, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.32, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i32 0, i32 0), i32 5, i32 115, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.34, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.35, i32 0, i32 0), i32 5, i32 115, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.36, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.37, i32 0, i32 0), i32 14, i32 115, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.38, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.39, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.40, i32 0, i32 0), i32 6, i32 115, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.41, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i32 0, i32 0), i32 7, i32 45, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.43, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.44, i32 0, i32 0), i32 8, i32 45, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.45, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.46, i32 0, i32 0), i32 50, i32 45, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.47, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.48, i32 0, i32 0), i32 9, i32 45, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.49, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.50, i32 0, i32 0), i32 10, i32 115, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.51, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.52, i32 0, i32 0), i32 11, i32 115, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.53, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.54, i32 0, i32 0), i32 12, i32 112, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.55, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.56, i32 0, i32 0), i32 45, i32 115, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.57, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.58, i32 0, i32 0), i32 46, i32 60, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.59, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.60, i32 0, i32 0), i32 31, i32 45, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.61, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i32 0, i32 0), i32 32, i32 45, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.63, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.64, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.65, i32 0, i32 0), i32 13, i32 115, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.66, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.67, i32 0, i32 0), i32 15, i32 115, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.68, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.69, i32 0, i32 0), i32 16, i32 102, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.70, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.71, i32 0, i32 0), i32 17, i32 115, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.72, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.73, i32 0, i32 0), i32 18, i32 115, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.74, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.75, i32 0, i32 0), i32 19, i32 60, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.76, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.77, i32 0, i32 0), i32 20, i32 70, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.78, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.79, i32 0, i32 0), i32 21, i32 45, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.80, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.81, i32 0, i32 0), i32 28, i32 115, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.82, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.83, i32 0, i32 0), i32 27, i32 115, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.84, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.85, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.86, i32 0, i32 0), i32 33, i32 45, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.87, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.88, i32 0, i32 0), i32 44, i32 115, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.89, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.90, i32 0, i32 0), i32 47, i32 115, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.91, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.92, i32 0, i32 0), i32 48, i32 45, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.93, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.94, i32 0, i32 0), i32 49, i32 115, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.95, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.96, i32 0, i32 0), i32 1605, i32 115, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.97, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.98, i32 0, i32 0), i32 1606, i32 115, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.99, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.100, i32 0, i32 0), i32 1607, i32 115, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.101, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.102, i32 0, i32 0), i32 1608, i32 115, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.103, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.104, i32 0, i32 0), i32 35, i32 115, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.105, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.106, i32 0, i32 0), i32 36, i32 115, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.107, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.108, i32 0, i32 0), i32 37, i32 112, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.109, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.110, i32 0, i32 0), i32 38, i32 112, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.111, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.112, i32 0, i32 0), i32 39, i32 112, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.113, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.114, i32 0, i32 0), i32 43, i32 60, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.115, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.116, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.117, i32 0, i32 0), i32 1501, i32 115, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.118, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.119, i32 0, i32 0), i32 1502, i32 62, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.120, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.121, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.122, i32 0, i32 0), i32 1602, i32 115, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.123, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.124, i32 0, i32 0), i32 1601, i32 115, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.125, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.126, i32 0, i32 0), i32 1603, i32 115, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.127, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_PARAM_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.128, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.129, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.130, i32 0, i32 0) }, %struct.options_st zeroinitializer], align 16
@default_config_file = external dso_local local_unnamed_addr global i8*, align 8
@bio_err = external dso_local local_unnamed_addr global %struct.bio_st*, align 8
@.str.131 = private unnamed_addr constant [28 x i8] c"%s: Use -help for summary.\0A\00", align 1
@preserve = internal unnamed_addr global i1 false, align 4
@msie_hack = internal unnamed_addr global i1 false, align 4
@.str.132 = private unnamed_addr constant [3 x i8] c"ca\00", align 1
@.str.133 = private unnamed_addr constant [11 x i8] c"default_ca\00", align 1
@.str.134 = private unnamed_addr constant [9 x i8] c"oid_file\00", align 1
@.str.135 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.136 = private unnamed_addr constant [12 x i8] c"string_mask\00", align 1
@.str.137 = private unnamed_addr constant [39 x i8] c"Invalid global string mask setting %s\0A\00", align 1
@.str.138 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.139 = private unnamed_addr constant [15 x i8] c"unique_subject\00", align 1
@.str.140 = private unnamed_addr constant [9 x i8] c"database\00", align 1
@.str.141 = private unnamed_addr constant [57 x i8] c"Problem with index file: %s (could not load/parse file)\0A\00", align 1
@.str.142 = private unnamed_addr constant [28 x i8] c"Error verifying serial %s!\0A\00", align 1
@.str.143 = private unnamed_addr constant [12 x i8] c"private_key\00", align 1
@.str.144 = private unnamed_addr constant [24 x i8] c"Error getting password\0A\00", align 1
@.str.145 = private unnamed_addr constant [15 x i8] c"CA private key\00", align 1
@.str.146 = private unnamed_addr constant [12 x i8] c"certificate\00", align 1
@.str.147 = private unnamed_addr constant [15 x i8] c"CA certificate\00", align 1
@.str.148 = private unnamed_addr constant [48 x i8] c"CA certificate and CA private key do not match\0A\00", align 1
@.str.149 = private unnamed_addr constant [9 x i8] c"preserve\00", align 1
@.str.150 = private unnamed_addr constant [9 x i8] c"name_opt\00", align 1
@.str.151 = private unnamed_addr constant [28 x i8] c"Invalid name options: \22%s\22\0A\00", align 1
@.str.152 = private unnamed_addr constant [9 x i8] c"cert_opt\00", align 1
@.str.153 = private unnamed_addr constant [35 x i8] c"Invalid certificate options: \22%s\22\0A\00", align 1
@.str.154 = private unnamed_addr constant [16 x i8] c"copy_extensions\00", align 1
@.str.155 = private unnamed_addr constant [37 x i8] c"Invalid extension copy option: \22%s\22\0A\00", align 1
@.str.156 = private unnamed_addr constant [14 x i8] c"new_certs_dir\00", align 1
@.str.157 = private unnamed_addr constant [75 x i8] c"there needs to be defined a directory for new certificate to be placed in\0A\00", align 1
@.str.158 = private unnamed_addr constant [27 x i8] c"%s: %s is not a directory\0A\00", align 1
@.str.159 = private unnamed_addr constant [54 x i8] c"entry %d: not revoked yet, but has a revocation date\0A\00", align 1
@.str.160 = private unnamed_addr constant [14 x i8] c" in entry %d\0A\00", align 1
@.str.161 = private unnamed_addr constant [31 x i8] c"entry %d: invalid expiry date\0A\00", align 1
@.str.162 = private unnamed_addr constant [41 x i8] c"entry %d: bad serial number length (%d)\0A\00", align 1
@.str.163 = private unnamed_addr constant [46 x i8] c"entry %d: bad char 0%o '%c' in serial number\0A\00", align 1
@bio_out = external dso_local local_unnamed_addr global %struct.bio_st*, align 8
@.str.164 = private unnamed_addr constant [37 x i8] c"%d entries loaded from the database\0A\00", align 1
@.str.165 = private unnamed_addr constant [18 x i8] c"generating index\0A\00", align 1
@.str.166 = private unnamed_addr constant [17 x i8] c"Updating %s ...\0A\00", align 1
@.str.167 = private unnamed_addr constant [16 x i8] c"Malloc failure\0A\00", align 1
@.str.168 = private unnamed_addr constant [34 x i8] c"No entries found to mark expired\0A\00", align 1
@.str.169 = private unnamed_addr constant [4 x i8] c"new\00", align 1
@.str.170 = private unnamed_addr constant [4 x i8] c"old\00", align 1
@.str.171 = private unnamed_addr constant [36 x i8] c"Done. %d entries marked as expired\0A\00", align 1
@extfile_conf = internal unnamed_addr global %struct.conf_st* null, align 8
@.str.172 = private unnamed_addr constant [40 x i8] c"Successfully loaded extensions file %s\0A\00", align 1
@.str.173 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.174 = private unnamed_addr constant [6 x i8] c"UNDEF\00", align 1
@.str.175 = private unnamed_addr constant [11 x i8] c"default_md\00", align 1
@.str.176 = private unnamed_addr constant [19 x i8] c"no default digest\0A\00", align 1
@.str.177 = private unnamed_addr constant [12 x i8] c"email_in_dn\00", align 1
@.str.178 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.179 = private unnamed_addr constant [22 x i8] c"message digest is %s\0A\00", align 1
@.str.180 = private unnamed_addr constant [14 x i8] c"policy is %s\0A\00", align 1
@.str.181 = private unnamed_addr constant [7 x i8] c"serial\00", align 1
@.str.182 = private unnamed_addr constant [63 x i8] c"Error checking certificate extensions from extfile section %s\0A\00", align 1
@.str.183 = private unnamed_addr constant [16 x i8] c"x509_extensions\00", align 1
@.str.184 = private unnamed_addr constant [56 x i8] c"Error checking certificate extension config section %s\0A\00", align 1
@.str.185 = private unnamed_addr constant [18 x i8] c"default_startdate\00", align 1
@.str.186 = private unnamed_addr constant [70 x i8] c"start date is invalid, it should be YYMMDDHHMMSSZ or YYYYMMDDHHMMSSZ\0A\00", align 1
@.str.187 = private unnamed_addr constant [6 x i8] c"today\00", align 1
@.str.188 = private unnamed_addr constant [16 x i8] c"default_enddate\00", align 1
@.str.189 = private unnamed_addr constant [68 x i8] c"end date is invalid, it should be YYMMDDHHMMSSZ or YYYYMMDDHHMMSSZ\0A\00", align 1
@.str.190 = private unnamed_addr constant [13 x i8] c"default_days\00", align 1
@.str.191 = private unnamed_addr constant [44 x i8] c"cannot lookup how many days to certify for\0A\00", align 1
@.str.192 = private unnamed_addr constant [32 x i8] c"error generating serial number\0A\00", align 1
@.str.193 = private unnamed_addr constant [35 x i8] c"error while loading serial number\0A\00", align 1
@.str.194 = private unnamed_addr constant [26 x i8] c"next serial number is 00\0A\00", align 1
@.str.195 = private unnamed_addr constant [26 x i8] c"next serial number is %s\0A\00", align 1
@.str.196 = private unnamed_addr constant [10 x i8] c"apps/ca.c\00", align 1
@.str.197 = private unnamed_addr constant [33 x i8] c"unable to find 'section' for %s\0A\00", align 1
@.str.198 = private unnamed_addr constant [27 x i8] c"Memory allocation failure\0A\00", align 1
@.str.199 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.200 = private unnamed_addr constant [60 x i8] c"\0A%d out of %d certificate requests certified, commit? [y/n]\00", align 1
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.201 = private unnamed_addr constant [35 x i8] c"CERTIFICATION CANCELED: I/O error\0A\00", align 1
@.str.202 = private unnamed_addr constant [24 x i8] c"CERTIFICATION CANCELED\0A\00", align 1
@.str.203 = private unnamed_addr constant [40 x i8] c"Write out database with %d new entries\0A\00", align 1
@.str.204 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.205 = private unnamed_addr constant [26 x i8] c"writing new certificates\0A\00", align 1
@.str.206 = private unnamed_addr constant [32 x i8] c"certificate file name too long\0A\00", align 1
@ca_main.HEX_DIGITS = internal unnamed_addr constant [17 x i8] c"0123456789ABCDEF\00", align 16
@.str.207 = private unnamed_addr constant [12 x i8] c"writing %s\0A\00", align 1
@.str.208 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.209 = private unnamed_addr constant [19 x i8] c"Data Base Updated\0A\00", align 1
@.str.210 = private unnamed_addr constant [15 x i8] c"crl_extensions\00", align 1
@.str.211 = private unnamed_addr constant [41 x i8] c"Error checking CRL extension section %s\0A\00", align 1
@.str.212 = private unnamed_addr constant [10 x i8] c"crlnumber\00", align 1
@.str.213 = private unnamed_addr constant [32 x i8] c"error while loading CRL number\0A\00", align 1
@.str.214 = private unnamed_addr constant [17 x i8] c"default_crl_days\00", align 1
@.str.215 = private unnamed_addr constant [18 x i8] c"default_crl_hours\00", align 1
@.str.216 = private unnamed_addr constant [53 x i8] c"cannot lookup how long until the next CRL is issued\0A\00", align 1
@.str.217 = private unnamed_addr constant [12 x i8] c"making CRL\0A\00", align 1
@.str.218 = private unnamed_addr constant [30 x i8] c"error setting CRL lastUpdate\0A\00", align 1
@.str.219 = private unnamed_addr constant [30 x i8] c"error setting CRL nextUpdate\0A\00", align 1
@.str.220 = private unnamed_addr constant [13 x i8] c"signing CRL\0A\00", align 1
@.str.221 = private unnamed_addr constant [45 x i8] c"Error adding CRL extensions from section %s\0A\00", align 1
@.str.222 = private unnamed_addr constant [16 x i8] c"no input files\0A\00", align 1
@.str.223 = private unnamed_addr constant [26 x i8] c"certificate to be revoked\00", align 1
@.str.224 = private unnamed_addr constant [27 x i8] c"memory allocation failure\0A\00", align 1
@.str.225 = private unnamed_addr constant [28 x i8] c"invalid revocation date %s\0A\00", align 1
@.str.226 = private unnamed_addr constant [24 x i8] c"invalid reason code %s\0A\00", align 1
@.str.227 = private unnamed_addr constant [26 x i8] c"missing hold instruction\0A\00", align 1
@.str.228 = private unnamed_addr constant [30 x i8] c"invalid object identifier %s\0A\00", align 1
@.str.229 = private unnamed_addr constant [26 x i8] c"missing compromised time\0A\00", align 1
@.str.230 = private unnamed_addr constant [29 x i8] c"invalid compromised time %s\0A\00", align 1
@.str.231 = private unnamed_addr constant [35 x i8] c"variable lookup failed for %s::%s\0A\00", align 1
@.str.232 = private unnamed_addr constant [20 x i8] c"certificate request\00", align 1
@.str.233 = private unnamed_addr constant [28 x i8] c"Error unpacking public key\0A\00", align 1
@.str.234 = private unnamed_addr constant [46 x i8] c"Check that the request matches the signature\0A\00", align 1
@.str.235 = private unnamed_addr constant [53 x i8] c"Certificate request and CA private key do not match\0A\00", align 1
@.str.236 = private unnamed_addr constant [36 x i8] c"Signature verification problems...\0A\00", align 1
@.str.237 = private unnamed_addr constant [49 x i8] c"Signature did not match the certificate request\0A\00", align 1
@.str.238 = private unnamed_addr constant [14 x i8] c"Signature ok\0A\00", align 1
@.str.239 = private unnamed_addr constant [8 x i8] c"subject\00", align 1
@.str.240 = private unnamed_addr constant [48 x i8] c"The Subject's Distinguished Name is as follows\0A\00", align 1
@.str.241 = private unnamed_addr constant [50 x i8] c"\0AemailAddress type needs to be of type IA5STRING\0A\00", align 1
@.str.242 = private unnamed_addr constant [69 x i8] c"\0AThe string contains characters that are illegal for the ASN.1 type\0A\00", align 1
@.str.243 = private unnamed_addr constant [50 x i8] c"%s:unknown object type in 'policy' configuration\0A\00", align 1
@.str.244 = private unnamed_addr constant [9 x i8] c"optional\00", align 1
@.str.245 = private unnamed_addr constant [9 x i8] c"supplied\00", align 1
@.str.246 = private unnamed_addr constant [52 x i8] c"The %s field needed to be supplied and was missing\0A\00", align 1
@.str.247 = private unnamed_addr constant [6 x i8] c"match\00", align 1
@.str.248 = private unnamed_addr constant [36 x i8] c"The mandatory %s field was missing\0A\00", align 1
@.str.249 = private unnamed_addr constant [82 x i8] c"The %s field does not exist in the CA certificate,\0Athe 'policy' is misconfigured\0A\00", align 1
@.str.250 = private unnamed_addr constant [76 x i8] c"The %s field is different between\0ACA certificate (%s) and the request (%s)\0A\00", align 1
@.str.251 = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@.str.252 = private unnamed_addr constant [43 x i8] c"%s:invalid type in 'policy' configuration\0A\00", align 1
@.str.253 = private unnamed_addr constant [67 x i8] c"Everything appears to be ok, creating and signing the certificate\0A\00", align 1
@.str.254 = private unnamed_addr constant [32 x i8] c"Extra configuration file found\0A\00", align 1
@.str.255 = private unnamed_addr constant [61 x i8] c"Error adding certificate extensions from extfile section %s\0A\00", align 1
@.str.256 = private unnamed_addr constant [42 x i8] c"Successfully added extensions from file.\0A\00", align 1
@.str.257 = private unnamed_addr constant [60 x i8] c"Error adding certificate extensions from config section %s\0A\00", align 1
@.str.258 = private unnamed_addr constant [43 x i8] c"Successfully added extensions from config\0A\00", align 1
@.str.259 = private unnamed_addr constant [39 x i8] c"ERROR: adding extensions from request\0A\00", align 1
@.str.260 = private unnamed_addr constant [67 x i8] c"The subject name appears to be ok, checking data base for clashes\0A\00", align 1
@.str.261 = private unnamed_addr constant [3 x i8] c"00\00", align 1
@.str.262 = private unnamed_addr constant [45 x i8] c"ERROR:There is already a certificate for %s\0A\00", align 1
@.str.263 = private unnamed_addr constant [49 x i8] c"ERROR:Serial number %s has already been issued,\0A\00", align 1
@.str.264 = private unnamed_addr constant [53 x i8] c"      check the database/serial_file for corruption\0A\00", align 1
@.str.265 = private unnamed_addr constant [46 x i8] c"The matching entry has the following details\0A\00", align 1
@.str.266 = private unnamed_addr constant [8 x i8] c"Expired\00", align 1
@.str.267 = private unnamed_addr constant [8 x i8] c"Revoked\00", align 1
@.str.268 = private unnamed_addr constant [6 x i8] c"Valid\00", align 1
@.str.269 = private unnamed_addr constant [32 x i8] c"\0Ainvalid type, Data base error\0A\00", align 1
@.str.270 = private unnamed_addr constant [19 x i8] c"Type          :%s\0A\00", align 1
@.str.271 = private unnamed_addr constant [6 x i8] c"undef\00", align 1
@.str.272 = private unnamed_addr constant [19 x i8] c"Was revoked on:%s\0A\00", align 1
@.str.273 = private unnamed_addr constant [19 x i8] c"Expires on    :%s\0A\00", align 1
@.str.274 = private unnamed_addr constant [19 x i8] c"Serial Number :%s\0A\00", align 1
@.str.275 = private unnamed_addr constant [19 x i8] c"File name     :%s\0A\00", align 1
@.str.276 = private unnamed_addr constant [19 x i8] c"Subject Name  :%s\0A\00", align 1
@.str.277 = private unnamed_addr constant [22 x i8] c"Certificate Details:\0A\00", align 1
@.str.278 = private unnamed_addr constant [38 x i8] c"Certificate is to be certified until \00", align 1
@.str.279 = private unnamed_addr constant [12 x i8] c" (%ld days)\00", align 1
@.str.280 = private unnamed_addr constant [29 x i8] c"Sign the certificate? [y/n]:\00", align 1
@.str.281 = private unnamed_addr constant [46 x i8] c"CERTIFICATE WILL NOT BE CERTIFIED: I/O error\0A\00", align 1
@.str.282 = private unnamed_addr constant [35 x i8] c"CERTIFICATE WILL NOT BE CERTIFIED\0A\00", align 1
@.str.283 = private unnamed_addr constant [2 x i8] c"V\00", align 1
@.str.284 = private unnamed_addr constant [12 x i8] c"row expdate\00", align 1
@.str.285 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.286 = private unnamed_addr constant [10 x i8] c"row space\00", align 1
@.str.287 = private unnamed_addr constant [27 x i8] c"failed to update database\0A\00", align 1
@.str.288 = private unnamed_addr constant [25 x i8] c"TXT_DB error number %ld\0A\00", align 1
@.str.289 = private unnamed_addr constant [12 x i8] c"PRINTABLE:'\00", align 1
@.str.290 = private unnamed_addr constant [12 x i8] c"T61STRING:'\00", align 1
@.str.291 = private unnamed_addr constant [12 x i8] c"IA5STRING:'\00", align 1
@.str.292 = private unnamed_addr constant [18 x i8] c"UNIVERSALSTRING:'\00", align 1
@.str.293 = private unnamed_addr constant [12 x i8] c"ASN.1 %2d:'\00", align 1
@.str.294 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.295 = private unnamed_addr constant [8 x i8] c"\\0x%02X\00", align 1
@.str.296 = private unnamed_addr constant [3 x i8] c"^?\00", align 1
@.str.297 = private unnamed_addr constant [4 x i8] c"^%c\00", align 1
@.str.298 = private unnamed_addr constant [3 x i8] c"'\0A\00", align 1
@.str.299 = private unnamed_addr constant [21 x i8] c"template certificate\00", align 1
@.str.300 = private unnamed_addr constant [28 x i8] c"error unpacking public key\0A\00", align 1
@.str.301 = private unnamed_addr constant [37 x i8] c"Signature verification problems....\0A\00", align 1
@.str.302 = private unnamed_addr constant [41 x i8] c"Signature did not match the certificate\0A\00", align 1
@.str.303 = private unnamed_addr constant [25 x i8] c"error on line %ld of %s\0A\00", align 1
@.str.304 = private unnamed_addr constant [33 x i8] c"no name/value pairs found in %s\0A\00", align 1
@.str.305 = private unnamed_addr constant [6 x i8] c"SPKAC\00", align 1
@.str.306 = private unnamed_addr constant [41 x i8] c"unable to load Netscape SPKAC structure\0A\00", align 1
@.str.307 = private unnamed_addr constant [42 x i8] c"Netscape SPKAC structure not found in %s\0A\00", align 1
@.str.308 = private unnamed_addr constant [52 x i8] c"Check that the SPKAC request matches the signature\0A\00", align 1
@.str.309 = private unnamed_addr constant [34 x i8] c"error unpacking SPKAC public key\0A\00", align 1
@.str.310 = private unnamed_addr constant [51 x i8] c"signature verification failed on SPKAC public key\0A\00", align 1
@.str.311 = private unnamed_addr constant [49 x i8] c"Adding Entry with serial number %s to DB for %s\0A\00", align 1
@.str.312 = private unnamed_addr constant [13 x i8] c"row exp_data\00", align 1
@.str.313 = private unnamed_addr constant [8 x i8] c"row ptr\00", align 1
@.str.314 = private unnamed_addr constant [30 x i8] c"ERROR:name does not match %s\0A\00", align 1
@.str.315 = private unnamed_addr constant [41 x i8] c"ERROR:Already present, serial number %s\0A\00", align 1
@.str.316 = private unnamed_addr constant [41 x i8] c"ERROR:Already revoked, serial number %s\0A\00", align 1
@.str.317 = private unnamed_addr constant [26 x i8] c"Revoking Certificate %s.\0A\00", align 1
@.str.318 = private unnamed_addr constant [31 x i8] c"Error in revocation arguments\0A\00", align 1
@.str.319 = private unnamed_addr constant [23 x i8] c"Unknown CRL reason %s\0A\00", align 1
@.str.320 = private unnamed_addr constant [30 x i8] c"Invalid object identifier %s\0A\00", align 1
@.str.321 = private unnamed_addr constant [16 x i8] c"holdInstruction\00", align 1
@.str.322 = private unnamed_addr constant [46 x i8] c"Invalid time format %s. Need YYYYMMDDHHMMSSZ\0A\00", align 1
@.str.323 = private unnamed_addr constant [8 x i8] c"keyTime\00", align 1
@.str.324 = private unnamed_addr constant [10 x i8] c"CAkeyTime\00", align 1
@.str.325 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.326 = private unnamed_addr constant [12 x i8] c"row serial#\00", align 1
@.str.327 = private unnamed_addr constant [30 x i8] c"Serial %s not present in db.\0A\00", align 1
@.str.328 = private unnamed_addr constant [15 x i8] c"%s=Valid (%c)\0A\00", align 1
@.str.329 = private unnamed_addr constant [17 x i8] c"%s=Revoked (%c)\0A\00", align 1
@.str.330 = private unnamed_addr constant [17 x i8] c"%s=Expired (%c)\0A\00", align 1
@.str.331 = private unnamed_addr constant [19 x i8] c"%s=Suspended (%c)\0A\00", align 1
@.str.332 = private unnamed_addr constant [18 x i8] c"%s=Unknown (%c).\0A\00", align 1
@.str.333 = private unnamed_addr constant [12 x i8] c"%s=Expired\0A\00", align 1
@.str.334 = private unnamed_addr constant [12 x i8] c"unspecified\00", align 1
@.str.335 = private unnamed_addr constant [14 x i8] c"keyCompromise\00", align 1
@.str.336 = private unnamed_addr constant [13 x i8] c"CACompromise\00", align 1
@.str.337 = private unnamed_addr constant [19 x i8] c"affiliationChanged\00", align 1
@.str.338 = private unnamed_addr constant [11 x i8] c"superseded\00", align 1
@.str.339 = private unnamed_addr constant [21 x i8] c"cessationOfOperation\00", align 1
@.str.340 = private unnamed_addr constant [16 x i8] c"certificateHold\00", align 1
@.str.341 = private unnamed_addr constant [14 x i8] c"removeFromCRL\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @ca_main(i32 noundef %argc, i8** noundef %argv) local_unnamed_addr #0 {
entry:
  %serial = alloca %struct.bignum_st*, align 8
  %db_attr = alloca %struct.db_attr_st, align 4
  %def_dgst = alloca [80 x i8], align 16
  %certformat = alloca i32, align 4
  %informat = alloca i32, align 4
  %dateopt = alloca i64, align 8
  %passin = alloca i8*, align 8
  %new_cert = alloca [4096 x i8], align 16
  %tmp = alloca [11 x i8], align 1
  %ext_copy = alloca i32, align 4
  %keyformat = alloca i32, align 4
  %crldays = alloca i64, align 8
  %crlhours = alloca i64, align 8
  %days = alloca i64, align 8
  %certopt = alloca i64, align 8
  %x = alloca %struct.x509_st*, align 8
  %ctx = alloca %struct.v3_ext_ctx, align 8
  %ctx651 = alloca %struct.v3_ext_ctx, align 8
  %ctx1048 = alloca %struct.v3_ext_ctx, align 8
  %crlctx = alloca %struct.v3_ext_ctx, align 8
  %0 = bitcast %struct.bignum_st** %serial to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #9
  store %struct.bignum_st* null, %struct.bignum_st** %serial, align 8, !tbaa !3
  %1 = bitcast %struct.db_attr_st* %db_attr to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #9
  %2 = load i8*, i8** @default_config_file, align 8, !tbaa !3
  %3 = getelementptr inbounds [80 x i8], [80 x i8]* %def_dgst, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %3) #9
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(80) %3, i8 0, i64 80, i1 false)
  %4 = bitcast i32* %certformat to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #9
  store i32 0, i32* %certformat, align 4, !tbaa !7
  %5 = bitcast i32* %informat to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #9
  store i32 0, i32* %informat, align 4, !tbaa !7
  %6 = bitcast i64* %dateopt to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #9
  store i64 0, i64* %dateopt, align 8, !tbaa !9
  %7 = bitcast i8** %passin to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #9
  store i8* null, i8** %passin, align 8, !tbaa !3
  %8 = getelementptr inbounds [4096 x i8], [4096 x i8]* %new_cert, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 4096, i8* nonnull %8) #9
  %9 = getelementptr inbounds [11 x i8], [11 x i8]* %tmp, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 11, i8* nonnull %9) #9
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(11) %9, i8 0, i64 11, i1 false)
  %10 = bitcast i32* %ext_copy to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %10) #9
  store i32 0, i32* %ext_copy, align 4, !tbaa !7
  %11 = bitcast i32* %keyformat to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %11) #9
  store i32 0, i32* %keyformat, align 4, !tbaa !7
  %12 = bitcast i64* %crldays to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %12) #9
  store i64 0, i64* %crldays, align 8, !tbaa !9
  %13 = bitcast i64* %crlhours to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %13) #9
  store i64 0, i64* %crlhours, align 8, !tbaa !9
  %14 = bitcast i64* %days to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %14) #9
  store i64 0, i64* %days, align 8, !tbaa !9
  %15 = bitcast i64* %certopt to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %15) #9
  store i64 0, i64* %certopt, align 8, !tbaa !9
  %16 = bitcast %struct.x509_st** %x to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %16) #9
  store %struct.x509_st* null, %struct.x509_st** %x, align 8, !tbaa !3
  %call = tail call i8* @opt_init(i32 noundef %argc, i8** noundef %argv, %struct.options_st* noundef getelementptr inbounds ([71 x %struct.options_st], [71 x %struct.options_st]* @ca_options, i64 0, i64 0)) #10
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %entry
  %sigopts.0 = phi %struct.stack_st_OPENSSL_STRING* [ null, %entry ], [ %sigopts.0.be, %while.cond.backedge ]
  %vfyopts.0 = phi %struct.stack_st_OPENSSL_STRING* [ null, %entry ], [ %vfyopts.0.be, %while.cond.backedge ]
  %configfile.0 = phi i8* [ %2, %entry ], [ %configfile.0.be, %while.cond.backedge ]
  %section.0 = phi i8* [ null, %entry ], [ %section.0.be, %while.cond.backedge ]
  %dgst.0 = phi i8* [ null, %entry ], [ %dgst.0.be, %while.cond.backedge ]
  %policy.0 = phi i8* [ null, %entry ], [ %policy.0.be, %while.cond.backedge ]
  %keyfile.0 = phi i8* [ null, %entry ], [ %keyfile.0.be, %while.cond.backedge ]
  %certfile.0 = phi i8* [ null, %entry ], [ %certfile.0.be, %while.cond.backedge ]
  %crl_ext.0 = phi i8* [ null, %entry ], [ %crl_ext.0.be, %while.cond.backedge ]
  %infile.0 = phi i8* [ null, %entry ], [ %infile.0.be, %while.cond.backedge ]
  %spkac_file.0 = phi i8* [ null, %entry ], [ %spkac_file.0.be, %while.cond.backedge ]
  %ss_cert_file.0 = phi i8* [ null, %entry ], [ %ss_cert_file.0.be, %while.cond.backedge ]
  %extensions.0 = phi i8* [ null, %entry ], [ %extensions.0.be, %while.cond.backedge ]
  %extfile.0 = phi i8* [ null, %entry ], [ %extfile.0.be, %while.cond.backedge ]
  %passinarg.0 = phi i8* [ null, %entry ], [ %passinarg.0.be, %while.cond.backedge ]
  %outdir.0 = phi i8* [ null, %entry ], [ %outdir.0.be, %while.cond.backedge ]
  %outfile.0 = phi i8* [ null, %entry ], [ %outfile.0.be, %while.cond.backedge ]
  %rev_arg.0 = phi i8* [ null, %entry ], [ %rev_arg.0.be, %while.cond.backedge ]
  %ser_status.0 = phi i8* [ null, %entry ], [ %ser_status.0.be, %while.cond.backedge ]
  %subj.0 = phi i8* [ null, %entry ], [ %subj.0.be, %while.cond.backedge ]
  %startdate.0 = phi i8* [ null, %entry ], [ %startdate.0.be, %while.cond.backedge ]
  %enddate.0 = phi i8* [ null, %entry ], [ %enddate.0.be, %while.cond.backedge ]
  %create_ser.0 = phi i32 [ 0, %entry ], [ %create_ser.0.be, %while.cond.backedge ]
  %batch.0 = phi i32 [ 0, %entry ], [ %batch.0.be, %while.cond.backedge ]
  %doupdatedb.0 = phi i32 [ 0, %entry ], [ %doupdatedb.0.be, %while.cond.backedge ]
  %notext.0 = phi i32 [ 0, %entry ], [ %notext.0.be, %while.cond.backedge ]
  %email_dn.0 = phi i32 [ 1, %entry ], [ %email_dn.0.be, %while.cond.backedge ]
  %req.0 = phi i32 [ 0, %entry ], [ %req.0.be, %while.cond.backedge ]
  %verbose.0 = phi i32 [ 0, %entry ], [ %verbose.0.be, %while.cond.backedge ]
  %gencrl.0 = phi i32 [ 0, %entry ], [ %gencrl.0.be, %while.cond.backedge ]
  %dorevoke.0 = phi i32 [ 0, %entry ], [ %dorevoke.0.be, %while.cond.backedge ]
  %rand_ser.0 = phi i32 [ 0, %entry ], [ %rand_ser.0.be, %while.cond.backedge ]
  %selfsign.0 = phi i32 [ 0, %entry ], [ %selfsign.0.be, %while.cond.backedge ]
  %crl_lastupdate.0 = phi i8* [ null, %entry ], [ %crl_lastupdate.0.be, %while.cond.backedge ]
  %crl_nextupdate.0 = phi i8* [ null, %entry ], [ %crl_nextupdate.0.be, %while.cond.backedge ]
  %crlsec.0 = phi i64 [ 0, %entry ], [ %crlsec.0.be, %while.cond.backedge ]
  %chtype.0 = phi i64 [ 4097, %entry ], [ %chtype.0.be, %while.cond.backedge ]
  %rev_type.0 = phi i32 [ 0, %entry ], [ %rev_type.0.be, %while.cond.backedge ]
  %e.0 = phi %struct.engine_st* [ null, %entry ], [ %e.0.be, %while.cond.backedge ]
  %call1 = call i32 @opt_next() #10
  switch i32 %call1, label %while.cond.backedge [
    i32 0, label %end_of_options.loopexit
    i32 49, label %sw.bb139
    i32 -1, label %opthelp
    i32 1, label %sw.bb3
    i32 22, label %sw.bb4
    i32 23, label %sw.bb6
    i32 24, label %sw.bb9
    i32 25, label %sw.bb11
    i32 3, label %sw.bb17
    i32 4, label %sw.bb18
    i32 5, label %sw.bb20
    i32 6, label %sw.bb22
    i32 7, label %sw.bb24
    i32 50, label %sw.bb25
    i32 8, label %sw.bb26
    i32 2, label %sw.bb143
    i32 10, label %sw.bb27
    i32 11, label %sw.bb29
    i32 12, label %sw.bb31
    i32 13, label %sw.bb34
    i32 14, label %sw.bb36
    i32 15, label %sw.bb38
    i32 16, label %sw.bb40
    i32 17, label %sw.bb46
    i32 1608, label %sw.bb141
    i32 1607, label %sw.bb141
    i32 1501, label %sw.bb49
    i32 1502, label %sw.bb49
    i32 1606, label %sw.bb141
    i32 1605, label %sw.bb141
    i32 1601, label %sw.bb55
    i32 1602, label %sw.bb55
    i32 1603, label %sw.bb55
    i32 18, label %sw.bb60
    i32 19, label %sw.bb62
    i32 20, label %sw.bb64
    i32 21, label %sw.bb70
    i32 26, label %sw.bb71
    i32 28, label %sw.bb73
    i32 27, label %sw.bb88
    i32 29, label %sw.bb104
    i32 30, label %sw.bb105
    i32 31, label %sw.bb106
    i32 32, label %sw.bb107
    i32 33, label %sw.bb108
    i32 34, label %sw.bb109
    i32 35, label %sw.bb110
    i32 36, label %sw.bb112
    i32 37, label %sw.bb114
    i32 38, label %sw.bb117
    i32 39, label %sw.bb120
    i32 40, label %end_of_options
    i32 41, label %sw.bb124
    i32 42, label %sw.bb126
    i32 43, label %sw.bb128
    i32 44, label %sw.bb130
    i32 45, label %sw.bb132
    i32 46, label %sw.bb134
    i32 47, label %sw.bb136
    i32 48, label %sw.bb138
  ]

while.cond.backedge:                              ; preds = %while.cond, %lor.lhs.false96, %lor.lhs.false, %sw.bb64, %sw.bb55, %sw.bb49, %sw.bb40, %sw.bb11, %sw.bb6, %sw.bb143, %sw.bb141, %sw.bb139, %sw.bb138, %sw.bb136, %sw.bb134, %sw.bb132, %sw.bb130, %sw.bb128, %sw.bb126, %sw.bb124, %sw.bb120, %sw.bb117, %sw.bb114, %sw.bb112, %sw.bb110, %sw.bb109, %sw.bb108, %sw.bb107, %sw.bb106, %sw.bb105, %sw.bb104, %sw.bb71, %sw.bb70, %sw.bb62, %sw.bb60, %sw.bb46, %sw.bb38, %sw.bb36, %sw.bb34, %sw.bb31, %sw.bb29, %sw.bb27, %sw.bb26, %sw.bb25, %sw.bb24, %sw.bb22, %sw.bb20, %sw.bb18, %sw.bb17, %sw.bb9, %sw.bb4
  %sigopts.0.be = phi %struct.stack_st_OPENSSL_STRING* [ %sigopts.0, %sw.bb139 ], [ %sigopts.0, %sw.bb138 ], [ %sigopts.0, %sw.bb136 ], [ %sigopts.0, %sw.bb134 ], [ %sigopts.0, %sw.bb132 ], [ %sigopts.0, %sw.bb130 ], [ %sigopts.0, %sw.bb128 ], [ %sigopts.0, %sw.bb126 ], [ %sigopts.0, %sw.bb124 ], [ %sigopts.0, %sw.bb120 ], [ %sigopts.0, %sw.bb117 ], [ %sigopts.0, %sw.bb114 ], [ %sigopts.0, %sw.bb112 ], [ %sigopts.0, %sw.bb110 ], [ %sigopts.0, %sw.bb109 ], [ %sigopts.0, %sw.bb108 ], [ %sigopts.0, %sw.bb107 ], [ %sigopts.0, %sw.bb106 ], [ %sigopts.0, %sw.bb105 ], [ %sigopts.0, %sw.bb104 ], [ %sigopts.0, %lor.lhs.false96 ], [ %sigopts.11914, %lor.lhs.false ], [ %sigopts.0, %sw.bb71 ], [ %sigopts.0, %sw.bb70 ], [ %sigopts.0, %sw.bb64 ], [ %sigopts.0, %sw.bb62 ], [ %sigopts.0, %sw.bb60 ], [ %sigopts.0, %sw.bb55 ], [ %sigopts.0, %sw.bb49 ], [ %sigopts.0, %sw.bb141 ], [ %sigopts.0, %sw.bb46 ], [ %sigopts.0, %sw.bb40 ], [ %sigopts.0, %sw.bb38 ], [ %sigopts.0, %sw.bb36 ], [ %sigopts.0, %sw.bb34 ], [ %sigopts.0, %sw.bb31 ], [ %sigopts.0, %sw.bb29 ], [ %sigopts.0, %sw.bb27 ], [ %sigopts.0, %sw.bb143 ], [ %sigopts.0, %sw.bb26 ], [ %sigopts.0, %sw.bb25 ], [ %sigopts.0, %sw.bb24 ], [ %sigopts.0, %sw.bb22 ], [ %sigopts.0, %sw.bb20 ], [ %sigopts.0, %sw.bb18 ], [ %sigopts.0, %sw.bb17 ], [ %sigopts.0, %sw.bb11 ], [ %sigopts.0, %sw.bb9 ], [ %sigopts.0, %sw.bb6 ], [ %sigopts.0, %sw.bb4 ], [ %sigopts.0, %while.cond ]
  %vfyopts.0.be = phi %struct.stack_st_OPENSSL_STRING* [ %vfyopts.0, %sw.bb139 ], [ %vfyopts.0, %sw.bb138 ], [ %vfyopts.0, %sw.bb136 ], [ %vfyopts.0, %sw.bb134 ], [ %vfyopts.0, %sw.bb132 ], [ %vfyopts.0, %sw.bb130 ], [ %vfyopts.0, %sw.bb128 ], [ %vfyopts.0, %sw.bb126 ], [ %vfyopts.0, %sw.bb124 ], [ %vfyopts.0, %sw.bb120 ], [ %vfyopts.0, %sw.bb117 ], [ %vfyopts.0, %sw.bb114 ], [ %vfyopts.0, %sw.bb112 ], [ %vfyopts.0, %sw.bb110 ], [ %vfyopts.0, %sw.bb109 ], [ %vfyopts.0, %sw.bb108 ], [ %vfyopts.0, %sw.bb107 ], [ %vfyopts.0, %sw.bb106 ], [ %vfyopts.0, %sw.bb105 ], [ %vfyopts.0, %sw.bb104 ], [ %vfyopts.11917, %lor.lhs.false96 ], [ %vfyopts.0, %lor.lhs.false ], [ %vfyopts.0, %sw.bb71 ], [ %vfyopts.0, %sw.bb70 ], [ %vfyopts.0, %sw.bb64 ], [ %vfyopts.0, %sw.bb62 ], [ %vfyopts.0, %sw.bb60 ], [ %vfyopts.0, %sw.bb55 ], [ %vfyopts.0, %sw.bb49 ], [ %vfyopts.0, %sw.bb141 ], [ %vfyopts.0, %sw.bb46 ], [ %vfyopts.0, %sw.bb40 ], [ %vfyopts.0, %sw.bb38 ], [ %vfyopts.0, %sw.bb36 ], [ %vfyopts.0, %sw.bb34 ], [ %vfyopts.0, %sw.bb31 ], [ %vfyopts.0, %sw.bb29 ], [ %vfyopts.0, %sw.bb27 ], [ %vfyopts.0, %sw.bb143 ], [ %vfyopts.0, %sw.bb26 ], [ %vfyopts.0, %sw.bb25 ], [ %vfyopts.0, %sw.bb24 ], [ %vfyopts.0, %sw.bb22 ], [ %vfyopts.0, %sw.bb20 ], [ %vfyopts.0, %sw.bb18 ], [ %vfyopts.0, %sw.bb17 ], [ %vfyopts.0, %sw.bb11 ], [ %vfyopts.0, %sw.bb9 ], [ %vfyopts.0, %sw.bb6 ], [ %vfyopts.0, %sw.bb4 ], [ %vfyopts.0, %while.cond ]
  %configfile.0.be = phi i8* [ %configfile.0, %sw.bb139 ], [ %configfile.0, %sw.bb138 ], [ %configfile.0, %sw.bb136 ], [ %configfile.0, %sw.bb134 ], [ %configfile.0, %sw.bb132 ], [ %configfile.0, %sw.bb130 ], [ %configfile.0, %sw.bb128 ], [ %configfile.0, %sw.bb126 ], [ %configfile.0, %sw.bb124 ], [ %configfile.0, %sw.bb120 ], [ %configfile.0, %sw.bb117 ], [ %configfile.0, %sw.bb114 ], [ %configfile.0, %sw.bb112 ], [ %configfile.0, %sw.bb110 ], [ %configfile.0, %sw.bb109 ], [ %configfile.0, %sw.bb108 ], [ %configfile.0, %sw.bb107 ], [ %configfile.0, %sw.bb106 ], [ %configfile.0, %sw.bb105 ], [ %configfile.0, %sw.bb104 ], [ %configfile.0, %lor.lhs.false96 ], [ %configfile.0, %lor.lhs.false ], [ %configfile.0, %sw.bb71 ], [ %configfile.0, %sw.bb70 ], [ %configfile.0, %sw.bb64 ], [ %configfile.0, %sw.bb62 ], [ %configfile.0, %sw.bb60 ], [ %configfile.0, %sw.bb55 ], [ %configfile.0, %sw.bb49 ], [ %configfile.0, %sw.bb141 ], [ %configfile.0, %sw.bb46 ], [ %configfile.0, %sw.bb40 ], [ %configfile.0, %sw.bb38 ], [ %configfile.0, %sw.bb36 ], [ %configfile.0, %sw.bb34 ], [ %configfile.0, %sw.bb31 ], [ %configfile.0, %sw.bb29 ], [ %configfile.0, %sw.bb27 ], [ %configfile.0, %sw.bb143 ], [ %configfile.0, %sw.bb26 ], [ %configfile.0, %sw.bb25 ], [ %configfile.0, %sw.bb24 ], [ %configfile.0, %sw.bb22 ], [ %configfile.0, %sw.bb20 ], [ %call19, %sw.bb18 ], [ %configfile.0, %sw.bb17 ], [ %configfile.0, %sw.bb11 ], [ %configfile.0, %sw.bb9 ], [ %configfile.0, %sw.bb6 ], [ %configfile.0, %sw.bb4 ], [ %configfile.0, %while.cond ]
  %section.0.be = phi i8* [ %section.0, %sw.bb139 ], [ %section.0, %sw.bb138 ], [ %section.0, %sw.bb136 ], [ %section.0, %sw.bb134 ], [ %section.0, %sw.bb132 ], [ %section.0, %sw.bb130 ], [ %section.0, %sw.bb128 ], [ %section.0, %sw.bb126 ], [ %section.0, %sw.bb124 ], [ %section.0, %sw.bb120 ], [ %section.0, %sw.bb117 ], [ %section.0, %sw.bb114 ], [ %section.0, %sw.bb112 ], [ %section.0, %sw.bb110 ], [ %section.0, %sw.bb109 ], [ %section.0, %sw.bb108 ], [ %section.0, %sw.bb107 ], [ %section.0, %sw.bb106 ], [ %section.0, %sw.bb105 ], [ %section.0, %sw.bb104 ], [ %section.0, %lor.lhs.false96 ], [ %section.0, %lor.lhs.false ], [ %section.0, %sw.bb71 ], [ %section.0, %sw.bb70 ], [ %section.0, %sw.bb64 ], [ %section.0, %sw.bb62 ], [ %section.0, %sw.bb60 ], [ %section.0, %sw.bb55 ], [ %section.0, %sw.bb49 ], [ %section.0, %sw.bb141 ], [ %section.0, %sw.bb46 ], [ %section.0, %sw.bb40 ], [ %section.0, %sw.bb38 ], [ %section.0, %sw.bb36 ], [ %section.0, %sw.bb34 ], [ %section.0, %sw.bb31 ], [ %section.0, %sw.bb29 ], [ %section.0, %sw.bb27 ], [ %section.0, %sw.bb143 ], [ %section.0, %sw.bb26 ], [ %section.0, %sw.bb25 ], [ %section.0, %sw.bb24 ], [ %section.0, %sw.bb22 ], [ %call21, %sw.bb20 ], [ %section.0, %sw.bb18 ], [ %section.0, %sw.bb17 ], [ %section.0, %sw.bb11 ], [ %section.0, %sw.bb9 ], [ %section.0, %sw.bb6 ], [ %section.0, %sw.bb4 ], [ %section.0, %while.cond ]
  %dgst.0.be = phi i8* [ %dgst.0, %sw.bb139 ], [ %dgst.0, %sw.bb138 ], [ %dgst.0, %sw.bb136 ], [ %dgst.0, %sw.bb134 ], [ %dgst.0, %sw.bb132 ], [ %dgst.0, %sw.bb130 ], [ %dgst.0, %sw.bb128 ], [ %dgst.0, %sw.bb126 ], [ %dgst.0, %sw.bb124 ], [ %dgst.0, %sw.bb120 ], [ %dgst.0, %sw.bb117 ], [ %dgst.0, %sw.bb114 ], [ %dgst.0, %sw.bb112 ], [ %dgst.0, %sw.bb110 ], [ %dgst.0, %sw.bb109 ], [ %dgst.0, %sw.bb108 ], [ %dgst.0, %sw.bb107 ], [ %dgst.0, %sw.bb106 ], [ %dgst.0, %sw.bb105 ], [ %dgst.0, %sw.bb104 ], [ %dgst.0, %lor.lhs.false96 ], [ %dgst.0, %lor.lhs.false ], [ %dgst.0, %sw.bb71 ], [ %dgst.0, %sw.bb70 ], [ %dgst.0, %sw.bb64 ], [ %dgst.0, %sw.bb62 ], [ %dgst.0, %sw.bb60 ], [ %dgst.0, %sw.bb55 ], [ %dgst.0, %sw.bb49 ], [ %dgst.0, %sw.bb141 ], [ %dgst.0, %sw.bb46 ], [ %dgst.0, %sw.bb40 ], [ %dgst.0, %sw.bb38 ], [ %dgst.0, %sw.bb36 ], [ %call35, %sw.bb34 ], [ %dgst.0, %sw.bb31 ], [ %dgst.0, %sw.bb29 ], [ %dgst.0, %sw.bb27 ], [ %dgst.0, %sw.bb143 ], [ %dgst.0, %sw.bb26 ], [ %dgst.0, %sw.bb25 ], [ %dgst.0, %sw.bb24 ], [ %dgst.0, %sw.bb22 ], [ %dgst.0, %sw.bb20 ], [ %dgst.0, %sw.bb18 ], [ %dgst.0, %sw.bb17 ], [ %dgst.0, %sw.bb11 ], [ %dgst.0, %sw.bb9 ], [ %dgst.0, %sw.bb6 ], [ %dgst.0, %sw.bb4 ], [ %dgst.0, %while.cond ]
  %policy.0.be = phi i8* [ %policy.0, %sw.bb139 ], [ %policy.0, %sw.bb138 ], [ %policy.0, %sw.bb136 ], [ %policy.0, %sw.bb134 ], [ %policy.0, %sw.bb132 ], [ %policy.0, %sw.bb130 ], [ %policy.0, %sw.bb128 ], [ %policy.0, %sw.bb126 ], [ %policy.0, %sw.bb124 ], [ %policy.0, %sw.bb120 ], [ %policy.0, %sw.bb117 ], [ %policy.0, %sw.bb114 ], [ %policy.0, %sw.bb112 ], [ %policy.0, %sw.bb110 ], [ %policy.0, %sw.bb109 ], [ %policy.0, %sw.bb108 ], [ %policy.0, %sw.bb107 ], [ %policy.0, %sw.bb106 ], [ %policy.0, %sw.bb105 ], [ %policy.0, %sw.bb104 ], [ %policy.0, %lor.lhs.false96 ], [ %policy.0, %lor.lhs.false ], [ %policy.0, %sw.bb71 ], [ %policy.0, %sw.bb70 ], [ %policy.0, %sw.bb64 ], [ %policy.0, %sw.bb62 ], [ %policy.0, %sw.bb60 ], [ %policy.0, %sw.bb55 ], [ %policy.0, %sw.bb49 ], [ %policy.0, %sw.bb141 ], [ %policy.0, %sw.bb46 ], [ %policy.0, %sw.bb40 ], [ %policy.0, %sw.bb38 ], [ %call37, %sw.bb36 ], [ %policy.0, %sw.bb34 ], [ %policy.0, %sw.bb31 ], [ %policy.0, %sw.bb29 ], [ %policy.0, %sw.bb27 ], [ %policy.0, %sw.bb143 ], [ %policy.0, %sw.bb26 ], [ %policy.0, %sw.bb25 ], [ %policy.0, %sw.bb24 ], [ %policy.0, %sw.bb22 ], [ %policy.0, %sw.bb20 ], [ %policy.0, %sw.bb18 ], [ %policy.0, %sw.bb17 ], [ %policy.0, %sw.bb11 ], [ %policy.0, %sw.bb9 ], [ %policy.0, %sw.bb6 ], [ %policy.0, %sw.bb4 ], [ %policy.0, %while.cond ]
  %keyfile.0.be = phi i8* [ %keyfile.0, %sw.bb139 ], [ %keyfile.0, %sw.bb138 ], [ %keyfile.0, %sw.bb136 ], [ %keyfile.0, %sw.bb134 ], [ %keyfile.0, %sw.bb132 ], [ %keyfile.0, %sw.bb130 ], [ %keyfile.0, %sw.bb128 ], [ %keyfile.0, %sw.bb126 ], [ %keyfile.0, %sw.bb124 ], [ %keyfile.0, %sw.bb120 ], [ %keyfile.0, %sw.bb117 ], [ %keyfile.0, %sw.bb114 ], [ %keyfile.0, %sw.bb112 ], [ %keyfile.0, %sw.bb110 ], [ %keyfile.0, %sw.bb109 ], [ %keyfile.0, %sw.bb108 ], [ %keyfile.0, %sw.bb107 ], [ %keyfile.0, %sw.bb106 ], [ %keyfile.0, %sw.bb105 ], [ %keyfile.0, %sw.bb104 ], [ %keyfile.0, %lor.lhs.false96 ], [ %keyfile.0, %lor.lhs.false ], [ %keyfile.0, %sw.bb71 ], [ %keyfile.0, %sw.bb70 ], [ %keyfile.0, %sw.bb64 ], [ %keyfile.0, %sw.bb62 ], [ %keyfile.0, %sw.bb60 ], [ %keyfile.0, %sw.bb55 ], [ %keyfile.0, %sw.bb49 ], [ %keyfile.0, %sw.bb141 ], [ %keyfile.0, %sw.bb46 ], [ %keyfile.0, %sw.bb40 ], [ %call39, %sw.bb38 ], [ %keyfile.0, %sw.bb36 ], [ %keyfile.0, %sw.bb34 ], [ %keyfile.0, %sw.bb31 ], [ %keyfile.0, %sw.bb29 ], [ %keyfile.0, %sw.bb27 ], [ %keyfile.0, %sw.bb143 ], [ %keyfile.0, %sw.bb26 ], [ %keyfile.0, %sw.bb25 ], [ %keyfile.0, %sw.bb24 ], [ %keyfile.0, %sw.bb22 ], [ %keyfile.0, %sw.bb20 ], [ %keyfile.0, %sw.bb18 ], [ %keyfile.0, %sw.bb17 ], [ %keyfile.0, %sw.bb11 ], [ %keyfile.0, %sw.bb9 ], [ %keyfile.0, %sw.bb6 ], [ %keyfile.0, %sw.bb4 ], [ %keyfile.0, %while.cond ]
  %certfile.0.be = phi i8* [ %certfile.0, %sw.bb139 ], [ %certfile.0, %sw.bb138 ], [ %certfile.0, %sw.bb136 ], [ %certfile.0, %sw.bb134 ], [ %certfile.0, %sw.bb132 ], [ %certfile.0, %sw.bb130 ], [ %certfile.0, %sw.bb128 ], [ %certfile.0, %sw.bb126 ], [ %certfile.0, %sw.bb124 ], [ %certfile.0, %sw.bb120 ], [ %certfile.0, %sw.bb117 ], [ %certfile.0, %sw.bb114 ], [ %certfile.0, %sw.bb112 ], [ %certfile.0, %sw.bb110 ], [ %certfile.0, %sw.bb109 ], [ %certfile.0, %sw.bb108 ], [ %certfile.0, %sw.bb107 ], [ %certfile.0, %sw.bb106 ], [ %certfile.0, %sw.bb105 ], [ %certfile.0, %sw.bb104 ], [ %certfile.0, %lor.lhs.false96 ], [ %certfile.0, %lor.lhs.false ], [ %certfile.0, %sw.bb71 ], [ %certfile.0, %sw.bb70 ], [ %certfile.0, %sw.bb64 ], [ %call63, %sw.bb62 ], [ %certfile.0, %sw.bb60 ], [ %certfile.0, %sw.bb55 ], [ %certfile.0, %sw.bb49 ], [ %certfile.0, %sw.bb141 ], [ %certfile.0, %sw.bb46 ], [ %certfile.0, %sw.bb40 ], [ %certfile.0, %sw.bb38 ], [ %certfile.0, %sw.bb36 ], [ %certfile.0, %sw.bb34 ], [ %certfile.0, %sw.bb31 ], [ %certfile.0, %sw.bb29 ], [ %certfile.0, %sw.bb27 ], [ %certfile.0, %sw.bb143 ], [ %certfile.0, %sw.bb26 ], [ %certfile.0, %sw.bb25 ], [ %certfile.0, %sw.bb24 ], [ %certfile.0, %sw.bb22 ], [ %certfile.0, %sw.bb20 ], [ %certfile.0, %sw.bb18 ], [ %certfile.0, %sw.bb17 ], [ %certfile.0, %sw.bb11 ], [ %certfile.0, %sw.bb9 ], [ %certfile.0, %sw.bb6 ], [ %certfile.0, %sw.bb4 ], [ %certfile.0, %while.cond ]
  %crl_ext.0.be = phi i8* [ %call140, %sw.bb139 ], [ %crl_ext.0, %sw.bb138 ], [ %crl_ext.0, %sw.bb136 ], [ %crl_ext.0, %sw.bb134 ], [ %crl_ext.0, %sw.bb132 ], [ %crl_ext.0, %sw.bb130 ], [ %crl_ext.0, %sw.bb128 ], [ %crl_ext.0, %sw.bb126 ], [ %crl_ext.0, %sw.bb124 ], [ %crl_ext.0, %sw.bb120 ], [ %crl_ext.0, %sw.bb117 ], [ %crl_ext.0, %sw.bb114 ], [ %crl_ext.0, %sw.bb112 ], [ %crl_ext.0, %sw.bb110 ], [ %crl_ext.0, %sw.bb109 ], [ %crl_ext.0, %sw.bb108 ], [ %crl_ext.0, %sw.bb107 ], [ %crl_ext.0, %sw.bb106 ], [ %crl_ext.0, %sw.bb105 ], [ %crl_ext.0, %sw.bb104 ], [ %crl_ext.0, %lor.lhs.false96 ], [ %crl_ext.0, %lor.lhs.false ], [ %crl_ext.0, %sw.bb71 ], [ %crl_ext.0, %sw.bb70 ], [ %crl_ext.0, %sw.bb64 ], [ %crl_ext.0, %sw.bb62 ], [ %crl_ext.0, %sw.bb60 ], [ %crl_ext.0, %sw.bb55 ], [ %crl_ext.0, %sw.bb49 ], [ %crl_ext.0, %sw.bb141 ], [ %crl_ext.0, %sw.bb46 ], [ %crl_ext.0, %sw.bb40 ], [ %crl_ext.0, %sw.bb38 ], [ %crl_ext.0, %sw.bb36 ], [ %crl_ext.0, %sw.bb34 ], [ %crl_ext.0, %sw.bb31 ], [ %crl_ext.0, %sw.bb29 ], [ %crl_ext.0, %sw.bb27 ], [ %crl_ext.0, %sw.bb143 ], [ %crl_ext.0, %sw.bb26 ], [ %crl_ext.0, %sw.bb25 ], [ %crl_ext.0, %sw.bb24 ], [ %crl_ext.0, %sw.bb22 ], [ %crl_ext.0, %sw.bb20 ], [ %crl_ext.0, %sw.bb18 ], [ %crl_ext.0, %sw.bb17 ], [ %crl_ext.0, %sw.bb11 ], [ %crl_ext.0, %sw.bb9 ], [ %crl_ext.0, %sw.bb6 ], [ %crl_ext.0, %sw.bb4 ], [ %crl_ext.0, %while.cond ]
  %infile.0.be = phi i8* [ %infile.0, %sw.bb139 ], [ %infile.0, %sw.bb138 ], [ %infile.0, %sw.bb136 ], [ %infile.0, %sw.bb134 ], [ %infile.0, %sw.bb132 ], [ %call131, %sw.bb130 ], [ %call129, %sw.bb128 ], [ %infile.0, %sw.bb126 ], [ %infile.0, %sw.bb124 ], [ %infile.0, %sw.bb120 ], [ %infile.0, %sw.bb117 ], [ %infile.0, %sw.bb114 ], [ %infile.0, %sw.bb112 ], [ %infile.0, %sw.bb110 ], [ %infile.0, %sw.bb109 ], [ %infile.0, %sw.bb108 ], [ %infile.0, %sw.bb107 ], [ %infile.0, %sw.bb106 ], [ %infile.0, %sw.bb105 ], [ %infile.0, %sw.bb104 ], [ %infile.0, %lor.lhs.false96 ], [ %infile.0, %lor.lhs.false ], [ %infile.0, %sw.bb71 ], [ %infile.0, %sw.bb70 ], [ %infile.0, %sw.bb64 ], [ %infile.0, %sw.bb62 ], [ %infile.0, %sw.bb60 ], [ %infile.0, %sw.bb55 ], [ %infile.0, %sw.bb49 ], [ %infile.0, %sw.bb141 ], [ %infile.0, %sw.bb46 ], [ %infile.0, %sw.bb40 ], [ %infile.0, %sw.bb38 ], [ %infile.0, %sw.bb36 ], [ %infile.0, %sw.bb34 ], [ %infile.0, %sw.bb31 ], [ %infile.0, %sw.bb29 ], [ %infile.0, %sw.bb27 ], [ %infile.0, %sw.bb143 ], [ %infile.0, %sw.bb26 ], [ %infile.0, %sw.bb25 ], [ %infile.0, %sw.bb24 ], [ %infile.0, %sw.bb22 ], [ %infile.0, %sw.bb20 ], [ %infile.0, %sw.bb18 ], [ %infile.0, %sw.bb17 ], [ %infile.0, %sw.bb11 ], [ %infile.0, %sw.bb9 ], [ %infile.0, %sw.bb6 ], [ %call5, %sw.bb4 ], [ %infile.0, %while.cond ]
  %spkac_file.0.be = phi i8* [ %spkac_file.0, %sw.bb139 ], [ %spkac_file.0, %sw.bb138 ], [ %spkac_file.0, %sw.bb136 ], [ %spkac_file.0, %sw.bb134 ], [ %spkac_file.0, %sw.bb132 ], [ %spkac_file.0, %sw.bb130 ], [ %spkac_file.0, %sw.bb128 ], [ %call127, %sw.bb126 ], [ %spkac_file.0, %sw.bb124 ], [ %spkac_file.0, %sw.bb120 ], [ %spkac_file.0, %sw.bb117 ], [ %spkac_file.0, %sw.bb114 ], [ %spkac_file.0, %sw.bb112 ], [ %spkac_file.0, %sw.bb110 ], [ %spkac_file.0, %sw.bb109 ], [ %spkac_file.0, %sw.bb108 ], [ %spkac_file.0, %sw.bb107 ], [ %spkac_file.0, %sw.bb106 ], [ %spkac_file.0, %sw.bb105 ], [ %spkac_file.0, %sw.bb104 ], [ %spkac_file.0, %lor.lhs.false96 ], [ %spkac_file.0, %lor.lhs.false ], [ %spkac_file.0, %sw.bb71 ], [ %spkac_file.0, %sw.bb70 ], [ %spkac_file.0, %sw.bb64 ], [ %spkac_file.0, %sw.bb62 ], [ %spkac_file.0, %sw.bb60 ], [ %spkac_file.0, %sw.bb55 ], [ %spkac_file.0, %sw.bb49 ], [ %spkac_file.0, %sw.bb141 ], [ %spkac_file.0, %sw.bb46 ], [ %spkac_file.0, %sw.bb40 ], [ %spkac_file.0, %sw.bb38 ], [ %spkac_file.0, %sw.bb36 ], [ %spkac_file.0, %sw.bb34 ], [ %spkac_file.0, %sw.bb31 ], [ %spkac_file.0, %sw.bb29 ], [ %spkac_file.0, %sw.bb27 ], [ %spkac_file.0, %sw.bb143 ], [ %spkac_file.0, %sw.bb26 ], [ %spkac_file.0, %sw.bb25 ], [ %spkac_file.0, %sw.bb24 ], [ %spkac_file.0, %sw.bb22 ], [ %spkac_file.0, %sw.bb20 ], [ %spkac_file.0, %sw.bb18 ], [ %spkac_file.0, %sw.bb17 ], [ %spkac_file.0, %sw.bb11 ], [ %spkac_file.0, %sw.bb9 ], [ %spkac_file.0, %sw.bb6 ], [ %spkac_file.0, %sw.bb4 ], [ %spkac_file.0, %while.cond ]
  %ss_cert_file.0.be = phi i8* [ %ss_cert_file.0, %sw.bb139 ], [ %ss_cert_file.0, %sw.bb138 ], [ %ss_cert_file.0, %sw.bb136 ], [ %ss_cert_file.0, %sw.bb134 ], [ %ss_cert_file.0, %sw.bb132 ], [ %ss_cert_file.0, %sw.bb130 ], [ %ss_cert_file.0, %sw.bb128 ], [ %ss_cert_file.0, %sw.bb126 ], [ %call125, %sw.bb124 ], [ %ss_cert_file.0, %sw.bb120 ], [ %ss_cert_file.0, %sw.bb117 ], [ %ss_cert_file.0, %sw.bb114 ], [ %ss_cert_file.0, %sw.bb112 ], [ %ss_cert_file.0, %sw.bb110 ], [ %ss_cert_file.0, %sw.bb109 ], [ %ss_cert_file.0, %sw.bb108 ], [ %ss_cert_file.0, %sw.bb107 ], [ %ss_cert_file.0, %sw.bb106 ], [ %ss_cert_file.0, %sw.bb105 ], [ %ss_cert_file.0, %sw.bb104 ], [ %ss_cert_file.0, %lor.lhs.false96 ], [ %ss_cert_file.0, %lor.lhs.false ], [ %ss_cert_file.0, %sw.bb71 ], [ %ss_cert_file.0, %sw.bb70 ], [ %ss_cert_file.0, %sw.bb64 ], [ %ss_cert_file.0, %sw.bb62 ], [ %ss_cert_file.0, %sw.bb60 ], [ %ss_cert_file.0, %sw.bb55 ], [ %ss_cert_file.0, %sw.bb49 ], [ %ss_cert_file.0, %sw.bb141 ], [ %ss_cert_file.0, %sw.bb46 ], [ %ss_cert_file.0, %sw.bb40 ], [ %ss_cert_file.0, %sw.bb38 ], [ %ss_cert_file.0, %sw.bb36 ], [ %ss_cert_file.0, %sw.bb34 ], [ %ss_cert_file.0, %sw.bb31 ], [ %ss_cert_file.0, %sw.bb29 ], [ %ss_cert_file.0, %sw.bb27 ], [ %ss_cert_file.0, %sw.bb143 ], [ %ss_cert_file.0, %sw.bb26 ], [ %ss_cert_file.0, %sw.bb25 ], [ %ss_cert_file.0, %sw.bb24 ], [ %ss_cert_file.0, %sw.bb22 ], [ %ss_cert_file.0, %sw.bb20 ], [ %ss_cert_file.0, %sw.bb18 ], [ %ss_cert_file.0, %sw.bb17 ], [ %ss_cert_file.0, %sw.bb11 ], [ %ss_cert_file.0, %sw.bb9 ], [ %ss_cert_file.0, %sw.bb6 ], [ %ss_cert_file.0, %sw.bb4 ], [ %ss_cert_file.0, %while.cond ]
  %extensions.0.be = phi i8* [ %extensions.0, %sw.bb139 ], [ %extensions.0, %sw.bb138 ], [ %extensions.0, %sw.bb136 ], [ %extensions.0, %sw.bb134 ], [ %call133, %sw.bb132 ], [ %extensions.0, %sw.bb130 ], [ %extensions.0, %sw.bb128 ], [ %extensions.0, %sw.bb126 ], [ %extensions.0, %sw.bb124 ], [ %extensions.0, %sw.bb120 ], [ %extensions.0, %sw.bb117 ], [ %extensions.0, %sw.bb114 ], [ %extensions.0, %sw.bb112 ], [ %extensions.0, %sw.bb110 ], [ %extensions.0, %sw.bb109 ], [ %extensions.0, %sw.bb108 ], [ %extensions.0, %sw.bb107 ], [ %extensions.0, %sw.bb106 ], [ %extensions.0, %sw.bb105 ], [ %extensions.0, %sw.bb104 ], [ %extensions.0, %lor.lhs.false96 ], [ %extensions.0, %lor.lhs.false ], [ %extensions.0, %sw.bb71 ], [ %extensions.0, %sw.bb70 ], [ %extensions.0, %sw.bb64 ], [ %extensions.0, %sw.bb62 ], [ %extensions.0, %sw.bb60 ], [ %extensions.0, %sw.bb55 ], [ %extensions.0, %sw.bb49 ], [ %extensions.0, %sw.bb141 ], [ %extensions.0, %sw.bb46 ], [ %extensions.0, %sw.bb40 ], [ %extensions.0, %sw.bb38 ], [ %extensions.0, %sw.bb36 ], [ %extensions.0, %sw.bb34 ], [ %extensions.0, %sw.bb31 ], [ %extensions.0, %sw.bb29 ], [ %extensions.0, %sw.bb27 ], [ %extensions.0, %sw.bb143 ], [ %extensions.0, %sw.bb26 ], [ %extensions.0, %sw.bb25 ], [ %extensions.0, %sw.bb24 ], [ %extensions.0, %sw.bb22 ], [ %extensions.0, %sw.bb20 ], [ %extensions.0, %sw.bb18 ], [ %extensions.0, %sw.bb17 ], [ %extensions.0, %sw.bb11 ], [ %extensions.0, %sw.bb9 ], [ %extensions.0, %sw.bb6 ], [ %extensions.0, %sw.bb4 ], [ %extensions.0, %while.cond ]
  %extfile.0.be = phi i8* [ %extfile.0, %sw.bb139 ], [ %extfile.0, %sw.bb138 ], [ %extfile.0, %sw.bb136 ], [ %call135, %sw.bb134 ], [ %extfile.0, %sw.bb132 ], [ %extfile.0, %sw.bb130 ], [ %extfile.0, %sw.bb128 ], [ %extfile.0, %sw.bb126 ], [ %extfile.0, %sw.bb124 ], [ %extfile.0, %sw.bb120 ], [ %extfile.0, %sw.bb117 ], [ %extfile.0, %sw.bb114 ], [ %extfile.0, %sw.bb112 ], [ %extfile.0, %sw.bb110 ], [ %extfile.0, %sw.bb109 ], [ %extfile.0, %sw.bb108 ], [ %extfile.0, %sw.bb107 ], [ %extfile.0, %sw.bb106 ], [ %extfile.0, %sw.bb105 ], [ %extfile.0, %sw.bb104 ], [ %extfile.0, %lor.lhs.false96 ], [ %extfile.0, %lor.lhs.false ], [ %extfile.0, %sw.bb71 ], [ %extfile.0, %sw.bb70 ], [ %extfile.0, %sw.bb64 ], [ %extfile.0, %sw.bb62 ], [ %extfile.0, %sw.bb60 ], [ %extfile.0, %sw.bb55 ], [ %extfile.0, %sw.bb49 ], [ %extfile.0, %sw.bb141 ], [ %extfile.0, %sw.bb46 ], [ %extfile.0, %sw.bb40 ], [ %extfile.0, %sw.bb38 ], [ %extfile.0, %sw.bb36 ], [ %extfile.0, %sw.bb34 ], [ %extfile.0, %sw.bb31 ], [ %extfile.0, %sw.bb29 ], [ %extfile.0, %sw.bb27 ], [ %extfile.0, %sw.bb143 ], [ %extfile.0, %sw.bb26 ], [ %extfile.0, %sw.bb25 ], [ %extfile.0, %sw.bb24 ], [ %extfile.0, %sw.bb22 ], [ %extfile.0, %sw.bb20 ], [ %extfile.0, %sw.bb18 ], [ %extfile.0, %sw.bb17 ], [ %extfile.0, %sw.bb11 ], [ %extfile.0, %sw.bb9 ], [ %extfile.0, %sw.bb6 ], [ %extfile.0, %sw.bb4 ], [ %extfile.0, %while.cond ]
  %passinarg.0.be = phi i8* [ %passinarg.0, %sw.bb139 ], [ %passinarg.0, %sw.bb138 ], [ %passinarg.0, %sw.bb136 ], [ %passinarg.0, %sw.bb134 ], [ %passinarg.0, %sw.bb132 ], [ %passinarg.0, %sw.bb130 ], [ %passinarg.0, %sw.bb128 ], [ %passinarg.0, %sw.bb126 ], [ %passinarg.0, %sw.bb124 ], [ %passinarg.0, %sw.bb120 ], [ %passinarg.0, %sw.bb117 ], [ %passinarg.0, %sw.bb114 ], [ %passinarg.0, %sw.bb112 ], [ %passinarg.0, %sw.bb110 ], [ %passinarg.0, %sw.bb109 ], [ %passinarg.0, %sw.bb108 ], [ %passinarg.0, %sw.bb107 ], [ %passinarg.0, %sw.bb106 ], [ %passinarg.0, %sw.bb105 ], [ %passinarg.0, %sw.bb104 ], [ %passinarg.0, %lor.lhs.false96 ], [ %passinarg.0, %lor.lhs.false ], [ %passinarg.0, %sw.bb71 ], [ %passinarg.0, %sw.bb70 ], [ %passinarg.0, %sw.bb64 ], [ %passinarg.0, %sw.bb62 ], [ %passinarg.0, %sw.bb60 ], [ %passinarg.0, %sw.bb55 ], [ %passinarg.0, %sw.bb49 ], [ %passinarg.0, %sw.bb141 ], [ %call47, %sw.bb46 ], [ %passinarg.0, %sw.bb40 ], [ %passinarg.0, %sw.bb38 ], [ %passinarg.0, %sw.bb36 ], [ %passinarg.0, %sw.bb34 ], [ %passinarg.0, %sw.bb31 ], [ %passinarg.0, %sw.bb29 ], [ %passinarg.0, %sw.bb27 ], [ %passinarg.0, %sw.bb143 ], [ %passinarg.0, %sw.bb26 ], [ %passinarg.0, %sw.bb25 ], [ %passinarg.0, %sw.bb24 ], [ %passinarg.0, %sw.bb22 ], [ %passinarg.0, %sw.bb20 ], [ %passinarg.0, %sw.bb18 ], [ %passinarg.0, %sw.bb17 ], [ %passinarg.0, %sw.bb11 ], [ %passinarg.0, %sw.bb9 ], [ %passinarg.0, %sw.bb6 ], [ %passinarg.0, %sw.bb4 ], [ %passinarg.0, %while.cond ]
  %outdir.0.be = phi i8* [ %outdir.0, %sw.bb139 ], [ %outdir.0, %sw.bb138 ], [ %outdir.0, %sw.bb136 ], [ %outdir.0, %sw.bb134 ], [ %outdir.0, %sw.bb132 ], [ %outdir.0, %sw.bb130 ], [ %outdir.0, %sw.bb128 ], [ %outdir.0, %sw.bb126 ], [ %outdir.0, %sw.bb124 ], [ %outdir.0, %sw.bb120 ], [ %outdir.0, %sw.bb117 ], [ %outdir.0, %sw.bb114 ], [ %outdir.0, %sw.bb112 ], [ %outdir.0, %sw.bb110 ], [ %outdir.0, %sw.bb109 ], [ %outdir.0, %sw.bb108 ], [ %outdir.0, %sw.bb107 ], [ %outdir.0, %sw.bb106 ], [ %outdir.0, %sw.bb105 ], [ %outdir.0, %sw.bb104 ], [ %outdir.0, %lor.lhs.false96 ], [ %outdir.0, %lor.lhs.false ], [ %call72, %sw.bb71 ], [ %outdir.0, %sw.bb70 ], [ %outdir.0, %sw.bb64 ], [ %outdir.0, %sw.bb62 ], [ %outdir.0, %sw.bb60 ], [ %outdir.0, %sw.bb55 ], [ %outdir.0, %sw.bb49 ], [ %outdir.0, %sw.bb141 ], [ %outdir.0, %sw.bb46 ], [ %outdir.0, %sw.bb40 ], [ %outdir.0, %sw.bb38 ], [ %outdir.0, %sw.bb36 ], [ %outdir.0, %sw.bb34 ], [ %outdir.0, %sw.bb31 ], [ %outdir.0, %sw.bb29 ], [ %outdir.0, %sw.bb27 ], [ %outdir.0, %sw.bb143 ], [ %outdir.0, %sw.bb26 ], [ %outdir.0, %sw.bb25 ], [ %outdir.0, %sw.bb24 ], [ %outdir.0, %sw.bb22 ], [ %outdir.0, %sw.bb20 ], [ %outdir.0, %sw.bb18 ], [ %outdir.0, %sw.bb17 ], [ %outdir.0, %sw.bb11 ], [ %outdir.0, %sw.bb9 ], [ %outdir.0, %sw.bb6 ], [ %outdir.0, %sw.bb4 ], [ %outdir.0, %while.cond ]
  %outfile.0.be = phi i8* [ %outfile.0, %sw.bb139 ], [ %outfile.0, %sw.bb138 ], [ %outfile.0, %sw.bb136 ], [ %outfile.0, %sw.bb134 ], [ %outfile.0, %sw.bb132 ], [ %outfile.0, %sw.bb130 ], [ %outfile.0, %sw.bb128 ], [ %outfile.0, %sw.bb126 ], [ %outfile.0, %sw.bb124 ], [ %outfile.0, %sw.bb120 ], [ %outfile.0, %sw.bb117 ], [ %outfile.0, %sw.bb114 ], [ %outfile.0, %sw.bb112 ], [ %outfile.0, %sw.bb110 ], [ %outfile.0, %sw.bb109 ], [ %outfile.0, %sw.bb108 ], [ %outfile.0, %sw.bb107 ], [ %outfile.0, %sw.bb106 ], [ %outfile.0, %sw.bb105 ], [ %outfile.0, %sw.bb104 ], [ %outfile.0, %lor.lhs.false96 ], [ %outfile.0, %lor.lhs.false ], [ %outfile.0, %sw.bb71 ], [ %outfile.0, %sw.bb70 ], [ %outfile.0, %sw.bb64 ], [ %outfile.0, %sw.bb62 ], [ %outfile.0, %sw.bb60 ], [ %outfile.0, %sw.bb55 ], [ %outfile.0, %sw.bb49 ], [ %outfile.0, %sw.bb141 ], [ %outfile.0, %sw.bb46 ], [ %outfile.0, %sw.bb40 ], [ %outfile.0, %sw.bb38 ], [ %outfile.0, %sw.bb36 ], [ %outfile.0, %sw.bb34 ], [ %outfile.0, %sw.bb31 ], [ %outfile.0, %sw.bb29 ], [ %outfile.0, %sw.bb27 ], [ %outfile.0, %sw.bb143 ], [ %outfile.0, %sw.bb26 ], [ %outfile.0, %sw.bb25 ], [ %outfile.0, %sw.bb24 ], [ %outfile.0, %sw.bb22 ], [ %outfile.0, %sw.bb20 ], [ %outfile.0, %sw.bb18 ], [ %outfile.0, %sw.bb17 ], [ %outfile.0, %sw.bb11 ], [ %call10, %sw.bb9 ], [ %outfile.0, %sw.bb6 ], [ %outfile.0, %sw.bb4 ], [ %outfile.0, %while.cond ]
  %rev_arg.0.be = phi i8* [ %rev_arg.0, %sw.bb139 ], [ %rev_arg.0, %sw.bb138 ], [ %rev_arg.0, %sw.bb136 ], [ %rev_arg.0, %sw.bb134 ], [ %rev_arg.0, %sw.bb132 ], [ %rev_arg.0, %sw.bb130 ], [ %rev_arg.0, %sw.bb128 ], [ %rev_arg.0, %sw.bb126 ], [ %rev_arg.0, %sw.bb124 ], [ %rev_arg.0, %sw.bb120 ], [ %rev_arg.0, %sw.bb117 ], [ %rev_arg.0, %sw.bb114 ], [ %rev_arg.0, %sw.bb112 ], [ %rev_arg.0, %sw.bb110 ], [ %rev_arg.0, %sw.bb109 ], [ %rev_arg.0, %sw.bb108 ], [ %rev_arg.0, %sw.bb107 ], [ %rev_arg.0, %sw.bb106 ], [ %rev_arg.0, %sw.bb105 ], [ %rev_arg.0, %sw.bb104 ], [ %rev_arg.0, %lor.lhs.false96 ], [ %rev_arg.0, %lor.lhs.false ], [ %rev_arg.0, %sw.bb71 ], [ %rev_arg.0, %sw.bb70 ], [ %rev_arg.0, %sw.bb64 ], [ %rev_arg.0, %sw.bb62 ], [ %rev_arg.0, %sw.bb60 ], [ %rev_arg.0, %sw.bb55 ], [ %rev_arg.0, %sw.bb49 ], [ %call142, %sw.bb141 ], [ %rev_arg.0, %sw.bb46 ], [ %rev_arg.0, %sw.bb40 ], [ %rev_arg.0, %sw.bb38 ], [ %rev_arg.0, %sw.bb36 ], [ %rev_arg.0, %sw.bb34 ], [ %rev_arg.0, %sw.bb31 ], [ %rev_arg.0, %sw.bb29 ], [ %rev_arg.0, %sw.bb27 ], [ %rev_arg.0, %sw.bb143 ], [ %rev_arg.0, %sw.bb26 ], [ %rev_arg.0, %sw.bb25 ], [ %rev_arg.0, %sw.bb24 ], [ %rev_arg.0, %sw.bb22 ], [ %rev_arg.0, %sw.bb20 ], [ %rev_arg.0, %sw.bb18 ], [ %rev_arg.0, %sw.bb17 ], [ %rev_arg.0, %sw.bb11 ], [ %rev_arg.0, %sw.bb9 ], [ %rev_arg.0, %sw.bb6 ], [ %rev_arg.0, %sw.bb4 ], [ %rev_arg.0, %while.cond ]
  %ser_status.0.be = phi i8* [ %ser_status.0, %sw.bb139 ], [ %ser_status.0, %sw.bb138 ], [ %call137, %sw.bb136 ], [ %ser_status.0, %sw.bb134 ], [ %ser_status.0, %sw.bb132 ], [ %ser_status.0, %sw.bb130 ], [ %ser_status.0, %sw.bb128 ], [ %ser_status.0, %sw.bb126 ], [ %ser_status.0, %sw.bb124 ], [ %ser_status.0, %sw.bb120 ], [ %ser_status.0, %sw.bb117 ], [ %ser_status.0, %sw.bb114 ], [ %ser_status.0, %sw.bb112 ], [ %ser_status.0, %sw.bb110 ], [ %ser_status.0, %sw.bb109 ], [ %ser_status.0, %sw.bb108 ], [ %ser_status.0, %sw.bb107 ], [ %ser_status.0, %sw.bb106 ], [ %ser_status.0, %sw.bb105 ], [ %ser_status.0, %sw.bb104 ], [ %ser_status.0, %lor.lhs.false96 ], [ %ser_status.0, %lor.lhs.false ], [ %ser_status.0, %sw.bb71 ], [ %ser_status.0, %sw.bb70 ], [ %ser_status.0, %sw.bb64 ], [ %ser_status.0, %sw.bb62 ], [ %ser_status.0, %sw.bb60 ], [ %ser_status.0, %sw.bb55 ], [ %ser_status.0, %sw.bb49 ], [ %ser_status.0, %sw.bb141 ], [ %ser_status.0, %sw.bb46 ], [ %ser_status.0, %sw.bb40 ], [ %ser_status.0, %sw.bb38 ], [ %ser_status.0, %sw.bb36 ], [ %ser_status.0, %sw.bb34 ], [ %ser_status.0, %sw.bb31 ], [ %ser_status.0, %sw.bb29 ], [ %ser_status.0, %sw.bb27 ], [ %ser_status.0, %sw.bb143 ], [ %ser_status.0, %sw.bb26 ], [ %ser_status.0, %sw.bb25 ], [ %ser_status.0, %sw.bb24 ], [ %ser_status.0, %sw.bb22 ], [ %ser_status.0, %sw.bb20 ], [ %ser_status.0, %sw.bb18 ], [ %ser_status.0, %sw.bb17 ], [ %ser_status.0, %sw.bb11 ], [ %ser_status.0, %sw.bb9 ], [ %ser_status.0, %sw.bb6 ], [ %ser_status.0, %sw.bb4 ], [ %ser_status.0, %while.cond ]
  %subj.0.be = phi i8* [ %subj.0, %sw.bb139 ], [ %subj.0, %sw.bb138 ], [ %subj.0, %sw.bb136 ], [ %subj.0, %sw.bb134 ], [ %subj.0, %sw.bb132 ], [ %subj.0, %sw.bb130 ], [ %subj.0, %sw.bb128 ], [ %subj.0, %sw.bb126 ], [ %subj.0, %sw.bb124 ], [ %subj.0, %sw.bb120 ], [ %subj.0, %sw.bb117 ], [ %subj.0, %sw.bb114 ], [ %subj.0, %sw.bb112 ], [ %subj.0, %sw.bb110 ], [ %subj.0, %sw.bb109 ], [ %subj.0, %sw.bb108 ], [ %subj.0, %sw.bb107 ], [ %subj.0, %sw.bb106 ], [ %subj.0, %sw.bb105 ], [ %subj.0, %sw.bb104 ], [ %subj.0, %lor.lhs.false96 ], [ %subj.0, %lor.lhs.false ], [ %subj.0, %sw.bb71 ], [ %subj.0, %sw.bb70 ], [ %subj.0, %sw.bb64 ], [ %subj.0, %sw.bb62 ], [ %subj.0, %sw.bb60 ], [ %subj.0, %sw.bb55 ], [ %subj.0, %sw.bb49 ], [ %subj.0, %sw.bb141 ], [ %subj.0, %sw.bb46 ], [ %subj.0, %sw.bb40 ], [ %subj.0, %sw.bb38 ], [ %subj.0, %sw.bb36 ], [ %subj.0, %sw.bb34 ], [ %subj.0, %sw.bb31 ], [ %subj.0, %sw.bb29 ], [ %subj.0, %sw.bb27 ], [ %subj.0, %sw.bb143 ], [ %subj.0, %sw.bb26 ], [ %subj.0, %sw.bb25 ], [ %subj.0, %sw.bb24 ], [ %call23, %sw.bb22 ], [ %subj.0, %sw.bb20 ], [ %subj.0, %sw.bb18 ], [ %subj.0, %sw.bb17 ], [ %subj.0, %sw.bb11 ], [ %subj.0, %sw.bb9 ], [ %subj.0, %sw.bb6 ], [ %subj.0, %sw.bb4 ], [ %subj.0, %while.cond ]
  %startdate.0.be = phi i8* [ %startdate.0, %sw.bb139 ], [ %startdate.0, %sw.bb138 ], [ %startdate.0, %sw.bb136 ], [ %startdate.0, %sw.bb134 ], [ %startdate.0, %sw.bb132 ], [ %startdate.0, %sw.bb130 ], [ %startdate.0, %sw.bb128 ], [ %startdate.0, %sw.bb126 ], [ %startdate.0, %sw.bb124 ], [ %startdate.0, %sw.bb120 ], [ %startdate.0, %sw.bb117 ], [ %startdate.0, %sw.bb114 ], [ %startdate.0, %sw.bb112 ], [ %startdate.0, %sw.bb110 ], [ %startdate.0, %sw.bb109 ], [ %startdate.0, %sw.bb108 ], [ %startdate.0, %sw.bb107 ], [ %startdate.0, %sw.bb106 ], [ %startdate.0, %sw.bb105 ], [ %startdate.0, %sw.bb104 ], [ %startdate.0, %lor.lhs.false96 ], [ %startdate.0, %lor.lhs.false ], [ %startdate.0, %sw.bb71 ], [ %startdate.0, %sw.bb70 ], [ %startdate.0, %sw.bb64 ], [ %startdate.0, %sw.bb62 ], [ %startdate.0, %sw.bb60 ], [ %startdate.0, %sw.bb55 ], [ %startdate.0, %sw.bb49 ], [ %startdate.0, %sw.bb141 ], [ %startdate.0, %sw.bb46 ], [ %startdate.0, %sw.bb40 ], [ %startdate.0, %sw.bb38 ], [ %startdate.0, %sw.bb36 ], [ %startdate.0, %sw.bb34 ], [ %startdate.0, %sw.bb31 ], [ %startdate.0, %sw.bb29 ], [ %call28, %sw.bb27 ], [ %startdate.0, %sw.bb143 ], [ %startdate.0, %sw.bb26 ], [ %startdate.0, %sw.bb25 ], [ %startdate.0, %sw.bb24 ], [ %startdate.0, %sw.bb22 ], [ %startdate.0, %sw.bb20 ], [ %startdate.0, %sw.bb18 ], [ %startdate.0, %sw.bb17 ], [ %startdate.0, %sw.bb11 ], [ %startdate.0, %sw.bb9 ], [ %startdate.0, %sw.bb6 ], [ %startdate.0, %sw.bb4 ], [ %startdate.0, %while.cond ]
  %enddate.0.be = phi i8* [ %enddate.0, %sw.bb139 ], [ %enddate.0, %sw.bb138 ], [ %enddate.0, %sw.bb136 ], [ %enddate.0, %sw.bb134 ], [ %enddate.0, %sw.bb132 ], [ %enddate.0, %sw.bb130 ], [ %enddate.0, %sw.bb128 ], [ %enddate.0, %sw.bb126 ], [ %enddate.0, %sw.bb124 ], [ %enddate.0, %sw.bb120 ], [ %enddate.0, %sw.bb117 ], [ %enddate.0, %sw.bb114 ], [ %enddate.0, %sw.bb112 ], [ %enddate.0, %sw.bb110 ], [ %enddate.0, %sw.bb109 ], [ %enddate.0, %sw.bb108 ], [ %enddate.0, %sw.bb107 ], [ %enddate.0, %sw.bb106 ], [ %enddate.0, %sw.bb105 ], [ %enddate.0, %sw.bb104 ], [ %enddate.0, %lor.lhs.false96 ], [ %enddate.0, %lor.lhs.false ], [ %enddate.0, %sw.bb71 ], [ %enddate.0, %sw.bb70 ], [ %enddate.0, %sw.bb64 ], [ %enddate.0, %sw.bb62 ], [ %enddate.0, %sw.bb60 ], [ %enddate.0, %sw.bb55 ], [ %enddate.0, %sw.bb49 ], [ %enddate.0, %sw.bb141 ], [ %enddate.0, %sw.bb46 ], [ %enddate.0, %sw.bb40 ], [ %enddate.0, %sw.bb38 ], [ %enddate.0, %sw.bb36 ], [ %enddate.0, %sw.bb34 ], [ %enddate.0, %sw.bb31 ], [ %call30, %sw.bb29 ], [ %enddate.0, %sw.bb27 ], [ %enddate.0, %sw.bb143 ], [ %enddate.0, %sw.bb26 ], [ %enddate.0, %sw.bb25 ], [ %enddate.0, %sw.bb24 ], [ %enddate.0, %sw.bb22 ], [ %enddate.0, %sw.bb20 ], [ %enddate.0, %sw.bb18 ], [ %enddate.0, %sw.bb17 ], [ %enddate.0, %sw.bb11 ], [ %enddate.0, %sw.bb9 ], [ %enddate.0, %sw.bb6 ], [ %enddate.0, %sw.bb4 ], [ %enddate.0, %while.cond ]
  %create_ser.0.be = phi i32 [ %create_ser.0, %sw.bb139 ], [ %create_ser.0, %sw.bb138 ], [ %create_ser.0, %sw.bb136 ], [ %create_ser.0, %sw.bb134 ], [ %create_ser.0, %sw.bb132 ], [ %create_ser.0, %sw.bb130 ], [ %create_ser.0, %sw.bb128 ], [ %create_ser.0, %sw.bb126 ], [ %create_ser.0, %sw.bb124 ], [ %create_ser.0, %sw.bb120 ], [ %create_ser.0, %sw.bb117 ], [ %create_ser.0, %sw.bb114 ], [ %create_ser.0, %sw.bb112 ], [ %create_ser.0, %sw.bb110 ], [ %create_ser.0, %sw.bb109 ], [ %create_ser.0, %sw.bb108 ], [ %create_ser.0, %sw.bb107 ], [ %create_ser.0, %sw.bb106 ], [ %create_ser.0, %sw.bb105 ], [ %create_ser.0, %sw.bb104 ], [ %create_ser.0, %lor.lhs.false96 ], [ %create_ser.0, %lor.lhs.false ], [ %create_ser.0, %sw.bb71 ], [ %create_ser.0, %sw.bb70 ], [ %create_ser.0, %sw.bb64 ], [ %create_ser.0, %sw.bb62 ], [ %create_ser.0, %sw.bb60 ], [ %create_ser.0, %sw.bb55 ], [ %create_ser.0, %sw.bb49 ], [ %create_ser.0, %sw.bb141 ], [ %create_ser.0, %sw.bb46 ], [ %create_ser.0, %sw.bb40 ], [ %create_ser.0, %sw.bb38 ], [ %create_ser.0, %sw.bb36 ], [ %create_ser.0, %sw.bb34 ], [ %create_ser.0, %sw.bb31 ], [ %create_ser.0, %sw.bb29 ], [ %create_ser.0, %sw.bb27 ], [ %create_ser.0, %sw.bb143 ], [ 1, %sw.bb26 ], [ %create_ser.0, %sw.bb25 ], [ %create_ser.0, %sw.bb24 ], [ %create_ser.0, %sw.bb22 ], [ %create_ser.0, %sw.bb20 ], [ %create_ser.0, %sw.bb18 ], [ %create_ser.0, %sw.bb17 ], [ %create_ser.0, %sw.bb11 ], [ %create_ser.0, %sw.bb9 ], [ %create_ser.0, %sw.bb6 ], [ %create_ser.0, %sw.bb4 ], [ %create_ser.0, %while.cond ]
  %batch.0.be = phi i32 [ %batch.0, %sw.bb139 ], [ %batch.0, %sw.bb138 ], [ %batch.0, %sw.bb136 ], [ %batch.0, %sw.bb134 ], [ %batch.0, %sw.bb132 ], [ %batch.0, %sw.bb130 ], [ %batch.0, %sw.bb128 ], [ %batch.0, %sw.bb126 ], [ %batch.0, %sw.bb124 ], [ %batch.0, %sw.bb120 ], [ %batch.0, %sw.bb117 ], [ %batch.0, %sw.bb114 ], [ %batch.0, %sw.bb112 ], [ %batch.0, %sw.bb110 ], [ %batch.0, %sw.bb109 ], [ %batch.0, %sw.bb108 ], [ %batch.0, %sw.bb107 ], [ %batch.0, %sw.bb106 ], [ 1, %sw.bb105 ], [ %batch.0, %sw.bb104 ], [ %batch.0, %lor.lhs.false96 ], [ %batch.0, %lor.lhs.false ], [ %batch.0, %sw.bb71 ], [ %batch.0, %sw.bb70 ], [ %batch.0, %sw.bb64 ], [ %batch.0, %sw.bb62 ], [ %batch.0, %sw.bb60 ], [ %batch.0, %sw.bb55 ], [ %batch.0, %sw.bb49 ], [ %batch.0, %sw.bb141 ], [ %batch.0, %sw.bb46 ], [ %batch.0, %sw.bb40 ], [ %batch.0, %sw.bb38 ], [ %batch.0, %sw.bb36 ], [ %batch.0, %sw.bb34 ], [ %batch.0, %sw.bb31 ], [ %batch.0, %sw.bb29 ], [ %batch.0, %sw.bb27 ], [ %batch.0, %sw.bb143 ], [ %batch.0, %sw.bb26 ], [ %batch.0, %sw.bb25 ], [ %batch.0, %sw.bb24 ], [ %batch.0, %sw.bb22 ], [ %batch.0, %sw.bb20 ], [ %batch.0, %sw.bb18 ], [ %batch.0, %sw.bb17 ], [ %batch.0, %sw.bb11 ], [ %batch.0, %sw.bb9 ], [ %batch.0, %sw.bb6 ], [ %batch.0, %sw.bb4 ], [ %batch.0, %while.cond ]
  %doupdatedb.0.be = phi i32 [ %doupdatedb.0, %sw.bb139 ], [ 1, %sw.bb138 ], [ %doupdatedb.0, %sw.bb136 ], [ %doupdatedb.0, %sw.bb134 ], [ %doupdatedb.0, %sw.bb132 ], [ %doupdatedb.0, %sw.bb130 ], [ %doupdatedb.0, %sw.bb128 ], [ %doupdatedb.0, %sw.bb126 ], [ %doupdatedb.0, %sw.bb124 ], [ %doupdatedb.0, %sw.bb120 ], [ %doupdatedb.0, %sw.bb117 ], [ %doupdatedb.0, %sw.bb114 ], [ %doupdatedb.0, %sw.bb112 ], [ %doupdatedb.0, %sw.bb110 ], [ %doupdatedb.0, %sw.bb109 ], [ %doupdatedb.0, %sw.bb108 ], [ %doupdatedb.0, %sw.bb107 ], [ %doupdatedb.0, %sw.bb106 ], [ %doupdatedb.0, %sw.bb105 ], [ %doupdatedb.0, %sw.bb104 ], [ %doupdatedb.0, %lor.lhs.false96 ], [ %doupdatedb.0, %lor.lhs.false ], [ %doupdatedb.0, %sw.bb71 ], [ %doupdatedb.0, %sw.bb70 ], [ %doupdatedb.0, %sw.bb64 ], [ %doupdatedb.0, %sw.bb62 ], [ %doupdatedb.0, %sw.bb60 ], [ %doupdatedb.0, %sw.bb55 ], [ %doupdatedb.0, %sw.bb49 ], [ %doupdatedb.0, %sw.bb141 ], [ %doupdatedb.0, %sw.bb46 ], [ %doupdatedb.0, %sw.bb40 ], [ %doupdatedb.0, %sw.bb38 ], [ %doupdatedb.0, %sw.bb36 ], [ %doupdatedb.0, %sw.bb34 ], [ %doupdatedb.0, %sw.bb31 ], [ %doupdatedb.0, %sw.bb29 ], [ %doupdatedb.0, %sw.bb27 ], [ %doupdatedb.0, %sw.bb143 ], [ %doupdatedb.0, %sw.bb26 ], [ %doupdatedb.0, %sw.bb25 ], [ %doupdatedb.0, %sw.bb24 ], [ %doupdatedb.0, %sw.bb22 ], [ %doupdatedb.0, %sw.bb20 ], [ %doupdatedb.0, %sw.bb18 ], [ %doupdatedb.0, %sw.bb17 ], [ %doupdatedb.0, %sw.bb11 ], [ %doupdatedb.0, %sw.bb9 ], [ %doupdatedb.0, %sw.bb6 ], [ %doupdatedb.0, %sw.bb4 ], [ %doupdatedb.0, %while.cond ]
  %notext.0.be = phi i32 [ %notext.0, %sw.bb139 ], [ %notext.0, %sw.bb138 ], [ %notext.0, %sw.bb136 ], [ %notext.0, %sw.bb134 ], [ %notext.0, %sw.bb132 ], [ %notext.0, %sw.bb130 ], [ %notext.0, %sw.bb128 ], [ %notext.0, %sw.bb126 ], [ %notext.0, %sw.bb124 ], [ %notext.0, %sw.bb120 ], [ %notext.0, %sw.bb117 ], [ %notext.0, %sw.bb114 ], [ %notext.0, %sw.bb112 ], [ %notext.0, %sw.bb110 ], [ %notext.0, %sw.bb109 ], [ %notext.0, %sw.bb108 ], [ %notext.0, %sw.bb107 ], [ %notext.0, %sw.bb106 ], [ %notext.0, %sw.bb105 ], [ 1, %sw.bb104 ], [ %notext.0, %lor.lhs.false96 ], [ %notext.0, %lor.lhs.false ], [ %notext.0, %sw.bb71 ], [ %notext.0, %sw.bb70 ], [ %notext.0, %sw.bb64 ], [ %notext.0, %sw.bb62 ], [ %notext.0, %sw.bb60 ], [ %notext.0, %sw.bb55 ], [ %notext.0, %sw.bb49 ], [ %notext.0, %sw.bb141 ], [ %notext.0, %sw.bb46 ], [ %notext.0, %sw.bb40 ], [ %notext.0, %sw.bb38 ], [ %notext.0, %sw.bb36 ], [ %notext.0, %sw.bb34 ], [ %notext.0, %sw.bb31 ], [ %notext.0, %sw.bb29 ], [ %notext.0, %sw.bb27 ], [ %notext.0, %sw.bb143 ], [ %notext.0, %sw.bb26 ], [ %notext.0, %sw.bb25 ], [ %notext.0, %sw.bb24 ], [ %notext.0, %sw.bb22 ], [ %notext.0, %sw.bb20 ], [ %notext.0, %sw.bb18 ], [ %notext.0, %sw.bb17 ], [ %notext.0, %sw.bb11 ], [ %notext.0, %sw.bb9 ], [ %notext.0, %sw.bb6 ], [ %notext.0, %sw.bb4 ], [ %notext.0, %while.cond ]
  %email_dn.0.be = phi i32 [ %email_dn.0, %sw.bb139 ], [ %email_dn.0, %sw.bb138 ], [ %email_dn.0, %sw.bb136 ], [ %email_dn.0, %sw.bb134 ], [ %email_dn.0, %sw.bb132 ], [ %email_dn.0, %sw.bb130 ], [ %email_dn.0, %sw.bb128 ], [ %email_dn.0, %sw.bb126 ], [ %email_dn.0, %sw.bb124 ], [ %email_dn.0, %sw.bb120 ], [ %email_dn.0, %sw.bb117 ], [ %email_dn.0, %sw.bb114 ], [ %email_dn.0, %sw.bb112 ], [ %email_dn.0, %sw.bb110 ], [ %email_dn.0, %sw.bb109 ], [ %email_dn.0, %sw.bb108 ], [ 0, %sw.bb107 ], [ %email_dn.0, %sw.bb106 ], [ %email_dn.0, %sw.bb105 ], [ %email_dn.0, %sw.bb104 ], [ %email_dn.0, %lor.lhs.false96 ], [ %email_dn.0, %lor.lhs.false ], [ %email_dn.0, %sw.bb71 ], [ %email_dn.0, %sw.bb70 ], [ %email_dn.0, %sw.bb64 ], [ %email_dn.0, %sw.bb62 ], [ %email_dn.0, %sw.bb60 ], [ %email_dn.0, %sw.bb55 ], [ %email_dn.0, %sw.bb49 ], [ %email_dn.0, %sw.bb141 ], [ %email_dn.0, %sw.bb46 ], [ %email_dn.0, %sw.bb40 ], [ %email_dn.0, %sw.bb38 ], [ %email_dn.0, %sw.bb36 ], [ %email_dn.0, %sw.bb34 ], [ %email_dn.0, %sw.bb31 ], [ %email_dn.0, %sw.bb29 ], [ %email_dn.0, %sw.bb27 ], [ %email_dn.0, %sw.bb143 ], [ %email_dn.0, %sw.bb26 ], [ %email_dn.0, %sw.bb25 ], [ %email_dn.0, %sw.bb24 ], [ %email_dn.0, %sw.bb22 ], [ %email_dn.0, %sw.bb20 ], [ %email_dn.0, %sw.bb18 ], [ %email_dn.0, %sw.bb17 ], [ %email_dn.0, %sw.bb11 ], [ %email_dn.0, %sw.bb9 ], [ %email_dn.0, %sw.bb6 ], [ %email_dn.0, %sw.bb4 ], [ %email_dn.0, %while.cond ]
  %req.0.be = phi i32 [ %req.0, %sw.bb139 ], [ %req.0, %sw.bb138 ], [ %req.0, %sw.bb136 ], [ %req.0, %sw.bb134 ], [ %req.0, %sw.bb132 ], [ %req.0, %sw.bb130 ], [ %req.0, %sw.bb128 ], [ 1, %sw.bb126 ], [ 1, %sw.bb124 ], [ %req.0, %sw.bb120 ], [ %req.0, %sw.bb117 ], [ %req.0, %sw.bb114 ], [ %req.0, %sw.bb112 ], [ %req.0, %sw.bb110 ], [ %req.0, %sw.bb109 ], [ %req.0, %sw.bb108 ], [ %req.0, %sw.bb107 ], [ %req.0, %sw.bb106 ], [ %req.0, %sw.bb105 ], [ %req.0, %sw.bb104 ], [ %req.0, %lor.lhs.false96 ], [ %req.0, %lor.lhs.false ], [ %req.0, %sw.bb71 ], [ %req.0, %sw.bb70 ], [ %req.0, %sw.bb64 ], [ %req.0, %sw.bb62 ], [ %req.0, %sw.bb60 ], [ %req.0, %sw.bb55 ], [ %req.0, %sw.bb49 ], [ %req.0, %sw.bb141 ], [ %req.0, %sw.bb46 ], [ %req.0, %sw.bb40 ], [ %req.0, %sw.bb38 ], [ %req.0, %sw.bb36 ], [ %req.0, %sw.bb34 ], [ %req.0, %sw.bb31 ], [ %req.0, %sw.bb29 ], [ %req.0, %sw.bb27 ], [ %req.0, %sw.bb143 ], [ %req.0, %sw.bb26 ], [ %req.0, %sw.bb25 ], [ %req.0, %sw.bb24 ], [ %req.0, %sw.bb22 ], [ %req.0, %sw.bb20 ], [ %req.0, %sw.bb18 ], [ %req.0, %sw.bb17 ], [ %req.0, %sw.bb11 ], [ %req.0, %sw.bb9 ], [ %req.0, %sw.bb6 ], [ 1, %sw.bb4 ], [ %req.0, %while.cond ]
  %verbose.0.be = phi i32 [ %verbose.0, %sw.bb139 ], [ %verbose.0, %sw.bb138 ], [ %verbose.0, %sw.bb136 ], [ %verbose.0, %sw.bb134 ], [ %verbose.0, %sw.bb132 ], [ %verbose.0, %sw.bb130 ], [ %verbose.0, %sw.bb128 ], [ %verbose.0, %sw.bb126 ], [ %verbose.0, %sw.bb124 ], [ %verbose.0, %sw.bb120 ], [ %verbose.0, %sw.bb117 ], [ %verbose.0, %sw.bb114 ], [ %verbose.0, %sw.bb112 ], [ %verbose.0, %sw.bb110 ], [ %verbose.0, %sw.bb109 ], [ %verbose.0, %sw.bb108 ], [ %verbose.0, %sw.bb107 ], [ %verbose.0, %sw.bb106 ], [ %verbose.0, %sw.bb105 ], [ %verbose.0, %sw.bb104 ], [ %verbose.0, %lor.lhs.false96 ], [ %verbose.0, %lor.lhs.false ], [ %verbose.0, %sw.bb71 ], [ %verbose.0, %sw.bb70 ], [ %verbose.0, %sw.bb64 ], [ %verbose.0, %sw.bb62 ], [ %verbose.0, %sw.bb60 ], [ %verbose.0, %sw.bb55 ], [ %verbose.0, %sw.bb49 ], [ %verbose.0, %sw.bb141 ], [ %verbose.0, %sw.bb46 ], [ %verbose.0, %sw.bb40 ], [ %verbose.0, %sw.bb38 ], [ %verbose.0, %sw.bb36 ], [ %verbose.0, %sw.bb34 ], [ %verbose.0, %sw.bb31 ], [ %verbose.0, %sw.bb29 ], [ %verbose.0, %sw.bb27 ], [ %verbose.0, %sw.bb143 ], [ %verbose.0, %sw.bb26 ], [ %verbose.0, %sw.bb25 ], [ %verbose.0, %sw.bb24 ], [ %verbose.0, %sw.bb22 ], [ %verbose.0, %sw.bb20 ], [ %verbose.0, %sw.bb18 ], [ 1, %sw.bb17 ], [ %verbose.0, %sw.bb11 ], [ %verbose.0, %sw.bb9 ], [ %verbose.0, %sw.bb6 ], [ %verbose.0, %sw.bb4 ], [ %verbose.0, %while.cond ]
  %gencrl.0.be = phi i32 [ %gencrl.0, %sw.bb139 ], [ %gencrl.0, %sw.bb138 ], [ %gencrl.0, %sw.bb136 ], [ %gencrl.0, %sw.bb134 ], [ %gencrl.0, %sw.bb132 ], [ %gencrl.0, %sw.bb130 ], [ %gencrl.0, %sw.bb128 ], [ %gencrl.0, %sw.bb126 ], [ %gencrl.0, %sw.bb124 ], [ %gencrl.0, %sw.bb120 ], [ %gencrl.0, %sw.bb117 ], [ %gencrl.0, %sw.bb114 ], [ %gencrl.0, %sw.bb112 ], [ %gencrl.0, %sw.bb110 ], [ %gencrl.0, %sw.bb109 ], [ 1, %sw.bb108 ], [ %gencrl.0, %sw.bb107 ], [ %gencrl.0, %sw.bb106 ], [ %gencrl.0, %sw.bb105 ], [ %gencrl.0, %sw.bb104 ], [ %gencrl.0, %lor.lhs.false96 ], [ %gencrl.0, %lor.lhs.false ], [ %gencrl.0, %sw.bb71 ], [ %gencrl.0, %sw.bb70 ], [ %gencrl.0, %sw.bb64 ], [ %gencrl.0, %sw.bb62 ], [ %gencrl.0, %sw.bb60 ], [ %gencrl.0, %sw.bb55 ], [ %gencrl.0, %sw.bb49 ], [ %gencrl.0, %sw.bb141 ], [ %gencrl.0, %sw.bb46 ], [ %gencrl.0, %sw.bb40 ], [ %gencrl.0, %sw.bb38 ], [ %gencrl.0, %sw.bb36 ], [ %gencrl.0, %sw.bb34 ], [ %gencrl.0, %sw.bb31 ], [ %gencrl.0, %sw.bb29 ], [ %gencrl.0, %sw.bb27 ], [ %gencrl.0, %sw.bb143 ], [ %gencrl.0, %sw.bb26 ], [ %gencrl.0, %sw.bb25 ], [ %gencrl.0, %sw.bb24 ], [ %gencrl.0, %sw.bb22 ], [ %gencrl.0, %sw.bb20 ], [ %gencrl.0, %sw.bb18 ], [ %gencrl.0, %sw.bb17 ], [ %gencrl.0, %sw.bb11 ], [ %gencrl.0, %sw.bb9 ], [ %gencrl.0, %sw.bb6 ], [ %gencrl.0, %sw.bb4 ], [ %gencrl.0, %while.cond ]
  %dorevoke.0.be = phi i32 [ %dorevoke.0, %sw.bb139 ], [ %dorevoke.0, %sw.bb138 ], [ %dorevoke.0, %sw.bb136 ], [ %dorevoke.0, %sw.bb134 ], [ %dorevoke.0, %sw.bb132 ], [ 2, %sw.bb130 ], [ 1, %sw.bb128 ], [ %dorevoke.0, %sw.bb126 ], [ %dorevoke.0, %sw.bb124 ], [ %dorevoke.0, %sw.bb120 ], [ %dorevoke.0, %sw.bb117 ], [ %dorevoke.0, %sw.bb114 ], [ %dorevoke.0, %sw.bb112 ], [ %dorevoke.0, %sw.bb110 ], [ %dorevoke.0, %sw.bb109 ], [ %dorevoke.0, %sw.bb108 ], [ %dorevoke.0, %sw.bb107 ], [ %dorevoke.0, %sw.bb106 ], [ %dorevoke.0, %sw.bb105 ], [ %dorevoke.0, %sw.bb104 ], [ %dorevoke.0, %lor.lhs.false96 ], [ %dorevoke.0, %lor.lhs.false ], [ %dorevoke.0, %sw.bb71 ], [ %dorevoke.0, %sw.bb70 ], [ %dorevoke.0, %sw.bb64 ], [ %dorevoke.0, %sw.bb62 ], [ %dorevoke.0, %sw.bb60 ], [ %dorevoke.0, %sw.bb55 ], [ %dorevoke.0, %sw.bb49 ], [ %dorevoke.0, %sw.bb141 ], [ %dorevoke.0, %sw.bb46 ], [ %dorevoke.0, %sw.bb40 ], [ %dorevoke.0, %sw.bb38 ], [ %dorevoke.0, %sw.bb36 ], [ %dorevoke.0, %sw.bb34 ], [ %dorevoke.0, %sw.bb31 ], [ %dorevoke.0, %sw.bb29 ], [ %dorevoke.0, %sw.bb27 ], [ %dorevoke.0, %sw.bb143 ], [ %dorevoke.0, %sw.bb26 ], [ %dorevoke.0, %sw.bb25 ], [ %dorevoke.0, %sw.bb24 ], [ %dorevoke.0, %sw.bb22 ], [ %dorevoke.0, %sw.bb20 ], [ %dorevoke.0, %sw.bb18 ], [ %dorevoke.0, %sw.bb17 ], [ %dorevoke.0, %sw.bb11 ], [ %dorevoke.0, %sw.bb9 ], [ %dorevoke.0, %sw.bb6 ], [ %dorevoke.0, %sw.bb4 ], [ %dorevoke.0, %while.cond ]
  %rand_ser.0.be = phi i32 [ %rand_ser.0, %sw.bb139 ], [ %rand_ser.0, %sw.bb138 ], [ %rand_ser.0, %sw.bb136 ], [ %rand_ser.0, %sw.bb134 ], [ %rand_ser.0, %sw.bb132 ], [ %rand_ser.0, %sw.bb130 ], [ %rand_ser.0, %sw.bb128 ], [ %rand_ser.0, %sw.bb126 ], [ %rand_ser.0, %sw.bb124 ], [ %rand_ser.0, %sw.bb120 ], [ %rand_ser.0, %sw.bb117 ], [ %rand_ser.0, %sw.bb114 ], [ %rand_ser.0, %sw.bb112 ], [ %rand_ser.0, %sw.bb110 ], [ %rand_ser.0, %sw.bb109 ], [ %rand_ser.0, %sw.bb108 ], [ %rand_ser.0, %sw.bb107 ], [ %rand_ser.0, %sw.bb106 ], [ %rand_ser.0, %sw.bb105 ], [ %rand_ser.0, %sw.bb104 ], [ %rand_ser.0, %lor.lhs.false96 ], [ %rand_ser.0, %lor.lhs.false ], [ %rand_ser.0, %sw.bb71 ], [ %rand_ser.0, %sw.bb70 ], [ %rand_ser.0, %sw.bb64 ], [ %rand_ser.0, %sw.bb62 ], [ %rand_ser.0, %sw.bb60 ], [ %rand_ser.0, %sw.bb55 ], [ %rand_ser.0, %sw.bb49 ], [ %rand_ser.0, %sw.bb141 ], [ %rand_ser.0, %sw.bb46 ], [ %rand_ser.0, %sw.bb40 ], [ %rand_ser.0, %sw.bb38 ], [ %rand_ser.0, %sw.bb36 ], [ %rand_ser.0, %sw.bb34 ], [ %rand_ser.0, %sw.bb31 ], [ %rand_ser.0, %sw.bb29 ], [ %rand_ser.0, %sw.bb27 ], [ %rand_ser.0, %sw.bb143 ], [ %rand_ser.0, %sw.bb26 ], [ 1, %sw.bb25 ], [ %rand_ser.0, %sw.bb24 ], [ %rand_ser.0, %sw.bb22 ], [ %rand_ser.0, %sw.bb20 ], [ %rand_ser.0, %sw.bb18 ], [ %rand_ser.0, %sw.bb17 ], [ %rand_ser.0, %sw.bb11 ], [ %rand_ser.0, %sw.bb9 ], [ %rand_ser.0, %sw.bb6 ], [ %rand_ser.0, %sw.bb4 ], [ %rand_ser.0, %while.cond ]
  %selfsign.0.be = phi i32 [ %selfsign.0, %sw.bb139 ], [ %selfsign.0, %sw.bb138 ], [ %selfsign.0, %sw.bb136 ], [ %selfsign.0, %sw.bb134 ], [ %selfsign.0, %sw.bb132 ], [ %selfsign.0, %sw.bb130 ], [ %selfsign.0, %sw.bb128 ], [ %selfsign.0, %sw.bb126 ], [ %selfsign.0, %sw.bb124 ], [ %selfsign.0, %sw.bb120 ], [ %selfsign.0, %sw.bb117 ], [ %selfsign.0, %sw.bb114 ], [ %selfsign.0, %sw.bb112 ], [ %selfsign.0, %sw.bb110 ], [ %selfsign.0, %sw.bb109 ], [ %selfsign.0, %sw.bb108 ], [ %selfsign.0, %sw.bb107 ], [ %selfsign.0, %sw.bb106 ], [ %selfsign.0, %sw.bb105 ], [ %selfsign.0, %sw.bb104 ], [ %selfsign.0, %lor.lhs.false96 ], [ %selfsign.0, %lor.lhs.false ], [ %selfsign.0, %sw.bb71 ], [ 1, %sw.bb70 ], [ %selfsign.0, %sw.bb64 ], [ %selfsign.0, %sw.bb62 ], [ %selfsign.0, %sw.bb60 ], [ %selfsign.0, %sw.bb55 ], [ %selfsign.0, %sw.bb49 ], [ %selfsign.0, %sw.bb141 ], [ %selfsign.0, %sw.bb46 ], [ %selfsign.0, %sw.bb40 ], [ %selfsign.0, %sw.bb38 ], [ %selfsign.0, %sw.bb36 ], [ %selfsign.0, %sw.bb34 ], [ %selfsign.0, %sw.bb31 ], [ %selfsign.0, %sw.bb29 ], [ %selfsign.0, %sw.bb27 ], [ %selfsign.0, %sw.bb143 ], [ %selfsign.0, %sw.bb26 ], [ %selfsign.0, %sw.bb25 ], [ %selfsign.0, %sw.bb24 ], [ %selfsign.0, %sw.bb22 ], [ %selfsign.0, %sw.bb20 ], [ %selfsign.0, %sw.bb18 ], [ %selfsign.0, %sw.bb17 ], [ %selfsign.0, %sw.bb11 ], [ %selfsign.0, %sw.bb9 ], [ %selfsign.0, %sw.bb6 ], [ %selfsign.0, %sw.bb4 ], [ %selfsign.0, %while.cond ]
  %crl_lastupdate.0.be = phi i8* [ %crl_lastupdate.0, %sw.bb139 ], [ %crl_lastupdate.0, %sw.bb138 ], [ %crl_lastupdate.0, %sw.bb136 ], [ %crl_lastupdate.0, %sw.bb134 ], [ %crl_lastupdate.0, %sw.bb132 ], [ %crl_lastupdate.0, %sw.bb130 ], [ %crl_lastupdate.0, %sw.bb128 ], [ %crl_lastupdate.0, %sw.bb126 ], [ %crl_lastupdate.0, %sw.bb124 ], [ %crl_lastupdate.0, %sw.bb120 ], [ %crl_lastupdate.0, %sw.bb117 ], [ %crl_lastupdate.0, %sw.bb114 ], [ %crl_lastupdate.0, %sw.bb112 ], [ %call111, %sw.bb110 ], [ %crl_lastupdate.0, %sw.bb109 ], [ %crl_lastupdate.0, %sw.bb108 ], [ %crl_lastupdate.0, %sw.bb107 ], [ %crl_lastupdate.0, %sw.bb106 ], [ %crl_lastupdate.0, %sw.bb105 ], [ %crl_lastupdate.0, %sw.bb104 ], [ %crl_lastupdate.0, %lor.lhs.false96 ], [ %crl_lastupdate.0, %lor.lhs.false ], [ %crl_lastupdate.0, %sw.bb71 ], [ %crl_lastupdate.0, %sw.bb70 ], [ %crl_lastupdate.0, %sw.bb64 ], [ %crl_lastupdate.0, %sw.bb62 ], [ %crl_lastupdate.0, %sw.bb60 ], [ %crl_lastupdate.0, %sw.bb55 ], [ %crl_lastupdate.0, %sw.bb49 ], [ %crl_lastupdate.0, %sw.bb141 ], [ %crl_lastupdate.0, %sw.bb46 ], [ %crl_lastupdate.0, %sw.bb40 ], [ %crl_lastupdate.0, %sw.bb38 ], [ %crl_lastupdate.0, %sw.bb36 ], [ %crl_lastupdate.0, %sw.bb34 ], [ %crl_lastupdate.0, %sw.bb31 ], [ %crl_lastupdate.0, %sw.bb29 ], [ %crl_lastupdate.0, %sw.bb27 ], [ %crl_lastupdate.0, %sw.bb143 ], [ %crl_lastupdate.0, %sw.bb26 ], [ %crl_lastupdate.0, %sw.bb25 ], [ %crl_lastupdate.0, %sw.bb24 ], [ %crl_lastupdate.0, %sw.bb22 ], [ %crl_lastupdate.0, %sw.bb20 ], [ %crl_lastupdate.0, %sw.bb18 ], [ %crl_lastupdate.0, %sw.bb17 ], [ %crl_lastupdate.0, %sw.bb11 ], [ %crl_lastupdate.0, %sw.bb9 ], [ %crl_lastupdate.0, %sw.bb6 ], [ %crl_lastupdate.0, %sw.bb4 ], [ %crl_lastupdate.0, %while.cond ]
  %crl_nextupdate.0.be = phi i8* [ %crl_nextupdate.0, %sw.bb139 ], [ %crl_nextupdate.0, %sw.bb138 ], [ %crl_nextupdate.0, %sw.bb136 ], [ %crl_nextupdate.0, %sw.bb134 ], [ %crl_nextupdate.0, %sw.bb132 ], [ %crl_nextupdate.0, %sw.bb130 ], [ %crl_nextupdate.0, %sw.bb128 ], [ %crl_nextupdate.0, %sw.bb126 ], [ %crl_nextupdate.0, %sw.bb124 ], [ %crl_nextupdate.0, %sw.bb120 ], [ %crl_nextupdate.0, %sw.bb117 ], [ %crl_nextupdate.0, %sw.bb114 ], [ %call113, %sw.bb112 ], [ %crl_nextupdate.0, %sw.bb110 ], [ %crl_nextupdate.0, %sw.bb109 ], [ %crl_nextupdate.0, %sw.bb108 ], [ %crl_nextupdate.0, %sw.bb107 ], [ %crl_nextupdate.0, %sw.bb106 ], [ %crl_nextupdate.0, %sw.bb105 ], [ %crl_nextupdate.0, %sw.bb104 ], [ %crl_nextupdate.0, %lor.lhs.false96 ], [ %crl_nextupdate.0, %lor.lhs.false ], [ %crl_nextupdate.0, %sw.bb71 ], [ %crl_nextupdate.0, %sw.bb70 ], [ %crl_nextupdate.0, %sw.bb64 ], [ %crl_nextupdate.0, %sw.bb62 ], [ %crl_nextupdate.0, %sw.bb60 ], [ %crl_nextupdate.0, %sw.bb55 ], [ %crl_nextupdate.0, %sw.bb49 ], [ %crl_nextupdate.0, %sw.bb141 ], [ %crl_nextupdate.0, %sw.bb46 ], [ %crl_nextupdate.0, %sw.bb40 ], [ %crl_nextupdate.0, %sw.bb38 ], [ %crl_nextupdate.0, %sw.bb36 ], [ %crl_nextupdate.0, %sw.bb34 ], [ %crl_nextupdate.0, %sw.bb31 ], [ %crl_nextupdate.0, %sw.bb29 ], [ %crl_nextupdate.0, %sw.bb27 ], [ %crl_nextupdate.0, %sw.bb143 ], [ %crl_nextupdate.0, %sw.bb26 ], [ %crl_nextupdate.0, %sw.bb25 ], [ %crl_nextupdate.0, %sw.bb24 ], [ %crl_nextupdate.0, %sw.bb22 ], [ %crl_nextupdate.0, %sw.bb20 ], [ %crl_nextupdate.0, %sw.bb18 ], [ %crl_nextupdate.0, %sw.bb17 ], [ %crl_nextupdate.0, %sw.bb11 ], [ %crl_nextupdate.0, %sw.bb9 ], [ %crl_nextupdate.0, %sw.bb6 ], [ %crl_nextupdate.0, %sw.bb4 ], [ %crl_nextupdate.0, %while.cond ]
  %crlsec.0.be = phi i64 [ %crlsec.0, %sw.bb139 ], [ %crlsec.0, %sw.bb138 ], [ %crlsec.0, %sw.bb136 ], [ %crlsec.0, %sw.bb134 ], [ %crlsec.0, %sw.bb132 ], [ %crlsec.0, %sw.bb130 ], [ %crlsec.0, %sw.bb128 ], [ %crlsec.0, %sw.bb126 ], [ %crlsec.0, %sw.bb124 ], [ %call122, %sw.bb120 ], [ %crlsec.0, %sw.bb117 ], [ %crlsec.0, %sw.bb114 ], [ %crlsec.0, %sw.bb112 ], [ %crlsec.0, %sw.bb110 ], [ %crlsec.0, %sw.bb109 ], [ %crlsec.0, %sw.bb108 ], [ %crlsec.0, %sw.bb107 ], [ %crlsec.0, %sw.bb106 ], [ %crlsec.0, %sw.bb105 ], [ %crlsec.0, %sw.bb104 ], [ %crlsec.0, %lor.lhs.false96 ], [ %crlsec.0, %lor.lhs.false ], [ %crlsec.0, %sw.bb71 ], [ %crlsec.0, %sw.bb70 ], [ %crlsec.0, %sw.bb64 ], [ %crlsec.0, %sw.bb62 ], [ %crlsec.0, %sw.bb60 ], [ %crlsec.0, %sw.bb55 ], [ %crlsec.0, %sw.bb49 ], [ %crlsec.0, %sw.bb141 ], [ %crlsec.0, %sw.bb46 ], [ %crlsec.0, %sw.bb40 ], [ %crlsec.0, %sw.bb38 ], [ %crlsec.0, %sw.bb36 ], [ %crlsec.0, %sw.bb34 ], [ %crlsec.0, %sw.bb31 ], [ %crlsec.0, %sw.bb29 ], [ %crlsec.0, %sw.bb27 ], [ %crlsec.0, %sw.bb143 ], [ %crlsec.0, %sw.bb26 ], [ %crlsec.0, %sw.bb25 ], [ %crlsec.0, %sw.bb24 ], [ %crlsec.0, %sw.bb22 ], [ %crlsec.0, %sw.bb20 ], [ %crlsec.0, %sw.bb18 ], [ %crlsec.0, %sw.bb17 ], [ %crlsec.0, %sw.bb11 ], [ %crlsec.0, %sw.bb9 ], [ %crlsec.0, %sw.bb6 ], [ %crlsec.0, %sw.bb4 ], [ %crlsec.0, %while.cond ]
  %chtype.0.be = phi i64 [ %chtype.0, %sw.bb139 ], [ %chtype.0, %sw.bb138 ], [ %chtype.0, %sw.bb136 ], [ %chtype.0, %sw.bb134 ], [ %chtype.0, %sw.bb132 ], [ %chtype.0, %sw.bb130 ], [ %chtype.0, %sw.bb128 ], [ %chtype.0, %sw.bb126 ], [ %chtype.0, %sw.bb124 ], [ %chtype.0, %sw.bb120 ], [ %chtype.0, %sw.bb117 ], [ %chtype.0, %sw.bb114 ], [ %chtype.0, %sw.bb112 ], [ %chtype.0, %sw.bb110 ], [ %chtype.0, %sw.bb109 ], [ %chtype.0, %sw.bb108 ], [ %chtype.0, %sw.bb107 ], [ %chtype.0, %sw.bb106 ], [ %chtype.0, %sw.bb105 ], [ %chtype.0, %sw.bb104 ], [ %chtype.0, %lor.lhs.false96 ], [ %chtype.0, %lor.lhs.false ], [ %chtype.0, %sw.bb71 ], [ %chtype.0, %sw.bb70 ], [ %chtype.0, %sw.bb64 ], [ %chtype.0, %sw.bb62 ], [ %chtype.0, %sw.bb60 ], [ %chtype.0, %sw.bb55 ], [ %chtype.0, %sw.bb49 ], [ %chtype.0, %sw.bb141 ], [ %chtype.0, %sw.bb46 ], [ %chtype.0, %sw.bb40 ], [ %chtype.0, %sw.bb38 ], [ %chtype.0, %sw.bb36 ], [ %chtype.0, %sw.bb34 ], [ %chtype.0, %sw.bb31 ], [ %chtype.0, %sw.bb29 ], [ %chtype.0, %sw.bb27 ], [ %chtype.0, %sw.bb143 ], [ %chtype.0, %sw.bb26 ], [ %chtype.0, %sw.bb25 ], [ 4096, %sw.bb24 ], [ %chtype.0, %sw.bb22 ], [ %chtype.0, %sw.bb20 ], [ %chtype.0, %sw.bb18 ], [ %chtype.0, %sw.bb17 ], [ %chtype.0, %sw.bb11 ], [ %chtype.0, %sw.bb9 ], [ %chtype.0, %sw.bb6 ], [ %chtype.0, %sw.bb4 ], [ %chtype.0, %while.cond ]
  %rev_type.0.be = phi i32 [ %rev_type.0, %sw.bb139 ], [ %rev_type.0, %sw.bb138 ], [ %rev_type.0, %sw.bb136 ], [ %rev_type.0, %sw.bb134 ], [ %rev_type.0, %sw.bb132 ], [ %rev_type.0, %sw.bb130 ], [ %rev_type.0, %sw.bb128 ], [ %rev_type.0, %sw.bb126 ], [ %rev_type.0, %sw.bb124 ], [ %rev_type.0, %sw.bb120 ], [ %rev_type.0, %sw.bb117 ], [ %rev_type.0, %sw.bb114 ], [ %rev_type.0, %sw.bb112 ], [ %rev_type.0, %sw.bb110 ], [ %rev_type.0, %sw.bb109 ], [ %rev_type.0, %sw.bb108 ], [ %rev_type.0, %sw.bb107 ], [ %rev_type.0, %sw.bb106 ], [ %rev_type.0, %sw.bb105 ], [ %rev_type.0, %sw.bb104 ], [ %rev_type.0, %lor.lhs.false96 ], [ %rev_type.0, %lor.lhs.false ], [ %rev_type.0, %sw.bb71 ], [ %rev_type.0, %sw.bb70 ], [ %rev_type.0, %sw.bb64 ], [ %rev_type.0, %sw.bb62 ], [ %rev_type.0, %sw.bb60 ], [ %rev_type.0, %sw.bb55 ], [ %rev_type.0, %sw.bb49 ], [ %add, %sw.bb141 ], [ %rev_type.0, %sw.bb46 ], [ %rev_type.0, %sw.bb40 ], [ %rev_type.0, %sw.bb38 ], [ %rev_type.0, %sw.bb36 ], [ %rev_type.0, %sw.bb34 ], [ %rev_type.0, %sw.bb31 ], [ %rev_type.0, %sw.bb29 ], [ %rev_type.0, %sw.bb27 ], [ %rev_type.0, %sw.bb143 ], [ %rev_type.0, %sw.bb26 ], [ %rev_type.0, %sw.bb25 ], [ %rev_type.0, %sw.bb24 ], [ %rev_type.0, %sw.bb22 ], [ %rev_type.0, %sw.bb20 ], [ %rev_type.0, %sw.bb18 ], [ %rev_type.0, %sw.bb17 ], [ %rev_type.0, %sw.bb11 ], [ %rev_type.0, %sw.bb9 ], [ %rev_type.0, %sw.bb6 ], [ %rev_type.0, %sw.bb4 ], [ %rev_type.0, %while.cond ]
  %e.0.be = phi %struct.engine_st* [ %e.0, %sw.bb139 ], [ %e.0, %sw.bb138 ], [ %e.0, %sw.bb136 ], [ %e.0, %sw.bb134 ], [ %e.0, %sw.bb132 ], [ %e.0, %sw.bb130 ], [ %e.0, %sw.bb128 ], [ %e.0, %sw.bb126 ], [ %e.0, %sw.bb124 ], [ %e.0, %sw.bb120 ], [ %e.0, %sw.bb117 ], [ %e.0, %sw.bb114 ], [ %e.0, %sw.bb112 ], [ %e.0, %sw.bb110 ], [ %e.0, %sw.bb109 ], [ %e.0, %sw.bb108 ], [ %e.0, %sw.bb107 ], [ %e.0, %sw.bb106 ], [ %e.0, %sw.bb105 ], [ %e.0, %sw.bb104 ], [ %e.0, %lor.lhs.false96 ], [ %e.0, %lor.lhs.false ], [ %e.0, %sw.bb71 ], [ %e.0, %sw.bb70 ], [ %e.0, %sw.bb64 ], [ %e.0, %sw.bb62 ], [ %e.0, %sw.bb60 ], [ %e.0, %sw.bb55 ], [ %e.0, %sw.bb49 ], [ %e.0, %sw.bb141 ], [ %e.0, %sw.bb46 ], [ %e.0, %sw.bb40 ], [ %e.0, %sw.bb38 ], [ %e.0, %sw.bb36 ], [ %e.0, %sw.bb34 ], [ %e.0, %sw.bb31 ], [ %e.0, %sw.bb29 ], [ %e.0, %sw.bb27 ], [ %call145, %sw.bb143 ], [ %e.0, %sw.bb26 ], [ %e.0, %sw.bb25 ], [ %e.0, %sw.bb24 ], [ %e.0, %sw.bb22 ], [ %e.0, %sw.bb20 ], [ %e.0, %sw.bb18 ], [ %e.0, %sw.bb17 ], [ %e.0, %sw.bb11 ], [ %e.0, %sw.bb9 ], [ %e.0, %sw.bb6 ], [ %e.0, %sw.bb4 ], [ %e.0, %while.cond ]
  br label %while.cond, !llvm.loop !11

opthelp:                                          ; preds = %while.cond, %sw.bb64, %sw.bb40, %sw.bb11, %sw.bb6
  %17 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call2 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %17, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.131, i64 0, i64 0), i8* noundef %call) #10
  br label %if.then1282

sw.bb3:                                           ; preds = %while.cond
  call void @opt_help(%struct.options_st* noundef getelementptr inbounds ([71 x %struct.options_st], [71 x %struct.options_st]* @ca_options, i64 0, i64 0)) #10
  br label %if.end1283

sw.bb4:                                           ; preds = %while.cond
  %call5 = call i8* @opt_arg() #10
  br label %while.cond.backedge

sw.bb6:                                           ; preds = %while.cond
  %call7 = call i8* @opt_arg() #10
  %call8 = call i32 @opt_format(i8* noundef %call7, i64 noundef 2, i32* noundef nonnull %informat) #10
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %opthelp, label %while.cond.backedge

sw.bb9:                                           ; preds = %while.cond
  %call10 = call i8* @opt_arg() #10
  br label %while.cond.backedge

sw.bb11:                                          ; preds = %while.cond
  %call12 = call i8* @opt_arg() #10
  %call13 = call i32 @set_dateopt(i64* noundef nonnull %dateopt, i8* noundef %call12) #10
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %opthelp, label %while.cond.backedge

sw.bb17:                                          ; preds = %while.cond
  br label %while.cond.backedge

sw.bb18:                                          ; preds = %while.cond
  %call19 = call i8* @opt_arg() #10
  br label %while.cond.backedge

sw.bb20:                                          ; preds = %while.cond
  %call21 = call i8* @opt_arg() #10
  br label %while.cond.backedge

sw.bb22:                                          ; preds = %while.cond
  %call23 = call i8* @opt_arg() #10
  br label %while.cond.backedge

sw.bb24:                                          ; preds = %while.cond
  br label %while.cond.backedge

sw.bb25:                                          ; preds = %while.cond
  br label %while.cond.backedge

sw.bb26:                                          ; preds = %while.cond
  br label %while.cond.backedge

sw.bb27:                                          ; preds = %while.cond
  %call28 = call i8* @opt_arg() #10
  br label %while.cond.backedge

sw.bb29:                                          ; preds = %while.cond
  %call30 = call i8* @opt_arg() #10
  br label %while.cond.backedge

sw.bb31:                                          ; preds = %while.cond
  %call32 = call i8* @opt_arg() #10
  %call33 = call i32 @atoi(i8* noundef %call32) #11
  %conv = sext i32 %call33 to i64
  store i64 %conv, i64* %days, align 8, !tbaa !9
  br label %while.cond.backedge

sw.bb34:                                          ; preds = %while.cond
  %call35 = call i8* @opt_arg() #10
  br label %while.cond.backedge

sw.bb36:                                          ; preds = %while.cond
  %call37 = call i8* @opt_arg() #10
  br label %while.cond.backedge

sw.bb38:                                          ; preds = %while.cond
  %call39 = call i8* @opt_arg() #10
  br label %while.cond.backedge

sw.bb40:                                          ; preds = %while.cond
  %call41 = call i8* @opt_arg() #10
  %call42 = call i32 @opt_format(i8* noundef %call41, i64 noundef 1982, i32* noundef nonnull %keyformat) #10
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %opthelp, label %while.cond.backedge

sw.bb46:                                          ; preds = %while.cond
  %call47 = call i8* @opt_arg() #10
  br label %while.cond.backedge

sw.bb49:                                          ; preds = %while.cond, %while.cond
  %call50 = call i32 @opt_rand(i32 noundef %call1) #10
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.then1282, label %while.cond.backedge

sw.bb55:                                          ; preds = %while.cond, %while.cond, %while.cond
  %call56 = call i32 @opt_provider(i32 noundef %call1) #10
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.then1282, label %while.cond.backedge

sw.bb60:                                          ; preds = %while.cond
  %call61 = call i8* @opt_arg() #10
  store i8* %call61, i8** %passin, align 8, !tbaa !3
  br label %while.cond.backedge

sw.bb62:                                          ; preds = %while.cond
  %call63 = call i8* @opt_arg() #10
  br label %while.cond.backedge

sw.bb64:                                          ; preds = %while.cond
  %call65 = call i8* @opt_arg() #10
  %call66 = call i32 @opt_format(i8* noundef %call65, i64 noundef 1982, i32* noundef nonnull %certformat) #10
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %opthelp, label %while.cond.backedge

sw.bb70:                                          ; preds = %while.cond
  br label %while.cond.backedge

sw.bb71:                                          ; preds = %while.cond
  %call72 = call i8* @opt_arg() #10
  br label %while.cond.backedge

sw.bb73:                                          ; preds = %while.cond
  %cmp74 = icmp eq %struct.stack_st_OPENSSL_STRING* %sigopts.0, null
  br i1 %cmp74, label %if.end78, label %lor.lhs.false

if.end78:                                         ; preds = %sw.bb73
  %call77 = call %struct.stack_st* @OPENSSL_sk_new_null() #10
  %18 = bitcast %struct.stack_st* %call77 to %struct.stack_st_OPENSSL_STRING*
  %cmp79 = icmp eq %struct.stack_st* %call77, null
  br i1 %cmp79, label %if.then1282, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb73, %if.end78
  %sigopts.11914 = phi %struct.stack_st_OPENSSL_STRING* [ %18, %if.end78 ], [ %sigopts.0, %sw.bb73 ]
  %call81 = call fastcc %struct.stack_st* @ossl_check_OPENSSL_STRING_sk_type(%struct.stack_st_OPENSSL_STRING* noundef nonnull %sigopts.11914) #12
  %call82 = call i8* @opt_arg() #10
  %call84 = call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call81, i8* noundef %call82) #10
  %tobool85.not = icmp eq i32 %call84, 0
  br i1 %tobool85.not, label %if.then1282, label %while.cond.backedge

sw.bb88:                                          ; preds = %while.cond
  %cmp89 = icmp eq %struct.stack_st_OPENSSL_STRING* %vfyopts.0, null
  br i1 %cmp89, label %if.end93, label %lor.lhs.false96

if.end93:                                         ; preds = %sw.bb88
  %call92 = call %struct.stack_st* @OPENSSL_sk_new_null() #10
  %19 = bitcast %struct.stack_st* %call92 to %struct.stack_st_OPENSSL_STRING*
  %cmp94 = icmp eq %struct.stack_st* %call92, null
  br i1 %cmp94, label %if.then1282, label %lor.lhs.false96

lor.lhs.false96:                                  ; preds = %sw.bb88, %if.end93
  %vfyopts.11917 = phi %struct.stack_st_OPENSSL_STRING* [ %19, %if.end93 ], [ %vfyopts.0, %sw.bb88 ]
  %call97 = call fastcc %struct.stack_st* @ossl_check_OPENSSL_STRING_sk_type(%struct.stack_st_OPENSSL_STRING* noundef nonnull %vfyopts.11917) #12
  %call98 = call i8* @opt_arg() #10
  %call100 = call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call97, i8* noundef %call98) #10
  %tobool101.not = icmp eq i32 %call100, 0
  br i1 %tobool101.not, label %if.then1282, label %while.cond.backedge

sw.bb104:                                         ; preds = %while.cond
  br label %while.cond.backedge

sw.bb105:                                         ; preds = %while.cond
  br label %while.cond.backedge

sw.bb106:                                         ; preds = %while.cond
  store i1 true, i1* @preserve, align 4
  br label %while.cond.backedge

sw.bb107:                                         ; preds = %while.cond
  br label %while.cond.backedge

sw.bb108:                                         ; preds = %while.cond
  br label %while.cond.backedge

sw.bb109:                                         ; preds = %while.cond
  store i1 true, i1* @msie_hack, align 4
  br label %while.cond.backedge

sw.bb110:                                         ; preds = %while.cond
  %call111 = call i8* @opt_arg() #10
  br label %while.cond.backedge

sw.bb112:                                         ; preds = %while.cond
  %call113 = call i8* @opt_arg() #10
  br label %while.cond.backedge

sw.bb114:                                         ; preds = %while.cond
  %call115 = call i8* @opt_arg() #10
  %call116 = call i64 @atol(i8* noundef %call115) #11
  store i64 %call116, i64* %crldays, align 8, !tbaa !9
  br label %while.cond.backedge

sw.bb117:                                         ; preds = %while.cond
  %call118 = call i8* @opt_arg() #10
  %call119 = call i64 @atol(i8* noundef %call118) #11
  store i64 %call119, i64* %crlhours, align 8, !tbaa !9
  br label %while.cond.backedge

sw.bb120:                                         ; preds = %while.cond
  %call121 = call i8* @opt_arg() #10
  %call122 = call i64 @atol(i8* noundef %call121) #11
  br label %while.cond.backedge

sw.bb124:                                         ; preds = %while.cond
  %call125 = call i8* @opt_arg() #10
  br label %while.cond.backedge

sw.bb126:                                         ; preds = %while.cond
  %call127 = call i8* @opt_arg() #10
  br label %while.cond.backedge

sw.bb128:                                         ; preds = %while.cond
  %call129 = call i8* @opt_arg() #10
  br label %while.cond.backedge

sw.bb130:                                         ; preds = %while.cond
  %call131 = call i8* @opt_arg() #10
  br label %while.cond.backedge

sw.bb132:                                         ; preds = %while.cond
  %call133 = call i8* @opt_arg() #10
  br label %while.cond.backedge

sw.bb134:                                         ; preds = %while.cond
  %call135 = call i8* @opt_arg() #10
  br label %while.cond.backedge

sw.bb136:                                         ; preds = %while.cond
  %call137 = call i8* @opt_arg() #10
  br label %while.cond.backedge

sw.bb138:                                         ; preds = %while.cond
  br label %while.cond.backedge

sw.bb139:                                         ; preds = %while.cond
  %call140 = call i8* @opt_arg() #10
  br label %while.cond.backedge

sw.bb141:                                         ; preds = %while.cond, %while.cond, %while.cond, %while.cond
  %call142 = call i8* @opt_arg() #10
  %add = add nsw i32 %call1, -1604
  br label %while.cond.backedge

sw.bb143:                                         ; preds = %while.cond
  %call144 = call i8* @opt_arg() #10
  %call145 = call %struct.engine_st* @setup_engine_methods(i8* noundef %call144, i32 noundef -1, i32 noundef 0) #10
  br label %while.cond.backedge

end_of_options.loopexit:                          ; preds = %while.cond
  br label %end_of_options

end_of_options:                                   ; preds = %while.cond, %end_of_options.loopexit
  %req.2 = phi i32 [ %req.0, %end_of_options.loopexit ], [ 1, %while.cond ]
  %call146 = call i32 @opt_num_rest() #10
  %call147 = call i8** @opt_rest() #10
  %call148 = call %struct.conf_st* @app_load_config_verbose(i8* noundef %configfile.0, i32 noundef 1) #10
  %cmp149 = icmp eq %struct.conf_st* %call148, null
  br i1 %cmp149, label %if.then1282, label %if.end152

if.end152:                                        ; preds = %end_of_options
  %20 = load i8*, i8** @default_config_file, align 8, !tbaa !3
  %cmp153.not = icmp eq i8* %configfile.0, %20
  br i1 %cmp153.not, label %if.end158, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end152
  %call155 = call i32 @app_load_modules(%struct.conf_st* noundef nonnull %call148) #10
  %tobool156.not = icmp eq i32 %call155, 0
  br i1 %tobool156.not, label %if.then1282, label %if.end158

if.end158:                                        ; preds = %land.lhs.true, %if.end152
  %cmp159 = icmp eq i8* %section.0, null
  br i1 %cmp159, label %land.lhs.true161, label %if.end166

land.lhs.true161:                                 ; preds = %if.end158
  %call162 = call fastcc i8* @lookup_conf(%struct.conf_st* noundef nonnull %call148, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.132, i64 0, i64 0), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.133, i64 0, i64 0)) #12
  %cmp163 = icmp eq i8* %call162, null
  br i1 %cmp163, label %if.then1282, label %if.end166

if.end166:                                        ; preds = %land.lhs.true161, %if.end158
  %section.2 = phi i8* [ %call162, %land.lhs.true161 ], [ %section.0, %if.end158 ]
  %call167 = call i8* @NCONF_get_string(%struct.conf_st* noundef nonnull %call148, i8* noundef null, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.134, i64 0, i64 0)) #10
  %cond = icmp eq i8* %call167, null
  br i1 %cond, label %if.then170, label %if.then174

if.then170:                                       ; preds = %if.end166
  call void @ERR_clear_error() #10
  br label %if.end182

if.then174:                                       ; preds = %if.end166
  %call175 = call %struct.bio_st* @BIO_new_file(i8* noundef nonnull %call167, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.135, i64 0, i64 0)) #10
  %cmp176 = icmp eq %struct.bio_st* %call175, null
  br i1 %cmp176, label %if.then178, label %if.else

if.then178:                                       ; preds = %if.then174
  call void @ERR_clear_error() #10
  br label %if.end182

if.else:                                          ; preds = %if.then174
  %call179 = call i32 @OBJ_create_objects(%struct.bio_st* noundef nonnull %call175) #10
  %call180 = call i32 @BIO_free(%struct.bio_st* noundef nonnull %call175) #10
  br label %if.end182

if.end182:                                        ; preds = %if.then170, %if.then178, %if.else
  %call183 = call i32 @add_oid_section(%struct.conf_st* noundef nonnull %call148) #10
  %tobool184.not = icmp eq i32 %call183, 0
  br i1 %tobool184.not, label %if.then1282, label %if.end186

if.end186:                                        ; preds = %if.end182
  call void @app_RAND_load_conf(%struct.conf_st* noundef nonnull %call148, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.132, i64 0, i64 0)) #10
  %call187 = call i32 @app_RAND_load() #10
  %tobool188.not = icmp eq i32 %call187, 0
  br i1 %tobool188.not, label %if.then1282, label %if.end190

if.end190:                                        ; preds = %if.end186
  %call191 = call i8* @NCONF_get_string(%struct.conf_st* noundef nonnull %call148, i8* noundef nonnull %section.2, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.136, i64 0, i64 0)) #10
  %cond1909 = icmp eq i8* %call191, null
  br i1 %cond1909, label %if.then194, label %land.lhs.true198

if.then194:                                       ; preds = %if.end190
  call void @ERR_clear_error() #10
  br label %if.end203

land.lhs.true198:                                 ; preds = %if.end190
  %call199 = call i32 @ASN1_STRING_set_default_mask_asc(i8* noundef nonnull %call191) #10
  %tobool200.not = icmp eq i32 %call199, 0
  br i1 %tobool200.not, label %if.then201, label %if.end203

if.then201:                                       ; preds = %land.lhs.true198
  %21 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call202 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %21, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.137, i64 0, i64 0), i8* noundef nonnull %call191) #10
  br label %if.then1282

if.end203:                                        ; preds = %if.then194, %land.lhs.true198
  %cmp204.not = icmp eq i64 %chtype.0, 4096
  br i1 %cmp204.not, label %if.end218, label %if.then206

if.then206:                                       ; preds = %if.end203
  %call207 = call i8* @NCONF_get_string(%struct.conf_st* noundef nonnull %call148, i8* noundef nonnull %section.2, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i64 0, i64 0)) #10
  %cmp208 = icmp eq i8* %call207, null
  br i1 %cmp208, label %if.then210, label %if.else211

if.then210:                                       ; preds = %if.then206
  call void @ERR_clear_error() #10
  br label %if.end218

if.else211:                                       ; preds = %if.then206
  %call212 = call i32 @strcmp(i8* noundef nonnull %call207, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.138, i64 0, i64 0)) #11
  %cmp213 = icmp eq i32 %call212, 0
  %spec.select = select i1 %cmp213, i64 4096, i64 4097
  br label %if.end218

if.end218:                                        ; preds = %if.else211, %if.then210, %if.end203
  %chtype.2 = phi i64 [ 4097, %if.then210 ], [ 4096, %if.end203 ], [ %spec.select, %if.else211 ]
  %unique_subject = getelementptr inbounds %struct.db_attr_st, %struct.db_attr_st* %db_attr, i64 0, i32 0
  store i32 1, i32* %unique_subject, align 4, !tbaa !13
  %call219 = call i8* @NCONF_get_string(%struct.conf_st* noundef nonnull %call148, i8* noundef nonnull %section.2, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.139, i64 0, i64 0)) #10
  %cmp220.not = icmp eq i8* %call219, null
  br i1 %cmp220.not, label %if.else225, label %if.then222

if.then222:                                       ; preds = %if.end218
  %call223 = call i32 @parse_yesno(i8* noundef nonnull %call219, i32 noundef 1) #10
  store i32 %call223, i32* %unique_subject, align 4, !tbaa !13
  br label %if.end226

if.else225:                                       ; preds = %if.end218
  call void @ERR_clear_error() #10
  br label %if.end226

if.end226:                                        ; preds = %if.else225, %if.then222
  %tobool227.not = icmp eq i8* %ser_status.0, null
  br i1 %tobool227.not, label %if.end251, label %if.then228

if.then228:                                       ; preds = %if.end226
  %call229 = call fastcc i8* @lookup_conf(%struct.conf_st* noundef nonnull %call148, i8* noundef nonnull %section.2, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.140, i64 0, i64 0)) #12
  %cmp230 = icmp eq i8* %call229, null
  br i1 %cmp230, label %if.then1282, label %if.end233

if.end233:                                        ; preds = %if.then228
  %call234 = call %struct.ca_db_st* @load_index(i8* noundef nonnull %call229, %struct.db_attr_st* noundef nonnull %db_attr) #10
  %cmp235 = icmp eq %struct.ca_db_st* %call234, null
  br i1 %cmp235, label %if.then237, label %if.end239

if.then237:                                       ; preds = %if.end233
  %22 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call238 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %22, i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @.str.141, i64 0, i64 0), i8* noundef nonnull %call229) #10
  br label %if.then1282

if.end239:                                        ; preds = %if.end233
  %call240 = call i32 @index_index(%struct.ca_db_st* noundef nonnull %call234) #10
  %cmp241 = icmp slt i32 %call240, 1
  br i1 %cmp241, label %if.then1282, label %if.end244

if.end244:                                        ; preds = %if.end239
  %call245 = call fastcc i32 @get_certificate_status(i8* noundef nonnull %ser_status.0, %struct.ca_db_st* noundef nonnull %call234) #12
  %cmp246.not = icmp eq i32 %call245, 1
  br i1 %cmp246.not, label %if.then1282, label %if.then248

if.then248:                                       ; preds = %if.end244
  %23 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call249 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %23, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.142, i64 0, i64 0), i8* noundef nonnull %ser_status.0) #10
  br label %if.then1282

if.end251:                                        ; preds = %if.end226
  %cmp252 = icmp eq i8* %keyfile.0, null
  br i1 %cmp252, label %land.lhs.true254, label %if.end259

land.lhs.true254:                                 ; preds = %if.end251
  %call255 = call fastcc i8* @lookup_conf(%struct.conf_st* noundef nonnull %call148, i8* noundef nonnull %section.2, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.143, i64 0, i64 0)) #12
  %cmp256 = icmp eq i8* %call255, null
  br i1 %cmp256, label %if.then1282, label %if.end259

if.end259:                                        ; preds = %land.lhs.true254, %if.end251
  %keyfile.2 = phi i8* [ %call255, %land.lhs.true254 ], [ %keyfile.0, %if.end251 ]
  %24 = load i8*, i8** %passin, align 8, !tbaa !3
  %cmp260 = icmp eq i8* %24, null
  br i1 %cmp260, label %if.then262, label %if.end268

if.then262:                                       ; preds = %if.end259
  %call263 = call i32 @app_passwd(i8* noundef %passinarg.0, i8* noundef null, i8** noundef nonnull %passin, i8** noundef null) #10
  %tobool264.not = icmp eq i32 %call263, 0
  br i1 %tobool264.not, label %if.then265, label %if.then262.if.end268_crit_edge

if.then262.if.end268_crit_edge:                   ; preds = %if.then262
  %.pre = load i8*, i8** %passin, align 8, !tbaa !3
  br label %if.end268

if.then265:                                       ; preds = %if.then262
  %25 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call266 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %25, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.144, i64 0, i64 0)) #10
  br label %if.then1282

if.end268:                                        ; preds = %if.then262.if.end268_crit_edge, %if.end259
  %26 = phi i8* [ %.pre, %if.then262.if.end268_crit_edge ], [ %24, %if.end259 ]
  %free_passin.0 = phi i32 [ 1, %if.then262.if.end268_crit_edge ], [ 0, %if.end259 ]
  %27 = load i32, i32* %keyformat, align 4, !tbaa !7
  %call269 = call %struct.evp_pkey_st* @load_key(i8* noundef nonnull %keyfile.2, i32 noundef %27, i32 noundef 0, i8* noundef %26, %struct.engine_st* noundef %e.0, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.145, i64 0, i64 0)) #10
  %28 = load i8*, i8** %passin, align 8, !tbaa !3
  call void @cleanse(i8* noundef %28) #10
  %cmp270 = icmp eq %struct.evp_pkey_st* %call269, null
  br i1 %cmp270, label %if.then1282, label %if.end273

if.end273:                                        ; preds = %if.end268
  %tobool274 = icmp eq i32 %selfsign.0, 0
  %tobool276 = icmp ne i8* %spkac_file.0, null
  %or.cond = select i1 %tobool274, i1 true, i1 %tobool276
  %tobool278 = icmp ne i8* %ss_cert_file.0, null
  %or.cond1381 = select i1 %or.cond, i1 true, i1 %tobool278
  %tobool280 = icmp ne i32 %gencrl.0, 0
  %or.cond1382 = select i1 %or.cond1381, i1 true, i1 %tobool280
  br i1 %or.cond1382, label %if.then281, label %if.end300

if.then281:                                       ; preds = %if.end273
  %cmp282 = icmp eq i8* %certfile.0, null
  br i1 %cmp282, label %land.lhs.true284, label %if.end289

land.lhs.true284:                                 ; preds = %if.then281
  %call285 = call fastcc i8* @lookup_conf(%struct.conf_st* noundef nonnull %call148, i8* noundef nonnull %section.2, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.146, i64 0, i64 0)) #12
  %cmp286 = icmp eq i8* %call285, null
  br i1 %cmp286, label %if.then1282, label %if.end289

if.end289:                                        ; preds = %land.lhs.true284, %if.then281
  %certfile.2 = phi i8* [ %call285, %land.lhs.true284 ], [ %certfile.0, %if.then281 ]
  %29 = load i32, i32* %certformat, align 4, !tbaa !7
  %30 = load i8*, i8** %passin, align 8, !tbaa !3
  %call290 = call %struct.x509_st* @load_cert_pass(i8* noundef nonnull %certfile.2, i32 noundef %29, i32 noundef 1, i8* noundef %30, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.147, i64 0, i64 0)) #10
  %cmp291 = icmp eq %struct.x509_st* %call290, null
  br i1 %cmp291, label %if.then1282, label %if.end294

if.end294:                                        ; preds = %if.end289
  %call295 = call i32 @X509_check_private_key(%struct.x509_st* noundef nonnull %call290, %struct.evp_pkey_st* noundef nonnull %call269) #10
  %tobool296.not = icmp eq i32 %call295, 0
  br i1 %tobool296.not, label %if.then297, label %if.end300

if.then297:                                       ; preds = %if.end294
  %31 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call298 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %31, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.148, i64 0, i64 0)) #10
  br label %if.then1282

if.end300:                                        ; preds = %if.end294, %if.end273
  %x509.0 = phi %struct.x509_st* [ %call290, %if.end294 ], [ null, %if.end273 ]
  %spec.select1904 = select i1 %tobool274, %struct.x509_st* %x509.0, %struct.x509_st* null
  %call304 = call i8* @NCONF_get_string(%struct.conf_st* noundef nonnull %call148, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.132, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.149, i64 0, i64 0)) #10
  %cond1910 = icmp eq i8* %call304, null
  br i1 %cond1910, label %if.then307, label %land.lhs.true311

if.then307:                                       ; preds = %if.end300
  call void @ERR_clear_error() #10
  br label %if.end320

land.lhs.true311:                                 ; preds = %if.end300
  %32 = load i8, i8* %call304, align 1, !tbaa !15
  switch i8 %32, label %if.end320 [
    i8 121, label %if.then319
    i8 89, label %if.then319
  ]

if.then319:                                       ; preds = %land.lhs.true311, %land.lhs.true311
  store i1 true, i1* @preserve, align 4
  br label %if.end320

if.end320:                                        ; preds = %if.then307, %land.lhs.true311, %if.then319
  %call321 = call i8* @NCONF_get_string(%struct.conf_st* noundef nonnull %call148, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.132, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i64 0, i64 0)) #10
  %cond1911 = icmp eq i8* %call321, null
  br i1 %cond1911, label %if.then324, label %land.lhs.true328

if.then324:                                       ; preds = %if.end320
  call void @ERR_clear_error() #10
  br label %if.end337

land.lhs.true328:                                 ; preds = %if.end320
  %33 = load i8, i8* %call321, align 1, !tbaa !15
  switch i8 %33, label %if.end337 [
    i8 121, label %if.then336
    i8 89, label %if.then336
  ]

if.then336:                                       ; preds = %land.lhs.true328, %land.lhs.true328
  store i1 true, i1* @msie_hack, align 4
  br label %if.end337

if.end337:                                        ; preds = %if.then324, %land.lhs.true328, %if.then336
  %call338 = call i8* @NCONF_get_string(%struct.conf_st* noundef nonnull %call148, i8* noundef nonnull %section.2, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.150, i64 0, i64 0)) #10
  %cmp339.not = icmp eq i8* %call338, null
  br i1 %cmp339.not, label %if.end347, label %if.then341

if.then341:                                       ; preds = %if.end337
  %call342 = call i32 @set_nameopt(i8* noundef nonnull %call338) #10
  %tobool343.not = icmp eq i32 %call342, 0
  br i1 %tobool343.not, label %if.then344, label %if.end347

if.then344:                                       ; preds = %if.then341
  %34 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call345 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %34, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.151, i64 0, i64 0), i8* noundef nonnull %call338) #10
  br label %if.then1282

if.end347:                                        ; preds = %if.then341, %if.end337
  %default_op.0 = phi i32 [ 1, %if.end337 ], [ 0, %if.then341 ]
  %call348 = call i8* @NCONF_get_string(%struct.conf_st* noundef nonnull %call148, i8* noundef nonnull %section.2, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.152, i64 0, i64 0)) #10
  %cmp349.not = icmp eq i8* %call348, null
  br i1 %cmp349.not, label %if.else357, label %if.then351

if.then351:                                       ; preds = %if.end347
  %call352 = call i32 @set_cert_ex(i64* noundef nonnull %certopt, i8* noundef nonnull %call348) #10
  %tobool353.not = icmp eq i32 %call352, 0
  br i1 %tobool353.not, label %if.then354, label %if.end358

if.then354:                                       ; preds = %if.then351
  %35 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call355 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %35, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.153, i64 0, i64 0), i8* noundef nonnull %call348) #10
  br label %if.then1282

if.else357:                                       ; preds = %if.end347
  call void @ERR_clear_error() #10
  br label %if.end358

if.end358:                                        ; preds = %if.then351, %if.else357
  %default_op.1 = phi i32 [ %default_op.0, %if.else357 ], [ 0, %if.then351 ]
  %call359 = call i8* @NCONF_get_string(%struct.conf_st* noundef nonnull %call148, i8* noundef nonnull %section.2, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.154, i64 0, i64 0)) #10
  %cmp360.not = icmp eq i8* %call359, null
  br i1 %cmp360.not, label %if.else368, label %if.then362

if.then362:                                       ; preds = %if.end358
  %call363 = call i32 @set_ext_copy(i32* noundef nonnull %ext_copy, i8* noundef nonnull %call359) #10
  %tobool364.not = icmp eq i32 %call363, 0
  br i1 %tobool364.not, label %if.then365, label %if.end369

if.then365:                                       ; preds = %if.then362
  %36 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call366 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %36, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.155, i64 0, i64 0), i8* noundef nonnull %call359) #10
  br label %if.then1282

if.else368:                                       ; preds = %if.end358
  call void @ERR_clear_error() #10
  br label %if.end369

if.end369:                                        ; preds = %if.then362, %if.else368
  %cmp370 = icmp eq i8* %outdir.0, null
  %tobool373 = icmp ne i32 %req.2, 0
  %or.cond1383 = select i1 %cmp370, i1 %tobool373, i1 false
  br i1 %or.cond1383, label %if.then374, label %if.end387

if.then374:                                       ; preds = %if.end369
  %call375 = call i8* @NCONF_get_string(%struct.conf_st* noundef nonnull %call148, i8* noundef nonnull %section.2, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.156, i64 0, i64 0)) #10
  %cmp376 = icmp eq i8* %call375, null
  br i1 %cmp376, label %if.then378, label %if.end380

if.then378:                                       ; preds = %if.then374
  %37 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call379 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %37, i8* noundef getelementptr inbounds ([75 x i8], [75 x i8]* @.str.157, i64 0, i64 0)) #10
  br label %if.then1282

if.end380:                                        ; preds = %if.then374
  %call381 = call i32 @app_isdir(i8* noundef nonnull %call375) #10
  %cmp382 = icmp slt i32 %call381, 1
  br i1 %cmp382, label %if.then384, label %if.end387

if.then384:                                       ; preds = %if.end380
  %38 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call385 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %38, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.158, i64 0, i64 0), i8* noundef %call, i8* noundef nonnull %call375) #10
  call void @perror(i8* noundef nonnull %call375) #10
  br label %if.then1282

if.end387:                                        ; preds = %if.end380, %if.end369
  %outdir.2 = phi i8* [ %call375, %if.end380 ], [ %outdir.0, %if.end369 ]
  %call388 = call fastcc i8* @lookup_conf(%struct.conf_st* noundef nonnull %call148, i8* noundef nonnull %section.2, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.140, i64 0, i64 0)) #12
  %cmp389 = icmp eq i8* %call388, null
  br i1 %cmp389, label %if.then1282, label %if.end392

if.end392:                                        ; preds = %if.end387
  %call393 = call %struct.ca_db_st* @load_index(i8* noundef nonnull %call388, %struct.db_attr_st* noundef nonnull %db_attr) #10
  %cmp394 = icmp eq %struct.ca_db_st* %call393, null
  br i1 %cmp394, label %if.then396, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end392
  %db399 = getelementptr inbounds %struct.ca_db_st, %struct.ca_db_st* %call393, i64 0, i32 1
  %39 = load %struct.txt_db_st*, %struct.txt_db_st** %db399, align 8, !tbaa !16
  %data2233 = getelementptr inbounds %struct.txt_db_st, %struct.txt_db_st* %39, i64 0, i32 1
  %40 = load %struct.stack_st_OPENSSL_PSTRING*, %struct.stack_st_OPENSSL_PSTRING** %data2233, align 8, !tbaa !20
  %call4002234 = call fastcc i32 @sk_OPENSSL_PSTRING_num(%struct.stack_st_OPENSSL_PSTRING* noundef %40) #12
  %cmp4012235 = icmp sgt i32 %call4002234, 0
  br i1 %cmp4012235, label %for.body, label %for.end473

if.then396:                                       ; preds = %if.end392
  %41 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call397 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %41, i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @.str.141, i64 0, i64 0), i8* noundef nonnull %call388) #10
  br label %if.then1282

for.body:                                         ; preds = %for.cond.preheader, %for.inc472
  %i.02236 = phi i32 [ %inc, %for.inc472 ], [ 0, %for.cond.preheader ]
  %42 = load %struct.txt_db_st*, %struct.txt_db_st** %db399, align 8, !tbaa !16
  %data404 = getelementptr inbounds %struct.txt_db_st, %struct.txt_db_st* %42, i64 0, i32 1
  %43 = load %struct.stack_st_OPENSSL_PSTRING*, %struct.stack_st_OPENSSL_PSTRING** %data404, align 8, !tbaa !20
  %call405 = call fastcc i8** @sk_OPENSSL_PSTRING_value(%struct.stack_st_OPENSSL_PSTRING* noundef %43, i32 noundef %i.02236) #12
  %44 = load i8*, i8** %call405, align 8, !tbaa !3
  %45 = load i8, i8* %44, align 1, !tbaa !15
  %cmp408.not = icmp eq i8 %45, 82
  %arrayidx426 = getelementptr inbounds i8*, i8** %call405, i64 2
  %46 = load i8*, i8** %arrayidx426, align 8, !tbaa !3
  br i1 %cmp408.not, label %land.lhs.true425, label %land.lhs.true410

land.lhs.true410:                                 ; preds = %for.body
  %47 = load i8, i8* %46, align 1, !tbaa !15
  %cmp414.not = icmp eq i8 %47, 0
  br i1 %cmp414.not, label %if.end432, label %if.then416

if.then416:                                       ; preds = %land.lhs.true410
  %48 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %add417 = add nuw nsw i32 %i.02236, 1
  %call418 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %48, i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.159, i64 0, i64 0), i32 noundef %add417) #10
  br label %if.then1282

land.lhs.true425:                                 ; preds = %for.body
  %call427 = call fastcc i32 @make_revoked(%struct.x509_revoked_st* noundef null, i8* noundef %46) #12
  %tobool428.not = icmp eq i32 %call427, 0
  br i1 %tobool428.not, label %if.then429, label %if.end432

if.then429:                                       ; preds = %land.lhs.true425
  %49 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %add430 = add nuw nsw i32 %i.02236, 1
  %call431 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %49, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.160, i64 0, i64 0), i32 noundef %add430) #10
  br label %if.then1282

if.end432:                                        ; preds = %land.lhs.true410, %land.lhs.true425
  %arrayidx433 = getelementptr inbounds i8*, i8** %call405, i64 1
  %50 = load i8*, i8** %arrayidx433, align 8, !tbaa !3
  %call434 = call fastcc i32 @check_time_format(i8* noundef %50) #12
  %tobool435.not = icmp eq i32 %call434, 0
  br i1 %tobool435.not, label %if.then436, label %if.end439

if.then436:                                       ; preds = %if.end432
  %51 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %add437 = add nuw nsw i32 %i.02236, 1
  %call438 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %51, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.161, i64 0, i64 0), i32 noundef %add437) #10
  br label %if.then1282

if.end439:                                        ; preds = %if.end432
  %arrayidx440 = getelementptr inbounds i8*, i8** %call405, i64 3
  %52 = load i8*, i8** %arrayidx440, align 8, !tbaa !3
  %call441 = call i64 @strlen(i8* noundef %52) #11
  %conv442 = trunc i64 %call441 to i32
  %53 = load i8, i8* %52, align 1, !tbaa !15
  %cmp444 = icmp eq i8 %53, 45
  %p.0.idx = zext i1 %cmp444 to i64
  %p.0 = getelementptr i8, i8* %52, i64 %p.0.idx
  %dec = sext i1 %cmp444 to i32
  %j.0 = add nsw i32 %dec, %conv442
  %and = and i32 %j.0, 1
  %tobool448 = icmp ne i32 %and, 0
  %cmp450 = icmp slt i32 %j.0, 2
  %or.cond1384 = or i1 %cmp450, %tobool448
  br i1 %or.cond1384, label %if.then452, label %for.cond456.preheader

for.cond456.preheader:                            ; preds = %if.end439
  %54 = load i8, i8* %p.0, align 1, !tbaa !15
  %tobool457.not2231 = icmp eq i8 %54, 0
  br i1 %tobool457.not2231, label %for.inc472, label %for.body458.lr.ph

for.body458.lr.ph:                                ; preds = %for.cond456.preheader
  %call459 = tail call i16** @__ctype_b_loc() #13
  %55 = load i16*, i16** %call459, align 8, !tbaa !3
  br label %for.body458

if.then452:                                       ; preds = %if.end439
  %56 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %add453 = add nuw nsw i32 %i.02236, 1
  %call454 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %56, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.162, i64 0, i64 0), i32 noundef %add453, i32 noundef %j.0) #10
  br label %if.then1282

for.cond456:                                      ; preds = %for.body458
  %57 = load i8, i8* %incdec.ptr471, align 1, !tbaa !15
  %tobool457.not = icmp eq i8 %57, 0
  br i1 %tobool457.not, label %for.inc472, label %for.body458, !llvm.loop !22

for.body458:                                      ; preds = %for.body458.lr.ph, %for.cond456
  %58 = phi i8 [ %54, %for.body458.lr.ph ], [ %57, %for.cond456 ]
  %p.12232 = phi i8* [ %p.0, %for.body458.lr.ph ], [ %incdec.ptr471, %for.cond456 ]
  %59 = zext i8 %58 to i64
  %arrayidx461 = getelementptr inbounds i16, i16* %55, i64 %59
  %60 = load i16, i16* %arrayidx461, align 2, !tbaa !23
  %61 = and i16 %60, 4096
  %tobool464.not = icmp eq i16 %61, 0
  %incdec.ptr471 = getelementptr inbounds i8, i8* %p.12232, i64 1
  br i1 %tobool464.not, label %if.then465, label %for.cond456

if.then465:                                       ; preds = %for.body458
  %62 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %add466 = add nuw nsw i32 %i.02236, 1
  %conv467 = sext i8 %58 to i32
  %call469 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %62, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.163, i64 0, i64 0), i32 noundef %add466, i32 noundef %conv467, i32 noundef %conv467) #10
  br label %if.then1282

for.inc472:                                       ; preds = %for.cond456, %for.cond456.preheader
  %inc = add nuw nsw i32 %i.02236, 1
  %63 = load %struct.txt_db_st*, %struct.txt_db_st** %db399, align 8, !tbaa !16
  %data = getelementptr inbounds %struct.txt_db_st, %struct.txt_db_st* %63, i64 0, i32 1
  %64 = load %struct.stack_st_OPENSSL_PSTRING*, %struct.stack_st_OPENSSL_PSTRING** %data, align 8, !tbaa !20
  %call400 = call fastcc i32 @sk_OPENSSL_PSTRING_num(%struct.stack_st_OPENSSL_PSTRING* noundef %64) #12
  %cmp401 = icmp slt i32 %inc, %call400
  br i1 %cmp401, label %for.body, label %for.end473, !llvm.loop !25

for.end473:                                       ; preds = %for.inc472, %for.cond.preheader
  %tobool474.not = icmp eq i32 %verbose.0, 0
  br i1 %tobool474.not, label %if.end483, label %if.then475

if.then475:                                       ; preds = %for.end473
  %65 = load %struct.bio_st*, %struct.bio_st** @bio_out, align 8, !tbaa !3
  %66 = load %struct.txt_db_st*, %struct.txt_db_st** %db399, align 8, !tbaa !16
  %call477 = call i64 @TXT_DB_write(%struct.bio_st* noundef %65, %struct.txt_db_st* noundef %66) #10
  %67 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %68 = load %struct.txt_db_st*, %struct.txt_db_st** %db399, align 8, !tbaa !16
  %data479 = getelementptr inbounds %struct.txt_db_st, %struct.txt_db_st* %68, i64 0, i32 1
  %69 = load %struct.stack_st_OPENSSL_PSTRING*, %struct.stack_st_OPENSSL_PSTRING** %data479, align 8, !tbaa !20
  %call480 = call fastcc i32 @sk_OPENSSL_PSTRING_num(%struct.stack_st_OPENSSL_PSTRING* noundef %69) #12
  %call481 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %67, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.164, i64 0, i64 0), i32 noundef %call480) #10
  %70 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call482 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %70, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.165, i64 0, i64 0)) #10
  br label %if.end483

if.end483:                                        ; preds = %if.then475, %for.end473
  %call484 = call i32 @index_index(%struct.ca_db_st* noundef nonnull %call393) #10
  %cmp485 = icmp slt i32 %call484, 1
  br i1 %cmp485, label %if.then1282, label %if.end488

if.end488:                                        ; preds = %if.end483
  %tobool489.not = icmp eq i32 %doupdatedb.0, 0
  br i1 %tobool489.not, label %if.end523, label %if.then490

if.then490:                                       ; preds = %if.end488
  br i1 %tobool474.not, label %if.end494, label %if.then492

if.then492:                                       ; preds = %if.then490
  %71 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call493 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %71, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.166, i64 0, i64 0), i8* noundef nonnull %call388) #10
  br label %if.end494

if.end494:                                        ; preds = %if.then492, %if.then490
  %call495 = call fastcc i32 @do_updatedb(%struct.ca_db_st* noundef nonnull %call393) #12
  switch i32 %call495, label %if.else508 [
    i32 -1, label %if.then498
    i32 0, label %if.then503
  ]

if.then498:                                       ; preds = %if.end494
  %72 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call499 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %72, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.167, i64 0, i64 0)) #10
  br label %if.then1282

if.then503:                                       ; preds = %if.end494
  br i1 %tobool474.not, label %if.end523, label %if.then505

if.then505:                                       ; preds = %if.then503
  %73 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call506 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %73, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.168, i64 0, i64 0)) #10
  br label %if.end523

if.else508:                                       ; preds = %if.end494
  %call509 = call i32 @save_index(i8* noundef nonnull %call388, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.169, i64 0, i64 0), %struct.ca_db_st* noundef nonnull %call393) #10
  %tobool510.not = icmp eq i32 %call509, 0
  br i1 %tobool510.not, label %if.then1282, label %if.end512

if.end512:                                        ; preds = %if.else508
  %call513 = call i32 @rotate_index(i8* noundef nonnull %call388, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.169, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.170, i64 0, i64 0)) #10
  %tobool514.not = icmp eq i32 %call513, 0
  br i1 %tobool514.not, label %if.then1282, label %if.end516

if.end516:                                        ; preds = %if.end512
  br i1 %tobool474.not, label %if.end523, label %if.then518

if.then518:                                       ; preds = %if.end516
  %74 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call519 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %74, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.171, i64 0, i64 0), i32 noundef %call495) #10
  br label %if.end523

if.end523:                                        ; preds = %if.end516, %if.then518, %if.then503, %if.then505, %if.end488
  %tobool524.not = icmp eq i8* %extfile.0, null
  br i1 %tobool524.not, label %if.end544, label %if.then525

if.then525:                                       ; preds = %if.end523
  %call526 = call %struct.conf_st* @app_load_config_internal(i8* noundef nonnull %extfile.0, i32 noundef 0) #10
  store %struct.conf_st* %call526, %struct.conf_st** @extfile_conf, align 8, !tbaa !3
  %cmp527 = icmp eq %struct.conf_st* %call526, null
  br i1 %cmp527, label %if.then1282, label %if.end530

if.end530:                                        ; preds = %if.then525
  br i1 %tobool474.not, label %if.end534, label %if.then532

if.then532:                                       ; preds = %if.end530
  %75 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call533 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %75, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.172, i64 0, i64 0), i8* noundef nonnull %extfile.0) #10
  br label %if.end534

if.end534:                                        ; preds = %if.then532, %if.end530
  %cmp535 = icmp eq i8* %extensions.0, null
  br i1 %cmp535, label %if.then537, label %if.end544

if.then537:                                       ; preds = %if.end534
  %76 = load %struct.conf_st*, %struct.conf_st** @extfile_conf, align 8, !tbaa !3
  %call538 = call i8* @NCONF_get_string(%struct.conf_st* noundef %76, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.173, i64 0, i64 0), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.56, i64 0, i64 0)) #10
  %cmp539 = icmp eq i8* %call538, null
  %spec.store.select = select i1 %cmp539, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.173, i64 0, i64 0), i8* %call538
  br label %if.end544

if.end544:                                        ; preds = %if.end534, %if.then537, %if.end523
  %extensions.2 = phi i8* [ %spec.store.select, %if.then537 ], [ %extensions.0, %if.end534 ], [ %extensions.0, %if.end523 ]
  %or.cond1385 = select i1 %tobool373, i1 true, i1 %tobool280
  br i1 %or.cond1385, label %if.then548, label %if.end556

if.then548:                                       ; preds = %if.end544
  %cmp552 = icmp ne i8* %outfile.0, null
  %or.cond1386 = select i1 %tobool276, i1 %cmp552, i1 false
  br i1 %or.cond1386, label %if.then554, label %if.end556

if.then554:                                       ; preds = %if.then548
  br label %if.end556

if.end556:                                        ; preds = %if.then548, %if.then554, %if.end544
  %batch.2 = phi i32 [ 1, %if.then554 ], [ %batch.0, %if.then548 ], [ %batch.0, %if.end544 ]
  %tobool1227.not = phi i32 [ 4, %if.then554 ], [ 32769, %if.then548 ], [ 32769, %if.end544 ]
  %output_der.0 = phi i32 [ 1, %if.then554 ], [ 0, %if.then548 ], [ 0, %if.end544 ]
  %call557 = call i32 @EVP_PKEY_get_default_digest_name(%struct.evp_pkey_st* noundef %call269, i8* noundef nonnull %3, i64 noundef 80) #10
  %cmp558 = icmp eq i32 %call557, 2
  br i1 %cmp558, label %land.lhs.true560, label %if.else566

land.lhs.true560:                                 ; preds = %if.end556
  %call562 = call i32 @strcmp(i8* noundef nonnull %3, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.174, i64 0, i64 0)) #11
  %cmp563 = icmp eq i32 %call562, 0
  br i1 %cmp563, label %if.end587, label %if.else566

if.else566:                                       ; preds = %land.lhs.true560, %if.end556
  %cmp567 = icmp eq i8* %dgst.0, null
  br i1 %cmp567, label %land.lhs.true569, label %if.else574

land.lhs.true569:                                 ; preds = %if.else566
  %call570 = call fastcc i8* @lookup_conf(%struct.conf_st* noundef %call148, i8* noundef %section.2, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.175, i64 0, i64 0)) #12
  %cmp571 = icmp eq i8* %call570, null
  br i1 %cmp571, label %if.then1282, label %if.else574

if.else574:                                       ; preds = %land.lhs.true569, %if.else566
  %dgst.2 = phi i8* [ %call570, %land.lhs.true569 ], [ %dgst.0, %if.else566 ]
  %call575 = call i32 @strcmp(i8* noundef nonnull %dgst.2, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.173, i64 0, i64 0)) #11
  %cmp576 = icmp eq i32 %call575, 0
  br i1 %cmp576, label %if.then578, label %if.end587

if.then578:                                       ; preds = %if.else574
  %cmp579 = icmp slt i32 %call557, 1
  br i1 %cmp579, label %if.then581, label %if.end587

if.then581:                                       ; preds = %if.then578
  %77 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call582 = call i32 @BIO_puts(%struct.bio_st* noundef %77, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.176, i64 0, i64 0)) #10
  br label %if.then1282

if.end587:                                        ; preds = %if.then578, %land.lhs.true560, %if.else574
  %dgst.3 = phi i8* [ %dgst.2, %if.else574 ], [ null, %land.lhs.true560 ], [ %3, %if.then578 ]
  br i1 %tobool373, label %if.then589, label %if.end1033

if.then589:                                       ; preds = %if.end587
  %cmp590 = icmp eq i32 %email_dn.0, 1
  br i1 %cmp590, label %if.then592, label %if.end602

if.then592:                                       ; preds = %if.then589
  %call593 = call i8* @NCONF_get_string(%struct.conf_st* noundef %call148, i8* noundef %section.2, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.177, i64 0, i64 0)) #10
  %cmp594.not = icmp eq i8* %call593, null
  br i1 %cmp594.not, label %if.end602, label %land.lhs.true596

land.lhs.true596:                                 ; preds = %if.then592
  %call597 = call i32 @strcmp(i8* noundef nonnull %call593, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.178, i64 0, i64 0)) #11
  %cmp598 = icmp ne i32 %call597, 0
  %spec.select1907 = zext i1 %cmp598 to i32
  br label %if.end602

if.end602:                                        ; preds = %land.lhs.true596, %if.then592, %if.then589
  %email_dn.3 = phi i32 [ 0, %if.then589 ], [ 1, %if.then592 ], [ %spec.select1907, %land.lhs.true596 ]
  br i1 %tobool474.not, label %if.end606, label %if.then604

if.then604:                                       ; preds = %if.end602
  %78 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call605 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %78, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.179, i64 0, i64 0), i8* noundef %dgst.3) #10
  br label %if.end606

if.end606:                                        ; preds = %if.then604, %if.end602
  %cmp607 = icmp eq i8* %policy.0, null
  br i1 %cmp607, label %land.lhs.true609, label %if.end614

land.lhs.true609:                                 ; preds = %if.end606
  %call610 = call fastcc i8* @lookup_conf(%struct.conf_st* noundef %call148, i8* noundef %section.2, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.37, i64 0, i64 0)) #12
  %cmp611 = icmp eq i8* %call610, null
  br i1 %cmp611, label %if.then1282, label %if.end614

if.end614:                                        ; preds = %land.lhs.true609, %if.end606
  %policy.2 = phi i8* [ %call610, %land.lhs.true609 ], [ %policy.0, %if.end606 ]
  br i1 %tobool474.not, label %if.end618, label %if.then616

if.then616:                                       ; preds = %if.end614
  %79 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call617 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %79, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.180, i64 0, i64 0), i8* noundef nonnull %policy.2) #10
  br label %if.end618

if.end618:                                        ; preds = %if.then616, %if.end614
  %call619 = call i8* @NCONF_get_string(%struct.conf_st* noundef %call148, i8* noundef %section.2, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.46, i64 0, i64 0)) #10
  %cmp620.not = icmp eq i8* %call619, null
  br i1 %cmp620.not, label %if.else623, label %if.end629

if.else623:                                       ; preds = %if.end618
  %call624 = call fastcc i8* @lookup_conf(%struct.conf_st* noundef %call148, i8* noundef %section.2, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.181, i64 0, i64 0)) #12
  %cmp625 = icmp eq i8* %call624, null
  br i1 %cmp625, label %if.then1282, label %if.end629

if.end629:                                        ; preds = %if.end618, %if.else623
  %serialfile.0 = phi i8* [ %call624, %if.else623 ], [ null, %if.end618 ]
  %rand_ser.2 = phi i32 [ %rand_ser.0, %if.else623 ], [ 1, %if.end618 ]
  %80 = load %struct.conf_st*, %struct.conf_st** @extfile_conf, align 8, !tbaa !3
  %cmp630.not = icmp eq %struct.conf_st* %80, null
  br i1 %cmp630.not, label %if.else638, label %if.then632

if.then632:                                       ; preds = %if.end629
  %81 = bitcast %struct.v3_ext_ctx* %ctx to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %81) #9
  call void @X509V3_set_ctx(%struct.v3_ext_ctx* noundef nonnull %ctx, %struct.x509_st* noundef null, %struct.x509_st* noundef null, %struct.X509_req_st* noundef null, %struct.X509_crl_st* noundef null, i32 noundef 1) #10
  %82 = load %struct.conf_st*, %struct.conf_st** @extfile_conf, align 8, !tbaa !3
  call void @X509V3_set_nconf(%struct.v3_ext_ctx* noundef nonnull %ctx, %struct.conf_st* noundef %82) #10
  %83 = load %struct.conf_st*, %struct.conf_st** @extfile_conf, align 8, !tbaa !3
  %call633 = call i32 @X509V3_EXT_add_nconf(%struct.conf_st* noundef %83, %struct.v3_ext_ctx* noundef nonnull %ctx, i8* noundef %extensions.2, %struct.x509_st* noundef null) #10
  %tobool634.not = icmp eq i32 %call633, 0
  br i1 %tobool634.not, label %cleanup, label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then632
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %81) #9
  br label %if.end661

cleanup:                                          ; preds = %if.then632
  %84 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call636 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %84, i8* noundef getelementptr inbounds ([63 x i8], [63 x i8]* @.str.182, i64 0, i64 0), i8* noundef %extensions.2) #10
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %81) #9
  br label %if.then1282

if.else638:                                       ; preds = %if.end629
  %cmp639 = icmp eq i8* %extensions.2, null
  br i1 %cmp639, label %if.then641, label %if.then650

if.then641:                                       ; preds = %if.else638
  %call642 = call i8* @NCONF_get_string(%struct.conf_st* noundef %call148, i8* noundef %section.2, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.183, i64 0, i64 0)) #10
  %cmp643 = icmp eq i8* %call642, null
  br i1 %cmp643, label %if.end647, label %if.then650

if.end647:                                        ; preds = %if.then641
  call void @ERR_clear_error() #10
  br label %if.end661

if.then650:                                       ; preds = %if.then641, %if.else638
  %extensions.3.ph = phi i8* [ %extensions.2, %if.else638 ], [ %call642, %if.then641 ]
  %85 = bitcast %struct.v3_ext_ctx* %ctx651 to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %85) #9
  call void @X509V3_set_ctx(%struct.v3_ext_ctx* noundef nonnull %ctx651, %struct.x509_st* noundef null, %struct.x509_st* noundef null, %struct.X509_req_st* noundef null, %struct.X509_crl_st* noundef null, i32 noundef 1) #10
  call void @X509V3_set_nconf(%struct.v3_ext_ctx* noundef nonnull %ctx651, %struct.conf_st* noundef %call148) #10
  %call652 = call i32 @X509V3_EXT_add_nconf(%struct.conf_st* noundef %call148, %struct.v3_ext_ctx* noundef nonnull %ctx651, i8* noundef nonnull %extensions.3.ph, %struct.x509_st* noundef null) #10
  %tobool653.not = icmp eq i32 %call652, 0
  br i1 %tobool653.not, label %cleanup657, label %cleanup657.thread

cleanup657.thread:                                ; preds = %if.then650
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %85) #9
  br label %if.end661

cleanup657:                                       ; preds = %if.then650
  %86 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call655 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %86, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.184, i64 0, i64 0), i8* noundef nonnull %extensions.3.ph) #10
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %85) #9
  br label %if.then1282

if.end661:                                        ; preds = %cleanup657.thread, %if.end647, %cleanup.thread
  %extensions.4 = phi i8* [ null, %if.end647 ], [ %extensions.2, %cleanup.thread ], [ %extensions.3.ph, %cleanup657.thread ]
  %cmp662 = icmp eq i8* %startdate.0, null
  br i1 %cmp662, label %if.then664, label %land.lhs.true673

if.then664:                                       ; preds = %if.end661
  %call665 = call i8* @NCONF_get_string(%struct.conf_st* noundef %call148, i8* noundef %section.2, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.185, i64 0, i64 0)) #10
  %cmp666 = icmp eq i8* %call665, null
  br i1 %cmp666, label %if.end678.thread, label %land.lhs.true673

if.end678.thread:                                 ; preds = %if.then664
  call void @ERR_clear_error() #10
  br label %if.end678

land.lhs.true673:                                 ; preds = %if.then664, %if.end661
  %startdate.2.ph = phi i8* [ %startdate.0, %if.end661 ], [ %call665, %if.then664 ]
  %call674 = call i32 @ASN1_TIME_set_string_X509(%struct.asn1_string_st* noundef null, i8* noundef nonnull %startdate.2.ph) #10
  %tobool675.not = icmp eq i32 %call674, 0
  br i1 %tobool675.not, label %if.then676, label %if.end678

if.then676:                                       ; preds = %land.lhs.true673
  %87 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call677 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %87, i8* noundef getelementptr inbounds ([70 x i8], [70 x i8]* @.str.186, i64 0, i64 0)) #10
  br label %if.then1282

if.end678:                                        ; preds = %land.lhs.true673, %if.end678.thread
  %88 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.187, i64 0, i64 0), %if.end678.thread ], [ %startdate.2.ph, %land.lhs.true673 ]
  %cmp683 = icmp eq i8* %enddate.0, null
  br i1 %cmp683, label %if.then685, label %land.lhs.true694

if.then685:                                       ; preds = %if.end678
  %call686 = call i8* @NCONF_get_string(%struct.conf_st* noundef %call148, i8* noundef %section.2, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.188, i64 0, i64 0)) #10
  %cmp687 = icmp eq i8* %call686, null
  br i1 %cmp687, label %if.end691, label %land.lhs.true694

if.end691:                                        ; preds = %if.then685
  call void @ERR_clear_error() #10
  br label %if.end699

land.lhs.true694:                                 ; preds = %if.then685, %if.end678
  %enddate.2.ph = phi i8* [ %enddate.0, %if.end678 ], [ %call686, %if.then685 ]
  %call695 = call i32 @ASN1_TIME_set_string_X509(%struct.asn1_string_st* noundef null, i8* noundef nonnull %enddate.2.ph) #10
  %tobool696.not = icmp eq i32 %call695, 0
  br i1 %tobool696.not, label %if.then697, label %if.end699

if.then697:                                       ; preds = %land.lhs.true694
  %89 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call698 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %89, i8* noundef getelementptr inbounds ([68 x i8], [68 x i8]* @.str.189, i64 0, i64 0)) #10
  br label %if.then1282

if.end699:                                        ; preds = %if.end691, %land.lhs.true694
  %cmp692.not1940 = phi i1 [ false, %land.lhs.true694 ], [ true, %if.end691 ]
  %enddate.21936 = phi i8* [ %enddate.2.ph, %land.lhs.true694 ], [ null, %if.end691 ]
  %90 = load i64, i64* %days, align 8, !tbaa !9
  %cmp700 = icmp eq i64 %90, 0
  br i1 %cmp700, label %if.then702, label %if.end715

if.then702:                                       ; preds = %if.end699
  %call703 = call i32 @NCONF_get_number_e(%struct.conf_st* noundef %call148, i8* noundef %section.2, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.190, i64 0, i64 0), i64* noundef nonnull %days) #10
  %tobool704.not = icmp eq i32 %call703, 0
  br i1 %tobool704.not, label %if.then705, label %if.then702.if.end707_crit_edge

if.then702.if.end707_crit_edge:                   ; preds = %if.then702
  %.pre2495 = load i64, i64* %days, align 8
  br label %if.end707

if.then705:                                       ; preds = %if.then702
  store i64 0, i64* %days, align 8, !tbaa !9
  br label %if.end707

if.end707:                                        ; preds = %if.then702.if.end707_crit_edge, %if.then705
  %91 = phi i64 [ %.pre2495, %if.then702.if.end707_crit_edge ], [ 0, %if.then705 ]
  %cmp711 = icmp eq i64 %91, 0
  %or.cond1388 = select i1 %cmp692.not1940, i1 %cmp711, i1 false
  br i1 %or.cond1388, label %if.then713, label %if.end715

if.then713:                                       ; preds = %if.end707
  %92 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call714 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %92, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.191, i64 0, i64 0)) #10
  br label %if.then1282

if.end715:                                        ; preds = %if.end699, %if.end707
  %tobool716.not = icmp eq i32 %rand_ser.2, 0
  br i1 %tobool716.not, label %if.else727, label %if.then717

if.then717:                                       ; preds = %if.end715
  %call718 = call %struct.bignum_st* @BN_new() #10
  store %struct.bignum_st* %call718, %struct.bignum_st** %serial, align 8, !tbaa !3
  %cmp719 = icmp eq %struct.bignum_st* %call718, null
  br i1 %cmp719, label %if.then724, label %lor.lhs.false721

lor.lhs.false721:                                 ; preds = %if.then717
  %call722 = call i32 @rand_serial(%struct.bignum_st* noundef nonnull %call718, %struct.asn1_string_st* noundef null) #10
  %tobool723.not = icmp eq i32 %call722, 0
  br i1 %tobool723.not, label %if.then724, label %if.end749

if.then724:                                       ; preds = %lor.lhs.false721, %if.then717
  %93 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call725 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %93, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.192, i64 0, i64 0)) #10
  br label %if.then1282

if.else727:                                       ; preds = %if.end715
  %call728 = call %struct.bignum_st* @load_serial(i8* noundef %serialfile.0, i32 noundef %create_ser.0, %struct.asn1_string_st** noundef null) #10
  store %struct.bignum_st* %call728, %struct.bignum_st** %serial, align 8, !tbaa !3
  %cmp729 = icmp eq %struct.bignum_st* %call728, null
  br i1 %cmp729, label %if.then731, label %if.end733

if.then731:                                       ; preds = %if.else727
  %94 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call732 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %94, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.193, i64 0, i64 0)) #10
  br label %if.then1282

if.end733:                                        ; preds = %if.else727
  br i1 %tobool474.not, label %if.end749, label %if.then735

if.then735:                                       ; preds = %if.end733
  %call736 = call i32 @BN_is_zero(%struct.bignum_st* noundef nonnull %call728) #10
  %tobool737.not = icmp eq i32 %call736, 0
  br i1 %tobool737.not, label %if.else740, label %if.then738

if.then738:                                       ; preds = %if.then735
  %95 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call739 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %95, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.194, i64 0, i64 0)) #10
  br label %if.end749

if.else740:                                       ; preds = %if.then735
  %96 = load %struct.bignum_st*, %struct.bignum_st** %serial, align 8, !tbaa !3
  %call741 = call i8* @BN_bn2hex(%struct.bignum_st* noundef %96) #10
  %cmp742 = icmp eq i8* %call741, null
  br i1 %cmp742, label %if.then1282, label %if.end745

if.end745:                                        ; preds = %if.else740
  %97 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call746 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %97, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.195, i64 0, i64 0), i8* noundef nonnull %call741) #10
  call void @CRYPTO_free(i8* noundef nonnull %call741, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.196, i64 0, i64 0), i32 noundef 936) #10
  br label %if.end749

if.end749:                                        ; preds = %if.end733, %if.end745, %if.then738, %lor.lhs.false721
  %call750 = call %struct.stack_st_CONF_VALUE* @NCONF_get_section(%struct.conf_st* noundef %call148, i8* noundef nonnull %policy.2) #10
  %cmp751 = icmp eq %struct.stack_st_CONF_VALUE* %call750, null
  br i1 %cmp751, label %if.then753, label %if.end755

if.then753:                                       ; preds = %if.end749
  %98 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call754 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %98, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.197, i64 0, i64 0), i8* noundef nonnull %policy.2) #10
  br label %if.then1282

if.end755:                                        ; preds = %if.end749
  %call756 = call %struct.stack_st* @OPENSSL_sk_new_null() #10
  %99 = bitcast %struct.stack_st* %call756 to %struct.stack_st_X509*
  %cmp757 = icmp eq %struct.stack_st* %call756, null
  br i1 %cmp757, label %if.then759, label %if.end761

if.then759:                                       ; preds = %if.end755
  %100 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call760 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %100, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.198, i64 0, i64 0)) #10
  br label %if.then1282

if.end761:                                        ; preds = %if.end755
  br i1 %tobool276, label %if.then764, label %if.end789

if.then764:                                       ; preds = %if.end761
  %101 = load %struct.bignum_st*, %struct.bignum_st** %serial, align 8, !tbaa !3
  %102 = load i64, i64* %days, align 8, !tbaa !9
  %103 = load i64, i64* %certopt, align 8, !tbaa !9
  %call766 = call i64 @get_nameopt() #10
  %104 = load i32, i32* %ext_copy, align 4, !tbaa !7
  %105 = load i64, i64* %dateopt, align 8, !tbaa !9
  %call767 = call fastcc i32 @certify_spkac(%struct.x509_st** noundef nonnull %x, i8* noundef nonnull %spkac_file.0, %struct.evp_pkey_st* noundef %call269, %struct.x509_st* noundef %x509.0, i8* noundef %dgst.3, %struct.stack_st_OPENSSL_STRING* noundef %sigopts.0, %struct.stack_st_CONF_VALUE* noundef nonnull %call750, %struct.ca_db_st* noundef nonnull %call393, %struct.bignum_st* noundef %101, i8* noundef %subj.0, i64 noundef %chtype.2, i32 noundef %email_dn.3, i8* noundef %88, i8* noundef %enddate.21936, i64 noundef %102, i8* noundef %extensions.4, %struct.conf_st* noundef %call148, i32 noundef %verbose.0, i64 noundef %103, i64 noundef %call766, i32 noundef %default_op.1, i32 noundef %104, i64 noundef %105) #12
  %cmp768 = icmp slt i32 %call767, 0
  br i1 %cmp768, label %if.then1282, label %if.end771

if.end771:                                        ; preds = %if.then764
  %cmp772.not = icmp eq i32 %call767, 0
  br i1 %cmp772.not, label %if.end789, label %if.then774

if.then774:                                       ; preds = %if.end771
  %106 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call776 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %106, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.199, i64 0, i64 0)) #10
  %107 = load %struct.bignum_st*, %struct.bignum_st** %serial, align 8, !tbaa !3
  %call777 = call i32 @BN_add_word(%struct.bignum_st* noundef %107, i64 noundef 1) #10
  %tobool778.not = icmp eq i32 %call777, 0
  br i1 %tobool778.not, label %if.then1282, label %if.end780

if.end780:                                        ; preds = %if.then774
  %call781 = call fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef nonnull %99) #12
  %108 = bitcast %struct.x509_st** %x to i8**
  %109 = load i8*, i8** %108, align 8, !tbaa !3
  %call783 = call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call781, i8* noundef %109) #10
  %tobool784.not = icmp eq i32 %call783, 0
  br i1 %tobool784.not, label %if.then785, label %if.end789

if.then785:                                       ; preds = %if.end780
  %110 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call786 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %110, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.198, i64 0, i64 0)) #10
  br label %if.then1282

if.end789:                                        ; preds = %if.end771, %if.end780, %if.end761
  %total.0 = phi i32 [ 1, %if.end780 ], [ 1, %if.end771 ], [ 0, %if.end761 ]
  %total_done.0 = phi i32 [ 1, %if.end780 ], [ 0, %if.end771 ], [ 0, %if.end761 ]
  br i1 %tobool278, label %if.then792, label %if.end817

if.then792:                                       ; preds = %if.end789
  %inc793 = add nuw nsw i32 %total.0, 1
  %111 = load i32, i32* %certformat, align 4, !tbaa !7
  %112 = load i8*, i8** %passin, align 8, !tbaa !3
  %113 = load %struct.bignum_st*, %struct.bignum_st** %serial, align 8, !tbaa !3
  %114 = load i64, i64* %days, align 8, !tbaa !9
  %115 = load i64, i64* %certopt, align 8, !tbaa !9
  %call794 = call i64 @get_nameopt() #10
  %116 = load i32, i32* %ext_copy, align 4, !tbaa !7
  %117 = load i64, i64* %dateopt, align 8, !tbaa !9
  %call795 = call fastcc i32 @certify_cert(%struct.x509_st** noundef nonnull %x, i8* noundef nonnull %ss_cert_file.0, i32 noundef %111, i8* noundef %112, %struct.evp_pkey_st* noundef %call269, %struct.x509_st* noundef %x509.0, i8* noundef %dgst.3, %struct.stack_st_OPENSSL_STRING* noundef %sigopts.0, %struct.stack_st_OPENSSL_STRING* noundef %vfyopts.0, %struct.stack_st_CONF_VALUE* noundef nonnull %call750, %struct.ca_db_st* noundef nonnull %call393, %struct.bignum_st* noundef %113, i8* noundef %subj.0, i64 noundef %chtype.2, i32 noundef %email_dn.3, i8* noundef %88, i8* noundef %enddate.21936, i64 noundef %114, i32 noundef %batch.2, i8* noundef %extensions.4, %struct.conf_st* noundef %call148, i32 noundef %verbose.0, i64 noundef %115, i64 noundef %call794, i32 noundef %default_op.1, i32 noundef %116, i64 noundef %117) #12
  %cmp796 = icmp slt i32 %call795, 0
  br i1 %cmp796, label %if.then1282, label %if.end799

if.end799:                                        ; preds = %if.then792
  %cmp800.not = icmp eq i32 %call795, 0
  br i1 %cmp800.not, label %if.end817, label %if.then802

if.then802:                                       ; preds = %if.end799
  %118 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call804 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %118, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.199, i64 0, i64 0)) #10
  %119 = load %struct.bignum_st*, %struct.bignum_st** %serial, align 8, !tbaa !3
  %call805 = call i32 @BN_add_word(%struct.bignum_st* noundef %119, i64 noundef 1) #10
  %tobool806.not = icmp eq i32 %call805, 0
  br i1 %tobool806.not, label %if.then1282, label %if.end808

if.end808:                                        ; preds = %if.then802
  %inc803 = add nuw nsw i32 %total_done.0, 1
  %call809 = call fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef nonnull %99) #12
  %120 = bitcast %struct.x509_st** %x to i8**
  %121 = load i8*, i8** %120, align 8, !tbaa !3
  %call811 = call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call809, i8* noundef %121) #10
  %tobool812.not = icmp eq i32 %call811, 0
  br i1 %tobool812.not, label %if.then813, label %if.end817

if.then813:                                       ; preds = %if.end808
  %122 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call814 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %122, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.198, i64 0, i64 0)) #10
  br label %if.then1282

if.end817:                                        ; preds = %if.end799, %if.end808, %if.end789
  %total.1 = phi i32 [ %inc793, %if.end808 ], [ %inc793, %if.end799 ], [ %total.0, %if.end789 ]
  %total_done.1 = phi i32 [ %inc803, %if.end808 ], [ %total_done.0, %if.end799 ], [ %total_done.0, %if.end789 ]
  %cmp818.not = icmp eq i8* %infile.0, null
  br i1 %cmp818.not, label %if.end845, label %if.then820

if.then820:                                       ; preds = %if.end817
  %inc821 = add nuw nsw i32 %total.1, 1
  %123 = load i32, i32* %informat, align 4, !tbaa !7
  %124 = load %struct.bignum_st*, %struct.bignum_st** %serial, align 8, !tbaa !3
  %125 = load i64, i64* %days, align 8, !tbaa !9
  %126 = load i64, i64* %certopt, align 8, !tbaa !9
  %call822 = call i64 @get_nameopt() #10
  %127 = load i32, i32* %ext_copy, align 4, !tbaa !7
  %128 = load i64, i64* %dateopt, align 8, !tbaa !9
  %call823 = call fastcc i32 @certify(%struct.x509_st** noundef nonnull %x, i8* noundef nonnull %infile.0, i32 noundef %123, %struct.evp_pkey_st* noundef %call269, %struct.x509_st* noundef %spec.select1904, i8* noundef %dgst.3, %struct.stack_st_OPENSSL_STRING* noundef %sigopts.0, %struct.stack_st_OPENSSL_STRING* noundef %vfyopts.0, %struct.stack_st_CONF_VALUE* noundef nonnull %call750, %struct.ca_db_st* noundef nonnull %call393, %struct.bignum_st* noundef %124, i8* noundef %subj.0, i64 noundef %chtype.2, i32 noundef %email_dn.3, i8* noundef %88, i8* noundef %enddate.21936, i64 noundef %125, i32 noundef %batch.2, i8* noundef %extensions.4, %struct.conf_st* noundef %call148, i32 noundef %verbose.0, i64 noundef %126, i64 noundef %call822, i32 noundef %default_op.1, i32 noundef %127, i32 noundef %selfsign.0, i64 noundef %128) #12
  %cmp824 = icmp slt i32 %call823, 0
  br i1 %cmp824, label %if.then1282, label %if.end827

if.end827:                                        ; preds = %if.then820
  %cmp828.not = icmp eq i32 %call823, 0
  br i1 %cmp828.not, label %if.end845, label %if.then830

if.then830:                                       ; preds = %if.end827
  %129 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call832 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %129, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.199, i64 0, i64 0)) #10
  %130 = load %struct.bignum_st*, %struct.bignum_st** %serial, align 8, !tbaa !3
  %call833 = call i32 @BN_add_word(%struct.bignum_st* noundef %130, i64 noundef 1) #10
  %tobool834.not = icmp eq i32 %call833, 0
  br i1 %tobool834.not, label %if.then1282, label %if.end836

if.end836:                                        ; preds = %if.then830
  %inc831 = add nuw nsw i32 %total_done.1, 1
  %call837 = call fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef nonnull %99) #12
  %131 = bitcast %struct.x509_st** %x to i8**
  %132 = load i8*, i8** %131, align 8, !tbaa !3
  %call839 = call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call837, i8* noundef %132) #10
  %tobool840.not = icmp eq i32 %call839, 0
  br i1 %tobool840.not, label %if.then841, label %if.end845

if.then841:                                       ; preds = %if.end836
  %133 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call842 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %133, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.198, i64 0, i64 0)) #10
  br label %if.then1282

if.end845:                                        ; preds = %if.end827, %if.end836, %if.end817
  %total.2 = phi i32 [ %inc821, %if.end836 ], [ %inc821, %if.end827 ], [ %total.1, %if.end817 ]
  %total_done.2 = phi i32 [ %inc831, %if.end836 ], [ %total_done.1, %if.end827 ], [ %total_done.1, %if.end817 ]
  %cmp8472238 = icmp sgt i32 %call146, 0
  br i1 %cmp8472238, label %for.body849.preheader, label %for.end878

for.body849.preheader:                            ; preds = %if.end845
  %134 = add nuw i32 %call146, %total.2
  %wide.trip.count = zext i32 %call146 to i64
  br label %for.body849

for.body849:                                      ; preds = %for.body849.preheader, %for.inc876
  %indvars.iv = phi i64 [ 0, %for.body849.preheader ], [ %indvars.iv.next, %for.inc876 ]
  %total_done.32240 = phi i32 [ %total_done.2, %for.body849.preheader ], [ %total_done.4, %for.inc876 ]
  %arrayidx852 = getelementptr inbounds i8*, i8** %call147, i64 %indvars.iv
  %135 = load i8*, i8** %arrayidx852, align 8, !tbaa !3
  %136 = load i32, i32* %informat, align 4, !tbaa !7
  %137 = load %struct.bignum_st*, %struct.bignum_st** %serial, align 8, !tbaa !3
  %138 = load i64, i64* %days, align 8, !tbaa !9
  %139 = load i64, i64* %certopt, align 8, !tbaa !9
  %call853 = call i64 @get_nameopt() #10
  %140 = load i32, i32* %ext_copy, align 4, !tbaa !7
  %141 = load i64, i64* %dateopt, align 8, !tbaa !9
  %call854 = call fastcc i32 @certify(%struct.x509_st** noundef nonnull %x, i8* noundef %135, i32 noundef %136, %struct.evp_pkey_st* noundef %call269, %struct.x509_st* noundef %spec.select1904, i8* noundef %dgst.3, %struct.stack_st_OPENSSL_STRING* noundef %sigopts.0, %struct.stack_st_OPENSSL_STRING* noundef %vfyopts.0, %struct.stack_st_CONF_VALUE* noundef nonnull %call750, %struct.ca_db_st* noundef %call393, %struct.bignum_st* noundef %137, i8* noundef %subj.0, i64 noundef %chtype.2, i32 noundef %email_dn.3, i8* noundef %88, i8* noundef %enddate.21936, i64 noundef %138, i32 noundef %batch.2, i8* noundef %extensions.4, %struct.conf_st* noundef %call148, i32 noundef %verbose.0, i64 noundef %139, i64 noundef %call853, i32 noundef %default_op.1, i32 noundef %140, i32 noundef %selfsign.0, i64 noundef %141) #12
  %cmp855 = icmp slt i32 %call854, 0
  br i1 %cmp855, label %if.then1282, label %if.end858

if.end858:                                        ; preds = %for.body849
  %cmp859.not = icmp eq i32 %call854, 0
  br i1 %cmp859.not, label %for.inc876, label %if.then861

if.then861:                                       ; preds = %if.end858
  %142 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call863 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %142, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.199, i64 0, i64 0)) #10
  %143 = load %struct.bignum_st*, %struct.bignum_st** %serial, align 8, !tbaa !3
  %call864 = call i32 @BN_add_word(%struct.bignum_st* noundef %143, i64 noundef 1) #10
  %tobool865.not = icmp eq i32 %call864, 0
  br i1 %tobool865.not, label %if.then866, label %if.end867

if.then866:                                       ; preds = %if.then861
  %144 = load %struct.x509_st*, %struct.x509_st** %x, align 8, !tbaa !3
  call void @X509_free(%struct.x509_st* noundef %144) #10
  br label %if.then1282

if.end867:                                        ; preds = %if.then861
  %inc862 = add nsw i32 %total_done.32240, 1
  %call868 = call fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef nonnull %99) #12
  %145 = load %struct.x509_st*, %struct.x509_st** %x, align 8, !tbaa !3
  %146 = bitcast %struct.x509_st* %145 to i8*
  %call870 = call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call868, i8* noundef %146) #10
  %tobool871.not = icmp eq i32 %call870, 0
  br i1 %tobool871.not, label %if.then872, label %for.inc876

if.then872:                                       ; preds = %if.end867
  %147 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call873 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %147, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.198, i64 0, i64 0)) #10
  call void @X509_free(%struct.x509_st* noundef %145) #10
  br label %if.then1282

for.inc876:                                       ; preds = %if.end858, %if.end867
  %total_done.4 = phi i32 [ %inc862, %if.end867 ], [ %total_done.32240, %if.end858 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.end878, label %for.body849, !llvm.loop !26

for.end878:                                       ; preds = %for.inc876, %if.end845
  %total.3.lcssa = phi i32 [ %total.2, %if.end845 ], [ %134, %for.inc876 ]
  %total_done.3.lcssa = phi i32 [ %total_done.2, %if.end845 ], [ %total_done.4, %for.inc876 ]
  %call879 = call fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef nonnull %99) #12
  %call880 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call879) #10
  %cmp881 = icmp sgt i32 %call880, 0
  br i1 %cmp881, label %if.then883, label %if.end924

if.then883:                                       ; preds = %for.end878
  %tobool884.not = icmp eq i32 %batch.2, 0
  br i1 %tobool884.not, label %if.then885, label %if.end909

if.then885:                                       ; preds = %if.then883
  %148 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call886 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %148, i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.200, i64 0, i64 0), i32 noundef %total_done.3.lcssa, i32 noundef %total.3.lcssa) #10
  %149 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call887 = call i64 @BIO_ctrl(%struct.bio_st* noundef %149, i32 noundef 11, i64 noundef 0, i8* noundef null) #10
  store i8 0, i8* %9, align 1, !tbaa !15
  %150 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !tbaa !3
  %call891 = call i8* @fgets(i8* noundef nonnull %9, i32 noundef 11, %struct._IO_FILE* noundef %150) #10
  %cmp892 = icmp eq i8* %call891, null
  br i1 %cmp892, label %if.then894, label %if.end896

if.then894:                                       ; preds = %if.then885
  %151 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call895 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %151, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.201, i64 0, i64 0)) #10
  br label %if.end1283

if.end896:                                        ; preds = %if.then885
  %152 = load i8, i8* %9, align 1, !tbaa !15
  %153 = and i8 %152, -33
  %.not = icmp eq i8 %153, 89
  br i1 %.not, label %if.end909, label %if.then906

if.then906:                                       ; preds = %if.end896
  %154 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call907 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %154, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.202, i64 0, i64 0)) #10
  br label %if.end1283

if.end909:                                        ; preds = %if.end896, %if.then883
  %155 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call911 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call879) #10
  %call912 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %155, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.203, i64 0, i64 0), i32 noundef %call911) #10
  %cmp913.not = icmp eq i8* %serialfile.0, null
  br i1 %cmp913.not, label %if.end919, label %land.lhs.true915

land.lhs.true915:                                 ; preds = %if.end909
  %156 = load %struct.bignum_st*, %struct.bignum_st** %serial, align 8, !tbaa !3
  %call916 = call i32 @save_serial(i8* noundef nonnull %serialfile.0, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.169, i64 0, i64 0), %struct.bignum_st* noundef %156, %struct.asn1_string_st** noundef null) #10
  %tobool917.not = icmp eq i32 %call916, 0
  br i1 %tobool917.not, label %if.then1282, label %if.end919

if.end919:                                        ; preds = %land.lhs.true915, %if.end909
  %call920 = call i32 @save_index(i8* noundef nonnull %call388, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.169, i64 0, i64 0), %struct.ca_db_st* noundef %call393) #10
  %tobool921.not = icmp eq i32 %call920, 0
  br i1 %tobool921.not, label %if.then1282, label %if.end924

if.end924:                                        ; preds = %if.end919, %for.end878
  %call926 = call i64 @OPENSSL_strlcpy(i8* noundef nonnull %8, i8* noundef %outdir.2, i64 noundef 4096) #10
  %call928 = call i64 @OPENSSL_strlcat(i8* noundef nonnull %8, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.204, i64 0, i64 0), i64 noundef 4096) #10
  br i1 %tobool474.not, label %if.end932, label %if.then930

if.then930:                                       ; preds = %if.end924
  %157 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call931 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %157, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.205, i64 0, i64 0)) #10
  br label %if.end932

if.end932:                                        ; preds = %if.then930, %if.end924
  %call9352249 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call879) #10
  %cmp9362250 = icmp sgt i32 %call9352249, 0
  br i1 %cmp9362250, label %for.body938.lr.ph, label %for.end1015

for.body938.lr.ph:                                ; preds = %if.end932
  %add.ptr = getelementptr inbounds [4096 x i8], [4096 x i8]* %new_cert, i64 0, i64 %call928
  %incdec.ptr978 = getelementptr inbounds i8, i8* %add.ptr, i64 1
  %incdec.ptr979 = getelementptr inbounds i8, i8* %add.ptr, i64 2
  br label %for.body938

for.body938:                                      ; preds = %for.body938.lr.ph, %for.inc1013
  %i.22251 = phi i32 [ 0, %for.body938.lr.ph ], [ %inc1014, %for.inc1013 ]
  %call940 = call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call879, i32 noundef %i.22251) #10
  %158 = bitcast i8* %call940 to %struct.x509_st*
  %call941 = call %struct.asn1_string_st* @X509_get0_serialNumber(%struct.x509_st* noundef %158) #10
  %call942 = call i8* @ASN1_STRING_get0_data(%struct.asn1_string_st* noundef %call941) #10
  %call943 = call i32 @ASN1_STRING_length(%struct.asn1_string_st* noundef %call941) #10
  %cmp944 = icmp sgt i32 %call943, 0
  %call943.op = shl nsw i32 %call943, 1
  %call943.op.op = add i32 %call943.op, 5
  %add947 = select i1 %cmp944, i32 %call943.op.op, i32 7
  %conv950 = sext i32 %add947 to i64
  %add951 = add i64 %call928, %conv950
  %cmp952 = icmp ugt i64 %add951, 4096
  br i1 %cmp952, label %if.then954, label %if.end956

if.then954:                                       ; preds = %for.body938
  %159 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call955 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %159, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.206, i64 0, i64 0)) #10
  br label %if.then1282

if.end956:                                        ; preds = %for.body938
  br i1 %cmp944, label %for.body963.preheader, label %if.else977

for.body963.preheader:                            ; preds = %if.end956
  %xtraiter = and i32 %call943, 1
  %160 = icmp eq i32 %call943, 1
  br i1 %160, label %if.end980.loopexit.unr-lcssa, label %for.body963.preheader.new

for.body963.preheader.new:                        ; preds = %for.body963.preheader
  %unroll_iter = and i32 %call943, -2
  br label %for.body963

for.body963:                                      ; preds = %for.body963, %for.body963.preheader.new
  %n.02247 = phi i8* [ %add.ptr, %for.body963.preheader.new ], [ %incdec.ptr972.1, %for.body963 ]
  %psn.02246 = phi i8* [ %call942, %for.body963.preheader.new ], [ %incdec.ptr975.1, %for.body963 ]
  %niter = phi i32 [ 0, %for.body963.preheader.new ], [ %niter.next.1, %for.body963 ]
  %161 = load i8, i8* %psn.02246, align 1, !tbaa !15
  %162 = lshr i8 %161, 4
  %163 = zext i8 %162 to i64
  %arrayidx966 = getelementptr inbounds [17 x i8], [17 x i8]* @ca_main.HEX_DIGITS, i64 0, i64 %163
  %164 = load i8, i8* %arrayidx966, align 1, !tbaa !15
  %incdec.ptr967 = getelementptr inbounds i8, i8* %n.02247, i64 1
  store i8 %164, i8* %n.02247, align 1, !tbaa !15
  %165 = load i8, i8* %psn.02246, align 1, !tbaa !15
  %166 = and i8 %165, 15
  %167 = zext i8 %166 to i64
  %arrayidx971 = getelementptr inbounds [17 x i8], [17 x i8]* @ca_main.HEX_DIGITS, i64 0, i64 %167
  %168 = load i8, i8* %arrayidx971, align 1, !tbaa !15
  %incdec.ptr972 = getelementptr inbounds i8, i8* %n.02247, i64 2
  store i8 %168, i8* %incdec.ptr967, align 1, !tbaa !15
  %incdec.ptr975 = getelementptr inbounds i8, i8* %psn.02246, i64 1
  %169 = load i8, i8* %incdec.ptr975, align 1, !tbaa !15
  %170 = lshr i8 %169, 4
  %171 = zext i8 %170 to i64
  %arrayidx966.1 = getelementptr inbounds [17 x i8], [17 x i8]* @ca_main.HEX_DIGITS, i64 0, i64 %171
  %172 = load i8, i8* %arrayidx966.1, align 1, !tbaa !15
  %incdec.ptr967.1 = getelementptr inbounds i8, i8* %n.02247, i64 3
  store i8 %172, i8* %incdec.ptr972, align 1, !tbaa !15
  %173 = load i8, i8* %incdec.ptr975, align 1, !tbaa !15
  %174 = and i8 %173, 15
  %175 = zext i8 %174 to i64
  %arrayidx971.1 = getelementptr inbounds [17 x i8], [17 x i8]* @ca_main.HEX_DIGITS, i64 0, i64 %175
  %176 = load i8, i8* %arrayidx971.1, align 1, !tbaa !15
  %incdec.ptr972.1 = getelementptr inbounds i8, i8* %n.02247, i64 4
  store i8 %176, i8* %incdec.ptr967.1, align 1, !tbaa !15
  %incdec.ptr975.1 = getelementptr inbounds i8, i8* %psn.02246, i64 2
  %niter.next.1 = add i32 %niter, 2
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %if.end980.loopexit.unr-lcssa, label %for.body963, !llvm.loop !27

if.else977:                                       ; preds = %if.end956
  store i8 48, i8* %add.ptr, align 1, !tbaa !15
  store i8 48, i8* %incdec.ptr978, align 1, !tbaa !15
  br label %if.end980

if.end980.loopexit.unr-lcssa:                     ; preds = %for.body963, %for.body963.preheader
  %incdec.ptr972.lcssa.ph = phi i8* [ undef, %for.body963.preheader ], [ %incdec.ptr972.1, %for.body963 ]
  %n.02247.unr = phi i8* [ %add.ptr, %for.body963.preheader ], [ %incdec.ptr972.1, %for.body963 ]
  %psn.02246.unr = phi i8* [ %call942, %for.body963.preheader ], [ %incdec.ptr975.1, %for.body963 ]
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %if.end980, label %for.body963.epil

for.body963.epil:                                 ; preds = %if.end980.loopexit.unr-lcssa
  %177 = load i8, i8* %psn.02246.unr, align 1, !tbaa !15
  %178 = lshr i8 %177, 4
  %179 = zext i8 %178 to i64
  %arrayidx966.epil = getelementptr inbounds [17 x i8], [17 x i8]* @ca_main.HEX_DIGITS, i64 0, i64 %179
  %180 = load i8, i8* %arrayidx966.epil, align 1, !tbaa !15
  %incdec.ptr967.epil = getelementptr inbounds i8, i8* %n.02247.unr, i64 1
  store i8 %180, i8* %n.02247.unr, align 1, !tbaa !15
  %181 = load i8, i8* %psn.02246.unr, align 1, !tbaa !15
  %182 = and i8 %181, 15
  %183 = zext i8 %182 to i64
  %arrayidx971.epil = getelementptr inbounds [17 x i8], [17 x i8]* @ca_main.HEX_DIGITS, i64 0, i64 %183
  %184 = load i8, i8* %arrayidx971.epil, align 1, !tbaa !15
  %incdec.ptr972.epil = getelementptr inbounds i8, i8* %n.02247.unr, i64 2
  store i8 %184, i8* %incdec.ptr967.epil, align 1, !tbaa !15
  br label %if.end980

if.end980:                                        ; preds = %for.body963.epil, %if.end980.loopexit.unr-lcssa, %if.else977
  %n.1 = phi i8* [ %incdec.ptr979, %if.else977 ], [ %incdec.ptr972.lcssa.ph, %if.end980.loopexit.unr-lcssa ], [ %incdec.ptr972.epil, %for.body963.epil ]
  %incdec.ptr981 = getelementptr inbounds i8, i8* %n.1, i64 1
  store i8 46, i8* %n.1, align 1, !tbaa !15
  %incdec.ptr982 = getelementptr inbounds i8, i8* %n.1, i64 2
  store i8 112, i8* %incdec.ptr981, align 1, !tbaa !15
  %incdec.ptr983 = getelementptr inbounds i8, i8* %n.1, i64 3
  store i8 101, i8* %incdec.ptr982, align 1, !tbaa !15
  %incdec.ptr984 = getelementptr inbounds i8, i8* %n.1, i64 4
  store i8 109, i8* %incdec.ptr983, align 1, !tbaa !15
  store i8 0, i8* %incdec.ptr984, align 1, !tbaa !15
  br i1 %tobool474.not, label %if.end989, label %if.then986

if.then986:                                       ; preds = %if.end980
  %185 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call988 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %185, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.207, i64 0, i64 0), i8* noundef nonnull %8) #10
  br label %if.end989

if.end989:                                        ; preds = %if.then986, %if.end980
  %call992 = call %struct.bio_st* @bio_open_default(i8* noundef %outfile.0, i8 noundef signext 119, i32 noundef %tobool1227.not) #10
  %cmp993 = icmp eq %struct.bio_st* %call992, null
  br i1 %cmp993, label %if.then1282, label %if.end996

if.end996:                                        ; preds = %if.end989
  %call998 = call %struct.bio_st* @BIO_new_file(i8* noundef nonnull %8, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.208, i64 0, i64 0)) #10
  %cmp999 = icmp eq %struct.bio_st* %call998, null
  br i1 %cmp999, label %if.then1001, label %for.inc1013

if.then1001:                                      ; preds = %if.end996
  call void @perror(i8* noundef nonnull %8) #10
  br label %if.then1282

for.inc1013:                                      ; preds = %if.end996
  call fastcc void @write_new_certificate(%struct.bio_st* noundef nonnull %call998, %struct.x509_st* noundef %158, i32 noundef 0, i32 noundef %notext.0) #12
  call fastcc void @write_new_certificate(%struct.bio_st* noundef nonnull %call992, %struct.x509_st* noundef %158, i32 noundef %output_der.0, i32 noundef %notext.0) #12
  call void @BIO_free_all(%struct.bio_st* noundef nonnull %call998) #10
  call void @BIO_free_all(%struct.bio_st* noundef nonnull %call992) #10
  %inc1014 = add nuw nsw i32 %i.22251, 1
  %call935 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call879) #10
  %cmp936 = icmp slt i32 %inc1014, %call935
  br i1 %cmp936, label %for.body938, label %for.end1015, !llvm.loop !28

for.end1015:                                      ; preds = %for.inc1013, %if.end932
  %call1017 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call879) #10
  %tobool1018.not = icmp eq i32 %call1017, 0
  br i1 %tobool1018.not, label %if.end1033, label %if.then1019

if.then1019:                                      ; preds = %for.end1015
  %cmp1020.not = icmp eq i8* %serialfile.0, null
  br i1 %cmp1020.not, label %if.end1026, label %land.lhs.true1022

land.lhs.true1022:                                ; preds = %if.then1019
  %call1023 = call i32 @rotate_serial(i8* noundef nonnull %serialfile.0, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.169, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.170, i64 0, i64 0)) #10
  %tobool1024.not = icmp eq i32 %call1023, 0
  br i1 %tobool1024.not, label %if.then1282, label %if.end1026

if.end1026:                                       ; preds = %land.lhs.true1022, %if.then1019
  %call1027 = call i32 @rotate_index(i8* noundef nonnull %call388, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.169, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.170, i64 0, i64 0)) #10
  %tobool1028.not = icmp eq i32 %call1027, 0
  br i1 %tobool1028.not, label %if.then1282, label %if.end1030

if.end1030:                                       ; preds = %if.end1026
  %186 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call1031 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %186, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.209, i64 0, i64 0)) #10
  br label %if.end1033

if.end1033:                                       ; preds = %for.end1015, %if.end1030, %if.end587
  %cert_sk.0 = phi %struct.stack_st_X509* [ %99, %if.end1030 ], [ %99, %for.end1015 ], [ null, %if.end587 ]
  br i1 %tobool280, label %if.then1035, label %if.end1245

if.then1035:                                      ; preds = %if.end1033
  %cmp1036 = icmp eq i8* %crl_ext.0, null
  br i1 %cmp1036, label %if.then1038, label %if.then1047

if.then1038:                                      ; preds = %if.then1035
  %call1039 = call i8* @NCONF_get_string(%struct.conf_st* noundef %call148, i8* noundef %section.2, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.210, i64 0, i64 0)) #10
  %cmp1040 = icmp eq i8* %call1039, null
  br i1 %cmp1040, label %if.end1044, label %if.then1047

if.end1044:                                       ; preds = %if.then1038
  call void @ERR_clear_error() #10
  br label %if.end1057

if.then1047:                                      ; preds = %if.then1038, %if.then1035
  %crl_ext.2.ph = phi i8* [ %crl_ext.0, %if.then1035 ], [ %call1039, %if.then1038 ]
  %187 = bitcast %struct.v3_ext_ctx* %ctx1048 to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %187) #9
  call void @X509V3_set_ctx(%struct.v3_ext_ctx* noundef nonnull %ctx1048, %struct.x509_st* noundef null, %struct.x509_st* noundef null, %struct.X509_req_st* noundef null, %struct.X509_crl_st* noundef null, i32 noundef 1) #10
  call void @X509V3_set_nconf(%struct.v3_ext_ctx* noundef nonnull %ctx1048, %struct.conf_st* noundef %call148) #10
  %call1049 = call i32 @X509V3_EXT_add_nconf(%struct.conf_st* noundef %call148, %struct.v3_ext_ctx* noundef nonnull %ctx1048, i8* noundef nonnull %crl_ext.2.ph, %struct.x509_st* noundef null) #10
  %tobool1050.not = icmp eq i32 %call1049, 0
  br i1 %tobool1050.not, label %cleanup1054.thread, label %cleanup1054

cleanup1054.thread:                               ; preds = %if.then1047
  %188 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call1052 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %188, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.211, i64 0, i64 0), i8* noundef nonnull %crl_ext.2.ph) #10
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %187) #9
  br label %if.then1282

cleanup1054:                                      ; preds = %if.then1047
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %187) #9
  br label %if.end1057

if.end1057:                                       ; preds = %cleanup1054, %if.end1044
  %cmp10451948 = phi i1 [ true, %cleanup1054 ], [ false, %if.end1044 ]
  %crl_ext.21946 = phi i8* [ %crl_ext.2.ph, %cleanup1054 ], [ null, %if.end1044 ]
  %call1058 = call i8* @NCONF_get_string(%struct.conf_st* noundef %call148, i8* noundef %section.2, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.212, i64 0, i64 0)) #10
  %cmp1059 = icmp ne i8* %call1058, null
  br i1 %cmp1059, label %if.then1061, label %if.end1068

if.then1061:                                      ; preds = %if.end1057
  %call1062 = call %struct.bignum_st* @load_serial(i8* noundef nonnull %call1058, i32 noundef 0, %struct.asn1_string_st** noundef null) #10
  %cmp1063 = icmp eq %struct.bignum_st* %call1062, null
  br i1 %cmp1063, label %if.then1065, label %if.end1068

if.then1065:                                      ; preds = %if.then1061
  %189 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call1066 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %189, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.213, i64 0, i64 0)) #10
  br label %if.then1282

if.end1068:                                       ; preds = %if.then1061, %if.end1057
  %crlnumber.0 = phi %struct.bignum_st* [ %call1062, %if.then1061 ], [ null, %if.end1057 ]
  %190 = load i64, i64* %crldays, align 8, !tbaa !9
  %tobool1069 = icmp ne i64 %190, 0
  %191 = load i64, i64* %crlhours, align 8
  %tobool1071 = icmp ne i64 %191, 0
  %or.cond1390 = select i1 %tobool1069, i1 true, i1 %tobool1071
  %tobool1073 = icmp ne i64 %crlsec.0, 0
  %or.cond1391 = select i1 %or.cond1390, i1 true, i1 %tobool1073
  br i1 %or.cond1391, label %if.end1083, label %if.then1074

if.then1074:                                      ; preds = %if.end1068
  %call1075 = call i32 @NCONF_get_number_e(%struct.conf_st* noundef %call148, i8* noundef %section.2, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.214, i64 0, i64 0), i64* noundef nonnull %crldays) #10
  %tobool1076.not = icmp eq i32 %call1075, 0
  br i1 %tobool1076.not, label %if.then1077, label %if.end1078

if.then1077:                                      ; preds = %if.then1074
  store i64 0, i64* %crldays, align 8, !tbaa !9
  br label %if.end1078

if.end1078:                                       ; preds = %if.then1077, %if.then1074
  %call1079 = call i32 @NCONF_get_number_e(%struct.conf_st* noundef %call148, i8* noundef %section.2, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.215, i64 0, i64 0), i64* noundef nonnull %crlhours) #10
  %tobool1080.not = icmp eq i32 %call1079, 0
  br i1 %tobool1080.not, label %if.then1081, label %if.end1082

if.then1081:                                      ; preds = %if.end1078
  store i64 0, i64* %crlhours, align 8, !tbaa !9
  br label %if.end1082

if.end1082:                                       ; preds = %if.then1081, %if.end1078
  call void @ERR_clear_error() #10
  %.pre2496 = load i64, i64* %crldays, align 8
  %.pre2497 = load i64, i64* %crlhours, align 8
  br label %if.end1083

if.end1083:                                       ; preds = %if.end1082, %if.end1068
  %192 = phi i64 [ %.pre2497, %if.end1082 ], [ %191, %if.end1068 ]
  %193 = phi i64 [ %.pre2496, %if.end1082 ], [ %190, %if.end1068 ]
  %cmp1084 = icmp eq i8* %crl_nextupdate.0, null
  %cmp1087 = icmp eq i64 %193, 0
  %or.cond1392 = select i1 %cmp1084, i1 %cmp1087, i1 false
  %cmp1090 = icmp eq i64 %192, 0
  %or.cond1393 = select i1 %or.cond1392, i1 %cmp1090, i1 false
  %cmp1093 = icmp eq i64 %crlsec.0, 0
  %or.cond1394 = select i1 %or.cond1393, i1 %cmp1093, i1 false
  br i1 %or.cond1394, label %if.then1095, label %if.end1097

if.then1095:                                      ; preds = %if.end1083
  %194 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call1096 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %194, i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.216, i64 0, i64 0)) #10
  br label %if.then1282

if.end1097:                                       ; preds = %if.end1083
  br i1 %tobool474.not, label %if.end1101, label %if.then1099

if.then1099:                                      ; preds = %if.end1097
  %195 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call1100 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %195, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.217, i64 0, i64 0)) #10
  br label %if.end1101

if.end1101:                                       ; preds = %if.then1099, %if.end1097
  %call1102 = call %struct.ossl_lib_ctx_st* @app_get0_libctx() #10
  %call1103 = call i8* @app_get0_propq() #10
  %call1104 = call %struct.X509_crl_st* @X509_CRL_new_ex(%struct.ossl_lib_ctx_st* noundef %call1102, i8* noundef %call1103) #10
  %cmp1105 = icmp eq %struct.X509_crl_st* %call1104, null
  br i1 %cmp1105, label %if.then1282, label %if.end1108

if.end1108:                                       ; preds = %if.end1101
  %call1109 = call %struct.X509_name_st* @X509_get_subject_name(%struct.x509_st* noundef %x509.0) #10
  %call1110 = call i32 @X509_CRL_set_issuer_name(%struct.X509_crl_st* noundef nonnull %call1104, %struct.X509_name_st* noundef %call1109) #10
  %tobool1111.not = icmp eq i32 %call1110, 0
  br i1 %tobool1111.not, label %if.then1282, label %if.end1113

if.end1113:                                       ; preds = %if.end1108
  %call1114 = call i32 @set_crl_lastupdate(%struct.X509_crl_st* noundef nonnull %call1104, i8* noundef %crl_lastupdate.0) #10
  %tobool1115.not = icmp eq i32 %call1114, 0
  br i1 %tobool1115.not, label %if.then1116, label %if.end1118

if.then1116:                                      ; preds = %if.end1113
  %196 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call1117 = call i32 @BIO_puts(%struct.bio_st* noundef %196, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.218, i64 0, i64 0)) #10
  br label %if.then1282

if.end1118:                                       ; preds = %if.end1113
  %197 = load i64, i64* %crldays, align 8, !tbaa !9
  %198 = load i64, i64* %crlhours, align 8, !tbaa !9
  %call1119 = call i32 @set_crl_nextupdate(%struct.X509_crl_st* noundef nonnull %call1104, i8* noundef %crl_nextupdate.0, i64 noundef %197, i64 noundef %198, i64 noundef %crlsec.0) #10
  %tobool1120.not = icmp eq i32 %call1119, 0
  br i1 %tobool1120.not, label %if.then1121, label %for.cond1124.preheader

for.cond1124.preheader:                           ; preds = %if.end1118
  %199 = load %struct.txt_db_st*, %struct.txt_db_st** %db399, align 8, !tbaa !16
  %data11262252 = getelementptr inbounds %struct.txt_db_st, %struct.txt_db_st* %199, i64 0, i32 1
  %200 = load %struct.stack_st_OPENSSL_PSTRING*, %struct.stack_st_OPENSSL_PSTRING** %data11262252, align 8, !tbaa !20
  %call11272253 = call fastcc i32 @sk_OPENSSL_PSTRING_num(%struct.stack_st_OPENSSL_PSTRING* noundef %200) #12
  %cmp11282254 = icmp sgt i32 %call11272253, 0
  br i1 %cmp11282254, label %for.body1130, label %for.end1168

if.then1121:                                      ; preds = %if.end1118
  %201 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call1122 = call i32 @BIO_puts(%struct.bio_st* noundef %201, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.219, i64 0, i64 0)) #10
  br label %if.then1282

for.body1130:                                     ; preds = %for.cond1124.preheader, %for.inc1166
  %crl_v2.02256 = phi i32 [ %crl_v2.2, %for.inc1166 ], [ 0, %for.cond1124.preheader ]
  %i.32255 = phi i32 [ %inc1167, %for.inc1166 ], [ 0, %for.cond1124.preheader ]
  %202 = load %struct.txt_db_st*, %struct.txt_db_st** %db399, align 8, !tbaa !16
  %data1132 = getelementptr inbounds %struct.txt_db_st, %struct.txt_db_st* %202, i64 0, i32 1
  %203 = load %struct.stack_st_OPENSSL_PSTRING*, %struct.stack_st_OPENSSL_PSTRING** %data1132, align 8, !tbaa !20
  %call1133 = call fastcc i8** @sk_OPENSSL_PSTRING_value(%struct.stack_st_OPENSSL_PSTRING* noundef %203, i32 noundef %i.32255) #12
  %204 = load i8*, i8** %call1133, align 8, !tbaa !3
  %205 = load i8, i8* %204, align 1, !tbaa !15
  %cmp1137 = icmp eq i8 %205, 82
  br i1 %cmp1137, label %if.then1139, label %for.inc1166

if.then1139:                                      ; preds = %for.body1130
  %call1140 = call %struct.x509_revoked_st* @X509_REVOKED_new() #10
  %cmp1141 = icmp eq %struct.x509_revoked_st* %call1140, null
  br i1 %cmp1141, label %if.then1282, label %if.end1144

if.end1144:                                       ; preds = %if.then1139
  %arrayidx1145 = getelementptr inbounds i8*, i8** %call1133, i64 2
  %206 = load i8*, i8** %arrayidx1145, align 8, !tbaa !3
  %call1146 = call fastcc i32 @make_revoked(%struct.x509_revoked_st* noundef nonnull %call1140, i8* noundef %206) #12
  switch i32 %call1146, label %if.end1153 [
    i32 0, label %if.then1282
    i32 2, label %if.then1152
  ]

if.then1152:                                      ; preds = %if.end1144
  br label %if.end1153

if.end1153:                                       ; preds = %if.end1144, %if.then1152
  %crl_v2.1 = phi i32 [ 1, %if.then1152 ], [ %crl_v2.02256, %if.end1144 ]
  %arrayidx1154 = getelementptr inbounds i8*, i8** %call1133, i64 3
  %207 = load i8*, i8** %arrayidx1154, align 8, !tbaa !3
  %call1155 = call i32 @BN_hex2bn(%struct.bignum_st** noundef nonnull %serial, i8* noundef %207) #10
  %tobool1156.not = icmp eq i32 %call1155, 0
  br i1 %tobool1156.not, label %if.then1282, label %if.end1158

if.end1158:                                       ; preds = %if.end1153
  %208 = load %struct.bignum_st*, %struct.bignum_st** %serial, align 8, !tbaa !3
  %call1159 = call %struct.asn1_string_st* @BN_to_ASN1_INTEGER(%struct.bignum_st* noundef %208, %struct.asn1_string_st* noundef null) #10
  %209 = load %struct.bignum_st*, %struct.bignum_st** %serial, align 8, !tbaa !3
  call void @BN_free(%struct.bignum_st* noundef %209) #10
  store %struct.bignum_st* null, %struct.bignum_st** %serial, align 8, !tbaa !3
  %tobool1160.not = icmp eq %struct.asn1_string_st* %call1159, null
  br i1 %tobool1160.not, label %if.then1282, label %if.end1162

if.end1162:                                       ; preds = %if.end1158
  %call1163 = call i32 @X509_REVOKED_set_serialNumber(%struct.x509_revoked_st* noundef nonnull %call1140, %struct.asn1_string_st* noundef nonnull %call1159) #10
  call void @ASN1_INTEGER_free(%struct.asn1_string_st* noundef nonnull %call1159) #10
  %call1164 = call i32 @X509_CRL_add0_revoked(%struct.X509_crl_st* noundef %call1104, %struct.x509_revoked_st* noundef nonnull %call1140) #10
  br label %for.inc1166

for.inc1166:                                      ; preds = %for.body1130, %if.end1162
  %crl_v2.2 = phi i32 [ %crl_v2.1, %if.end1162 ], [ %crl_v2.02256, %for.body1130 ]
  %inc1167 = add nuw nsw i32 %i.32255, 1
  %210 = load %struct.txt_db_st*, %struct.txt_db_st** %db399, align 8, !tbaa !16
  %data1126 = getelementptr inbounds %struct.txt_db_st, %struct.txt_db_st* %210, i64 0, i32 1
  %211 = load %struct.stack_st_OPENSSL_PSTRING*, %struct.stack_st_OPENSSL_PSTRING** %data1126, align 8, !tbaa !20
  %call1127 = call fastcc i32 @sk_OPENSSL_PSTRING_num(%struct.stack_st_OPENSSL_PSTRING* noundef %211) #12
  %cmp1128 = icmp slt i32 %inc1167, %call1127
  br i1 %cmp1128, label %for.body1130, label %for.end1168, !llvm.loop !29

for.end1168:                                      ; preds = %for.inc1166, %for.cond1124.preheader
  %crl_v2.0.lcssa = phi i32 [ 0, %for.cond1124.preheader ], [ %crl_v2.2, %for.inc1166 ]
  %call1169 = call i32 @X509_CRL_sort(%struct.X509_crl_st* noundef %call1104) #10
  br i1 %tobool474.not, label %if.end1173, label %if.then1171

if.then1171:                                      ; preds = %for.end1168
  %212 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call1172 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %212, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.220, i64 0, i64 0)) #10
  br label %if.end1173

if.end1173:                                       ; preds = %if.then1171, %for.end1168
  %or.cond1395 = select i1 %cmp10451948, i1 true, i1 %cmp1059
  br i1 %or.cond1395, label %if.then1179, label %if.end1205

if.then1179:                                      ; preds = %if.end1173
  %213 = bitcast %struct.v3_ext_ctx* %crlctx to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %213) #9
  call void @X509V3_set_ctx(%struct.v3_ext_ctx* noundef nonnull %crlctx, %struct.x509_st* noundef %x509.0, %struct.x509_st* noundef null, %struct.X509_req_st* noundef null, %struct.X509_crl_st* noundef %call1104, i32 noundef 0) #10
  call void @X509V3_set_nconf(%struct.v3_ext_ctx* noundef nonnull %crlctx, %struct.conf_st* noundef %call148) #10
  br i1 %cmp10451948, label %if.then1182, label %if.end1188

if.then1182:                                      ; preds = %if.then1179
  %call1183 = call i32 @X509V3_EXT_CRL_add_nconf(%struct.conf_st* noundef %call148, %struct.v3_ext_ctx* noundef nonnull %crlctx, i8* noundef nonnull %crl_ext.21946, %struct.X509_crl_st* noundef %call1104) #10
  %tobool1184.not = icmp eq i32 %call1183, 0
  br i1 %tobool1184.not, label %if.then1185, label %if.end1188

if.then1185:                                      ; preds = %if.then1182
  %214 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call1186 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %214, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.221, i64 0, i64 0), i8* noundef nonnull %crl_ext.21946) #10
  br label %cleanup1202.thread

if.end1188:                                       ; preds = %if.then1182, %if.then1179
  br i1 %cmp1059, label %if.then1191, label %cleanup1202

if.then1191:                                      ; preds = %if.end1188
  %call1192 = call %struct.asn1_string_st* @BN_to_ASN1_INTEGER(%struct.bignum_st* noundef %crlnumber.0, %struct.asn1_string_st* noundef null) #10
  %tobool1193.not = icmp eq %struct.asn1_string_st* %call1192, null
  br i1 %tobool1193.not, label %cleanup1202.thread, label %if.end1195

if.end1195:                                       ; preds = %if.then1191
  %215 = bitcast %struct.asn1_string_st* %call1192 to i8*
  %call1196 = call i32 @X509_CRL_add1_ext_i2d(%struct.X509_crl_st* noundef %call1104, i32 noundef 88, i8* noundef nonnull %215, i32 noundef 0, i64 noundef 0) #10
  call void @ASN1_INTEGER_free(%struct.asn1_string_st* noundef nonnull %call1192) #10
  %call1197 = call i32 @BN_add_word(%struct.bignum_st* noundef %crlnumber.0, i64 noundef 1) #10
  %tobool1198.not = icmp eq i32 %call1197, 0
  br i1 %tobool1198.not, label %cleanup1202.thread, label %cleanup1202

cleanup1202.thread:                               ; preds = %if.then1185, %if.then1191, %if.end1195
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %213) #9
  br label %if.then1282

cleanup1202:                                      ; preds = %if.end1188, %if.end1195
  %crl_v2.3 = phi i32 [ 1, %if.end1195 ], [ %crl_v2.0.lcssa, %if.end1188 ]
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %213) #9
  br label %if.end1205

if.end1205:                                       ; preds = %cleanup1202, %if.end1173
  %crl_v2.5 = phi i32 [ %crl_v2.3, %cleanup1202 ], [ %crl_v2.0.lcssa, %if.end1173 ]
  %tobool1209 = icmp ne i32 %crl_v2.5, 0
  %or.cond1396 = select i1 %cmp10451948, i1 true, i1 %tobool1209
  br i1 %or.cond1396, label %if.then1210, label %if.end1215

if.then1210:                                      ; preds = %if.end1205
  %call1211 = call i32 @X509_CRL_set_version(%struct.X509_crl_st* noundef %call1104, i64 noundef 1) #10
  %tobool1212.not = icmp eq i32 %call1211, 0
  br i1 %tobool1212.not, label %if.then1282, label %if.end1215

if.end1215:                                       ; preds = %if.then1210, %if.end1205
  br i1 %cmp1059, label %land.lhs.true1218, label %if.end1222

land.lhs.true1218:                                ; preds = %if.end1215
  %call1219 = call i32 @save_serial(i8* noundef nonnull %call1058, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.169, i64 0, i64 0), %struct.bignum_st* noundef %crlnumber.0, %struct.asn1_string_st** noundef null) #10
  %tobool1220.not = icmp eq i32 %call1219, 0
  br i1 %tobool1220.not, label %if.then1282, label %if.end1222

if.end1222:                                       ; preds = %land.lhs.true1218, %if.end1215
  call void @BN_free(%struct.bignum_st* noundef %crlnumber.0) #10
  %call1223 = call i32 @do_X509_CRL_sign(%struct.X509_crl_st* noundef %call1104, %struct.evp_pkey_st* noundef %call269, i8* noundef %dgst.3, %struct.stack_st_OPENSSL_STRING* noundef %sigopts.0) #10
  %tobool1224.not = icmp eq i32 %call1223, 0
  br i1 %tobool1224.not, label %if.then1282, label %if.end1226

if.end1226:                                       ; preds = %if.end1222
  %call1229 = call %struct.bio_st* @bio_open_default(i8* noundef %outfile.0, i8 noundef signext 119, i32 noundef %tobool1227.not) #10
  %cmp1230 = icmp eq %struct.bio_st* %call1229, null
  br i1 %cmp1230, label %if.then1282, label %if.end1233

if.end1233:                                       ; preds = %if.end1226
  %call1234 = call i32 @PEM_write_bio_X509_CRL(%struct.bio_st* noundef nonnull %call1229, %struct.X509_crl_st* noundef %call1104) #10
  br i1 %cmp1059, label %land.lhs.true1237, label %if.end1245

land.lhs.true1237:                                ; preds = %if.end1233
  %call1238 = call i32 @rotate_serial(i8* noundef nonnull %call1058, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.169, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.170, i64 0, i64 0)) #10
  %tobool1239.not = icmp eq i32 %call1238, 0
  br i1 %tobool1239.not, label %if.then1282, label %if.end1245

if.end1245:                                       ; preds = %land.lhs.true1237, %if.end1233, %if.end1033
  %crl.1 = phi %struct.X509_crl_st* [ null, %if.end1033 ], [ %call1104, %if.end1233 ], [ %call1104, %land.lhs.true1237 ]
  %Sout.4 = phi %struct.bio_st* [ null, %if.end1033 ], [ %call1229, %if.end1233 ], [ %call1229, %land.lhs.true1237 ]
  %tobool1246.not = icmp eq i32 %dorevoke.0, 0
  br i1 %tobool1246.not, label %if.end1283, label %if.then1247

if.then1247:                                      ; preds = %if.end1245
  %cmp1248 = icmp eq i8* %infile.0, null
  br i1 %cmp1248, label %if.then1250, label %if.else1252

if.then1250:                                      ; preds = %if.then1247
  %216 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call1251 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %216, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.222, i64 0, i64 0)) #10
  br label %if.then1282

if.else1252:                                      ; preds = %if.then1247
  %217 = load i32, i32* %informat, align 4, !tbaa !7
  %218 = load i8*, i8** %passin, align 8, !tbaa !3
  %call1253 = call %struct.x509_st* @load_cert_pass(i8* noundef nonnull %infile.0, i32 noundef %217, i32 noundef 1, i8* noundef %218, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.223, i64 0, i64 0)) #10
  %cmp1254 = icmp eq %struct.x509_st* %call1253, null
  br i1 %cmp1254, label %if.then1282, label %if.end1257

if.end1257:                                       ; preds = %if.else1252
  %cmp1258 = icmp eq i32 %dorevoke.0, 2
  %spec.select1908 = select i1 %cmp1258, i32 -1, i32 %rev_type.0
  %call1262 = call fastcc i32 @do_revoke(%struct.x509_st* noundef nonnull %call1253, %struct.ca_db_st* noundef %call393, i32 noundef %spec.select1908, i8* noundef %rev_arg.0) #12
  %cmp1263 = icmp slt i32 %call1262, 1
  br i1 %cmp1263, label %if.then1282, label %if.end1266

if.end1266:                                       ; preds = %if.end1257
  call void @X509_free(%struct.x509_st* noundef nonnull %call1253) #10
  %call1267 = call i32 @save_index(i8* noundef nonnull %call388, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.169, i64 0, i64 0), %struct.ca_db_st* noundef %call393) #10
  %tobool1268.not = icmp eq i32 %call1267, 0
  br i1 %tobool1268.not, label %if.then1282, label %if.end1270

if.end1270:                                       ; preds = %if.end1266
  %call1271 = call i32 @rotate_index(i8* noundef nonnull %call388, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.169, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.170, i64 0, i64 0)) #10
  %tobool1272.not = icmp eq i32 %call1271, 0
  br i1 %tobool1272.not, label %if.then1282, label %cleanup1276

cleanup1276:                                      ; preds = %if.end1270
  %219 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call1275 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %219, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.209, i64 0, i64 0)) #10
  br label %if.end1283

if.then1282:                                      ; preds = %if.end93, %lor.lhs.false96, %if.end78, %lor.lhs.false, %sw.bb55, %sw.bb49, %for.body849, %if.end989, %if.end1158, %if.end1153, %if.end1144, %if.then1139, %if.end1270, %if.end1266, %if.end1257, %if.else1252, %cleanup1202.thread, %cleanup1054.thread, %land.lhs.true1237, %if.end1226, %if.end1222, %land.lhs.true1218, %if.then1210, %if.end1108, %if.end1101, %if.then1116, %if.then1121, %if.then1095, %if.then1065, %if.then1001, %if.then954, %end_of_options, %land.lhs.true161, %if.then228, %if.then237, %if.end239, %if.then248, %if.end244, %land.lhs.true254, %if.end268, %land.lhs.true284, %if.end289, %if.then378, %if.then384, %if.end387, %if.then396, %if.then416, %if.then452, %if.then465, %if.then436, %if.then429, %if.end483, %if.then498, %land.lhs.true609, %cleanup, %if.then713, %if.then724, %if.then753, %if.then759, %if.then764, %if.then792, %if.then820, %if.then872, %if.then866, %if.then1250, %if.end1026, %land.lhs.true1022, %if.end919, %land.lhs.true915, %if.then841, %if.then830, %if.then813, %if.then802, %if.then785, %if.then774, %if.then731, %if.else740, %if.then697, %if.then676, %cleanup657, %if.else623, %land.lhs.true569, %if.then581, %if.end512, %if.else508, %if.then365, %if.then354, %if.then344, %if.then297, %if.then265, %if.then201, %if.end186, %if.end182, %land.lhs.true, %opthelp, %if.then525
  %sigopts.3.ph = phi %struct.stack_st_OPENSSL_STRING* [ %sigopts.0, %if.then525 ], [ %sigopts.0, %opthelp ], [ %sigopts.0, %land.lhs.true ], [ %sigopts.0, %if.end182 ], [ %sigopts.0, %if.end186 ], [ %sigopts.0, %if.then201 ], [ %sigopts.0, %if.then265 ], [ %sigopts.0, %if.then297 ], [ %sigopts.0, %if.then344 ], [ %sigopts.0, %if.then354 ], [ %sigopts.0, %if.then365 ], [ %sigopts.0, %if.else508 ], [ %sigopts.0, %if.end512 ], [ %sigopts.0, %if.then581 ], [ %sigopts.0, %land.lhs.true569 ], [ %sigopts.0, %if.else623 ], [ %sigopts.0, %cleanup657 ], [ %sigopts.0, %if.then676 ], [ %sigopts.0, %if.then697 ], [ %sigopts.0, %if.else740 ], [ %sigopts.0, %if.then731 ], [ %sigopts.0, %if.then774 ], [ %sigopts.0, %if.then785 ], [ %sigopts.0, %if.then802 ], [ %sigopts.0, %if.then813 ], [ %sigopts.0, %if.then830 ], [ %sigopts.0, %if.then841 ], [ %sigopts.0, %land.lhs.true915 ], [ %sigopts.0, %if.end919 ], [ %sigopts.0, %land.lhs.true1022 ], [ %sigopts.0, %if.end1026 ], [ %sigopts.0, %if.then1250 ], [ %sigopts.0, %if.then866 ], [ %sigopts.0, %if.then872 ], [ %sigopts.0, %if.then820 ], [ %sigopts.0, %if.then792 ], [ %sigopts.0, %if.then764 ], [ %sigopts.0, %if.then759 ], [ %sigopts.0, %if.then753 ], [ %sigopts.0, %if.then724 ], [ %sigopts.0, %if.then713 ], [ %sigopts.0, %cleanup ], [ %sigopts.0, %land.lhs.true609 ], [ %sigopts.0, %if.then498 ], [ %sigopts.0, %if.end483 ], [ %sigopts.0, %if.then429 ], [ %sigopts.0, %if.then436 ], [ %sigopts.0, %if.then465 ], [ %sigopts.0, %if.then452 ], [ %sigopts.0, %if.then416 ], [ %sigopts.0, %if.then396 ], [ %sigopts.0, %if.end387 ], [ %sigopts.0, %if.then384 ], [ %sigopts.0, %if.then378 ], [ %sigopts.0, %if.end289 ], [ %sigopts.0, %land.lhs.true284 ], [ %sigopts.0, %if.end268 ], [ %sigopts.0, %land.lhs.true254 ], [ %sigopts.0, %if.end244 ], [ %sigopts.0, %if.then248 ], [ %sigopts.0, %if.end239 ], [ %sigopts.0, %if.then237 ], [ %sigopts.0, %if.then228 ], [ %sigopts.0, %land.lhs.true161 ], [ %sigopts.0, %end_of_options ], [ %sigopts.0, %if.then954 ], [ %sigopts.0, %if.then1001 ], [ %sigopts.0, %if.then1065 ], [ %sigopts.0, %if.then1095 ], [ %sigopts.0, %if.then1121 ], [ %sigopts.0, %if.then1116 ], [ %sigopts.0, %if.end1101 ], [ %sigopts.0, %if.end1108 ], [ %sigopts.0, %if.then1210 ], [ %sigopts.0, %land.lhs.true1218 ], [ %sigopts.0, %if.end1222 ], [ %sigopts.0, %if.end1226 ], [ %sigopts.0, %land.lhs.true1237 ], [ %sigopts.0, %cleanup1054.thread ], [ %sigopts.0, %cleanup1202.thread ], [ %sigopts.0, %if.else1252 ], [ %sigopts.0, %if.end1257 ], [ %sigopts.0, %if.end1266 ], [ %sigopts.0, %if.end1270 ], [ %sigopts.0, %if.then1139 ], [ %sigopts.0, %if.end1144 ], [ %sigopts.0, %if.end1153 ], [ %sigopts.0, %if.end1158 ], [ %sigopts.0, %if.end989 ], [ %sigopts.0, %for.body849 ], [ %sigopts.0, %sw.bb49 ], [ %sigopts.0, %sw.bb55 ], [ %sigopts.11914, %lor.lhs.false ], [ null, %if.end78 ], [ %sigopts.0, %lor.lhs.false96 ], [ %sigopts.0, %if.end93 ]
  %vfyopts.3.ph = phi %struct.stack_st_OPENSSL_STRING* [ %vfyopts.0, %if.then525 ], [ %vfyopts.0, %opthelp ], [ %vfyopts.0, %land.lhs.true ], [ %vfyopts.0, %if.end182 ], [ %vfyopts.0, %if.end186 ], [ %vfyopts.0, %if.then201 ], [ %vfyopts.0, %if.then265 ], [ %vfyopts.0, %if.then297 ], [ %vfyopts.0, %if.then344 ], [ %vfyopts.0, %if.then354 ], [ %vfyopts.0, %if.then365 ], [ %vfyopts.0, %if.else508 ], [ %vfyopts.0, %if.end512 ], [ %vfyopts.0, %if.then581 ], [ %vfyopts.0, %land.lhs.true569 ], [ %vfyopts.0, %if.else623 ], [ %vfyopts.0, %cleanup657 ], [ %vfyopts.0, %if.then676 ], [ %vfyopts.0, %if.then697 ], [ %vfyopts.0, %if.else740 ], [ %vfyopts.0, %if.then731 ], [ %vfyopts.0, %if.then774 ], [ %vfyopts.0, %if.then785 ], [ %vfyopts.0, %if.then802 ], [ %vfyopts.0, %if.then813 ], [ %vfyopts.0, %if.then830 ], [ %vfyopts.0, %if.then841 ], [ %vfyopts.0, %land.lhs.true915 ], [ %vfyopts.0, %if.end919 ], [ %vfyopts.0, %land.lhs.true1022 ], [ %vfyopts.0, %if.end1026 ], [ %vfyopts.0, %if.then1250 ], [ %vfyopts.0, %if.then866 ], [ %vfyopts.0, %if.then872 ], [ %vfyopts.0, %if.then820 ], [ %vfyopts.0, %if.then792 ], [ %vfyopts.0, %if.then764 ], [ %vfyopts.0, %if.then759 ], [ %vfyopts.0, %if.then753 ], [ %vfyopts.0, %if.then724 ], [ %vfyopts.0, %if.then713 ], [ %vfyopts.0, %cleanup ], [ %vfyopts.0, %land.lhs.true609 ], [ %vfyopts.0, %if.then498 ], [ %vfyopts.0, %if.end483 ], [ %vfyopts.0, %if.then429 ], [ %vfyopts.0, %if.then436 ], [ %vfyopts.0, %if.then465 ], [ %vfyopts.0, %if.then452 ], [ %vfyopts.0, %if.then416 ], [ %vfyopts.0, %if.then396 ], [ %vfyopts.0, %if.end387 ], [ %vfyopts.0, %if.then384 ], [ %vfyopts.0, %if.then378 ], [ %vfyopts.0, %if.end289 ], [ %vfyopts.0, %land.lhs.true284 ], [ %vfyopts.0, %if.end268 ], [ %vfyopts.0, %land.lhs.true254 ], [ %vfyopts.0, %if.end244 ], [ %vfyopts.0, %if.then248 ], [ %vfyopts.0, %if.end239 ], [ %vfyopts.0, %if.then237 ], [ %vfyopts.0, %if.then228 ], [ %vfyopts.0, %land.lhs.true161 ], [ %vfyopts.0, %end_of_options ], [ %vfyopts.0, %if.then954 ], [ %vfyopts.0, %if.then1001 ], [ %vfyopts.0, %if.then1065 ], [ %vfyopts.0, %if.then1095 ], [ %vfyopts.0, %if.then1121 ], [ %vfyopts.0, %if.then1116 ], [ %vfyopts.0, %if.end1101 ], [ %vfyopts.0, %if.end1108 ], [ %vfyopts.0, %if.then1210 ], [ %vfyopts.0, %land.lhs.true1218 ], [ %vfyopts.0, %if.end1222 ], [ %vfyopts.0, %if.end1226 ], [ %vfyopts.0, %land.lhs.true1237 ], [ %vfyopts.0, %cleanup1054.thread ], [ %vfyopts.0, %cleanup1202.thread ], [ %vfyopts.0, %if.else1252 ], [ %vfyopts.0, %if.end1257 ], [ %vfyopts.0, %if.end1266 ], [ %vfyopts.0, %if.end1270 ], [ %vfyopts.0, %if.then1139 ], [ %vfyopts.0, %if.end1144 ], [ %vfyopts.0, %if.end1153 ], [ %vfyopts.0, %if.end1158 ], [ %vfyopts.0, %if.end989 ], [ %vfyopts.0, %for.body849 ], [ %vfyopts.0, %sw.bb49 ], [ %vfyopts.0, %sw.bb55 ], [ %vfyopts.0, %lor.lhs.false ], [ %vfyopts.0, %if.end78 ], [ %vfyopts.11917, %lor.lhs.false96 ], [ null, %if.end93 ]
  %cert_sk.1.ph = phi %struct.stack_st_X509* [ null, %if.then525 ], [ null, %opthelp ], [ null, %land.lhs.true ], [ null, %if.end182 ], [ null, %if.end186 ], [ null, %if.then201 ], [ null, %if.then265 ], [ null, %if.then297 ], [ null, %if.then344 ], [ null, %if.then354 ], [ null, %if.then365 ], [ null, %if.else508 ], [ null, %if.end512 ], [ null, %if.then581 ], [ null, %land.lhs.true569 ], [ null, %if.else623 ], [ null, %cleanup657 ], [ null, %if.then676 ], [ null, %if.then697 ], [ null, %if.else740 ], [ null, %if.then731 ], [ %99, %if.then774 ], [ %99, %if.then785 ], [ %99, %if.then802 ], [ %99, %if.then813 ], [ %99, %if.then830 ], [ %99, %if.then841 ], [ %99, %land.lhs.true915 ], [ %99, %if.end919 ], [ %99, %land.lhs.true1022 ], [ %99, %if.end1026 ], [ %cert_sk.0, %if.then1250 ], [ %99, %if.then866 ], [ %99, %if.then872 ], [ %99, %if.then820 ], [ %99, %if.then792 ], [ %99, %if.then764 ], [ null, %if.then759 ], [ null, %if.then753 ], [ null, %if.then724 ], [ null, %if.then713 ], [ null, %cleanup ], [ null, %land.lhs.true609 ], [ null, %if.then498 ], [ null, %if.end483 ], [ null, %if.then429 ], [ null, %if.then436 ], [ null, %if.then465 ], [ null, %if.then452 ], [ null, %if.then416 ], [ null, %if.then396 ], [ null, %if.end387 ], [ null, %if.then384 ], [ null, %if.then378 ], [ null, %if.end289 ], [ null, %land.lhs.true284 ], [ null, %if.end268 ], [ null, %land.lhs.true254 ], [ null, %if.end244 ], [ null, %if.then248 ], [ null, %if.end239 ], [ null, %if.then237 ], [ null, %if.then228 ], [ null, %land.lhs.true161 ], [ null, %end_of_options ], [ %99, %if.then954 ], [ %99, %if.then1001 ], [ %cert_sk.0, %if.then1065 ], [ %cert_sk.0, %if.then1095 ], [ %cert_sk.0, %if.then1121 ], [ %cert_sk.0, %if.then1116 ], [ %cert_sk.0, %if.end1101 ], [ %cert_sk.0, %if.end1108 ], [ %cert_sk.0, %if.then1210 ], [ %cert_sk.0, %land.lhs.true1218 ], [ %cert_sk.0, %if.end1222 ], [ %cert_sk.0, %if.end1226 ], [ %cert_sk.0, %land.lhs.true1237 ], [ %cert_sk.0, %cleanup1054.thread ], [ %cert_sk.0, %cleanup1202.thread ], [ %cert_sk.0, %if.else1252 ], [ %cert_sk.0, %if.end1257 ], [ %cert_sk.0, %if.end1266 ], [ %cert_sk.0, %if.end1270 ], [ %cert_sk.0, %if.then1139 ], [ %cert_sk.0, %if.end1144 ], [ %cert_sk.0, %if.end1153 ], [ %cert_sk.0, %if.end1158 ], [ %99, %if.end989 ], [ %99, %for.body849 ], [ null, %sw.bb49 ], [ null, %sw.bb55 ], [ null, %lor.lhs.false ], [ null, %if.end78 ], [ null, %lor.lhs.false96 ], [ null, %if.end93 ]
  %crl.2.ph = phi %struct.X509_crl_st* [ null, %if.then525 ], [ null, %opthelp ], [ null, %land.lhs.true ], [ null, %if.end182 ], [ null, %if.end186 ], [ null, %if.then201 ], [ null, %if.then265 ], [ null, %if.then297 ], [ null, %if.then344 ], [ null, %if.then354 ], [ null, %if.then365 ], [ null, %if.else508 ], [ null, %if.end512 ], [ null, %if.then581 ], [ null, %land.lhs.true569 ], [ null, %if.else623 ], [ null, %cleanup657 ], [ null, %if.then676 ], [ null, %if.then697 ], [ null, %if.else740 ], [ null, %if.then731 ], [ null, %if.then774 ], [ null, %if.then785 ], [ null, %if.then802 ], [ null, %if.then813 ], [ null, %if.then830 ], [ null, %if.then841 ], [ null, %land.lhs.true915 ], [ null, %if.end919 ], [ null, %land.lhs.true1022 ], [ null, %if.end1026 ], [ %crl.1, %if.then1250 ], [ null, %if.then866 ], [ null, %if.then872 ], [ null, %if.then820 ], [ null, %if.then792 ], [ null, %if.then764 ], [ null, %if.then759 ], [ null, %if.then753 ], [ null, %if.then724 ], [ null, %if.then713 ], [ null, %cleanup ], [ null, %land.lhs.true609 ], [ null, %if.then498 ], [ null, %if.end483 ], [ null, %if.then429 ], [ null, %if.then436 ], [ null, %if.then465 ], [ null, %if.then452 ], [ null, %if.then416 ], [ null, %if.then396 ], [ null, %if.end387 ], [ null, %if.then384 ], [ null, %if.then378 ], [ null, %if.end289 ], [ null, %land.lhs.true284 ], [ null, %if.end268 ], [ null, %land.lhs.true254 ], [ null, %if.end244 ], [ null, %if.then248 ], [ null, %if.end239 ], [ null, %if.then237 ], [ null, %if.then228 ], [ null, %land.lhs.true161 ], [ null, %end_of_options ], [ null, %if.then954 ], [ null, %if.then1001 ], [ null, %if.then1065 ], [ null, %if.then1095 ], [ %call1104, %if.then1121 ], [ %call1104, %if.then1116 ], [ null, %if.end1101 ], [ %call1104, %if.end1108 ], [ %call1104, %if.then1210 ], [ %call1104, %land.lhs.true1218 ], [ %call1104, %if.end1222 ], [ %call1104, %if.end1226 ], [ %call1104, %land.lhs.true1237 ], [ null, %cleanup1054.thread ], [ %call1104, %cleanup1202.thread ], [ %crl.1, %if.else1252 ], [ %crl.1, %if.end1257 ], [ %crl.1, %if.end1266 ], [ %crl.1, %if.end1270 ], [ %call1104, %if.then1139 ], [ %call1104, %if.end1144 ], [ %call1104, %if.end1153 ], [ %call1104, %if.end1158 ], [ null, %if.end989 ], [ null, %for.body849 ], [ null, %sw.bb49 ], [ null, %sw.bb55 ], [ null, %lor.lhs.false ], [ null, %if.end78 ], [ null, %lor.lhs.false96 ], [ null, %if.end93 ]
  %db.0.ph = phi %struct.ca_db_st* [ %call393, %if.then525 ], [ null, %opthelp ], [ null, %land.lhs.true ], [ null, %if.end182 ], [ null, %if.end186 ], [ null, %if.then201 ], [ null, %if.then265 ], [ null, %if.then297 ], [ null, %if.then344 ], [ null, %if.then354 ], [ null, %if.then365 ], [ %call393, %if.else508 ], [ %call393, %if.end512 ], [ %call393, %if.then581 ], [ %call393, %land.lhs.true569 ], [ %call393, %if.else623 ], [ %call393, %cleanup657 ], [ %call393, %if.then676 ], [ %call393, %if.then697 ], [ %call393, %if.else740 ], [ %call393, %if.then731 ], [ %call393, %if.then774 ], [ %call393, %if.then785 ], [ %call393, %if.then802 ], [ %call393, %if.then813 ], [ %call393, %if.then830 ], [ %call393, %if.then841 ], [ %call393, %land.lhs.true915 ], [ %call393, %if.end919 ], [ %call393, %land.lhs.true1022 ], [ %call393, %if.end1026 ], [ %call393, %if.then1250 ], [ %call393, %if.then866 ], [ %call393, %if.then872 ], [ %call393, %if.then820 ], [ %call393, %if.then792 ], [ %call393, %if.then764 ], [ %call393, %if.then759 ], [ %call393, %if.then753 ], [ %call393, %if.then724 ], [ %call393, %if.then713 ], [ %call393, %cleanup ], [ %call393, %land.lhs.true609 ], [ %call393, %if.then498 ], [ %call393, %if.end483 ], [ %call393, %if.then429 ], [ %call393, %if.then436 ], [ %call393, %if.then465 ], [ %call393, %if.then452 ], [ %call393, %if.then416 ], [ null, %if.then396 ], [ null, %if.end387 ], [ null, %if.then384 ], [ null, %if.then378 ], [ null, %if.end289 ], [ null, %land.lhs.true284 ], [ null, %if.end268 ], [ null, %land.lhs.true254 ], [ %call234, %if.end244 ], [ %call234, %if.then248 ], [ %call234, %if.end239 ], [ null, %if.then237 ], [ null, %if.then228 ], [ null, %land.lhs.true161 ], [ null, %end_of_options ], [ %call393, %if.then954 ], [ %call393, %if.then1001 ], [ %call393, %if.then1065 ], [ %call393, %if.then1095 ], [ %call393, %if.then1121 ], [ %call393, %if.then1116 ], [ %call393, %if.end1101 ], [ %call393, %if.end1108 ], [ %call393, %if.then1210 ], [ %call393, %land.lhs.true1218 ], [ %call393, %if.end1222 ], [ %call393, %if.end1226 ], [ %call393, %land.lhs.true1237 ], [ %call393, %cleanup1054.thread ], [ %call393, %cleanup1202.thread ], [ %call393, %if.else1252 ], [ %call393, %if.end1257 ], [ %call393, %if.end1266 ], [ %call393, %if.end1270 ], [ %call393, %if.then1139 ], [ %call393, %if.end1144 ], [ %call393, %if.end1153 ], [ %call393, %if.end1158 ], [ %call393, %if.end989 ], [ %call393, %for.body849 ], [ null, %sw.bb49 ], [ null, %sw.bb55 ], [ null, %lor.lhs.false ], [ null, %if.end78 ], [ null, %lor.lhs.false96 ], [ null, %if.end93 ]
  %free_passin.1.ph = phi i32 [ %free_passin.0, %if.then525 ], [ 0, %opthelp ], [ 0, %land.lhs.true ], [ 0, %if.end182 ], [ 0, %if.end186 ], [ 0, %if.then201 ], [ 1, %if.then265 ], [ %free_passin.0, %if.then297 ], [ %free_passin.0, %if.then344 ], [ %free_passin.0, %if.then354 ], [ %free_passin.0, %if.then365 ], [ %free_passin.0, %if.else508 ], [ %free_passin.0, %if.end512 ], [ %free_passin.0, %if.then581 ], [ %free_passin.0, %land.lhs.true569 ], [ %free_passin.0, %if.else623 ], [ %free_passin.0, %cleanup657 ], [ %free_passin.0, %if.then676 ], [ %free_passin.0, %if.then697 ], [ %free_passin.0, %if.else740 ], [ %free_passin.0, %if.then731 ], [ %free_passin.0, %if.then774 ], [ %free_passin.0, %if.then785 ], [ %free_passin.0, %if.then802 ], [ %free_passin.0, %if.then813 ], [ %free_passin.0, %if.then830 ], [ %free_passin.0, %if.then841 ], [ %free_passin.0, %land.lhs.true915 ], [ %free_passin.0, %if.end919 ], [ %free_passin.0, %land.lhs.true1022 ], [ %free_passin.0, %if.end1026 ], [ %free_passin.0, %if.then1250 ], [ %free_passin.0, %if.then866 ], [ %free_passin.0, %if.then872 ], [ %free_passin.0, %if.then820 ], [ %free_passin.0, %if.then792 ], [ %free_passin.0, %if.then764 ], [ %free_passin.0, %if.then759 ], [ %free_passin.0, %if.then753 ], [ %free_passin.0, %if.then724 ], [ %free_passin.0, %if.then713 ], [ %free_passin.0, %cleanup ], [ %free_passin.0, %land.lhs.true609 ], [ %free_passin.0, %if.then498 ], [ %free_passin.0, %if.end483 ], [ %free_passin.0, %if.then429 ], [ %free_passin.0, %if.then436 ], [ %free_passin.0, %if.then465 ], [ %free_passin.0, %if.then452 ], [ %free_passin.0, %if.then416 ], [ %free_passin.0, %if.then396 ], [ %free_passin.0, %if.end387 ], [ %free_passin.0, %if.then384 ], [ %free_passin.0, %if.then378 ], [ %free_passin.0, %if.end289 ], [ %free_passin.0, %land.lhs.true284 ], [ %free_passin.0, %if.end268 ], [ 0, %land.lhs.true254 ], [ 0, %if.end244 ], [ 0, %if.then248 ], [ 0, %if.end239 ], [ 0, %if.then237 ], [ 0, %if.then228 ], [ 0, %land.lhs.true161 ], [ 0, %end_of_options ], [ %free_passin.0, %if.then954 ], [ %free_passin.0, %if.then1001 ], [ %free_passin.0, %if.then1065 ], [ %free_passin.0, %if.then1095 ], [ %free_passin.0, %if.then1121 ], [ %free_passin.0, %if.then1116 ], [ %free_passin.0, %if.end1101 ], [ %free_passin.0, %if.end1108 ], [ %free_passin.0, %if.then1210 ], [ %free_passin.0, %land.lhs.true1218 ], [ %free_passin.0, %if.end1222 ], [ %free_passin.0, %if.end1226 ], [ %free_passin.0, %land.lhs.true1237 ], [ %free_passin.0, %cleanup1054.thread ], [ %free_passin.0, %cleanup1202.thread ], [ %free_passin.0, %if.else1252 ], [ %free_passin.0, %if.end1257 ], [ %free_passin.0, %if.end1266 ], [ %free_passin.0, %if.end1270 ], [ %free_passin.0, %if.then1139 ], [ %free_passin.0, %if.end1144 ], [ %free_passin.0, %if.end1153 ], [ %free_passin.0, %if.end1158 ], [ %free_passin.0, %if.end989 ], [ %free_passin.0, %for.body849 ], [ 0, %sw.bb49 ], [ 0, %sw.bb55 ], [ 0, %lor.lhs.false ], [ 0, %if.end78 ], [ 0, %lor.lhs.false96 ], [ 0, %if.end93 ]
  %Sout.5.ph = phi %struct.bio_st* [ null, %if.then525 ], [ null, %opthelp ], [ null, %land.lhs.true ], [ null, %if.end182 ], [ null, %if.end186 ], [ null, %if.then201 ], [ null, %if.then265 ], [ null, %if.then297 ], [ null, %if.then344 ], [ null, %if.then354 ], [ null, %if.then365 ], [ null, %if.else508 ], [ null, %if.end512 ], [ null, %if.then581 ], [ null, %land.lhs.true569 ], [ null, %if.else623 ], [ null, %cleanup657 ], [ null, %if.then676 ], [ null, %if.then697 ], [ null, %if.else740 ], [ null, %if.then731 ], [ null, %if.then774 ], [ null, %if.then785 ], [ null, %if.then802 ], [ null, %if.then813 ], [ null, %if.then830 ], [ null, %if.then841 ], [ null, %land.lhs.true915 ], [ null, %if.end919 ], [ null, %land.lhs.true1022 ], [ null, %if.end1026 ], [ %Sout.4, %if.then1250 ], [ null, %if.then866 ], [ null, %if.then872 ], [ null, %if.then820 ], [ null, %if.then792 ], [ null, %if.then764 ], [ null, %if.then759 ], [ null, %if.then753 ], [ null, %if.then724 ], [ null, %if.then713 ], [ null, %cleanup ], [ null, %land.lhs.true609 ], [ null, %if.then498 ], [ null, %if.end483 ], [ null, %if.then429 ], [ null, %if.then436 ], [ null, %if.then465 ], [ null, %if.then452 ], [ null, %if.then416 ], [ null, %if.then396 ], [ null, %if.end387 ], [ null, %if.then384 ], [ null, %if.then378 ], [ null, %if.end289 ], [ null, %land.lhs.true284 ], [ null, %if.end268 ], [ null, %land.lhs.true254 ], [ null, %if.end244 ], [ null, %if.then248 ], [ null, %if.end239 ], [ null, %if.then237 ], [ null, %if.then228 ], [ null, %land.lhs.true161 ], [ null, %end_of_options ], [ null, %if.then954 ], [ %call992, %if.then1001 ], [ null, %if.then1065 ], [ null, %if.then1095 ], [ null, %if.then1121 ], [ null, %if.then1116 ], [ null, %if.end1101 ], [ null, %if.end1108 ], [ null, %if.then1210 ], [ null, %land.lhs.true1218 ], [ null, %if.end1222 ], [ null, %if.end1226 ], [ %call1229, %land.lhs.true1237 ], [ null, %cleanup1054.thread ], [ null, %cleanup1202.thread ], [ %Sout.4, %if.else1252 ], [ %Sout.4, %if.end1257 ], [ %Sout.4, %if.end1266 ], [ %Sout.4, %if.end1270 ], [ null, %if.then1139 ], [ null, %if.end1144 ], [ null, %if.end1153 ], [ null, %if.end1158 ], [ null, %if.end989 ], [ null, %for.body849 ], [ null, %sw.bb49 ], [ null, %sw.bb55 ], [ null, %lor.lhs.false ], [ null, %if.end78 ], [ null, %lor.lhs.false96 ], [ null, %if.end93 ]
  %x509.1.ph = phi %struct.x509_st* [ %x509.0, %if.then525 ], [ null, %opthelp ], [ null, %land.lhs.true ], [ null, %if.end182 ], [ null, %if.end186 ], [ null, %if.then201 ], [ null, %if.then265 ], [ %call290, %if.then297 ], [ %x509.0, %if.then344 ], [ %x509.0, %if.then354 ], [ %x509.0, %if.then365 ], [ %x509.0, %if.else508 ], [ %x509.0, %if.end512 ], [ %x509.0, %if.then581 ], [ %x509.0, %land.lhs.true569 ], [ %x509.0, %if.else623 ], [ %x509.0, %cleanup657 ], [ %x509.0, %if.then676 ], [ %x509.0, %if.then697 ], [ %x509.0, %if.else740 ], [ %x509.0, %if.then731 ], [ %x509.0, %if.then774 ], [ %x509.0, %if.then785 ], [ %x509.0, %if.then802 ], [ %x509.0, %if.then813 ], [ %x509.0, %if.then830 ], [ %x509.0, %if.then841 ], [ %x509.0, %land.lhs.true915 ], [ %x509.0, %if.end919 ], [ %x509.0, %land.lhs.true1022 ], [ %x509.0, %if.end1026 ], [ %x509.0, %if.then1250 ], [ %x509.0, %if.then866 ], [ %x509.0, %if.then872 ], [ %x509.0, %if.then820 ], [ %x509.0, %if.then792 ], [ %x509.0, %if.then764 ], [ %x509.0, %if.then759 ], [ %x509.0, %if.then753 ], [ %x509.0, %if.then724 ], [ %x509.0, %if.then713 ], [ %x509.0, %cleanup ], [ %x509.0, %land.lhs.true609 ], [ %x509.0, %if.then498 ], [ %x509.0, %if.end483 ], [ %x509.0, %if.then429 ], [ %x509.0, %if.then436 ], [ %x509.0, %if.then465 ], [ %x509.0, %if.then452 ], [ %x509.0, %if.then416 ], [ %x509.0, %if.then396 ], [ %x509.0, %if.end387 ], [ %x509.0, %if.then384 ], [ %x509.0, %if.then378 ], [ null, %if.end289 ], [ null, %land.lhs.true284 ], [ null, %if.end268 ], [ null, %land.lhs.true254 ], [ null, %if.end244 ], [ null, %if.then248 ], [ null, %if.end239 ], [ null, %if.then237 ], [ null, %if.then228 ], [ null, %land.lhs.true161 ], [ null, %end_of_options ], [ %x509.0, %if.then954 ], [ %x509.0, %if.then1001 ], [ %x509.0, %if.then1065 ], [ %x509.0, %if.then1095 ], [ %x509.0, %if.then1121 ], [ %x509.0, %if.then1116 ], [ %x509.0, %if.end1101 ], [ %x509.0, %if.end1108 ], [ %x509.0, %if.then1210 ], [ %x509.0, %land.lhs.true1218 ], [ %x509.0, %if.end1222 ], [ %x509.0, %if.end1226 ], [ %x509.0, %land.lhs.true1237 ], [ %x509.0, %cleanup1054.thread ], [ %x509.0, %cleanup1202.thread ], [ %x509.0, %if.else1252 ], [ %x509.0, %if.end1257 ], [ %x509.0, %if.end1266 ], [ %x509.0, %if.end1270 ], [ %x509.0, %if.then1139 ], [ %x509.0, %if.end1144 ], [ %x509.0, %if.end1153 ], [ %x509.0, %if.end1158 ], [ %x509.0, %if.end989 ], [ %x509.0, %for.body849 ], [ null, %sw.bb49 ], [ null, %sw.bb55 ], [ null, %lor.lhs.false ], [ null, %if.end78 ], [ null, %lor.lhs.false96 ], [ null, %if.end93 ]
  %pkey.0.ph = phi %struct.evp_pkey_st* [ %call269, %if.then525 ], [ null, %opthelp ], [ null, %land.lhs.true ], [ null, %if.end182 ], [ null, %if.end186 ], [ null, %if.then201 ], [ null, %if.then265 ], [ %call269, %if.then297 ], [ %call269, %if.then344 ], [ %call269, %if.then354 ], [ %call269, %if.then365 ], [ %call269, %if.else508 ], [ %call269, %if.end512 ], [ %call269, %if.then581 ], [ %call269, %land.lhs.true569 ], [ %call269, %if.else623 ], [ %call269, %cleanup657 ], [ %call269, %if.then676 ], [ %call269, %if.then697 ], [ %call269, %if.else740 ], [ %call269, %if.then731 ], [ %call269, %if.then774 ], [ %call269, %if.then785 ], [ %call269, %if.then802 ], [ %call269, %if.then813 ], [ %call269, %if.then830 ], [ %call269, %if.then841 ], [ %call269, %land.lhs.true915 ], [ %call269, %if.end919 ], [ %call269, %land.lhs.true1022 ], [ %call269, %if.end1026 ], [ %call269, %if.then1250 ], [ %call269, %if.then866 ], [ %call269, %if.then872 ], [ %call269, %if.then820 ], [ %call269, %if.then792 ], [ %call269, %if.then764 ], [ %call269, %if.then759 ], [ %call269, %if.then753 ], [ %call269, %if.then724 ], [ %call269, %if.then713 ], [ %call269, %cleanup ], [ %call269, %land.lhs.true609 ], [ %call269, %if.then498 ], [ %call269, %if.end483 ], [ %call269, %if.then429 ], [ %call269, %if.then436 ], [ %call269, %if.then465 ], [ %call269, %if.then452 ], [ %call269, %if.then416 ], [ %call269, %if.then396 ], [ %call269, %if.end387 ], [ %call269, %if.then384 ], [ %call269, %if.then378 ], [ %call269, %if.end289 ], [ %call269, %land.lhs.true284 ], [ null, %if.end268 ], [ null, %land.lhs.true254 ], [ null, %if.end244 ], [ null, %if.then248 ], [ null, %if.end239 ], [ null, %if.then237 ], [ null, %if.then228 ], [ null, %land.lhs.true161 ], [ null, %end_of_options ], [ %call269, %if.then954 ], [ %call269, %if.then1001 ], [ %call269, %if.then1065 ], [ %call269, %if.then1095 ], [ %call269, %if.then1121 ], [ %call269, %if.then1116 ], [ %call269, %if.end1101 ], [ %call269, %if.end1108 ], [ %call269, %if.then1210 ], [ %call269, %land.lhs.true1218 ], [ %call269, %if.end1222 ], [ %call269, %if.end1226 ], [ %call269, %land.lhs.true1237 ], [ %call269, %cleanup1054.thread ], [ %call269, %cleanup1202.thread ], [ %call269, %if.else1252 ], [ %call269, %if.end1257 ], [ %call269, %if.end1266 ], [ %call269, %if.end1270 ], [ %call269, %if.then1139 ], [ %call269, %if.end1144 ], [ %call269, %if.end1153 ], [ %call269, %if.end1158 ], [ %call269, %if.end989 ], [ %call269, %for.body849 ], [ null, %sw.bb49 ], [ null, %sw.bb55 ], [ null, %lor.lhs.false ], [ null, %if.end78 ], [ null, %lor.lhs.false96 ], [ null, %if.end93 ]
  %crlnumber.3.ph = phi %struct.bignum_st* [ null, %if.then525 ], [ null, %opthelp ], [ null, %land.lhs.true ], [ null, %if.end182 ], [ null, %if.end186 ], [ null, %if.then201 ], [ null, %if.then265 ], [ null, %if.then297 ], [ null, %if.then344 ], [ null, %if.then354 ], [ null, %if.then365 ], [ null, %if.else508 ], [ null, %if.end512 ], [ null, %if.then581 ], [ null, %land.lhs.true569 ], [ null, %if.else623 ], [ null, %cleanup657 ], [ null, %if.then676 ], [ null, %if.then697 ], [ null, %if.else740 ], [ null, %if.then731 ], [ null, %if.then774 ], [ null, %if.then785 ], [ null, %if.then802 ], [ null, %if.then813 ], [ null, %if.then830 ], [ null, %if.then841 ], [ null, %land.lhs.true915 ], [ null, %if.end919 ], [ null, %land.lhs.true1022 ], [ null, %if.end1026 ], [ null, %if.then1250 ], [ null, %if.then866 ], [ null, %if.then872 ], [ null, %if.then820 ], [ null, %if.then792 ], [ null, %if.then764 ], [ null, %if.then759 ], [ null, %if.then753 ], [ null, %if.then724 ], [ null, %if.then713 ], [ null, %cleanup ], [ null, %land.lhs.true609 ], [ null, %if.then498 ], [ null, %if.end483 ], [ null, %if.then429 ], [ null, %if.then436 ], [ null, %if.then465 ], [ null, %if.then452 ], [ null, %if.then416 ], [ null, %if.then396 ], [ null, %if.end387 ], [ null, %if.then384 ], [ null, %if.then378 ], [ null, %if.end289 ], [ null, %land.lhs.true284 ], [ null, %if.end268 ], [ null, %land.lhs.true254 ], [ null, %if.end244 ], [ null, %if.then248 ], [ null, %if.end239 ], [ null, %if.then237 ], [ null, %if.then228 ], [ null, %land.lhs.true161 ], [ null, %end_of_options ], [ null, %if.then954 ], [ null, %if.then1001 ], [ null, %if.then1065 ], [ %crlnumber.0, %if.then1095 ], [ %crlnumber.0, %if.then1121 ], [ %crlnumber.0, %if.then1116 ], [ %crlnumber.0, %if.end1101 ], [ %crlnumber.0, %if.end1108 ], [ %crlnumber.0, %if.then1210 ], [ %crlnumber.0, %land.lhs.true1218 ], [ null, %if.end1222 ], [ null, %if.end1226 ], [ null, %land.lhs.true1237 ], [ null, %cleanup1054.thread ], [ %crlnumber.0, %cleanup1202.thread ], [ null, %if.else1252 ], [ null, %if.end1257 ], [ null, %if.end1266 ], [ null, %if.end1270 ], [ %crlnumber.0, %if.then1139 ], [ %crlnumber.0, %if.end1144 ], [ %crlnumber.0, %if.end1153 ], [ %crlnumber.0, %if.end1158 ], [ null, %if.end989 ], [ null, %for.body849 ], [ null, %sw.bb49 ], [ null, %sw.bb55 ], [ null, %lor.lhs.false ], [ null, %if.end78 ], [ null, %lor.lhs.false96 ], [ null, %if.end93 ]
  %conf.0.ph = phi %struct.conf_st* [ %call148, %if.then525 ], [ null, %opthelp ], [ %call148, %land.lhs.true ], [ %call148, %if.end182 ], [ %call148, %if.end186 ], [ %call148, %if.then201 ], [ %call148, %if.then265 ], [ %call148, %if.then297 ], [ %call148, %if.then344 ], [ %call148, %if.then354 ], [ %call148, %if.then365 ], [ %call148, %if.else508 ], [ %call148, %if.end512 ], [ %call148, %if.then581 ], [ %call148, %land.lhs.true569 ], [ %call148, %if.else623 ], [ %call148, %cleanup657 ], [ %call148, %if.then676 ], [ %call148, %if.then697 ], [ %call148, %if.else740 ], [ %call148, %if.then731 ], [ %call148, %if.then774 ], [ %call148, %if.then785 ], [ %call148, %if.then802 ], [ %call148, %if.then813 ], [ %call148, %if.then830 ], [ %call148, %if.then841 ], [ %call148, %land.lhs.true915 ], [ %call148, %if.end919 ], [ %call148, %land.lhs.true1022 ], [ %call148, %if.end1026 ], [ %call148, %if.then1250 ], [ %call148, %if.then866 ], [ %call148, %if.then872 ], [ %call148, %if.then820 ], [ %call148, %if.then792 ], [ %call148, %if.then764 ], [ %call148, %if.then759 ], [ %call148, %if.then753 ], [ %call148, %if.then724 ], [ %call148, %if.then713 ], [ %call148, %cleanup ], [ %call148, %land.lhs.true609 ], [ %call148, %if.then498 ], [ %call148, %if.end483 ], [ %call148, %if.then429 ], [ %call148, %if.then436 ], [ %call148, %if.then465 ], [ %call148, %if.then452 ], [ %call148, %if.then416 ], [ %call148, %if.then396 ], [ %call148, %if.end387 ], [ %call148, %if.then384 ], [ %call148, %if.then378 ], [ %call148, %if.end289 ], [ %call148, %land.lhs.true284 ], [ %call148, %if.end268 ], [ %call148, %land.lhs.true254 ], [ %call148, %if.end244 ], [ %call148, %if.then248 ], [ %call148, %if.end239 ], [ %call148, %if.then237 ], [ %call148, %if.then228 ], [ %call148, %land.lhs.true161 ], [ null, %end_of_options ], [ %call148, %if.then954 ], [ %call148, %if.then1001 ], [ %call148, %if.then1065 ], [ %call148, %if.then1095 ], [ %call148, %if.then1121 ], [ %call148, %if.then1116 ], [ %call148, %if.end1101 ], [ %call148, %if.end1108 ], [ %call148, %if.then1210 ], [ %call148, %land.lhs.true1218 ], [ %call148, %if.end1222 ], [ %call148, %if.end1226 ], [ %call148, %land.lhs.true1237 ], [ %call148, %cleanup1054.thread ], [ %call148, %cleanup1202.thread ], [ %call148, %if.else1252 ], [ %call148, %if.end1257 ], [ %call148, %if.end1266 ], [ %call148, %if.end1270 ], [ %call148, %if.then1139 ], [ %call148, %if.end1144 ], [ %call148, %if.end1153 ], [ %call148, %if.end1158 ], [ %call148, %if.end989 ], [ %call148, %for.body849 ], [ null, %sw.bb49 ], [ null, %sw.bb55 ], [ null, %lor.lhs.false ], [ null, %if.end78 ], [ null, %lor.lhs.false96 ], [ null, %if.end93 ]
  %220 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  call void @ERR_print_errors(%struct.bio_st* noundef %220) #10
  br label %if.end1283

if.end1283:                                       ; preds = %sw.bb3, %if.then894, %if.then906, %cleanup1276, %if.end1245, %if.then1282
  %conf.01997 = phi %struct.conf_st* [ %conf.0.ph, %if.then1282 ], [ %call148, %if.then894 ], [ %call148, %if.then906 ], [ null, %sw.bb3 ], [ %call148, %cleanup1276 ], [ %call148, %if.end1245 ]
  %crlnumber.31995 = phi %struct.bignum_st* [ %crlnumber.3.ph, %if.then1282 ], [ null, %if.then894 ], [ null, %if.then906 ], [ null, %sw.bb3 ], [ null, %cleanup1276 ], [ null, %if.end1245 ]
  %pkey.01993 = phi %struct.evp_pkey_st* [ %pkey.0.ph, %if.then1282 ], [ %call269, %if.then894 ], [ %call269, %if.then906 ], [ null, %sw.bb3 ], [ %call269, %cleanup1276 ], [ %call269, %if.end1245 ]
  %x509.11991 = phi %struct.x509_st* [ %x509.1.ph, %if.then1282 ], [ %x509.0, %if.then894 ], [ %x509.0, %if.then906 ], [ null, %sw.bb3 ], [ %x509.0, %cleanup1276 ], [ %x509.0, %if.end1245 ]
  %Sout.51989 = phi %struct.bio_st* [ %Sout.5.ph, %if.then1282 ], [ null, %if.then894 ], [ null, %if.then906 ], [ null, %sw.bb3 ], [ %Sout.4, %cleanup1276 ], [ %Sout.4, %if.end1245 ]
  %ret.81987 = phi i32 [ 1, %if.then1282 ], [ 0, %if.then894 ], [ 0, %if.then906 ], [ 0, %sw.bb3 ], [ 0, %cleanup1276 ], [ 0, %if.end1245 ]
  %free_passin.11985 = phi i32 [ %free_passin.1.ph, %if.then1282 ], [ %free_passin.0, %if.then894 ], [ %free_passin.0, %if.then906 ], [ 0, %sw.bb3 ], [ %free_passin.0, %cleanup1276 ], [ %free_passin.0, %if.end1245 ]
  %db.01983 = phi %struct.ca_db_st* [ %db.0.ph, %if.then1282 ], [ %call393, %if.then894 ], [ %call393, %if.then906 ], [ null, %sw.bb3 ], [ %call393, %cleanup1276 ], [ %call393, %if.end1245 ]
  %crl.21981 = phi %struct.X509_crl_st* [ %crl.2.ph, %if.then1282 ], [ null, %if.then894 ], [ null, %if.then906 ], [ null, %sw.bb3 ], [ %crl.1, %cleanup1276 ], [ %crl.1, %if.end1245 ]
  %cert_sk.11979 = phi %struct.stack_st_X509* [ %cert_sk.1.ph, %if.then1282 ], [ %99, %if.then894 ], [ %99, %if.then906 ], [ null, %sw.bb3 ], [ %cert_sk.0, %cleanup1276 ], [ %cert_sk.0, %if.end1245 ]
  %vfyopts.31977 = phi %struct.stack_st_OPENSSL_STRING* [ %vfyopts.3.ph, %if.then1282 ], [ %vfyopts.0, %if.then894 ], [ %vfyopts.0, %if.then906 ], [ %vfyopts.0, %sw.bb3 ], [ %vfyopts.0, %cleanup1276 ], [ %vfyopts.0, %if.end1245 ]
  %sigopts.31975 = phi %struct.stack_st_OPENSSL_STRING* [ %sigopts.3.ph, %if.then1282 ], [ %sigopts.0, %if.then894 ], [ %sigopts.0, %if.then906 ], [ %sigopts.0, %sw.bb3 ], [ %sigopts.0, %cleanup1276 ], [ %sigopts.0, %if.end1245 ]
  call void @BIO_free_all(%struct.bio_st* noundef %Sout.51989) #10
  call void @BIO_free_all(%struct.bio_st* noundef null) #10
  call void @BIO_free_all(%struct.bio_st* noundef null) #10
  %call1284 = call fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef %cert_sk.11979) #12
  call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call1284, void (i8*)* noundef bitcast (void (%struct.x509_st*)* @X509_free to void (i8*)*)) #10
  %221 = load i8*, i8** %passin, align 8, !tbaa !3
  call void @cleanse(i8* noundef %221) #10
  %tobool1286.not = icmp eq i32 %free_passin.11985, 0
  br i1 %tobool1286.not, label %cleanup1291, label %if.then1287

if.then1287:                                      ; preds = %if.end1283
  %222 = load i8*, i8** %passin, align 8, !tbaa !3
  call void @CRYPTO_free(i8* noundef %222, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.196, i64 0, i64 0), i32 noundef 1332) #10
  br label %cleanup1291

cleanup1291:                                      ; preds = %if.end1283, %if.then1287
  %223 = load %struct.bignum_st*, %struct.bignum_st** %serial, align 8, !tbaa !3
  call void @BN_free(%struct.bignum_st* noundef %223) #10
  call void @BN_free(%struct.bignum_st* noundef %crlnumber.31995) #10
  call void @free_index(%struct.ca_db_st* noundef %db.01983) #10
  %call1289 = call fastcc %struct.stack_st* @ossl_check_OPENSSL_STRING_sk_type(%struct.stack_st_OPENSSL_STRING* noundef %sigopts.31975) #12
  call void @OPENSSL_sk_free(%struct.stack_st* noundef %call1289) #10
  %call1290 = call fastcc %struct.stack_st* @ossl_check_OPENSSL_STRING_sk_type(%struct.stack_st_OPENSSL_STRING* noundef %vfyopts.31977) #12
  call void @OPENSSL_sk_free(%struct.stack_st* noundef %call1290) #10
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %pkey.01993) #10
  call void @X509_free(%struct.x509_st* noundef %x509.11991) #10
  call void @X509_CRL_free(%struct.X509_crl_st* noundef %crl.21981) #10
  call void @NCONF_free(%struct.conf_st* noundef %conf.01997) #10
  %224 = load %struct.conf_st*, %struct.conf_st** @extfile_conf, align 8, !tbaa !3
  call void @NCONF_free(%struct.conf_st* noundef %224) #10
  call void @release_engine(%struct.engine_st* noundef %e.0) #10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %16) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %15) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %14) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %13) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %12) #9
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %11) #9
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %10) #9
  call void @llvm.lifetime.end.p0i8(i64 11, i8* nonnull %9) #9
  call void @llvm.lifetime.end.p0i8(i64 4096, i8* nonnull %8) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #9
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #9
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #9
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %3) #9
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #9
  ret i32 %ret.81987
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i8* @opt_init(i32 noundef, i8** noundef, %struct.options_st* noundef) local_unnamed_addr #3

declare dso_local i32 @opt_next() local_unnamed_addr #3

declare dso_local i32 @BIO_printf(%struct.bio_st* noundef, i8* noundef, ...) local_unnamed_addr #3

declare dso_local void @opt_help(%struct.options_st* noundef) local_unnamed_addr #3

declare dso_local i8* @opt_arg() local_unnamed_addr #3

declare dso_local i32 @opt_format(i8* noundef, i64 noundef, i32* noundef) local_unnamed_addr #3

declare dso_local i32 @set_dateopt(i64* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline nounwind readonly uwtable willreturn
declare dso_local i32 @atoi(i8* noundef nonnull) local_unnamed_addr #4

declare dso_local i32 @opt_rand(i32 noundef) local_unnamed_addr #3

declare dso_local i32 @opt_provider(i32 noundef) local_unnamed_addr #3

declare dso_local %struct.stack_st* @OPENSSL_sk_new_null() local_unnamed_addr #3

declare dso_local i32 @OPENSSL_sk_push(%struct.stack_st* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_OPENSSL_STRING_sk_type(%struct.stack_st_OPENSSL_STRING* noundef readnone %sk) unnamed_addr #5 {
entry:
  %0 = bitcast %struct.stack_st_OPENSSL_STRING* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

; Function Attrs: mustprogress nofree noinline nounwind readonly uwtable willreturn
declare dso_local i64 @atol(i8* noundef nonnull) local_unnamed_addr #4

declare dso_local %struct.engine_st* @setup_engine_methods(i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare dso_local i32 @opt_num_rest() local_unnamed_addr #3

declare dso_local i8** @opt_rest() local_unnamed_addr #3

declare dso_local %struct.conf_st* @app_load_config_verbose(i8* noundef, i32 noundef) local_unnamed_addr #3

declare dso_local i32 @app_load_modules(%struct.conf_st* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc i8* @lookup_conf(%struct.conf_st* noundef %conf, i8* noundef %section, i8* noundef %tag) unnamed_addr #0 {
entry:
  %call = tail call i8* @NCONF_get_string(%struct.conf_st* noundef %conf, i8* noundef %section, i8* noundef %tag) #10
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call2 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %0, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.231, i64 0, i64 0), i8* noundef %section, i8* noundef %tag) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i8* %call
}

declare dso_local i8* @NCONF_get_string(%struct.conf_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local void @ERR_clear_error() local_unnamed_addr #3

declare dso_local %struct.bio_st* @BIO_new_file(i8* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local i32 @OBJ_create_objects(%struct.bio_st* noundef) local_unnamed_addr #3

declare dso_local i32 @BIO_free(%struct.bio_st* noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

declare dso_local i32 @add_oid_section(%struct.conf_st* noundef) local_unnamed_addr #3

declare dso_local void @app_RAND_load_conf(%struct.conf_st* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local i32 @app_RAND_load() local_unnamed_addr #3

declare dso_local i32 @ASN1_STRING_set_default_mask_asc(i8* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) local_unnamed_addr #6

declare dso_local i32 @parse_yesno(i8* noundef, i32 noundef) local_unnamed_addr #3

declare dso_local %struct.ca_db_st* @load_index(i8* noundef, %struct.db_attr_st* noundef) local_unnamed_addr #3

declare dso_local i32 @index_index(%struct.ca_db_st* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @get_certificate_status(i8* noundef %serial, %struct.ca_db_st* nocapture noundef readonly %db) unnamed_addr #0 {
entry:
  %row = alloca [6 x i8*], align 16
  %0 = bitcast [6 x i8*]* %row to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %0) #9
  %call = tail call i64 @strlen(i8* noundef %serial) #11
  %arrayidx = getelementptr inbounds [6 x i8*], [6 x i8*]* %row, i64 0, i64 0
  %1 = bitcast [6 x i8*]* %row to <2 x i8*>*
  store <2 x i8*> zeroinitializer, <2 x i8*>* %1, align 16, !tbaa !3
  %arrayidx.2 = getelementptr inbounds [6 x i8*], [6 x i8*]* %row, i64 0, i64 2
  store i8* null, i8** %arrayidx.2, align 16, !tbaa !3
  %arrayidx.3 = getelementptr inbounds [6 x i8*], [6 x i8*]* %row, i64 0, i64 3
  %arrayidx.4 = getelementptr inbounds [6 x i8*], [6 x i8*]* %row, i64 0, i64 4
  %2 = bitcast i8** %arrayidx.4 to <2 x i8*>*
  store <2 x i8*> zeroinitializer, <2 x i8*>* %2, align 16, !tbaa !3
  %add = add i64 %call, 2
  %call1 = tail call i8* @app_malloc(i64 noundef %add, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.326, i64 0, i64 0)) #10
  store i8* %call1, i8** %arrayidx.3, align 8, !tbaa !3
  %rem = and i64 %call, 1
  %tobool.not = icmp eq i64 %rem, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  store i8 48, i8* %call1, align 1, !tbaa !15
  %3 = load i8*, i8** %arrayidx.3, align 8, !tbaa !3
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 1
  %call6 = tail call i8* @memcpy(i8* noundef nonnull %add.ptr, i8* noundef %serial, i64 noundef %call) #10
  %add8 = add i64 %call, 1
  %arrayidx9 = getelementptr inbounds i8, i8* %3, i64 %add8
  br label %if.end

if.else:                                          ; preds = %entry
  %call11 = tail call i8* @memcpy(i8* noundef %call1, i8* noundef %serial, i64 noundef %call) #10
  %arrayidx13 = getelementptr inbounds i8, i8* %call1, i64 %call
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %arrayidx13.sink = phi i8* [ %arrayidx13, %if.else ], [ %arrayidx9, %if.then ]
  store i8 0, i8* %arrayidx13.sink, align 1, !tbaa !15
  %4 = load i8*, i8** %arrayidx.3, align 8, !tbaa !3
  tail call void @make_uppercase(i8* noundef %4) #10
  %db15 = getelementptr inbounds %struct.ca_db_st, %struct.ca_db_st* %db, i64 0, i32 1
  %5 = load %struct.txt_db_st*, %struct.txt_db_st** %db15, align 8, !tbaa !16
  %call16 = call i8** @TXT_DB_get_by_index(%struct.txt_db_st* noundef %5, i32 noundef 3, i8** noundef nonnull %arrayidx) #10
  %cmp17 = icmp eq i8** %call16, null
  br i1 %cmp17, label %if.then18, label %if.else21

if.then18:                                        ; preds = %if.end
  %6 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %7 = load i8*, i8** %arrayidx.3, align 8, !tbaa !3
  %call20 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %6, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.327, i64 0, i64 0), i8* noundef %7) #10
  br label %end

if.else21:                                        ; preds = %if.end
  %8 = load i8*, i8** %call16, align 8, !tbaa !3
  %9 = load i8, i8* %8, align 1, !tbaa !15
  switch i8 %9, label %if.else68 [
    i8 86, label %if.then26
    i8 82, label %if.then38
    i8 69, label %if.then50
    i8 83, label %if.then62
  ]

if.then26:                                        ; preds = %if.else21
  %10 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %11 = load i8*, i8** %arrayidx.3, align 8, !tbaa !3
  %call31 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %10, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.328, i64 0, i64 0), i8* noundef %11, i32 noundef 86) #10
  br label %end

if.then38:                                        ; preds = %if.else21
  %12 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %13 = load i8*, i8** %arrayidx.3, align 8, !tbaa !3
  %call43 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %12, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.329, i64 0, i64 0), i8* noundef %13, i32 noundef 82) #10
  br label %end

if.then50:                                        ; preds = %if.else21
  %14 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %15 = load i8*, i8** %arrayidx.3, align 8, !tbaa !3
  %call55 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %14, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.330, i64 0, i64 0), i8* noundef %15, i32 noundef 69) #10
  br label %end

if.then62:                                        ; preds = %if.else21
  %16 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %17 = load i8*, i8** %arrayidx.3, align 8, !tbaa !3
  %call67 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %16, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.331, i64 0, i64 0), i8* noundef %17, i32 noundef 83) #10
  br label %end

if.else68:                                        ; preds = %if.else21
  %conv = sext i8 %9 to i32
  %18 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %19 = load i8*, i8** %arrayidx.3, align 8, !tbaa !3
  %call73 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %18, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.332, i64 0, i64 0), i8* noundef %19, i32 noundef %conv) #10
  br label %end

end:                                              ; preds = %if.else68, %if.then62, %if.then50, %if.then38, %if.then26, %if.then18
  %ok.0 = phi i32 [ -1, %if.then18 ], [ 1, %if.then26 ], [ 1, %if.then38 ], [ 1, %if.then50 ], [ 1, %if.then62 ], [ -1, %if.else68 ]
  %arrayidx.5 = getelementptr inbounds [6 x i8*], [6 x i8*]* %row, i64 0, i64 5
  %arrayidx.1 = getelementptr inbounds [6 x i8*], [6 x i8*]* %row, i64 0, i64 1
  %20 = load i8*, i8** %arrayidx, align 16, !tbaa !3
  call void @CRYPTO_free(i8* noundef %20, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.196, i64 0, i64 0), i32 noundef 2275) #10
  %21 = load i8*, i8** %arrayidx.1, align 8, !tbaa !3
  call void @CRYPTO_free(i8* noundef %21, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.196, i64 0, i64 0), i32 noundef 2275) #10
  %22 = load i8*, i8** %arrayidx.2, align 16, !tbaa !3
  call void @CRYPTO_free(i8* noundef %22, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.196, i64 0, i64 0), i32 noundef 2275) #10
  %23 = load i8*, i8** %arrayidx.3, align 8, !tbaa !3
  call void @CRYPTO_free(i8* noundef %23, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.196, i64 0, i64 0), i32 noundef 2275) #10
  %24 = load i8*, i8** %arrayidx.4, align 16, !tbaa !3
  call void @CRYPTO_free(i8* noundef %24, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.196, i64 0, i64 0), i32 noundef 2275) #10
  %25 = load i8*, i8** %arrayidx.5, align 8, !tbaa !3
  call void @CRYPTO_free(i8* noundef %25, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.196, i64 0, i64 0), i32 noundef 2275) #10
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %0) #9
  ret i32 %ok.0
}

declare dso_local i32 @app_passwd(i8* noundef, i8* noundef, i8** noundef, i8** noundef) local_unnamed_addr #3

declare dso_local %struct.evp_pkey_st* @load_key(i8* noundef, i32 noundef, i32 noundef, i8* noundef, %struct.engine_st* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local void @cleanse(i8* noundef) local_unnamed_addr #3

declare dso_local %struct.x509_st* @load_cert_pass(i8* noundef, i32 noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local i32 @X509_check_private_key(%struct.x509_st* noundef, %struct.evp_pkey_st* noundef) local_unnamed_addr #3

declare dso_local i32 @set_nameopt(i8* noundef) local_unnamed_addr #3

declare dso_local i32 @set_cert_ex(i64* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local i32 @set_ext_copy(i32* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local i32 @app_isdir(i8* noundef) local_unnamed_addr #3

declare dso_local void @perror(i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @sk_OPENSSL_PSTRING_num(%struct.stack_st_OPENSSL_PSTRING* noundef %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_OPENSSL_PSTRING* %sk to %struct.stack_st*
  %call = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %0) #10
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i8** @sk_OPENSSL_PSTRING_value(%struct.stack_st_OPENSSL_PSTRING* noundef %sk, i32 noundef %idx) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_OPENSSL_PSTRING* %sk to %struct.stack_st*
  %call = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %0, i32 noundef %idx) #10
  %1 = bitcast i8* %call to i8**
  ret i8** %1
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @make_revoked(%struct.x509_revoked_st* noundef %rev, i8* noundef %str) unnamed_addr #0 {
entry:
  %reason_code = alloca i32, align 4
  %hold = alloca %struct.asn1_object_st*, align 8
  %comp_time = alloca %struct.asn1_string_st*, align 8
  %revDate = alloca %struct.asn1_string_st*, align 8
  %0 = bitcast i32* %reason_code to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #9
  store i32 -1, i32* %reason_code, align 4, !tbaa !7
  %1 = bitcast %struct.asn1_object_st** %hold to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #9
  store %struct.asn1_object_st* null, %struct.asn1_object_st** %hold, align 8, !tbaa !3
  %2 = bitcast %struct.asn1_string_st** %comp_time to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #9
  store %struct.asn1_string_st* null, %struct.asn1_string_st** %comp_time, align 8, !tbaa !3
  %3 = bitcast %struct.asn1_string_st** %revDate to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #9
  store %struct.asn1_string_st* null, %struct.asn1_string_st** %revDate, align 8, !tbaa !3
  %call = call i32 @unpack_revinfo(%struct.asn1_string_st** noundef nonnull %revDate, i32* noundef nonnull %reason_code, %struct.asn1_object_st** noundef nonnull %hold, %struct.asn1_string_st** noundef nonnull %comp_time, i8* noundef %str) #12
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %end, label %if.end

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq %struct.x509_revoked_st* %rev, null
  br i1 %tobool.not, label %if.end37, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %4 = load %struct.asn1_string_st*, %struct.asn1_string_st** %revDate, align 8, !tbaa !3
  %call1 = call i32 @X509_REVOKED_set_revocationDate(%struct.x509_revoked_st* noundef nonnull %rev, %struct.asn1_string_st* noundef %4) #10
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %end, label %if.end4

if.end4:                                          ; preds = %land.lhs.true
  %5 = load i32, i32* %reason_code, align 4
  %cmp7.not = icmp eq i32 %5, -1
  br i1 %cmp7.not, label %if.end19, label %if.then8

if.then8:                                         ; preds = %if.end4
  %call9 = call %struct.asn1_string_st* @ASN1_ENUMERATED_new() #10
  %cmp10 = icmp eq %struct.asn1_string_st* %call9, null
  br i1 %cmp10, label %end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then8
  %6 = load i32, i32* %reason_code, align 4, !tbaa !7
  %conv = sext i32 %6 to i64
  %call11 = call i32 @ASN1_ENUMERATED_set(%struct.asn1_string_st* noundef nonnull %call9, i64 noundef %conv) #10
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %end, label %if.end14

if.end14:                                         ; preds = %lor.lhs.false
  %7 = bitcast %struct.asn1_string_st* %call9 to i8*
  %call15 = call i32 @X509_REVOKED_add1_ext_i2d(%struct.x509_revoked_st* noundef nonnull %rev, i32 noundef 141, i8* noundef nonnull %7, i32 noundef 0, i64 noundef 0) #10
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %end, label %if.end19

if.end19:                                         ; preds = %if.end14, %if.end4
  %rtmp.0 = phi %struct.asn1_string_st* [ %call9, %if.end14 ], [ null, %if.end4 ]
  %8 = load %struct.asn1_string_st*, %struct.asn1_string_st** %comp_time, align 8
  %tobool22.not = icmp eq %struct.asn1_string_st* %8, null
  br i1 %tobool22.not, label %if.end28, label %if.then23

if.then23:                                        ; preds = %if.end19
  %9 = bitcast %struct.asn1_string_st* %8 to i8*
  %call24 = call i32 @X509_REVOKED_add1_ext_i2d(%struct.x509_revoked_st* noundef nonnull %rev, i32 noundef 142, i8* noundef nonnull %9, i32 noundef 0, i64 noundef 0) #10
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %end, label %if.end28

if.end28:                                         ; preds = %if.then23, %if.end19
  %10 = load %struct.asn1_object_st*, %struct.asn1_object_st** %hold, align 8
  %tobool31.not = icmp eq %struct.asn1_object_st* %10, null
  br i1 %tobool31.not, label %if.end37, label %if.then32

if.then32:                                        ; preds = %if.end28
  %11 = bitcast %struct.asn1_object_st* %10 to i8*
  %call33 = call i32 @X509_REVOKED_add1_ext_i2d(%struct.x509_revoked_st* noundef nonnull %rev, i32 noundef 430, i8* noundef nonnull %11, i32 noundef 0, i64 noundef 0) #10
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %end, label %if.end37

if.end37:                                         ; preds = %if.end, %if.then32, %if.end28
  %rtmp.065 = phi %struct.asn1_string_st* [ %rtmp.0, %if.then32 ], [ %rtmp.0, %if.end28 ], [ null, %if.end ]
  %12 = load i32, i32* %reason_code, align 4, !tbaa !7
  %cmp38.not = icmp eq i32 %12, -1
  %. = select i1 %cmp38.not, i32 1, i32 2
  br label %end

end:                                              ; preds = %if.end37, %if.then32, %if.then23, %if.end14, %if.then8, %lor.lhs.false, %land.lhs.true, %entry
  %ret.0 = phi i32 [ 0, %entry ], [ 0, %if.then8 ], [ 0, %if.then32 ], [ 0, %if.then23 ], [ 0, %if.end14 ], [ 0, %lor.lhs.false ], [ 0, %land.lhs.true ], [ %., %if.end37 ]
  %rtmp.1 = phi %struct.asn1_string_st* [ null, %entry ], [ null, %if.then8 ], [ %rtmp.0, %if.then32 ], [ %rtmp.0, %if.then23 ], [ %call9, %if.end14 ], [ %call9, %lor.lhs.false ], [ null, %land.lhs.true ], [ %rtmp.065, %if.end37 ]
  call void @CRYPTO_free(i8* noundef null, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.196, i64 0, i64 0), i32 noundef 2492) #10
  %13 = load %struct.asn1_object_st*, %struct.asn1_object_st** %hold, align 8, !tbaa !3
  call void @ASN1_OBJECT_free(%struct.asn1_object_st* noundef %13) #10
  %14 = load %struct.asn1_string_st*, %struct.asn1_string_st** %comp_time, align 8, !tbaa !3
  call void @ASN1_GENERALIZEDTIME_free(%struct.asn1_string_st* noundef %14) #10
  call void @ASN1_ENUMERATED_free(%struct.asn1_string_st* noundef %rtmp.1) #10
  %15 = load %struct.asn1_string_st*, %struct.asn1_string_st** %revDate, align 8, !tbaa !3
  call void @ASN1_TIME_free(%struct.asn1_string_st* noundef %15) #10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #9
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #9
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @check_time_format(i8* noundef %str) unnamed_addr #0 {
entry:
  %call = tail call i32 @ASN1_TIME_set_string(%struct.asn1_string_st* noundef null, i8* noundef %str) #10
  ret i32 %call
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() local_unnamed_addr #7

declare dso_local i64 @TXT_DB_write(%struct.bio_st* noundef, %struct.txt_db_st* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @do_updatedb(%struct.ca_db_st* nocapture noundef readonly %db) unnamed_addr #0 {
entry:
  %call = tail call %struct.asn1_string_st* @ASN1_TIME_new() #10
  %cmp = icmp eq %struct.asn1_string_st* %call, null
  br i1 %cmp, label %cleanup37, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call %struct.asn1_string_st* @X509_gmtime_adj(%struct.asn1_string_st* noundef nonnull %call, i64 noundef 0) #10
  %cmp2 = icmp eq %struct.asn1_string_st* %call1, null
  br i1 %cmp2, label %cleanup37.sink.split, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end
  %db5 = getelementptr inbounds %struct.ca_db_st, %struct.ca_db_st* %db, i64 0, i32 1
  %0 = load %struct.txt_db_st*, %struct.txt_db_st** %db5, align 8, !tbaa !16
  %data69 = getelementptr inbounds %struct.txt_db_st, %struct.txt_db_st* %0, i64 0, i32 1
  %1 = load %struct.stack_st_OPENSSL_PSTRING*, %struct.stack_st_OPENSSL_PSTRING** %data69, align 8, !tbaa !20
  %call670 = tail call fastcc i32 @sk_OPENSSL_PSTRING_num(%struct.stack_st_OPENSSL_PSTRING* noundef %1) #12
  %cmp771 = icmp sgt i32 %call670, 0
  br i1 %cmp771, label %for.body, label %cleanup37.sink.split

for.body:                                         ; preds = %for.cond.preheader, %for.inc
  %cnt.073 = phi i32 [ %cnt.3, %for.inc ], [ 0, %for.cond.preheader ]
  %i.072 = phi i32 [ %inc36, %for.inc ], [ 0, %for.cond.preheader ]
  %2 = load %struct.txt_db_st*, %struct.txt_db_st** %db5, align 8, !tbaa !16
  %data9 = getelementptr inbounds %struct.txt_db_st, %struct.txt_db_st* %2, i64 0, i32 1
  %3 = load %struct.stack_st_OPENSSL_PSTRING*, %struct.stack_st_OPENSSL_PSTRING** %data9, align 8, !tbaa !20
  %call10 = tail call fastcc i8** @sk_OPENSSL_PSTRING_value(%struct.stack_st_OPENSSL_PSTRING* noundef %3, i32 noundef %i.072) #12
  %4 = load i8*, i8** %call10, align 8, !tbaa !3
  %5 = load i8, i8* %4, align 1, !tbaa !15
  %cmp12 = icmp eq i8 %5, 86
  br i1 %cmp12, label %if.then14, label %for.inc

if.then14:                                        ; preds = %for.body
  %call15 = tail call %struct.asn1_string_st* @ASN1_TIME_new() #10
  %cmp16 = icmp eq %struct.asn1_string_st* %call15, null
  br i1 %cmp16, label %cleanup37.sink.split, label %if.end19

if.end19:                                         ; preds = %if.then14
  %arrayidx20 = getelementptr inbounds i8*, i8** %call10, i64 1
  %6 = load i8*, i8** %arrayidx20, align 8, !tbaa !3
  %call21 = tail call i32 @ASN1_TIME_set_string(%struct.asn1_string_st* noundef nonnull %call15, i8* noundef %6) #10
  %tobool.not = icmp eq i32 %call21, 0
  br i1 %tobool.not, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.end19
  tail call void @ASN1_TIME_free(%struct.asn1_string_st* noundef nonnull %call) #10
  br label %cleanup37.sink.split

if.end23:                                         ; preds = %if.end19
  %call24 = tail call i32 @ASN1_TIME_compare(%struct.asn1_string_st* noundef nonnull %call15, %struct.asn1_string_st* noundef nonnull %call) #10
  %cmp25 = icmp slt i32 %call24, 1
  br i1 %cmp25, label %if.then27, label %cleanup

if.then27:                                        ; preds = %if.end23
  %7 = load i8*, i8** %call10, align 8, !tbaa !3
  store i8 69, i8* %7, align 1, !tbaa !15
  %8 = load i8*, i8** %call10, align 8, !tbaa !3
  %arrayidx31 = getelementptr inbounds i8, i8* %8, i64 1
  store i8 0, i8* %arrayidx31, align 1, !tbaa !15
  %inc = add nsw i32 %cnt.073, 1
  %9 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %arrayidx32 = getelementptr inbounds i8*, i8** %call10, i64 3
  %10 = load i8*, i8** %arrayidx32, align 8, !tbaa !3
  %call33 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %9, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.333, i64 0, i64 0), i8* noundef %10) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %if.then27
  %cnt.1 = phi i32 [ %inc, %if.then27 ], [ %cnt.073, %if.end23 ]
  tail call void @ASN1_TIME_free(%struct.asn1_string_st* noundef nonnull %call15) #10
  br label %for.inc

for.inc:                                          ; preds = %cleanup, %for.body
  %cnt.3 = phi i32 [ %cnt.1, %cleanup ], [ %cnt.073, %for.body ]
  %inc36 = add nuw nsw i32 %i.072, 1
  %11 = load %struct.txt_db_st*, %struct.txt_db_st** %db5, align 8, !tbaa !16
  %data = getelementptr inbounds %struct.txt_db_st, %struct.txt_db_st* %11, i64 0, i32 1
  %12 = load %struct.stack_st_OPENSSL_PSTRING*, %struct.stack_st_OPENSSL_PSTRING** %data, align 8, !tbaa !20
  %call6 = tail call fastcc i32 @sk_OPENSSL_PSTRING_num(%struct.stack_st_OPENSSL_PSTRING* noundef %12) #12
  %cmp7 = icmp slt i32 %inc36, %call6
  br i1 %cmp7, label %for.body, label %cleanup37.sink.split, !llvm.loop !30

cleanup37.sink.split:                             ; preds = %for.inc, %if.then14, %for.cond.preheader, %if.end, %if.then22
  %call15.lcssa75.sink = phi %struct.asn1_string_st* [ %call15, %if.then22 ], [ %call, %if.end ], [ %call, %for.cond.preheader ], [ %call, %if.then14 ], [ %call, %for.inc ]
  %retval.3.ph = phi i32 [ -1, %if.then22 ], [ -1, %if.end ], [ 0, %for.cond.preheader ], [ %cnt.3, %for.inc ], [ -1, %if.then14 ]
  tail call void @ASN1_TIME_free(%struct.asn1_string_st* noundef nonnull %call15.lcssa75.sink) #10
  br label %cleanup37

cleanup37:                                        ; preds = %cleanup37.sink.split, %entry
  %retval.3 = phi i32 [ -1, %entry ], [ %retval.3.ph, %cleanup37.sink.split ]
  ret i32 %retval.3
}

declare dso_local i32 @save_index(i8* noundef, i8* noundef, %struct.ca_db_st* noundef) local_unnamed_addr #3

declare dso_local i32 @rotate_index(i8* noundef, i8* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local %struct.conf_st* @app_load_config_internal(i8* noundef, i32 noundef) local_unnamed_addr #3

declare dso_local i32 @EVP_PKEY_get_default_digest_name(%struct.evp_pkey_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

declare dso_local i32 @BIO_puts(%struct.bio_st* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local void @X509V3_set_ctx(%struct.v3_ext_ctx* noundef, %struct.x509_st* noundef, %struct.x509_st* noundef, %struct.X509_req_st* noundef, %struct.X509_crl_st* noundef, i32 noundef) local_unnamed_addr #3

declare dso_local void @X509V3_set_nconf(%struct.v3_ext_ctx* noundef, %struct.conf_st* noundef) local_unnamed_addr #3

declare dso_local i32 @X509V3_EXT_add_nconf(%struct.conf_st* noundef, %struct.v3_ext_ctx* noundef, i8* noundef, %struct.x509_st* noundef) local_unnamed_addr #3

declare dso_local i32 @ASN1_TIME_set_string_X509(%struct.asn1_string_st* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local i32 @NCONF_get_number_e(%struct.conf_st* noundef, i8* noundef, i8* noundef, i64* noundef) local_unnamed_addr #3

declare dso_local %struct.bignum_st* @BN_new() local_unnamed_addr #3

declare dso_local i32 @rand_serial(%struct.bignum_st* noundef, %struct.asn1_string_st* noundef) local_unnamed_addr #3

declare dso_local %struct.bignum_st* @load_serial(i8* noundef, i32 noundef, %struct.asn1_string_st** noundef) local_unnamed_addr #3

declare dso_local i32 @BN_is_zero(%struct.bignum_st* noundef) local_unnamed_addr #3

declare dso_local i8* @BN_bn2hex(%struct.bignum_st* noundef) local_unnamed_addr #3

declare dso_local void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare dso_local %struct.stack_st_CONF_VALUE* @NCONF_get_section(%struct.conf_st* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @certify_spkac(%struct.x509_st** nocapture noundef writeonly %xret, i8* noundef %infile, %struct.evp_pkey_st* noundef %pkey, %struct.x509_st* noundef %x509, i8* noundef %dgst, %struct.stack_st_OPENSSL_STRING* noundef %sigopts, %struct.stack_st_CONF_VALUE* noundef %policy, %struct.ca_db_st* nocapture noundef readonly %db, %struct.bignum_st* noundef %serial, i8* noundef %subj, i64 noundef %chtype, i32 noundef %email_dn, i8* noundef %startdate, i8* noundef %enddate, i64 noundef %days, i8* noundef %ext_sect, %struct.conf_st* noundef %lconf, i32 noundef %verbose, i64 noundef %certopt, i64 noundef %nameopt, i32 noundef %default_op, i32 noundef %ext_copy, i64 noundef %dateopt) unnamed_addr #0 {
entry:
  %errline = alloca i64, align 8
  %0 = bitcast i64* %errline to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #9
  %call = call %struct.lhash_st_CONF_VALUE* @CONF_load(%struct.lhash_st_CONF_VALUE* noundef null, i8* noundef %infile, i64* noundef nonnull %errline) #10
  %cmp = icmp eq %struct.lhash_st_CONF_VALUE* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %2 = load i64, i64* %errline, align 8, !tbaa !9
  %call1 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %1, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.303, i64 0, i64 0), i64 noundef %2, i8* noundef %infile) #10
  br label %end

if.end:                                           ; preds = %entry
  %call2 = call %struct.stack_st_CONF_VALUE* @CONF_get_section(%struct.lhash_st_CONF_VALUE* noundef nonnull %call, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.173, i64 0, i64 0)) #10
  %call3 = call fastcc %struct.stack_st* @ossl_check_const_CONF_VALUE_sk_type(%struct.stack_st_CONF_VALUE* noundef %call2) #12
  %call4 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call3) #10
  %cmp5 = icmp eq i32 %call4, 0
  br i1 %cmp5, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end
  %3 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call7 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %3, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.304, i64 0, i64 0), i8* noundef %infile) #10
  br label %end

if.end8:                                          ; preds = %if.end
  %call9 = call %struct.X509_req_st* @X509_REQ_new() #10
  %cmp10 = icmp eq %struct.X509_req_st* %call9, null
  br i1 %cmp10, label %end, label %if.end12

if.end12:                                         ; preds = %if.end8
  %call13 = call %struct.X509_name_st* @X509_REQ_get_subject_name(%struct.X509_req_st* noundef nonnull %call9) #10
  %call154 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call3) #10
  %cmp16.not5 = icmp sgt i32 %call154, 0
  br i1 %cmp16.not5, label %if.end18.lr.ph, label %if.then64

if.end18.lr.ph:                                   ; preds = %if.end12
  %conv55 = trunc i64 %chtype to i32
  br label %if.end18

if.end18:                                         ; preds = %if.end18.lr.ph, %for.inc60
  %i.07 = phi i32 [ 0, %if.end18.lr.ph ], [ %inc, %for.inc60 ]
  %spki.06 = phi %struct.Netscape_spki_st* [ null, %if.end18.lr.ph ], [ %spki.1, %for.inc60 ]
  %call20 = call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call3, i32 noundef %i.07) #10
  %name = getelementptr inbounds i8, i8* %call20, i64 8
  %4 = bitcast i8* %name to i8**
  %5 = load i8*, i8** %4, align 8, !tbaa !31
  br label %for.cond22

for.cond22:                                       ; preds = %for.inc, %if.end18
  %buf.0 = phi i8* [ %5, %if.end18 ], [ %incdec.ptr37, %for.inc ]
  %6 = load i8, i8* %buf.0, align 1, !tbaa !15
  switch i8 %6, label %for.inc [
    i8 0, label %for.end
    i8 58, label %if.then32
    i8 44, label %if.then32
    i8 46, label %if.then32
  ]

if.then32:                                        ; preds = %for.cond22, %for.cond22, %for.cond22
  %incdec.ptr = getelementptr inbounds i8, i8* %buf.0, i64 1
  %7 = load i8, i8* %incdec.ptr, align 1, !tbaa !15
  %tobool33.not = icmp eq i8 %7, 0
  %spec.select = select i1 %tobool33.not, i8* %5, i8* %incdec.ptr
  br label %for.end

for.inc:                                          ; preds = %for.cond22
  %incdec.ptr37 = getelementptr inbounds i8, i8* %buf.0, i64 1
  br label %for.cond22, !llvm.loop !33

for.end:                                          ; preds = %for.cond22, %if.then32
  %type.0 = phi i8* [ %spec.select, %if.then32 ], [ %5, %for.cond22 ]
  %value = getelementptr inbounds i8, i8* %call20, i64 16
  %8 = bitcast i8* %value to i8**
  %9 = load i8*, i8** %8, align 8, !tbaa !34
  %call38 = call i32 @OBJ_txt2nid(i8* noundef %type.0) #10
  %cmp39 = icmp eq i32 %call38, 0
  br i1 %cmp39, label %if.then41, label %if.end54

if.then41:                                        ; preds = %for.end
  %call42 = call i32 @strcmp(i8* noundef %type.0, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.305, i64 0, i64 0)) #11
  %cmp43 = icmp eq i32 %call42, 0
  br i1 %cmp43, label %if.then45, label %for.inc60

if.then45:                                        ; preds = %if.then41
  %10 = load i8*, i8** %8, align 8, !tbaa !34
  %call47 = call %struct.Netscape_spki_st* @NETSCAPE_SPKI_b64_decode(i8* noundef %10, i32 noundef -1) #10
  %cmp48 = icmp eq %struct.Netscape_spki_st* %call47, null
  br i1 %cmp48, label %if.then50, label %for.inc60

if.then50:                                        ; preds = %if.then45
  %11 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call51 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %11, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.306, i64 0, i64 0)) #10
  br label %end

if.end54:                                         ; preds = %for.end
  %call56 = call i32 @X509_NAME_add_entry_by_NID(%struct.X509_name_st* noundef %call13, i32 noundef %call38, i32 noundef %conv55, i8* noundef %9, i32 noundef -1, i32 noundef -1, i32 noundef 0) #10
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %end, label %for.inc60

for.inc60:                                        ; preds = %if.end54, %if.then41, %if.then45
  %spki.1 = phi %struct.Netscape_spki_st* [ %call47, %if.then45 ], [ %spki.06, %if.then41 ], [ %spki.06, %if.end54 ]
  %inc = add nuw nsw i32 %i.07, 1
  %call15 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call3) #10
  %cmp16.not = icmp sgt i32 %call15, %inc
  br i1 %cmp16.not, label %if.end18, label %for.end61

for.end61:                                        ; preds = %for.inc60
  %cmp62 = icmp eq %struct.Netscape_spki_st* %spki.1, null
  br i1 %cmp62, label %if.then64, label %if.end66

if.then64:                                        ; preds = %if.end12, %for.end61
  %12 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call65 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %12, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.307, i64 0, i64 0), i8* noundef %infile) #10
  br label %end

if.end66:                                         ; preds = %for.end61
  %13 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call67 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %13, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.308, i64 0, i64 0)) #10
  %call68 = call %struct.evp_pkey_st* @NETSCAPE_SPKI_get_pubkey(%struct.Netscape_spki_st* noundef nonnull %spki.1) #10
  %cmp69 = icmp eq %struct.evp_pkey_st* %call68, null
  br i1 %cmp69, label %if.then71, label %if.end73

if.then71:                                        ; preds = %if.end66
  %14 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call72 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %14, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.309, i64 0, i64 0)) #10
  br label %end

if.end73:                                         ; preds = %if.end66
  %call74 = call i32 @NETSCAPE_SPKI_verify(%struct.Netscape_spki_st* noundef nonnull %spki.1, %struct.evp_pkey_st* noundef nonnull %call68) #10
  %cmp75 = icmp slt i32 %call74, 1
  br i1 %cmp75, label %if.then77, label %if.end79

if.then77:                                        ; preds = %if.end73
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef nonnull %call68) #10
  %15 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call78 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %15, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.310, i64 0, i64 0)) #10
  br label %end

if.end79:                                         ; preds = %if.end73
  %16 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call80 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %16, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.238, i64 0, i64 0)) #10
  %call81 = call i32 @X509_REQ_set_pubkey(%struct.X509_req_st* noundef nonnull %call9, %struct.evp_pkey_st* noundef nonnull %call68) #10
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef nonnull %call68) #10
  %call82 = call fastcc i32 @do_body(%struct.x509_st** noundef %xret, %struct.evp_pkey_st* noundef %pkey, %struct.x509_st* noundef %x509, i8* noundef %dgst, %struct.stack_st_OPENSSL_STRING* noundef %sigopts, %struct.stack_st_CONF_VALUE* noundef %policy, %struct.ca_db_st* noundef %db, %struct.bignum_st* noundef %serial, i8* noundef %subj, i64 noundef %chtype, i32 noundef %email_dn, i8* noundef %startdate, i8* noundef %enddate, i64 noundef %days, i32 noundef 1, i32 noundef %verbose, %struct.X509_req_st* noundef nonnull %call9, i8* noundef %ext_sect, %struct.conf_st* noundef %lconf, i64 noundef %certopt, i64 noundef %nameopt, i32 noundef %default_op, i32 noundef %ext_copy, i32 noundef 0, i64 noundef %dateopt) #12
  br label %end

end:                                              ; preds = %if.end54, %if.end8, %if.end79, %if.then77, %if.then71, %if.then64, %if.then50, %if.then6, %if.then
  %spki.2 = phi %struct.Netscape_spki_st* [ null, %if.then ], [ null, %if.then6 ], [ null, %if.end8 ], [ null, %if.then64 ], [ %spki.1, %if.then71 ], [ %spki.1, %if.then77 ], [ %spki.1, %if.end79 ], [ null, %if.then50 ], [ %spki.06, %if.end54 ]
  %req.0 = phi %struct.X509_req_st* [ null, %if.then ], [ null, %if.then6 ], [ null, %if.end8 ], [ %call9, %if.then64 ], [ %call9, %if.then71 ], [ %call9, %if.then77 ], [ %call9, %if.end79 ], [ %call9, %if.then50 ], [ %call9, %if.end54 ]
  %ok.0 = phi i32 [ -1, %if.then ], [ -1, %if.then6 ], [ -1, %if.end8 ], [ -1, %if.then64 ], [ -1, %if.then71 ], [ -1, %if.then77 ], [ %call82, %if.end79 ], [ -1, %if.then50 ], [ -1, %if.end54 ]
  call void @X509_REQ_free(%struct.X509_req_st* noundef %req.0) #10
  call void @CONF_free(%struct.lhash_st_CONF_VALUE* noundef %call) #10
  call void @NETSCAPE_SPKI_free(%struct.Netscape_spki_st* noundef %spki.2) #10
  call void @X509_NAME_ENTRY_free(%struct.X509_name_entry_st* noundef null) #10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #9
  ret i32 %ok.0
}

declare dso_local i64 @get_nameopt() local_unnamed_addr #3

declare dso_local i32 @BN_add_word(%struct.bignum_st* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef readnone %sk) unnamed_addr #5 {
entry:
  %0 = bitcast %struct.stack_st_X509* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @certify_cert(%struct.x509_st** nocapture noundef writeonly %xret, i8* noundef %infile, i32 noundef %certformat, i8* noundef %passin, %struct.evp_pkey_st* noundef %pkey, %struct.x509_st* noundef %x509, i8* noundef %dgst, %struct.stack_st_OPENSSL_STRING* noundef %sigopts, %struct.stack_st_OPENSSL_STRING* noundef %vfyopts, %struct.stack_st_CONF_VALUE* noundef %policy, %struct.ca_db_st* nocapture noundef readonly %db, %struct.bignum_st* noundef %serial, i8* noundef %subj, i64 noundef %chtype, i32 noundef %email_dn, i8* noundef %startdate, i8* noundef %enddate, i64 noundef %days, i32 noundef %batch, i8* noundef %ext_sect, %struct.conf_st* noundef %lconf, i32 noundef %verbose, i64 noundef %certopt, i64 noundef %nameopt, i32 noundef %default_op, i32 noundef %ext_copy, i64 noundef %dateopt) unnamed_addr #0 {
entry:
  %call = tail call %struct.x509_st* @load_cert_pass(i8* noundef %infile, i32 noundef %certformat, i32 noundef 1, i8* noundef %passin, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.299, i64 0, i64 0)) #10
  %cmp = icmp eq %struct.x509_st* %call, null
  br i1 %cmp, label %end, label %if.end

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq i32 %verbose, 0
  br i1 %tobool.not, label %if.end3, label %if.then1

if.then1:                                         ; preds = %if.end
  %0 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call2 = tail call i32 @X509_print(%struct.bio_st* noundef %0, %struct.x509_st* noundef nonnull %call) #10
  br label %if.end3

if.end3:                                          ; preds = %if.then1, %if.end
  %1 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call4 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %1, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.234, i64 0, i64 0)) #10
  %call5 = tail call %struct.evp_pkey_st* @X509_get0_pubkey(%struct.x509_st* noundef nonnull %call) #10
  %cmp6 = icmp eq %struct.evp_pkey_st* %call5, null
  br i1 %cmp6, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end3
  %2 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call8 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %2, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.300, i64 0, i64 0)) #10
  br label %end

if.end9:                                          ; preds = %if.end3
  %call10 = tail call i32 @do_X509_verify(%struct.x509_st* noundef nonnull %call, %struct.evp_pkey_st* noundef nonnull %call5, %struct.stack_st_OPENSSL_STRING* noundef %vfyopts) #10
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.end9
  %3 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call13 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %3, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.301, i64 0, i64 0)) #10
  br label %end

if.end14:                                         ; preds = %if.end9
  %cmp15 = icmp eq i32 %call10, 0
  %4 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  br i1 %cmp15, label %if.then16, label %if.else

if.then16:                                        ; preds = %if.end14
  %call17 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %4, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.302, i64 0, i64 0)) #10
  br label %end

if.else:                                          ; preds = %if.end14
  %call18 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %4, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.238, i64 0, i64 0)) #10
  %call20 = tail call %struct.X509_req_st* @X509_to_X509_REQ(%struct.x509_st* noundef nonnull %call, %struct.evp_pkey_st* noundef null, %struct.evp_md_st* noundef null) #10
  %cmp21 = icmp eq %struct.X509_req_st* %call20, null
  br i1 %cmp21, label %end, label %if.end23

if.end23:                                         ; preds = %if.else
  %call24 = tail call fastcc i32 @do_body(%struct.x509_st** noundef %xret, %struct.evp_pkey_st* noundef %pkey, %struct.x509_st* noundef %x509, i8* noundef %dgst, %struct.stack_st_OPENSSL_STRING* noundef %sigopts, %struct.stack_st_CONF_VALUE* noundef %policy, %struct.ca_db_st* noundef %db, %struct.bignum_st* noundef %serial, i8* noundef %subj, i64 noundef %chtype, i32 noundef %email_dn, i8* noundef %startdate, i8* noundef %enddate, i64 noundef %days, i32 noundef %batch, i32 noundef %verbose, %struct.X509_req_st* noundef nonnull %call20, i8* noundef %ext_sect, %struct.conf_st* noundef %lconf, i64 noundef %certopt, i64 noundef %nameopt, i32 noundef %default_op, i32 noundef %ext_copy, i32 noundef 0, i64 noundef %dateopt) #12
  br label %end

end:                                              ; preds = %if.else, %entry, %if.end23, %if.then16, %if.then12, %if.then7
  %rreq.0 = phi %struct.X509_req_st* [ null, %entry ], [ null, %if.then7 ], [ null, %if.then12 ], [ null, %if.then16 ], [ null, %if.else ], [ %call20, %if.end23 ]
  %ok.0 = phi i32 [ -1, %entry ], [ -1, %if.then7 ], [ 0, %if.then12 ], [ 0, %if.then16 ], [ -1, %if.else ], [ %call24, %if.end23 ]
  tail call void @X509_REQ_free(%struct.X509_req_st* noundef %rreq.0) #10
  tail call void @X509_free(%struct.x509_st* noundef %call) #10
  ret i32 %ok.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @certify(%struct.x509_st** nocapture noundef writeonly %xret, i8* noundef %infile, i32 noundef %informat, %struct.evp_pkey_st* noundef %pkey, %struct.x509_st* noundef %x509, i8* noundef %dgst, %struct.stack_st_OPENSSL_STRING* noundef %sigopts, %struct.stack_st_OPENSSL_STRING* noundef %vfyopts, %struct.stack_st_CONF_VALUE* noundef %policy, %struct.ca_db_st* nocapture noundef readonly %db, %struct.bignum_st* noundef %serial, i8* noundef %subj, i64 noundef %chtype, i32 noundef %email_dn, i8* noundef %startdate, i8* noundef %enddate, i64 noundef %days, i32 noundef %batch, i8* noundef %ext_sect, %struct.conf_st* noundef %lconf, i32 noundef %verbose, i64 noundef %certopt, i64 noundef %nameopt, i32 noundef %default_op, i32 noundef %ext_copy, i32 noundef %selfsign, i64 noundef %dateopt) unnamed_addr #0 {
entry:
  %call = tail call %struct.X509_req_st* @load_csr(i8* noundef %infile, i32 noundef %informat, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.232, i64 0, i64 0)) #10
  %cmp = icmp eq %struct.X509_req_st* %call, null
  br i1 %cmp, label %end, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call %struct.evp_pkey_st* @X509_REQ_get0_pubkey(%struct.X509_req_st* noundef nonnull %call) #10
  %cmp2 = icmp eq %struct.evp_pkey_st* %call1, null
  br i1 %cmp2, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  %0 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call4 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %0, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.233, i64 0, i64 0)) #10
  br label %end

if.end5:                                          ; preds = %if.end
  %tobool.not = icmp eq i32 %verbose, 0
  br i1 %tobool.not, label %if.end8, label %if.then6

if.then6:                                         ; preds = %if.end5
  %1 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call7 = tail call i32 @X509_REQ_print_ex(%struct.bio_st* noundef %1, %struct.X509_req_st* noundef nonnull %call, i64 noundef %nameopt, i64 noundef 0) #10
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end5
  %2 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call9 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %2, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.234, i64 0, i64 0)) #10
  %tobool10.not = icmp eq i32 %selfsign, 0
  br i1 %tobool10.not, label %if.end15, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end8
  %call11 = tail call i32 @X509_REQ_check_private_key(%struct.X509_req_st* noundef nonnull %call, %struct.evp_pkey_st* noundef %pkey) #10
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.then13, label %if.end15

if.then13:                                        ; preds = %land.lhs.true
  %3 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call14 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %3, i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.235, i64 0, i64 0)) #10
  br label %end

if.end15:                                         ; preds = %land.lhs.true, %if.end8
  %call16 = tail call i32 @do_X509_REQ_verify(%struct.X509_req_st* noundef nonnull %call, %struct.evp_pkey_st* noundef nonnull %call1, %struct.stack_st_OPENSSL_STRING* noundef %vfyopts) #10
  %cmp17 = icmp slt i32 %call16, 0
  br i1 %cmp17, label %if.then18, label %if.end20

if.then18:                                        ; preds = %if.end15
  %4 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call19 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %4, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.236, i64 0, i64 0)) #10
  br label %end

if.end20:                                         ; preds = %if.end15
  %cmp21 = icmp eq i32 %call16, 0
  %5 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  br i1 %cmp21, label %if.then22, label %if.end24

if.then22:                                        ; preds = %if.end20
  %call23 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %5, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.237, i64 0, i64 0)) #10
  br label %end

if.end24:                                         ; preds = %if.end20
  %call25 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %5, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.238, i64 0, i64 0)) #10
  %call26 = tail call fastcc i32 @do_body(%struct.x509_st** noundef %xret, %struct.evp_pkey_st* noundef %pkey, %struct.x509_st* noundef %x509, i8* noundef %dgst, %struct.stack_st_OPENSSL_STRING* noundef %sigopts, %struct.stack_st_CONF_VALUE* noundef %policy, %struct.ca_db_st* noundef %db, %struct.bignum_st* noundef %serial, i8* noundef %subj, i64 noundef %chtype, i32 noundef %email_dn, i8* noundef %startdate, i8* noundef %enddate, i64 noundef %days, i32 noundef %batch, i32 noundef %verbose, %struct.X509_req_st* noundef nonnull %call, i8* noundef %ext_sect, %struct.conf_st* noundef %lconf, i64 noundef %certopt, i64 noundef %nameopt, i32 noundef %default_op, i32 noundef %ext_copy, i32 noundef %selfsign, i64 noundef %dateopt) #12
  br label %end

end:                                              ; preds = %entry, %if.end24, %if.then22, %if.then18, %if.then13, %if.then3
  %ok.0 = phi i32 [ -1, %entry ], [ -1, %if.then3 ], [ 0, %if.then18 ], [ 0, %if.then22 ], [ %call26, %if.end24 ], [ 0, %if.then13 ]
  %6 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  tail call void @ERR_print_errors(%struct.bio_st* noundef %6) #10
  tail call void @X509_REQ_free(%struct.X509_req_st* noundef %call) #10
  ret i32 %ok.0
}

declare dso_local void @X509_free(%struct.x509_st* noundef) #3

declare dso_local i32 @OPENSSL_sk_num(%struct.stack_st* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef readnone %sk) unnamed_addr #5 {
entry:
  %0 = bitcast %struct.stack_st_X509* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare dso_local i64 @BIO_ctrl(%struct.bio_st* noundef, i32 noundef, i64 noundef, i8* noundef) local_unnamed_addr #3

declare dso_local i8* @fgets(i8* noundef, i32 noundef, %struct._IO_FILE* noundef) local_unnamed_addr #3

declare dso_local i32 @save_serial(i8* noundef, i8* noundef, %struct.bignum_st* noundef, %struct.asn1_string_st** noundef) local_unnamed_addr #3

declare dso_local i64 @OPENSSL_strlcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

declare dso_local i64 @OPENSSL_strlcat(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

declare dso_local i8* @OPENSSL_sk_value(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #3

declare dso_local %struct.asn1_string_st* @X509_get0_serialNumber(%struct.x509_st* noundef) local_unnamed_addr #3

declare dso_local i8* @ASN1_STRING_get0_data(%struct.asn1_string_st* noundef) local_unnamed_addr #3

declare dso_local i32 @ASN1_STRING_length(%struct.asn1_string_st* noundef) local_unnamed_addr #3

declare dso_local %struct.bio_st* @bio_open_default(i8* noundef, i8 noundef signext, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @write_new_certificate(%struct.bio_st* noundef %bp, %struct.x509_st* noundef %x, i32 noundef %output_der, i32 noundef %notext) unnamed_addr #0 {
entry:
  %tobool.not = icmp eq i32 %output_der, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i32 @i2d_X509_bio(%struct.bio_st* noundef %bp, %struct.x509_st* noundef %x) #10
  br label %return

if.end:                                           ; preds = %entry
  %tobool1.not = icmp eq i32 %notext, 0
  br i1 %tobool1.not, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  %call3 = tail call i32 @X509_print(%struct.bio_st* noundef %bp, %struct.x509_st* noundef %x) #10
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end
  %call5 = tail call i32 @PEM_write_bio_X509(%struct.bio_st* noundef %bp, %struct.x509_st* noundef %x) #10
  br label %return

return:                                           ; preds = %if.end4, %if.then
  ret void
}

declare dso_local void @BIO_free_all(%struct.bio_st* noundef) local_unnamed_addr #3

declare dso_local i32 @rotate_serial(i8* noundef, i8* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local %struct.X509_crl_st* @X509_CRL_new_ex(%struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local %struct.ossl_lib_ctx_st* @app_get0_libctx() local_unnamed_addr #3

declare dso_local i8* @app_get0_propq() local_unnamed_addr #3

declare dso_local i32 @X509_CRL_set_issuer_name(%struct.X509_crl_st* noundef, %struct.X509_name_st* noundef) local_unnamed_addr #3

declare dso_local %struct.X509_name_st* @X509_get_subject_name(%struct.x509_st* noundef) local_unnamed_addr #3

declare dso_local i32 @set_crl_lastupdate(%struct.X509_crl_st* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local i32 @set_crl_nextupdate(%struct.X509_crl_st* noundef, i8* noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare dso_local %struct.x509_revoked_st* @X509_REVOKED_new() local_unnamed_addr #3

declare dso_local i32 @BN_hex2bn(%struct.bignum_st** noundef, i8* noundef) local_unnamed_addr #3

declare dso_local %struct.asn1_string_st* @BN_to_ASN1_INTEGER(%struct.bignum_st* noundef, %struct.asn1_string_st* noundef) local_unnamed_addr #3

declare dso_local void @BN_free(%struct.bignum_st* noundef) local_unnamed_addr #3

declare dso_local i32 @X509_REVOKED_set_serialNumber(%struct.x509_revoked_st* noundef, %struct.asn1_string_st* noundef) local_unnamed_addr #3

declare dso_local void @ASN1_INTEGER_free(%struct.asn1_string_st* noundef) local_unnamed_addr #3

declare dso_local i32 @X509_CRL_add0_revoked(%struct.X509_crl_st* noundef, %struct.x509_revoked_st* noundef) local_unnamed_addr #3

declare dso_local i32 @X509_CRL_sort(%struct.X509_crl_st* noundef) local_unnamed_addr #3

declare dso_local i32 @X509V3_EXT_CRL_add_nconf(%struct.conf_st* noundef, %struct.v3_ext_ctx* noundef, i8* noundef, %struct.X509_crl_st* noundef) local_unnamed_addr #3

declare dso_local i32 @X509_CRL_add1_ext_i2d(%struct.X509_crl_st* noundef, i32 noundef, i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

declare dso_local i32 @X509_CRL_set_version(%struct.X509_crl_st* noundef, i64 noundef) local_unnamed_addr #3

declare dso_local i32 @do_X509_CRL_sign(%struct.X509_crl_st* noundef, %struct.evp_pkey_st* noundef, i8* noundef, %struct.stack_st_OPENSSL_STRING* noundef) local_unnamed_addr #3

declare dso_local i32 @PEM_write_bio_X509_CRL(%struct.bio_st* noundef, %struct.X509_crl_st* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @do_revoke(%struct.x509_st* noundef %x509, %struct.ca_db_st* nocapture noundef readonly %db, i32 noundef %rev_type, i8* noundef %value) unnamed_addr #0 {
entry:
  %row = alloca [6 x i8*], align 16
  %0 = bitcast [6 x i8*]* %row to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %0) #9
  %arrayidx = getelementptr inbounds [6 x i8*], [6 x i8*]* %row, i64 0, i64 0
  %arrayidx.1 = getelementptr inbounds [6 x i8*], [6 x i8*]* %row, i64 0, i64 1
  %1 = bitcast [6 x i8*]* %row to <2 x i8*>*
  store <2 x i8*> zeroinitializer, <2 x i8*>* %1, align 16, !tbaa !3
  %arrayidx.2 = getelementptr inbounds [6 x i8*], [6 x i8*]* %row, i64 0, i64 2
  %arrayidx.3 = getelementptr inbounds [6 x i8*], [6 x i8*]* %row, i64 0, i64 3
  %2 = bitcast i8** %arrayidx.2 to <2 x i8*>*
  store <2 x i8*> zeroinitializer, <2 x i8*>* %2, align 16, !tbaa !3
  %arrayidx.4 = getelementptr inbounds [6 x i8*], [6 x i8*]* %row, i64 0, i64 4
  store i8* null, i8** %arrayidx.4, align 16, !tbaa !3
  %arrayidx.5 = getelementptr inbounds [6 x i8*], [6 x i8*]* %row, i64 0, i64 5
  %call = tail call %struct.X509_name_st* @X509_get_subject_name(%struct.x509_st* noundef %x509) #10
  %call1 = tail call i8* @X509_NAME_oneline(%struct.X509_name_st* noundef %call, i8* noundef null, i32 noundef 0) #10
  store i8* %call1, i8** %arrayidx.5, align 8, !tbaa !3
  %call3 = tail call %struct.asn1_string_st* @X509_get0_serialNumber(%struct.x509_st* noundef %x509) #10
  %call4 = tail call %struct.bignum_st* @ASN1_INTEGER_to_BN(%struct.asn1_string_st* noundef %call3, %struct.bignum_st* noundef null) #10
  %tobool.not = icmp eq %struct.bignum_st* %call4, null
  br i1 %tobool.not, label %end, label %if.end

if.end:                                           ; preds = %entry
  %call5 = tail call i32 @BN_is_zero(%struct.bignum_st* noundef nonnull %call4) #10
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %if.end
  %call8 = tail call i8* @CRYPTO_strdup(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.261, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.196, i64 0, i64 0), i32 noundef 2123) #10
  br label %if.end12

if.else:                                          ; preds = %if.end
  %call10 = tail call i8* @BN_bn2hex(%struct.bignum_st* noundef nonnull %call4) #10
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.then7
  %3 = phi i8* [ %call10, %if.else ], [ %call8, %if.then7 ]
  store i8* %3, i8** %arrayidx.3, align 8
  tail call void @BN_free(%struct.bignum_st* noundef nonnull %call4) #10
  %cmp14.not = icmp eq i8* %call1, null
  br i1 %cmp14.not, label %if.then31, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end12
  %4 = load i8, i8* %call1, align 1, !tbaa !15
  %cmp17 = icmp eq i8 %4, 0
  br i1 %cmp17, label %if.then19, label %if.end24

if.then19:                                        ; preds = %land.lhs.true
  tail call void @CRYPTO_free(i8* noundef nonnull %call1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.196, i64 0, i64 0), i32 noundef 2129) #10
  %call22 = tail call i8* @CRYPTO_strdup(i8* noundef %3, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.196, i64 0, i64 0), i32 noundef 2130) #10
  store i8* %call22, i8** %arrayidx.5, align 8, !tbaa !3
  br label %if.end24

if.end24:                                         ; preds = %if.then19, %land.lhs.true
  %5 = phi i8* [ %call22, %if.then19 ], [ %call1, %land.lhs.true ]
  %cmp26 = icmp eq i8* %5, null
  %cmp29 = icmp eq i8* %3, null
  %or.cond = select i1 %cmp26, i1 true, i1 %cmp29
  br i1 %or.cond, label %if.then31, label %if.end33

if.then31:                                        ; preds = %if.end12, %if.end24
  %6 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call32 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %6, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.198, i64 0, i64 0)) #10
  br label %end

if.end33:                                         ; preds = %if.end24
  %db34 = getelementptr inbounds %struct.ca_db_st, %struct.ca_db_st* %db, i64 0, i32 1
  %7 = load %struct.txt_db_st*, %struct.txt_db_st** %db34, align 8, !tbaa !16
  %call35 = call i8** @TXT_DB_get_by_index(%struct.txt_db_st* noundef %7, i32 noundef 3, i8** noundef nonnull %arrayidx) #10
  %cmp36 = icmp eq i8** %call35, null
  br i1 %cmp36, label %if.then38, label %if.else105

if.then38:                                        ; preds = %if.end33
  %8 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %9 = load i8*, i8** %arrayidx.3, align 8, !tbaa !3
  %10 = load i8*, i8** %arrayidx.5, align 8, !tbaa !3
  %call41 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %8, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.311, i64 0, i64 0), i8* noundef %9, i8* noundef %10) #10
  %call42 = call i8* @CRYPTO_strdup(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.283, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.196, i64 0, i64 0), i32 noundef 2147) #10
  store i8* %call42, i8** %arrayidx, align 16, !tbaa !3
  %call44 = call %struct.asn1_string_st* @X509_get0_notAfter(%struct.x509_st* noundef %x509) #10
  %length = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %call44, i64 0, i32 0
  %11 = load i32, i32* %length, align 8, !tbaa !35
  %add = add nsw i32 %11, 1
  %conv45 = sext i32 %add to i64
  %call46 = call i8* @app_malloc(i64 noundef %conv45, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.312, i64 0, i64 0)) #10
  store i8* %call46, i8** %arrayidx.1, align 8, !tbaa !3
  %data = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %call44, i64 0, i32 2
  %12 = load i8*, i8** %data, align 8, !tbaa !37
  %13 = load i32, i32* %length, align 8, !tbaa !35
  %conv50 = sext i32 %13 to i64
  %call51 = call i8* @memcpy(i8* noundef %call46, i8* noundef %12, i64 noundef %conv50) #10
  %14 = load i8*, i8** %arrayidx.1, align 8, !tbaa !3
  %15 = load i32, i32* %length, align 8, !tbaa !35
  %idxprom54 = sext i32 %15 to i64
  %arrayidx55 = getelementptr inbounds i8, i8* %14, i64 %idxprom54
  store i8 0, i8* %arrayidx55, align 1, !tbaa !15
  store i8* null, i8** %arrayidx.2, align 16, !tbaa !3
  %call57 = call i8* @CRYPTO_strdup(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.285, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.196, i64 0, i64 0), i32 noundef 2153) #10
  store i8* %call57, i8** %arrayidx.4, align 16, !tbaa !3
  %16 = load i8*, i8** %arrayidx, align 16, !tbaa !3
  %cmp60 = icmp eq i8* %16, null
  %cmp64 = icmp eq i8* %call57, null
  %or.cond153 = select i1 %cmp60, i1 true, i1 %cmp64
  br i1 %or.cond153, label %if.then66, label %if.end68

if.then66:                                        ; preds = %if.then38
  %17 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call67 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %17, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.198, i64 0, i64 0)) #10
  br label %end

if.end68:                                         ; preds = %if.then38
  %call69 = call i8* @app_malloc(i64 noundef 56, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.313, i64 0, i64 0)) #10
  %18 = bitcast i8* %call69 to i8**
  %19 = load i8*, i8** %arrayidx, align 16, !tbaa !3
  store i8* %19, i8** %18, align 8, !tbaa !3
  %20 = load i8*, i8** %arrayidx.1, align 8, !tbaa !3
  %arrayidx77.1 = getelementptr inbounds i8, i8* %call69, i64 8
  %21 = bitcast i8* %arrayidx77.1 to i8**
  store i8* %20, i8** %21, align 8, !tbaa !3
  %22 = load i8*, i8** %arrayidx.2, align 16, !tbaa !3
  %arrayidx77.2 = getelementptr inbounds i8, i8* %call69, i64 16
  %23 = bitcast i8* %arrayidx77.2 to i8**
  store i8* %22, i8** %23, align 8, !tbaa !3
  %24 = load i8*, i8** %arrayidx.3, align 8, !tbaa !3
  %arrayidx77.3 = getelementptr inbounds i8, i8* %call69, i64 24
  %25 = bitcast i8* %arrayidx77.3 to i8**
  store i8* %24, i8** %25, align 8, !tbaa !3
  %26 = load i8*, i8** %arrayidx.4, align 16, !tbaa !3
  %arrayidx77.4 = getelementptr inbounds i8, i8* %call69, i64 32
  %27 = bitcast i8* %arrayidx77.4 to i8**
  store i8* %26, i8** %27, align 8, !tbaa !3
  %28 = load i8*, i8** %arrayidx.5, align 8, !tbaa !3
  %arrayidx77.5 = getelementptr inbounds i8, i8* %call69, i64 40
  %29 = bitcast i8* %arrayidx77.5 to i8**
  store i8* %28, i8** %29, align 8, !tbaa !3
  %arrayidx81 = getelementptr inbounds i8, i8* %call69, i64 48
  %30 = bitcast i8* %arrayidx81 to i8**
  store i8* null, i8** %30, align 8, !tbaa !3
  %31 = load %struct.txt_db_st*, %struct.txt_db_st** %db34, align 8, !tbaa !16
  %call83 = call i32 @TXT_DB_insert(%struct.txt_db_st* noundef %31, i8** noundef nonnull %18) #10
  %tobool84.not = icmp eq i32 %call83, 0
  br i1 %tobool84.not, label %if.then85, label %for.body93.preheader

for.body93.preheader:                             ; preds = %if.end68
  %32 = bitcast [6 x i8*]* %row to <2 x i8*>*
  store <2 x i8*> zeroinitializer, <2 x i8*>* %32, align 16, !tbaa !3
  %33 = bitcast i8** %arrayidx.2 to <2 x i8*>*
  store <2 x i8*> zeroinitializer, <2 x i8*>* %33, align 16, !tbaa !3
  %34 = bitcast i8** %arrayidx.4 to <2 x i8*>*
  store <2 x i8*> zeroinitializer, <2 x i8*>* %34, align 16, !tbaa !3
  %cmp99 = icmp eq i32 %rev_type, -1
  br i1 %cmp99, label %end, label %if.else102

if.then85:                                        ; preds = %if.end68
  %35 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call86 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %35, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.287, i64 0, i64 0)) #10
  %36 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %37 = load %struct.txt_db_st*, %struct.txt_db_st** %db34, align 8, !tbaa !16
  %error = getelementptr inbounds %struct.txt_db_st, %struct.txt_db_st* %37, i64 0, i32 4
  %38 = load i64, i64* %error, align 8, !tbaa !38
  %call88 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %36, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.288, i64 0, i64 0), i64 noundef %38) #10
  call void @CRYPTO_free(i8* noundef nonnull %call69, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.196, i64 0, i64 0), i32 noundef 2168) #10
  br label %end

if.else102:                                       ; preds = %for.body93.preheader
  %call103 = call fastcc i32 @do_revoke(%struct.x509_st* noundef %x509, %struct.ca_db_st* noundef nonnull %db, i32 noundef %rev_type, i8* noundef %value) #12
  br label %end

if.else105:                                       ; preds = %if.end33
  %call107 = call i32 @index_name_cmp(i8** noundef nonnull %arrayidx, i8** noundef nonnull %call35) #10
  %tobool108.not = icmp eq i32 %call107, 0
  br i1 %tobool108.not, label %if.else112, label %if.then109

if.then109:                                       ; preds = %if.else105
  %39 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %40 = load i8*, i8** %arrayidx.5, align 8, !tbaa !3
  %call111 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %39, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.314, i64 0, i64 0), i8* noundef %40) #10
  br label %end

if.else112:                                       ; preds = %if.else105
  %cmp113 = icmp eq i32 %rev_type, -1
  br i1 %cmp113, label %if.then115, label %if.else118

if.then115:                                       ; preds = %if.else112
  %41 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %42 = load i8*, i8** %arrayidx.3, align 8, !tbaa !3
  %call117 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %41, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.315, i64 0, i64 0), i8* noundef %42) #10
  br label %end

if.else118:                                       ; preds = %if.else112
  %43 = load i8*, i8** %call35, align 8, !tbaa !3
  %44 = load i8, i8* %43, align 1, !tbaa !15
  %cmp122 = icmp eq i8 %44, 82
  %45 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  br i1 %cmp122, label %if.then124, label %if.else127

if.then124:                                       ; preds = %if.else118
  %46 = load i8*, i8** %arrayidx.3, align 8, !tbaa !3
  %call126 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %45, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.316, i64 0, i64 0), i8* noundef %46) #10
  br label %end

if.else127:                                       ; preds = %if.else118
  %arrayidx128 = getelementptr inbounds i8*, i8** %call35, i64 3
  %47 = load i8*, i8** %arrayidx128, align 8, !tbaa !3
  %call129 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %45, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.317, i64 0, i64 0), i8* noundef %47) #10
  %call130 = call fastcc i8* @make_revocation_str(i32 noundef %rev_type, i8* noundef %value) #12
  %tobool131.not = icmp eq i8* %call130, null
  br i1 %tobool131.not, label %if.then132, label %if.end134

if.then132:                                       ; preds = %if.else127
  %48 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call133 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %48, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.318, i64 0, i64 0)) #10
  br label %end

if.end134:                                        ; preds = %if.else127
  %49 = load i8*, i8** %call35, align 8, !tbaa !3
  store i8 82, i8* %49, align 1, !tbaa !15
  %50 = load i8*, i8** %call35, align 8, !tbaa !3
  %arrayidx138 = getelementptr inbounds i8, i8* %50, i64 1
  store i8 0, i8* %arrayidx138, align 1, !tbaa !15
  %arrayidx139 = getelementptr inbounds i8*, i8** %call35, i64 2
  store i8* %call130, i8** %arrayidx139, align 8, !tbaa !3
  br label %end

end:                                              ; preds = %for.body93.preheader, %if.else102, %entry, %if.end134, %if.then132, %if.then124, %if.then115, %if.then109, %if.then85, %if.then66, %if.then31
  %ok.0 = phi i32 [ -1, %if.then31 ], [ -1, %if.then66 ], [ %call103, %if.else102 ], [ -1, %if.then85 ], [ -1, %if.then109 ], [ -1, %if.then115 ], [ -1, %if.then124 ], [ 1, %if.end134 ], [ -1, %if.then132 ], [ -1, %entry ], [ 1, %for.body93.preheader ]
  %51 = load i8*, i8** %arrayidx, align 16, !tbaa !3
  call void @CRYPTO_free(i8* noundef %51, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.196, i64 0, i64 0), i32 noundef 2209) #10
  %52 = load i8*, i8** %arrayidx.1, align 8, !tbaa !3
  call void @CRYPTO_free(i8* noundef %52, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.196, i64 0, i64 0), i32 noundef 2209) #10
  %53 = load i8*, i8** %arrayidx.2, align 16, !tbaa !3
  call void @CRYPTO_free(i8* noundef %53, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.196, i64 0, i64 0), i32 noundef 2209) #10
  %54 = load i8*, i8** %arrayidx.3, align 8, !tbaa !3
  call void @CRYPTO_free(i8* noundef %54, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.196, i64 0, i64 0), i32 noundef 2209) #10
  %55 = load i8*, i8** %arrayidx.4, align 16, !tbaa !3
  call void @CRYPTO_free(i8* noundef %55, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.196, i64 0, i64 0), i32 noundef 2209) #10
  %56 = load i8*, i8** %arrayidx.5, align 8, !tbaa !3
  call void @CRYPTO_free(i8* noundef %56, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.196, i64 0, i64 0), i32 noundef 2209) #10
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %0) #9
  ret i32 %ok.0
}

declare dso_local void @ERR_print_errors(%struct.bio_st* noundef) local_unnamed_addr #3

declare dso_local void @OPENSSL_sk_pop_free(%struct.stack_st* noundef, void (i8*)* noundef) local_unnamed_addr #3

declare dso_local void @free_index(%struct.ca_db_st* noundef) local_unnamed_addr #3

declare dso_local void @OPENSSL_sk_free(%struct.stack_st* noundef) local_unnamed_addr #3

declare dso_local void @EVP_PKEY_free(%struct.evp_pkey_st* noundef) local_unnamed_addr #3

declare dso_local void @X509_CRL_free(%struct.X509_crl_st* noundef) local_unnamed_addr #3

declare dso_local void @NCONF_free(%struct.conf_st* noundef) local_unnamed_addr #3

declare dso_local void @release_engine(%struct.engine_st* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @unpack_revinfo(%struct.asn1_string_st** noundef writeonly %prevtm, i32* noundef writeonly %preason, %struct.asn1_object_st** noundef writeonly %phold, %struct.asn1_string_st** noundef writeonly %pinvtm, i8* noundef %str) local_unnamed_addr #0 {
entry:
  %call = tail call i8* @CRYPTO_strdup(i8* noundef %str, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.196, i64 0, i64 0), i32 noundef 2553) #10
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call1 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %0, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.224, i64 0, i64 0)) #10
  br label %end

if.end:                                           ; preds = %entry
  %call2 = tail call i8* @strchr(i8* noundef nonnull %call, i32 noundef 44) #11
  %tobool3.not = icmp eq i8* %call2, null
  br i1 %tobool3.not, label %if.end9, label %if.then4

if.then4:                                         ; preds = %if.end
  store i8 0, i8* %call2, align 1, !tbaa !15
  %incdec.ptr = getelementptr inbounds i8, i8* %call2, i64 1
  %call5 = tail call i8* @strchr(i8* noundef nonnull %incdec.ptr, i32 noundef 44) #11
  %tobool6.not = icmp eq i8* %call5, null
  br i1 %tobool6.not, label %if.end9, label %if.then7

if.then7:                                         ; preds = %if.then4
  store i8 0, i8* %call5, align 1, !tbaa !15
  %add.ptr = getelementptr inbounds i8, i8* %call5, i64 1
  br label %if.end9

if.end9:                                          ; preds = %if.then4, %if.then7, %if.end
  %reason_str.0 = phi i8* [ %incdec.ptr, %if.then7 ], [ %incdec.ptr, %if.then4 ], [ null, %if.end ]
  %arg_str.0 = phi i8* [ %add.ptr, %if.then7 ], [ null, %if.then4 ], [ null, %if.end ]
  %tobool10.not = icmp eq %struct.asn1_string_st** %prevtm, null
  br i1 %tobool10.not, label %if.end21, label %if.then11

if.then11:                                        ; preds = %if.end9
  %call12 = tail call %struct.asn1_string_st* @ASN1_UTCTIME_new() #10
  store %struct.asn1_string_st* %call12, %struct.asn1_string_st** %prevtm, align 8, !tbaa !3
  %cmp = icmp eq %struct.asn1_string_st* %call12, null
  br i1 %cmp, label %if.then13, label %if.end15

if.then13:                                        ; preds = %if.then11
  %1 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call14 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %1, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.224, i64 0, i64 0)) #10
  br label %end

if.end15:                                         ; preds = %if.then11
  %call16 = tail call i32 @ASN1_UTCTIME_set_string(%struct.asn1_string_st* noundef nonnull %call12, i8* noundef nonnull %call) #10
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.then18, label %if.end21

if.then18:                                        ; preds = %if.end15
  %2 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call19 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %2, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.225, i64 0, i64 0), i8* noundef nonnull %call) #10
  br label %end

if.end21:                                         ; preds = %if.end15, %if.end9
  %tobool22.not = icmp eq i8* %reason_str.0, null
  br i1 %tobool22.not, label %if.end84, label %for.body.preheader

for.body.preheader:                               ; preds = %if.end21
  %call26 = tail call i32 @strcasecmp(i8* noundef nonnull %reason_str.0, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.334, i64 0, i64 0)) #11
  %cmp27 = icmp eq i32 %call26, 0
  br i1 %cmp27, label %if.end84, label %for.inc

for.inc:                                          ; preds = %for.body.preheader
  %call26.1 = tail call i32 @strcasecmp(i8* noundef nonnull %reason_str.0, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.335, i64 0, i64 0)) #11
  %cmp27.1 = icmp eq i32 %call26.1, 0
  br i1 %cmp27.1, label %if.end84, label %for.inc.1

for.inc.1:                                        ; preds = %for.inc
  %call26.2 = tail call i32 @strcasecmp(i8* noundef nonnull %reason_str.0, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.336, i64 0, i64 0)) #11
  %cmp27.2 = icmp eq i32 %call26.2, 0
  br i1 %cmp27.2, label %if.end84, label %for.inc.2

for.inc.2:                                        ; preds = %for.inc.1
  %call26.3 = tail call i32 @strcasecmp(i8* noundef nonnull %reason_str.0, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.337, i64 0, i64 0)) #11
  %cmp27.3 = icmp eq i32 %call26.3, 0
  br i1 %cmp27.3, label %if.end84, label %for.inc.3

for.inc.3:                                        ; preds = %for.inc.2
  %call26.4 = tail call i32 @strcasecmp(i8* noundef nonnull %reason_str.0, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.338, i64 0, i64 0)) #11
  %cmp27.4 = icmp eq i32 %call26.4, 0
  br i1 %cmp27.4, label %if.end84, label %for.inc.4

for.inc.4:                                        ; preds = %for.inc.3
  %call26.5 = tail call i32 @strcasecmp(i8* noundef nonnull %reason_str.0, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.339, i64 0, i64 0)) #11
  %cmp27.5 = icmp eq i32 %call26.5, 0
  br i1 %cmp27.5, label %if.end84, label %for.inc.5

for.inc.5:                                        ; preds = %for.inc.4
  %call26.6 = tail call i32 @strcasecmp(i8* noundef nonnull %reason_str.0, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.340, i64 0, i64 0)) #11
  %cmp27.6 = icmp eq i32 %call26.6, 0
  br i1 %cmp27.6, label %if.end84, label %for.inc.6

for.inc.6:                                        ; preds = %for.inc.5
  %call26.7 = tail call i32 @strcasecmp(i8* noundef nonnull %reason_str.0, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.341, i64 0, i64 0)) #11
  %cmp27.7 = icmp eq i32 %call26.7, 0
  br i1 %cmp27.7, label %if.end84, label %for.inc.7

for.inc.7:                                        ; preds = %for.inc.6
  %call26.8 = tail call i32 @strcasecmp(i8* noundef nonnull %reason_str.0, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.321, i64 0, i64 0)) #11
  %cmp27.8 = icmp eq i32 %call26.8, 0
  br i1 %cmp27.8, label %if.then41, label %for.inc.8

for.inc.8:                                        ; preds = %for.inc.7
  %call26.9 = tail call i32 @strcasecmp(i8* noundef nonnull %reason_str.0, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.323, i64 0, i64 0)) #11
  %cmp27.9 = icmp eq i32 %call26.9, 0
  br i1 %cmp27.9, label %if.then60, label %for.inc.9

for.inc.9:                                        ; preds = %for.inc.8
  %call26.10 = tail call i32 @strcasecmp(i8* noundef nonnull %reason_str.0, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.324, i64 0, i64 0)) #11
  %cmp27.10 = icmp eq i32 %call26.10, 0
  br i1 %cmp27.10, label %if.then60, label %for.inc.10

for.inc.10:                                       ; preds = %for.inc.9
  %3 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call34 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %3, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.226, i64 0, i64 0), i8* noundef nonnull %reason_str.0) #10
  br label %end

if.then41:                                        ; preds = %for.inc.7
  %tobool42.not = icmp eq i8* %arg_str.0, null
  br i1 %tobool42.not, label %if.then43, label %if.end45

if.then43:                                        ; preds = %if.then41
  %4 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call44 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %4, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.227, i64 0, i64 0)) #10
  br label %end

if.end45:                                         ; preds = %if.then41
  %call46 = tail call %struct.asn1_object_st* @OBJ_txt2obj(i8* noundef nonnull %arg_str.0, i32 noundef 0) #10
  %tobool47.not = icmp eq %struct.asn1_object_st* %call46, null
  br i1 %tobool47.not, label %if.then48, label %if.end50

if.then48:                                        ; preds = %if.end45
  %5 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call49 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %5, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.228, i64 0, i64 0), i8* noundef nonnull %arg_str.0) #10
  br label %end

if.end50:                                         ; preds = %if.end45
  %tobool51.not = icmp eq %struct.asn1_object_st** %phold, null
  br i1 %tobool51.not, label %if.else53, label %if.then52

if.then52:                                        ; preds = %if.end50
  store %struct.asn1_object_st* %call46, %struct.asn1_object_st** %phold, align 8, !tbaa !3
  br label %if.end84

if.else53:                                        ; preds = %if.end50
  tail call void @ASN1_OBJECT_free(%struct.asn1_object_st* noundef nonnull %call46) #10
  br label %if.end84

if.then60:                                        ; preds = %for.inc.8, %for.inc.9
  %cmp56.ph = phi i32 [ 1, %for.inc.8 ], [ 2, %for.inc.9 ]
  %tobool61.not = icmp eq i8* %arg_str.0, null
  br i1 %tobool61.not, label %if.then62, label %if.end64

if.then62:                                        ; preds = %if.then60
  %6 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call63 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %6, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.229, i64 0, i64 0)) #10
  br label %end

if.end64:                                         ; preds = %if.then60
  %call65 = tail call %struct.asn1_string_st* @ASN1_GENERALIZEDTIME_new() #10
  %cmp66 = icmp eq %struct.asn1_string_st* %call65, null
  br i1 %cmp66, label %if.then68, label %if.end70

if.then68:                                        ; preds = %if.end64
  %7 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call69 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %7, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.224, i64 0, i64 0)) #10
  br label %end

if.end70:                                         ; preds = %if.end64
  %call71 = tail call i32 @ASN1_GENERALIZEDTIME_set_string(%struct.asn1_string_st* noundef nonnull %call65, i8* noundef nonnull %arg_str.0) #10
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %if.then73, label %if.end84

if.then73:                                        ; preds = %if.end70
  %8 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call74 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %8, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.230, i64 0, i64 0), i8* noundef nonnull %arg_str.0) #10
  br label %end

if.end84:                                         ; preds = %for.inc.5, %for.inc.4, %for.inc.3, %for.inc.2, %for.inc.1, %for.inc, %for.body.preheader, %if.end70, %for.inc.6, %if.then52, %if.else53, %if.end21
  %reason_code.1 = phi i32 [ 6, %if.then52 ], [ 6, %if.else53 ], [ -1, %if.end21 ], [ 8, %for.inc.6 ], [ %cmp56.ph, %if.end70 ], [ 6, %for.inc.5 ], [ 5, %for.inc.4 ], [ 4, %for.inc.3 ], [ 3, %for.inc.2 ], [ 2, %for.inc.1 ], [ 1, %for.inc ], [ 0, %for.body.preheader ]
  %comp_time.0 = phi %struct.asn1_string_st* [ null, %if.then52 ], [ null, %if.else53 ], [ null, %if.end21 ], [ null, %for.inc.6 ], [ %call65, %if.end70 ], [ null, %for.inc.5 ], [ null, %for.inc.4 ], [ null, %for.inc.3 ], [ null, %for.inc.2 ], [ null, %for.inc.1 ], [ null, %for.inc ], [ null, %for.body.preheader ]
  %tobool85.not = icmp eq i32* %preason, null
  br i1 %tobool85.not, label %if.end87, label %if.then86

if.then86:                                        ; preds = %if.end84
  store i32 %reason_code.1, i32* %preason, align 4, !tbaa !7
  br label %if.end87

if.end87:                                         ; preds = %if.then86, %if.end84
  %tobool88.not = icmp eq %struct.asn1_string_st** %pinvtm, null
  br i1 %tobool88.not, label %end, label %if.then89

if.then89:                                        ; preds = %if.end87
  store %struct.asn1_string_st* %comp_time.0, %struct.asn1_string_st** %pinvtm, align 8, !tbaa !3
  br label %end

end:                                              ; preds = %if.end87, %if.then89, %if.then73, %if.then68, %if.then62, %if.then48, %if.then43, %for.inc.10, %if.then18, %if.then13, %if.then
  %ret.0 = phi i32 [ 0, %if.then13 ], [ 0, %for.inc.10 ], [ 0, %if.then48 ], [ 0, %if.then43 ], [ 0, %if.then68 ], [ 0, %if.then73 ], [ 0, %if.then62 ], [ 0, %if.then18 ], [ 0, %if.then ], [ 1, %if.then89 ], [ 1, %if.end87 ]
  %comp_time.2 = phi %struct.asn1_string_st* [ null, %if.then13 ], [ null, %for.inc.10 ], [ null, %if.then48 ], [ null, %if.then43 ], [ null, %if.then68 ], [ %call65, %if.then73 ], [ null, %if.then62 ], [ null, %if.then18 ], [ null, %if.then ], [ null, %if.then89 ], [ %comp_time.0, %if.end87 ]
  tail call void @CRYPTO_free(i8* noundef %call, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.196, i64 0, i64 0), i32 noundef 2647) #10
  tail call void @ASN1_GENERALIZEDTIME_free(%struct.asn1_string_st* noundef %comp_time.2) #10
  ret i32 %ret.0
}

declare dso_local i8* @CRYPTO_strdup(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i8* @strchr(i8* noundef, i32 noundef) local_unnamed_addr #6

declare dso_local %struct.asn1_string_st* @ASN1_UTCTIME_new() local_unnamed_addr #3

declare dso_local i32 @ASN1_UTCTIME_set_string(%struct.asn1_string_st* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @strcasecmp(i8* noundef, i8* noundef) local_unnamed_addr #6

declare dso_local %struct.asn1_object_st* @OBJ_txt2obj(i8* noundef, i32 noundef) local_unnamed_addr #3

declare dso_local void @ASN1_OBJECT_free(%struct.asn1_object_st* noundef) local_unnamed_addr #3

declare dso_local %struct.asn1_string_st* @ASN1_GENERALIZEDTIME_new() local_unnamed_addr #3

declare dso_local i32 @ASN1_GENERALIZEDTIME_set_string(%struct.asn1_string_st* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local void @ASN1_GENERALIZEDTIME_free(%struct.asn1_string_st* noundef) local_unnamed_addr #3

declare dso_local %struct.X509_req_st* @load_csr(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #3

declare dso_local %struct.evp_pkey_st* @X509_REQ_get0_pubkey(%struct.X509_req_st* noundef) local_unnamed_addr #3

declare dso_local i32 @X509_REQ_print_ex(%struct.bio_st* noundef, %struct.X509_req_st* noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare dso_local i32 @X509_REQ_check_private_key(%struct.X509_req_st* noundef, %struct.evp_pkey_st* noundef) local_unnamed_addr #3

declare dso_local i32 @do_X509_REQ_verify(%struct.X509_req_st* noundef, %struct.evp_pkey_st* noundef, %struct.stack_st_OPENSSL_STRING* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @do_body(%struct.x509_st** nocapture noundef writeonly %xret, %struct.evp_pkey_st* noundef %pkey, %struct.x509_st* noundef %x509, i8* noundef %dgst, %struct.stack_st_OPENSSL_STRING* noundef %sigopts, %struct.stack_st_CONF_VALUE* noundef %policy, %struct.ca_db_st* nocapture noundef readonly %db, %struct.bignum_st* noundef %serial, i8* noundef %subj, i64 noundef %chtype, i32 noundef %email_dn, i8* noundef %startdate, i8* noundef %enddate, i64 noundef %days, i32 noundef %batch, i32 noundef %verbose, %struct.X509_req_st* noundef %req, i8* noundef %ext_sect, %struct.conf_st* noundef %lconf, i64 noundef %certopt, i64 noundef %nameopt, i32 noundef %default_op, i32 noundef %ext_copy, i32 noundef %selfsign, i64 noundef %dateopt) unnamed_addr #0 {
entry:
  %row = alloca [6 x i8*], align 16
  %buf = alloca [25 x i8], align 16
  %ext_ctx = alloca %struct.v3_ext_ctx, align 8
  %tdays = alloca i32, align 4
  %0 = bitcast [6 x i8*]* %row to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %0) #9
  %1 = getelementptr inbounds [25 x i8], [25 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 25, i8* nonnull %1) #9
  %2 = bitcast %struct.v3_ext_ctx* %ext_ctx to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %2) #9
  %arrayidx = getelementptr inbounds [6 x i8*], [6 x i8*]* %row, i64 0, i64 0
  %arrayidx.1 = getelementptr inbounds [6 x i8*], [6 x i8*]* %row, i64 0, i64 1
  %3 = bitcast [6 x i8*]* %row to <2 x i8*>*
  store <2 x i8*> zeroinitializer, <2 x i8*>* %3, align 16, !tbaa !3
  %arrayidx.2 = getelementptr inbounds [6 x i8*], [6 x i8*]* %row, i64 0, i64 2
  %arrayidx.3 = getelementptr inbounds [6 x i8*], [6 x i8*]* %row, i64 0, i64 3
  %4 = bitcast i8** %arrayidx.2 to <2 x i8*>*
  store <2 x i8*> zeroinitializer, <2 x i8*>* %4, align 16, !tbaa !3
  %arrayidx.4 = getelementptr inbounds [6 x i8*], [6 x i8*]* %row, i64 0, i64 4
  %arrayidx.5 = getelementptr inbounds [6 x i8*], [6 x i8*]* %row, i64 0, i64 5
  %5 = bitcast i8** %arrayidx.4 to <2 x i8*>*
  store <2 x i8*> zeroinitializer, <2 x i8*>* %5, align 16, !tbaa !3
  %tobool.not = icmp eq i8* %subj, null
  br i1 %tobool.not, label %if.end4, label %if.then

if.then:                                          ; preds = %entry
  %conv = trunc i64 %chtype to i32
  %call = tail call %struct.X509_name_st* @parse_name(i8* noundef nonnull %subj, i32 noundef %conv, i32 noundef 1, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.239, i64 0, i64 0)) #10
  %tobool1.not = icmp eq %struct.X509_name_st* %call, null
  br i1 %tobool1.not, label %end, label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then
  %call3 = tail call i32 @X509_REQ_set_subject_name(%struct.X509_req_st* noundef %req, %struct.X509_name_st* noundef nonnull %call) #10
  tail call void @X509_NAME_free(%struct.X509_name_st* noundef nonnull %call) #10
  br label %if.end4

if.end4:                                          ; preds = %cleanup.thread, %entry
  %tobool5.not = icmp eq i32 %default_op, 0
  br i1 %tobool5.not, label %if.end8, label %if.then6

if.then6:                                         ; preds = %if.end4
  %6 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call7 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %6, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.240, i64 0, i64 0)) #10
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end4
  %call9 = tail call %struct.X509_name_st* @X509_REQ_get_subject_name(%struct.X509_req_st* noundef %req) #10
  %call1169 = tail call i32 @X509_NAME_entry_count(%struct.X509_name_st* noundef %call9) #10
  %cmp1270 = icmp sgt i32 %call1169, 0
  br i1 %cmp1270, label %for.body14.lr.ph, label %for.end90

for.body14.lr.ph:                                 ; preds = %if.end8
  %tobool47 = icmp ne i32 %email_dn, 0
  br label %for.body14

for.body14:                                       ; preds = %for.body14.lr.ph, %for.inc88
  %i.171 = phi i32 [ 0, %for.body14.lr.ph ], [ %inc89, %for.inc88 ]
  %call15 = tail call %struct.X509_name_entry_st* @X509_NAME_get_entry(%struct.X509_name_st* noundef %call9, i32 noundef %i.171) #10
  %call16 = tail call %struct.asn1_string_st* @X509_NAME_ENTRY_get_data(%struct.X509_name_entry_st* noundef %call15) #10
  %call17 = tail call %struct.asn1_object_st* @X509_NAME_ENTRY_get_object(%struct.X509_name_entry_st* noundef %call15) #10
  %call18 = tail call i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef %call17) #10
  %.b868 = load i1, i1* @msie_hack, align 4
  br i1 %.b868, label %if.then20, label %if.end43

if.then20:                                        ; preds = %for.body14
  %type = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %call16, i64 0, i32 1
  %7 = load i32, i32* %type, align 4, !tbaa !39
  %cmp21 = icmp eq i32 %7, 28
  br i1 %cmp21, label %if.then23, label %if.end25

if.then23:                                        ; preds = %if.then20
  %call24 = tail call i32 @ASN1_UNIVERSALSTRING_to_string(%struct.asn1_string_st* noundef nonnull %call16) #10
  %.pre = load i32, i32* %type, align 4, !tbaa !39
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %if.then20
  %8 = phi i32 [ %.pre, %if.then23 ], [ %7, %if.then20 ]
  %cmp27 = icmp eq i32 %8, 22
  %cmp29 = icmp ne i32 %call18, 48
  %or.cond = select i1 %cmp27, i1 %cmp29, i1 false
  br i1 %or.cond, label %if.end33.thread, label %if.end33

if.end33.thread:                                  ; preds = %if.end25
  store i32 20, i32* %type, align 4, !tbaa !39
  br label %if.then66

if.end33:                                         ; preds = %if.end25
  %cmp34 = icmp eq i32 %call18, 48
  br i1 %cmp34, label %land.lhs.true36, label %if.end58

land.lhs.true36:                                  ; preds = %if.end33
  %cmp38 = icmp eq i32 %8, 19
  br i1 %cmp38, label %if.then40, label %if.end43

if.then40:                                        ; preds = %land.lhs.true36
  store i32 22, i32* %type, align 4, !tbaa !39
  br label %if.end43

if.end43:                                         ; preds = %land.lhs.true36, %if.then40, %for.body14
  %cmp44 = icmp ne i32 %call18, 48
  %or.cond650 = or i1 %tobool47, %cmp44
  br i1 %or.cond650, label %if.end49, label %for.inc88

if.end49:                                         ; preds = %if.end43
  %cmp50 = icmp eq i32 %call18, 48
  %type53 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %call16, i64 0, i32 1
  %9 = load i32, i32* %type53, align 4, !tbaa !39
  br i1 %cmp50, label %land.lhs.true52, label %if.end58

land.lhs.true52:                                  ; preds = %if.end49
  %cmp54.not = icmp eq i32 %9, 22
  br i1 %cmp54.not, label %if.then66, label %if.then56

if.then56:                                        ; preds = %land.lhs.true52
  %10 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call57 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %10, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.241, i64 0, i64 0)) #10
  br label %end

if.end58:                                         ; preds = %if.end49, %if.end33
  %11 = phi i32 [ %8, %if.end33 ], [ %9, %if.end49 ]
  switch i32 %11, label %if.then66 [
    i32 30, label %if.end83
    i32 12, label %if.end83
  ]

if.then66:                                        ; preds = %land.lhs.true52, %if.end33.thread, %if.end58
  %type59106 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %call16, i64 0, i32 1
  %data = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %call16, i64 0, i32 2
  %12 = load i8*, i8** %data, align 8, !tbaa !37
  %length = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %call16, i64 0, i32 0
  %13 = load i32, i32* %length, align 8, !tbaa !35
  %call67 = tail call i32 @ASN1_PRINTABLE_type(i8* noundef %12, i32 noundef %13) #10
  switch i32 %call67, label %if.end83 [
    i32 20, label %land.lhs.true70
    i32 22, label %land.lhs.true76
  ]

land.lhs.true70:                                  ; preds = %if.then66
  %14 = load i32, i32* %type59106, align 4, !tbaa !39
  %cmp72.not = icmp eq i32 %14, 20
  br i1 %cmp72.not, label %if.end83, label %if.then80

land.lhs.true76:                                  ; preds = %if.then66
  %15 = load i32, i32* %type59106, align 4, !tbaa !39
  %cmp78 = icmp eq i32 %15, 19
  br i1 %cmp78, label %if.then80, label %if.end83

if.then80:                                        ; preds = %land.lhs.true76, %land.lhs.true70
  %16 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call81 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %16, i8* noundef getelementptr inbounds ([69 x i8], [69 x i8]* @.str.242, i64 0, i64 0)) #10
  br label %end

if.end83:                                         ; preds = %land.lhs.true70, %if.then66, %if.end58, %if.end58, %land.lhs.true76
  br i1 %tobool5.not, label %for.inc88, label %if.then85

if.then85:                                        ; preds = %if.end83
  tail call fastcc void @old_entry_print(%struct.asn1_object_st* noundef %call17, %struct.asn1_string_st* noundef nonnull %call16) #12
  br label %for.inc88

for.inc88:                                        ; preds = %if.end83, %if.then85, %if.end43
  %inc89 = add nuw nsw i32 %i.171, 1
  %call11 = tail call i32 @X509_NAME_entry_count(%struct.X509_name_st* noundef %call9) #10
  %cmp12 = icmp slt i32 %inc89, %call11
  br i1 %cmp12, label %for.body14, label %for.end90, !llvm.loop !40

for.end90:                                        ; preds = %for.inc88, %if.end8
  %call91 = tail call %struct.X509_name_st* @X509_NAME_new() #10
  %cmp92 = icmp eq %struct.X509_name_st* %call91, null
  br i1 %cmp92, label %if.then94, label %if.end96

if.then94:                                        ; preds = %for.end90
  %17 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call95 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %17, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.198, i64 0, i64 0)) #10
  br label %end

if.end96:                                         ; preds = %for.end90
  %tobool97.not = icmp eq i32 %selfsign, 0
  br i1 %tobool97.not, label %if.else, label %if.end102

if.else:                                          ; preds = %if.end96
  %call100 = tail call %struct.X509_name_st* @X509_get_subject_name(%struct.x509_st* noundef %x509) #10
  br label %if.end102

if.end102:                                        ; preds = %if.end96, %if.else
  %call100.sink = phi %struct.X509_name_st* [ %call100, %if.else ], [ %call9, %if.end96 ]
  %call101 = tail call %struct.X509_name_st* @X509_NAME_dup(%struct.X509_name_st* noundef %call100.sink) #10
  %cmp103 = icmp eq %struct.X509_name_st* %call101, null
  br i1 %cmp103, label %end, label %for.cond107.preheader

for.cond107.preheader:                            ; preds = %if.end102
  %call108 = tail call fastcc %struct.stack_st* @ossl_check_const_CONF_VALUE_sk_type(%struct.stack_st_CONF_VALUE* noundef %policy) #12
  %call10976 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call108) #10
  %cmp11077 = icmp sgt i32 %call10976, 0
  br i1 %cmp11077, label %for.body112, label %for.end235

for.body112:                                      ; preds = %for.cond107.preheader, %for.inc233
  %i.280 = phi i32 [ %inc234, %for.inc233 ], [ 0, %for.cond107.preheader ]
  %str.079 = phi %struct.asn1_string_st* [ %str.6.ph, %for.inc233 ], [ null, %for.cond107.preheader ]
  %str2.078 = phi %struct.asn1_string_st* [ %str2.6.ph, %for.inc233 ], [ null, %for.cond107.preheader ]
  %call114 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call108, i32 noundef %i.280) #10
  %name115 = getelementptr inbounds i8, i8* %call114, i64 8
  %18 = bitcast i8* %name115 to i8**
  %19 = load i8*, i8** %18, align 8, !tbaa !31
  %call116 = tail call i32 @OBJ_txt2nid(i8* noundef %19) #10
  %cmp117 = icmp eq i32 %call116, 0
  br i1 %cmp117, label %if.then119, label %if.end122

if.then119:                                       ; preds = %for.body112
  %20 = bitcast i8* %name115 to i8**
  %21 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %22 = load i8*, i8** %20, align 8, !tbaa !31
  %call121 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %21, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.243, i64 0, i64 0), i8* noundef %22) #10
  br label %end

if.end122:                                        ; preds = %for.body112
  %call123 = tail call %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef %call116) #10
  %value = getelementptr inbounds i8, i8* %call114, i64 16
  %23 = bitcast i8* %value to i8**
  br label %for.cond124

for.cond124:                                      ; preds = %if.end224, %if.end122
  %str2.1 = phi %struct.asn1_string_st* [ %str2.078, %if.end122 ], [ %str2.519, %if.end224 ]
  %str.1 = phi %struct.asn1_string_st* [ %str.079, %if.end122 ], [ %str.521, %if.end224 ]
  %last.0 = phi i32 [ -1, %if.end122 ], [ %call125, %if.end224 ]
  %call125 = tail call i32 @X509_NAME_get_index_by_OBJ(%struct.X509_name_st* noundef %call9, %struct.asn1_object_st* noundef %call123, i32 noundef %last.0) #10
  %cmp126 = icmp slt i32 %call125, 0
  br i1 %cmp126, label %if.then128, label %if.else133

if.then128:                                       ; preds = %for.cond124
  %cmp129.not = icmp eq i32 %last.0, -1
  br i1 %cmp129.not, label %if.end135, label %for.inc233

if.else133:                                       ; preds = %for.cond124
  %call134 = tail call %struct.X509_name_entry_st* @X509_NAME_get_entry(%struct.X509_name_st* noundef %call9, i32 noundef %call125) #10
  br label %if.end135

if.end135:                                        ; preds = %if.then128, %if.else133
  %tne.0 = phi %struct.X509_name_entry_st* [ %call134, %if.else133 ], [ null, %if.then128 ]
  %24 = load i8*, i8** %23, align 8, !tbaa !34
  %call136 = tail call i32 @strcmp(i8* noundef %24, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.244, i64 0, i64 0)) #11
  %cmp137 = icmp eq i32 %call136, 0
  br i1 %cmp137, label %if.end215, label %if.else144

if.else144:                                       ; preds = %if.end135
  %call146 = tail call i32 @strcmp(i8* noundef %24, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.245, i64 0, i64 0)) #11
  %cmp147 = icmp eq i32 %call146, 0
  br i1 %cmp147, label %if.then149, label %if.else157

if.then149:                                       ; preds = %if.else144
  %cmp150 = icmp eq %struct.X509_name_entry_st* %tne.0, null
  br i1 %cmp150, label %if.then152, label %if.then218

if.then152:                                       ; preds = %if.then149
  %25 = bitcast i8* %name115 to i8**
  %26 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %27 = load i8*, i8** %25, align 8, !tbaa !31
  %call154 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %26, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.246, i64 0, i64 0), i8* noundef %27) #10
  br label %end

if.else157:                                       ; preds = %if.else144
  %call159 = tail call i32 @strcmp(i8* noundef %24, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.247, i64 0, i64 0)) #11
  %cmp160 = icmp eq i32 %call159, 0
  br i1 %cmp160, label %if.then162, label %if.else210

if.then162:                                       ; preds = %if.else157
  %cmp163 = icmp eq %struct.X509_name_entry_st* %tne.0, null
  br i1 %cmp163, label %if.then165, label %again2

if.then165:                                       ; preds = %if.then162
  %28 = bitcast i8* %name115 to i8**
  %29 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %30 = load i8*, i8** %28, align 8, !tbaa !31
  %call167 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %29, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.248, i64 0, i64 0), i8* noundef %30) #10
  br label %end

again2:                                           ; preds = %if.then162, %if.then181
  %str2.2 = phi %struct.asn1_string_st* [ %call184, %if.then181 ], [ %str2.1, %if.then162 ]
  %str.2 = phi %struct.asn1_string_st* [ %call183, %if.then181 ], [ %str.1, %if.then162 ]
  %push.0 = phi %struct.X509_name_entry_st* [ %call182, %if.then181 ], [ null, %if.then162 ]
  %last2.0 = phi i32 [ %call169, %if.then181 ], [ -1, %if.then162 ]
  %call169 = tail call i32 @X509_NAME_get_index_by_OBJ(%struct.X509_name_st* noundef nonnull %call101, %struct.asn1_object_st* noundef %call123, i32 noundef %last2.0) #10
  %cmp170 = icmp slt i32 %call169, 0
  %cmp173 = icmp eq i32 %last2.0, -1
  %or.cond651 = and i1 %cmp173, %cmp170
  br i1 %or.cond651, label %if.then175, label %if.end178

if.then175:                                       ; preds = %again2
  %31 = bitcast i8* %name115 to i8**
  %32 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %33 = load i8*, i8** %31, align 8, !tbaa !31
  %call177 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %32, i8* noundef getelementptr inbounds ([82 x i8], [82 x i8]* @.str.249, i64 0, i64 0), i8* noundef %33) #10
  br label %end

if.end178:                                        ; preds = %again2
  %cmp179 = icmp sgt i32 %call169, -1
  br i1 %cmp179, label %if.then181, label %if.end190

if.then181:                                       ; preds = %if.end178
  %call182 = tail call %struct.X509_name_entry_st* @X509_NAME_get_entry(%struct.X509_name_st* noundef nonnull %call101, i32 noundef %call169) #10
  %call183 = tail call %struct.asn1_string_st* @X509_NAME_ENTRY_get_data(%struct.X509_name_entry_st* noundef nonnull %tne.0) #10
  %call184 = tail call %struct.asn1_string_st* @X509_NAME_ENTRY_get_data(%struct.X509_name_entry_st* noundef %call182) #10
  %call185 = tail call i32 @ASN1_STRING_cmp(%struct.asn1_string_st* noundef %call183, %struct.asn1_string_st* noundef %call184) #10
  %cmp186.not = icmp eq i32 %call185, 0
  br i1 %cmp186.not, label %if.end190, label %again2

if.end190:                                        ; preds = %if.then181, %if.end178
  %str2.3 = phi %struct.asn1_string_st* [ %call184, %if.then181 ], [ %str2.2, %if.end178 ]
  %str.3 = phi %struct.asn1_string_st* [ %call183, %if.then181 ], [ %str.2, %if.end178 ]
  %push.1 = phi %struct.X509_name_entry_st* [ %call182, %if.then181 ], [ %push.0, %if.end178 ]
  br i1 %cmp170, label %if.then193, label %if.end215

if.then193:                                       ; preds = %if.end190
  %34 = bitcast i8* %name115 to i8**
  %35 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %36 = load i8*, i8** %34, align 8, !tbaa !31
  %cmp195 = icmp eq %struct.asn1_string_st* %str2.3, null
  br i1 %cmp195, label %cond.end, label %cond.false

cond.false:                                       ; preds = %if.then193
  %data197 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %str2.3, i64 0, i32 2
  %37 = load i8*, i8** %data197, align 8, !tbaa !37
  br label %cond.end

cond.end:                                         ; preds = %if.then193, %cond.false
  %cond = phi i8* [ %37, %cond.false ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.251, i64 0, i64 0), %if.then193 ]
  %cmp198 = icmp eq %struct.asn1_string_st* %str.3, null
  br i1 %cmp198, label %cond.end203, label %cond.false201

cond.false201:                                    ; preds = %cond.end
  %data202 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %str.3, i64 0, i32 2
  %38 = load i8*, i8** %data202, align 8, !tbaa !37
  br label %cond.end203

cond.end203:                                      ; preds = %cond.end, %cond.false201
  %cond204 = phi i8* [ %38, %cond.false201 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.251, i64 0, i64 0), %cond.end ]
  %call205 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %35, i8* noundef getelementptr inbounds ([76 x i8], [76 x i8]* @.str.250, i64 0, i64 0), i8* noundef %36, i8* noundef %cond, i8* noundef %cond204) #10
  br label %end

if.else210:                                       ; preds = %if.else157
  %39 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call212 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %39, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.252, i64 0, i64 0), i8* noundef %24) #10
  br label %end

if.end215:                                        ; preds = %if.end135, %if.end190
  %str2.5 = phi %struct.asn1_string_st* [ %str2.3, %if.end190 ], [ %str2.1, %if.end135 ]
  %str.5 = phi %struct.asn1_string_st* [ %str.3, %if.end190 ], [ %str.1, %if.end135 ]
  %j.1 = phi i32 [ %call169, %if.end190 ], [ %call125, %if.end135 ]
  %push.3 = phi %struct.X509_name_entry_st* [ %push.1, %if.end190 ], [ %tne.0, %if.end135 ]
  %cmp216.not = icmp eq %struct.X509_name_entry_st* %push.3, null
  br i1 %cmp216.not, label %if.end224, label %if.then218

if.then218:                                       ; preds = %if.then149, %if.end215
  %push.324 = phi %struct.X509_name_entry_st* [ %push.3, %if.end215 ], [ %tne.0, %if.then149 ]
  %j.122 = phi i32 [ %j.1, %if.end215 ], [ %call125, %if.then149 ]
  %str.520 = phi %struct.asn1_string_st* [ %str.5, %if.end215 ], [ %str.1, %if.then149 ]
  %str2.518 = phi %struct.asn1_string_st* [ %str2.5, %if.end215 ], [ %str2.1, %if.then149 ]
  %call219 = tail call i32 @X509_NAME_add_entry(%struct.X509_name_st* noundef nonnull %call91, %struct.X509_name_entry_st* noundef nonnull %push.324, i32 noundef -1, i32 noundef 0) #10
  %tobool220.not = icmp eq i32 %call219, 0
  br i1 %tobool220.not, label %if.then221, label %if.end224

if.then221:                                       ; preds = %if.then218
  %40 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call222 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %40, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.198, i64 0, i64 0)) #10
  br label %end

if.end224:                                        ; preds = %if.then218, %if.end215
  %j.123 = phi i32 [ %j.122, %if.then218 ], [ %j.1, %if.end215 ]
  %str.521 = phi %struct.asn1_string_st* [ %str.520, %if.then218 ], [ %str.5, %if.end215 ]
  %str2.519 = phi %struct.asn1_string_st* [ %str2.518, %if.then218 ], [ %str2.5, %if.end215 ]
  %cmp225 = icmp slt i32 %j.123, 0
  br i1 %cmp225, label %for.inc233, label %for.cond124

for.inc233:                                       ; preds = %if.end224, %if.then128
  %str2.6.ph = phi %struct.asn1_string_st* [ %str2.1, %if.then128 ], [ %str2.519, %if.end224 ]
  %str.6.ph = phi %struct.asn1_string_st* [ %str.1, %if.then128 ], [ %str.521, %if.end224 ]
  %inc234 = add nuw nsw i32 %i.280, 1
  %call109 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call108) #10
  %cmp110 = icmp slt i32 %inc234, %call109
  br i1 %cmp110, label %for.body112, label %for.end235, !llvm.loop !41

for.end235:                                       ; preds = %for.inc233, %for.cond107.preheader
  %.b = load i1, i1* @preserve, align 4
  br i1 %.b, label %if.then237, label %if.end243

if.then237:                                       ; preds = %for.end235
  tail call void @X509_NAME_free(%struct.X509_name_st* noundef nonnull %call91) #10
  %call238 = tail call %struct.X509_name_st* @X509_NAME_dup(%struct.X509_name_st* noundef %call9) #10
  %cmp239 = icmp eq %struct.X509_name_st* %call238, null
  br i1 %cmp239, label %end, label %if.end243

if.end243:                                        ; preds = %if.then237, %for.end235
  %subject.0 = phi %struct.X509_name_st* [ %call238, %if.then237 ], [ %call91, %for.end235 ]
  %tobool244.not = icmp eq i32 %verbose, 0
  br i1 %tobool244.not, label %if.end247, label %if.then245

if.then245:                                       ; preds = %if.end243
  %41 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call246 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %41, i8* noundef getelementptr inbounds ([67 x i8], [67 x i8]* @.str.253, i64 0, i64 0)) #10
  br label %if.end247

if.end247:                                        ; preds = %if.then245, %if.end243
  %call248 = tail call %struct.ossl_lib_ctx_st* @app_get0_libctx() #10
  %call249 = tail call i8* @app_get0_propq() #10
  %call250 = tail call %struct.x509_st* @X509_new_ex(%struct.ossl_lib_ctx_st* noundef %call248, i8* noundef %call249) #10
  %cmp251 = icmp eq %struct.x509_st* %call250, null
  br i1 %cmp251, label %end, label %if.end254

if.end254:                                        ; preds = %if.end247
  %call255 = tail call %struct.asn1_string_st* @X509_get_serialNumber(%struct.x509_st* noundef nonnull %call250) #10
  %call256 = tail call %struct.asn1_string_st* @BN_to_ASN1_INTEGER(%struct.bignum_st* noundef %serial, %struct.asn1_string_st* noundef %call255) #10
  %cmp257 = icmp eq %struct.asn1_string_st* %call256, null
  br i1 %cmp257, label %end, label %if.end260

if.end260:                                        ; preds = %if.end254
  br i1 %tobool97.not, label %if.else267, label %if.then262

if.then262:                                       ; preds = %if.end260
  %call263 = tail call i32 @X509_set_issuer_name(%struct.x509_st* noundef nonnull %call250, %struct.X509_name_st* noundef %subject.0) #10
  %tobool264.not = icmp eq i32 %call263, 0
  br i1 %tobool264.not, label %end, label %if.end273

if.else267:                                       ; preds = %if.end260
  %call268 = tail call %struct.X509_name_st* @X509_get_subject_name(%struct.x509_st* noundef %x509) #10
  %call269 = tail call i32 @X509_set_issuer_name(%struct.x509_st* noundef nonnull %call250, %struct.X509_name_st* noundef %call268) #10
  %tobool270.not = icmp eq i32 %call269, 0
  br i1 %tobool270.not, label %end, label %if.end273

if.end273:                                        ; preds = %if.else267, %if.then262
  %conv274 = trunc i64 %days to i32
  %call275 = tail call i32 @set_cert_times(%struct.x509_st* noundef nonnull %call250, i8* noundef %startdate, i8* noundef %enddate, i32 noundef %conv274) #10
  %tobool276.not = icmp eq i32 %call275, 0
  br i1 %tobool276.not, label %end, label %if.end278

if.end278:                                        ; preds = %if.end273
  %cmp279.not = icmp eq i8* %enddate, null
  br i1 %cmp279.not, label %if.end291, label %if.then281

if.then281:                                       ; preds = %if.end278
  %42 = bitcast i32* %tdays to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %42) #9
  %call282 = tail call %struct.asn1_string_st* @X509_get0_notAfter(%struct.x509_st* noundef nonnull %call250) #10
  %call283 = call i32 @ASN1_TIME_diff(i32* noundef nonnull %tdays, i32* noundef null, %struct.asn1_string_st* noundef null, %struct.asn1_string_st* noundef %call282) #10
  %tobool284.not = icmp eq i32 %call283, 0
  %43 = load i32, i32* %tdays, align 4
  %conv287 = sext i32 %43 to i64
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %42) #9
  br i1 %tobool284.not, label %end, label %if.end291

if.end291:                                        ; preds = %if.then281, %if.end278
  %days.addr.1 = phi i64 [ %conv287, %if.then281 ], [ %days, %if.end278 ]
  %call292 = call i32 @X509_set_subject_name(%struct.x509_st* noundef nonnull %call250, %struct.X509_name_st* noundef %subject.0) #10
  %tobool293.not = icmp eq i32 %call292, 0
  br i1 %tobool293.not, label %end, label %if.end295

if.end295:                                        ; preds = %if.end291
  %call296 = call %struct.evp_pkey_st* @X509_REQ_get0_pubkey(%struct.X509_req_st* noundef %req) #10
  %call297 = call i32 @X509_set_pubkey(%struct.x509_st* noundef nonnull %call250, %struct.evp_pkey_st* noundef %call296) #10
  %tobool298.not = icmp eq i32 %call297, 0
  br i1 %tobool298.not, label %end, label %if.end300

if.end300:                                        ; preds = %if.end295
  %cond305 = select i1 %tobool97.not, %struct.x509_st* %x509, %struct.x509_st* %call250
  call void @X509V3_set_ctx(%struct.v3_ext_ctx* noundef nonnull %ext_ctx, %struct.x509_st* noundef %cond305, %struct.x509_st* noundef nonnull %call250, %struct.X509_req_st* noundef %req, %struct.X509_crl_st* noundef null, i32 noundef 2) #10
  %tobool306.not = icmp eq i8* %ext_sect, null
  br i1 %tobool306.not, label %if.end338, label %if.then307

if.then307:                                       ; preds = %if.end300
  %44 = load %struct.conf_st*, %struct.conf_st** @extfile_conf, align 8, !tbaa !3
  %cmp308.not = icmp eq %struct.conf_st* %44, null
  br i1 %cmp308.not, label %if.then326, label %if.then310

if.then310:                                       ; preds = %if.then307
  br i1 %tobool244.not, label %if.end314, label %if.then312

if.then312:                                       ; preds = %if.then310
  %45 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call313 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %45, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.254, i64 0, i64 0)) #10
  %.pre104 = load %struct.conf_st*, %struct.conf_st** @extfile_conf, align 8, !tbaa !3
  br label %if.end314

if.end314:                                        ; preds = %if.then312, %if.then310
  %46 = phi %struct.conf_st* [ %.pre104, %if.then312 ], [ %44, %if.then310 ]
  call void @X509V3_set_nconf(%struct.v3_ext_ctx* noundef nonnull %ext_ctx, %struct.conf_st* noundef %46) #10
  %47 = load %struct.conf_st*, %struct.conf_st** @extfile_conf, align 8, !tbaa !3
  %call315 = call i32 @X509V3_EXT_add_nconf(%struct.conf_st* noundef %47, %struct.v3_ext_ctx* noundef nonnull %ext_ctx, i8* noundef nonnull %ext_sect, %struct.x509_st* noundef nonnull %call250) #10
  %tobool316.not = icmp eq i32 %call315, 0
  br i1 %tobool316.not, label %if.then317, label %if.end319

if.then317:                                       ; preds = %if.end314
  %48 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call318 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %48, i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.255, i64 0, i64 0), i8* noundef nonnull %ext_sect) #10
  br label %end

if.end319:                                        ; preds = %if.end314
  br i1 %tobool244.not, label %if.end338, label %if.end338.sink.split

if.then326:                                       ; preds = %if.then307
  call void @X509V3_set_nconf(%struct.v3_ext_ctx* noundef nonnull %ext_ctx, %struct.conf_st* noundef %lconf) #10
  %call327 = call i32 @X509V3_EXT_add_nconf(%struct.conf_st* noundef %lconf, %struct.v3_ext_ctx* noundef nonnull %ext_ctx, i8* noundef nonnull %ext_sect, %struct.x509_st* noundef nonnull %call250) #10
  %tobool328.not = icmp eq i32 %call327, 0
  br i1 %tobool328.not, label %if.then329, label %if.end331

if.then329:                                       ; preds = %if.then326
  %49 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call330 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %49, i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.257, i64 0, i64 0), i8* noundef nonnull %ext_sect) #10
  br label %end

if.end331:                                        ; preds = %if.then326
  br i1 %tobool244.not, label %if.end338, label %if.end338.sink.split

if.end338.sink.split:                             ; preds = %if.end331, %if.end319
  %.sink126 = phi i8* [ getelementptr inbounds ([42 x i8], [42 x i8]* @.str.256, i64 0, i64 0), %if.end319 ], [ getelementptr inbounds ([43 x i8], [43 x i8]* @.str.258, i64 0, i64 0), %if.end331 ]
  %50 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call322 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %50, i8* noundef %.sink126) #10
  br label %if.end338

if.end338:                                        ; preds = %if.end338.sink.split, %if.end319, %if.end331, %if.end300
  %call339 = call i32 @copy_extensions(%struct.x509_st* noundef nonnull %call250, %struct.X509_req_st* noundef %req, i32 noundef %ext_copy) #10
  %tobool340.not = icmp eq i32 %call339, 0
  br i1 %tobool340.not, label %if.then341, label %if.end343

if.then341:                                       ; preds = %if.end338
  %51 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call342 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %51, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.259, i64 0, i64 0)) #10
  br label %end

if.end343:                                        ; preds = %if.end338
  br i1 %tobool244.not, label %if.end347, label %if.then345

if.then345:                                       ; preds = %if.end343
  %52 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call346 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %52, i8* noundef getelementptr inbounds ([67 x i8], [67 x i8]* @.str.260, i64 0, i64 0)) #10
  br label %if.end347

if.end347:                                        ; preds = %if.then345, %if.end343
  %tobool348.not = icmp eq i32 %email_dn, 0
  br i1 %tobool348.not, label %if.then349, label %if.end368

if.then349:                                       ; preds = %if.end347
  %call350 = call %struct.X509_name_st* @X509_NAME_dup(%struct.X509_name_st* noundef %subject.0) #10
  %cmp351 = icmp eq %struct.X509_name_st* %call350, null
  br i1 %cmp351, label %if.then353, label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.then349
  %call35681 = call i32 @X509_NAME_get_index_by_NID(%struct.X509_name_st* noundef nonnull %call350, i32 noundef 48, i32 noundef -1) #10
  %cmp35782 = icmp sgt i32 %call35681, -1
  br i1 %cmp35782, label %while.body, label %while.end

if.then353:                                       ; preds = %if.then349
  %53 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call354 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %53, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.198, i64 0, i64 0)) #10
  br label %end

while.body:                                       ; preds = %while.cond.preheader, %while.body
  %call35683 = phi i32 [ %call356, %while.body ], [ %call35681, %while.cond.preheader ]
  %dec = add nsw i32 %call35683, -1
  %call359 = call %struct.X509_name_entry_st* @X509_NAME_delete_entry(%struct.X509_name_st* noundef nonnull %call350, i32 noundef %call35683) #10
  call void @X509_NAME_ENTRY_free(%struct.X509_name_entry_st* noundef %call359) #10
  %call356 = call i32 @X509_NAME_get_index_by_NID(%struct.X509_name_st* noundef nonnull %call350, i32 noundef 48, i32 noundef %dec) #10
  %cmp357 = icmp sgt i32 %call356, -1
  br i1 %cmp357, label %while.body, label %while.end, !llvm.loop !42

while.end:                                        ; preds = %while.body, %while.cond.preheader
  %call360 = call i32 @X509_set_subject_name(%struct.x509_st* noundef %call250, %struct.X509_name_st* noundef nonnull %call350) #10
  %tobool361.not = icmp eq i32 %call360, 0
  call void @X509_NAME_free(%struct.X509_name_st* noundef nonnull %call350) #10
  br i1 %tobool361.not, label %end, label %if.end368

if.end368:                                        ; preds = %while.end, %if.end347
  %call369 = call %struct.X509_name_st* @X509_get_subject_name(%struct.x509_st* noundef %call250) #10
  %call370 = call i8* @X509_NAME_oneline(%struct.X509_name_st* noundef %call369, i8* noundef null, i32 noundef 0) #10
  store i8* %call370, i8** %arrayidx.5, align 8, !tbaa !3
  %cmp373 = icmp eq i8* %call370, null
  br i1 %cmp373, label %if.then375, label %if.end377

if.then375:                                       ; preds = %if.end368
  %54 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call376 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %54, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.198, i64 0, i64 0)) #10
  br label %end

if.end377:                                        ; preds = %if.end368
  %call378 = call i32 @BN_is_zero(%struct.bignum_st* noundef %serial) #10
  %tobool379.not = icmp eq i32 %call378, 0
  br i1 %tobool379.not, label %if.else383, label %if.then380

if.then380:                                       ; preds = %if.end377
  %call381 = call i8* @CRYPTO_strdup(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.261, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.196, i64 0, i64 0), i32 noundef 1796) #10
  br label %if.end386

if.else383:                                       ; preds = %if.end377
  %call384 = call i8* @BN_bn2hex(%struct.bignum_st* noundef %serial) #10
  br label %if.end386

if.end386:                                        ; preds = %if.else383, %if.then380
  %call381.sink = phi i8* [ %call384, %if.else383 ], [ %call381, %if.then380 ]
  store i8* %call381.sink, i8** %arrayidx.3, align 8
  %cmp388 = icmp eq i8* %call381.sink, null
  br i1 %cmp388, label %if.then390, label %if.end392

if.then390:                                       ; preds = %if.end386
  %55 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call391 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %55, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.198, i64 0, i64 0)) #10
  br label %end

if.end392:                                        ; preds = %if.end386
  %56 = load i8*, i8** %arrayidx.5, align 8, !tbaa !3
  %57 = load i8, i8* %56, align 1, !tbaa !15
  %cmp396 = icmp eq i8 %57, 0
  br i1 %cmp396, label %if.then398, label %if.end409

if.then398:                                       ; preds = %if.end392
  call void @CRYPTO_free(i8* noundef nonnull %56, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.196, i64 0, i64 0), i32 noundef 1810) #10
  %58 = load i8*, i8** %arrayidx.3, align 8, !tbaa !3
  %call401 = call i8* @CRYPTO_strdup(i8* noundef %58, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.196, i64 0, i64 0), i32 noundef 1811) #10
  store i8* %call401, i8** %arrayidx.5, align 8, !tbaa !3
  %cmp404 = icmp eq i8* %call401, null
  br i1 %cmp404, label %if.then406, label %if.end409

if.then406:                                       ; preds = %if.then398
  %59 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call407 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %59, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.198, i64 0, i64 0)) #10
  br label %end

if.end409:                                        ; preds = %if.then398, %if.end392
  %unique_subject = getelementptr inbounds %struct.ca_db_st, %struct.ca_db_st* %db, i64 0, i32 0, i32 0
  %60 = load i32, i32* %unique_subject, align 8, !tbaa !43
  %tobool410.not = icmp eq i32 %60, 0
  br i1 %tobool410.not, label %if.then423, label %if.then411

if.then411:                                       ; preds = %if.end409
  %db412 = getelementptr inbounds %struct.ca_db_st, %struct.ca_db_st* %db, i64 0, i32 1
  %61 = load %struct.txt_db_st*, %struct.txt_db_st** %db412, align 8, !tbaa !16
  %call413 = call i8** @TXT_DB_get_by_index(%struct.txt_db_st* noundef %61, i32 noundef 5, i8** noundef nonnull %arrayidx) #10
  %cmp414.not = icmp eq i8** %call413, null
  br i1 %cmp414.not, label %if.then423, label %if.end420

if.end420:                                        ; preds = %if.then411
  %62 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %63 = load i8*, i8** %arrayidx.5, align 8, !tbaa !3
  %call418 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %62, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.262, i64 0, i64 0), i8* noundef %63) #10
  br label %if.then437

if.then423:                                       ; preds = %if.end409, %if.then411
  %db424 = getelementptr inbounds %struct.ca_db_st, %struct.ca_db_st* %db, i64 0, i32 1
  %64 = load %struct.txt_db_st*, %struct.txt_db_st** %db424, align 8, !tbaa !16
  %call426 = call i8** @TXT_DB_get_by_index(%struct.txt_db_st* noundef %64, i32 noundef 3, i8** noundef nonnull %arrayidx) #10
  %cmp427.not = icmp eq i8** %call426, null
  br i1 %cmp427.not, label %if.end501, label %if.then429

if.then429:                                       ; preds = %if.then423
  %65 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %66 = load i8*, i8** %arrayidx.3, align 8, !tbaa !3
  %call431 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %65, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.263, i64 0, i64 0), i8* noundef %66) #10
  %67 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call432 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %67, i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.264, i64 0, i64 0)) #10
  br label %if.then437

if.then437:                                       ; preds = %if.then429, %if.end420
  %rrow.1.ph = phi i8** [ %call413, %if.end420 ], [ %call426, %if.then429 ]
  %68 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call438 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %68, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.265, i64 0, i64 0)) #10
  %69 = load i8*, i8** %rrow.1.ph, align 8, !tbaa !3
  %70 = load i8, i8* %69, align 1, !tbaa !15
  switch i8 %70, label %if.else459 [
    i8 69, label %if.end462
    i8 82, label %if.then451
    i8 86, label %if.then458
  ]

if.then451:                                       ; preds = %if.then437
  br label %if.end462

if.then458:                                       ; preds = %if.then437
  br label %if.end462

if.else459:                                       ; preds = %if.then437
  br label %if.end462

if.end462:                                        ; preds = %if.then437, %if.then451, %if.else459, %if.then458
  %p.0 = phi i8* [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.267, i64 0, i64 0), %if.then451 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.268, i64 0, i64 0), %if.then458 ], [ getelementptr inbounds ([32 x i8], [32 x i8]* @.str.269, i64 0, i64 0), %if.else459 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.266, i64 0, i64 0), %if.then437 ]
  %71 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call463 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %71, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.270, i64 0, i64 0), i8* noundef nonnull %p.0) #10
  %72 = load i8*, i8** %rrow.1.ph, align 8, !tbaa !3
  %73 = load i8, i8* %72, align 1, !tbaa !15
  %cmp467 = icmp eq i8 %73, 82
  br i1 %cmp467, label %if.then469, label %if.end476

if.then469:                                       ; preds = %if.end462
  %arrayidx470 = getelementptr inbounds i8*, i8** %rrow.1.ph, i64 1
  %74 = load i8*, i8** %arrayidx470, align 8, !tbaa !3
  %cmp471 = icmp eq i8* %74, null
  %spec.store.select = select i1 %cmp471, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.271, i64 0, i64 0), i8* %74
  %75 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call475 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %75, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.272, i64 0, i64 0), i8* noundef %spec.store.select) #10
  br label %if.end476

if.end476:                                        ; preds = %if.then469, %if.end462
  %arrayidx477 = getelementptr inbounds i8*, i8** %rrow.1.ph, i64 1
  %76 = load i8*, i8** %arrayidx477, align 8, !tbaa !3
  %cmp478 = icmp eq i8* %76, null
  %spec.store.select652 = select i1 %cmp478, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.271, i64 0, i64 0), i8* %76
  %77 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call482 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %77, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.273, i64 0, i64 0), i8* noundef %spec.store.select652) #10
  %arrayidx483 = getelementptr inbounds i8*, i8** %rrow.1.ph, i64 3
  %78 = load i8*, i8** %arrayidx483, align 8, !tbaa !3
  %cmp484 = icmp eq i8* %78, null
  %spec.store.select657 = select i1 %cmp484, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.271, i64 0, i64 0), i8* %78
  %79 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call488 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %79, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.274, i64 0, i64 0), i8* noundef %spec.store.select657) #10
  %arrayidx489 = getelementptr inbounds i8*, i8** %rrow.1.ph, i64 4
  %80 = load i8*, i8** %arrayidx489, align 8, !tbaa !3
  %cmp490 = icmp eq i8* %80, null
  %spec.store.select653 = select i1 %cmp490, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.271, i64 0, i64 0), i8* %80
  %81 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call494 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %81, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.275, i64 0, i64 0), i8* noundef %spec.store.select653) #10
  %arrayidx495 = getelementptr inbounds i8*, i8** %rrow.1.ph, i64 5
  %82 = load i8*, i8** %arrayidx495, align 8, !tbaa !3
  %cmp496 = icmp eq i8* %82, null
  %spec.store.select658 = select i1 %cmp496, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.271, i64 0, i64 0), i8* %82
  %83 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call500 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %83, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.276, i64 0, i64 0), i8* noundef %spec.store.select658) #10
  br label %end

if.end501:                                        ; preds = %if.then423
  br i1 %tobool5.not, label %if.then503, label %if.end506

if.then503:                                       ; preds = %if.end501
  %84 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call504 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %84, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.277, i64 0, i64 0)) #10
  %or = or i64 %certopt, 520
  %85 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call505 = call i32 @X509_print_ex(%struct.bio_st* noundef %85, %struct.x509_st* noundef %call250, i64 noundef %nameopt, i64 noundef %or) #10
  br label %if.end506

if.end506:                                        ; preds = %if.then503, %if.end501
  %86 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call507 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %86, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.278, i64 0, i64 0)) #10
  %87 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call508 = call %struct.asn1_string_st* @X509_get0_notAfter(%struct.x509_st* noundef %call250) #10
  %call509 = call i32 @ASN1_TIME_print_ex(%struct.bio_st* noundef %87, %struct.asn1_string_st* noundef %call508, i64 noundef %dateopt) #10
  %tobool510.not = icmp eq i64 %days.addr.1, 0
  br i1 %tobool510.not, label %if.end513, label %if.then511

if.then511:                                       ; preds = %if.end506
  %88 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call512 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %88, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.279, i64 0, i64 0), i64 noundef %days.addr.1) #10
  br label %if.end513

if.end513:                                        ; preds = %if.then511, %if.end506
  %89 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call514 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %89, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.199, i64 0, i64 0)) #10
  %tobool515.not = icmp eq i32 %batch, 0
  br i1 %tobool515.not, label %if.then516, label %if.end540

if.then516:                                       ; preds = %if.end513
  %90 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call517 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %90, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.280, i64 0, i64 0)) #10
  %91 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call518 = call i64 @BIO_ctrl(%struct.bio_st* noundef %91, i32 noundef 11, i64 noundef 0, i8* noundef null) #10
  store i8 0, i8* %1, align 16, !tbaa !15
  %92 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !tbaa !3
  %call522 = call i8* @fgets(i8* noundef nonnull %1, i32 noundef 25, %struct._IO_FILE* noundef %92) #10
  %cmp523 = icmp eq i8* %call522, null
  br i1 %cmp523, label %if.then525, label %if.end527

if.then525:                                       ; preds = %if.then516
  %93 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call526 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %93, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.281, i64 0, i64 0)) #10
  br label %end

if.end527:                                        ; preds = %if.then516
  %94 = load i8, i8* %1, align 16, !tbaa !15
  %95 = and i8 %94, -33
  %96 = icmp eq i8 %95, 89
  br i1 %96, label %if.end540, label %if.then537

if.then537:                                       ; preds = %if.end527
  %97 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call538 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %97, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.282, i64 0, i64 0)) #10
  br label %end

if.end540:                                        ; preds = %if.end527, %if.end513
  %call541 = call %struct.evp_pkey_st* @X509_get0_pubkey(%struct.x509_st* noundef %call250) #10
  %call542 = call i32 @EVP_PKEY_missing_parameters(%struct.evp_pkey_st* noundef %call541) #10
  %tobool543.not = icmp eq i32 %call542, 0
  br i1 %tobool543.not, label %if.end549, label %land.lhs.true544

land.lhs.true544:                                 ; preds = %if.end540
  %call545 = call i32 @EVP_PKEY_missing_parameters(%struct.evp_pkey_st* noundef %pkey) #10
  %tobool546.not = icmp eq i32 %call545, 0
  br i1 %tobool546.not, label %if.then547, label %if.end549

if.then547:                                       ; preds = %land.lhs.true544
  %call548 = call i32 @EVP_PKEY_copy_parameters(%struct.evp_pkey_st* noundef %call541, %struct.evp_pkey_st* noundef %pkey) #10
  br label %if.end549

if.end549:                                        ; preds = %if.then547, %land.lhs.true544, %if.end540
  %call550 = call i32 @do_X509_sign(%struct.x509_st* noundef %call250, %struct.evp_pkey_st* noundef %pkey, i8* noundef %dgst, %struct.stack_st_OPENSSL_STRING* noundef %sigopts, %struct.v3_ext_ctx* noundef nonnull %ext_ctx) #10
  %tobool551.not = icmp eq i32 %call550, 0
  br i1 %tobool551.not, label %end, label %if.end553

if.end553:                                        ; preds = %if.end549
  %call554 = call i8* @CRYPTO_strdup(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.283, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.196, i64 0, i64 0), i32 noundef 1918) #10
  store i8* %call554, i8** %arrayidx, align 16, !tbaa !3
  %call556 = call %struct.asn1_string_st* @X509_get0_notAfter(%struct.x509_st* noundef %call250) #10
  %length557 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %call556, i64 0, i32 0
  %98 = load i32, i32* %length557, align 8, !tbaa !35
  %add = add nsw i32 %98, 1
  %conv558 = sext i32 %add to i64
  %call559 = call i8* @app_malloc(i64 noundef %conv558, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.284, i64 0, i64 0)) #10
  store i8* %call559, i8** %arrayidx.1, align 8, !tbaa !3
  %data562 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %call556, i64 0, i32 2
  %99 = load i8*, i8** %data562, align 8, !tbaa !37
  %100 = load i32, i32* %length557, align 8, !tbaa !35
  %conv564 = sext i32 %100 to i64
  %call565 = call i8* @memcpy(i8* noundef %call559, i8* noundef %99, i64 noundef %conv564) #10
  %101 = load i8*, i8** %arrayidx.1, align 8, !tbaa !3
  %102 = load i32, i32* %length557, align 8, !tbaa !35
  %idxprom568 = sext i32 %102 to i64
  %arrayidx569 = getelementptr inbounds i8, i8* %101, i64 %idxprom568
  store i8 0, i8* %arrayidx569, align 1, !tbaa !15
  store i8* null, i8** %arrayidx.2, align 16, !tbaa !3
  %call571 = call i8* @CRYPTO_strdup(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.285, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.196, i64 0, i64 0), i32 noundef 1924) #10
  store i8* %call571, i8** %arrayidx.4, align 16, !tbaa !3
  %103 = load i8*, i8** %arrayidx, align 16, !tbaa !3
  %cmp574 = icmp eq i8* %103, null
  %cmp578 = icmp eq i8* %call571, null
  %or.cond655 = select i1 %cmp574, i1 true, i1 %cmp578
  %104 = load i8*, i8** %arrayidx.5, align 8
  %cmp582 = icmp eq i8* %104, null
  %or.cond656 = select i1 %or.cond655, i1 true, i1 %cmp582
  br i1 %or.cond656, label %if.then584, label %if.end586

if.then584:                                       ; preds = %if.end553
  %105 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call585 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %105, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.198, i64 0, i64 0)) #10
  br label %end

if.end586:                                        ; preds = %if.end553
  %call587 = call i8* @app_malloc(i64 noundef 56, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.286, i64 0, i64 0)) #10
  %106 = bitcast i8* %call587 to i8**
  %107 = load i8*, i8** %arrayidx, align 16, !tbaa !3
  store i8* %107, i8** %106, align 8, !tbaa !3
  %108 = load i8*, i8** %arrayidx.1, align 8, !tbaa !3
  %arrayidx595.1 = getelementptr inbounds i8, i8* %call587, i64 8
  %109 = bitcast i8* %arrayidx595.1 to i8**
  store i8* %108, i8** %109, align 8, !tbaa !3
  %110 = load i8*, i8** %arrayidx.2, align 16, !tbaa !3
  %arrayidx595.2 = getelementptr inbounds i8, i8* %call587, i64 16
  %111 = bitcast i8* %arrayidx595.2 to i8**
  store i8* %110, i8** %111, align 8, !tbaa !3
  %112 = load i8*, i8** %arrayidx.3, align 8, !tbaa !3
  %arrayidx595.3 = getelementptr inbounds i8, i8* %call587, i64 24
  %113 = bitcast i8* %arrayidx595.3 to i8**
  store i8* %112, i8** %113, align 8, !tbaa !3
  %114 = load i8*, i8** %arrayidx.4, align 16, !tbaa !3
  %arrayidx595.4 = getelementptr inbounds i8, i8* %call587, i64 32
  %115 = bitcast i8* %arrayidx595.4 to i8**
  store i8* %114, i8** %115, align 8, !tbaa !3
  %116 = load i8*, i8** %arrayidx.5, align 8, !tbaa !3
  %arrayidx595.5 = getelementptr inbounds i8, i8* %call587, i64 40
  %117 = bitcast i8* %arrayidx595.5 to i8**
  store i8* %116, i8** %117, align 8, !tbaa !3
  %arrayidx599 = getelementptr inbounds i8, i8* %call587, i64 48
  %118 = bitcast i8* %arrayidx599 to i8**
  store i8* null, i8** %118, align 8, !tbaa !3
  %119 = load %struct.txt_db_st*, %struct.txt_db_st** %db424, align 8, !tbaa !16
  %call601 = call i32 @TXT_DB_insert(%struct.txt_db_st* noundef %119, i8** noundef nonnull %106) #10
  %tobool602.not = icmp eq i32 %call601, 0
  br i1 %tobool602.not, label %if.then603, label %if.end620

if.then603:                                       ; preds = %if.end586
  %120 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call604 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %120, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.287, i64 0, i64 0)) #10
  %121 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %122 = load %struct.txt_db_st*, %struct.txt_db_st** %db424, align 8, !tbaa !16
  %error = getelementptr inbounds %struct.txt_db_st, %struct.txt_db_st* %122, i64 0, i32 4
  %123 = load i64, i64* %error, align 8, !tbaa !38
  %call606 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %121, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.288, i64 0, i64 0), i64 noundef %123) #10
  br label %end

end:                                              ; preds = %while.end, %if.then353, %cond.end203, %if.then175, %if.then165, %if.else210, %if.then152, %if.then221, %if.then, %if.then281, %if.end549, %if.end295, %if.end291, %if.end273, %if.else267, %if.then262, %if.end254, %if.end247, %if.then237, %if.end102, %if.then603, %if.then584, %if.then537, %if.then525, %if.end476, %if.then406, %if.then390, %if.then375, %if.then341, %if.then329, %if.then317, %if.then119, %if.then94, %if.then80, %if.then56
  %ret.0 = phi %struct.x509_st* [ null, %if.then56 ], [ null, %if.then80 ], [ null, %if.then94 ], [ null, %if.end102 ], [ null, %if.then119 ], [ null, %if.then237 ], [ null, %if.end247 ], [ %call250, %if.end254 ], [ %call250, %if.then281 ], [ %call250, %if.then375 ], [ %call250, %if.then390 ], [ %call250, %if.then406 ], [ %call250, %if.end476 ], [ %call250, %if.then584 ], [ %call250, %if.then603 ], [ %call250, %if.end549 ], [ %call250, %if.then525 ], [ %call250, %if.then537 ], [ %call250, %if.then341 ], [ %call250, %if.then317 ], [ %call250, %if.then329 ], [ %call250, %if.end295 ], [ %call250, %if.end291 ], [ %call250, %if.end273 ], [ %call250, %if.then262 ], [ %call250, %if.else267 ], [ null, %if.then ], [ null, %if.then221 ], [ null, %if.then152 ], [ null, %if.else210 ], [ null, %if.then165 ], [ null, %if.then175 ], [ null, %cond.end203 ], [ %call250, %if.then353 ], [ %call250, %while.end ]
  %ok.0 = phi i32 [ -1, %if.then56 ], [ -1, %if.then80 ], [ -1, %if.then94 ], [ -1, %if.end102 ], [ -1, %if.then119 ], [ -1, %if.then237 ], [ -1, %if.end247 ], [ -1, %if.end254 ], [ -1, %if.then281 ], [ -1, %if.then375 ], [ -1, %if.then390 ], [ -1, %if.then406 ], [ -1, %if.end476 ], [ -1, %if.then584 ], [ -1, %if.then603 ], [ -1, %if.end549 ], [ 0, %if.then525 ], [ 0, %if.then537 ], [ -1, %if.then341 ], [ -1, %if.then317 ], [ -1, %if.then329 ], [ -1, %if.end295 ], [ -1, %if.end291 ], [ -1, %if.end273 ], [ -1, %if.then262 ], [ -1, %if.else267 ], [ -1, %if.then ], [ -1, %if.then221 ], [ -1, %if.then152 ], [ -1, %if.else210 ], [ -1, %if.then165 ], [ -1, %if.then175 ], [ -1, %cond.end203 ], [ -1, %if.then353 ], [ -1, %while.end ]
  %subject.1 = phi %struct.X509_name_st* [ null, %if.then56 ], [ null, %if.then80 ], [ null, %if.then94 ], [ %call91, %if.end102 ], [ %call91, %if.then119 ], [ null, %if.then237 ], [ %subject.0, %if.end247 ], [ %subject.0, %if.end254 ], [ %subject.0, %if.then281 ], [ %subject.0, %if.then375 ], [ %subject.0, %if.then390 ], [ %subject.0, %if.then406 ], [ %subject.0, %if.end476 ], [ %subject.0, %if.then584 ], [ %subject.0, %if.then603 ], [ %subject.0, %if.end549 ], [ %subject.0, %if.then525 ], [ %subject.0, %if.then537 ], [ %subject.0, %if.then341 ], [ %subject.0, %if.then317 ], [ %subject.0, %if.then329 ], [ %subject.0, %if.end295 ], [ %subject.0, %if.end291 ], [ %subject.0, %if.end273 ], [ %subject.0, %if.then262 ], [ %subject.0, %if.else267 ], [ null, %if.then ], [ %call91, %if.then221 ], [ %call91, %if.then152 ], [ %call91, %if.else210 ], [ %call91, %if.then165 ], [ %call91, %if.then175 ], [ %call91, %cond.end203 ], [ %subject.0, %if.then353 ], [ %subject.0, %while.end ]
  %CAname.1 = phi %struct.X509_name_st* [ null, %if.then56 ], [ null, %if.then80 ], [ null, %if.then94 ], [ null, %if.end102 ], [ %call101, %if.then119 ], [ %call101, %if.then237 ], [ %call101, %if.end247 ], [ %call101, %if.end254 ], [ %call101, %if.then281 ], [ %call101, %if.then375 ], [ %call101, %if.then390 ], [ %call101, %if.then406 ], [ %call101, %if.end476 ], [ %call101, %if.then584 ], [ %call101, %if.then603 ], [ %call101, %if.end549 ], [ %call101, %if.then525 ], [ %call101, %if.then537 ], [ %call101, %if.then341 ], [ %call101, %if.then317 ], [ %call101, %if.then329 ], [ %call101, %if.end295 ], [ %call101, %if.end291 ], [ %call101, %if.end273 ], [ %call101, %if.then262 ], [ %call101, %if.else267 ], [ null, %if.then ], [ %call101, %if.then221 ], [ %call101, %if.then152 ], [ %call101, %if.else210 ], [ %call101, %if.then165 ], [ %call101, %if.then175 ], [ %call101, %cond.end203 ], [ %call101, %if.then353 ], [ %call101, %while.end ]
  %124 = phi i8* [ null, %if.then56 ], [ null, %if.then80 ], [ null, %if.then94 ], [ null, %if.end102 ], [ null, %if.then119 ], [ null, %if.then237 ], [ null, %if.end247 ], [ null, %if.end254 ], [ null, %if.then281 ], [ null, %if.then375 ], [ null, %if.then390 ], [ null, %if.then406 ], [ null, %if.end476 ], [ null, %if.then584 ], [ %call587, %if.then603 ], [ null, %if.end549 ], [ null, %if.then525 ], [ null, %if.then537 ], [ null, %if.then341 ], [ null, %if.then317 ], [ null, %if.then329 ], [ null, %if.end295 ], [ null, %if.end291 ], [ null, %if.end273 ], [ null, %if.then262 ], [ null, %if.else267 ], [ null, %if.then ], [ null, %if.then221 ], [ null, %if.then152 ], [ null, %if.else210 ], [ null, %if.then165 ], [ null, %if.then175 ], [ null, %cond.end203 ], [ null, %if.then353 ], [ null, %while.end ]
  %125 = load i8*, i8** %arrayidx, align 16, !tbaa !3
  call void @CRYPTO_free(i8* noundef %125, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.196, i64 0, i64 0), i32 noundef 1946) #10
  %126 = load i8*, i8** %arrayidx.1, align 8, !tbaa !3
  call void @CRYPTO_free(i8* noundef %126, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.196, i64 0, i64 0), i32 noundef 1946) #10
  %127 = load i8*, i8** %arrayidx.2, align 16, !tbaa !3
  call void @CRYPTO_free(i8* noundef %127, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.196, i64 0, i64 0), i32 noundef 1946) #10
  %128 = load i8*, i8** %arrayidx.3, align 8, !tbaa !3
  call void @CRYPTO_free(i8* noundef %128, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.196, i64 0, i64 0), i32 noundef 1946) #10
  %129 = load i8*, i8** %arrayidx.4, align 16, !tbaa !3
  call void @CRYPTO_free(i8* noundef %129, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.196, i64 0, i64 0), i32 noundef 1946) #10
  %130 = load i8*, i8** %arrayidx.5, align 8, !tbaa !3
  call void @CRYPTO_free(i8* noundef %130, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.196, i64 0, i64 0), i32 noundef 1946) #10
  br label %if.end620

if.end620:                                        ; preds = %end, %if.end586
  %131 = phi i8* [ null, %if.end586 ], [ %124, %end ]
  %CAname.153 = phi %struct.X509_name_st* [ %call101, %if.end586 ], [ %CAname.1, %end ]
  %subject.152 = phi %struct.X509_name_st* [ %subject.0, %if.end586 ], [ %subject.1, %end ]
  %ok.051 = phi i32 [ 1, %if.end586 ], [ %ok.0, %end ]
  %cmp62150 = phi i1 [ false, %if.end586 ], [ true, %end ]
  %ret.049 = phi %struct.x509_st* [ %call250, %if.end586 ], [ %ret.0, %end ]
  call void @CRYPTO_free(i8* noundef %131, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.196, i64 0, i64 0), i32 noundef 1948) #10
  call void @X509_NAME_free(%struct.X509_name_st* noundef %CAname.153) #10
  call void @X509_NAME_free(%struct.X509_name_st* noundef %subject.152) #10
  br i1 %cmp62150, label %if.then623, label %if.else624

if.then623:                                       ; preds = %if.end620
  call void @X509_free(%struct.x509_st* noundef %ret.049) #10
  br label %cleanup626

if.else624:                                       ; preds = %if.end620
  store %struct.x509_st* %ret.049, %struct.x509_st** %xret, align 8, !tbaa !3
  br label %cleanup626

cleanup626:                                       ; preds = %if.then623, %if.else624
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %2) #9
  call void @llvm.lifetime.end.p0i8(i64 25, i8* nonnull %1) #9
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %0) #9
  ret i32 %ok.051
}

declare dso_local void @X509_REQ_free(%struct.X509_req_st* noundef) local_unnamed_addr #3

declare dso_local %struct.X509_name_st* @parse_name(i8* noundef, i32 noundef, i32 noundef, i8* noundef) local_unnamed_addr #3

declare dso_local i32 @X509_REQ_set_subject_name(%struct.X509_req_st* noundef, %struct.X509_name_st* noundef) local_unnamed_addr #3

declare dso_local void @X509_NAME_free(%struct.X509_name_st* noundef) local_unnamed_addr #3

declare dso_local %struct.X509_name_st* @X509_REQ_get_subject_name(%struct.X509_req_st* noundef) local_unnamed_addr #3

declare dso_local i32 @X509_NAME_entry_count(%struct.X509_name_st* noundef) local_unnamed_addr #3

declare dso_local %struct.X509_name_entry_st* @X509_NAME_get_entry(%struct.X509_name_st* noundef, i32 noundef) local_unnamed_addr #3

declare dso_local %struct.asn1_string_st* @X509_NAME_ENTRY_get_data(%struct.X509_name_entry_st* noundef) local_unnamed_addr #3

declare dso_local %struct.asn1_object_st* @X509_NAME_ENTRY_get_object(%struct.X509_name_entry_st* noundef) local_unnamed_addr #3

declare dso_local i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef) local_unnamed_addr #3

declare dso_local i32 @ASN1_UNIVERSALSTRING_to_string(%struct.asn1_string_st* noundef) local_unnamed_addr #3

declare dso_local i32 @ASN1_PRINTABLE_type(i8* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @old_entry_print(%struct.asn1_object_st* noundef %obj, %struct.asn1_string_st* nocapture noundef readonly %str) unnamed_addr #0 {
entry:
  %buf = alloca [25 x i8], align 16
  %0 = getelementptr inbounds [25 x i8], [25 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 25, i8* nonnull %0) #9
  %1 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call = tail call i32 @i2a_ASN1_OBJECT(%struct.bio_st* noundef %1, %struct.asn1_object_st* noundef %obj) #10
  %cmp1 = icmp slt i32 %call, 22
  br i1 %cmp1, label %for.body.preheader, label %for.end

for.body.preheader:                               ; preds = %entry
  %sub = sub i32 22, %call
  %2 = sub i32 21, %call
  %3 = zext i32 %2 to i64
  %4 = add nuw nsw i64 %3, 1
  %min.iters.check = icmp ult i32 %2, 31
  br i1 %min.iters.check, label %for.body.preheader10, label %vector.ph

vector.ph:                                        ; preds = %for.body.preheader
  %n.vec = and i64 %4, 8589934560
  %cast.crd = trunc i64 %n.vec to i32
  %ind.end = sub i32 %sub, %cast.crd
  %ind.end8 = getelementptr [25 x i8], [25 x i8]* %buf, i64 0, i64 %n.vec
  %5 = add nsw i64 %n.vec, -32
  %6 = lshr exact i64 %5, 5
  %7 = add nuw nsw i64 %6, 1
  %xtraiter = and i64 %7, 7
  %8 = icmp ult i64 %5, 224
  br i1 %8, label %middle.block.unr-lcssa, label %vector.ph.new

vector.ph.new:                                    ; preds = %vector.ph
  %unroll_iter = and i64 %7, 1152921504606846968
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph.new
  %index = phi i64 [ 0, %vector.ph.new ], [ %index.next.7, %vector.body ]
  %niter = phi i64 [ 0, %vector.ph.new ], [ %niter.next.7, %vector.body ]
  %next.gep = getelementptr [25 x i8], [25 x i8]* %buf, i64 0, i64 %index
  %9 = bitcast i8* %next.gep to <16 x i8>*
  store <16 x i8> <i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32>, <16 x i8>* %9, align 16, !tbaa !15
  %10 = getelementptr i8, i8* %next.gep, i64 16
  %11 = bitcast i8* %10 to <16 x i8>*
  store <16 x i8> <i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32>, <16 x i8>* %11, align 16, !tbaa !15
  %index.next = or i64 %index, 32
  %next.gep.1 = getelementptr [25 x i8], [25 x i8]* %buf, i64 0, i64 %index.next
  %12 = bitcast i8* %next.gep.1 to <16 x i8>*
  store <16 x i8> <i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32>, <16 x i8>* %12, align 16, !tbaa !15
  %13 = getelementptr i8, i8* %next.gep.1, i64 16
  %14 = bitcast i8* %13 to <16 x i8>*
  store <16 x i8> <i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32>, <16 x i8>* %14, align 16, !tbaa !15
  %index.next.1 = or i64 %index, 64
  %next.gep.2 = getelementptr [25 x i8], [25 x i8]* %buf, i64 0, i64 %index.next.1
  %15 = bitcast i8* %next.gep.2 to <16 x i8>*
  store <16 x i8> <i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32>, <16 x i8>* %15, align 16, !tbaa !15
  %16 = getelementptr i8, i8* %next.gep.2, i64 16
  %17 = bitcast i8* %16 to <16 x i8>*
  store <16 x i8> <i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32>, <16 x i8>* %17, align 16, !tbaa !15
  %index.next.2 = or i64 %index, 96
  %next.gep.3 = getelementptr [25 x i8], [25 x i8]* %buf, i64 0, i64 %index.next.2
  %18 = bitcast i8* %next.gep.3 to <16 x i8>*
  store <16 x i8> <i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32>, <16 x i8>* %18, align 16, !tbaa !15
  %19 = getelementptr i8, i8* %next.gep.3, i64 16
  %20 = bitcast i8* %19 to <16 x i8>*
  store <16 x i8> <i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32>, <16 x i8>* %20, align 16, !tbaa !15
  %index.next.3 = or i64 %index, 128
  %next.gep.4 = getelementptr [25 x i8], [25 x i8]* %buf, i64 0, i64 %index.next.3
  %21 = bitcast i8* %next.gep.4 to <16 x i8>*
  store <16 x i8> <i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32>, <16 x i8>* %21, align 16, !tbaa !15
  %22 = getelementptr i8, i8* %next.gep.4, i64 16
  %23 = bitcast i8* %22 to <16 x i8>*
  store <16 x i8> <i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32>, <16 x i8>* %23, align 16, !tbaa !15
  %index.next.4 = or i64 %index, 160
  %next.gep.5 = getelementptr [25 x i8], [25 x i8]* %buf, i64 0, i64 %index.next.4
  %24 = bitcast i8* %next.gep.5 to <16 x i8>*
  store <16 x i8> <i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32>, <16 x i8>* %24, align 16, !tbaa !15
  %25 = getelementptr i8, i8* %next.gep.5, i64 16
  %26 = bitcast i8* %25 to <16 x i8>*
  store <16 x i8> <i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32>, <16 x i8>* %26, align 16, !tbaa !15
  %index.next.5 = or i64 %index, 192
  %next.gep.6 = getelementptr [25 x i8], [25 x i8]* %buf, i64 0, i64 %index.next.5
  %27 = bitcast i8* %next.gep.6 to <16 x i8>*
  store <16 x i8> <i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32>, <16 x i8>* %27, align 16, !tbaa !15
  %28 = getelementptr i8, i8* %next.gep.6, i64 16
  %29 = bitcast i8* %28 to <16 x i8>*
  store <16 x i8> <i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32>, <16 x i8>* %29, align 16, !tbaa !15
  %index.next.6 = or i64 %index, 224
  %next.gep.7 = getelementptr [25 x i8], [25 x i8]* %buf, i64 0, i64 %index.next.6
  %30 = bitcast i8* %next.gep.7 to <16 x i8>*
  store <16 x i8> <i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32>, <16 x i8>* %30, align 16, !tbaa !15
  %31 = getelementptr i8, i8* %next.gep.7, i64 16
  %32 = bitcast i8* %31 to <16 x i8>*
  store <16 x i8> <i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32>, <16 x i8>* %32, align 16, !tbaa !15
  %index.next.7 = add nuw i64 %index, 256
  %niter.next.7 = add i64 %niter, 8
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %middle.block.unr-lcssa, label %vector.body, !llvm.loop !44

middle.block.unr-lcssa:                           ; preds = %vector.body, %vector.ph
  %index.unr = phi i64 [ 0, %vector.ph ], [ %index.next.7, %vector.body ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %middle.block, label %vector.body.epil

vector.body.epil:                                 ; preds = %middle.block.unr-lcssa, %vector.body.epil
  %index.epil = phi i64 [ %index.next.epil, %vector.body.epil ], [ %index.unr, %middle.block.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %vector.body.epil ], [ 0, %middle.block.unr-lcssa ]
  %next.gep.epil = getelementptr [25 x i8], [25 x i8]* %buf, i64 0, i64 %index.epil
  %33 = bitcast i8* %next.gep.epil to <16 x i8>*
  store <16 x i8> <i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32>, <16 x i8>* %33, align 16, !tbaa !15
  %34 = getelementptr i8, i8* %next.gep.epil, i64 16
  %35 = bitcast i8* %34 to <16 x i8>*
  store <16 x i8> <i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32>, <16 x i8>* %35, align 16, !tbaa !15
  %index.next.epil = add nuw i64 %index.epil, 32
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %middle.block, label %vector.body.epil, !llvm.loop !46

middle.block:                                     ; preds = %vector.body.epil, %middle.block.unr-lcssa
  %cmp.n = icmp eq i64 %4, %n.vec
  br i1 %cmp.n, label %for.end, label %for.body.preheader10

for.body.preheader10:                             ; preds = %for.body.preheader, %middle.block
  %j.03.ph = phi i32 [ %sub, %for.body.preheader ], [ %ind.end, %middle.block ]
  %pbuf.02.ph = phi i8* [ %0, %for.body.preheader ], [ %ind.end8, %middle.block ]
  br label %for.body

for.body:                                         ; preds = %for.body.preheader10, %for.body
  %j.03 = phi i32 [ %dec, %for.body ], [ %j.03.ph, %for.body.preheader10 ]
  %pbuf.02 = phi i8* [ %incdec.ptr, %for.body ], [ %pbuf.02.ph, %for.body.preheader10 ]
  %incdec.ptr = getelementptr inbounds i8, i8* %pbuf.02, i64 1
  store i8 32, i8* %pbuf.02, align 1, !tbaa !15
  %dec = add nsw i32 %j.03, -1
  %cmp = icmp ugt i32 %j.03, 1
  br i1 %cmp, label %for.body, label %for.end, !llvm.loop !48

for.end:                                          ; preds = %for.body, %middle.block, %entry
  %pbuf.0.lcssa = phi i8* [ %0, %entry ], [ %ind.end8, %middle.block ], [ %incdec.ptr, %for.body ]
  %incdec.ptr1 = getelementptr inbounds i8, i8* %pbuf.0.lcssa, i64 1
  store i8 58, i8* %pbuf.0.lcssa, align 1, !tbaa !15
  store i8 0, i8* %incdec.ptr1, align 1, !tbaa !15
  %36 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call4 = call i32 @BIO_puts(%struct.bio_st* noundef %36, i8* noundef nonnull %0) #10
  %type = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %str, i64 0, i32 1
  %37 = load i32, i32* %type, align 4, !tbaa !39
  switch i32 %37, label %if.else21 [
    i32 19, label %if.then
    i32 20, label %if.then9
    i32 22, label %if.then14
    i32 28, label %if.then19
  ]

if.then:                                          ; preds = %for.end
  %38 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call6 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %38, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.289, i64 0, i64 0)) #10
  br label %if.end26

if.then9:                                         ; preds = %for.end
  %39 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call10 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %39, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.290, i64 0, i64 0)) #10
  br label %if.end26

if.then14:                                        ; preds = %for.end
  %40 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call15 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %40, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.291, i64 0, i64 0)) #10
  br label %if.end26

if.then19:                                        ; preds = %for.end
  %41 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call20 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %41, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.292, i64 0, i64 0)) #10
  br label %if.end26

if.else21:                                        ; preds = %for.end
  %42 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call23 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %42, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.293, i64 0, i64 0), i32 noundef %37) #10
  br label %if.end26

if.end26:                                         ; preds = %if.then9, %if.then19, %if.else21, %if.then14, %if.then
  %length = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %str, i64 0, i32 0
  %43 = load i32, i32* %length, align 8, !tbaa !35
  %cmp284 = icmp sgt i32 %43, 0
  br i1 %cmp284, label %for.body29.preheader, label %for.end58

for.body29.preheader:                             ; preds = %if.end26
  %data = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %str, i64 0, i32 2
  %44 = load i8*, i8** %data, align 8, !tbaa !37
  br label %for.body29

for.body29:                                       ; preds = %for.body29.preheader, %if.end54
  %j.16 = phi i32 [ %dec57, %if.end54 ], [ %43, %for.body29.preheader ]
  %p.05 = phi i8* [ %incdec.ptr55, %if.end54 ], [ %44, %for.body29.preheader ]
  %45 = load i8, i8* %p.05, align 1, !tbaa !15
  %conv = sext i8 %45 to i32
  %46 = add i8 %45, -127
  %47 = icmp ult i8 %46, -95
  br i1 %47, label %if.else38, label %if.then35

if.then35:                                        ; preds = %for.body29
  %48 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call37 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %48, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.294, i64 0, i64 0), i32 noundef %conv) #10
  br label %if.end54

if.else38:                                        ; preds = %for.body29
  %and = and i32 %conv, 128
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else43, label %if.then40

if.then40:                                        ; preds = %if.else38
  %49 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call42 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %49, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.295, i64 0, i64 0), i32 noundef %conv) #10
  br label %if.end54

if.else43:                                        ; preds = %if.else38
  %cmp45 = icmp eq i8 %45, -9
  %50 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  br i1 %cmp45, label %if.then47, label %if.else49

if.then47:                                        ; preds = %if.else43
  %call48 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %50, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.296, i64 0, i64 0)) #10
  br label %if.end54

if.else49:                                        ; preds = %if.else43
  %add = add nuw nsw i32 %conv, 64
  %call51 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %50, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.297, i64 0, i64 0), i32 noundef %add) #10
  br label %if.end54

if.end54:                                         ; preds = %if.then40, %if.else49, %if.then47, %if.then35
  %incdec.ptr55 = getelementptr inbounds i8, i8* %p.05, i64 1
  %dec57 = add nsw i32 %j.16, -1
  %cmp28 = icmp sgt i32 %j.16, 1
  br i1 %cmp28, label %for.body29, label %for.end58, !llvm.loop !50

for.end58:                                        ; preds = %if.end54, %if.end26
  %51 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call59 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %51, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.298, i64 0, i64 0)) #10
  call void @llvm.lifetime.end.p0i8(i64 25, i8* nonnull %0) #9
  ret void
}

declare dso_local %struct.X509_name_st* @X509_NAME_new() local_unnamed_addr #3

declare dso_local %struct.X509_name_st* @X509_NAME_dup(%struct.X509_name_st* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_CONF_VALUE_sk_type(%struct.stack_st_CONF_VALUE* noundef readnone %sk) unnamed_addr #5 {
entry:
  %0 = bitcast %struct.stack_st_CONF_VALUE* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare dso_local i32 @OBJ_txt2nid(i8* noundef) local_unnamed_addr #3

declare dso_local %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef) local_unnamed_addr #3

declare dso_local i32 @X509_NAME_get_index_by_OBJ(%struct.X509_name_st* noundef, %struct.asn1_object_st* noundef, i32 noundef) local_unnamed_addr #3

declare dso_local i32 @ASN1_STRING_cmp(%struct.asn1_string_st* noundef, %struct.asn1_string_st* noundef) local_unnamed_addr #3

declare dso_local i32 @X509_NAME_add_entry(%struct.X509_name_st* noundef, %struct.X509_name_entry_st* noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare dso_local %struct.x509_st* @X509_new_ex(%struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local %struct.asn1_string_st* @X509_get_serialNumber(%struct.x509_st* noundef) local_unnamed_addr #3

declare dso_local i32 @X509_set_issuer_name(%struct.x509_st* noundef, %struct.X509_name_st* noundef) local_unnamed_addr #3

declare dso_local i32 @set_cert_times(%struct.x509_st* noundef, i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare dso_local i32 @ASN1_TIME_diff(i32* noundef, i32* noundef, %struct.asn1_string_st* noundef, %struct.asn1_string_st* noundef) local_unnamed_addr #3

declare dso_local %struct.asn1_string_st* @X509_get0_notAfter(%struct.x509_st* noundef) local_unnamed_addr #3

declare dso_local i32 @X509_set_subject_name(%struct.x509_st* noundef, %struct.X509_name_st* noundef) local_unnamed_addr #3

declare dso_local i32 @X509_set_pubkey(%struct.x509_st* noundef, %struct.evp_pkey_st* noundef) local_unnamed_addr #3

declare dso_local i32 @copy_extensions(%struct.x509_st* noundef, %struct.X509_req_st* noundef, i32 noundef) local_unnamed_addr #3

declare dso_local i32 @X509_NAME_get_index_by_NID(%struct.X509_name_st* noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare dso_local %struct.X509_name_entry_st* @X509_NAME_delete_entry(%struct.X509_name_st* noundef, i32 noundef) local_unnamed_addr #3

declare dso_local void @X509_NAME_ENTRY_free(%struct.X509_name_entry_st* noundef) local_unnamed_addr #3

declare dso_local i8* @X509_NAME_oneline(%struct.X509_name_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare dso_local i8** @TXT_DB_get_by_index(%struct.txt_db_st* noundef, i32 noundef, i8** noundef) local_unnamed_addr #3

declare dso_local i32 @X509_print_ex(%struct.bio_st* noundef, %struct.x509_st* noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare dso_local i32 @ASN1_TIME_print_ex(%struct.bio_st* noundef, %struct.asn1_string_st* noundef, i64 noundef) local_unnamed_addr #3

declare dso_local %struct.evp_pkey_st* @X509_get0_pubkey(%struct.x509_st* noundef) local_unnamed_addr #3

declare dso_local i32 @EVP_PKEY_missing_parameters(%struct.evp_pkey_st* noundef) local_unnamed_addr #3

declare dso_local i32 @EVP_PKEY_copy_parameters(%struct.evp_pkey_st* noundef, %struct.evp_pkey_st* noundef) local_unnamed_addr #3

declare dso_local i32 @do_X509_sign(%struct.x509_st* noundef, %struct.evp_pkey_st* noundef, i8* noundef, %struct.stack_st_OPENSSL_STRING* noundef, %struct.v3_ext_ctx* noundef) local_unnamed_addr #3

declare dso_local i8* @app_malloc(i64 noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #8

declare dso_local i32 @TXT_DB_insert(%struct.txt_db_st* noundef, i8** noundef) local_unnamed_addr #3

declare dso_local i32 @i2a_ASN1_OBJECT(%struct.bio_st* noundef, %struct.asn1_object_st* noundef) local_unnamed_addr #3

declare dso_local i32 @X509_print(%struct.bio_st* noundef, %struct.x509_st* noundef) local_unnamed_addr #3

declare dso_local i32 @do_X509_verify(%struct.x509_st* noundef, %struct.evp_pkey_st* noundef, %struct.stack_st_OPENSSL_STRING* noundef) local_unnamed_addr #3

declare dso_local %struct.X509_req_st* @X509_to_X509_REQ(%struct.x509_st* noundef, %struct.evp_pkey_st* noundef, %struct.evp_md_st* noundef) local_unnamed_addr #3

declare dso_local i32 @i2d_X509_bio(%struct.bio_st* noundef, %struct.x509_st* noundef) local_unnamed_addr #3

declare dso_local i32 @PEM_write_bio_X509(%struct.bio_st* noundef, %struct.x509_st* noundef) local_unnamed_addr #3

declare dso_local %struct.lhash_st_CONF_VALUE* @CONF_load(%struct.lhash_st_CONF_VALUE* noundef, i8* noundef, i64* noundef) local_unnamed_addr #3

declare dso_local %struct.stack_st_CONF_VALUE* @CONF_get_section(%struct.lhash_st_CONF_VALUE* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local %struct.X509_req_st* @X509_REQ_new() local_unnamed_addr #3

declare dso_local %struct.Netscape_spki_st* @NETSCAPE_SPKI_b64_decode(i8* noundef, i32 noundef) local_unnamed_addr #3

declare dso_local i32 @X509_NAME_add_entry_by_NID(%struct.X509_name_st* noundef, i32 noundef, i32 noundef, i8* noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare dso_local %struct.evp_pkey_st* @NETSCAPE_SPKI_get_pubkey(%struct.Netscape_spki_st* noundef) local_unnamed_addr #3

declare dso_local i32 @NETSCAPE_SPKI_verify(%struct.Netscape_spki_st* noundef, %struct.evp_pkey_st* noundef) local_unnamed_addr #3

declare dso_local i32 @X509_REQ_set_pubkey(%struct.X509_req_st* noundef, %struct.evp_pkey_st* noundef) local_unnamed_addr #3

declare dso_local void @CONF_free(%struct.lhash_st_CONF_VALUE* noundef) local_unnamed_addr #3

declare dso_local void @NETSCAPE_SPKI_free(%struct.Netscape_spki_st* noundef) local_unnamed_addr #3

declare dso_local i32 @ASN1_TIME_set_string(%struct.asn1_string_st* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local %struct.bignum_st* @ASN1_INTEGER_to_BN(%struct.asn1_string_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #3

declare dso_local i32 @index_name_cmp(i8** noundef, i8** noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc i8* @make_revocation_str(i32 noundef %rev_type, i8* noundef %rev_arg) unnamed_addr #0 {
entry:
  switch i32 %rev_type, label %sw.epilog [
    i32 4, label %sw.bb15
    i32 3, label %sw.bb15
    i32 1, label %for.body.preheader
    i32 2, label %sw.bb9
  ]

for.body.preheader:                               ; preds = %entry
  %call = tail call i32 @strcasecmp(i8* noundef %rev_arg, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.334, i64 0, i64 0)) #11
  %cmp2 = icmp eq i32 %call, 0
  br i1 %cmp2, label %sw.epilog, label %for.cond

for.cond:                                         ; preds = %for.body.preheader
  %call.1 = tail call i32 @strcasecmp(i8* noundef %rev_arg, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.335, i64 0, i64 0)) #11
  %cmp2.1 = icmp eq i32 %call.1, 0
  br i1 %cmp2.1, label %sw.epilog, label %for.cond.1

for.cond.1:                                       ; preds = %for.cond
  %call.2 = tail call i32 @strcasecmp(i8* noundef %rev_arg, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.336, i64 0, i64 0)) #11
  %cmp2.2 = icmp eq i32 %call.2, 0
  br i1 %cmp2.2, label %sw.epilog, label %for.cond.2

for.cond.2:                                       ; preds = %for.cond.1
  %call.3 = tail call i32 @strcasecmp(i8* noundef %rev_arg, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.337, i64 0, i64 0)) #11
  %cmp2.3 = icmp eq i32 %call.3, 0
  br i1 %cmp2.3, label %sw.epilog, label %for.cond.3

for.cond.3:                                       ; preds = %for.cond.2
  %call.4 = tail call i32 @strcasecmp(i8* noundef %rev_arg, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.338, i64 0, i64 0)) #11
  %cmp2.4 = icmp eq i32 %call.4, 0
  br i1 %cmp2.4, label %sw.epilog, label %for.cond.4

for.cond.4:                                       ; preds = %for.cond.3
  %call.5 = tail call i32 @strcasecmp(i8* noundef %rev_arg, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.339, i64 0, i64 0)) #11
  %cmp2.5 = icmp eq i32 %call.5, 0
  br i1 %cmp2.5, label %sw.epilog, label %for.cond.5

for.cond.5:                                       ; preds = %for.cond.4
  %call.6 = tail call i32 @strcasecmp(i8* noundef %rev_arg, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.340, i64 0, i64 0)) #11
  %cmp2.6 = icmp eq i32 %call.6, 0
  br i1 %cmp2.6, label %sw.epilog, label %for.cond.6

for.cond.6:                                       ; preds = %for.cond.5
  %call.7 = tail call i32 @strcasecmp(i8* noundef %rev_arg, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.341, i64 0, i64 0)) #11
  %cmp2.7 = icmp eq i32 %call.7, 0
  br i1 %cmp2.7, label %sw.epilog, label %for.cond.7

for.cond.7:                                       ; preds = %for.cond.6
  %0 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call7 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %0, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.319, i64 0, i64 0), i8* noundef %rev_arg) #10
  br label %cleanup

sw.bb9:                                           ; preds = %entry
  %call10 = tail call %struct.asn1_object_st* @OBJ_txt2obj(i8* noundef %rev_arg, i32 noundef 0) #10
  tail call void @ASN1_OBJECT_free(%struct.asn1_object_st* noundef %call10) #10
  %cmp11 = icmp eq %struct.asn1_object_st* %call10, null
  br i1 %cmp11, label %if.then12, label %sw.epilog

if.then12:                                        ; preds = %sw.bb9
  %1 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call13 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %1, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.320, i64 0, i64 0), i8* noundef %rev_arg) #10
  br label %cleanup

sw.bb15:                                          ; preds = %entry, %entry
  %call16 = tail call i32 @ASN1_GENERALIZEDTIME_set_string(%struct.asn1_string_st* noundef null, i8* noundef %rev_arg) #10
  %tobool.not = icmp eq i32 %call16, 0
  br i1 %tobool.not, label %if.then17, label %if.end19

if.then17:                                        ; preds = %sw.bb15
  %2 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call18 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %2, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.322, i64 0, i64 0), i8* noundef %rev_arg) #10
  br label %cleanup

if.end19:                                         ; preds = %sw.bb15
  %cmp20 = icmp eq i32 %rev_type, 3
  %. = select i1 %cmp20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.323, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.324, i64 0, i64 0)
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.body.preheader, %for.cond, %for.cond.1, %for.cond.2, %for.cond.3, %for.cond.4, %for.cond.5, %for.cond.6, %if.end19, %sw.bb9, %entry
  %reason.1 = phi i8* [ null, %entry ], [ getelementptr inbounds ([16 x i8], [16 x i8]* @.str.321, i64 0, i64 0), %sw.bb9 ], [ %., %if.end19 ], [ getelementptr inbounds ([12 x i8], [12 x i8]* @.str.334, i64 0, i64 0), %for.body.preheader ], [ getelementptr inbounds ([14 x i8], [14 x i8]* @.str.335, i64 0, i64 0), %for.cond ], [ getelementptr inbounds ([13 x i8], [13 x i8]* @.str.336, i64 0, i64 0), %for.cond.1 ], [ getelementptr inbounds ([19 x i8], [19 x i8]* @.str.337, i64 0, i64 0), %for.cond.2 ], [ getelementptr inbounds ([11 x i8], [11 x i8]* @.str.338, i64 0, i64 0), %for.cond.3 ], [ getelementptr inbounds ([21 x i8], [21 x i8]* @.str.339, i64 0, i64 0), %for.cond.4 ], [ getelementptr inbounds ([16 x i8], [16 x i8]* @.str.340, i64 0, i64 0), %for.cond.5 ], [ getelementptr inbounds ([14 x i8], [14 x i8]* @.str.341, i64 0, i64 0), %for.cond.6 ]
  %other.0 = phi i8* [ null, %entry ], [ %rev_arg, %sw.bb9 ], [ %rev_arg, %if.end19 ], [ null, %for.body.preheader ], [ null, %for.cond ], [ null, %for.cond.1 ], [ null, %for.cond.2 ], [ null, %for.cond.3 ], [ null, %for.cond.4 ], [ null, %for.cond.5 ], [ null, %for.cond.6 ]
  %call23 = tail call %struct.asn1_string_st* @X509_gmtime_adj(%struct.asn1_string_st* noundef null, i64 noundef 0) #10
  %tobool24.not = icmp eq %struct.asn1_string_st* %call23, null
  br i1 %tobool24.not, label %cleanup, label %if.end26

if.end26:                                         ; preds = %sw.epilog
  %length = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %call23, i64 0, i32 0
  %3 = load i32, i32* %length, align 8, !tbaa !35
  %add = add nsw i32 %3, 1
  %tobool27.not = icmp eq i8* %reason.1, null
  br i1 %tobool27.not, label %if.end33, label %if.then28

if.then28:                                        ; preds = %if.end26
  %call29 = tail call i64 @strlen(i8* noundef nonnull %reason.1) #11
  %4 = trunc i64 %call29 to i32
  %5 = add i32 %3, 2
  %conv32 = add i32 %5, %4
  br label %if.end33

if.end33:                                         ; preds = %if.then28, %if.end26
  %i.1 = phi i32 [ %conv32, %if.then28 ], [ %add, %if.end26 ]
  %tobool34.not = icmp eq i8* %other.0, null
  br i1 %tobool34.not, label %if.end41, label %if.then35

if.then35:                                        ; preds = %if.end33
  %call36 = tail call i64 @strlen(i8* noundef nonnull %other.0) #11
  %6 = trunc i64 %call36 to i32
  %7 = add i32 %i.1, 1
  %conv40 = add i32 %7, %6
  br label %if.end41

if.end41:                                         ; preds = %if.then35, %if.end33
  %i.2 = phi i32 [ %conv40, %if.then35 ], [ %i.1, %if.end33 ]
  %conv42 = sext i32 %i.2 to i64
  %call43 = tail call i8* @app_malloc(i64 noundef %conv42, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.97, i64 0, i64 0)) #10
  %data = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %call23, i64 0, i32 2
  %8 = load i8*, i8** %data, align 8, !tbaa !37
  %call45 = tail call i64 @OPENSSL_strlcpy(i8* noundef %call43, i8* noundef %8, i64 noundef %conv42) #10
  br i1 %tobool27.not, label %if.end52, label %if.then47

if.then47:                                        ; preds = %if.end41
  %call49 = tail call i64 @OPENSSL_strlcat(i8* noundef %call43, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.325, i64 0, i64 0), i64 noundef %conv42) #10
  %call51 = tail call i64 @OPENSSL_strlcat(i8* noundef %call43, i8* noundef nonnull %reason.1, i64 noundef %conv42) #10
  br label %if.end52

if.end52:                                         ; preds = %if.then47, %if.end41
  br i1 %tobool34.not, label %if.end59, label %if.then54

if.then54:                                        ; preds = %if.end52
  %call56 = tail call i64 @OPENSSL_strlcat(i8* noundef %call43, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.325, i64 0, i64 0), i64 noundef %conv42) #10
  %call58 = tail call i64 @OPENSSL_strlcat(i8* noundef %call43, i8* noundef nonnull %other.0, i64 noundef %conv42) #10
  br label %if.end59

if.end59:                                         ; preds = %if.then54, %if.end52
  tail call void @ASN1_UTCTIME_free(%struct.asn1_string_st* noundef nonnull %call23) #10
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end59, %if.then17, %if.then12, %for.cond.7
  %retval.0 = phi i8* [ %call43, %if.end59 ], [ null, %if.then12 ], [ null, %for.cond.7 ], [ null, %if.then17 ], [ null, %sw.epilog ]
  ret i8* %retval.0
}

declare dso_local %struct.asn1_string_st* @X509_gmtime_adj(%struct.asn1_string_st* noundef, i64 noundef) local_unnamed_addr #3

declare dso_local void @ASN1_UTCTIME_free(%struct.asn1_string_st* noundef) local_unnamed_addr #3

declare dso_local void @make_uppercase(i8* noundef) local_unnamed_addr #3

declare dso_local %struct.asn1_string_st* @ASN1_TIME_new() local_unnamed_addr #3

declare dso_local void @ASN1_TIME_free(%struct.asn1_string_st* noundef) local_unnamed_addr #3

declare dso_local i32 @ASN1_TIME_compare(%struct.asn1_string_st* noundef, %struct.asn1_string_st* noundef) local_unnamed_addr #3

declare dso_local i32 @X509_REVOKED_set_revocationDate(%struct.x509_revoked_st* noundef, %struct.asn1_string_st* noundef) local_unnamed_addr #3

declare dso_local %struct.asn1_string_st* @ASN1_ENUMERATED_new() local_unnamed_addr #3

declare dso_local i32 @ASN1_ENUMERATED_set(%struct.asn1_string_st* noundef, i64 noundef) local_unnamed_addr #3

declare dso_local i32 @X509_REVOKED_add1_ext_i2d(%struct.x509_revoked_st* noundef, i32 noundef, i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

declare dso_local void @ASN1_ENUMERATED_free(%struct.asn1_string_st* noundef) local_unnamed_addr #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #3 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind }
attributes #10 = { nobuiltin nounwind "no-builtins" }
attributes #11 = { nobuiltin nounwind readonly willreturn "no-builtins" }
attributes #12 = { nobuiltin "no-builtins" }
attributes #13 = { nobuiltin nounwind readnone willreturn "no-builtins" }

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
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!14, !8, i64 0}
!14 = !{!"db_attr_st", !8, i64 0}
!15 = !{!5, !5, i64 0}
!16 = !{!17, !4, i64 8}
!17 = !{!"ca_db_st", !14, i64 0, !4, i64 8, !4, i64 16, !18, i64 24}
!18 = !{!"stat", !10, i64 0, !10, i64 8, !10, i64 16, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !19, i64 72, !19, i64 88, !19, i64 104, !5, i64 120}
!19 = !{!"timespec", !10, i64 0, !10, i64 8}
!20 = !{!21, !4, i64 8}
!21 = !{!"txt_db_st", !8, i64 0, !4, i64 8, !4, i64 16, !4, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !4, i64 56}
!22 = distinct !{!22, !12}
!23 = !{!24, !24, i64 0}
!24 = !{!"short", !5, i64 0}
!25 = distinct !{!25, !12}
!26 = distinct !{!26, !12}
!27 = distinct !{!27, !12}
!28 = distinct !{!28, !12}
!29 = distinct !{!29, !12}
!30 = distinct !{!30, !12}
!31 = !{!32, !4, i64 8}
!32 = !{!"", !4, i64 0, !4, i64 8, !4, i64 16}
!33 = distinct !{!33, !12}
!34 = !{!32, !4, i64 16}
!35 = !{!36, !8, i64 0}
!36 = !{!"asn1_string_st", !8, i64 0, !8, i64 4, !4, i64 8, !10, i64 16}
!37 = !{!36, !4, i64 8}
!38 = !{!21, !10, i64 32}
!39 = !{!36, !8, i64 4}
!40 = distinct !{!40, !12}
!41 = distinct !{!41, !12}
!42 = distinct !{!42, !12}
!43 = !{!17, !8, i64 0}
!44 = distinct !{!44, !12, !45}
!45 = !{!"llvm.loop.isvectorized", i32 1}
!46 = distinct !{!46, !47}
!47 = !{!"llvm.loop.unroll.disable"}
!48 = distinct !{!48, !12, !49, !45}
!49 = !{!"llvm.loop.unroll.runtime.disable"}
!50 = distinct !{!50, !12}
