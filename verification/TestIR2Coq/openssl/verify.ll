; ModuleID = 'apps/verify.c'
source_filename = "apps/verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.options_st = type { i8*, i32, i32, i8* }
%struct.bio_st = type opaque
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.stack_st_X509 = type opaque
%struct.stack_st_X509_CRL = type opaque
%struct.X509_VERIFY_PARAM_st = type opaque
%struct.stack_st_OPENSSL_STRING = type opaque
%struct.engine_st = type opaque
%struct.x509_purpose_st = type { i32, i32, i32, i32 (%struct.x509_purpose_st*, %struct.x509_st*, i32)*, i8*, i8*, i8* }
%struct.x509_st = type opaque
%struct.stack_st = type opaque
%struct.x509_store_st = type opaque
%struct.x509_store_ctx_st = type opaque
%struct.X509_name_st = type opaque
%struct.X509_crl_st = type opaque

@OPT_HELP_STR = external dso_local constant [0 x i8], align 1
@.str = private unnamed_addr constant [31 x i8] c"Usage: %s [options] [cert...]\0A\00", align 1
@OPT_SECTION_STR = external dso_local constant [0 x i8], align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"General options:\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Display this summary\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"engine\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"Use engine, possibly a hardware device\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"verbose\00", align 1
@.str.7 = private unnamed_addr constant [62 x i8] c"Print extra information about the operations being performed.\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"nameopt\00", align 1
@.str.9 = private unnamed_addr constant [49 x i8] c"Certificate subject/issuer name printing options\00", align 1
@.str.10 = private unnamed_addr constant [28 x i8] c"Certificate chain options:\0A\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"trusted\00", align 1
@.str.12 = private unnamed_addr constant [31 x i8] c"A file of trusted certificates\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"CAfile\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"CApath\00", align 1
@.str.15 = private unnamed_addr constant [47 x i8] c"A directory of files with trusted certificates\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"CAstore\00", align 1
@.str.17 = private unnamed_addr constant [39 x i8] c"URI to a store of trusted certificates\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"no-CAfile\00", align 1
@.str.19 = private unnamed_addr constant [50 x i8] c"Do not load the default trusted certificates file\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"no-CApath\00", align 1
@.str.21 = private unnamed_addr constant [60 x i8] c"Do not load trusted certificates from the default directory\00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c"no-CAstore\00", align 1
@.str.23 = private unnamed_addr constant [69 x i8] c"Do not load trusted certificates from the default certificates store\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"untrusted\00", align 1
@.str.25 = private unnamed_addr constant [33 x i8] c"A file of untrusted certificates\00", align 1
@.str.26 = private unnamed_addr constant [8 x i8] c"CRLfile\00", align 1
@.str.27 = private unnamed_addr constant [58 x i8] c"File containing one or more CRL's (in PEM format) to load\00", align 1
@.str.28 = private unnamed_addr constant [13 x i8] c"crl_download\00", align 1
@.str.29 = private unnamed_addr constant [71 x i8] c"Try downloading CRL information for certificates via their CDP entries\00", align 1
@.str.30 = private unnamed_addr constant [11 x i8] c"show_chain\00", align 1
@.str.31 = private unnamed_addr constant [48 x i8] c"Display information about the certificate chain\00", align 1
@.str.32 = private unnamed_addr constant [21 x i8] c"Validation options:\0A\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"policy\00", align 1
@.str.34 = private unnamed_addr constant [41 x i8] c"adds policy to the acceptable policy set\00", align 1
@.str.35 = private unnamed_addr constant [8 x i8] c"purpose\00", align 1
@.str.36 = private unnamed_addr constant [26 x i8] c"certificate chain purpose\00", align 1
@.str.37 = private unnamed_addr constant [12 x i8] c"verify_name\00", align 1
@.str.38 = private unnamed_addr constant [25 x i8] c"verification policy name\00", align 1
@.str.39 = private unnamed_addr constant [13 x i8] c"verify_depth\00", align 1
@.str.40 = private unnamed_addr constant [18 x i8] c"chain depth limit\00", align 1
@.str.41 = private unnamed_addr constant [11 x i8] c"auth_level\00", align 1
@.str.42 = private unnamed_addr constant [36 x i8] c"chain authentication security level\00", align 1
@.str.43 = private unnamed_addr constant [7 x i8] c"attime\00", align 1
@.str.44 = private unnamed_addr constant [24 x i8] c"verification epoch time\00", align 1
@.str.45 = private unnamed_addr constant [16 x i8] c"verify_hostname\00", align 1
@.str.46 = private unnamed_addr constant [23 x i8] c"expected peer hostname\00", align 1
@.str.47 = private unnamed_addr constant [13 x i8] c"verify_email\00", align 1
@.str.48 = private unnamed_addr constant [20 x i8] c"expected peer email\00", align 1
@.str.49 = private unnamed_addr constant [10 x i8] c"verify_ip\00", align 1
@.str.50 = private unnamed_addr constant [25 x i8] c"expected peer IP address\00", align 1
@.str.51 = private unnamed_addr constant [16 x i8] c"ignore_critical\00", align 1
@.str.52 = private unnamed_addr constant [37 x i8] c"permit unhandled critical extensions\00", align 1
@.str.53 = private unnamed_addr constant [14 x i8] c"issuer_checks\00", align 1
@.str.54 = private unnamed_addr constant [13 x i8] c"(deprecated)\00", align 1
@.str.55 = private unnamed_addr constant [10 x i8] c"crl_check\00", align 1
@.str.56 = private unnamed_addr constant [34 x i8] c"check leaf certificate revocation\00", align 1
@.str.57 = private unnamed_addr constant [14 x i8] c"crl_check_all\00", align 1
@.str.58 = private unnamed_addr constant [28 x i8] c"check full chain revocation\00", align 1
@.str.59 = private unnamed_addr constant [13 x i8] c"policy_check\00", align 1
@.str.60 = private unnamed_addr constant [30 x i8] c"perform rfc5280 policy checks\00", align 1
@.str.61 = private unnamed_addr constant [16 x i8] c"explicit_policy\00", align 1
@.str.62 = private unnamed_addr constant [44 x i8] c"set policy variable require-explicit-policy\00", align 1
@.str.63 = private unnamed_addr constant [12 x i8] c"inhibit_any\00", align 1
@.str.64 = private unnamed_addr constant [39 x i8] c"set policy variable inhibit-any-policy\00", align 1
@.str.65 = private unnamed_addr constant [12 x i8] c"inhibit_map\00", align 1
@.str.66 = private unnamed_addr constant [43 x i8] c"set policy variable inhibit-policy-mapping\00", align 1
@.str.67 = private unnamed_addr constant [12 x i8] c"x509_strict\00", align 1
@.str.68 = private unnamed_addr constant [47 x i8] c"disable certificate compatibility work-arounds\00", align 1
@.str.69 = private unnamed_addr constant [13 x i8] c"extended_crl\00", align 1
@.str.70 = private unnamed_addr constant [29 x i8] c"enable extended CRL features\00", align 1
@.str.71 = private unnamed_addr constant [11 x i8] c"use_deltas\00", align 1
@.str.72 = private unnamed_addr constant [15 x i8] c"use delta CRLs\00", align 1
@.str.73 = private unnamed_addr constant [13 x i8] c"policy_print\00", align 1
@.str.74 = private unnamed_addr constant [36 x i8] c"print policy processing diagnostics\00", align 1
@.str.75 = private unnamed_addr constant [13 x i8] c"check_ss_sig\00", align 1
@.str.76 = private unnamed_addr constant [30 x i8] c"check root CA self-signatures\00", align 1
@.str.77 = private unnamed_addr constant [14 x i8] c"trusted_first\00", align 1
@.str.78 = private unnamed_addr constant [35 x i8] c"search trust store first (default)\00", align 1
@.str.79 = private unnamed_addr constant [16 x i8] c"suiteB_128_only\00", align 1
@.str.80 = private unnamed_addr constant [26 x i8] c"Suite B 128-bit-only mode\00", align 1
@.str.81 = private unnamed_addr constant [11 x i8] c"suiteB_128\00", align 1
@.str.82 = private unnamed_addr constant [49 x i8] c"Suite B 128-bit mode allowing 192-bit algorithms\00", align 1
@.str.83 = private unnamed_addr constant [11 x i8] c"suiteB_192\00", align 1
@.str.84 = private unnamed_addr constant [26 x i8] c"Suite B 192-bit-only mode\00", align 1
@.str.85 = private unnamed_addr constant [14 x i8] c"partial_chain\00", align 1
@.str.86 = private unnamed_addr constant [55 x i8] c"accept chains anchored by intermediate trust-store CAs\00", align 1
@.str.87 = private unnamed_addr constant [14 x i8] c"no_alt_chains\00", align 1
@.str.88 = private unnamed_addr constant [14 x i8] c"no_check_time\00", align 1
@.str.89 = private unnamed_addr constant [33 x i8] c"ignore certificate validity time\00", align 1
@.str.90 = private unnamed_addr constant [18 x i8] c"allow_proxy_certs\00", align 1
@.str.91 = private unnamed_addr constant [36 x i8] c"allow the use of proxy certificates\00", align 1
@.str.92 = private unnamed_addr constant [7 x i8] c"vfyopt\00", align 1
@.str.93 = private unnamed_addr constant [35 x i8] c"Verification parameter in n:v form\00", align 1
@.str.94 = private unnamed_addr constant [19 x i8] c"Provider options:\0A\00", align 1
@.str.95 = private unnamed_addr constant [14 x i8] c"provider-path\00", align 1
@.str.96 = private unnamed_addr constant [68 x i8] c"Provider load path (must be before 'provider' argument if required)\00", align 1
@.str.97 = private unnamed_addr constant [9 x i8] c"provider\00", align 1
@.str.98 = private unnamed_addr constant [51 x i8] c"Provider to load (can be specified multiple times)\00", align 1
@.str.99 = private unnamed_addr constant [10 x i8] c"propquery\00", align 1
@.str.100 = private unnamed_addr constant [45 x i8] c"Property query used when fetching algorithms\00", align 1
@OPT_PARAM_STR = external dso_local constant [0 x i8], align 1
@.str.101 = private unnamed_addr constant [13 x i8] c"Parameters:\0A\00", align 1
@.str.102 = private unnamed_addr constant [5 x i8] c"cert\00", align 1
@.str.103 = private unnamed_addr constant [58 x i8] c"Certificate(s) to verify (optional; stdin used otherwise)\00", align 1
@verify_options = dso_local constant [57 x %struct.options_st] [%struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_HELP_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i32 2, i32 115, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), i32 2034, i32 45, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.7, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), i32 2032, i32 115, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.9, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0), i32 10, i32 60, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.12, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i32 0, i32 0), i32 4, i32 60, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.12, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0), i32 3, i32 47, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.15, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i32 0, i32 0), i32 5, i32 58, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.17, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i32 0, i32 0), i32 7, i32 45, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.19, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i32 0, i32 0), i32 6, i32 45, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.21, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i32 0, i32 0), i32 8, i32 45, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.23, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i32 0, i32 0), i32 9, i32 60, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.25, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i32 0, i32 0), i32 11, i32 60, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.27, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.28, i32 0, i32 0), i32 12, i32 45, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.29, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.30, i32 0, i32 0), i32 13, i32 45, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.31, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.32, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.33, i32 0, i32 0), i32 2001, i32 115, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.34, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.35, i32 0, i32 0), i32 2002, i32 115, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.36, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.37, i32 0, i32 0), i32 2003, i32 115, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.38, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.39, i32 0, i32 0), i32 2004, i32 110, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.40, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.41, i32 0, i32 0), i32 2029, i32 110, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.42, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.43, i32 0, i32 0), i32 2005, i32 77, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.44, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.45, i32 0, i32 0), i32 2006, i32 115, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.46, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.47, i32 0, i32 0), i32 2007, i32 115, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.48, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.49, i32 0, i32 0), i32 2008, i32 115, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.50, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.51, i32 0, i32 0), i32 2009, i32 45, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.52, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.53, i32 0, i32 0), i32 2010, i32 45, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.54, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.55, i32 0, i32 0), i32 2011, i32 45, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.56, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.57, i32 0, i32 0), i32 2012, i32 45, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.58, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.59, i32 0, i32 0), i32 2013, i32 45, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.60, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.61, i32 0, i32 0), i32 2014, i32 45, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.62, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.63, i32 0, i32 0), i32 2015, i32 45, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.64, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.65, i32 0, i32 0), i32 2016, i32 45, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.66, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.67, i32 0, i32 0), i32 2017, i32 45, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.68, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.69, i32 0, i32 0), i32 2018, i32 45, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.70, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.71, i32 0, i32 0), i32 2019, i32 45, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.72, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.73, i32 0, i32 0), i32 2020, i32 45, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.74, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.75, i32 0, i32 0), i32 2021, i32 45, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.76, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.77, i32 0, i32 0), i32 2022, i32 45, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.78, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.79, i32 0, i32 0), i32 2023, i32 45, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.80, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.81, i32 0, i32 0), i32 2024, i32 45, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.82, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.83, i32 0, i32 0), i32 2025, i32 45, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.84, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.85, i32 0, i32 0), i32 2026, i32 45, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.86, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.87, i32 0, i32 0), i32 2027, i32 45, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.54, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.88, i32 0, i32 0), i32 2028, i32 45, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.89, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.90, i32 0, i32 0), i32 2030, i32 45, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.91, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.92, i32 0, i32 0), i32 2033, i32 115, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.93, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.94, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.95, i32 0, i32 0), i32 1602, i32 115, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.96, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.97, i32 0, i32 0), i32 1601, i32 115, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.98, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.99, i32 0, i32 0), i32 1603, i32 115, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.100, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_PARAM_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.101, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.102, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.103, i32 0, i32 0) }, %struct.options_st zeroinitializer], align 16
@bio_err = external dso_local local_unnamed_addr global %struct.bio_st*, align 8
@.str.104 = private unnamed_addr constant [28 x i8] c"%s: Use -help for summary.\0A\00", align 1
@.str.105 = private unnamed_addr constant [41 x i8] c"\0ARecognized certificate chain purposes:\0A\00", align 1
@.str.106 = private unnamed_addr constant [13 x i8] c"  %-15s  %s\0A\00", align 1
@.str.107 = private unnamed_addr constant [38 x i8] c"Recognized certificate policy names:\0A\00", align 1
@.str.108 = private unnamed_addr constant [6 x i8] c"  %s\0A\00", align 1
@.str.109 = private unnamed_addr constant [23 x i8] c"untrusted certificates\00", align 1
@.str.110 = private unnamed_addr constant [21 x i8] c"trusted certificates\00", align 1
@.str.111 = private unnamed_addr constant [11 x i8] c"other CRLs\00", align 1
@v_verbose = internal unnamed_addr global i1 false, align 4
@.str.112 = private unnamed_addr constant [59 x i8] c"%s: Cannot use -trusted with -CAfile, -CApath or -CAstore\0A\00", align 1
@.str.113 = private unnamed_addr constant [17 x i8] c"certificate file\00", align 1
@.str.114 = private unnamed_addr constant [22 x i8] c"parameter error \22%s\22\0A\00", align 1
@.str.115 = private unnamed_addr constant [49 x i8] c"error %s: X.509 store context allocation failed\0A\00", align 1
@.str.116 = private unnamed_addr constant [6 x i8] c"stdin\00", align 1
@.str.117 = private unnamed_addr constant [53 x i8] c"error %s: X.509 store context initialization failed\0A\00", align 1
@bio_out = external dso_local local_unnamed_addr global %struct.bio_st*, align 8
@.str.118 = private unnamed_addr constant [8 x i8] c"%s: OK\0A\00", align 1
@.str.119 = private unnamed_addr constant [8 x i8] c"Chain:\0A\00", align 1
@.str.120 = private unnamed_addr constant [11 x i8] c"depth=%d: \00", align 1
@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.121 = private unnamed_addr constant [13 x i8] c" (untrusted)\00", align 1
@.str.122 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.123 = private unnamed_addr constant [31 x i8] c"error %s: verification failed\0A\00", align 1
@.str.124 = private unnamed_addr constant [35 x i8] c"%serror %d at %d depth lookup: %s\0A\00", align 1
@.str.125 = private unnamed_addr constant [12 x i8] c"[CRL path] \00", align 1
@.str.126 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @verify_main(i32 noundef %argc, i8** noundef %argv) local_unnamed_addr #0 {
entry:
  %untrusted = alloca %struct.stack_st_X509*, align 8
  %trusted = alloca %struct.stack_st_X509*, align 8
  %crls = alloca %struct.stack_st_X509_CRL*, align 8
  %0 = bitcast %struct.stack_st_X509** %untrusted to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #4
  store %struct.stack_st_X509* null, %struct.stack_st_X509** %untrusted, align 8, !tbaa !3
  %1 = bitcast %struct.stack_st_X509** %trusted to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #4
  store %struct.stack_st_X509* null, %struct.stack_st_X509** %trusted, align 8, !tbaa !3
  %2 = bitcast %struct.stack_st_X509_CRL** %crls to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #4
  store %struct.stack_st_X509_CRL* null, %struct.stack_st_X509_CRL** %crls, align 8, !tbaa !3
  %call = tail call %struct.X509_VERIFY_PARAM_st* @X509_VERIFY_PARAM_new() #5
  %cmp = icmp eq %struct.X509_VERIFY_PARAM_st* %call, null
  br i1 %cmp, label %end, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call i8* @opt_init(i32 noundef %argc, i8** noundef %argv, %struct.options_st* noundef getelementptr inbounds ([57 x %struct.options_st], [57 x %struct.options_st]* @verify_options, i64 0, i64 0)) #5
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %if.end
  %vfyopts.0 = phi %struct.stack_st_OPENSSL_STRING* [ null, %if.end ], [ %vfyopts.0.be, %while.cond.backedge ]
  %CApath.0 = phi i8* [ null, %if.end ], [ %CApath.0.be, %while.cond.backedge ]
  %CAfile.0 = phi i8* [ null, %if.end ], [ %CAfile.0.be, %while.cond.backedge ]
  %CAstore.0 = phi i8* [ null, %if.end ], [ %CAstore.0.be, %while.cond.backedge ]
  %noCApath.0 = phi i32 [ 0, %if.end ], [ %noCApath.0.be, %while.cond.backedge ]
  %noCAfile.0 = phi i32 [ 0, %if.end ], [ %noCAfile.0.be, %while.cond.backedge ]
  %noCAstore.0 = phi i32 [ 0, %if.end ], [ %noCAstore.0.be, %while.cond.backedge ]
  %vpmtouched.0 = phi i32 [ 0, %if.end ], [ %vpmtouched.0.be, %while.cond.backedge ]
  %crl_download.0 = phi i32 [ 0, %if.end ], [ %crl_download.0.be, %while.cond.backedge ]
  %show_chain.0 = phi i32 [ 0, %if.end ], [ %show_chain.0.be, %while.cond.backedge ]
  %e.0 = phi %struct.engine_st* [ null, %if.end ], [ %e.0.be, %while.cond.backedge ]
  %call2 = call i32 @opt_next() #5
  switch i32 %call2, label %while.cond.backedge [
    i32 0, label %while.end
    i32 1601, label %sw.bb86
    i32 -1, label %opthelp
    i32 1, label %sw.bb5
    i32 1603, label %sw.bb86
    i32 1602, label %sw.bb86
    i32 2001, label %sw.bb25
    i32 2002, label %sw.bb25
    i32 2003, label %sw.bb25
    i32 2004, label %sw.bb25
    i32 2029, label %sw.bb25
    i32 2005, label %sw.bb25
    i32 2006, label %sw.bb25
    i32 2007, label %sw.bb25
    i32 2008, label %sw.bb25
    i32 2009, label %sw.bb25
    i32 2010, label %sw.bb25
    i32 2011, label %sw.bb25
    i32 2012, label %sw.bb25
    i32 2013, label %sw.bb25
    i32 2014, label %sw.bb25
    i32 2015, label %sw.bb25
    i32 2016, label %sw.bb25
    i32 2017, label %sw.bb25
    i32 2018, label %sw.bb25
    i32 2019, label %sw.bb25
    i32 2020, label %sw.bb25
    i32 2021, label %sw.bb25
    i32 2022, label %sw.bb25
    i32 2023, label %sw.bb25
    i32 2024, label %sw.bb25
    i32 2025, label %sw.bb25
    i32 2026, label %sw.bb25
    i32 2027, label %sw.bb25
    i32 2028, label %sw.bb25
    i32 2030, label %sw.bb25
    i32 3, label %sw.bb30
    i32 4, label %sw.bb32
    i32 5, label %sw.bb34
    i32 6, label %sw.bb36
    i32 7, label %sw.bb37
    i32 8, label %sw.bb38
    i32 9, label %sw.bb39
    i32 10, label %sw.bb45
    i32 11, label %sw.bb51
    i32 12, label %sw.bb57
    i32 2, label %sw.bb58
    i32 13, label %sw.bb64
    i32 2032, label %sw.bb65
    i32 2033, label %sw.bb71
    i32 2034, label %sw.bb84
  ]

while.cond.backedge:                              ; preds = %while.cond, %sw.bb86, %lor.lhs.false, %sw.bb65, %sw.bb58, %sw.bb51, %sw.bb45, %sw.bb39, %sw.bb84, %sw.bb64, %sw.bb57, %sw.bb38, %sw.bb37, %sw.bb36, %sw.bb34, %sw.bb32, %sw.bb30, %if.end28
  %vfyopts.0.be = phi %struct.stack_st_OPENSSL_STRING* [ %vfyopts.0, %sw.bb84 ], [ %vfyopts.2194, %lor.lhs.false ], [ %vfyopts.0, %sw.bb65 ], [ %vfyopts.0, %sw.bb64 ], [ %vfyopts.0, %sw.bb58 ], [ %vfyopts.0, %sw.bb57 ], [ %vfyopts.0, %sw.bb51 ], [ %vfyopts.0, %sw.bb45 ], [ %vfyopts.0, %sw.bb39 ], [ %vfyopts.0, %sw.bb38 ], [ %vfyopts.0, %sw.bb37 ], [ %vfyopts.0, %sw.bb36 ], [ %vfyopts.0, %sw.bb34 ], [ %vfyopts.0, %sw.bb32 ], [ %vfyopts.0, %sw.bb30 ], [ %vfyopts.0, %if.end28 ], [ %vfyopts.0, %sw.bb86 ], [ %vfyopts.0, %while.cond ]
  %CApath.0.be = phi i8* [ %CApath.0, %sw.bb84 ], [ %CApath.0, %lor.lhs.false ], [ %CApath.0, %sw.bb65 ], [ %CApath.0, %sw.bb64 ], [ %CApath.0, %sw.bb58 ], [ %CApath.0, %sw.bb57 ], [ %CApath.0, %sw.bb51 ], [ %CApath.0, %sw.bb45 ], [ %CApath.0, %sw.bb39 ], [ %CApath.0, %sw.bb38 ], [ %CApath.0, %sw.bb37 ], [ %CApath.0, %sw.bb36 ], [ %CApath.0, %sw.bb34 ], [ %CApath.0, %sw.bb32 ], [ %call31, %sw.bb30 ], [ %CApath.0, %if.end28 ], [ %CApath.0, %sw.bb86 ], [ %CApath.0, %while.cond ]
  %CAfile.0.be = phi i8* [ %CAfile.0, %sw.bb84 ], [ %CAfile.0, %lor.lhs.false ], [ %CAfile.0, %sw.bb65 ], [ %CAfile.0, %sw.bb64 ], [ %CAfile.0, %sw.bb58 ], [ %CAfile.0, %sw.bb57 ], [ %CAfile.0, %sw.bb51 ], [ %CAfile.0, %sw.bb45 ], [ %CAfile.0, %sw.bb39 ], [ %CAfile.0, %sw.bb38 ], [ %CAfile.0, %sw.bb37 ], [ %CAfile.0, %sw.bb36 ], [ %CAfile.0, %sw.bb34 ], [ %call33, %sw.bb32 ], [ %CAfile.0, %sw.bb30 ], [ %CAfile.0, %if.end28 ], [ %CAfile.0, %sw.bb86 ], [ %CAfile.0, %while.cond ]
  %CAstore.0.be = phi i8* [ %CAstore.0, %sw.bb84 ], [ %CAstore.0, %lor.lhs.false ], [ %CAstore.0, %sw.bb65 ], [ %CAstore.0, %sw.bb64 ], [ %CAstore.0, %sw.bb58 ], [ %CAstore.0, %sw.bb57 ], [ %CAstore.0, %sw.bb51 ], [ %CAstore.0, %sw.bb45 ], [ %CAstore.0, %sw.bb39 ], [ %CAstore.0, %sw.bb38 ], [ %CAstore.0, %sw.bb37 ], [ %CAstore.0, %sw.bb36 ], [ %call35, %sw.bb34 ], [ %CAstore.0, %sw.bb32 ], [ %CAstore.0, %sw.bb30 ], [ %CAstore.0, %if.end28 ], [ %CAstore.0, %sw.bb86 ], [ %CAstore.0, %while.cond ]
  %noCApath.0.be = phi i32 [ %noCApath.0, %sw.bb84 ], [ %noCApath.0, %lor.lhs.false ], [ %noCApath.0, %sw.bb65 ], [ %noCApath.0, %sw.bb64 ], [ %noCApath.0, %sw.bb58 ], [ %noCApath.0, %sw.bb57 ], [ %noCApath.0, %sw.bb51 ], [ 1, %sw.bb45 ], [ %noCApath.0, %sw.bb39 ], [ %noCApath.0, %sw.bb38 ], [ %noCApath.0, %sw.bb37 ], [ 1, %sw.bb36 ], [ %noCApath.0, %sw.bb34 ], [ %noCApath.0, %sw.bb32 ], [ %noCApath.0, %sw.bb30 ], [ %noCApath.0, %if.end28 ], [ %noCApath.0, %sw.bb86 ], [ %noCApath.0, %while.cond ]
  %noCAfile.0.be = phi i32 [ %noCAfile.0, %sw.bb84 ], [ %noCAfile.0, %lor.lhs.false ], [ %noCAfile.0, %sw.bb65 ], [ %noCAfile.0, %sw.bb64 ], [ %noCAfile.0, %sw.bb58 ], [ %noCAfile.0, %sw.bb57 ], [ %noCAfile.0, %sw.bb51 ], [ 1, %sw.bb45 ], [ %noCAfile.0, %sw.bb39 ], [ %noCAfile.0, %sw.bb38 ], [ 1, %sw.bb37 ], [ %noCAfile.0, %sw.bb36 ], [ %noCAfile.0, %sw.bb34 ], [ %noCAfile.0, %sw.bb32 ], [ %noCAfile.0, %sw.bb30 ], [ %noCAfile.0, %if.end28 ], [ %noCAfile.0, %sw.bb86 ], [ %noCAfile.0, %while.cond ]
  %noCAstore.0.be = phi i32 [ %noCAstore.0, %sw.bb84 ], [ %noCAstore.0, %lor.lhs.false ], [ %noCAstore.0, %sw.bb65 ], [ %noCAstore.0, %sw.bb64 ], [ %noCAstore.0, %sw.bb58 ], [ %noCAstore.0, %sw.bb57 ], [ %noCAstore.0, %sw.bb51 ], [ 1, %sw.bb45 ], [ %noCAstore.0, %sw.bb39 ], [ 1, %sw.bb38 ], [ %noCAstore.0, %sw.bb37 ], [ %noCAstore.0, %sw.bb36 ], [ %noCAstore.0, %sw.bb34 ], [ %noCAstore.0, %sw.bb32 ], [ %noCAstore.0, %sw.bb30 ], [ %noCAstore.0, %if.end28 ], [ %noCAstore.0, %sw.bb86 ], [ %noCAstore.0, %while.cond ]
  %vpmtouched.0.be = phi i32 [ %vpmtouched.0, %sw.bb84 ], [ %vpmtouched.0, %lor.lhs.false ], [ %vpmtouched.0, %sw.bb65 ], [ %vpmtouched.0, %sw.bb64 ], [ %vpmtouched.0, %sw.bb58 ], [ %vpmtouched.0, %sw.bb57 ], [ %vpmtouched.0, %sw.bb51 ], [ %vpmtouched.0, %sw.bb45 ], [ %vpmtouched.0, %sw.bb39 ], [ %vpmtouched.0, %sw.bb38 ], [ %vpmtouched.0, %sw.bb37 ], [ %vpmtouched.0, %sw.bb36 ], [ %vpmtouched.0, %sw.bb34 ], [ %vpmtouched.0, %sw.bb32 ], [ %vpmtouched.0, %sw.bb30 ], [ %inc29, %if.end28 ], [ %vpmtouched.0, %sw.bb86 ], [ %vpmtouched.0, %while.cond ]
  %crl_download.0.be = phi i32 [ %crl_download.0, %sw.bb84 ], [ %crl_download.0, %lor.lhs.false ], [ %crl_download.0, %sw.bb65 ], [ %crl_download.0, %sw.bb64 ], [ %crl_download.0, %sw.bb58 ], [ 1, %sw.bb57 ], [ %crl_download.0, %sw.bb51 ], [ %crl_download.0, %sw.bb45 ], [ %crl_download.0, %sw.bb39 ], [ %crl_download.0, %sw.bb38 ], [ %crl_download.0, %sw.bb37 ], [ %crl_download.0, %sw.bb36 ], [ %crl_download.0, %sw.bb34 ], [ %crl_download.0, %sw.bb32 ], [ %crl_download.0, %sw.bb30 ], [ %crl_download.0, %if.end28 ], [ %crl_download.0, %sw.bb86 ], [ %crl_download.0, %while.cond ]
  %show_chain.0.be = phi i32 [ %show_chain.0, %sw.bb84 ], [ %show_chain.0, %lor.lhs.false ], [ %show_chain.0, %sw.bb65 ], [ 1, %sw.bb64 ], [ %show_chain.0, %sw.bb58 ], [ %show_chain.0, %sw.bb57 ], [ %show_chain.0, %sw.bb51 ], [ %show_chain.0, %sw.bb45 ], [ %show_chain.0, %sw.bb39 ], [ %show_chain.0, %sw.bb38 ], [ %show_chain.0, %sw.bb37 ], [ %show_chain.0, %sw.bb36 ], [ %show_chain.0, %sw.bb34 ], [ %show_chain.0, %sw.bb32 ], [ %show_chain.0, %sw.bb30 ], [ %show_chain.0, %if.end28 ], [ %show_chain.0, %sw.bb86 ], [ %show_chain.0, %while.cond ]
  %e.0.be = phi %struct.engine_st* [ %e.0, %sw.bb84 ], [ %e.0, %lor.lhs.false ], [ %e.0, %sw.bb65 ], [ %e.0, %sw.bb64 ], [ %call60, %sw.bb58 ], [ %e.0, %sw.bb57 ], [ %e.0, %sw.bb51 ], [ %e.0, %sw.bb45 ], [ %e.0, %sw.bb39 ], [ %e.0, %sw.bb38 ], [ %e.0, %sw.bb37 ], [ %e.0, %sw.bb36 ], [ %e.0, %sw.bb34 ], [ %e.0, %sw.bb32 ], [ %e.0, %sw.bb30 ], [ %e.0, %if.end28 ], [ %e.0, %sw.bb86 ], [ %e.0, %while.cond ]
  br label %while.cond, !llvm.loop !7

opthelp:                                          ; preds = %while.cond, %if.end75, %lor.lhs.false
  %vfyopts.1 = phi %struct.stack_st_OPENSSL_STRING* [ %vfyopts.2194, %lor.lhs.false ], [ null, %if.end75 ], [ %vfyopts.0, %while.cond ]
  %3 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call4 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %3, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.104, i64 0, i64 0), i8* noundef %call1) #5
  br label %end

sw.bb5:                                           ; preds = %while.cond
  call void @opt_help(%struct.options_st* noundef getelementptr inbounds ([57 x %struct.options_st], [57 x %struct.options_st]* @verify_options, i64 0, i64 0)) #5
  %4 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call6 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %4, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.105, i64 0, i64 0)) #5
  %call7231 = call i32 @X509_PURPOSE_get_count() #5
  %cmp8232 = icmp sgt i32 %call7231, 0
  br i1 %cmp8232, label %for.body, label %for.end

for.body:                                         ; preds = %sw.bb5, %for.body
  %i.0233 = phi i32 [ %inc, %for.body ], [ 0, %sw.bb5 ]
  %call9 = call %struct.x509_purpose_st* @X509_PURPOSE_get0(i32 noundef %i.0233) #5
  %5 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call10 = call i8* @X509_PURPOSE_get0_sname(%struct.x509_purpose_st* noundef %call9) #5
  %call11 = call i8* @X509_PURPOSE_get0_name(%struct.x509_purpose_st* noundef %call9) #5
  %call12 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %5, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.106, i64 0, i64 0), i8* noundef %call10, i8* noundef %call11) #5
  %inc = add nuw nsw i32 %i.0233, 1
  %call7 = call i32 @X509_PURPOSE_get_count() #5
  %cmp8 = icmp slt i32 %inc, %call7
  br i1 %cmp8, label %for.body, label %for.end, !llvm.loop !9

for.end:                                          ; preds = %for.body, %sw.bb5
  %6 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call13 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %6, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.107, i64 0, i64 0)) #5
  %call15234 = call i32 @X509_VERIFY_PARAM_get_count() #5
  %cmp16235 = icmp sgt i32 %call15234, 0
  br i1 %cmp16235, label %for.body17, label %end

for.body17:                                       ; preds = %for.end, %for.body17
  %i.1236 = phi i32 [ %inc22, %for.body17 ], [ 0, %for.end ]
  %call18 = call %struct.X509_VERIFY_PARAM_st* @X509_VERIFY_PARAM_get0(i32 noundef %i.1236) #5
  %7 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call19 = call i8* @X509_VERIFY_PARAM_get0_name(%struct.X509_VERIFY_PARAM_st* noundef %call18) #5
  %call20 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %7, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.108, i64 0, i64 0), i8* noundef %call19) #5
  %inc22 = add nuw nsw i32 %i.1236, 1
  %call15 = call i32 @X509_VERIFY_PARAM_get_count() #5
  %cmp16 = icmp slt i32 %inc22, %call15
  br i1 %cmp16, label %for.body17, label %end, !llvm.loop !10

sw.bb25:                                          ; preds = %while.cond, %while.cond, %while.cond, %while.cond, %while.cond, %while.cond, %while.cond, %while.cond, %while.cond, %while.cond, %while.cond, %while.cond, %while.cond, %while.cond, %while.cond, %while.cond, %while.cond, %while.cond, %while.cond, %while.cond, %while.cond, %while.cond, %while.cond, %while.cond, %while.cond, %while.cond, %while.cond, %while.cond, %while.cond, %while.cond
  %call26 = call i32 @opt_verify(i32 noundef %call2, %struct.X509_VERIFY_PARAM_st* noundef nonnull %call) #5
  %tobool.not = icmp eq i32 %call26, 0
  br i1 %tobool.not, label %end, label %if.end28

if.end28:                                         ; preds = %sw.bb25
  %inc29 = add nsw i32 %vpmtouched.0, 1
  br label %while.cond.backedge

sw.bb30:                                          ; preds = %while.cond
  %call31 = call i8* @opt_arg() #5
  br label %while.cond.backedge

sw.bb32:                                          ; preds = %while.cond
  %call33 = call i8* @opt_arg() #5
  br label %while.cond.backedge

sw.bb34:                                          ; preds = %while.cond
  %call35 = call i8* @opt_arg() #5
  br label %while.cond.backedge

sw.bb36:                                          ; preds = %while.cond
  br label %while.cond.backedge

sw.bb37:                                          ; preds = %while.cond
  br label %while.cond.backedge

sw.bb38:                                          ; preds = %while.cond
  br label %while.cond.backedge

sw.bb39:                                          ; preds = %while.cond
  %call40 = call i8* @opt_arg() #5
  %call41 = call i32 @load_certs(i8* noundef %call40, i32 noundef 0, %struct.stack_st_X509** noundef nonnull %untrusted, i8* noundef null, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.109, i64 0, i64 0)) #5
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %end, label %while.cond.backedge

sw.bb45:                                          ; preds = %while.cond
  %call46 = call i8* @opt_arg() #5
  %call47 = call i32 @load_certs(i8* noundef %call46, i32 noundef 0, %struct.stack_st_X509** noundef nonnull %trusted, i8* noundef null, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.110, i64 0, i64 0)) #5
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %end, label %while.cond.backedge

sw.bb51:                                          ; preds = %while.cond
  %call52 = call i8* @opt_arg() #5
  %call53 = call i32 @load_crls(i8* noundef %call52, %struct.stack_st_X509_CRL** noundef nonnull %crls, i8* noundef null, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.111, i64 0, i64 0)) #5
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %end, label %while.cond.backedge

sw.bb57:                                          ; preds = %while.cond
  br label %while.cond.backedge

sw.bb58:                                          ; preds = %while.cond
  %call59 = call i8* @opt_arg() #5
  %call60 = call %struct.engine_st* @setup_engine_methods(i8* noundef %call59, i32 noundef -1, i32 noundef 0) #5
  %cmp61 = icmp eq %struct.engine_st* %call60, null
  br i1 %cmp61, label %end, label %while.cond.backedge

sw.bb64:                                          ; preds = %while.cond
  br label %while.cond.backedge

sw.bb65:                                          ; preds = %while.cond
  %call66 = call i8* @opt_arg() #5
  %call67 = call i32 @set_nameopt(i8* noundef %call66) #5
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %end, label %while.cond.backedge

sw.bb71:                                          ; preds = %while.cond
  %tobool72.not = icmp eq %struct.stack_st_OPENSSL_STRING* %vfyopts.0, null
  br i1 %tobool72.not, label %if.end75, label %lor.lhs.false

if.end75:                                         ; preds = %sw.bb71
  %call74 = call %struct.stack_st* @OPENSSL_sk_new_null() #5
  %8 = bitcast %struct.stack_st* %call74 to %struct.stack_st_OPENSSL_STRING*
  %tobool76.not = icmp eq %struct.stack_st* %call74, null
  br i1 %tobool76.not, label %opthelp, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb71, %if.end75
  %vfyopts.2194 = phi %struct.stack_st_OPENSSL_STRING* [ %8, %if.end75 ], [ %vfyopts.0, %sw.bb71 ]
  %call77 = call fastcc %struct.stack_st* @ossl_check_OPENSSL_STRING_sk_type(%struct.stack_st_OPENSSL_STRING* noundef nonnull %vfyopts.2194) #6
  %call78 = call i8* @opt_arg() #5
  %call80 = call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call77, i8* noundef %call78) #5
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %opthelp, label %while.cond.backedge

sw.bb84:                                          ; preds = %while.cond
  store i1 true, i1* @v_verbose, align 4
  br label %while.cond.backedge

sw.bb86:                                          ; preds = %while.cond, %while.cond, %while.cond
  %call87 = call i32 @opt_provider(i32 noundef %call2) #5
  %tobool88.not = icmp eq i32 %call87, 0
  br i1 %tobool88.not, label %end, label %while.cond.backedge

while.end:                                        ; preds = %while.cond
  %call91 = call i32 @opt_num_rest() #5
  %call92 = call i8** @opt_rest() #5
  %9 = load %struct.stack_st_X509*, %struct.stack_st_X509** %trusted, align 8, !tbaa !3
  %cmp93.not = icmp eq %struct.stack_st_X509* %9, null
  br i1 %cmp93.not, label %if.end101, label %land.lhs.true

land.lhs.true:                                    ; preds = %while.end
  %cmp94 = icmp ne i8* %CAfile.0, null
  %cmp96 = icmp ne i8* %CApath.0, null
  %or.cond = select i1 %cmp94, i1 true, i1 %cmp96
  %cmp98 = icmp ne i8* %CAstore.0, null
  %or.cond138 = select i1 %or.cond, i1 true, i1 %cmp98
  br i1 %or.cond138, label %if.then99, label %if.end101

if.then99:                                        ; preds = %land.lhs.true
  %10 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call100 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %10, i8* noundef getelementptr inbounds ([59 x i8], [59 x i8]* @.str.112, i64 0, i64 0), i8* noundef %call1) #5
  br label %end

if.end101:                                        ; preds = %land.lhs.true, %while.end
  %call102 = call %struct.x509_store_st* @setup_verify(i8* noundef %CAfile.0, i32 noundef %noCAfile.0, i8* noundef %CApath.0, i32 noundef %noCApath.0, i8* noundef %CAstore.0, i32 noundef %noCAstore.0) #5
  %cmp103 = icmp eq %struct.x509_store_st* %call102, null
  br i1 %cmp103, label %end, label %if.end105

if.end105:                                        ; preds = %if.end101
  call void @X509_STORE_set_verify_cb(%struct.x509_store_st* noundef nonnull %call102, i32 (i32, %struct.x509_store_ctx_st*)* noundef nonnull @cb) #5
  %tobool106.not = icmp eq i32 %vpmtouched.0, 0
  br i1 %tobool106.not, label %if.end109, label %if.then107

if.then107:                                       ; preds = %if.end105
  %call108 = call i32 @X509_STORE_set1_param(%struct.x509_store_st* noundef nonnull %call102, %struct.X509_VERIFY_PARAM_st* noundef nonnull %call) #5
  br label %if.end109

if.end109:                                        ; preds = %if.then107, %if.end105
  call void @ERR_clear_error() #5
  %tobool110.not = icmp eq i32 %crl_download.0, 0
  br i1 %tobool110.not, label %if.end112, label %if.then111

if.then111:                                       ; preds = %if.end109
  call void @store_setup_crl_download(%struct.x509_store_st* noundef nonnull %call102) #5
  br label %if.end112

if.end112:                                        ; preds = %if.then111, %if.end109
  %cmp113 = icmp slt i32 %call91, 1
  br i1 %cmp113, label %if.then114, label %for.body121.preheader

for.body121.preheader:                            ; preds = %if.end112
  %wide.trip.count = zext i32 %call91 to i64
  br label %for.body121

if.then114:                                       ; preds = %if.end112
  %11 = load %struct.stack_st_X509*, %struct.stack_st_X509** %untrusted, align 8, !tbaa !3
  %12 = load %struct.stack_st_X509*, %struct.stack_st_X509** %trusted, align 8, !tbaa !3
  %13 = load %struct.stack_st_X509_CRL*, %struct.stack_st_X509_CRL** %crls, align 8, !tbaa !3
  %call115 = call fastcc i32 @check(%struct.x509_store_st* noundef nonnull %call102, i8* noundef null, %struct.stack_st_X509* noundef %11, %struct.stack_st_X509* noundef %12, %struct.stack_st_X509_CRL* noundef %13, i32 noundef %show_chain.0, %struct.stack_st_OPENSSL_STRING* noundef %vfyopts.0) #6
  %cmp116.not = icmp ne i32 %call115, 1
  %spec.select = sext i1 %cmp116.not to i32
  br label %end

for.body121:                                      ; preds = %for.body121.preheader, %for.body121
  %indvars.iv = phi i64 [ 0, %for.body121.preheader ], [ %indvars.iv.next, %for.body121 ]
  %ret.0239 = phi i32 [ 0, %for.body121.preheader ], [ %spec.select191, %for.body121 ]
  %arrayidx = getelementptr inbounds i8*, i8** %call92, i64 %indvars.iv
  %14 = load i8*, i8** %arrayidx, align 8, !tbaa !3
  %15 = load %struct.stack_st_X509*, %struct.stack_st_X509** %untrusted, align 8, !tbaa !3
  %16 = load %struct.stack_st_X509*, %struct.stack_st_X509** %trusted, align 8, !tbaa !3
  %17 = load %struct.stack_st_X509_CRL*, %struct.stack_st_X509_CRL** %crls, align 8, !tbaa !3
  %call122 = call fastcc i32 @check(%struct.x509_store_st* noundef nonnull %call102, i8* noundef %14, %struct.stack_st_X509* noundef %15, %struct.stack_st_X509* noundef %16, %struct.stack_st_X509_CRL* noundef %17, i32 noundef %show_chain.0, %struct.stack_st_OPENSSL_STRING* noundef %vfyopts.0) #6
  %cmp123.not = icmp eq i32 %call122, 1
  %spec.select191 = select i1 %cmp123.not, i32 %ret.0239, i32 -1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %end, label %for.body121, !llvm.loop !11

end:                                              ; preds = %sw.bb86, %sw.bb65, %sw.bb58, %sw.bb51, %sw.bb45, %sw.bb39, %sw.bb25, %for.body17, %for.body121, %for.end, %if.then114, %if.end101, %entry, %if.then99, %opthelp
  %store.0 = phi %struct.x509_store_st* [ null, %entry ], [ null, %opthelp ], [ null, %if.then99 ], [ null, %if.end101 ], [ %call102, %if.then114 ], [ null, %for.end ], [ %call102, %for.body121 ], [ null, %for.body17 ], [ null, %sw.bb25 ], [ null, %sw.bb39 ], [ null, %sw.bb45 ], [ null, %sw.bb51 ], [ null, %sw.bb58 ], [ null, %sw.bb65 ], [ null, %sw.bb86 ]
  %vfyopts.4 = phi %struct.stack_st_OPENSSL_STRING* [ null, %entry ], [ %vfyopts.1, %opthelp ], [ %vfyopts.0, %if.then99 ], [ %vfyopts.0, %if.end101 ], [ %vfyopts.0, %if.then114 ], [ %vfyopts.0, %for.end ], [ %vfyopts.0, %for.body121 ], [ %vfyopts.0, %for.body17 ], [ %vfyopts.0, %sw.bb25 ], [ %vfyopts.0, %sw.bb39 ], [ %vfyopts.0, %sw.bb45 ], [ %vfyopts.0, %sw.bb51 ], [ %vfyopts.0, %sw.bb58 ], [ %vfyopts.0, %sw.bb65 ], [ %vfyopts.0, %sw.bb86 ]
  %ret.2 = phi i32 [ 1, %entry ], [ 1, %opthelp ], [ 1, %if.then99 ], [ 1, %if.end101 ], [ %spec.select, %if.then114 ], [ 0, %for.end ], [ %spec.select191, %for.body121 ], [ 0, %for.body17 ], [ 1, %sw.bb25 ], [ 1, %sw.bb39 ], [ 1, %sw.bb45 ], [ 1, %sw.bb51 ], [ 1, %sw.bb58 ], [ 1, %sw.bb65 ], [ 1, %sw.bb86 ]
  %e.2 = phi %struct.engine_st* [ null, %entry ], [ %e.0, %opthelp ], [ %e.0, %if.then99 ], [ %e.0, %if.end101 ], [ %e.0, %if.then114 ], [ %e.0, %for.end ], [ %e.0, %for.body121 ], [ %e.0, %for.body17 ], [ %e.0, %sw.bb86 ], [ %e.0, %sw.bb65 ], [ null, %sw.bb58 ], [ %e.0, %sw.bb51 ], [ %e.0, %sw.bb45 ], [ %e.0, %sw.bb39 ], [ %e.0, %sw.bb25 ]
  call void @X509_VERIFY_PARAM_free(%struct.X509_VERIFY_PARAM_st* noundef %call) #5
  call void @X509_STORE_free(%struct.x509_store_st* noundef %store.0) #5
  %18 = load %struct.stack_st_X509*, %struct.stack_st_X509** %untrusted, align 8, !tbaa !3
  %call130 = call fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef %18) #6
  call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call130, void (i8*)* noundef bitcast (void (%struct.x509_st*)* @X509_free to void (i8*)*)) #5
  %19 = load %struct.stack_st_X509*, %struct.stack_st_X509** %trusted, align 8, !tbaa !3
  %call132 = call fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef %19) #6
  call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call132, void (i8*)* noundef bitcast (void (%struct.x509_st*)* @X509_free to void (i8*)*)) #5
  %20 = load %struct.stack_st_X509_CRL*, %struct.stack_st_X509_CRL** %crls, align 8, !tbaa !3
  %call134 = call fastcc %struct.stack_st* @ossl_check_X509_CRL_sk_type(%struct.stack_st_X509_CRL* noundef %20) #6
  call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call134, void (i8*)* noundef bitcast (void (%struct.X509_crl_st*)* @X509_CRL_free to void (i8*)*)) #5
  %call136 = call fastcc %struct.stack_st* @ossl_check_OPENSSL_STRING_sk_type(%struct.stack_st_OPENSSL_STRING* noundef %vfyopts.4) #6
  call void @OPENSSL_sk_free(%struct.stack_st* noundef %call136) #5
  call void @release_engine(%struct.engine_st* noundef %e.2) #5
  %cmp137 = icmp slt i32 %ret.2, 0
  %spec.select311 = select i1 %cmp137, i32 2, i32 %ret.2
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #4
  ret i32 %spec.select311
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare dso_local %struct.X509_VERIFY_PARAM_st* @X509_VERIFY_PARAM_new() local_unnamed_addr #2

declare dso_local i8* @opt_init(i32 noundef, i8** noundef, %struct.options_st* noundef) local_unnamed_addr #2

declare dso_local i32 @opt_next() local_unnamed_addr #2

declare dso_local i32 @BIO_printf(%struct.bio_st* noundef, i8* noundef, ...) local_unnamed_addr #2

declare dso_local void @opt_help(%struct.options_st* noundef) local_unnamed_addr #2

declare dso_local i32 @X509_PURPOSE_get_count() local_unnamed_addr #2

declare dso_local %struct.x509_purpose_st* @X509_PURPOSE_get0(i32 noundef) local_unnamed_addr #2

declare dso_local i8* @X509_PURPOSE_get0_sname(%struct.x509_purpose_st* noundef) local_unnamed_addr #2

declare dso_local i8* @X509_PURPOSE_get0_name(%struct.x509_purpose_st* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

declare dso_local i32 @X509_VERIFY_PARAM_get_count() local_unnamed_addr #2

declare dso_local %struct.X509_VERIFY_PARAM_st* @X509_VERIFY_PARAM_get0(i32 noundef) local_unnamed_addr #2

declare dso_local i8* @X509_VERIFY_PARAM_get0_name(%struct.X509_VERIFY_PARAM_st* noundef) local_unnamed_addr #2

declare dso_local i32 @opt_verify(i32 noundef, %struct.X509_VERIFY_PARAM_st* noundef) local_unnamed_addr #2

declare dso_local i8* @opt_arg() local_unnamed_addr #2

declare dso_local i32 @load_certs(i8* noundef, i32 noundef, %struct.stack_st_X509** noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local i32 @load_crls(i8* noundef, %struct.stack_st_X509_CRL** noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local %struct.engine_st* @setup_engine_methods(i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i32 @set_nameopt(i8* noundef) local_unnamed_addr #2

declare dso_local %struct.stack_st* @OPENSSL_sk_new_null() local_unnamed_addr #2

declare dso_local i32 @OPENSSL_sk_push(%struct.stack_st* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_OPENSSL_STRING_sk_type(%struct.stack_st_OPENSSL_STRING* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_OPENSSL_STRING* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare dso_local i32 @opt_provider(i32 noundef) local_unnamed_addr #2

declare dso_local i32 @opt_num_rest() local_unnamed_addr #2

declare dso_local i8** @opt_rest() local_unnamed_addr #2

declare dso_local %struct.x509_store_st* @setup_verify(i8* noundef, i32 noundef, i8* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local void @X509_STORE_set_verify_cb(%struct.x509_store_st* noundef, i32 (i32, %struct.x509_store_ctx_st*)* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @cb(i32 noundef %ok, %struct.x509_store_ctx_st* noundef %ctx) #0 {
entry:
  %call = tail call i32 @X509_STORE_CTX_get_error(%struct.x509_store_ctx_st* noundef %ctx) #5
  %call1 = tail call %struct.x509_st* @X509_STORE_CTX_get_current_cert(%struct.x509_store_ctx_st* noundef %ctx) #5
  %tobool.not = icmp eq i32 %ok, 0
  br i1 %tobool.not, label %if.then, label %if.end13

if.then:                                          ; preds = %entry
  %cmp.not = icmp eq %struct.x509_st* %call1, null
  br i1 %cmp.not, label %if.end, label %if.then2

if.then2:                                         ; preds = %if.then
  %0 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call3 = tail call %struct.X509_name_st* @X509_get_subject_name(%struct.x509_st* noundef nonnull %call1) #5
  %call4 = tail call i64 @get_nameopt() #5
  %call5 = tail call i32 @X509_NAME_print_ex(%struct.bio_st* noundef %0, %struct.X509_name_st* noundef %call3, i32 noundef 0, i64 noundef %call4) #5
  %1 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call6 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %1, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.122, i64 0, i64 0)) #5
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  %2 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call7 = tail call %struct.x509_store_ctx_st* @X509_STORE_CTX_get0_parent_ctx(%struct.x509_store_ctx_st* noundef %ctx) #5
  %tobool8.not = icmp eq %struct.x509_store_ctx_st* %call7, null
  %cond = select i1 %tobool8.not, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.126, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.125, i64 0, i64 0)
  %call9 = tail call i32 @X509_STORE_CTX_get_error_depth(%struct.x509_store_ctx_st* noundef %ctx) #5
  %conv = sext i32 %call to i64
  %call10 = tail call i8* @X509_verify_cert_error_string(i64 noundef %conv) #5
  %call11 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %2, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.124, i64 0, i64 0), i8* noundef %cond, i32 noundef %call, i32 noundef %call9, i8* noundef %call10) #5
  switch i32 %call, label %cleanup [
    i32 43, label %sw.bb
    i32 10, label %sw.bb12
    i32 18, label %sw.bb12
    i32 79, label %sw.bb12
    i32 37, label %sw.bb12
    i32 25, label %sw.bb12
    i32 12, label %sw.bb12
    i32 11, label %sw.bb12
    i32 34, label %sw.bb12
    i32 26, label %sw.bb12
    i32 80, label %sw.bb12
    i32 81, label %sw.bb12
    i32 89, label %sw.bb12
    i32 92, label %sw.bb12
    i32 82, label %sw.bb12
    i32 83, label %sw.bb12
    i32 84, label %sw.bb12
    i32 88, label %sw.bb12
    i32 87, label %sw.bb12
    i32 78, label %sw.bb12
    i32 90, label %sw.bb12
    i32 91, label %sw.bb12
    i32 85, label %sw.bb12
    i32 86, label %sw.bb12
    i32 93, label %sw.bb12
  ]

sw.bb:                                            ; preds = %if.end
  tail call void @policies_print(%struct.x509_store_ctx_st* noundef %ctx) #5
  br label %sw.bb12

sw.bb12:                                          ; preds = %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %sw.bb
  br label %cleanup

if.end13:                                         ; preds = %entry
  %cmp14 = icmp eq i32 %call, 0
  %cmp16 = icmp eq i32 %ok, 2
  %or.cond = and i1 %cmp16, %cmp14
  br i1 %or.cond, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.end13
  tail call void @policies_print(%struct.x509_store_ctx_st* noundef %ctx) #5
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %if.end13
  %.b = load i1, i1* @v_verbose, align 4
  br i1 %.b, label %cleanup, label %if.then21

if.then21:                                        ; preds = %if.end19
  tail call void @ERR_clear_error() #5
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.then21, %if.end, %sw.bb12
  %retval.0 = phi i32 [ 0, %if.end ], [ 1, %sw.bb12 ], [ %ok, %if.then21 ], [ %ok, %if.end19 ]
  ret i32 %retval.0
}

declare dso_local i32 @X509_STORE_set1_param(%struct.x509_store_st* noundef, %struct.X509_VERIFY_PARAM_st* noundef) local_unnamed_addr #2

declare dso_local void @ERR_clear_error() local_unnamed_addr #2

declare dso_local void @store_setup_crl_download(%struct.x509_store_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @check(%struct.x509_store_st* noundef %ctx, i8* noundef %file, %struct.stack_st_X509* noundef %uchain, %struct.stack_st_X509* noundef %tchain, %struct.stack_st_X509_CRL* noundef %crls, i32 noundef %show_chain, %struct.stack_st_OPENSSL_STRING* noundef %opts) unnamed_addr #0 {
entry:
  %call = tail call %struct.x509_st* @load_cert_pass(i8* noundef %file, i32 noundef 0, i32 noundef 1, i8* noundef null, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.113, i64 0, i64 0)) #5
  %cmp = icmp eq %struct.x509_st* %call, null
  br i1 %cmp, label %if.then92, label %if.end

if.end:                                           ; preds = %entry
  %cmp1.not = icmp eq %struct.stack_st_OPENSSL_STRING* %opts, null
  br i1 %cmp1.not, label %if.end13, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end
  %call3 = tail call fastcc %struct.stack_st* @ossl_check_const_OPENSSL_STRING_sk_type(%struct.stack_st_OPENSSL_STRING* noundef nonnull %opts) #6
  %call4152 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call3) #5
  %cmp5153 = icmp sgt i32 %call4152, 0
  br i1 %cmp5153, label %for.body, label %if.end13

for.body:                                         ; preds = %for.cond.preheader, %for.inc
  %i.0154 = phi i32 [ %inc, %for.inc ], [ 0, %for.cond.preheader ]
  %call7 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call3, i32 noundef %i.0154) #5
  %call8 = tail call i32 @x509_ctrl_string(%struct.x509_st* noundef nonnull %call, i8* noundef %call7) #5
  %cmp9 = icmp slt i32 %call8, 1
  br i1 %cmp9, label %if.then10, label %for.inc

if.then10:                                        ; preds = %for.body
  %0 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call11 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %0, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.114, i64 0, i64 0), i8* noundef %call7) #5
  %1 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  tail call void @ERR_print_errors(%struct.bio_st* noundef %1) #5
  br label %cleanup94

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.0154, 1
  %call4 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call3) #5
  %cmp5 = icmp slt i32 %inc, %call4
  br i1 %cmp5, label %for.body, label %if.end13, !llvm.loop !12

if.end13:                                         ; preds = %for.inc, %for.cond.preheader, %if.end
  %i.1 = phi i32 [ 0, %if.end ], [ 0, %for.cond.preheader ], [ %inc, %for.inc ]
  %call14 = tail call %struct.x509_store_ctx_st* @X509_STORE_CTX_new() #5
  %cmp15 = icmp eq %struct.x509_store_ctx_st* %call14, null
  br i1 %cmp15, label %if.then16, label %if.end19

if.then16:                                        ; preds = %if.end13
  %2 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %cmp17 = icmp eq i8* %file, null
  %cond = select i1 %cmp17, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.116, i64 0, i64 0), i8* %file
  %call18 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %2, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.115, i64 0, i64 0), i8* noundef %cond) #5
  br label %end

if.end19:                                         ; preds = %if.end13
  %call20 = tail call i32 @X509_STORE_set_flags(%struct.x509_store_st* noundef %ctx, i64 noundef 0) #5
  %call21 = tail call i32 @X509_STORE_CTX_init(%struct.x509_store_ctx_st* noundef nonnull %call14, %struct.x509_store_st* noundef %ctx, %struct.x509_st* noundef nonnull %call, %struct.stack_st_X509* noundef %uchain) #5
  %tobool.not = icmp eq i32 %call21, 0
  br i1 %tobool.not, label %if.then22, label %if.end30

if.then22:                                        ; preds = %if.end19
  tail call void @X509_STORE_CTX_free(%struct.x509_store_ctx_st* noundef nonnull %call14) #5
  %3 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %cmp23 = icmp eq i8* %file, null
  %cond28 = select i1 %cmp23, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.116, i64 0, i64 0), i8* %file
  %call29 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %3, i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.117, i64 0, i64 0), i8* noundef %cond28) #5
  br label %end

if.end30:                                         ; preds = %if.end19
  %cmp31.not = icmp eq %struct.stack_st_X509* %tchain, null
  br i1 %cmp31.not, label %if.end34, label %if.then33

if.then33:                                        ; preds = %if.end30
  tail call void @X509_STORE_CTX_set0_trusted_stack(%struct.x509_store_ctx_st* noundef nonnull %call14, %struct.stack_st_X509* noundef nonnull %tchain) #5
  br label %if.end34

if.end34:                                         ; preds = %if.then33, %if.end30
  %cmp35.not = icmp eq %struct.stack_st_X509_CRL* %crls, null
  br i1 %cmp35.not, label %if.end38, label %if.then37

if.then37:                                        ; preds = %if.end34
  tail call void @X509_STORE_CTX_set0_crls(%struct.x509_store_ctx_st* noundef nonnull %call14, %struct.stack_st_X509_CRL* noundef nonnull %crls) #5
  br label %if.end38

if.end38:                                         ; preds = %if.then37, %if.end34
  %call39 = tail call i32 @X509_verify_cert(%struct.x509_store_ctx_st* noundef nonnull %call14) #5
  %cmp40 = icmp sgt i32 %call39, 0
  br i1 %cmp40, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end38
  %call42 = tail call i32 @X509_STORE_CTX_get_error(%struct.x509_store_ctx_st* noundef nonnull %call14) #5
  %cmp43 = icmp eq i32 %call42, 0
  br i1 %cmp43, label %if.then45, label %if.else

if.then45:                                        ; preds = %land.lhs.true
  %4 = load %struct.bio_st*, %struct.bio_st** @bio_out, align 8, !tbaa !3
  %cmp46 = icmp eq i8* %file, null
  %cond51 = select i1 %cmp46, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.116, i64 0, i64 0), i8* %file
  %call52 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %4, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.118, i64 0, i64 0), i8* noundef %cond51) #5
  %tobool53.not = icmp eq i32 %show_chain, 0
  br i1 %tobool53.not, label %if.end89, label %if.then54

if.then54:                                        ; preds = %if.then45
  %call55 = tail call %struct.stack_st_X509* @X509_STORE_CTX_get1_chain(%struct.x509_store_ctx_st* noundef nonnull %call14) #5
  %call56 = tail call i32 @X509_STORE_CTX_get_num_untrusted(%struct.x509_store_ctx_st* noundef nonnull %call14) #5
  %5 = load %struct.bio_st*, %struct.bio_st** @bio_out, align 8, !tbaa !3
  %call57 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %5, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.119, i64 0, i64 0)) #5
  %call59 = tail call fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef %call55) #6
  %call60155 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call59) #5
  %cmp61156 = icmp sgt i32 %call60155, 0
  br i1 %cmp61156, label %for.body63, label %for.end78

for.body63:                                       ; preds = %if.then54, %if.end74
  %j.0157 = phi i32 [ %inc77, %if.end74 ], [ 0, %if.then54 ]
  %call65 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call59, i32 noundef %j.0157) #5
  %6 = bitcast i8* %call65 to %struct.x509_st*
  %7 = load %struct.bio_st*, %struct.bio_st** @bio_out, align 8, !tbaa !3
  %call66 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %7, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.120, i64 0, i64 0), i32 noundef %j.0157) #5
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !3
  %call67 = tail call %struct.X509_name_st* @X509_get_subject_name(%struct.x509_st* noundef %6) #5
  %call68 = tail call i64 @get_nameopt() #5
  %call69 = tail call i32 @X509_NAME_print_ex_fp(%struct._IO_FILE* noundef %8, %struct.X509_name_st* noundef %call67, i32 noundef 0, i64 noundef %call68) #5
  %cmp70 = icmp slt i32 %j.0157, %call56
  br i1 %cmp70, label %if.then72, label %if.end74

if.then72:                                        ; preds = %for.body63
  %9 = load %struct.bio_st*, %struct.bio_st** @bio_out, align 8, !tbaa !3
  %call73 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %9, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.121, i64 0, i64 0)) #5
  br label %if.end74

if.end74:                                         ; preds = %if.then72, %for.body63
  %10 = load %struct.bio_st*, %struct.bio_st** @bio_out, align 8, !tbaa !3
  %call75 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %10, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.122, i64 0, i64 0)) #5
  %inc77 = add nuw nsw i32 %j.0157, 1
  %call60 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call59) #5
  %cmp61 = icmp slt i32 %inc77, %call60
  br i1 %cmp61, label %for.body63, label %for.end78, !llvm.loop !13

for.end78:                                        ; preds = %if.end74, %if.then54
  %call79 = tail call fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef %call55) #6
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call79, void (i8*)* noundef bitcast (void (%struct.x509_st*)* @X509_free to void (i8*)*)) #5
  br label %if.end89

if.else:                                          ; preds = %land.lhs.true, %if.end38
  %11 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %cmp82 = icmp eq i8* %file, null
  %cond87 = select i1 %cmp82, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.116, i64 0, i64 0), i8* %file
  %call88 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %11, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.123, i64 0, i64 0), i8* noundef %cond87) #5
  br label %if.end89

if.end89:                                         ; preds = %if.then45, %for.end78, %if.else
  %ret.0 = phi i32 [ 1, %for.end78 ], [ 1, %if.then45 ], [ 0, %if.else ]
  tail call void @X509_STORE_CTX_free(%struct.x509_store_ctx_st* noundef nonnull %call14) #5
  br label %end

end:                                              ; preds = %if.end89, %if.then22, %if.then16
  %ret.1 = phi i32 [ 0, %if.then16 ], [ %ret.0, %if.end89 ], [ 0, %if.then22 ]
  %i.2 = phi i32 [ %i.1, %if.then16 ], [ %call39, %if.end89 ], [ %i.1, %if.then22 ]
  %cmp90 = icmp slt i32 %i.2, 1
  br i1 %cmp90, label %if.then92, label %if.end93

if.then92:                                        ; preds = %entry, %end
  %ret.1150 = phi i32 [ %ret.1, %end ], [ 0, %entry ]
  %12 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  tail call void @ERR_print_errors(%struct.bio_st* noundef %12) #5
  br label %if.end93

if.end93:                                         ; preds = %if.then92, %end
  %ret.1149 = phi i32 [ %ret.1150, %if.then92 ], [ %ret.1, %end ]
  tail call void @X509_free(%struct.x509_st* noundef %call) #5
  br label %cleanup94

cleanup94:                                        ; preds = %if.then10, %if.end93
  %retval.2 = phi i32 [ %ret.1149, %if.end93 ], [ 0, %if.then10 ]
  ret i32 %retval.2
}

declare dso_local void @X509_VERIFY_PARAM_free(%struct.X509_VERIFY_PARAM_st* noundef) local_unnamed_addr #2

declare dso_local void @X509_STORE_free(%struct.x509_store_st* noundef) local_unnamed_addr #2

declare dso_local void @OPENSSL_sk_pop_free(%struct.stack_st* noundef, void (i8*)* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_X509* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare dso_local void @X509_free(%struct.x509_st* noundef) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_X509_CRL_sk_type(%struct.stack_st_X509_CRL* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_X509_CRL* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare dso_local void @X509_CRL_free(%struct.X509_crl_st* noundef) #2

declare dso_local void @OPENSSL_sk_free(%struct.stack_st* noundef) local_unnamed_addr #2

declare dso_local void @release_engine(%struct.engine_st* noundef) local_unnamed_addr #2

declare dso_local %struct.x509_st* @load_cert_pass(i8* noundef, i32 noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local i32 @OPENSSL_sk_num(%struct.stack_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_OPENSSL_STRING_sk_type(%struct.stack_st_OPENSSL_STRING* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_OPENSSL_STRING* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare dso_local i8* @OPENSSL_sk_value(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i32 @x509_ctrl_string(%struct.x509_st* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local void @ERR_print_errors(%struct.bio_st* noundef) local_unnamed_addr #2

declare dso_local %struct.x509_store_ctx_st* @X509_STORE_CTX_new() local_unnamed_addr #2

declare dso_local i32 @X509_STORE_set_flags(%struct.x509_store_st* noundef, i64 noundef) local_unnamed_addr #2

declare dso_local i32 @X509_STORE_CTX_init(%struct.x509_store_ctx_st* noundef, %struct.x509_store_st* noundef, %struct.x509_st* noundef, %struct.stack_st_X509* noundef) local_unnamed_addr #2

declare dso_local void @X509_STORE_CTX_free(%struct.x509_store_ctx_st* noundef) local_unnamed_addr #2

declare dso_local void @X509_STORE_CTX_set0_trusted_stack(%struct.x509_store_ctx_st* noundef, %struct.stack_st_X509* noundef) local_unnamed_addr #2

declare dso_local void @X509_STORE_CTX_set0_crls(%struct.x509_store_ctx_st* noundef, %struct.stack_st_X509_CRL* noundef) local_unnamed_addr #2

declare dso_local i32 @X509_verify_cert(%struct.x509_store_ctx_st* noundef) local_unnamed_addr #2

declare dso_local i32 @X509_STORE_CTX_get_error(%struct.x509_store_ctx_st* noundef) local_unnamed_addr #2

declare dso_local %struct.stack_st_X509* @X509_STORE_CTX_get1_chain(%struct.x509_store_ctx_st* noundef) local_unnamed_addr #2

declare dso_local i32 @X509_STORE_CTX_get_num_untrusted(%struct.x509_store_ctx_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_X509* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare dso_local i32 @X509_NAME_print_ex_fp(%struct._IO_FILE* noundef, %struct.X509_name_st* noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

declare dso_local %struct.X509_name_st* @X509_get_subject_name(%struct.x509_st* noundef) local_unnamed_addr #2

declare dso_local i64 @get_nameopt() local_unnamed_addr #2

declare dso_local %struct.x509_st* @X509_STORE_CTX_get_current_cert(%struct.x509_store_ctx_st* noundef) local_unnamed_addr #2

declare dso_local i32 @X509_NAME_print_ex(%struct.bio_st* noundef, %struct.X509_name_st* noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

declare dso_local %struct.x509_store_ctx_st* @X509_STORE_CTX_get0_parent_ctx(%struct.x509_store_ctx_st* noundef) local_unnamed_addr #2

declare dso_local i32 @X509_STORE_CTX_get_error_depth(%struct.x509_store_ctx_st* noundef) local_unnamed_addr #2

declare dso_local i8* @X509_verify_cert_error_string(i64 noundef) local_unnamed_addr #2

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
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.mustprogress"}
!9 = distinct !{!9, !8}
!10 = distinct !{!10, !8}
!11 = distinct !{!11, !8}
!12 = distinct !{!12, !8}
!13 = distinct !{!13, !8}
