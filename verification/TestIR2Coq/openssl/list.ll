; ModuleID = 'apps/list.c'
source_filename = "apps/list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.options_st = type { i8*, i32, i32, i8* }
%struct.bio_st = type opaque
%struct.function_st = type { i32, i8*, i32 (i32, i8**)*, %struct.options_st*, i8*, i8* }
%struct.DISPLAY_COLUMNS = type { i32, i32 }
%struct.evp_rand_ctx_st = type opaque
%struct.ossl_lib_ctx_st = type opaque
%struct.stack_st_EVP_RAND = type opaque
%struct.evp_rand_st = type opaque
%struct.ossl_provider_st = type opaque
%struct.ossl_param_st = type { i8*, i32, i8*, i64, i64 }
%struct.stack_st_EVP_MD = type opaque
%struct.evp_md_st = type opaque
%struct.stack_st = type opaque
%struct.stack_st_OPENSSL_CSTRING = type opaque
%struct.stack_st_EVP_KDF = type opaque
%struct.evp_kdf_st = type opaque
%struct.stack_st_EVP_MAC = type opaque
%struct.evp_mac_st = type opaque
%struct.stack_st_EVP_CIPHER = type opaque
%struct.evp_cipher_st = type opaque
%struct.stack_st_OSSL_ENCODER = type opaque
%struct.ossl_encoder_st = type opaque
%struct.stack_st_OSSL_DECODER = type opaque
%struct.ossl_decoder_st = type opaque
%struct.stack_st_EVP_KEYMGMT = type opaque
%struct.evp_keymgmt_st = type opaque
%struct.stack_st_EVP_SIGNATURE = type opaque
%struct.evp_signature_st = type opaque
%struct.stack_st_EVP_ASYM_CIPHER = type opaque
%struct.evp_asym_cipher_st = type opaque
%struct.stack_st_EVP_KEYEXCH = type opaque
%struct.evp_keyexch_st = type opaque
%struct.stack_st_EVP_KEM = type opaque
%struct.evp_kem_st = type opaque
%struct.evp_pkey_asn1_method_st = type opaque
%struct.evp_pkey_method_st = type opaque
%struct.stack_st_OSSL_STORE_LOADER = type opaque
%struct.ossl_store_loader_st = type opaque
%struct.stack_st_OSSL_PROVIDER = type opaque
%struct.engine_st = type opaque
%struct.asn1_object_st = type opaque

@OPT_SECTION_STR = external dso_local constant [0 x i8], align 1
@.str = private unnamed_addr constant [18 x i8] c"General options:\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Display this summary\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"Output options:\0A\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"List in one column\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"verbose\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"Verbose listing\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"select\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"Select a single algorithm\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"commands\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"List of standard commands\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"standard-commands\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"digest-commands\00", align 1
@.str.14 = private unnamed_addr constant [45 x i8] c"List of message digest commands (deprecated)\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"digest-algorithms\00", align 1
@.str.16 = private unnamed_addr constant [34 x i8] c"List of message digest algorithms\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"kdf-algorithms\00", align 1
@.str.18 = private unnamed_addr constant [61 x i8] c"List of key derivation and pseudo random function algorithms\00", align 1
@.str.19 = private unnamed_addr constant [17 x i8] c"random-instances\00", align 1
@.str.20 = private unnamed_addr constant [69 x i8] c"List the primary, public and private random number generator details\00", align 1
@.str.21 = private unnamed_addr constant [18 x i8] c"random-generators\00", align 1
@.str.22 = private unnamed_addr constant [33 x i8] c"List of random number generators\00", align 1
@.str.23 = private unnamed_addr constant [15 x i8] c"mac-algorithms\00", align 1
@.str.24 = private unnamed_addr constant [47 x i8] c"List of message authentication code algorithms\00", align 1
@.str.25 = private unnamed_addr constant [16 x i8] c"cipher-commands\00", align 1
@.str.26 = private unnamed_addr constant [37 x i8] c"List of cipher commands (deprecated)\00", align 1
@.str.27 = private unnamed_addr constant [18 x i8] c"cipher-algorithms\00", align 1
@.str.28 = private unnamed_addr constant [26 x i8] c"List of cipher algorithms\00", align 1
@.str.29 = private unnamed_addr constant [9 x i8] c"encoders\00", align 1
@.str.30 = private unnamed_addr constant [25 x i8] c"List of encoding methods\00", align 1
@.str.31 = private unnamed_addr constant [9 x i8] c"decoders\00", align 1
@.str.32 = private unnamed_addr constant [25 x i8] c"List of decoding methods\00", align 1
@.str.33 = private unnamed_addr constant [13 x i8] c"key-managers\00", align 1
@.str.34 = private unnamed_addr constant [21 x i8] c"List of key managers\00", align 1
@.str.35 = private unnamed_addr constant [24 x i8] c"key-exchange-algorithms\00", align 1
@.str.36 = private unnamed_addr constant [32 x i8] c"List of key exchange algorithms\00", align 1
@.str.37 = private unnamed_addr constant [15 x i8] c"kem-algorithms\00", align 1
@.str.38 = private unnamed_addr constant [47 x i8] c"List of key encapsulation mechanism algorithms\00", align 1
@.str.39 = private unnamed_addr constant [21 x i8] c"signature-algorithms\00", align 1
@.str.40 = private unnamed_addr constant [29 x i8] c"List of signature algorithms\00", align 1
@.str.41 = private unnamed_addr constant [22 x i8] c"asymcipher-algorithms\00", align 1
@.str.42 = private unnamed_addr constant [37 x i8] c"List of asymmetric cipher algorithms\00", align 1
@.str.43 = private unnamed_addr constant [22 x i8] c"public-key-algorithms\00", align 1
@.str.44 = private unnamed_addr constant [30 x i8] c"List of public key algorithms\00", align 1
@.str.45 = private unnamed_addr constant [19 x i8] c"public-key-methods\00", align 1
@.str.46 = private unnamed_addr constant [27 x i8] c"List of public key methods\00", align 1
@.str.47 = private unnamed_addr constant [14 x i8] c"store-loaders\00", align 1
@.str.48 = private unnamed_addr constant [22 x i8] c"List of store loaders\00", align 1
@.str.49 = private unnamed_addr constant [10 x i8] c"providers\00", align 1
@.str.50 = private unnamed_addr constant [29 x i8] c"List of provider information\00", align 1
@.str.51 = private unnamed_addr constant [8 x i8] c"engines\00", align 1
@.str.52 = private unnamed_addr constant [23 x i8] c"List of loaded engines\00", align 1
@.str.53 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@.str.54 = private unnamed_addr constant [26 x i8] c"List of disabled features\00", align 1
@.str.55 = private unnamed_addr constant [8 x i8] c"options\00", align 1
@.str.56 = private unnamed_addr constant [35 x i8] c"List options for specified command\00", align 1
@.str.57 = private unnamed_addr constant [8 x i8] c"objects\00", align 1
@.str.58 = private unnamed_addr constant [44 x i8] c"List built in objects (OID<->name mappings)\00", align 1
@.str.59 = private unnamed_addr constant [19 x i8] c"Provider options:\0A\00", align 1
@.str.60 = private unnamed_addr constant [14 x i8] c"provider-path\00", align 1
@.str.61 = private unnamed_addr constant [68 x i8] c"Provider load path (must be before 'provider' argument if required)\00", align 1
@.str.62 = private unnamed_addr constant [9 x i8] c"provider\00", align 1
@.str.63 = private unnamed_addr constant [51 x i8] c"Provider to load (can be specified multiple times)\00", align 1
@.str.64 = private unnamed_addr constant [10 x i8] c"propquery\00", align 1
@.str.65 = private unnamed_addr constant [45 x i8] c"Property query used when fetching algorithms\00", align 1
@list_options = dso_local constant [36 x %struct.options_st] [%struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0), i32 2, i32 45, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), i32 3, i32 45, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0), i32 27, i32 115, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i32 0, i32 0), i32 4, i32 45, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i32 0, i32 0), i32 4, i32 45, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i32 0, i32 0), i32 5, i32 45, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.14, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i32 0, i32 0), i32 8, i32 45, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.16, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i32 0, i32 0), i32 14, i32 45, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.18, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i32 0, i32 0), i32 15, i32 45, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.20, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.21, i32 0, i32 0), i32 16, i32 45, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.22, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.23, i32 0, i32 0), i32 6, i32 45, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.24, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.25, i32 0, i32 0), i32 9, i32 45, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.26, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.27, i32 0, i32 0), i32 10, i32 45, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.28, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.29, i32 0, i32 0), i32 17, i32 45, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.30, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.31, i32 0, i32 0), i32 18, i32 45, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.32, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.33, i32 0, i32 0), i32 19, i32 45, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.34, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.35, i32 0, i32 0), i32 20, i32 45, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.36, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.37, i32 0, i32 0), i32 21, i32 45, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.38, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.39, i32 0, i32 0), i32 22, i32 45, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.40, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.41, i32 0, i32 0), i32 23, i32 45, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.42, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.43, i32 0, i32 0), i32 11, i32 45, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.44, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.45, i32 0, i32 0), i32 12, i32 45, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.46, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.47, i32 0, i32 0), i32 24, i32 45, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.48, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.49, i32 0, i32 0), i32 25, i32 45, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.50, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.51, i32 0, i32 0), i32 28, i32 45, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.52, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.53, i32 0, i32 0), i32 13, i32 45, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.54, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.55, i32 0, i32 0), i32 7, i32 115, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.56, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.57, i32 0, i32 0), i32 26, i32 45, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.58, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.59, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.60, i32 0, i32 0), i32 1602, i32 115, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.61, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.62, i32 0, i32 0), i32 1601, i32 115, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.63, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.64, i32 0, i32 0), i32 1603, i32 115, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.65, i32 0, i32 0) }, %struct.options_st zeroinitializer], align 16
@verbose = internal unnamed_addr global i1 false, align 4
@bio_err = external dso_local local_unnamed_addr global %struct.bio_st*, align 8
@.str.66 = private unnamed_addr constant [28 x i8] c"%s: Use -help for summary.\0A\00", align 1
@select_name = internal unnamed_addr global i8* null, align 8
@functions = external dso_local global [0 x %struct.function_st], align 8
@.str.67 = private unnamed_addr constant [47 x i8] c"Invalid command '%s'; type \22help\22 for a list.\0A\00", align 1
@OPT_PARAM_STR = external dso_local constant [0 x i8], align 1
@OPT_HELP_STR = external dso_local constant [0 x i8], align 1
@OPT_MORE_STR = external dso_local constant [0 x i8], align 1
@bio_out = external dso_local local_unnamed_addr global %struct.bio_st*, align 8
@.str.68 = private unnamed_addr constant [7 x i8] c"%s %c\0A\00", align 1
@.str.69 = private unnamed_addr constant [5 x i8] c"- -\0A\00", align 1
@.str.70 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.71 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.72 = private unnamed_addr constant [5 x i8] c"%-*s\00", align 1
@.str.73 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@.str.74 = private unnamed_addr constant [8 x i8] c"primary\00", align 1
@.str.75 = private unnamed_addr constant [7 x i8] c"public\00", align 1
@.str.76 = private unnamed_addr constant [8 x i8] c"private\00", align 1
@.str.77 = private unnamed_addr constant [5 x i8] c"%s:\0A\00", align 1
@.str.78 = private unnamed_addr constant [5 x i8] c"  %s\00", align 1
@.str.79 = private unnamed_addr constant [7 x i8] c" @ %s\0A\00", align 1
@.str.80 = private unnamed_addr constant [14 x i8] c"uninitialised\00", align 1
@.str.81 = private unnamed_addr constant [6 x i8] c"ready\00", align 1
@.str.82 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.83 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.84 = private unnamed_addr constant [14 x i8] c"  state = %s\0A\00", align 1
@.str.85 = private unnamed_addr constant [6 x i8] c"state\00", align 1
@.str.86 = private unnamed_addr constant [26 x i8] c"ERROR: Memory allocation\0A\00", align 1
@.str.87 = private unnamed_addr constant [33 x i8] c"Provided RNGs and seed sources:\0A\00", align 1
@.str.88 = private unnamed_addr constant [21 x i8] c"    description: %s\0A\00", align 1
@.str.89 = private unnamed_addr constant [33 x i8] c"retrievable algorithm parameters\00", align 1
@.str.90 = private unnamed_addr constant [33 x i8] c"retrievable operation parameters\00", align 1
@.str.91 = private unnamed_addr constant [30 x i8] c"settable operation parameters\00", align 1
@.str.92 = private unnamed_addr constant [9 x i8] c"Legacy:\0A\00", align 1
@.str.93 = private unnamed_addr constant [11 x i8] c"Provided:\0A\00", align 1
@.str.94 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@.str.95 = private unnamed_addr constant [6 x i8] c"  %s\0A\00", align 1
@.str.96 = private unnamed_addr constant [12 x i8] c"<undefined>\00", align 1
@.str.97 = private unnamed_addr constant [12 x i8] c"  %s => %s\0A\00", align 1
@.str.98 = private unnamed_addr constant [25 x i8] c"Provided KDFs and PDFs:\0A\00", align 1
@.str.99 = private unnamed_addr constant [16 x i8] c"Provided MACs:\0A\00", align 1
@.str.100 = private unnamed_addr constant [20 x i8] c"Provided ENCODERs:\0A\00", align 1
@.str.101 = private unnamed_addr constant [12 x i8] c" @ %s (%s)\0A\00", align 1
@.str.102 = private unnamed_addr constant [20 x i8] c"Provided DECODERs:\0A\00", align 1
@.str.103 = private unnamed_addr constant [9 x i8] c"  Name: \00", align 1
@.str.104 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.105 = private unnamed_addr constant [30 x i8] c"    Type: Provider Algorithm\0A\00", align 1
@.str.106 = private unnamed_addr constant [10 x i8] c"    IDs: \00", align 1
@.str.107 = private unnamed_addr constant [35 x i8] c"settable key generation parameters\00", align 1
@.str.108 = private unnamed_addr constant [4 x i8] c" -\0A\00", align 1
@.str.109 = private unnamed_addr constant [11 x i8] c" Name: %s\0A\00", align 1
@.str.110 = private unnamed_addr constant [16 x i8] c"\09Alias for: %s\0A\00", align 1
@.str.111 = private unnamed_addr constant [21 x i8] c"\09Type: %s Algorithm\0A\00", align 1
@.str.112 = private unnamed_addr constant [9 x i8] c"External\00", align 1
@.str.113 = private unnamed_addr constant [8 x i8] c"Builtin\00", align 1
@.str.114 = private unnamed_addr constant [10 x i8] c"\09OID: %s\0A\00", align 1
@.str.115 = private unnamed_addr constant [7 x i8] c"(none)\00", align 1
@.str.116 = private unnamed_addr constant [17 x i8] c"\09PEM string: %s\0A\00", align 1
@.str.117 = private unnamed_addr constant [16 x i8] c" Key Managers:\0A\00", align 1
@.str.118 = private unnamed_addr constant [5 x i8] c" %s\0A\00", align 1
@.str.119 = private unnamed_addr constant [14 x i8] c" Encryption:\0A\00", align 1
@.str.120 = private unnamed_addr constant [16 x i8] c" Key Exchange:\0A\00", align 1
@.str.121 = private unnamed_addr constant [14 x i8] c" Signatures:\0A\00", align 1
@.str.122 = private unnamed_addr constant [21 x i8] c" Key encapsulation:\0A\00", align 1
@.str.123 = private unnamed_addr constant [25 x i8] c"Provided STORE LOADERs:\0A\00", align 1
@.str.124 = private unnamed_addr constant [12 x i8] c"Providers:\0A\00", align 1
@.str.125 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.126 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.127 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@.str.128 = private unnamed_addr constant [10 x i8] c"buildinfo\00", align 1
@.str.129 = private unnamed_addr constant [44 x i8] c"ERROR: Unable to query provider parameters\0A\00", align 1
@.str.130 = private unnamed_addr constant [14 x i8] c"    name: %s\0A\00", align 1
@.str.131 = private unnamed_addr constant [17 x i8] c"    version: %s\0A\00", align 1
@.str.132 = private unnamed_addr constant [22 x i8] c"    status: %sactive\0A\00", align 1
@.str.133 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.134 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str.135 = private unnamed_addr constant [20 x i8] c"    build info: %s\0A\00", align 1
@.str.136 = private unnamed_addr constant [29 x i8] c"gettable provider parameters\00", align 1
@.str.137 = private unnamed_addr constant [10 x i8] c"Engines:\0A\00", align 1
@.str.138 = private unnamed_addr constant [22 x i8] c"Disabled algorithms:\0A\00", align 1
@.str.139 = private unnamed_addr constant [5 x i8] c"MD2\0A\00", align 1
@.str.140 = private unnamed_addr constant [5 x i8] c"RC5\0A\00", align 1
@.str.141 = private unnamed_addr constant [6 x i8] c"SCTP\0A\00", align 1
@.str.142 = private unnamed_addr constant [6 x i8] c"SSL3\0A\00", align 1
@.str.143 = private unnamed_addr constant [6 x i8] c"ZLIB\0A\00", align 1
@.str.144 = private unnamed_addr constant [27 x i8] c"# None-OID object: %s, %s\0A\00", align 1
@.str.145 = private unnamed_addr constant [12 x i8] c"apps/list.c\00", align 1
@.str.146 = private unnamed_addr constant [9 x i8] c"%s = %s\0A\00", align 1
@.str.147 = private unnamed_addr constant [13 x i8] c"%s = %s, %s\0A\00", align 1
@switch.table.display_random = private unnamed_addr constant [3 x i8*] [i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.80, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.81, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.82, i64 0, i64 0)], align 8

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @list_main(i32 noundef %argc, i8** noundef %argv) local_unnamed_addr #0 {
entry:
  store i1 false, i1* @verbose, align 4
  %call = tail call i8* @opt_init(i32 noundef %argc, i8** noundef %argv, %struct.options_st* noundef getelementptr inbounds ([36 x %struct.options_st], [36 x %struct.options_st]* @list_options, i64 0, i64 0)) #8
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %entry
  %one.0 = phi i32 [ 0, %entry ], [ %one.0.be, %while.cond.backedge ]
  %tobool242.not = phi i1 [ true, %entry ], [ false, %while.cond.backedge ]
  %todo.sroa.0.0 = phi i32 [ 0, %entry ], [ %todo.sroa.0.0.be, %while.cond.backedge ]
  %call1 = tail call i32 @opt_next() #8
  switch i32 %call1, label %while.cond.backedge [
    i32 0, label %while.end
    i32 1601, label %sw.bb100
    i32 -1, label %opthelp
    i32 1, label %sw.bb3
    i32 2, label %sw.bb4
    i32 4, label %sw.bb5
    i32 5, label %sw.bb6
    i32 8, label %sw.bb10
    i32 14, label %sw.bb14
    i32 15, label %sw.bb18
    i32 16, label %sw.bb22
    i32 6, label %sw.bb26
    i32 9, label %sw.bb30
    i32 10, label %sw.bb34
    i32 17, label %sw.bb38
    i32 18, label %sw.bb42
    i32 19, label %sw.bb46
    i32 22, label %sw.bb50
    i32 20, label %sw.bb54
    i32 21, label %sw.bb58
    i32 23, label %sw.bb62
    i32 11, label %sw.bb66
    i32 12, label %sw.bb70
    i32 24, label %sw.bb74
    i32 25, label %sw.bb78
    i32 28, label %sw.bb82
    i32 13, label %sw.bb86
    i32 26, label %sw.bb90
    i32 7, label %sw.bb94
    i32 3, label %sw.bb96
    i32 27, label %sw.bb97
    i32 1603, label %sw.bb100
    i32 1602, label %sw.bb100
  ]

while.cond.backedge:                              ; preds = %while.cond, %sw.bb100, %sw.bb97, %sw.bb96, %sw.bb94, %sw.bb90, %sw.bb86, %sw.bb82, %sw.bb78, %sw.bb74, %sw.bb70, %sw.bb66, %sw.bb62, %sw.bb58, %sw.bb54, %sw.bb50, %sw.bb46, %sw.bb42, %sw.bb38, %sw.bb34, %sw.bb30, %sw.bb26, %sw.bb22, %sw.bb18, %sw.bb14, %sw.bb10, %sw.bb6, %sw.bb5, %sw.bb4
  %one.0.be = phi i32 [ %one.0, %sw.bb100 ], [ %one.0, %sw.bb97 ], [ %one.0, %sw.bb96 ], [ %one.0, %sw.bb94 ], [ %one.0, %sw.bb90 ], [ %one.0, %sw.bb86 ], [ %one.0, %sw.bb82 ], [ %one.0, %sw.bb78 ], [ %one.0, %sw.bb74 ], [ %one.0, %sw.bb70 ], [ %one.0, %sw.bb66 ], [ %one.0, %sw.bb62 ], [ %one.0, %sw.bb58 ], [ %one.0, %sw.bb54 ], [ %one.0, %sw.bb50 ], [ %one.0, %sw.bb46 ], [ %one.0, %sw.bb42 ], [ %one.0, %sw.bb38 ], [ %one.0, %sw.bb34 ], [ %one.0, %sw.bb30 ], [ %one.0, %sw.bb26 ], [ %one.0, %sw.bb22 ], [ %one.0, %sw.bb18 ], [ %one.0, %sw.bb14 ], [ %one.0, %sw.bb10 ], [ %one.0, %sw.bb6 ], [ %one.0, %sw.bb5 ], [ 1, %sw.bb4 ], [ %one.0, %while.cond ]
  %todo.sroa.0.0.be = phi i32 [ %todo.sroa.0.0, %sw.bb100 ], [ %todo.sroa.0.0, %sw.bb97 ], [ %todo.sroa.0.0, %sw.bb96 ], [ %todo.sroa.0.0, %sw.bb94 ], [ %bf.set93, %sw.bb90 ], [ %bf.set89, %sw.bb86 ], [ %bf.set85, %sw.bb82 ], [ %bf.set81, %sw.bb78 ], [ %bf.set77, %sw.bb74 ], [ %bf.set73, %sw.bb70 ], [ %bf.set69, %sw.bb66 ], [ %bf.set65, %sw.bb62 ], [ %bf.set61, %sw.bb58 ], [ %bf.set57, %sw.bb54 ], [ %bf.set53, %sw.bb50 ], [ %bf.set49, %sw.bb46 ], [ %bf.set45, %sw.bb42 ], [ %bf.set41, %sw.bb38 ], [ %bf.set37, %sw.bb34 ], [ %bf.set33, %sw.bb30 ], [ %bf.set29, %sw.bb26 ], [ %bf.set25, %sw.bb22 ], [ %bf.set21, %sw.bb18 ], [ %bf.set17, %sw.bb14 ], [ %bf.set13, %sw.bb10 ], [ %bf.set9, %sw.bb6 ], [ %bf.set, %sw.bb5 ], [ %todo.sroa.0.0, %sw.bb4 ], [ %todo.sroa.0.0, %while.cond ]
  br label %while.cond, !llvm.loop !3

opthelp:                                          ; preds = %while.cond, %if.end241, %while.end
  %0 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !5
  %call2 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %0, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.66, i64 0, i64 0), i8* noundef %call) #8
  br label %cleanup

sw.bb3:                                           ; preds = %while.cond
  tail call void @opt_help(%struct.options_st* noundef getelementptr inbounds ([36 x %struct.options_st], [36 x %struct.options_st]* @list_options, i64 0, i64 0)) #8
  br label %cleanup

sw.bb4:                                           ; preds = %while.cond
  br label %while.cond.backedge

sw.bb5:                                           ; preds = %while.cond
  %bf.set = or i32 %todo.sroa.0.0, 1
  br label %while.cond.backedge

sw.bb6:                                           ; preds = %while.cond
  %bf.set9 = or i32 %todo.sroa.0.0, 8
  br label %while.cond.backedge

sw.bb10:                                          ; preds = %while.cond
  %bf.set13 = or i32 %todo.sroa.0.0, 16
  br label %while.cond.backedge

sw.bb14:                                          ; preds = %while.cond
  %bf.set17 = or i32 %todo.sroa.0.0, 32
  br label %while.cond.backedge

sw.bb18:                                          ; preds = %while.cond
  %bf.set21 = or i32 %todo.sroa.0.0, 2
  br label %while.cond.backedge

sw.bb22:                                          ; preds = %while.cond
  %bf.set25 = or i32 %todo.sroa.0.0, 4
  br label %while.cond.backedge

sw.bb26:                                          ; preds = %while.cond
  %bf.set29 = or i32 %todo.sroa.0.0, 64
  br label %while.cond.backedge

sw.bb30:                                          ; preds = %while.cond
  %bf.set33 = or i32 %todo.sroa.0.0, 128
  br label %while.cond.backedge

sw.bb34:                                          ; preds = %while.cond
  %bf.set37 = or i32 %todo.sroa.0.0, 256
  br label %while.cond.backedge

sw.bb38:                                          ; preds = %while.cond
  %bf.set41 = or i32 %todo.sroa.0.0, 512
  br label %while.cond.backedge

sw.bb42:                                          ; preds = %while.cond
  %bf.set45 = or i32 %todo.sroa.0.0, 1024
  br label %while.cond.backedge

sw.bb46:                                          ; preds = %while.cond
  %bf.set49 = or i32 %todo.sroa.0.0, 2048
  br label %while.cond.backedge

sw.bb50:                                          ; preds = %while.cond
  %bf.set53 = or i32 %todo.sroa.0.0, 4096
  br label %while.cond.backedge

sw.bb54:                                          ; preds = %while.cond
  %bf.set57 = or i32 %todo.sroa.0.0, 8192
  br label %while.cond.backedge

sw.bb58:                                          ; preds = %while.cond
  %bf.set61 = or i32 %todo.sroa.0.0, 16384
  br label %while.cond.backedge

sw.bb62:                                          ; preds = %while.cond
  %bf.set65 = or i32 %todo.sroa.0.0, 32768
  br label %while.cond.backedge

sw.bb66:                                          ; preds = %while.cond
  %bf.set69 = or i32 %todo.sroa.0.0, 65536
  br label %while.cond.backedge

sw.bb70:                                          ; preds = %while.cond
  %bf.set73 = or i32 %todo.sroa.0.0, 131072
  br label %while.cond.backedge

sw.bb74:                                          ; preds = %while.cond
  %bf.set77 = or i32 %todo.sroa.0.0, 262144
  br label %while.cond.backedge

sw.bb78:                                          ; preds = %while.cond
  %bf.set81 = or i32 %todo.sroa.0.0, 524288
  br label %while.cond.backedge

sw.bb82:                                          ; preds = %while.cond
  %bf.set85 = or i32 %todo.sroa.0.0, 1048576
  br label %while.cond.backedge

sw.bb86:                                          ; preds = %while.cond
  %bf.set89 = or i32 %todo.sroa.0.0, 2097152
  br label %while.cond.backedge

sw.bb90:                                          ; preds = %while.cond
  %bf.set93 = or i32 %todo.sroa.0.0, 4194304
  br label %while.cond.backedge

sw.bb94:                                          ; preds = %while.cond
  %call95 = tail call i8* @opt_arg() #8
  tail call fastcc void @list_options_for_command(i8* noundef %call95) #9
  br label %while.cond.backedge

sw.bb96:                                          ; preds = %while.cond
  store i1 true, i1* @verbose, align 4
  br label %while.cond.backedge

sw.bb97:                                          ; preds = %while.cond
  %call98 = tail call i8* @opt_arg() #8
  store i8* %call98, i8** @select_name, align 8, !tbaa !5
  br label %while.cond.backedge

sw.bb100:                                         ; preds = %while.cond, %while.cond, %while.cond
  %call101 = tail call i32 @opt_provider(i32 noundef %call1) #8
  %tobool.not = icmp eq i32 %call101, 0
  br i1 %tobool.not, label %cleanup, label %while.cond.backedge

while.end:                                        ; preds = %while.cond
  %call102 = tail call i32 @opt_num_rest() #8
  %cmp103.not = icmp eq i32 %call102, 0
  br i1 %cmp103.not, label %if.end105, label %opthelp

if.end105:                                        ; preds = %while.end
  %bf.clear107 = and i32 %todo.sroa.0.0, 1
  %tobool108.not = icmp eq i32 %bf.clear107, 0
  br i1 %tobool108.not, label %if.end110, label %if.then109

if.then109:                                       ; preds = %if.end105
  tail call fastcc void @list_type(i32 noundef 1, i32 noundef %one.0) #9
  br label %if.end110

if.end110:                                        ; preds = %if.then109, %if.end105
  %1 = and i32 %todo.sroa.0.0, 2
  %tobool113.not = icmp eq i32 %1, 0
  br i1 %tobool113.not, label %if.end115, label %if.then114

if.then114:                                       ; preds = %if.end110
  tail call fastcc void @list_random_instances() #9
  br label %if.end115

if.end115:                                        ; preds = %if.then114, %if.end110
  %2 = and i32 %todo.sroa.0.0, 4
  %tobool119.not = icmp eq i32 %2, 0
  br i1 %tobool119.not, label %if.end121, label %if.then120

if.then120:                                       ; preds = %if.end115
  tail call fastcc void @list_random_generators() #9
  br label %if.end121

if.end121:                                        ; preds = %if.then120, %if.end115
  %3 = and i32 %todo.sroa.0.0, 8
  %tobool125.not = icmp eq i32 %3, 0
  br i1 %tobool125.not, label %if.end127, label %if.then126

if.then126:                                       ; preds = %if.end121
  tail call fastcc void @list_type(i32 noundef 2, i32 noundef %one.0) #9
  br label %if.end127

if.end127:                                        ; preds = %if.then126, %if.end121
  %4 = and i32 %todo.sroa.0.0, 16
  %tobool131.not = icmp eq i32 %4, 0
  br i1 %tobool131.not, label %if.end133, label %if.then132

if.then132:                                       ; preds = %if.end127
  tail call fastcc void @list_digests() #9
  br label %if.end133

if.end133:                                        ; preds = %if.then132, %if.end127
  %5 = and i32 %todo.sroa.0.0, 32
  %tobool137.not = icmp eq i32 %5, 0
  br i1 %tobool137.not, label %if.end139, label %if.then138

if.then138:                                       ; preds = %if.end133
  tail call fastcc void @list_kdfs() #9
  br label %if.end139

if.end139:                                        ; preds = %if.then138, %if.end133
  %6 = and i32 %todo.sroa.0.0, 64
  %tobool143.not = icmp eq i32 %6, 0
  br i1 %tobool143.not, label %if.end145, label %if.then144

if.then144:                                       ; preds = %if.end139
  tail call fastcc void @list_macs() #9
  br label %if.end145

if.end145:                                        ; preds = %if.then144, %if.end139
  %7 = and i32 %todo.sroa.0.0, 128
  %tobool149.not = icmp eq i32 %7, 0
  br i1 %tobool149.not, label %if.end151, label %if.then150

if.then150:                                       ; preds = %if.end145
  tail call fastcc void @list_type(i32 noundef 3, i32 noundef %one.0) #9
  br label %if.end151

if.end151:                                        ; preds = %if.then150, %if.end145
  %8 = and i32 %todo.sroa.0.0, 256
  %tobool155.not = icmp eq i32 %8, 0
  br i1 %tobool155.not, label %if.end157, label %if.then156

if.then156:                                       ; preds = %if.end151
  tail call fastcc void @list_ciphers() #9
  br label %if.end157

if.end157:                                        ; preds = %if.then156, %if.end151
  %9 = and i32 %todo.sroa.0.0, 512
  %tobool161.not = icmp eq i32 %9, 0
  br i1 %tobool161.not, label %if.end163, label %if.then162

if.then162:                                       ; preds = %if.end157
  tail call fastcc void @list_encoders() #9
  br label %if.end163

if.end163:                                        ; preds = %if.then162, %if.end157
  %10 = and i32 %todo.sroa.0.0, 1024
  %tobool167.not = icmp eq i32 %10, 0
  br i1 %tobool167.not, label %if.end169, label %if.then168

if.then168:                                       ; preds = %if.end163
  tail call fastcc void @list_decoders() #9
  br label %if.end169

if.end169:                                        ; preds = %if.then168, %if.end163
  %11 = and i32 %todo.sroa.0.0, 2048
  %tobool173.not = icmp eq i32 %11, 0
  br i1 %tobool173.not, label %if.end175, label %if.then174

if.then174:                                       ; preds = %if.end169
  tail call fastcc void @list_keymanagers() #9
  br label %if.end175

if.end175:                                        ; preds = %if.then174, %if.end169
  %12 = and i32 %todo.sroa.0.0, 4096
  %tobool179.not = icmp eq i32 %12, 0
  br i1 %tobool179.not, label %if.end181, label %if.then180

if.then180:                                       ; preds = %if.end175
  tail call fastcc void @list_signatures() #9
  br label %if.end181

if.end181:                                        ; preds = %if.then180, %if.end175
  %13 = and i32 %todo.sroa.0.0, 32768
  %tobool185.not = icmp eq i32 %13, 0
  br i1 %tobool185.not, label %if.end187, label %if.then186

if.then186:                                       ; preds = %if.end181
  tail call fastcc void @list_asymciphers() #9
  br label %if.end187

if.end187:                                        ; preds = %if.then186, %if.end181
  %14 = and i32 %todo.sroa.0.0, 8192
  %tobool191.not = icmp eq i32 %14, 0
  br i1 %tobool191.not, label %if.end193, label %if.then192

if.then192:                                       ; preds = %if.end187
  tail call fastcc void @list_keyexchanges() #9
  br label %if.end193

if.end193:                                        ; preds = %if.then192, %if.end187
  %15 = and i32 %todo.sroa.0.0, 16384
  %tobool197.not = icmp eq i32 %15, 0
  br i1 %tobool197.not, label %if.end199, label %if.then198

if.then198:                                       ; preds = %if.end193
  tail call fastcc void @list_kems() #9
  br label %if.end199

if.end199:                                        ; preds = %if.then198, %if.end193
  %16 = and i32 %todo.sroa.0.0, 65536
  %tobool203.not = icmp eq i32 %16, 0
  br i1 %tobool203.not, label %if.end205, label %if.then204

if.then204:                                       ; preds = %if.end199
  tail call fastcc void @list_pkey() #9
  br label %if.end205

if.end205:                                        ; preds = %if.then204, %if.end199
  %17 = and i32 %todo.sroa.0.0, 131072
  %tobool209.not = icmp eq i32 %17, 0
  br i1 %tobool209.not, label %if.end211, label %if.then210

if.then210:                                       ; preds = %if.end205
  tail call fastcc void @list_pkey_meth() #9
  br label %if.end211

if.end211:                                        ; preds = %if.then210, %if.end205
  %18 = and i32 %todo.sroa.0.0, 262144
  %tobool215.not = icmp eq i32 %18, 0
  br i1 %tobool215.not, label %if.end217, label %if.then216

if.then216:                                       ; preds = %if.end211
  tail call fastcc void @list_store_loaders() #9
  br label %if.end217

if.end217:                                        ; preds = %if.then216, %if.end211
  %19 = and i32 %todo.sroa.0.0, 524288
  %tobool221.not = icmp eq i32 %19, 0
  br i1 %tobool221.not, label %if.end223, label %if.then222

if.then222:                                       ; preds = %if.end217
  tail call fastcc void @list_provider_info() #9
  br label %if.end223

if.end223:                                        ; preds = %if.then222, %if.end217
  %20 = and i32 %todo.sroa.0.0, 1048576
  %tobool227.not = icmp eq i32 %20, 0
  br i1 %tobool227.not, label %if.end229, label %if.then228

if.then228:                                       ; preds = %if.end223
  tail call fastcc void @list_engines() #9
  br label %if.end229

if.end229:                                        ; preds = %if.then228, %if.end223
  %21 = and i32 %todo.sroa.0.0, 2097152
  %tobool233.not = icmp eq i32 %21, 0
  br i1 %tobool233.not, label %if.end235, label %if.then234

if.then234:                                       ; preds = %if.end229
  tail call fastcc void @list_disabled() #9
  br label %if.end235

if.end235:                                        ; preds = %if.then234, %if.end229
  %22 = and i32 %todo.sroa.0.0, 4194304
  %tobool239.not = icmp eq i32 %22, 0
  br i1 %tobool239.not, label %if.end241, label %if.then240

if.then240:                                       ; preds = %if.end235
  tail call fastcc void @list_objects() #9
  br label %if.end241

if.end241:                                        ; preds = %if.then240, %if.end235
  br i1 %tobool242.not, label %opthelp, label %cleanup

cleanup:                                          ; preds = %sw.bb100, %if.end241, %sw.bb3, %opthelp
  %retval.0 = phi i32 [ 0, %sw.bb3 ], [ 1, %opthelp ], [ 0, %if.end241 ], [ 1, %sw.bb100 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i8* @opt_init(i32 noundef, i8** noundef, %struct.options_st* noundef) local_unnamed_addr #3

declare dso_local i32 @opt_next() local_unnamed_addr #3

declare dso_local i32 @BIO_printf(%struct.bio_st* noundef, i8* noundef, ...) local_unnamed_addr #3

declare dso_local void @opt_help(%struct.options_st* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @list_options_for_command(i8* noundef %command) unnamed_addr #0 {
entry:
  %0 = load i8*, i8** getelementptr inbounds ([0 x %struct.function_st], [0 x %struct.function_st]* @functions, i64 0, i64 0, i32 1), align 8, !tbaa !9
  %cmp.not74 = icmp eq i8* %0, null
  br i1 %cmp.not74, label %if.then5, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %1 = phi i8* [ %2, %for.inc ], [ %0, %entry ]
  %fp.075 = phi %struct.function_st* [ %incdec.ptr, %for.inc ], [ getelementptr inbounds ([0 x %struct.function_st], [0 x %struct.function_st]* @functions, i64 0, i64 0), %entry ]
  %call = tail call i32 @strcmp(i8* noundef nonnull %1, i8* noundef %command) #10
  %cmp2 = icmp eq i32 %call, 0
  br i1 %cmp2, label %if.end7, label %for.inc

for.inc:                                          ; preds = %for.body
  %incdec.ptr = getelementptr inbounds %struct.function_st, %struct.function_st* %fp.075, i64 1
  %name = getelementptr inbounds %struct.function_st, %struct.function_st* %fp.075, i64 1, i32 1
  %2 = load i8*, i8** %name, align 8, !tbaa !9
  %cmp.not = icmp eq i8* %2, null
  br i1 %cmp.not, label %if.then5, label %for.body, !llvm.loop !11

if.then5:                                         ; preds = %for.inc, %entry
  %3 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !5
  %call6 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %3, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.67, i64 0, i64 0), i8* noundef %command) #8
  br label %cleanup47

if.end7:                                          ; preds = %for.body
  %help = getelementptr inbounds %struct.function_st, %struct.function_st* %fp.075, i64 0, i32 3
  %4 = load %struct.options_st*, %struct.options_st** %help, align 8, !tbaa !12
  %cmp8 = icmp eq %struct.options_st* %4, null
  br i1 %cmp8, label %cleanup47, label %for.cond11.preheader

for.cond11.preheader:                             ; preds = %if.end7
  %name1276 = getelementptr inbounds %struct.options_st, %struct.options_st* %4, i64 0, i32 0
  %5 = load i8*, i8** %name1276, align 8, !tbaa !13
  %cmp13.not77 = icmp eq i8* %5, null
  br i1 %cmp13.not77, label %for.end45, label %for.body14

for.body14:                                       ; preds = %for.cond11.preheader, %for.inc43
  %6 = phi i8* [ %10, %for.inc43 ], [ %5, %for.cond11.preheader ]
  %o.078 = phi %struct.options_st* [ %incdec.ptr44, %for.inc43 ], [ %4, %for.cond11.preheader ]
  %valtype = getelementptr inbounds %struct.options_st, %struct.options_st* %o.078, i64 0, i32 2
  %7 = load i32, i32* %valtype, align 4, !tbaa !16
  %cmp16 = icmp eq i8* %6, getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_PARAM_STR, i64 0, i64 0)
  br i1 %cmp16, label %for.end45, label %if.end19

if.end19:                                         ; preds = %for.body14
  %cmp21 = icmp eq i8* %6, getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_HELP_STR, i64 0, i64 0)
  %cmp24 = icmp eq i8* %6, getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_MORE_STR, i64 0, i64 0)
  %or.cond = or i1 %cmp21, %cmp24
  %cmp28 = icmp eq i8* %6, getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i64 0, i64 0)
  %or.cond69 = or i1 %cmp28, %or.cond
  br i1 %or.cond69, label %for.inc43, label %lor.lhs.false30

lor.lhs.false30:                                  ; preds = %if.end19
  %8 = load i8, i8* %6, align 1, !tbaa !17
  %cmp33 = icmp eq i8 %8, 0
  br i1 %cmp33, label %for.inc43, label %if.end36

if.end36:                                         ; preds = %lor.lhs.false30
  %9 = load %struct.bio_st*, %struct.bio_st** @bio_out, align 8, !tbaa !5
  %sext = shl i32 %7, 24
  %conv38 = ashr exact i32 %sext, 24
  %cmp39 = icmp eq i32 %sext, 0
  %cond = select i1 %cmp39, i32 45, i32 %conv38
  %call42 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %9, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.68, i64 0, i64 0), i8* noundef nonnull %6, i32 noundef %cond) #8
  br label %for.inc43

for.inc43:                                        ; preds = %if.end36, %lor.lhs.false30, %if.end19
  %incdec.ptr44 = getelementptr inbounds %struct.options_st, %struct.options_st* %o.078, i64 1
  %name12 = getelementptr inbounds %struct.options_st, %struct.options_st* %incdec.ptr44, i64 0, i32 0
  %10 = load i8*, i8** %name12, align 8, !tbaa !13
  %cmp13.not = icmp eq i8* %10, null
  br i1 %cmp13.not, label %for.end45, label %for.body14, !llvm.loop !18

for.end45:                                        ; preds = %for.inc43, %for.body14, %for.cond11.preheader
  %11 = load %struct.bio_st*, %struct.bio_st** @bio_out, align 8, !tbaa !5
  %call46 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %11, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.69, i64 0, i64 0)) #8
  br label %cleanup47

cleanup47:                                        ; preds = %if.end7, %for.end45, %if.then5
  ret void
}

declare dso_local i8* @opt_arg() local_unnamed_addr #3

declare dso_local i32 @opt_provider(i32 noundef) local_unnamed_addr #3

declare dso_local i32 @opt_num_rest() local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @list_type(i32 noundef %ft, i32 noundef %one) unnamed_addr #0 {
entry:
  %dc = alloca %struct.DISPLAY_COLUMNS, align 4
  %0 = bitcast %struct.DISPLAY_COLUMNS* %dc to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #11
  %call = call i8* @memset(i8* noundef nonnull %0, i32 noundef 0, i64 noundef 8) #8
  %tobool.not = icmp eq i32 %one, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @calculate_columns(%struct.function_st* noundef getelementptr inbounds ([0 x %struct.function_st], [0 x %struct.function_st]* @functions, i64 0, i64 0), %struct.DISPLAY_COLUMNS* noundef nonnull %dc) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i8*, i8** getelementptr inbounds ([0 x %struct.function_st], [0 x %struct.function_st]* @functions, i64 0, i64 0, i32 1), align 8, !tbaa !9
  %cmp.not44 = icmp eq i8* %1, null
  br i1 %cmp.not44, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end
  %columns = getelementptr inbounds %struct.DISPLAY_COLUMNS, %struct.DISPLAY_COLUMNS* %dc, i64 0, i32 0
  %width = getelementptr inbounds %struct.DISPLAY_COLUMNS, %struct.DISPLAY_COLUMNS* %dc, i64 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %2 = phi i8* [ %1, %for.body.lr.ph ], [ %11, %for.inc ]
  %name48 = phi i8** [ getelementptr inbounds ([0 x %struct.function_st], [0 x %struct.function_st]* @functions, i64 0, i64 0, i32 1), %for.body.lr.ph ], [ %name, %for.inc ]
  %i.046 = phi i32 [ 0, %for.body.lr.ph ], [ %i.1, %for.inc ]
  %fp.045 = phi %struct.function_st* [ getelementptr inbounds ([0 x %struct.function_st], [0 x %struct.function_st]* @functions, i64 0, i64 0), %for.body.lr.ph ], [ %incdec.ptr, %for.inc ]
  %type = getelementptr inbounds %struct.function_st, %struct.function_st* %fp.045, i64 0, i32 0
  %3 = load i32, i32* %type, align 8, !tbaa !19
  %cmp1.not = icmp eq i32 %3, %ft
  br i1 %cmp1.not, label %if.end3, label %for.inc

if.end3:                                          ; preds = %for.body
  switch i32 %ft, label %sw.epilog [
    i32 3, label %sw.bb
    i32 2, label %sw.bb9
  ]

sw.bb:                                            ; preds = %if.end3
  %call5 = call fastcc i32 @is_cipher_available(i8* noundef nonnull %2) #9
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %for.inc, label %sw.epilog

sw.bb9:                                           ; preds = %if.end3
  %call11 = call fastcc i32 @is_md_available(i8* noundef nonnull %2) #9
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %for.inc, label %sw.epilog

sw.epilog:                                        ; preds = %if.end3, %sw.bb9, %sw.bb
  br i1 %tobool.not, label %if.else, label %if.then16

if.then16:                                        ; preds = %sw.epilog
  %4 = load %struct.bio_st*, %struct.bio_st** @bio_out, align 8, !tbaa !5
  %5 = load i8*, i8** %name48, align 8, !tbaa !9
  %call18 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %4, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.70, i64 0, i64 0), i8* noundef %5) #8
  br label %for.inc

if.else:                                          ; preds = %sw.epilog
  %6 = load i32, i32* %columns, align 4, !tbaa !20
  %rem = srem i32 %i.046, %6
  %cmp19 = icmp eq i32 %rem, 0
  %cmp20 = icmp sgt i32 %i.046, 0
  %or.cond = and i1 %cmp20, %cmp19
  br i1 %or.cond, label %if.then21, label %if.end23

if.then21:                                        ; preds = %if.else
  %7 = load %struct.bio_st*, %struct.bio_st** @bio_out, align 8, !tbaa !5
  %call22 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %7, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.71, i64 0, i64 0)) #8
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %if.else
  %8 = load %struct.bio_st*, %struct.bio_st** @bio_out, align 8, !tbaa !5
  %9 = load i32, i32* %width, align 4, !tbaa !22
  %10 = load i8*, i8** %name48, align 8, !tbaa !9
  %call25 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %8, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.72, i64 0, i64 0), i32 noundef %9, i8* noundef %10) #8
  %inc = add nsw i32 %i.046, 1
  br label %for.inc

for.inc:                                          ; preds = %if.then16, %if.end23, %sw.bb9, %sw.bb, %for.body
  %i.1 = phi i32 [ %i.046, %for.body ], [ %i.046, %if.then16 ], [ %inc, %if.end23 ], [ %i.046, %sw.bb9 ], [ %i.046, %sw.bb ]
  %incdec.ptr = getelementptr inbounds %struct.function_st, %struct.function_st* %fp.045, i64 1
  %name = getelementptr inbounds %struct.function_st, %struct.function_st* %fp.045, i64 1, i32 1
  %11 = load i8*, i8** %name, align 8, !tbaa !9
  %cmp.not = icmp eq i8* %11, null
  br i1 %cmp.not, label %for.end, label %for.body, !llvm.loop !23

for.end:                                          ; preds = %for.inc, %if.end
  br i1 %tobool.not, label %if.then28, label %if.end30

if.then28:                                        ; preds = %for.end
  %12 = load %struct.bio_st*, %struct.bio_st** @bio_out, align 8, !tbaa !5
  %call29 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %12, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.73, i64 0, i64 0)) #8
  br label %if.end30

if.end30:                                         ; preds = %if.then28, %for.end
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #11
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @list_random_instances() unnamed_addr #0 {
entry:
  %call = tail call %struct.evp_rand_ctx_st* @RAND_get0_primary(%struct.ossl_lib_ctx_st* noundef null) #8
  tail call fastcc void @display_random(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.74, i64 0, i64 0), %struct.evp_rand_ctx_st* noundef %call) #9
  %call1 = tail call %struct.evp_rand_ctx_st* @RAND_get0_public(%struct.ossl_lib_ctx_st* noundef null) #8
  tail call fastcc void @display_random(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.75, i64 0, i64 0), %struct.evp_rand_ctx_st* noundef %call1) #9
  %call2 = tail call %struct.evp_rand_ctx_st* @RAND_get0_private(%struct.ossl_lib_ctx_st* noundef null) #8
  tail call fastcc void @display_random(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.76, i64 0, i64 0), %struct.evp_rand_ctx_st* noundef %call2) #9
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @list_random_generators() unnamed_addr #0 {
entry:
  %call = tail call fastcc %struct.stack_st_EVP_RAND* @sk_EVP_RAND_new() #9
  %cmp = icmp eq %struct.stack_st_EVP_RAND* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !5
  %call1 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %0, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.86, i64 0, i64 0)) #8
  br label %cleanup31

if.end:                                           ; preds = %entry
  %1 = load %struct.bio_st*, %struct.bio_st** @bio_out, align 8, !tbaa !5
  %call2 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %1, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.87, i64 0, i64 0)) #8
  %call3 = tail call %struct.ossl_lib_ctx_st* @app_get0_libctx() #8
  %2 = bitcast %struct.stack_st_EVP_RAND* %call to i8*
  tail call void @EVP_RAND_do_all_provided(%struct.ossl_lib_ctx_st* noundef %call3, void (%struct.evp_rand_st*, i8*)* noundef nonnull @collect_rands, i8* noundef nonnull %2) #8
  tail call fastcc void @sk_EVP_RAND_sort(%struct.stack_st_EVP_RAND* noundef nonnull %call) #9
  %call453 = tail call fastcc i32 @sk_EVP_RAND_num(%struct.stack_st_EVP_RAND* noundef nonnull %call) #9
  %cmp554 = icmp sgt i32 %call453, 0
  br i1 %cmp554, label %for.body, label %for.end

for.body:                                         ; preds = %if.end, %cleanup
  %i.055 = phi i32 [ %inc, %cleanup ], [ 0, %if.end ]
  %call6 = tail call fastcc %struct.evp_rand_st* @sk_EVP_RAND_value(%struct.stack_st_EVP_RAND* noundef nonnull %call, i32 noundef %i.055) #9
  %3 = load i8*, i8** @select_name, align 8, !tbaa !5
  %cmp7.not = icmp eq i8* %3, null
  br i1 %cmp7.not, label %if.end12, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body
  %call8 = tail call i8* @EVP_RAND_get0_name(%struct.evp_rand_st* noundef %call6) #8
  %4 = load i8*, i8** @select_name, align 8, !tbaa !5
  %call9 = tail call i32 @strcasecmp(i8* noundef %call8, i8* noundef %4) #10
  %cmp10.not = icmp eq i32 %call9, 0
  br i1 %cmp10.not, label %if.end12, label %cleanup

if.end12:                                         ; preds = %land.lhs.true, %for.body
  %5 = load %struct.bio_st*, %struct.bio_st** @bio_out, align 8, !tbaa !5
  %call13 = tail call i8* @EVP_RAND_get0_name(%struct.evp_rand_st* noundef %call6) #8
  %call14 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %5, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.78, i64 0, i64 0), i8* noundef %call13) #8
  %6 = load %struct.bio_st*, %struct.bio_st** @bio_out, align 8, !tbaa !5
  %call15 = tail call %struct.ossl_provider_st* @EVP_RAND_get0_provider(%struct.evp_rand_st* noundef %call6) #8
  %call16 = tail call i8* @OSSL_PROVIDER_get0_name(%struct.ossl_provider_st* noundef %call15) #8
  %call17 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %6, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.79, i64 0, i64 0), i8* noundef %call16) #8
  %.b = load i1, i1* @verbose, align 4
  br i1 %.b, label %if.then18, label %cleanup

if.then18:                                        ; preds = %if.end12
  %call19 = tail call i8* @EVP_RAND_get0_description(%struct.evp_rand_st* noundef %call6) #8
  %cmp20.not = icmp eq i8* %call19, null
  br i1 %cmp20.not, label %if.end23, label %if.then21

if.then21:                                        ; preds = %if.then18
  %7 = load %struct.bio_st*, %struct.bio_st** @bio_out, align 8, !tbaa !5
  %call22 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %7, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.88, i64 0, i64 0), i8* noundef nonnull %call19) #8
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %if.then18
  %call24 = tail call %struct.ossl_param_st* @EVP_RAND_gettable_params(%struct.evp_rand_st* noundef %call6) #8
  %call25 = tail call i32 @print_param_types(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.89, i64 0, i64 0), %struct.ossl_param_st* noundef %call24, i32 noundef 4) #8
  %call26 = tail call %struct.ossl_param_st* @EVP_RAND_gettable_ctx_params(%struct.evp_rand_st* noundef %call6) #8
  %call27 = tail call i32 @print_param_types(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.90, i64 0, i64 0), %struct.ossl_param_st* noundef %call26, i32 noundef 4) #8
  %call28 = tail call %struct.ossl_param_st* @EVP_RAND_settable_ctx_params(%struct.evp_rand_st* noundef %call6) #8
  %call29 = tail call i32 @print_param_types(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.91, i64 0, i64 0), %struct.ossl_param_st* noundef %call28, i32 noundef 4) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.end23, %land.lhs.true
  %inc = add nuw nsw i32 %i.055, 1
  %call4 = tail call fastcc i32 @sk_EVP_RAND_num(%struct.stack_st_EVP_RAND* noundef nonnull %call) #9
  %cmp5 = icmp slt i32 %inc, %call4
  br i1 %cmp5, label %for.body, label %for.end, !llvm.loop !24

for.end:                                          ; preds = %cleanup, %if.end
  tail call fastcc void @sk_EVP_RAND_pop_free(%struct.stack_st_EVP_RAND* noundef nonnull %call) #9
  br label %cleanup31

cleanup31:                                        ; preds = %for.end, %if.then
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @list_digests() unnamed_addr #0 {
entry:
  %call = tail call fastcc %struct.stack_st_EVP_MD* @sk_EVP_MD_new() #9
  %cmp = icmp eq %struct.stack_st_EVP_MD* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !5
  %call1 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %0, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.86, i64 0, i64 0)) #8
  br label %cleanup44

if.end:                                           ; preds = %entry
  %call2 = tail call fastcc i32 @include_legacy() #9
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end5, label %if.then3

if.then3:                                         ; preds = %if.end
  %1 = load %struct.bio_st*, %struct.bio_st** @bio_out, align 8, !tbaa !5
  %call4 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %1, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.92, i64 0, i64 0)) #8
  %2 = load i8*, i8** bitcast (%struct.bio_st** @bio_out to i8**), align 8, !tbaa !5
  tail call void @EVP_MD_do_all_sorted(void (%struct.evp_md_st*, i8*, i8*, i8*)* noundef nonnull @legacy_md_fn, i8* noundef %2) #8
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end
  %3 = load %struct.bio_st*, %struct.bio_st** @bio_out, align 8, !tbaa !5
  %call6 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %3, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.93, i64 0, i64 0)) #8
  %call7 = tail call %struct.ossl_lib_ctx_st* @app_get0_libctx() #8
  %4 = bitcast %struct.stack_st_EVP_MD* %call to i8*
  tail call void @EVP_MD_do_all_provided(%struct.ossl_lib_ctx_st* noundef %call7, void (%struct.evp_md_st*, i8*)* noundef nonnull @collect_digests, i8* noundef nonnull %4) #8
  tail call fastcc void @sk_EVP_MD_sort(%struct.stack_st_EVP_MD* noundef nonnull %call) #9
  %call871 = tail call fastcc i32 @sk_EVP_MD_num(%struct.stack_st_EVP_MD* noundef nonnull %call) #9
  %cmp972 = icmp sgt i32 %call871, 0
  br i1 %cmp972, label %for.body, label %for.end

for.body:                                         ; preds = %if.end5, %cleanup
  %i.073 = phi i32 [ %inc, %cleanup ], [ 0, %if.end5 ]
  %call10 = tail call fastcc %struct.evp_md_st* @sk_EVP_MD_value(%struct.stack_st_EVP_MD* noundef nonnull %call, i32 noundef %i.073) #9
  %5 = load i8*, i8** @select_name, align 8, !tbaa !5
  %cmp11.not = icmp eq i8* %5, null
  br i1 %cmp11.not, label %if.end15, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body
  %call12 = tail call i32 @EVP_MD_is_a(%struct.evp_md_st* noundef %call10, i8* noundef nonnull %5) #8
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %cleanup, label %if.end15

if.end15:                                         ; preds = %land.lhs.true, %for.body
  %call17 = tail call %struct.stack_st* @OPENSSL_sk_new(i32 (i8*, i8*)* noundef bitcast (i32 (i8**, i8**)* @name_cmp to i32 (i8*, i8*)*)) #8
  %6 = bitcast %struct.stack_st* %call17 to %struct.stack_st_OPENSSL_CSTRING*
  %cmp18.not = icmp eq %struct.stack_st* %call17, null
  br i1 %cmp18.not, label %if.end41, label %land.lhs.true19

land.lhs.true19:                                  ; preds = %if.end15
  %7 = bitcast %struct.stack_st* %call17 to i8*
  %call20 = tail call i32 @EVP_MD_names_do_all(%struct.evp_md_st* noundef %call10, void (i8*, i8*)* noundef nonnull @collect_names, i8* noundef nonnull %7) #8
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end41, label %if.then22

if.then22:                                        ; preds = %land.lhs.true19
  %8 = load %struct.bio_st*, %struct.bio_st** @bio_out, align 8, !tbaa !5
  %call23 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %8, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.94, i64 0, i64 0)) #8
  %9 = load %struct.bio_st*, %struct.bio_st** @bio_out, align 8, !tbaa !5
  tail call void @print_names(%struct.bio_st* noundef %9, %struct.stack_st_OPENSSL_CSTRING* noundef nonnull %6) #8
  %10 = load %struct.bio_st*, %struct.bio_st** @bio_out, align 8, !tbaa !5
  %call24 = tail call %struct.ossl_provider_st* @EVP_MD_get0_provider(%struct.evp_md_st* noundef %call10) #8
  %call25 = tail call i8* @OSSL_PROVIDER_get0_name(%struct.ossl_provider_st* noundef %call24) #8
  %call26 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %10, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.79, i64 0, i64 0), i8* noundef %call25) #8
  %.b = load i1, i1* @verbose, align 4
  br i1 %.b, label %if.then28, label %if.end41

if.then28:                                        ; preds = %if.then22
  %call29 = tail call i8* @EVP_MD_get0_description(%struct.evp_md_st* noundef %call10) #8
  %cmp30.not = icmp eq i8* %call29, null
  br i1 %cmp30.not, label %if.end33, label %if.then31

if.then31:                                        ; preds = %if.then28
  %11 = load %struct.bio_st*, %struct.bio_st** @bio_out, align 8, !tbaa !5
  %call32 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %11, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.88, i64 0, i64 0), i8* noundef nonnull %call29) #8
  br label %if.end33

if.end33:                                         ; preds = %if.then31, %if.then28
  %call34 = tail call %struct.ossl_param_st* @EVP_MD_gettable_params(%struct.evp_md_st* noundef %call10) #8
  %call35 = tail call i32 @print_param_types(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.89, i64 0, i64 0), %struct.ossl_param_st* noundef %call34, i32 noundef 4) #8
  %call36 = tail call %struct.ossl_param_st* @EVP_MD_gettable_ctx_params(%struct.evp_md_st* noundef %call10) #8
  %call37 = tail call i32 @print_param_types(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.90, i64 0, i64 0), %struct.ossl_param_st* noundef %call36, i32 noundef 4) #8
  %call38 = tail call %struct.ossl_param_st* @EVP_MD_settable_ctx_params(%struct.evp_md_st* noundef %call10) #8
  %call39 = tail call i32 @print_param_types(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.91, i64 0, i64 0), %struct.ossl_param_st* noundef %call38, i32 noundef 4) #8
  br label %if.end41

if.end41:                                         ; preds = %if.then22, %if.end33, %land.lhs.true19, %if.end15
  %call42 = tail call fastcc %struct.stack_st* @ossl_check_OPENSSL_CSTRING_sk_type(%struct.stack_st_OPENSSL_CSTRING* noundef %6) #9
  tail call void @OPENSSL_sk_free(%struct.stack_st* noundef %call42) #8
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true, %if.end41
  %inc = add nuw nsw i32 %i.073, 1
  %call8 = tail call fastcc i32 @sk_EVP_MD_num(%struct.stack_st_EVP_MD* noundef nonnull %call) #9
  %cmp9 = icmp slt i32 %inc, %call8
  br i1 %cmp9, label %for.body, label %for.end, !llvm.loop !25

for.end:                                          ; preds = %cleanup, %if.end5
  tail call fastcc void @sk_EVP_MD_pop_free(%struct.stack_st_EVP_MD* noundef nonnull %call) #9
  br label %cleanup44

cleanup44:                                        ; preds = %for.end, %if.then
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @list_kdfs() unnamed_addr #0 {
entry:
  %call = tail call fastcc %struct.stack_st_EVP_KDF* @sk_EVP_KDF_new() #9
  %cmp = icmp eq %struct.stack_st_EVP_KDF* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !5
  %call1 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %0, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.86, i64 0, i64 0)) #8
  br label %cleanup39

if.end:                                           ; preds = %entry
  %1 = load %struct.bio_st*, %struct.bio_st** @bio_out, align 8, !tbaa !5
  %call2 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %1, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.98, i64 0, i64 0)) #8
  %call3 = tail call %struct.ossl_lib_ctx_st* @app_get0_libctx() #8
  %2 = bitcast %struct.stack_st_EVP_KDF* %call to i8*
  tail call void @EVP_KDF_do_all_provided(%struct.ossl_lib_ctx_st* noundef %call3, void (%struct.evp_kdf_st*, i8*)* noundef nonnull @collect_kdfs, i8* noundef nonnull %2) #8
  tail call fastcc void @sk_EVP_KDF_sort(%struct.stack_st_EVP_KDF* noundef nonnull %call) #9
  %call466 = tail call fastcc i32 @sk_EVP_KDF_num(%struct.stack_st_EVP_KDF* noundef nonnull %call) #9
  %cmp567 = icmp sgt i32 %call466, 0
  br i1 %cmp567, label %for.body, label %for.end

for.body:                                         ; preds = %if.end, %cleanup
  %i.068 = phi i32 [ %inc, %cleanup ], [ 0, %if.end ]
  %call6 = tail call fastcc %struct.evp_kdf_st* @sk_EVP_KDF_value(%struct.stack_st_EVP_KDF* noundef nonnull %call, i32 noundef %i.068) #9
  %3 = load i8*, i8** @select_name, align 8, !tbaa !5
  %cmp7.not = icmp eq i8* %3, null
  br i1 %cmp7.not, label %if.end10, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body
  %call8 = tail call i32 @EVP_KDF_is_a(%struct.evp_kdf_st* noundef %call6, i8* noundef nonnull %3) #8
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %cleanup, label %if.end10

if.end10:                                         ; preds = %land.lhs.true, %for.body
  %call12 = tail call %struct.stack_st* @OPENSSL_sk_new(i32 (i8*, i8*)* noundef bitcast (i32 (i8**, i8**)* @name_cmp to i32 (i8*, i8*)*)) #8
  %4 = bitcast %struct.stack_st* %call12 to %struct.stack_st_OPENSSL_CSTRING*
  %cmp13.not = icmp eq %struct.stack_st* %call12, null
  br i1 %cmp13.not, label %if.end36, label %land.lhs.true14

land.lhs.true14:                                  ; preds = %if.end10
  %5 = bitcast %struct.stack_st* %call12 to i8*
  %call15 = tail call i32 @EVP_KDF_names_do_all(%struct.evp_kdf_st* noundef %call6, void (i8*, i8*)* noundef nonnull @collect_names, i8* noundef nonnull %5) #8
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end36, label %if.then17

if.then17:                                        ; preds = %land.lhs.true14
  %6 = load %struct.bio_st*, %struct.bio_st** @bio_out, align 8, !tbaa !5
  %call18 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %6, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.94, i64 0, i64 0)) #8
  %7 = load %struct.bio_st*, %struct.bio_st** @bio_out, align 8, !tbaa !5
  tail call void @print_names(%struct.bio_st* noundef %7, %struct.stack_st_OPENSSL_CSTRING* noundef nonnull %4) #8
  %8 = load %struct.bio_st*, %struct.bio_st** @bio_out, align 8, !tbaa !5
  %call19 = tail call %struct.ossl_provider_st* @EVP_KDF_get0_provider(%struct.evp_kdf_st* noundef %call6) #8
  %call20 = tail call i8* @OSSL_PROVIDER_get0_name(%struct.ossl_provider_st* noundef %call19) #8
  %call21 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %8, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.79, i64 0, i64 0), i8* noundef %call20) #8
  %.b = load i1, i1* @verbose, align 4
  br i1 %.b, label %if.then23, label %if.end36

if.then23:                                        ; preds = %if.then17
  %call24 = tail call i8* @EVP_KDF_get0_description(%struct.evp_kdf_st* noundef %call6) #8
  %cmp25.not = icmp eq i8* %call24, null
  br i1 %cmp25.not, label %if.end28, label %if.then26

if.then26:                                        ; preds = %if.then23
  %9 = load %struct.bio_st*, %struct.bio_st** @bio_out, align 8, !tbaa !5
  %call27 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %9, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.88, i64 0, i64 0), i8* noundef nonnull %call24) #8
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %if.then23
  %call29 = tail call %struct.ossl_param_st* @EVP_KDF_gettable_params(%struct.evp_kdf_st* noundef %call6) #8
  %call30 = tail call i32 @print_param_types(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.89, i64 0, i64 0), %struct.ossl_param_st* noundef %call29, i32 noundef 4) #8
  %call31 = tail call %struct.ossl_param_st* @EVP_KDF_gettable_ctx_params(%struct.evp_kdf_st* noundef %call6) #8
  %call32 = tail call i32 @print_param_types(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.90, i64 0, i64 0), %struct.ossl_param_st* noundef %call31, i32 noundef 4) #8
  %call33 = tail call %struct.ossl_param_st* @EVP_KDF_settable_ctx_params(%struct.evp_kdf_st* noundef %call6) #8
  %call34 = tail call i32 @print_param_types(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.91, i64 0, i64 0), %struct.ossl_param_st* noundef %call33, i32 noundef 4) #8
  br label %if.end36

if.end36:                                         ; preds = %if.then17, %if.end28, %land.lhs.true14, %if.end10
  %call37 = tail call fastcc %struct.stack_st* @ossl_check_OPENSSL_CSTRING_sk_type(%struct.stack_st_OPENSSL_CSTRING* noundef %4) #9
  tail call void @OPENSSL_sk_free(%struct.stack_st* noundef %call37) #8
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true, %if.end36
  %inc = add nuw nsw i32 %i.068, 1
  %call4 = tail call fastcc i32 @sk_EVP_KDF_num(%struct.stack_st_EVP_KDF* noundef nonnull %call) #9
  %cmp5 = icmp slt i32 %inc, %call4
  br i1 %cmp5, label %for.body, label %for.end, !llvm.loop !26

for.end:                                          ; preds = %cleanup, %if.end
  tail call fastcc void @sk_EVP_KDF_pop_free(%struct.stack_st_EVP_KDF* noundef nonnull %call) #9
  br label %cleanup39

cleanup39:                                        ; preds = %for.end, %if.then
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @list_macs() unnamed_addr #0 {
entry:
  %call = tail call fastcc %struct.stack_st_EVP_MAC* @sk_EVP_MAC_new() #9
  %cmp = icmp eq %struct.stack_st_EVP_MAC* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !5
  %call1 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %0, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.86, i64 0, i64 0)) #8
  br label %cleanup39

if.end:                                           ; preds = %entry
  %1 = load %struct.bio_st*, %struct.bio_st** @bio_out, align 8, !tbaa !5
  %call2 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %1, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.99, i64 0, i64 0)) #8
  %call3 = tail call %struct.ossl_lib_ctx_st* @app_get0_libctx() #8
  %2 = bitcast %struct.stack_st_EVP_MAC* %call to i8*
  tail call void @EVP_MAC_do_all_provided(%struct.ossl_lib_ctx_st* noundef %call3, void (%struct.evp_mac_st*, i8*)* noundef nonnull @collect_macs, i8* noundef nonnull %2) #8
  tail call fastcc void @sk_EVP_MAC_sort(%struct.stack_st_EVP_MAC* noundef nonnull %call) #9
  %call466 = tail call fastcc i32 @sk_EVP_MAC_num(%struct.stack_st_EVP_MAC* noundef nonnull %call) #9
  %cmp567 = icmp sgt i32 %call466, 0
  br i1 %cmp567, label %for.body, label %for.end

for.body:                                         ; preds = %if.end, %cleanup
  %i.068 = phi i32 [ %inc, %cleanup ], [ 0, %if.end ]
  %call6 = tail call fastcc %struct.evp_mac_st* @sk_EVP_MAC_value(%struct.stack_st_EVP_MAC* noundef nonnull %call, i32 noundef %i.068) #9
  %3 = load i8*, i8** @select_name, align 8, !tbaa !5
  %cmp7.not = icmp eq i8* %3, null
  br i1 %cmp7.not, label %if.end10, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body
  %call8 = tail call i32 @EVP_MAC_is_a(%struct.evp_mac_st* noundef %call6, i8* noundef nonnull %3) #8
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %cleanup, label %if.end10

if.end10:                                         ; preds = %land.lhs.true, %for.body
  %call12 = tail call %struct.stack_st* @OPENSSL_sk_new(i32 (i8*, i8*)* noundef bitcast (i32 (i8**, i8**)* @name_cmp to i32 (i8*, i8*)*)) #8
  %4 = bitcast %struct.stack_st* %call12 to %struct.stack_st_OPENSSL_CSTRING*
  %cmp13.not = icmp eq %struct.stack_st* %call12, null
  br i1 %cmp13.not, label %if.end36, label %land.lhs.true14

land.lhs.true14:                                  ; preds = %if.end10
  %5 = bitcast %struct.stack_st* %call12 to i8*
  %call15 = tail call i32 @EVP_MAC_names_do_all(%struct.evp_mac_st* noundef %call6, void (i8*, i8*)* noundef nonnull @collect_names, i8* noundef nonnull %5) #8
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end36, label %if.then17

if.then17:                                        ; preds = %land.lhs.true14
  %6 = load %struct.bio_st*, %struct.bio_st** @bio_out, align 8, !tbaa !5
  %call18 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %6, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.94, i64 0, i64 0)) #8
  %7 = load %struct.bio_st*, %struct.bio_st** @bio_out, align 8, !tbaa !5
  tail call void @print_names(%struct.bio_st* noundef %7, %struct.stack_st_OPENSSL_CSTRING* noundef nonnull %4) #8
  %8 = load %struct.bio_st*, %struct.bio_st** @bio_out, align 8, !tbaa !5
  %call19 = tail call %struct.ossl_provider_st* @EVP_MAC_get0_provider(%struct.evp_mac_st* noundef %call6) #8
  %call20 = tail call i8* @OSSL_PROVIDER_get0_name(%struct.ossl_provider_st* noundef %call19) #8
  %call21 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %8, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.79, i64 0, i64 0), i8* noundef %call20) #8
  %.b = load i1, i1* @verbose, align 4
  br i1 %.b, label %if.then23, label %if.end36

if.then23:                                        ; preds = %if.then17
  %call24 = tail call i8* @EVP_MAC_get0_description(%struct.evp_mac_st* noundef %call6) #8
  %cmp25.not = icmp eq i8* %call24, null
  br i1 %cmp25.not, label %if.end28, label %if.then26

if.then26:                                        ; preds = %if.then23
  %9 = load %struct.bio_st*, %struct.bio_st** @bio_out, align 8, !tbaa !5
  %call27 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %9, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.88, i64 0, i64 0), i8* noundef nonnull %call24) #8
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %if.then23
  %call29 = tail call %struct.ossl_param_st* @EVP_MAC_gettable_params(%struct.evp_mac_st* noundef %call6) #8
  %call30 = tail call i32 @print_param_types(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.89, i64 0, i64 0), %struct.ossl_param_st* noundef %call29, i32 noundef 4) #8
  %call31 = tail call %struct.ossl_param_st* @EVP_MAC_gettable_ctx_params(%struct.evp_mac_st* noundef %call6) #8
  %call32 = tail call i32 @print_param_types(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.90, i64 0, i64 0), %struct.ossl_param_st* noundef %call31, i32 noundef 4) #8
  %call33 = tail call %struct.ossl_param_st* @EVP_MAC_settable_ctx_params(%struct.evp_mac_st* noundef %call6) #8
  %call34 = tail call i32 @print_param_types(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.91, i64 0, i64 0), %struct.ossl_param_st* noundef %call33, i32 noundef 4) #8
  br label %if.end36

if.end36:                                         ; preds = %if.then17, %if.end28, %land.lhs.true14, %if.end10
  %call37 = tail call fastcc %struct.stack_st* @ossl_check_OPENSSL_CSTRING_sk_type(%struct.stack_st_OPENSSL_CSTRING* noundef %4) #9
  tail call void @OPENSSL_sk_free(%struct.stack_st* noundef %call37) #8
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true, %if.end36
  %inc = add nuw nsw i32 %i.068, 1
  %call4 = tail call fastcc i32 @sk_EVP_MAC_num(%struct.stack_st_EVP_MAC* noundef nonnull %call) #9
  %cmp5 = icmp slt i32 %inc, %call4
  br i1 %cmp5, label %for.body, label %for.end, !llvm.loop !27

for.end:                                          ; preds = %cleanup, %if.end
  tail call fastcc void @sk_EVP_MAC_pop_free(%struct.stack_st_EVP_MAC* noundef nonnull %call) #9
  br label %cleanup39

cleanup39:                                        ; preds = %for.end, %if.then
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @list_ciphers() unnamed_addr #0 {
entry:
  %call = tail call fastcc %struct.stack_st_EVP_CIPHER* @sk_EVP_CIPHER_new() #9
  %cmp = icmp eq %struct.stack_st_EVP_CIPHER* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !5
  %call1 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %0, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.86, i64 0, i64 0)) #8
  br label %cleanup44

if.end:                                           ; preds = %entry
  %call2 = tail call fastcc i32 @include_legacy() #9
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end5, label %if.then3

if.then3:                                         ; preds = %if.end
  %1 = load %struct.bio_st*, %struct.bio_st** @bio_out, align 8, !tbaa !5
  %call4 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %1, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.92, i64 0, i64 0)) #8
  %2 = load i8*, i8** bitcast (%struct.bio_st** @bio_out to i8**), align 8, !tbaa !5
  tail call void @EVP_CIPHER_do_all_sorted(void (%struct.evp_cipher_st*, i8*, i8*, i8*)* noundef nonnull @legacy_cipher_fn, i8* noundef %2) #8
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end
  %3 = load %struct.bio_st*, %struct.bio_st** @bio_out, align 8, !tbaa !5
  %call6 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %3, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.93, i64 0, i64 0)) #8
  %call7 = tail call %struct.ossl_lib_ctx_st* @app_get0_libctx() #8
  %4 = bitcast %struct.stack_st_EVP_CIPHER* %call to i8*
  tail call void @EVP_CIPHER_do_all_provided(%struct.ossl_lib_ctx_st* noundef %call7, void (%struct.evp_cipher_st*, i8*)* noundef nonnull @collect_ciphers, i8* noundef nonnull %4) #8
  tail call fastcc void @sk_EVP_CIPHER_sort(%struct.stack_st_EVP_CIPHER* noundef nonnull %call) #9
  %call871 = tail call fastcc i32 @sk_EVP_CIPHER_num(%struct.stack_st_EVP_CIPHER* noundef nonnull %call) #9
  %cmp972 = icmp sgt i32 %call871, 0
  br i1 %cmp972, label %for.body, label %for.end

for.body:                                         ; preds = %if.end5, %cleanup
  %i.073 = phi i32 [ %inc, %cleanup ], [ 0, %if.end5 ]
  %call10 = tail call fastcc %struct.evp_cipher_st* @sk_EVP_CIPHER_value(%struct.stack_st_EVP_CIPHER* noundef nonnull %call, i32 noundef %i.073) #9
  %5 = load i8*, i8** @select_name, align 8, !tbaa !5
  %cmp11.not = icmp eq i8* %5, null
  br i1 %cmp11.not, label %if.end15, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body
  %call12 = tail call i32 @EVP_CIPHER_is_a(%struct.evp_cipher_st* noundef %call10, i8* noundef nonnull %5) #8
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %cleanup, label %if.end15

if.end15:                                         ; preds = %land.lhs.true, %for.body
  %call17 = tail call %struct.stack_st* @OPENSSL_sk_new(i32 (i8*, i8*)* noundef bitcast (i32 (i8**, i8**)* @name_cmp to i32 (i8*, i8*)*)) #8
  %6 = bitcast %struct.stack_st* %call17 to %struct.stack_st_OPENSSL_CSTRING*
  %cmp18.not = icmp eq %struct.stack_st* %call17, null
  br i1 %cmp18.not, label %if.end41, label %land.lhs.true19

land.lhs.true19:                                  ; preds = %if.end15
  %7 = bitcast %struct.stack_st* %call17 to i8*
  %call20 = tail call i32 @EVP_CIPHER_names_do_all(%struct.evp_cipher_st* noundef %call10, void (i8*, i8*)* noundef nonnull @collect_names, i8* noundef nonnull %7) #8
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end41, label %if.then22

if.then22:                                        ; preds = %land.lhs.true19
  %8 = load %struct.bio_st*, %struct.bio_st** @bio_out, align 8, !tbaa !5
  %call23 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %8, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.94, i64 0, i64 0)) #8
  %9 = load %struct.bio_st*, %struct.bio_st** @bio_out, align 8, !tbaa !5
  tail call void @print_names(%struct.bio_st* noundef %9, %struct.stack_st_OPENSSL_CSTRING* noundef nonnull %6) #8
  %10 = load %struct.bio_st*, %struct.bio_st** @bio_out, align 8, !tbaa !5
  %call24 = tail call %struct.ossl_provider_st* @EVP_CIPHER_get0_provider(%struct.evp_cipher_st* noundef %call10) #8
  %call25 = tail call i8* @OSSL_PROVIDER_get0_name(%struct.ossl_provider_st* noundef %call24) #8
  %call26 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %10, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.79, i64 0, i64 0), i8* noundef %call25) #8
  %.b = load i1, i1* @verbose, align 4
  br i1 %.b, label %if.then28, label %if.end41

if.then28:                                        ; preds = %if.then22
  %call29 = tail call i8* @EVP_CIPHER_get0_description(%struct.evp_cipher_st* noundef %call10) #8
  %cmp30.not = icmp eq i8* %call29, null
  br i1 %cmp30.not, label %if.end33, label %if.then31

if.then31:                                        ; preds = %if.then28
  %11 = load %struct.bio_st*, %struct.bio_st** @bio_out, align 8, !tbaa !5
  %call32 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %11, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.88, i64 0, i64 0), i8* noundef nonnull %call29) #8
  br label %if.end33

if.end33:                                         ; preds = %if.then31, %if.then28
  %call34 = tail call %struct.ossl_param_st* @EVP_CIPHER_gettable_params(%struct.evp_cipher_st* noundef %call10) #8
  %call35 = tail call i32 @print_param_types(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.89, i64 0, i64 0), %struct.ossl_param_st* noundef %call34, i32 noundef 4) #8
  %call36 = tail call %struct.ossl_param_st* @EVP_CIPHER_gettable_ctx_params(%struct.evp_cipher_st* noundef %call10) #8
  %call37 = tail call i32 @print_param_types(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.90, i64 0, i64 0), %struct.ossl_param_st* noundef %call36, i32 noundef 4) #8
  %call38 = tail call %struct.ossl_param_st* @EVP_CIPHER_settable_ctx_params(%struct.evp_cipher_st* noundef %call10) #8
  %call39 = tail call i32 @print_param_types(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.91, i64 0, i64 0), %struct.ossl_param_st* noundef %call38, i32 noundef 4) #8
  br label %if.end41

if.end41:                                         ; preds = %if.then22, %if.end33, %land.lhs.true19, %if.end15
  %call42 = tail call fastcc %struct.stack_st* @ossl_check_OPENSSL_CSTRING_sk_type(%struct.stack_st_OPENSSL_CSTRING* noundef %6) #9
  tail call void @OPENSSL_sk_free(%struct.stack_st* noundef %call42) #8
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true, %if.end41
  %inc = add nuw nsw i32 %i.073, 1
  %call8 = tail call fastcc i32 @sk_EVP_CIPHER_num(%struct.stack_st_EVP_CIPHER* noundef nonnull %call) #9
  %cmp9 = icmp slt i32 %inc, %call8
  br i1 %cmp9, label %for.body, label %for.end, !llvm.loop !28

for.end:                                          ; preds = %cleanup, %if.end5
  tail call fastcc void @sk_EVP_CIPHER_pop_free(%struct.stack_st_EVP_CIPHER* noundef nonnull %call) #9
  br label %cleanup44

cleanup44:                                        ; preds = %for.end, %if.then
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @list_encoders() unnamed_addr #0 {
entry:
  %call = tail call fastcc %struct.stack_st_OSSL_ENCODER* @sk_OSSL_ENCODER_new() #9
  %cmp = icmp eq %struct.stack_st_OSSL_ENCODER* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !5
  %call1 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %0, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.86, i64 0, i64 0)) #8
  br label %cleanup36

if.end:                                           ; preds = %entry
  %1 = load %struct.bio_st*, %struct.bio_st** @bio_out, align 8, !tbaa !5
  %call2 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %1, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.100, i64 0, i64 0)) #8
  %call3 = tail call %struct.ossl_lib_ctx_st* @app_get0_libctx() #8
  %2 = bitcast %struct.stack_st_OSSL_ENCODER* %call to i8*
  tail call void @OSSL_ENCODER_do_all_provided(%struct.ossl_lib_ctx_st* noundef %call3, void (%struct.ossl_encoder_st*, i8*)* noundef nonnull @collect_encoders, i8* noundef nonnull %2) #8
  tail call fastcc void @sk_OSSL_ENCODER_sort(%struct.stack_st_OSSL_ENCODER* noundef nonnull %call) #9
  %call462 = tail call fastcc i32 @sk_OSSL_ENCODER_num(%struct.stack_st_OSSL_ENCODER* noundef nonnull %call) #9
  %cmp563 = icmp sgt i32 %call462, 0
  br i1 %cmp563, label %for.body, label %for.end

for.body:                                         ; preds = %if.end, %cleanup
  %i.064 = phi i32 [ %inc, %cleanup ], [ 0, %if.end ]
  %call6 = tail call fastcc %struct.ossl_encoder_st* @sk_OSSL_ENCODER_value(%struct.stack_st_OSSL_ENCODER* noundef nonnull %call, i32 noundef %i.064) #9
  %3 = load i8*, i8** @select_name, align 8, !tbaa !5
  %cmp7.not = icmp eq i8* %3, null
  br i1 %cmp7.not, label %if.end10, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body
  %call8 = tail call i32 @OSSL_ENCODER_is_a(%struct.ossl_encoder_st* noundef %call6, i8* noundef nonnull %3) #8
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %cleanup, label %if.end10

if.end10:                                         ; preds = %land.lhs.true, %for.body
  %call12 = tail call %struct.stack_st* @OPENSSL_sk_new(i32 (i8*, i8*)* noundef bitcast (i32 (i8**, i8**)* @name_cmp to i32 (i8*, i8*)*)) #8
  %4 = bitcast %struct.stack_st* %call12 to %struct.stack_st_OPENSSL_CSTRING*
  %cmp13.not = icmp eq %struct.stack_st* %call12, null
  br i1 %cmp13.not, label %if.end33, label %land.lhs.true14

land.lhs.true14:                                  ; preds = %if.end10
  %5 = bitcast %struct.stack_st* %call12 to i8*
  %call15 = tail call i32 @OSSL_ENCODER_names_do_all(%struct.ossl_encoder_st* noundef %call6, void (i8*, i8*)* noundef nonnull @collect_names, i8* noundef nonnull %5) #8
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end33, label %if.then17

if.then17:                                        ; preds = %land.lhs.true14
  %6 = load %struct.bio_st*, %struct.bio_st** @bio_out, align 8, !tbaa !5
  %call18 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %6, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.94, i64 0, i64 0)) #8
  %7 = load %struct.bio_st*, %struct.bio_st** @bio_out, align 8, !tbaa !5
  tail call void @print_names(%struct.bio_st* noundef %7, %struct.stack_st_OPENSSL_CSTRING* noundef nonnull %4) #8
  %8 = load %struct.bio_st*, %struct.bio_st** @bio_out, align 8, !tbaa !5
  %call19 = tail call %struct.ossl_provider_st* @OSSL_ENCODER_get0_provider(%struct.ossl_encoder_st* noundef %call6) #8
  %call20 = tail call i8* @OSSL_PROVIDER_get0_name(%struct.ossl_provider_st* noundef %call19) #8
  %call21 = tail call i8* @OSSL_ENCODER_get0_properties(%struct.ossl_encoder_st* noundef %call6) #8
  %call22 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %8, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.101, i64 0, i64 0), i8* noundef %call20, i8* noundef %call21) #8
  %.b = load i1, i1* @verbose, align 4
  br i1 %.b, label %if.then24, label %if.end33

if.then24:                                        ; preds = %if.then17
  %call25 = tail call i8* @OSSL_ENCODER_get0_description(%struct.ossl_encoder_st* noundef %call6) #8
  %cmp26.not = icmp eq i8* %call25, null
  br i1 %cmp26.not, label %if.end29, label %if.then27

if.then27:                                        ; preds = %if.then24
  %9 = load %struct.bio_st*, %struct.bio_st** @bio_out, align 8, !tbaa !5
  %call28 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %9, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.88, i64 0, i64 0), i8* noundef nonnull %call25) #8
  br label %if.end29

if.end29:                                         ; preds = %if.then27, %if.then24
  %call30 = tail call %struct.ossl_param_st* @OSSL_ENCODER_settable_ctx_params(%struct.ossl_encoder_st* noundef %call6) #8
  %call31 = tail call i32 @print_param_types(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.91, i64 0, i64 0), %struct.ossl_param_st* noundef %call30, i32 noundef 4) #8
  br label %if.end33

if.end33:                                         ; preds = %if.then17, %if.end29, %land.lhs.true14, %if.end10
  %call34 = tail call fastcc %struct.stack_st* @ossl_check_OPENSSL_CSTRING_sk_type(%struct.stack_st_OPENSSL_CSTRING* noundef %4) #9
  tail call void @OPENSSL_sk_free(%struct.stack_st* noundef %call34) #8
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true, %if.end33
  %inc = add nuw nsw i32 %i.064, 1
  %call4 = tail call fastcc i32 @sk_OSSL_ENCODER_num(%struct.stack_st_OSSL_ENCODER* noundef nonnull %call) #9
  %cmp5 = icmp slt i32 %inc, %call4
  br i1 %cmp5, label %for.body, label %for.end, !llvm.loop !29

for.end:                                          ; preds = %cleanup, %if.end
  tail call fastcc void @sk_OSSL_ENCODER_pop_free(%struct.stack_st_OSSL_ENCODER* noundef nonnull %call) #9
  br label %cleanup36

cleanup36:                                        ; preds = %for.end, %if.then
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @list_decoders() unnamed_addr #0 {
entry:
  %call = tail call fastcc %struct.stack_st_OSSL_DECODER* @sk_OSSL_DECODER_new() #9
  %cmp = icmp eq %struct.stack_st_OSSL_DECODER* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !5
  %call1 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %0, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.86, i64 0, i64 0)) #8
  br label %cleanup36

if.end:                                           ; preds = %entry
  %1 = load %struct.bio_st*, %struct.bio_st** @bio_out, align 8, !tbaa !5
  %call2 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %1, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.102, i64 0, i64 0)) #8
  %call3 = tail call %struct.ossl_lib_ctx_st* @app_get0_libctx() #8
  %2 = bitcast %struct.stack_st_OSSL_DECODER* %call to i8*
  tail call void @OSSL_DECODER_do_all_provided(%struct.ossl_lib_ctx_st* noundef %call3, void (%struct.ossl_decoder_st*, i8*)* noundef nonnull @collect_decoders, i8* noundef nonnull %2) #8
  tail call fastcc void @sk_OSSL_DECODER_sort(%struct.stack_st_OSSL_DECODER* noundef nonnull %call) #9
  %call462 = tail call fastcc i32 @sk_OSSL_DECODER_num(%struct.stack_st_OSSL_DECODER* noundef nonnull %call) #9
  %cmp563 = icmp sgt i32 %call462, 0
  br i1 %cmp563, label %for.body, label %for.end

for.body:                                         ; preds = %if.end, %cleanup
  %i.064 = phi i32 [ %inc, %cleanup ], [ 0, %if.end ]
  %call6 = tail call fastcc %struct.ossl_decoder_st* @sk_OSSL_DECODER_value(%struct.stack_st_OSSL_DECODER* noundef nonnull %call, i32 noundef %i.064) #9
  %3 = load i8*, i8** @select_name, align 8, !tbaa !5
  %cmp7.not = icmp eq i8* %3, null
  br i1 %cmp7.not, label %if.end10, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body
  %call8 = tail call i32 @OSSL_DECODER_is_a(%struct.ossl_decoder_st* noundef %call6, i8* noundef nonnull %3) #8
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %cleanup, label %if.end10

if.end10:                                         ; preds = %land.lhs.true, %for.body
  %call12 = tail call %struct.stack_st* @OPENSSL_sk_new(i32 (i8*, i8*)* noundef bitcast (i32 (i8**, i8**)* @name_cmp to i32 (i8*, i8*)*)) #8
  %4 = bitcast %struct.stack_st* %call12 to %struct.stack_st_OPENSSL_CSTRING*
  %cmp13.not = icmp eq %struct.stack_st* %call12, null
  br i1 %cmp13.not, label %if.end33, label %land.lhs.true14

land.lhs.true14:                                  ; preds = %if.end10
  %5 = bitcast %struct.stack_st* %call12 to i8*
  %call15 = tail call i32 @OSSL_DECODER_names_do_all(%struct.ossl_decoder_st* noundef %call6, void (i8*, i8*)* noundef nonnull @collect_names, i8* noundef nonnull %5) #8
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end33, label %if.then17

if.then17:                                        ; preds = %land.lhs.true14
  %6 = load %struct.bio_st*, %struct.bio_st** @bio_out, align 8, !tbaa !5
  %call18 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %6, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.94, i64 0, i64 0)) #8
  %7 = load %struct.bio_st*, %struct.bio_st** @bio_out, align 8, !tbaa !5
  tail call void @print_names(%struct.bio_st* noundef %7, %struct.stack_st_OPENSSL_CSTRING* noundef nonnull %4) #8
  %8 = load %struct.bio_st*, %struct.bio_st** @bio_out, align 8, !tbaa !5
  %call19 = tail call %struct.ossl_provider_st* @OSSL_DECODER_get0_provider(%struct.ossl_decoder_st* noundef %call6) #8
  %call20 = tail call i8* @OSSL_PROVIDER_get0_name(%struct.ossl_provider_st* noundef %call19) #8
  %call21 = tail call i8* @OSSL_DECODER_get0_properties(%struct.ossl_decoder_st* noundef %call6) #8
  %call22 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %8, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.101, i64 0, i64 0), i8* noundef %call20, i8* noundef %call21) #8
  %.b = load i1, i1* @verbose, align 4
  br i1 %.b, label %if.then24, label %if.end33

if.then24:                                        ; preds = %if.then17
  %call25 = tail call i8* @OSSL_DECODER_get0_description(%struct.ossl_decoder_st* noundef %call6) #8
  %cmp26.not = icmp eq i8* %call25, null
  br i1 %cmp26.not, label %if.end29, label %if.then27

if.then27:                                        ; preds = %if.then24
  %9 = load %struct.bio_st*, %struct.bio_st** @bio_out, align 8, !tbaa !5
  %call28 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %9, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.88, i64 0, i64 0), i8* noundef nonnull %call25) #8
  br label %if.end29

if.end29:                                         ; preds = %if.then27, %if.then24
  %call30 = tail call %struct.ossl_param_st* @OSSL_DECODER_settable_ctx_params(%struct.ossl_decoder_st* noundef %call6) #8
  %call31 = tail call i32 @print_param_types(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.91, i64 0, i64 0), %struct.ossl_param_st* noundef %call30, i32 noundef 4) #8
  br label %if.end33

if.end33:                                         ; preds = %if.then17, %if.end29, %land.lhs.true14, %if.end10
  %call34 = tail call fastcc %struct.stack_st* @ossl_check_OPENSSL_CSTRING_sk_type(%struct.stack_st_OPENSSL_CSTRING* noundef %4) #9
  tail call void @OPENSSL_sk_free(%struct.stack_st* noundef %call34) #8
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true, %if.end33
  %inc = add nuw nsw i32 %i.064, 1
  %call4 = tail call fastcc i32 @sk_OSSL_DECODER_num(%struct.stack_st_OSSL_DECODER* noundef nonnull %call) #9
  %cmp5 = icmp slt i32 %inc, %call4
  br i1 %cmp5, label %for.body, label %for.end, !llvm.loop !30

for.end:                                          ; preds = %cleanup, %if.end
  tail call fastcc void @sk_OSSL_DECODER_pop_free(%struct.stack_st_OSSL_DECODER* noundef nonnull %call) #9
  br label %cleanup36

cleanup36:                                        ; preds = %for.end, %if.then
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @list_keymanagers() unnamed_addr #0 {
entry:
  %call = tail call fastcc %struct.stack_st_EVP_KEYMGMT* @sk_EVP_KEYMGMT_new() #9
  %call1 = tail call %struct.ossl_lib_ctx_st* @app_get0_libctx() #8
  %0 = bitcast %struct.stack_st_EVP_KEYMGMT* %call to i8*
  tail call void @EVP_KEYMGMT_do_all_provided(%struct.ossl_lib_ctx_st* noundef %call1, void (%struct.evp_keymgmt_st*, i8*)* noundef nonnull @collect_keymanagers, i8* noundef %0) #8
  tail call fastcc void @sk_EVP_KEYMGMT_sort(%struct.stack_st_EVP_KEYMGMT* noundef %call) #9
  %call263 = tail call fastcc i32 @sk_EVP_KEYMGMT_num(%struct.stack_st_EVP_KEYMGMT* noundef %call) #9
  %cmp64 = icmp sgt i32 %call263, 0
  br i1 %cmp64, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %cleanup
  %i.065 = phi i32 [ %inc, %cleanup ], [ 0, %entry ]
  %call3 = tail call fastcc %struct.evp_keymgmt_st* @sk_EVP_KEYMGMT_value(%struct.stack_st_EVP_KEYMGMT* noundef %call, i32 noundef %i.065) #9
  %1 = load i8*, i8** @select_name, align 8, !tbaa !5
  %cmp4.not = icmp eq i8* %1, null
  br i1 %cmp4.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body
  %call5 = tail call i32 @EVP_KEYMGMT_is_a(%struct.evp_keymgmt_st* noundef %call3, i8* noundef nonnull %1) #8
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %land.lhs.true, %for.body
  %call7 = tail call %struct.stack_st* @OPENSSL_sk_new(i32 (i8*, i8*)* noundef bitcast (i32 (i8**, i8**)* @name_cmp to i32 (i8*, i8*)*)) #8
  %2 = bitcast %struct.stack_st* %call7 to %struct.stack_st_OPENSSL_CSTRING*
  %cmp8.not = icmp eq %struct.stack_st* %call7, null
  br i1 %cmp8.not, label %if.end37, label %land.lhs.true9

land.lhs.true9:                                   ; preds = %if.end
  %3 = bitcast %struct.stack_st* %call7 to i8*
  %call10 = tail call i32 @EVP_KEYMGMT_names_do_all(%struct.evp_keymgmt_st* noundef %call3, void (i8*, i8*)* noundef nonnull @collect_names, i8* noundef nonnull %3) #8
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end37, label %if.then12

if.then12:                                        ; preds = %land.lhs.true9
  %call13 = tail call i8* @EVP_KEYMGMT_get0_description(%struct.evp_keymgmt_st* noundef %call3) #8
  %4 = load %struct.bio_st*, %struct.bio_st** @bio_out, align 8, !tbaa !5
  %call14 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %4, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.103, i64 0, i64 0)) #8
  %cmp15.not = icmp eq i8* %call13, null
  %5 = load %struct.bio_st*, %struct.bio_st** @bio_out, align 8, !tbaa !5
  br i1 %cmp15.not, label %if.else, label %if.then16

if.then16:                                        ; preds = %if.then12
  %call17 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %5, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.104, i64 0, i64 0), i8* noundef nonnull %call13) #8
  br label %if.end21

if.else:                                          ; preds = %if.then12
  %call18 = tail call fastcc %struct.stack_st* @ossl_check_const_OPENSSL_CSTRING_sk_type(%struct.stack_st_OPENSSL_CSTRING* noundef nonnull %2) #9
  %call19 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call18, i32 noundef 0) #8
  %call20 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %5, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.104, i64 0, i64 0), i8* noundef %call19) #8
  br label %if.end21

if.end21:                                         ; preds = %if.else, %if.then16
  %6 = load %struct.bio_st*, %struct.bio_st** @bio_out, align 8, !tbaa !5
  %call22 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %6, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.71, i64 0, i64 0)) #8
  %7 = load %struct.bio_st*, %struct.bio_st** @bio_out, align 8, !tbaa !5
  %call23 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %7, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.105, i64 0, i64 0)) #8
  %8 = load %struct.bio_st*, %struct.bio_st** @bio_out, align 8, !tbaa !5
  %call24 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %8, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.106, i64 0, i64 0)) #8
  %9 = load %struct.bio_st*, %struct.bio_st** @bio_out, align 8, !tbaa !5
  tail call void @print_names(%struct.bio_st* noundef %9, %struct.stack_st_OPENSSL_CSTRING* noundef nonnull %2) #8
  %10 = load %struct.bio_st*, %struct.bio_st** @bio_out, align 8, !tbaa !5
  %call25 = tail call %struct.ossl_provider_st* @EVP_KEYMGMT_get0_provider(%struct.evp_keymgmt_st* noundef %call3) #8
  %call26 = tail call i8* @OSSL_PROVIDER_get0_name(%struct.ossl_provider_st* noundef %call25) #8
  %call27 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %10, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.79, i64 0, i64 0), i8* noundef %call26) #8
  %.b = load i1, i1* @verbose, align 4
  br i1 %.b, label %if.then29, label %if.end37

if.then29:                                        ; preds = %if.end21
  %call30 = tail call %struct.ossl_param_st* @EVP_KEYMGMT_gen_settable_params(%struct.evp_keymgmt_st* noundef %call3) #8
  %call31 = tail call i32 @print_param_types(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.107, i64 0, i64 0), %struct.ossl_param_st* noundef %call30, i32 noundef 4) #8
  %call32 = tail call %struct.ossl_param_st* @EVP_KEYMGMT_settable_params(%struct.evp_keymgmt_st* noundef %call3) #8
  %call33 = tail call i32 @print_param_types(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.91, i64 0, i64 0), %struct.ossl_param_st* noundef %call32, i32 noundef 4) #8
  %call34 = tail call %struct.ossl_param_st* @EVP_KEYMGMT_gettable_params(%struct.evp_keymgmt_st* noundef %call3) #8
  %call35 = tail call i32 @print_param_types(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.90, i64 0, i64 0), %struct.ossl_param_st* noundef %call34, i32 noundef 4) #8
  br label %if.end37

if.end37:                                         ; preds = %if.end21, %if.then29, %land.lhs.true9, %if.end
  %call38 = tail call fastcc %struct.stack_st* @ossl_check_OPENSSL_CSTRING_sk_type(%struct.stack_st_OPENSSL_CSTRING* noundef %2) #9
  tail call void @OPENSSL_sk_free(%struct.stack_st* noundef %call38) #8
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true, %if.end37
  %inc = add nuw nsw i32 %i.065, 1
  %call2 = tail call fastcc i32 @sk_EVP_KEYMGMT_num(%struct.stack_st_EVP_KEYMGMT* noundef %call) #9
  %cmp = icmp slt i32 %inc, %call2
  br i1 %cmp, label %for.body, label %for.end, !llvm.loop !31

for.end:                                          ; preds = %cleanup, %entry
  tail call fastcc void @sk_EVP_KEYMGMT_pop_free(%struct.stack_st_EVP_KEYMGMT* noundef %call) #9
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @list_signatures() unnamed_addr #0 {
entry:
  %call = tail call fastcc %struct.stack_st_EVP_SIGNATURE* @sk_EVP_SIGNATURE_new() #9
  %call1 = tail call %struct.ossl_lib_ctx_st* @app_get0_libctx() #8
  %0 = bitcast %struct.stack_st_EVP_SIGNATURE* %call to i8*
  tail call void @EVP_SIGNATURE_do_all_provided(%struct.ossl_lib_ctx_st* noundef %call1, void (%struct.evp_signature_st*, i8*)* noundef nonnull @collect_signatures, i8* noundef %0) #8
  tail call fastcc void @sk_EVP_SIGNATURE_sort(%struct.stack_st_EVP_SIGNATURE* noundef %call) #9
  %call260 = tail call fastcc i32 @sk_EVP_SIGNATURE_num(%struct.stack_st_EVP_SIGNATURE* noundef %call) #9
  %cmp61 = icmp sgt i32 %call260, 0
  br i1 %cmp61, label %for.body, label %for.end.thread

for.end.thread:                                   ; preds = %entry
  tail call fastcc void @sk_EVP_SIGNATURE_pop_free(%struct.stack_st_EVP_SIGNATURE* noundef %call) #9
  br label %if.then34

for.body:                                         ; preds = %entry, %cleanup
  %i.064 = phi i32 [ %inc32, %cleanup ], [ 0, %entry ]
  %count.062 = phi i32 [ %count.2, %cleanup ], [ 0, %entry ]
  %call3 = tail call fastcc %struct.evp_signature_st* @sk_EVP_SIGNATURE_value(%struct.stack_st_EVP_SIGNATURE* noundef %call, i32 noundef %i.064) #9
  %1 = load i8*, i8** @select_name, align 8, !tbaa !5
  %cmp4.not = icmp eq i8* %1, null
  br i1 %cmp4.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body
  %call5 = tail call i32 @EVP_SIGNATURE_is_a(%struct.evp_signature_st* noundef %call3, i8* noundef nonnull %1) #8
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %land.lhs.true, %for.body
  %call7 = tail call %struct.stack_st* @OPENSSL_sk_new(i32 (i8*, i8*)* noundef bitcast (i32 (i8**, i8**)* @name_cmp to i32 (i8*, i8*)*)) #8
  %2 = bitcast %struct.stack_st* %call7 to %struct.stack_st_OPENSSL_CSTRING*
  %cmp8.not = icmp eq %struct.stack_st* %call7, null
  br i1 %cmp8.not, label %if.end29, label %land.lhs.true9

land.lhs.true9:                                   ; preds = %if.end
  %3 = bitcast %struct.stack_st* %call7 to i8*
  %call10 = tail call i32 @EVP_SIGNATURE_names_do_all(%struct.evp_signature_st* noundef %call3, void (i8*, i8*)* noundef nonnull @collect_names, i8* noundef nonnull %3) #8
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end29, label %if.then12

if.then12:                                        ; preds = %land.lhs.true9
  %inc = add nsw i32 %count.062, 1
  %4 = load %struct.bio_st*, %struct.bio_st** @bio_out, align 8, !tbaa !5
  %call13 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %4, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.94, i64 0, i64 0)) #8
  %5 = load %struct.bio_st*, %struct.bio_st** @bio_out, align 8, !tbaa !5
  tail call void @print_names(%struct.bio_st* noundef %5, %struct.stack_st_OPENSSL_CSTRING* noundef nonnull %2) #8
  %6 = load %struct.bio_st*, %struct.bio_st** @bio_out, align 8, !tbaa !5
  %call14 = tail call %struct.ossl_provider_st* @EVP_SIGNATURE_get0_provider(%struct.evp_signature_st* noundef %call3) #8
  %call15 = tail call i8* @OSSL_PROVIDER_get0_name(%struct.ossl_provider_st* noundef %call14) #8
  %call16 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %6, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.79, i64 0, i64 0), i8* noundef %call15) #8
  %.b = load i1, i1* @verbose, align 4
  br i1 %.b, label %if.then18, label %if.end29

if.then18:                                        ; preds = %if.then12
  %call19 = tail call i8* @EVP_SIGNATURE_get0_description(%struct.evp_signature_st* noundef %call3) #8
  %cmp20.not = icmp eq i8* %call19, null
  br i1 %cmp20.not, label %if.end23, label %if.then21

if.then21:                                        ; preds = %if.then18
  %7 = load %struct.bio_st*, %struct.bio_st** @bio_out, align 8, !tbaa !5
  %call22 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %7, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.88, i64 0, i64 0), i8* noundef nonnull %call19) #8
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %if.then18
  %call24 = tail call %struct.ossl_param_st* @EVP_SIGNATURE_settable_ctx_params(%struct.evp_signature_st* noundef %call3) #8
  %call25 = tail call i32 @print_param_types(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.91, i64 0, i64 0), %struct.ossl_param_st* noundef %call24, i32 noundef 4) #8
  %call26 = tail call %struct.ossl_param_st* @EVP_SIGNATURE_gettable_ctx_params(%struct.evp_signature_st* noundef %call3) #8
  %call27 = tail call i32 @print_param_types(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.90, i64 0, i64 0), %struct.ossl_param_st* noundef %call26, i32 noundef 4) #8
  br label %if.end29

if.end29:                                         ; preds = %if.then12, %if.end23, %land.lhs.true9, %if.end
  %count.1 = phi i32 [ %inc, %if.end23 ], [ %inc, %if.then12 ], [ %count.062, %land.lhs.true9 ], [ %count.062, %if.end ]
  %call30 = tail call fastcc %struct.stack_st* @ossl_check_OPENSSL_CSTRING_sk_type(%struct.stack_st_OPENSSL_CSTRING* noundef %2) #9
  tail call void @OPENSSL_sk_free(%struct.stack_st* noundef %call30) #8
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true, %if.end29
  %count.2 = phi i32 [ %count.1, %if.end29 ], [ %count.062, %land.lhs.true ]
  %inc32 = add nuw nsw i32 %i.064, 1
  %call2 = tail call fastcc i32 @sk_EVP_SIGNATURE_num(%struct.stack_st_EVP_SIGNATURE* noundef %call) #9
  %cmp = icmp slt i32 %inc32, %call2
  br i1 %cmp, label %for.body, label %for.end, !llvm.loop !32

for.end:                                          ; preds = %cleanup
  tail call fastcc void @sk_EVP_SIGNATURE_pop_free(%struct.stack_st_EVP_SIGNATURE* noundef %call) #9
  %cmp33 = icmp eq i32 %count.2, 0
  br i1 %cmp33, label %if.then34, label %if.end36

if.then34:                                        ; preds = %for.end.thread, %for.end
  %8 = load %struct.bio_st*, %struct.bio_st** @bio_out, align 8, !tbaa !5
  %call35 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %8, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.108, i64 0, i64 0)) #8
  br label %if.end36

if.end36:                                         ; preds = %if.then34, %for.end
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @list_asymciphers() unnamed_addr #0 {
entry:
  %call = tail call fastcc %struct.stack_st_EVP_ASYM_CIPHER* @sk_EVP_ASYM_CIPHER_new() #9
  %call1 = tail call %struct.ossl_lib_ctx_st* @app_get0_libctx() #8
  %0 = bitcast %struct.stack_st_EVP_ASYM_CIPHER* %call to i8*
  tail call void @EVP_ASYM_CIPHER_do_all_provided(%struct.ossl_lib_ctx_st* noundef %call1, void (%struct.evp_asym_cipher_st*, i8*)* noundef nonnull @collect_asymciph, i8* noundef %0) #8
  tail call fastcc void @sk_EVP_ASYM_CIPHER_sort(%struct.stack_st_EVP_ASYM_CIPHER* noundef %call) #9
  %call260 = tail call fastcc i32 @sk_EVP_ASYM_CIPHER_num(%struct.stack_st_EVP_ASYM_CIPHER* noundef %call) #9
  %cmp61 = icmp sgt i32 %call260, 0
  br i1 %cmp61, label %for.body, label %for.end.thread

for.end.thread:                                   ; preds = %entry
  tail call fastcc void @sk_EVP_ASYM_CIPHER_pop_free(%struct.stack_st_EVP_ASYM_CIPHER* noundef %call) #9
  br label %if.then34

for.body:                                         ; preds = %entry, %cleanup
  %i.064 = phi i32 [ %inc32, %cleanup ], [ 0, %entry ]
  %count.062 = phi i32 [ %count.2, %cleanup ], [ 0, %entry ]
  %call3 = tail call fastcc %struct.evp_asym_cipher_st* @sk_EVP_ASYM_CIPHER_value(%struct.stack_st_EVP_ASYM_CIPHER* noundef %call, i32 noundef %i.064) #9
  %1 = load i8*, i8** @select_name, align 8, !tbaa !5
  %cmp4.not = icmp eq i8* %1, null
  br i1 %cmp4.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body
  %call5 = tail call i32 @EVP_ASYM_CIPHER_is_a(%struct.evp_asym_cipher_st* noundef %call3, i8* noundef nonnull %1) #8
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %land.lhs.true, %for.body
  %call7 = tail call %struct.stack_st* @OPENSSL_sk_new(i32 (i8*, i8*)* noundef bitcast (i32 (i8**, i8**)* @name_cmp to i32 (i8*, i8*)*)) #8
  %2 = bitcast %struct.stack_st* %call7 to %struct.stack_st_OPENSSL_CSTRING*
  %cmp8.not = icmp eq %struct.stack_st* %call7, null
  br i1 %cmp8.not, label %if.end29, label %land.lhs.true9

land.lhs.true9:                                   ; preds = %if.end
  %3 = bitcast %struct.stack_st* %call7 to i8*
  %call10 = tail call i32 @EVP_ASYM_CIPHER_names_do_all(%struct.evp_asym_cipher_st* noundef %call3, void (i8*, i8*)* noundef nonnull @collect_names, i8* noundef nonnull %3) #8
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end29, label %if.then12

if.then12:                                        ; preds = %land.lhs.true9
  %inc = add nsw i32 %count.062, 1
  %4 = load %struct.bio_st*, %struct.bio_st** @bio_out, align 8, !tbaa !5
  %call13 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %4, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.94, i64 0, i64 0)) #8
  %5 = load %struct.bio_st*, %struct.bio_st** @bio_out, align 8, !tbaa !5
  tail call void @print_names(%struct.bio_st* noundef %5, %struct.stack_st_OPENSSL_CSTRING* noundef nonnull %2) #8
  %6 = load %struct.bio_st*, %struct.bio_st** @bio_out, align 8, !tbaa !5
  %call14 = tail call %struct.ossl_provider_st* @EVP_ASYM_CIPHER_get0_provider(%struct.evp_asym_cipher_st* noundef %call3) #8
  %call15 = tail call i8* @OSSL_PROVIDER_get0_name(%struct.ossl_provider_st* noundef %call14) #8
  %call16 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %6, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.79, i64 0, i64 0), i8* noundef %call15) #8
  %.b = load i1, i1* @verbose, align 4
  br i1 %.b, label %if.then18, label %if.end29

if.then18:                                        ; preds = %if.then12
  %call19 = tail call i8* @EVP_ASYM_CIPHER_get0_description(%struct.evp_asym_cipher_st* noundef %call3) #8
  %cmp20.not = icmp eq i8* %call19, null
  br i1 %cmp20.not, label %if.end23, label %if.then21

if.then21:                                        ; preds = %if.then18
  %7 = load %struct.bio_st*, %struct.bio_st** @bio_out, align 8, !tbaa !5
  %call22 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %7, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.88, i64 0, i64 0), i8* noundef nonnull %call19) #8
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %if.then18
  %call24 = tail call %struct.ossl_param_st* @EVP_ASYM_CIPHER_settable_ctx_params(%struct.evp_asym_cipher_st* noundef %call3) #8
  %call25 = tail call i32 @print_param_types(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.91, i64 0, i64 0), %struct.ossl_param_st* noundef %call24, i32 noundef 4) #8
  %call26 = tail call %struct.ossl_param_st* @EVP_ASYM_CIPHER_gettable_ctx_params(%struct.evp_asym_cipher_st* noundef %call3) #8
  %call27 = tail call i32 @print_param_types(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.90, i64 0, i64 0), %struct.ossl_param_st* noundef %call26, i32 noundef 4) #8
  br label %if.end29

if.end29:                                         ; preds = %if.then12, %if.end23, %land.lhs.true9, %if.end
  %count.1 = phi i32 [ %inc, %if.end23 ], [ %inc, %if.then12 ], [ %count.062, %land.lhs.true9 ], [ %count.062, %if.end ]
  %call30 = tail call fastcc %struct.stack_st* @ossl_check_OPENSSL_CSTRING_sk_type(%struct.stack_st_OPENSSL_CSTRING* noundef %2) #9
  tail call void @OPENSSL_sk_free(%struct.stack_st* noundef %call30) #8
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true, %if.end29
  %count.2 = phi i32 [ %count.1, %if.end29 ], [ %count.062, %land.lhs.true ]
  %inc32 = add nuw nsw i32 %i.064, 1
  %call2 = tail call fastcc i32 @sk_EVP_ASYM_CIPHER_num(%struct.stack_st_EVP_ASYM_CIPHER* noundef %call) #9
  %cmp = icmp slt i32 %inc32, %call2
  br i1 %cmp, label %for.body, label %for.end, !llvm.loop !33

for.end:                                          ; preds = %cleanup
  tail call fastcc void @sk_EVP_ASYM_CIPHER_pop_free(%struct.stack_st_EVP_ASYM_CIPHER* noundef %call) #9
  %cmp33 = icmp eq i32 %count.2, 0
  br i1 %cmp33, label %if.then34, label %if.end36

if.then34:                                        ; preds = %for.end.thread, %for.end
  %8 = load %struct.bio_st*, %struct.bio_st** @bio_out, align 8, !tbaa !5
  %call35 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %8, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.108, i64 0, i64 0)) #8
  br label %if.end36

if.end36:                                         ; preds = %if.then34, %for.end
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @list_keyexchanges() unnamed_addr #0 {
entry:
  %call = tail call fastcc %struct.stack_st_EVP_KEYEXCH* @sk_EVP_KEYEXCH_new() #9
  %call1 = tail call %struct.ossl_lib_ctx_st* @app_get0_libctx() #8
  %0 = bitcast %struct.stack_st_EVP_KEYEXCH* %call to i8*
  tail call void @EVP_KEYEXCH_do_all_provided(%struct.ossl_lib_ctx_st* noundef %call1, void (%struct.evp_keyexch_st*, i8*)* noundef nonnull @collect_kex, i8* noundef %0) #8
  tail call fastcc void @sk_EVP_KEYEXCH_sort(%struct.stack_st_EVP_KEYEXCH* noundef %call) #9
  %call260 = tail call fastcc i32 @sk_EVP_KEYEXCH_num(%struct.stack_st_EVP_KEYEXCH* noundef %call) #9
  %cmp61 = icmp sgt i32 %call260, 0
  br i1 %cmp61, label %for.body, label %for.end.thread

for.end.thread:                                   ; preds = %entry
  tail call fastcc void @sk_EVP_KEYEXCH_pop_free(%struct.stack_st_EVP_KEYEXCH* noundef %call) #9
  br label %if.then34

for.body:                                         ; preds = %entry, %cleanup
  %i.064 = phi i32 [ %inc32, %cleanup ], [ 0, %entry ]
  %count.062 = phi i32 [ %count.2, %cleanup ], [ 0, %entry ]
  %call3 = tail call fastcc %struct.evp_keyexch_st* @sk_EVP_KEYEXCH_value(%struct.stack_st_EVP_KEYEXCH* noundef %call, i32 noundef %i.064) #9
  %1 = load i8*, i8** @select_name, align 8, !tbaa !5
  %cmp4.not = icmp eq i8* %1, null
  br i1 %cmp4.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body
  %call5 = tail call i32 @EVP_KEYEXCH_is_a(%struct.evp_keyexch_st* noundef %call3, i8* noundef nonnull %1) #8
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %land.lhs.true, %for.body
  %call7 = tail call %struct.stack_st* @OPENSSL_sk_new(i32 (i8*, i8*)* noundef bitcast (i32 (i8**, i8**)* @name_cmp to i32 (i8*, i8*)*)) #8
  %2 = bitcast %struct.stack_st* %call7 to %struct.stack_st_OPENSSL_CSTRING*
  %cmp8.not = icmp eq %struct.stack_st* %call7, null
  br i1 %cmp8.not, label %if.end29, label %land.lhs.true9

land.lhs.true9:                                   ; preds = %if.end
  %3 = bitcast %struct.stack_st* %call7 to i8*
  %call10 = tail call i32 @EVP_KEYEXCH_names_do_all(%struct.evp_keyexch_st* noundef %call3, void (i8*, i8*)* noundef nonnull @collect_names, i8* noundef nonnull %3) #8
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end29, label %if.then12

if.then12:                                        ; preds = %land.lhs.true9
  %inc = add nsw i32 %count.062, 1
  %4 = load %struct.bio_st*, %struct.bio_st** @bio_out, align 8, !tbaa !5
  %call13 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %4, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.94, i64 0, i64 0)) #8
  %5 = load %struct.bio_st*, %struct.bio_st** @bio_out, align 8, !tbaa !5
  tail call void @print_names(%struct.bio_st* noundef %5, %struct.stack_st_OPENSSL_CSTRING* noundef nonnull %2) #8
  %6 = load %struct.bio_st*, %struct.bio_st** @bio_out, align 8, !tbaa !5
  %call14 = tail call %struct.ossl_provider_st* @EVP_KEYEXCH_get0_provider(%struct.evp_keyexch_st* noundef %call3) #8
  %call15 = tail call i8* @OSSL_PROVIDER_get0_name(%struct.ossl_provider_st* noundef %call14) #8
  %call16 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %6, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.79, i64 0, i64 0), i8* noundef %call15) #8
  %.b = load i1, i1* @verbose, align 4
  br i1 %.b, label %if.then18, label %if.end29

if.then18:                                        ; preds = %if.then12
  %call19 = tail call i8* @EVP_KEYEXCH_get0_description(%struct.evp_keyexch_st* noundef %call3) #8
  %cmp20.not = icmp eq i8* %call19, null
  br i1 %cmp20.not, label %if.end23, label %if.then21

if.then21:                                        ; preds = %if.then18
  %7 = load %struct.bio_st*, %struct.bio_st** @bio_out, align 8, !tbaa !5
  %call22 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %7, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.88, i64 0, i64 0), i8* noundef nonnull %call19) #8
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %if.then18
  %call24 = tail call %struct.ossl_param_st* @EVP_KEYEXCH_settable_ctx_params(%struct.evp_keyexch_st* noundef %call3) #8
  %call25 = tail call i32 @print_param_types(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.91, i64 0, i64 0), %struct.ossl_param_st* noundef %call24, i32 noundef 4) #8
  %call26 = tail call %struct.ossl_param_st* @EVP_KEYEXCH_gettable_ctx_params(%struct.evp_keyexch_st* noundef %call3) #8
  %call27 = tail call i32 @print_param_types(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.90, i64 0, i64 0), %struct.ossl_param_st* noundef %call26, i32 noundef 4) #8
  br label %if.end29

if.end29:                                         ; preds = %if.then12, %if.end23, %land.lhs.true9, %if.end
  %count.1 = phi i32 [ %inc, %if.end23 ], [ %inc, %if.then12 ], [ %count.062, %land.lhs.true9 ], [ %count.062, %if.end ]
  %call30 = tail call fastcc %struct.stack_st* @ossl_check_OPENSSL_CSTRING_sk_type(%struct.stack_st_OPENSSL_CSTRING* noundef %2) #9
  tail call void @OPENSSL_sk_free(%struct.stack_st* noundef %call30) #8
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true, %if.end29
  %count.2 = phi i32 [ %count.1, %if.end29 ], [ %count.062, %land.lhs.true ]
  %inc32 = add nuw nsw i32 %i.064, 1
  %call2 = tail call fastcc i32 @sk_EVP_KEYEXCH_num(%struct.stack_st_EVP_KEYEXCH* noundef %call) #9
  %cmp = icmp slt i32 %inc32, %call2
  br i1 %cmp, label %for.body, label %for.end, !llvm.loop !34

for.end:                                          ; preds = %cleanup
  tail call fastcc void @sk_EVP_KEYEXCH_pop_free(%struct.stack_st_EVP_KEYEXCH* noundef %call) #9
  %cmp33 = icmp eq i32 %count.2, 0
  br i1 %cmp33, label %if.then34, label %if.end36

if.then34:                                        ; preds = %for.end.thread, %for.end
  %8 = load %struct.bio_st*, %struct.bio_st** @bio_out, align 8, !tbaa !5
  %call35 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %8, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.108, i64 0, i64 0)) #8
  br label %if.end36

if.end36:                                         ; preds = %if.then34, %for.end
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @list_kems() unnamed_addr #0 {
entry:
  %call = tail call fastcc %struct.stack_st_EVP_KEM* @sk_EVP_KEM_new() #9
  %call1 = tail call %struct.ossl_lib_ctx_st* @app_get0_libctx() #8
  %0 = bitcast %struct.stack_st_EVP_KEM* %call to i8*
  tail call void @EVP_KEM_do_all_provided(%struct.ossl_lib_ctx_st* noundef %call1, void (%struct.evp_kem_st*, i8*)* noundef nonnull @collect_kem, i8* noundef %0) #8
  tail call fastcc void @sk_EVP_KEM_sort(%struct.stack_st_EVP_KEM* noundef %call) #9
  %call260 = tail call fastcc i32 @sk_EVP_KEM_num(%struct.stack_st_EVP_KEM* noundef %call) #9
  %cmp61 = icmp sgt i32 %call260, 0
  br i1 %cmp61, label %for.body, label %for.end.thread

for.end.thread:                                   ; preds = %entry
  tail call fastcc void @sk_EVP_KEM_pop_free(%struct.stack_st_EVP_KEM* noundef %call) #9
  br label %if.then34

for.body:                                         ; preds = %entry, %cleanup
  %i.064 = phi i32 [ %inc32, %cleanup ], [ 0, %entry ]
  %count.062 = phi i32 [ %count.2, %cleanup ], [ 0, %entry ]
  %call3 = tail call fastcc %struct.evp_kem_st* @sk_EVP_KEM_value(%struct.stack_st_EVP_KEM* noundef %call, i32 noundef %i.064) #9
  %1 = load i8*, i8** @select_name, align 8, !tbaa !5
  %cmp4.not = icmp eq i8* %1, null
  br i1 %cmp4.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body
  %call5 = tail call i32 @EVP_KEM_is_a(%struct.evp_kem_st* noundef %call3, i8* noundef nonnull %1) #8
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %land.lhs.true, %for.body
  %call7 = tail call %struct.stack_st* @OPENSSL_sk_new(i32 (i8*, i8*)* noundef bitcast (i32 (i8**, i8**)* @name_cmp to i32 (i8*, i8*)*)) #8
  %2 = bitcast %struct.stack_st* %call7 to %struct.stack_st_OPENSSL_CSTRING*
  %cmp8.not = icmp eq %struct.stack_st* %call7, null
  br i1 %cmp8.not, label %if.end29, label %land.lhs.true9

land.lhs.true9:                                   ; preds = %if.end
  %3 = bitcast %struct.stack_st* %call7 to i8*
  %call10 = tail call i32 @EVP_KEM_names_do_all(%struct.evp_kem_st* noundef %call3, void (i8*, i8*)* noundef nonnull @collect_names, i8* noundef nonnull %3) #8
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end29, label %if.then12

if.then12:                                        ; preds = %land.lhs.true9
  %inc = add nsw i32 %count.062, 1
  %4 = load %struct.bio_st*, %struct.bio_st** @bio_out, align 8, !tbaa !5
  %call13 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %4, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.94, i64 0, i64 0)) #8
  %5 = load %struct.bio_st*, %struct.bio_st** @bio_out, align 8, !tbaa !5
  tail call void @print_names(%struct.bio_st* noundef %5, %struct.stack_st_OPENSSL_CSTRING* noundef nonnull %2) #8
  %6 = load %struct.bio_st*, %struct.bio_st** @bio_out, align 8, !tbaa !5
  %call14 = tail call %struct.ossl_provider_st* @EVP_KEM_get0_provider(%struct.evp_kem_st* noundef %call3) #8
  %call15 = tail call i8* @OSSL_PROVIDER_get0_name(%struct.ossl_provider_st* noundef %call14) #8
  %call16 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %6, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.79, i64 0, i64 0), i8* noundef %call15) #8
  %.b = load i1, i1* @verbose, align 4
  br i1 %.b, label %if.then18, label %if.end29

if.then18:                                        ; preds = %if.then12
  %call19 = tail call i8* @EVP_KEM_get0_description(%struct.evp_kem_st* noundef %call3) #8
  %cmp20.not = icmp eq i8* %call19, null
  br i1 %cmp20.not, label %if.end23, label %if.then21

if.then21:                                        ; preds = %if.then18
  %7 = load %struct.bio_st*, %struct.bio_st** @bio_out, align 8, !tbaa !5
  %call22 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %7, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.88, i64 0, i64 0), i8* noundef nonnull %call19) #8
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %if.then18
  %call24 = tail call %struct.ossl_param_st* @EVP_KEM_settable_ctx_params(%struct.evp_kem_st* noundef %call3) #8
  %call25 = tail call i32 @print_param_types(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.91, i64 0, i64 0), %struct.ossl_param_st* noundef %call24, i32 noundef 4) #8
  %call26 = tail call %struct.ossl_param_st* @EVP_KEM_gettable_ctx_params(%struct.evp_kem_st* noundef %call3) #8
  %call27 = tail call i32 @print_param_types(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.90, i64 0, i64 0), %struct.ossl_param_st* noundef %call26, i32 noundef 4) #8
  br label %if.end29

if.end29:                                         ; preds = %if.then12, %if.end23, %land.lhs.true9, %if.end
  %count.1 = phi i32 [ %inc, %if.end23 ], [ %inc, %if.then12 ], [ %count.062, %land.lhs.true9 ], [ %count.062, %if.end ]
  %call30 = tail call fastcc %struct.stack_st* @ossl_check_OPENSSL_CSTRING_sk_type(%struct.stack_st_OPENSSL_CSTRING* noundef %2) #9
  tail call void @OPENSSL_sk_free(%struct.stack_st* noundef %call30) #8
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true, %if.end29
  %count.2 = phi i32 [ %count.1, %if.end29 ], [ %count.062, %land.lhs.true ]
  %inc32 = add nuw nsw i32 %i.064, 1
  %call2 = tail call fastcc i32 @sk_EVP_KEM_num(%struct.stack_st_EVP_KEM* noundef %call) #9
  %cmp = icmp slt i32 %inc32, %call2
  br i1 %cmp, label %for.body, label %for.end, !llvm.loop !35

for.end:                                          ; preds = %cleanup
  tail call fastcc void @sk_EVP_KEM_pop_free(%struct.stack_st_EVP_KEM* noundef %call) #9
  %cmp33 = icmp eq i32 %count.2, 0
  br i1 %cmp33, label %if.then34, label %if.end36

if.then34:                                        ; preds = %for.end.thread, %for.end
  %8 = load %struct.bio_st*, %struct.bio_st** @bio_out, align 8, !tbaa !5
  %call35 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %8, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.108, i64 0, i64 0)) #8
  br label %if.end36

if.end36:                                         ; preds = %if.then34, %for.end
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @list_pkey() unnamed_addr #0 {
entry:
  %pkey_id = alloca i32, align 4
  %pkey_base_id = alloca i32, align 4
  %pkey_flags = alloca i32, align 4
  %pinfo = alloca i8*, align 8
  %pem_str = alloca i8*, align 8
  %0 = load i8*, i8** @select_name, align 8, !tbaa !5
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %land.lhs.true, label %if.end22

land.lhs.true:                                    ; preds = %entry
  %call = tail call fastcc i32 @include_legacy() #9
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end22, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %1 = load %struct.bio_st*, %struct.bio_st** @bio_out, align 8, !tbaa !5
  %call1 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %1, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.92, i64 0, i64 0)) #8
  %call229 = call i32 @EVP_PKEY_asn1_get_count() #8
  %cmp330 = icmp sgt i32 %call229, 0
  br i1 %cmp330, label %for.body.lr.ph, label %if.end22

for.body.lr.ph:                                   ; preds = %if.then
  %2 = bitcast i32* %pkey_id to i8*
  %3 = bitcast i32* %pkey_base_id to i8*
  %4 = bitcast i32* %pkey_flags to i8*
  %5 = bitcast i8** %pinfo to i8*
  %6 = bitcast i8** %pem_str to i8*
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %if.end21
  %i.031 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end21 ]
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #11
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #11
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #11
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #11
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #11
  %call4 = call %struct.evp_pkey_asn1_method_st* @EVP_PKEY_asn1_get0(i32 noundef %i.031) #8
  %call5 = call i32 @EVP_PKEY_asn1_get0_info(i32* noundef nonnull %pkey_id, i32* noundef nonnull %pkey_base_id, i32* noundef nonnull %pkey_flags, i8** noundef nonnull %pinfo, i8** noundef nonnull %pem_str, %struct.evp_pkey_asn1_method_st* noundef %call4) #8
  %7 = load i32, i32* %pkey_flags, align 4, !tbaa !36
  %and = and i32 %7, 1
  %tobool6.not = icmp eq i32 %and, 0
  %8 = load %struct.bio_st*, %struct.bio_st** @bio_out, align 8, !tbaa !5
  br i1 %tobool6.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %for.body
  %9 = load i32, i32* %pkey_id, align 4, !tbaa !36
  %call8 = call i8* @OBJ_nid2ln(i32 noundef %9) #8
  %call9 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %8, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.109, i64 0, i64 0), i8* noundef %call8) #8
  %10 = load %struct.bio_st*, %struct.bio_st** @bio_out, align 8, !tbaa !5
  %11 = load i32, i32* %pkey_base_id, align 4, !tbaa !36
  %call10 = call i8* @OBJ_nid2ln(i32 noundef %11) #8
  %call11 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %10, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.110, i64 0, i64 0), i8* noundef %call10) #8
  br label %if.end21

if.else:                                          ; preds = %for.body
  %12 = load i8*, i8** %pinfo, align 8, !tbaa !5
  %call12 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %8, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.109, i64 0, i64 0), i8* noundef %12) #8
  %13 = load %struct.bio_st*, %struct.bio_st** @bio_out, align 8, !tbaa !5
  %14 = load i32, i32* %pkey_flags, align 4, !tbaa !36
  %and13 = and i32 %14, 2
  %tobool14.not = icmp eq i32 %and13, 0
  %cond = select i1 %tobool14.not, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.113, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.112, i64 0, i64 0)
  %call15 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %13, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.111, i64 0, i64 0), i8* noundef %cond) #8
  %15 = load %struct.bio_st*, %struct.bio_st** @bio_out, align 8, !tbaa !5
  %16 = load i32, i32* %pkey_id, align 4, !tbaa !36
  %call16 = call i8* @OBJ_nid2ln(i32 noundef %16) #8
  %call17 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %15, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.114, i64 0, i64 0), i8* noundef %call16) #8
  %17 = load i8*, i8** %pem_str, align 8, !tbaa !5
  %cmp18 = icmp eq i8* %17, null
  br i1 %cmp18, label %if.then19, label %if.end

if.then19:                                        ; preds = %if.else
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.115, i64 0, i64 0), i8** %pem_str, align 8, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then19, %if.else
  %18 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.115, i64 0, i64 0), %if.then19 ], [ %17, %if.else ]
  %19 = load %struct.bio_st*, %struct.bio_st** @bio_out, align 8, !tbaa !5
  %call20 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %19, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.116, i64 0, i64 0), i8* noundef nonnull %18) #8
  br label %if.end21

if.end21:                                         ; preds = %if.end, %if.then7
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #11
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #11
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #11
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #11
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #11
  %inc = add nuw nsw i32 %i.031, 1
  %call2 = call i32 @EVP_PKEY_asn1_get_count() #8
  %cmp3 = icmp slt i32 %inc, %call2
  br i1 %cmp3, label %for.body, label %if.end22, !llvm.loop !37

if.end22:                                         ; preds = %if.end21, %if.then, %land.lhs.true, %entry
  %20 = load %struct.bio_st*, %struct.bio_st** @bio_out, align 8, !tbaa !5
  %call23 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %20, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.93, i64 0, i64 0)) #8
  %21 = load %struct.bio_st*, %struct.bio_st** @bio_out, align 8, !tbaa !5
  %call24 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %21, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.117, i64 0, i64 0)) #8
  call fastcc void @list_keymanagers() #9
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @list_pkey_meth() unnamed_addr #0 {
entry:
  %pkey_id = alloca i32, align 4
  %pkey_flags = alloca i32, align 4
  %call = tail call i64 @EVP_PKEY_meth_get_count() #8
  %0 = load i8*, i8** @select_name, align 8, !tbaa !5
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call fastcc i32 @include_legacy() #9
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %1 = load %struct.bio_st*, %struct.bio_st** @bio_out, align 8, !tbaa !5
  %call2 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %1, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.92, i64 0, i64 0)) #8
  %cmp319.not = icmp eq i64 %call, 0
  br i1 %cmp319.not, label %if.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.then
  %2 = bitcast i32* %pkey_id to i8*
  %3 = bitcast i32* %pkey_flags to i8*
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %i.020 = phi i64 [ 0, %for.body.lr.ph ], [ %inc, %for.body ]
  %call4 = call %struct.evp_pkey_method_st* @EVP_PKEY_meth_get0(i64 noundef %i.020) #8
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #11
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #11
  call void @EVP_PKEY_meth_get0_info(i32* noundef nonnull %pkey_id, i32* noundef nonnull %pkey_flags, %struct.evp_pkey_method_st* noundef %call4) #8
  %4 = load %struct.bio_st*, %struct.bio_st** @bio_out, align 8, !tbaa !5
  %5 = load i32, i32* %pkey_id, align 4, !tbaa !36
  %call5 = call i8* @OBJ_nid2ln(i32 noundef %5) #8
  %call6 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %4, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.118, i64 0, i64 0), i8* noundef %call5) #8
  %6 = load %struct.bio_st*, %struct.bio_st** @bio_out, align 8, !tbaa !5
  %7 = load i32, i32* %pkey_flags, align 4, !tbaa !36
  %and = and i32 %7, 2
  %tobool7.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool7.not, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.113, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.112, i64 0, i64 0)
  %call8 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %6, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.111, i64 0, i64 0), i8* noundef %cond) #8
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #11
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #11
  %inc = add nuw i64 %i.020, 1
  %exitcond.not = icmp eq i64 %inc, %call
  br i1 %exitcond.not, label %if.end, label %for.body, !llvm.loop !38

if.end:                                           ; preds = %for.body, %if.then, %land.lhs.true, %entry
  %8 = load %struct.bio_st*, %struct.bio_st** @bio_out, align 8, !tbaa !5
  %call9 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %8, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.93, i64 0, i64 0)) #8
  %9 = load %struct.bio_st*, %struct.bio_st** @bio_out, align 8, !tbaa !5
  %call10 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %9, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.119, i64 0, i64 0)) #8
  call fastcc void @list_asymciphers() #9
  %10 = load %struct.bio_st*, %struct.bio_st** @bio_out, align 8, !tbaa !5
  %call11 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %10, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.120, i64 0, i64 0)) #8
  call fastcc void @list_keyexchanges() #9
  %11 = load %struct.bio_st*, %struct.bio_st** @bio_out, align 8, !tbaa !5
  %call12 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %11, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.121, i64 0, i64 0)) #8
  call fastcc void @list_signatures() #9
  %12 = load %struct.bio_st*, %struct.bio_st** @bio_out, align 8, !tbaa !5
  %call13 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %12, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.122, i64 0, i64 0)) #8
  call fastcc void @list_kems() #9
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @list_store_loaders() unnamed_addr #0 {
entry:
  %call = tail call fastcc %struct.stack_st_OSSL_STORE_LOADER* @sk_OSSL_STORE_LOADER_new() #9
  %cmp = icmp eq %struct.stack_st_OSSL_STORE_LOADER* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !5
  %call1 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %0, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.86, i64 0, i64 0)) #8
  br label %cleanup25

if.end:                                           ; preds = %entry
  %1 = load %struct.bio_st*, %struct.bio_st** @bio_out, align 8, !tbaa !5
  %call2 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %1, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.123, i64 0, i64 0)) #8
  %call3 = tail call %struct.ossl_lib_ctx_st* @app_get0_libctx() #8
  %2 = bitcast %struct.stack_st_OSSL_STORE_LOADER* %call to i8*
  tail call void @OSSL_STORE_LOADER_do_all_provided(%struct.ossl_lib_ctx_st* noundef %call3, void (%struct.ossl_store_loader_st*, i8*)* noundef nonnull @collect_store_loaders, i8* noundef nonnull %2) #8
  tail call fastcc void @sk_OSSL_STORE_LOADER_sort(%struct.stack_st_OSSL_STORE_LOADER* noundef nonnull %call) #9
  %call446 = tail call fastcc i32 @sk_OSSL_STORE_LOADER_num(%struct.stack_st_OSSL_STORE_LOADER* noundef nonnull %call) #9
  %cmp547 = icmp sgt i32 %call446, 0
  br i1 %cmp547, label %for.body, label %for.end

for.body:                                         ; preds = %if.end, %cleanup
  %i.048 = phi i32 [ %inc, %cleanup ], [ 0, %if.end ]
  %call6 = tail call fastcc %struct.ossl_store_loader_st* @sk_OSSL_STORE_LOADER_value(%struct.stack_st_OSSL_STORE_LOADER* noundef nonnull %call, i32 noundef %i.048) #9
  %3 = load i8*, i8** @select_name, align 8, !tbaa !5
  %cmp7.not = icmp eq i8* %3, null
  br i1 %cmp7.not, label %if.end10, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body
  %call8 = tail call i32 @OSSL_STORE_LOADER_is_a(%struct.ossl_store_loader_st* noundef %call6, i8* noundef nonnull %3) #8
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %cleanup, label %if.end10

if.end10:                                         ; preds = %land.lhs.true, %for.body
  %call12 = tail call %struct.stack_st* @OPENSSL_sk_new(i32 (i8*, i8*)* noundef bitcast (i32 (i8**, i8**)* @name_cmp to i32 (i8*, i8*)*)) #8
  %4 = bitcast %struct.stack_st* %call12 to %struct.stack_st_OPENSSL_CSTRING*
  %cmp13.not = icmp eq %struct.stack_st* %call12, null
  br i1 %cmp13.not, label %if.end22, label %land.lhs.true14

land.lhs.true14:                                  ; preds = %if.end10
  %5 = bitcast %struct.stack_st* %call12 to i8*
  %call15 = tail call i32 @OSSL_STORE_LOADER_names_do_all(%struct.ossl_store_loader_st* noundef %call6, void (i8*, i8*)* noundef nonnull @collect_names, i8* noundef nonnull %5) #8
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end22, label %if.then17

if.then17:                                        ; preds = %land.lhs.true14
  %6 = load %struct.bio_st*, %struct.bio_st** @bio_out, align 8, !tbaa !5
  %call18 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %6, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.94, i64 0, i64 0)) #8
  %7 = load %struct.bio_st*, %struct.bio_st** @bio_out, align 8, !tbaa !5
  tail call void @print_names(%struct.bio_st* noundef %7, %struct.stack_st_OPENSSL_CSTRING* noundef nonnull %4) #8
  %8 = load %struct.bio_st*, %struct.bio_st** @bio_out, align 8, !tbaa !5
  %call19 = tail call %struct.ossl_provider_st* @OSSL_STORE_LOADER_get0_provider(%struct.ossl_store_loader_st* noundef %call6) #8
  %call20 = tail call i8* @OSSL_PROVIDER_get0_name(%struct.ossl_provider_st* noundef %call19) #8
  %call21 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %8, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.79, i64 0, i64 0), i8* noundef %call20) #8
  br label %if.end22

if.end22:                                         ; preds = %if.then17, %land.lhs.true14, %if.end10
  %call23 = tail call fastcc %struct.stack_st* @ossl_check_OPENSSL_CSTRING_sk_type(%struct.stack_st_OPENSSL_CSTRING* noundef %4) #9
  tail call void @OPENSSL_sk_free(%struct.stack_st* noundef %call23) #8
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true, %if.end22
  %inc = add nuw nsw i32 %i.048, 1
  %call4 = tail call fastcc i32 @sk_OSSL_STORE_LOADER_num(%struct.stack_st_OSSL_STORE_LOADER* noundef nonnull %call) #9
  %cmp5 = icmp slt i32 %inc, %call4
  br i1 %cmp5, label %for.body, label %for.end, !llvm.loop !39

for.end:                                          ; preds = %cleanup, %if.end
  tail call fastcc void @sk_OSSL_STORE_LOADER_pop_free(%struct.stack_st_OSSL_STORE_LOADER* noundef nonnull %call) #9
  br label %cleanup25

cleanup25:                                        ; preds = %for.end, %if.then
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @list_provider_info() unnamed_addr #0 {
entry:
  %params = alloca [5 x %struct.ossl_param_st], align 16
  %name = alloca i8*, align 8
  %version = alloca i8*, align 8
  %buildinfo = alloca i8*, align 8
  %status = alloca i32, align 4
  %tmp = alloca %struct.ossl_param_st, align 8
  %tmp8 = alloca %struct.ossl_param_st, align 8
  %tmp10 = alloca %struct.ossl_param_st, align 8
  %tmp12 = alloca %struct.ossl_param_st, align 8
  %tmp14 = alloca %struct.ossl_param_st, align 8
  %call = tail call fastcc %struct.stack_st_OSSL_PROVIDER* @sk_OSSL_PROVIDER_new() #9
  %0 = bitcast [5 x %struct.ossl_param_st]* %params to i8*
  call void @llvm.lifetime.start.p0i8(i64 200, i8* nonnull %0) #11
  %1 = bitcast i8** %name to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #11
  %2 = bitcast i8** %version to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #11
  %3 = bitcast i8** %buildinfo to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #11
  %4 = bitcast i32* %status to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #11
  %cmp = icmp eq %struct.stack_st_OSSL_PROVIDER* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !5
  %call1 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %5, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.86, i64 0, i64 0)) #8
  br label %cleanup54

if.end:                                           ; preds = %entry
  %6 = load %struct.bio_st*, %struct.bio_st** @bio_out, align 8, !tbaa !5
  %call2 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %6, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.124, i64 0, i64 0)) #8
  %7 = bitcast %struct.stack_st_OSSL_PROVIDER* %call to i8*
  %call3 = tail call i32 @OSSL_PROVIDER_do_all(%struct.ossl_lib_ctx_st* noundef null, i32 (%struct.ossl_provider_st*, i8*)* noundef nonnull @collect_providers, i8* noundef nonnull %7) #8
  tail call fastcc void @sk_OSSL_PROVIDER_sort(%struct.stack_st_OSSL_PROVIDER* noundef nonnull %call) #9
  %call476 = call fastcc i32 @sk_OSSL_PROVIDER_num(%struct.stack_st_OSSL_PROVIDER* noundef nonnull %call) #9
  %cmp577 = icmp sgt i32 %call476, 0
  br i1 %cmp577, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %arrayidx = getelementptr inbounds [5 x %struct.ossl_param_st], [5 x %struct.ossl_param_st]* %params, i64 0, i64 0
  %8 = bitcast %struct.ossl_param_st* %tmp to i8*
  %arrayidx7 = getelementptr inbounds [5 x %struct.ossl_param_st], [5 x %struct.ossl_param_st]* %params, i64 0, i64 1
  %9 = bitcast %struct.ossl_param_st* %tmp8 to i8*
  %10 = bitcast %struct.ossl_param_st* %arrayidx7 to i8*
  %arrayidx9 = getelementptr inbounds [5 x %struct.ossl_param_st], [5 x %struct.ossl_param_st]* %params, i64 0, i64 2
  %11 = bitcast %struct.ossl_param_st* %tmp10 to i8*
  %12 = bitcast %struct.ossl_param_st* %arrayidx9 to i8*
  %arrayidx11 = getelementptr inbounds [5 x %struct.ossl_param_st], [5 x %struct.ossl_param_st]* %params, i64 0, i64 3
  %13 = bitcast %struct.ossl_param_st* %tmp12 to i8*
  %14 = bitcast %struct.ossl_param_st* %arrayidx11 to i8*
  %arrayidx13 = getelementptr inbounds [5 x %struct.ossl_param_st], [5 x %struct.ossl_param_st]* %params, i64 0, i64 4
  %15 = bitcast %struct.ossl_param_st* %tmp14 to i8*
  %16 = bitcast %struct.ossl_param_st* %arrayidx13 to i8*
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %i.078 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc ]
  %call6 = call fastcc %struct.ossl_provider_st* @sk_OSSL_PROVIDER_value(%struct.stack_st_OSSL_PROVIDER* noundef nonnull %call, i32 noundef %i.078) #9
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %8) #11
  call void @OSSL_PARAM_construct_utf8_ptr(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.125, i64 0, i64 0), i8** noundef nonnull %name, i64 noundef 0) #8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(40) %0, i8* noundef nonnull align 8 dereferenceable(40) %8, i64 40, i1 false), !tbaa.struct !40
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %8) #11
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %9) #11
  call void @OSSL_PARAM_construct_utf8_ptr(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp8, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.126, i64 0, i64 0), i8** noundef nonnull %version, i64 noundef 0) #8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %10, i8* noundef nonnull align 8 dereferenceable(40) %9, i64 40, i1 false), !tbaa.struct !40
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %9) #11
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %11) #11
  call void @OSSL_PARAM_construct_int(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp10, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.127, i64 0, i64 0), i32* noundef nonnull %status) #8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(40) %12, i8* noundef nonnull align 8 dereferenceable(40) %11, i64 40, i1 false), !tbaa.struct !40
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %11) #11
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %13) #11
  call void @OSSL_PARAM_construct_utf8_ptr(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp12, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.128, i64 0, i64 0), i8** noundef nonnull %buildinfo, i64 noundef 0) #8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %14, i8* noundef nonnull align 8 dereferenceable(40) %13, i64 40, i1 false), !tbaa.struct !40
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %13) #11
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %15) #11
  call void @OSSL_PARAM_construct_end(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp14) #8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(40) %16, i8* noundef nonnull align 8 dereferenceable(40) %15, i64 40, i1 false), !tbaa.struct !40
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %15) #11
  call void @OSSL_PARAM_set_all_unmodified(%struct.ossl_param_st* noundef nonnull %arrayidx) #8
  %call16 = call i32 @OSSL_PROVIDER_get_params(%struct.ossl_provider_st* noundef %call6, %struct.ossl_param_st* noundef nonnull %arrayidx) #8
  %tobool.not = icmp eq i32 %call16, 0
  br i1 %tobool.not, label %cleanup, label %if.end19

if.end19:                                         ; preds = %for.body
  %17 = load %struct.bio_st*, %struct.bio_st** @bio_out, align 8, !tbaa !5
  %call20 = call i8* @OSSL_PROVIDER_get0_name(%struct.ossl_provider_st* noundef %call6) #8
  %call21 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %17, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.95, i64 0, i64 0), i8* noundef %call20) #8
  %call23 = call i32 @OSSL_PARAM_modified(%struct.ossl_param_st* noundef nonnull %arrayidx) #8
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end27, label %if.then25

if.then25:                                        ; preds = %if.end19
  %18 = load %struct.bio_st*, %struct.bio_st** @bio_out, align 8, !tbaa !5
  %19 = load i8*, i8** %name, align 8, !tbaa !5
  %call26 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %18, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.130, i64 0, i64 0), i8* noundef %19) #8
  br label %if.end27

if.end27:                                         ; preds = %if.then25, %if.end19
  %call29 = call i32 @OSSL_PARAM_modified(%struct.ossl_param_st* noundef nonnull %arrayidx7) #8
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end33, label %if.then31

if.then31:                                        ; preds = %if.end27
  %20 = load %struct.bio_st*, %struct.bio_st** @bio_out, align 8, !tbaa !5
  %21 = load i8*, i8** %version, align 8, !tbaa !5
  %call32 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %20, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.131, i64 0, i64 0), i8* noundef %21) #8
  br label %if.end33

if.end33:                                         ; preds = %if.then31, %if.end27
  %call36 = call i32 @OSSL_PARAM_modified(%struct.ossl_param_st* noundef nonnull %arrayidx9) #8
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end41, label %if.then38

if.then38:                                        ; preds = %if.end33
  %22 = load %struct.bio_st*, %struct.bio_st** @bio_out, align 8, !tbaa !5
  %23 = load i32, i32* %status, align 4, !tbaa !36
  %tobool39.not = icmp eq i32 %23, 0
  %cond = select i1 %tobool39.not, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.134, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.133, i64 0, i64 0)
  %call40 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %22, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.132, i64 0, i64 0), i8* noundef %cond) #8
  br label %if.end41

if.end41:                                         ; preds = %if.then38, %if.end33
  %.b = load i1, i1* @verbose, align 4
  br i1 %.b, label %if.then43, label %for.inc

if.then43:                                        ; preds = %if.end41
  %call46 = call i32 @OSSL_PARAM_modified(%struct.ossl_param_st* noundef nonnull %arrayidx11) #8
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.end50, label %if.then48

if.then48:                                        ; preds = %if.then43
  %24 = load %struct.bio_st*, %struct.bio_st** @bio_out, align 8, !tbaa !5
  %25 = load i8*, i8** %buildinfo, align 8, !tbaa !5
  %call49 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %24, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.135, i64 0, i64 0), i8* noundef %25) #8
  br label %if.end50

if.end50:                                         ; preds = %if.then48, %if.then43
  %call51 = call %struct.ossl_param_st* @OSSL_PROVIDER_gettable_params(%struct.ossl_provider_st* noundef %call6) #8
  %call52 = call i32 @print_param_types(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.136, i64 0, i64 0), %struct.ossl_param_st* noundef %call51, i32 noundef 4) #8
  br label %for.inc

cleanup:                                          ; preds = %for.body
  %26 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !5
  %call18 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %26, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.129, i64 0, i64 0)) #8
  br label %cleanup54

for.inc:                                          ; preds = %if.end41, %if.end50
  %inc = add nuw nsw i32 %i.078, 1
  %call4 = call fastcc i32 @sk_OSSL_PROVIDER_num(%struct.stack_st_OSSL_PROVIDER* noundef nonnull %call) #9
  %cmp5 = icmp slt i32 %inc, %call4
  br i1 %cmp5, label %for.body, label %for.end, !llvm.loop !43

for.end:                                          ; preds = %for.inc, %if.end
  call fastcc void @sk_OSSL_PROVIDER_free(%struct.stack_st_OSSL_PROVIDER* noundef nonnull %call) #9
  br label %cleanup54

cleanup54:                                        ; preds = %cleanup, %for.end, %if.then
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #11
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #11
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #11
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #11
  call void @llvm.lifetime.end.p0i8(i64 200, i8* nonnull %0) #11
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @list_engines() unnamed_addr #0 {
entry:
  %0 = load %struct.bio_st*, %struct.bio_st** @bio_out, align 8, !tbaa !5
  %call = tail call i32 @BIO_puts(%struct.bio_st* noundef %0, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.137, i64 0, i64 0)) #8
  %call1 = tail call %struct.engine_st* @ENGINE_get_first() #8
  %tobool.not8 = icmp eq %struct.engine_st* %call1, null
  br i1 %tobool.not8, label %while.end, label %while.body

while.body:                                       ; preds = %entry, %while.body
  %e.09 = phi %struct.engine_st* [ %call4, %while.body ], [ %call1, %entry ]
  %1 = load %struct.bio_st*, %struct.bio_st** @bio_out, align 8, !tbaa !5
  %call2 = tail call i8* @ENGINE_get_id(%struct.engine_st* noundef nonnull %e.09) #8
  %call3 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %1, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.70, i64 0, i64 0), i8* noundef %call2) #8
  %call4 = tail call %struct.engine_st* @ENGINE_get_next(%struct.engine_st* noundef nonnull %e.09) #8
  %tobool.not = icmp eq %struct.engine_st* %call4, null
  br i1 %tobool.not, label %while.end, label %while.body, !llvm.loop !44

while.end:                                        ; preds = %while.body, %entry
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @list_disabled() unnamed_addr #0 {
entry:
  %0 = load %struct.bio_st*, %struct.bio_st** @bio_out, align 8, !tbaa !5
  %call = tail call i32 @BIO_puts(%struct.bio_st* noundef %0, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.138, i64 0, i64 0)) #8
  %1 = load %struct.bio_st*, %struct.bio_st** @bio_out, align 8, !tbaa !5
  %call1 = tail call i32 @BIO_puts(%struct.bio_st* noundef %1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.139, i64 0, i64 0)) #8
  %2 = load %struct.bio_st*, %struct.bio_st** @bio_out, align 8, !tbaa !5
  %call2 = tail call i32 @BIO_puts(%struct.bio_st* noundef %2, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.140, i64 0, i64 0)) #8
  %3 = load %struct.bio_st*, %struct.bio_st** @bio_out, align 8, !tbaa !5
  %call3 = tail call i32 @BIO_puts(%struct.bio_st* noundef %3, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.141, i64 0, i64 0)) #8
  %4 = load %struct.bio_st*, %struct.bio_st** @bio_out, align 8, !tbaa !5
  %call4 = tail call i32 @BIO_puts(%struct.bio_st* noundef %4, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.142, i64 0, i64 0)) #8
  %5 = load %struct.bio_st*, %struct.bio_st** @bio_out, align 8, !tbaa !5
  %call5 = tail call i32 @BIO_puts(%struct.bio_st* noundef %5, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.143, i64 0, i64 0)) #8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @list_objects() unnamed_addr #0 {
entry:
  %call = tail call i32 @OBJ_new_nid(i32 noundef 0) #8
  %cmp78 = icmp sgt i32 %call, 1
  br i1 %cmp78, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.inc
  %i.081 = phi i32 [ %inc, %for.inc ], [ 1, %entry ]
  %oid_buf.080 = phi i8* [ %oid_buf.2.ph, %for.inc ], [ null, %entry ]
  %oid_size.079 = phi i32 [ %oid_size.2.ph, %for.inc ], [ 0, %entry ]
  %call1 = tail call %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef %i.081) #8
  %call2 = tail call i8* @OBJ_nid2sn(i32 noundef %i.081) #8
  %call3 = tail call i8* @OBJ_nid2ln(i32 noundef %i.081) #8
  tail call void @ERR_clear_error() #8
  %call4 = tail call i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef %call1) #8
  %cmp5 = icmp eq i32 %call4, 0
  br i1 %cmp5, label %for.inc, label %if.end

if.end:                                           ; preds = %for.body
  %call6 = tail call i32 @OBJ_obj2txt(i8* noundef null, i32 noundef 0, %struct.asn1_object_st* noundef %call1, i32 noundef 1) #8
  %cmp7 = icmp eq i32 %call6, 0
  br i1 %cmp7, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end
  %0 = load %struct.bio_st*, %struct.bio_st** @bio_out, align 8, !tbaa !5
  %call9 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %0, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.144, i64 0, i64 0), i8* noundef %call2, i8* noundef %call3) #8
  br label %for.inc

if.end10:                                         ; preds = %if.end
  %cmp11 = icmp slt i32 %call6, 0
  br i1 %cmp11, label %for.end, label %if.end13

if.end13:                                         ; preds = %if.end10
  %cmp14 = icmp sgt i32 %call6, %oid_size.079
  br i1 %cmp14, label %if.then15, label %if.end23

if.then15:                                        ; preds = %if.end13
  %add = add nuw nsw i32 %call6, 1
  %conv77 = zext i32 %add to i64
  %call16 = tail call i8* @CRYPTO_realloc(i8* noundef %oid_buf.080, i64 noundef %conv77, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.145, i64 0, i64 0), i32 noundef 962) #8
  %cmp17 = icmp eq i8* %call16, null
  br i1 %cmp17, label %if.then19, label %if.end23

if.then19:                                        ; preds = %if.then15
  %1 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !5
  %call20 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %1, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.86, i64 0, i64 0)) #8
  br label %for.end

if.end23:                                         ; preds = %if.then15, %if.end13
  %oid_size.1 = phi i32 [ %oid_size.079, %if.end13 ], [ %add, %if.then15 ]
  %oid_buf.1 = phi i8* [ %oid_buf.080, %if.end13 ], [ %call16, %if.then15 ]
  %call24 = tail call i32 @OBJ_obj2txt(i8* noundef %oid_buf.1, i32 noundef %oid_size.1, %struct.asn1_object_st* noundef %call1, i32 noundef 1) #8
  %cmp25 = icmp slt i32 %call24, 0
  br i1 %cmp25, label %for.end, label %if.end28

if.end28:                                         ; preds = %if.end23
  %cmp29 = icmp eq i8* %call3, null
  br i1 %cmp29, label %if.then34, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end28
  %call31 = tail call i32 @strcmp(i8* noundef %call2, i8* noundef nonnull %call3) #10
  %cmp32 = icmp eq i32 %call31, 0
  br i1 %cmp32, label %if.then34, label %if.else

if.then34:                                        ; preds = %lor.lhs.false, %if.end28
  %2 = load %struct.bio_st*, %struct.bio_st** @bio_out, align 8, !tbaa !5
  %call35 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %2, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.146, i64 0, i64 0), i8* noundef %call2, i8* noundef %oid_buf.1) #8
  br label %for.inc

if.else:                                          ; preds = %lor.lhs.false
  %3 = load %struct.bio_st*, %struct.bio_st** @bio_out, align 8, !tbaa !5
  %call36 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %3, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.147, i64 0, i64 0), i8* noundef %call2, i8* noundef nonnull %call3, i8* noundef %oid_buf.1) #8
  br label %for.inc

for.inc:                                          ; preds = %if.then8, %for.body, %if.else, %if.then34
  %oid_size.2.ph = phi i32 [ %oid_size.1, %if.then34 ], [ %oid_size.1, %if.else ], [ %oid_size.079, %for.body ], [ %oid_size.079, %if.then8 ]
  %oid_buf.2.ph = phi i8* [ %oid_buf.1, %if.then34 ], [ %oid_buf.1, %if.else ], [ %oid_buf.080, %for.body ], [ %oid_buf.080, %if.then8 ]
  %inc = add nuw nsw i32 %i.081, 1
  %exitcond.not = icmp eq i32 %inc, %call
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !45

for.end:                                          ; preds = %for.inc, %if.end23, %if.end10, %entry, %if.then19
  %oid_buf.3 = phi i8* [ null, %if.then19 ], [ null, %entry ], [ %oid_buf.2.ph, %for.inc ], [ %oid_buf.1, %if.end23 ], [ %oid_buf.080, %if.end10 ]
  tail call void @CRYPTO_free(i8* noundef %oid_buf.3, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.145, i64 0, i64 0), i32 noundef 977) #8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #5

declare dso_local void @calculate_columns(%struct.function_st* noundef, %struct.DISPLAY_COLUMNS* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @is_cipher_available(i8* noundef %name) unnamed_addr #0 {
entry:
  %call = tail call i8* @app_get0_propq() #8
  %call1 = tail call i32 @ERR_set_mark() #8
  %call2 = tail call %struct.ossl_lib_ctx_st* @app_get0_libctx() #8
  %call3 = tail call %struct.evp_cipher_st* @EVP_CIPHER_fetch(%struct.ossl_lib_ctx_st* noundef %call2, i8* noundef %name, i8* noundef %call) #8
  %call4 = tail call i32 @ERR_pop_to_mark() #8
  %cmp.not = icmp eq %struct.evp_cipher_st* %call3, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @EVP_CIPHER_free(%struct.evp_cipher_st* noundef nonnull %call3) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmp5.not = icmp eq i8* %call, null
  br i1 %cmp5.not, label %lor.rhs, label %cleanup

lor.rhs:                                          ; preds = %if.end
  %call6 = tail call %struct.evp_cipher_st* @get_cipher_from_engine(i8* noundef %name) #8
  %cmp7 = icmp ne %struct.evp_cipher_st* %call6, null
  %phi.cast = zext i1 %cmp7 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.rhs, %if.then
  %retval.0 = phi i32 [ 1, %if.then ], [ 0, %if.end ], [ %phi.cast, %lor.rhs ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @is_md_available(i8* noundef %name) unnamed_addr #0 {
entry:
  %call = tail call i8* @app_get0_propq() #8
  %call1 = tail call i32 @ERR_set_mark() #8
  %call2 = tail call %struct.ossl_lib_ctx_st* @app_get0_libctx() #8
  %call3 = tail call %struct.evp_md_st* @EVP_MD_fetch(%struct.ossl_lib_ctx_st* noundef %call2, i8* noundef %name, i8* noundef %call) #8
  %call4 = tail call i32 @ERR_pop_to_mark() #8
  %cmp.not = icmp eq %struct.evp_md_st* %call3, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @EVP_MD_free(%struct.evp_md_st* noundef nonnull %call3) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmp5.not = icmp eq i8* %call, null
  br i1 %cmp5.not, label %lor.rhs, label %cleanup

lor.rhs:                                          ; preds = %if.end
  %call6 = tail call %struct.evp_md_st* @get_digest_from_engine(i8* noundef %name) #8
  %cmp7 = icmp ne %struct.evp_md_st* %call6, null
  %phi.cast = zext i1 %cmp7 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.rhs, %if.then
  %retval.0 = phi i32 [ 1, %if.then ], [ 0, %if.end ], [ %phi.cast, %lor.rhs ]
  ret i32 %retval.0
}

declare dso_local i8* @app_get0_propq() local_unnamed_addr #3

declare dso_local i32 @ERR_set_mark() local_unnamed_addr #3

declare dso_local %struct.evp_cipher_st* @EVP_CIPHER_fetch(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local %struct.ossl_lib_ctx_st* @app_get0_libctx() local_unnamed_addr #3

declare dso_local i32 @ERR_pop_to_mark() local_unnamed_addr #3

declare dso_local void @EVP_CIPHER_free(%struct.evp_cipher_st* noundef) #3

declare dso_local %struct.evp_cipher_st* @get_cipher_from_engine(i8* noundef) local_unnamed_addr #3

declare dso_local %struct.evp_md_st* @EVP_MD_fetch(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local void @EVP_MD_free(%struct.evp_md_st* noundef) #3

declare dso_local %struct.evp_md_st* @get_digest_from_engine(i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @display_random(i8* noundef %name, %struct.evp_rand_ctx_st* noundef %drbg) unnamed_addr #0 {
entry:
  %u = alloca i64, align 8
  %params = alloca [2 x %struct.ossl_param_st], align 16
  %buf = alloca [1000 x i8], align 16
  %0 = bitcast i64* %u to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #11
  %1 = bitcast [2 x %struct.ossl_param_st]* %params to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %1) #11
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(80) %1, i8 0, i64 80, i1 false)
  %2 = getelementptr inbounds [1000 x i8], [1000 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 1000, i8* nonnull %2) #11
  %3 = load %struct.bio_st*, %struct.bio_st** @bio_out, align 8, !tbaa !5
  %call = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %3, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.77, i64 0, i64 0), i8* noundef %name) #8
  %cmp.not = icmp eq %struct.evp_rand_ctx_st* %drbg, null
  br i1 %cmp.not, label %if.end51, label %if.then

if.then:                                          ; preds = %entry
  %call1 = tail call %struct.evp_rand_st* @EVP_RAND_CTX_get0_rand(%struct.evp_rand_ctx_st* noundef nonnull %drbg) #8
  %4 = load %struct.bio_st*, %struct.bio_st** @bio_out, align 8, !tbaa !5
  %call2 = tail call i8* @EVP_RAND_get0_name(%struct.evp_rand_st* noundef %call1) #8
  %call3 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %4, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.78, i64 0, i64 0), i8* noundef %call2) #8
  %5 = load %struct.bio_st*, %struct.bio_st** @bio_out, align 8, !tbaa !5
  %call4 = tail call %struct.ossl_provider_st* @EVP_RAND_get0_provider(%struct.evp_rand_st* noundef %call1) #8
  %call5 = tail call i8* @OSSL_PROVIDER_get0_name(%struct.ossl_provider_st* noundef %call4) #8
  %call6 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %5, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.79, i64 0, i64 0), i8* noundef %call5) #8
  %call7 = tail call i32 @EVP_RAND_get_state(%struct.evp_rand_ctx_st* noundef nonnull %drbg) #8
  %6 = icmp ult i32 %call7, 3
  br i1 %6, label %switch.lookup, label %sw.epilog

switch.lookup:                                    ; preds = %if.then
  %7 = sext i32 %call7 to i64
  %switch.gep = getelementptr inbounds [3 x i8*], [3 x i8*]* @switch.table.display_random, i64 0, i64 %7
  %switch.load = load i8*, i8** %switch.gep, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then, %switch.lookup
  %p.0 = phi i8* [ %switch.load, %switch.lookup ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.83, i64 0, i64 0), %if.then ]
  %8 = load %struct.bio_st*, %struct.bio_st** @bio_out, align 8, !tbaa !5
  %call10 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %8, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.84, i64 0, i64 0), i8* noundef nonnull %p.0) #8
  %call11 = tail call %struct.ossl_param_st* @EVP_RAND_gettable_ctx_params(%struct.evp_rand_st* noundef %call1) #8
  %cmp12.not = icmp eq %struct.ossl_param_st* %call11, null
  br i1 %cmp12.not, label %if.end51, label %for.cond.preheader

for.cond.preheader:                               ; preds = %sw.epilog
  %key71 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %call11, i64 0, i32 0
  %9 = load i8*, i8** %key71, align 8, !tbaa !46
  %cmp14.not72 = icmp eq i8* %9, null
  br i1 %cmp14.not72, label %if.end51, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %arraydecay = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0
  %key26 = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0, i32 0
  %data_type29 = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0, i32 1
  %data39 = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0, i32 2
  %data_size41 = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0, i32 3
  %10 = bitcast i8** %data39 to i64**
  %return_size = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %11 = phi i8* [ %9, %for.body.lr.ph ], [ %14, %for.inc ]
  %gettables.073 = phi %struct.ossl_param_st* [ %call11, %for.body.lr.ph ], [ %incdec.ptr, %for.inc ]
  %call16 = call i32 @strcasecmp(i8* noundef nonnull %11, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.85, i64 0, i64 0)) #10
  %cmp17 = icmp eq i32 %call16, 0
  br i1 %cmp17, label %for.inc, label %if.end

if.end:                                           ; preds = %for.body
  %data_type = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %gettables.073, i64 0, i32 1
  %12 = load i32, i32* %data_type, align 8, !tbaa !48
  %cmp19.not = icmp eq i32 %12, 4
  br i1 %cmp19.not, label %if.end24, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %cmp21 = icmp eq i32 %12, 6
  %.b = load i1, i1* @verbose, align 4
  %or.cond = select i1 %cmp21, i1 true, i1 %.b
  br i1 %or.cond, label %if.end24, label %for.inc

if.end24:                                         ; preds = %land.lhs.true, %if.end
  store i8* %11, i8** %key26, align 16, !tbaa !46
  store i32 %12, i32* %data_type29, align 8, !tbaa !48
  %13 = load i32, i32* %data_type, align 8, !tbaa !48
  %.off = add i32 %13, -1
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.then34, label %if.else

if.then34:                                        ; preds = %if.end24
  store i64* %u, i64** %10, align 16, !tbaa !49
  br label %if.end42

if.else:                                          ; preds = %if.end24
  store i8* %2, i8** %data39, align 16, !tbaa !49
  br label %if.end42

if.end42:                                         ; preds = %if.else, %if.then34
  %storemerge = phi i64 [ 1000, %if.else ], [ 8, %if.then34 ]
  store i64 %storemerge, i64* %data_size41, align 8, !tbaa !50
  store i64 0, i64* %return_size, align 16, !tbaa !51
  %call45 = call i32 @EVP_RAND_CTX_get_params(%struct.evp_rand_ctx_st* noundef nonnull %drbg, %struct.ossl_param_st* noundef nonnull %arraydecay) #8
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %for.inc, label %if.then47

if.then47:                                        ; preds = %if.end42
  call void @print_param_value(%struct.ossl_param_st* noundef nonnull %arraydecay, i32 noundef 2) #8
  br label %for.inc

for.inc:                                          ; preds = %if.end42, %if.then47, %land.lhs.true, %for.body
  %incdec.ptr = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %gettables.073, i64 1
  %key = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %incdec.ptr, i64 0, i32 0
  %14 = load i8*, i8** %key, align 8, !tbaa !46
  %cmp14.not = icmp eq i8* %14, null
  br i1 %cmp14.not, label %if.end51, label %for.body, !llvm.loop !52

if.end51:                                         ; preds = %for.inc, %for.cond.preheader, %sw.epilog, %entry
  call void @llvm.lifetime.end.p0i8(i64 1000, i8* nonnull %2) #11
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %1) #11
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #11
  ret void
}

declare dso_local %struct.evp_rand_ctx_st* @RAND_get0_primary(%struct.ossl_lib_ctx_st* noundef) local_unnamed_addr #3

declare dso_local %struct.evp_rand_ctx_st* @RAND_get0_public(%struct.ossl_lib_ctx_st* noundef) local_unnamed_addr #3

declare dso_local %struct.evp_rand_ctx_st* @RAND_get0_private(%struct.ossl_lib_ctx_st* noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #6

declare dso_local %struct.evp_rand_st* @EVP_RAND_CTX_get0_rand(%struct.evp_rand_ctx_st* noundef) local_unnamed_addr #3

declare dso_local i8* @EVP_RAND_get0_name(%struct.evp_rand_st* noundef) local_unnamed_addr #3

declare dso_local i8* @OSSL_PROVIDER_get0_name(%struct.ossl_provider_st* noundef) local_unnamed_addr #3

declare dso_local %struct.ossl_provider_st* @EVP_RAND_get0_provider(%struct.evp_rand_st* noundef) local_unnamed_addr #3

declare dso_local i32 @EVP_RAND_get_state(%struct.evp_rand_ctx_st* noundef) local_unnamed_addr #3

declare dso_local %struct.ossl_param_st* @EVP_RAND_gettable_ctx_params(%struct.evp_rand_st* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @strcasecmp(i8* noundef, i8* noundef) local_unnamed_addr #4

declare dso_local i32 @EVP_RAND_CTX_get_params(%struct.evp_rand_ctx_st* noundef, %struct.ossl_param_st* noundef) local_unnamed_addr #3

declare dso_local void @print_param_value(%struct.ossl_param_st* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.stack_st_EVP_RAND* @sk_EVP_RAND_new() unnamed_addr #0 {
entry:
  %call = tail call %struct.stack_st* @OPENSSL_sk_new(i32 (i8*, i8*)* noundef bitcast (i32 (%struct.evp_rand_st**, %struct.evp_rand_st**)* @rand_cmp to i32 (i8*, i8*)*)) #8
  %0 = bitcast %struct.stack_st* %call to %struct.stack_st_EVP_RAND*
  ret %struct.stack_st_EVP_RAND* %0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @rand_cmp(%struct.evp_rand_st** nocapture noundef readonly %a, %struct.evp_rand_st** nocapture noundef readonly %b) #0 {
entry:
  %0 = load %struct.evp_rand_st*, %struct.evp_rand_st** %a, align 8, !tbaa !5
  %call = tail call i8* @EVP_RAND_get0_name(%struct.evp_rand_st* noundef %0) #8
  %1 = load %struct.evp_rand_st*, %struct.evp_rand_st** %b, align 8, !tbaa !5
  %call1 = tail call i8* @EVP_RAND_get0_name(%struct.evp_rand_st* noundef %1) #8
  %call2 = tail call i32 @strcasecmp(i8* noundef %call, i8* noundef %call1) #10
  %cmp = icmp eq i32 %call2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.evp_rand_st*, %struct.evp_rand_st** %a, align 8, !tbaa !5
  %call3 = tail call %struct.ossl_provider_st* @EVP_RAND_get0_provider(%struct.evp_rand_st* noundef %2) #8
  %call4 = tail call i8* @OSSL_PROVIDER_get0_name(%struct.ossl_provider_st* noundef %call3) #8
  %3 = load %struct.evp_rand_st*, %struct.evp_rand_st** %b, align 8, !tbaa !5
  %call5 = tail call %struct.ossl_provider_st* @EVP_RAND_get0_provider(%struct.evp_rand_st* noundef %3) #8
  %call6 = tail call i8* @OSSL_PROVIDER_get0_name(%struct.ossl_provider_st* noundef %call5) #8
  %call7 = tail call i32 @strcmp(i8* noundef %call4, i8* noundef %call6) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %ret.0 = phi i32 [ %call7, %if.then ], [ %call2, %entry ]
  ret i32 %ret.0
}

declare dso_local void @EVP_RAND_do_all_provided(%struct.ossl_lib_ctx_st* noundef, void (%struct.evp_rand_st*, i8*)* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal void @collect_rands(%struct.evp_rand_st* noundef %rand, i8* noundef %stack) #0 {
entry:
  %call = tail call fastcc i32 @is_rand_fetchable(%struct.evp_rand_st* noundef %rand) #9
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %0 = bitcast i8* %stack to %struct.stack_st_EVP_RAND*
  %call1 = tail call fastcc i32 @sk_EVP_RAND_push(%struct.stack_st_EVP_RAND* noundef %0, %struct.evp_rand_st* noundef %rand) #9
  %cmp = icmp sgt i32 %call1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %call2 = tail call i32 @EVP_RAND_up_ref(%struct.evp_rand_st* noundef %rand) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @sk_EVP_RAND_sort(%struct.stack_st_EVP_RAND* noundef %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_EVP_RAND* %sk to %struct.stack_st*
  tail call void @OPENSSL_sk_sort(%struct.stack_st* noundef %0) #8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @sk_EVP_RAND_num(%struct.stack_st_EVP_RAND* noundef %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_EVP_RAND* %sk to %struct.stack_st*
  %call = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %0) #8
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.evp_rand_st* @sk_EVP_RAND_value(%struct.stack_st_EVP_RAND* noundef %sk, i32 noundef %idx) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_EVP_RAND* %sk to %struct.stack_st*
  %call = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %0, i32 noundef %idx) #8
  %1 = bitcast i8* %call to %struct.evp_rand_st*
  ret %struct.evp_rand_st* %1
}

declare dso_local i8* @EVP_RAND_get0_description(%struct.evp_rand_st* noundef) local_unnamed_addr #3

declare dso_local i32 @print_param_types(i8* noundef, %struct.ossl_param_st* noundef, i32 noundef) local_unnamed_addr #3

declare dso_local %struct.ossl_param_st* @EVP_RAND_gettable_params(%struct.evp_rand_st* noundef) local_unnamed_addr #3

declare dso_local %struct.ossl_param_st* @EVP_RAND_settable_ctx_params(%struct.evp_rand_st* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @sk_EVP_RAND_pop_free(%struct.stack_st_EVP_RAND* noundef %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_EVP_RAND* %sk to %struct.stack_st*
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %0, void (i8*)* noundef bitcast (void (%struct.evp_rand_st*)* @EVP_RAND_free to void (i8*)*)) #8
  ret void
}

declare dso_local void @EVP_RAND_free(%struct.evp_rand_st* noundef) #3

declare dso_local %struct.stack_st* @OPENSSL_sk_new(i32 (i8*, i8*)* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @is_rand_fetchable(%struct.evp_rand_st* noundef %alg) unnamed_addr #0 {
entry:
  %call = tail call i8* @app_get0_propq() #8
  %call1 = tail call %struct.ossl_lib_ctx_st* @app_get0_libctx() #8
  %call2 = tail call i8* @EVP_RAND_get0_name(%struct.evp_rand_st* noundef %alg) #8
  %call3 = tail call i32 @ERR_set_mark() #8
  %call4 = tail call %struct.evp_rand_st* @EVP_RAND_fetch(%struct.ossl_lib_ctx_st* noundef %call1, i8* noundef %call2, i8* noundef %call) #8
  %call5 = tail call i32 @ERR_pop_to_mark() #8
  %cmp = icmp eq %struct.evp_rand_st* %call4, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  tail call void @EVP_RAND_free(%struct.evp_rand_st* noundef nonnull %call4) #8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @sk_EVP_RAND_push(%struct.stack_st_EVP_RAND* noundef %sk, %struct.evp_rand_st* noundef %ptr) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_EVP_RAND* %sk to %struct.stack_st*
  %1 = bitcast %struct.evp_rand_st* %ptr to i8*
  %call = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %0, i8* noundef %1) #8
  ret i32 %call
}

declare dso_local i32 @EVP_RAND_up_ref(%struct.evp_rand_st* noundef) local_unnamed_addr #3

declare dso_local %struct.evp_rand_st* @EVP_RAND_fetch(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local i32 @OPENSSL_sk_push(%struct.stack_st* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local void @OPENSSL_sk_sort(%struct.stack_st* noundef) local_unnamed_addr #3

declare dso_local i32 @OPENSSL_sk_num(%struct.stack_st* noundef) local_unnamed_addr #3

declare dso_local i8* @OPENSSL_sk_value(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #3

declare dso_local void @OPENSSL_sk_pop_free(%struct.stack_st* noundef, void (i8*)* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.stack_st_EVP_MD* @sk_EVP_MD_new() unnamed_addr #0 {
entry:
  %call = tail call %struct.stack_st* @OPENSSL_sk_new(i32 (i8*, i8*)* noundef bitcast (i32 (%struct.evp_md_st**, %struct.evp_md_st**)* @md_cmp to i32 (i8*, i8*)*)) #8
  %0 = bitcast %struct.stack_st* %call to %struct.stack_st_EVP_MD*
  ret %struct.stack_st_EVP_MD* %0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @md_cmp(%struct.evp_md_st** nocapture noundef readonly %a, %struct.evp_md_st** nocapture noundef readonly %b) #0 {
entry:
  %0 = load %struct.evp_md_st*, %struct.evp_md_st** %a, align 8, !tbaa !5
  %call = tail call %struct.ossl_provider_st* @EVP_MD_get0_provider(%struct.evp_md_st* noundef %0) #8
  %call1 = tail call i8* @OSSL_PROVIDER_get0_name(%struct.ossl_provider_st* noundef %call) #8
  %1 = load %struct.evp_md_st*, %struct.evp_md_st** %b, align 8, !tbaa !5
  %call2 = tail call %struct.ossl_provider_st* @EVP_MD_get0_provider(%struct.evp_md_st* noundef %1) #8
  %call3 = tail call i8* @OSSL_PROVIDER_get0_name(%struct.ossl_provider_st* noundef %call2) #8
  %call4 = tail call i32 @strcmp(i8* noundef %call1, i8* noundef %call3) #10
  ret i32 %call4
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @include_legacy() unnamed_addr #0 {
entry:
  %call = tail call i8* @app_get0_propq() #8
  %cmp = icmp eq i8* %call, null
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

declare dso_local void @EVP_MD_do_all_sorted(void (%struct.evp_md_st*, i8*, i8*, i8*)* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal void @legacy_md_fn(%struct.evp_md_st* noundef %m, i8* noundef %from, i8* noundef %to, i8* noundef %arg) #0 {
entry:
  %cmp.not = icmp eq %struct.evp_md_st* %m, null
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %0 = bitcast i8* %arg to %struct.bio_st*
  %call = tail call i8* @EVP_MD_get0_name(%struct.evp_md_st* noundef nonnull %m) #8
  %call1 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %0, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.95, i64 0, i64 0), i8* noundef %call) #8
  br label %if.end8

if.else:                                          ; preds = %entry
  %cmp2 = icmp eq i8* %from, null
  %spec.store.select = select i1 %cmp2, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.96, i64 0, i64 0), i8* %from
  %cmp4 = icmp eq i8* %to, null
  %spec.store.select9 = select i1 %cmp4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.96, i64 0, i64 0), i8* %to
  %1 = bitcast i8* %arg to %struct.bio_st*
  %call7 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %1, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.97, i64 0, i64 0), i8* noundef %spec.store.select, i8* noundef %spec.store.select9) #8
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then
  ret void
}

declare dso_local void @EVP_MD_do_all_provided(%struct.ossl_lib_ctx_st* noundef, void (%struct.evp_md_st*, i8*)* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal void @collect_digests(%struct.evp_md_st* noundef %digest, i8* noundef %stack) #0 {
entry:
  %call = tail call fastcc i32 @is_digest_fetchable(%struct.evp_md_st* noundef %digest) #9
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %0 = bitcast i8* %stack to %struct.stack_st_EVP_MD*
  %call1 = tail call fastcc i32 @sk_EVP_MD_push(%struct.stack_st_EVP_MD* noundef %0, %struct.evp_md_st* noundef %digest) #9
  %cmp = icmp sgt i32 %call1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %call2 = tail call i32 @EVP_MD_up_ref(%struct.evp_md_st* noundef %digest) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @sk_EVP_MD_sort(%struct.stack_st_EVP_MD* noundef %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_EVP_MD* %sk to %struct.stack_st*
  tail call void @OPENSSL_sk_sort(%struct.stack_st* noundef %0) #8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @sk_EVP_MD_num(%struct.stack_st_EVP_MD* noundef %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_EVP_MD* %sk to %struct.stack_st*
  %call = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %0) #8
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.evp_md_st* @sk_EVP_MD_value(%struct.stack_st_EVP_MD* noundef %sk, i32 noundef %idx) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_EVP_MD* %sk to %struct.stack_st*
  %call = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %0, i32 noundef %idx) #8
  %1 = bitcast i8* %call to %struct.evp_md_st*
  ret %struct.evp_md_st* %1
}

declare dso_local i32 @EVP_MD_is_a(%struct.evp_md_st* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local i32 @name_cmp(i8** noundef, i8** noundef) #3

declare dso_local i32 @EVP_MD_names_do_all(%struct.evp_md_st* noundef, void (i8*, i8*)* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local void @collect_names(i8* noundef, i8* noundef) #3

declare dso_local void @print_names(%struct.bio_st* noundef, %struct.stack_st_OPENSSL_CSTRING* noundef) local_unnamed_addr #3

declare dso_local %struct.ossl_provider_st* @EVP_MD_get0_provider(%struct.evp_md_st* noundef) local_unnamed_addr #3

declare dso_local i8* @EVP_MD_get0_description(%struct.evp_md_st* noundef) local_unnamed_addr #3

declare dso_local %struct.ossl_param_st* @EVP_MD_gettable_params(%struct.evp_md_st* noundef) local_unnamed_addr #3

declare dso_local %struct.ossl_param_st* @EVP_MD_gettable_ctx_params(%struct.evp_md_st* noundef) local_unnamed_addr #3

declare dso_local %struct.ossl_param_st* @EVP_MD_settable_ctx_params(%struct.evp_md_st* noundef) local_unnamed_addr #3

declare dso_local void @OPENSSL_sk_free(%struct.stack_st* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_OPENSSL_CSTRING_sk_type(%struct.stack_st_OPENSSL_CSTRING* noundef readnone %sk) unnamed_addr #7 {
entry:
  %0 = bitcast %struct.stack_st_OPENSSL_CSTRING* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @sk_EVP_MD_pop_free(%struct.stack_st_EVP_MD* noundef %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_EVP_MD* %sk to %struct.stack_st*
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %0, void (i8*)* noundef bitcast (void (%struct.evp_md_st*)* @EVP_MD_free to void (i8*)*)) #8
  ret void
}

declare dso_local i8* @EVP_MD_get0_name(%struct.evp_md_st* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @is_digest_fetchable(%struct.evp_md_st* noundef %alg) unnamed_addr #0 {
entry:
  %call = tail call i8* @app_get0_propq() #8
  %call1 = tail call %struct.ossl_lib_ctx_st* @app_get0_libctx() #8
  %call2 = tail call i8* @EVP_MD_get0_name(%struct.evp_md_st* noundef %alg) #8
  %call3 = tail call i32 @ERR_set_mark() #8
  %call4 = tail call %struct.evp_md_st* @EVP_MD_fetch(%struct.ossl_lib_ctx_st* noundef %call1, i8* noundef %call2, i8* noundef %call) #8
  %call5 = tail call i32 @ERR_pop_to_mark() #8
  %cmp = icmp eq %struct.evp_md_st* %call4, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  tail call void @EVP_MD_free(%struct.evp_md_st* noundef nonnull %call4) #8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @sk_EVP_MD_push(%struct.stack_st_EVP_MD* noundef %sk, %struct.evp_md_st* noundef %ptr) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_EVP_MD* %sk to %struct.stack_st*
  %1 = bitcast %struct.evp_md_st* %ptr to i8*
  %call = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %0, i8* noundef %1) #8
  ret i32 %call
}

declare dso_local i32 @EVP_MD_up_ref(%struct.evp_md_st* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.stack_st_EVP_KDF* @sk_EVP_KDF_new() unnamed_addr #0 {
entry:
  %call = tail call %struct.stack_st* @OPENSSL_sk_new(i32 (i8*, i8*)* noundef bitcast (i32 (%struct.evp_kdf_st**, %struct.evp_kdf_st**)* @kdf_cmp to i32 (i8*, i8*)*)) #8
  %0 = bitcast %struct.stack_st* %call to %struct.stack_st_EVP_KDF*
  ret %struct.stack_st_EVP_KDF* %0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @kdf_cmp(%struct.evp_kdf_st** nocapture noundef readonly %a, %struct.evp_kdf_st** nocapture noundef readonly %b) #0 {
entry:
  %0 = load %struct.evp_kdf_st*, %struct.evp_kdf_st** %a, align 8, !tbaa !5
  %call = tail call %struct.ossl_provider_st* @EVP_KDF_get0_provider(%struct.evp_kdf_st* noundef %0) #8
  %call1 = tail call i8* @OSSL_PROVIDER_get0_name(%struct.ossl_provider_st* noundef %call) #8
  %1 = load %struct.evp_kdf_st*, %struct.evp_kdf_st** %b, align 8, !tbaa !5
  %call2 = tail call %struct.ossl_provider_st* @EVP_KDF_get0_provider(%struct.evp_kdf_st* noundef %1) #8
  %call3 = tail call i8* @OSSL_PROVIDER_get0_name(%struct.ossl_provider_st* noundef %call2) #8
  %call4 = tail call i32 @strcmp(i8* noundef %call1, i8* noundef %call3) #10
  ret i32 %call4
}

declare dso_local void @EVP_KDF_do_all_provided(%struct.ossl_lib_ctx_st* noundef, void (%struct.evp_kdf_st*, i8*)* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal void @collect_kdfs(%struct.evp_kdf_st* noundef %kdf, i8* noundef %stack) #0 {
entry:
  %call = tail call fastcc i32 @is_kdf_fetchable(%struct.evp_kdf_st* noundef %kdf) #9
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %0 = bitcast i8* %stack to %struct.stack_st_EVP_KDF*
  %call1 = tail call fastcc i32 @sk_EVP_KDF_push(%struct.stack_st_EVP_KDF* noundef %0, %struct.evp_kdf_st* noundef %kdf) #9
  %cmp = icmp sgt i32 %call1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %call2 = tail call i32 @EVP_KDF_up_ref(%struct.evp_kdf_st* noundef %kdf) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @sk_EVP_KDF_sort(%struct.stack_st_EVP_KDF* noundef %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_EVP_KDF* %sk to %struct.stack_st*
  tail call void @OPENSSL_sk_sort(%struct.stack_st* noundef %0) #8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @sk_EVP_KDF_num(%struct.stack_st_EVP_KDF* noundef %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_EVP_KDF* %sk to %struct.stack_st*
  %call = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %0) #8
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.evp_kdf_st* @sk_EVP_KDF_value(%struct.stack_st_EVP_KDF* noundef %sk, i32 noundef %idx) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_EVP_KDF* %sk to %struct.stack_st*
  %call = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %0, i32 noundef %idx) #8
  %1 = bitcast i8* %call to %struct.evp_kdf_st*
  ret %struct.evp_kdf_st* %1
}

declare dso_local i32 @EVP_KDF_is_a(%struct.evp_kdf_st* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local i32 @EVP_KDF_names_do_all(%struct.evp_kdf_st* noundef, void (i8*, i8*)* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local %struct.ossl_provider_st* @EVP_KDF_get0_provider(%struct.evp_kdf_st* noundef) local_unnamed_addr #3

declare dso_local i8* @EVP_KDF_get0_description(%struct.evp_kdf_st* noundef) local_unnamed_addr #3

declare dso_local %struct.ossl_param_st* @EVP_KDF_gettable_params(%struct.evp_kdf_st* noundef) local_unnamed_addr #3

declare dso_local %struct.ossl_param_st* @EVP_KDF_gettable_ctx_params(%struct.evp_kdf_st* noundef) local_unnamed_addr #3

declare dso_local %struct.ossl_param_st* @EVP_KDF_settable_ctx_params(%struct.evp_kdf_st* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @sk_EVP_KDF_pop_free(%struct.stack_st_EVP_KDF* noundef %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_EVP_KDF* %sk to %struct.stack_st*
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %0, void (i8*)* noundef bitcast (void (%struct.evp_kdf_st*)* @EVP_KDF_free to void (i8*)*)) #8
  ret void
}

declare dso_local void @EVP_KDF_free(%struct.evp_kdf_st* noundef) #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @is_kdf_fetchable(%struct.evp_kdf_st* noundef %alg) unnamed_addr #0 {
entry:
  %call = tail call i8* @app_get0_propq() #8
  %call1 = tail call %struct.ossl_lib_ctx_st* @app_get0_libctx() #8
  %call2 = tail call i8* @EVP_KDF_get0_name(%struct.evp_kdf_st* noundef %alg) #8
  %call3 = tail call i32 @ERR_set_mark() #8
  %call4 = tail call %struct.evp_kdf_st* @EVP_KDF_fetch(%struct.ossl_lib_ctx_st* noundef %call1, i8* noundef %call2, i8* noundef %call) #8
  %call5 = tail call i32 @ERR_pop_to_mark() #8
  %cmp = icmp eq %struct.evp_kdf_st* %call4, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  tail call void @EVP_KDF_free(%struct.evp_kdf_st* noundef nonnull %call4) #8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @sk_EVP_KDF_push(%struct.stack_st_EVP_KDF* noundef %sk, %struct.evp_kdf_st* noundef %ptr) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_EVP_KDF* %sk to %struct.stack_st*
  %1 = bitcast %struct.evp_kdf_st* %ptr to i8*
  %call = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %0, i8* noundef %1) #8
  ret i32 %call
}

declare dso_local i32 @EVP_KDF_up_ref(%struct.evp_kdf_st* noundef) local_unnamed_addr #3

declare dso_local i8* @EVP_KDF_get0_name(%struct.evp_kdf_st* noundef) local_unnamed_addr #3

declare dso_local %struct.evp_kdf_st* @EVP_KDF_fetch(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.stack_st_EVP_MAC* @sk_EVP_MAC_new() unnamed_addr #0 {
entry:
  %call = tail call %struct.stack_st* @OPENSSL_sk_new(i32 (i8*, i8*)* noundef bitcast (i32 (%struct.evp_mac_st**, %struct.evp_mac_st**)* @mac_cmp to i32 (i8*, i8*)*)) #8
  %0 = bitcast %struct.stack_st* %call to %struct.stack_st_EVP_MAC*
  ret %struct.stack_st_EVP_MAC* %0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @mac_cmp(%struct.evp_mac_st** nocapture noundef readonly %a, %struct.evp_mac_st** nocapture noundef readonly %b) #0 {
entry:
  %0 = load %struct.evp_mac_st*, %struct.evp_mac_st** %a, align 8, !tbaa !5
  %call = tail call %struct.ossl_provider_st* @EVP_MAC_get0_provider(%struct.evp_mac_st* noundef %0) #8
  %call1 = tail call i8* @OSSL_PROVIDER_get0_name(%struct.ossl_provider_st* noundef %call) #8
  %1 = load %struct.evp_mac_st*, %struct.evp_mac_st** %b, align 8, !tbaa !5
  %call2 = tail call %struct.ossl_provider_st* @EVP_MAC_get0_provider(%struct.evp_mac_st* noundef %1) #8
  %call3 = tail call i8* @OSSL_PROVIDER_get0_name(%struct.ossl_provider_st* noundef %call2) #8
  %call4 = tail call i32 @strcmp(i8* noundef %call1, i8* noundef %call3) #10
  ret i32 %call4
}

declare dso_local void @EVP_MAC_do_all_provided(%struct.ossl_lib_ctx_st* noundef, void (%struct.evp_mac_st*, i8*)* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal void @collect_macs(%struct.evp_mac_st* noundef %mac, i8* noundef %stack) #0 {
entry:
  %call = tail call fastcc i32 @is_mac_fetchable(%struct.evp_mac_st* noundef %mac) #9
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %0 = bitcast i8* %stack to %struct.stack_st_EVP_MAC*
  %call1 = tail call fastcc i32 @sk_EVP_MAC_push(%struct.stack_st_EVP_MAC* noundef %0, %struct.evp_mac_st* noundef %mac) #9
  %cmp = icmp sgt i32 %call1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %call2 = tail call i32 @EVP_MAC_up_ref(%struct.evp_mac_st* noundef %mac) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @sk_EVP_MAC_sort(%struct.stack_st_EVP_MAC* noundef %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_EVP_MAC* %sk to %struct.stack_st*
  tail call void @OPENSSL_sk_sort(%struct.stack_st* noundef %0) #8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @sk_EVP_MAC_num(%struct.stack_st_EVP_MAC* noundef %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_EVP_MAC* %sk to %struct.stack_st*
  %call = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %0) #8
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.evp_mac_st* @sk_EVP_MAC_value(%struct.stack_st_EVP_MAC* noundef %sk, i32 noundef %idx) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_EVP_MAC* %sk to %struct.stack_st*
  %call = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %0, i32 noundef %idx) #8
  %1 = bitcast i8* %call to %struct.evp_mac_st*
  ret %struct.evp_mac_st* %1
}

declare dso_local i32 @EVP_MAC_is_a(%struct.evp_mac_st* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local i32 @EVP_MAC_names_do_all(%struct.evp_mac_st* noundef, void (i8*, i8*)* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local %struct.ossl_provider_st* @EVP_MAC_get0_provider(%struct.evp_mac_st* noundef) local_unnamed_addr #3

declare dso_local i8* @EVP_MAC_get0_description(%struct.evp_mac_st* noundef) local_unnamed_addr #3

declare dso_local %struct.ossl_param_st* @EVP_MAC_gettable_params(%struct.evp_mac_st* noundef) local_unnamed_addr #3

declare dso_local %struct.ossl_param_st* @EVP_MAC_gettable_ctx_params(%struct.evp_mac_st* noundef) local_unnamed_addr #3

declare dso_local %struct.ossl_param_st* @EVP_MAC_settable_ctx_params(%struct.evp_mac_st* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @sk_EVP_MAC_pop_free(%struct.stack_st_EVP_MAC* noundef %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_EVP_MAC* %sk to %struct.stack_st*
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %0, void (i8*)* noundef bitcast (void (%struct.evp_mac_st*)* @EVP_MAC_free to void (i8*)*)) #8
  ret void
}

declare dso_local void @EVP_MAC_free(%struct.evp_mac_st* noundef) #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @is_mac_fetchable(%struct.evp_mac_st* noundef %alg) unnamed_addr #0 {
entry:
  %call = tail call i8* @app_get0_propq() #8
  %call1 = tail call %struct.ossl_lib_ctx_st* @app_get0_libctx() #8
  %call2 = tail call i8* @EVP_MAC_get0_name(%struct.evp_mac_st* noundef %alg) #8
  %call3 = tail call i32 @ERR_set_mark() #8
  %call4 = tail call %struct.evp_mac_st* @EVP_MAC_fetch(%struct.ossl_lib_ctx_st* noundef %call1, i8* noundef %call2, i8* noundef %call) #8
  %call5 = tail call i32 @ERR_pop_to_mark() #8
  %cmp = icmp eq %struct.evp_mac_st* %call4, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  tail call void @EVP_MAC_free(%struct.evp_mac_st* noundef nonnull %call4) #8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @sk_EVP_MAC_push(%struct.stack_st_EVP_MAC* noundef %sk, %struct.evp_mac_st* noundef %ptr) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_EVP_MAC* %sk to %struct.stack_st*
  %1 = bitcast %struct.evp_mac_st* %ptr to i8*
  %call = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %0, i8* noundef %1) #8
  ret i32 %call
}

declare dso_local i32 @EVP_MAC_up_ref(%struct.evp_mac_st* noundef) local_unnamed_addr #3

declare dso_local i8* @EVP_MAC_get0_name(%struct.evp_mac_st* noundef) local_unnamed_addr #3

declare dso_local %struct.evp_mac_st* @EVP_MAC_fetch(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.stack_st_EVP_CIPHER* @sk_EVP_CIPHER_new() unnamed_addr #0 {
entry:
  %call = tail call %struct.stack_st* @OPENSSL_sk_new(i32 (i8*, i8*)* noundef bitcast (i32 (%struct.evp_cipher_st**, %struct.evp_cipher_st**)* @cipher_cmp to i32 (i8*, i8*)*)) #8
  %0 = bitcast %struct.stack_st* %call to %struct.stack_st_EVP_CIPHER*
  ret %struct.stack_st_EVP_CIPHER* %0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @cipher_cmp(%struct.evp_cipher_st** nocapture noundef readonly %a, %struct.evp_cipher_st** nocapture noundef readonly %b) #0 {
entry:
  %0 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %a, align 8, !tbaa !5
  %call = tail call %struct.ossl_provider_st* @EVP_CIPHER_get0_provider(%struct.evp_cipher_st* noundef %0) #8
  %call1 = tail call i8* @OSSL_PROVIDER_get0_name(%struct.ossl_provider_st* noundef %call) #8
  %1 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %b, align 8, !tbaa !5
  %call2 = tail call %struct.ossl_provider_st* @EVP_CIPHER_get0_provider(%struct.evp_cipher_st* noundef %1) #8
  %call3 = tail call i8* @OSSL_PROVIDER_get0_name(%struct.ossl_provider_st* noundef %call2) #8
  %call4 = tail call i32 @strcmp(i8* noundef %call1, i8* noundef %call3) #10
  ret i32 %call4
}

declare dso_local void @EVP_CIPHER_do_all_sorted(void (%struct.evp_cipher_st*, i8*, i8*, i8*)* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal void @legacy_cipher_fn(%struct.evp_cipher_st* noundef %c, i8* noundef %from, i8* noundef %to, i8* noundef %arg) #0 {
entry:
  %0 = load i8*, i8** @select_name, align 8, !tbaa !5
  %cmp.not = icmp eq i8* %0, null
  %cmp4.not = icmp eq %struct.evp_cipher_st* %c, null
  br i1 %cmp.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  br i1 %cmp4.not, label %if.end15, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %call = tail call i8* @EVP_CIPHER_get0_name(%struct.evp_cipher_st* noundef nonnull %c) #8
  %call2 = tail call i32 @strcasecmp(i8* noundef nonnull %0, i8* noundef %call) #10
  %cmp3.not = icmp eq i32 %call2, 0
  br i1 %cmp3.not, label %if.then5, label %if.end15

if.end:                                           ; preds = %entry
  br i1 %cmp4.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %lor.lhs.false, %if.end
  %1 = bitcast i8* %arg to %struct.bio_st*
  %call6 = tail call i8* @EVP_CIPHER_get0_name(%struct.evp_cipher_st* noundef nonnull %c) #8
  %call7 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %1, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.95, i64 0, i64 0), i8* noundef %call6) #8
  br label %if.end15

if.else:                                          ; preds = %if.end
  %cmp8 = icmp eq i8* %from, null
  %spec.store.select = select i1 %cmp8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.96, i64 0, i64 0), i8* %from
  %cmp11 = icmp eq i8* %to, null
  %spec.store.select16 = select i1 %cmp11, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.96, i64 0, i64 0), i8* %to
  %2 = bitcast i8* %arg to %struct.bio_st*
  %call14 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %2, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.97, i64 0, i64 0), i8* noundef %spec.store.select, i8* noundef %spec.store.select16) #8
  br label %if.end15

if.end15:                                         ; preds = %land.lhs.true, %lor.lhs.false, %if.else, %if.then5
  ret void
}

declare dso_local void @EVP_CIPHER_do_all_provided(%struct.ossl_lib_ctx_st* noundef, void (%struct.evp_cipher_st*, i8*)* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal void @collect_ciphers(%struct.evp_cipher_st* noundef %cipher, i8* noundef %stack) #0 {
entry:
  %call = tail call fastcc i32 @is_cipher_fetchable(%struct.evp_cipher_st* noundef %cipher) #9
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %0 = bitcast i8* %stack to %struct.stack_st_EVP_CIPHER*
  %call1 = tail call fastcc i32 @sk_EVP_CIPHER_push(%struct.stack_st_EVP_CIPHER* noundef %0, %struct.evp_cipher_st* noundef %cipher) #9
  %cmp = icmp sgt i32 %call1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %call2 = tail call i32 @EVP_CIPHER_up_ref(%struct.evp_cipher_st* noundef %cipher) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @sk_EVP_CIPHER_sort(%struct.stack_st_EVP_CIPHER* noundef %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_EVP_CIPHER* %sk to %struct.stack_st*
  tail call void @OPENSSL_sk_sort(%struct.stack_st* noundef %0) #8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @sk_EVP_CIPHER_num(%struct.stack_st_EVP_CIPHER* noundef %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_EVP_CIPHER* %sk to %struct.stack_st*
  %call = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %0) #8
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.evp_cipher_st* @sk_EVP_CIPHER_value(%struct.stack_st_EVP_CIPHER* noundef %sk, i32 noundef %idx) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_EVP_CIPHER* %sk to %struct.stack_st*
  %call = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %0, i32 noundef %idx) #8
  %1 = bitcast i8* %call to %struct.evp_cipher_st*
  ret %struct.evp_cipher_st* %1
}

declare dso_local i32 @EVP_CIPHER_is_a(%struct.evp_cipher_st* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local i32 @EVP_CIPHER_names_do_all(%struct.evp_cipher_st* noundef, void (i8*, i8*)* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local %struct.ossl_provider_st* @EVP_CIPHER_get0_provider(%struct.evp_cipher_st* noundef) local_unnamed_addr #3

declare dso_local i8* @EVP_CIPHER_get0_description(%struct.evp_cipher_st* noundef) local_unnamed_addr #3

declare dso_local %struct.ossl_param_st* @EVP_CIPHER_gettable_params(%struct.evp_cipher_st* noundef) local_unnamed_addr #3

declare dso_local %struct.ossl_param_st* @EVP_CIPHER_gettable_ctx_params(%struct.evp_cipher_st* noundef) local_unnamed_addr #3

declare dso_local %struct.ossl_param_st* @EVP_CIPHER_settable_ctx_params(%struct.evp_cipher_st* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @sk_EVP_CIPHER_pop_free(%struct.stack_st_EVP_CIPHER* noundef %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_EVP_CIPHER* %sk to %struct.stack_st*
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %0, void (i8*)* noundef bitcast (void (%struct.evp_cipher_st*)* @EVP_CIPHER_free to void (i8*)*)) #8
  ret void
}

declare dso_local i8* @EVP_CIPHER_get0_name(%struct.evp_cipher_st* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @is_cipher_fetchable(%struct.evp_cipher_st* noundef %alg) unnamed_addr #0 {
entry:
  %call = tail call i8* @app_get0_propq() #8
  %call1 = tail call %struct.ossl_lib_ctx_st* @app_get0_libctx() #8
  %call2 = tail call i8* @EVP_CIPHER_get0_name(%struct.evp_cipher_st* noundef %alg) #8
  %call3 = tail call i32 @ERR_set_mark() #8
  %call4 = tail call %struct.evp_cipher_st* @EVP_CIPHER_fetch(%struct.ossl_lib_ctx_st* noundef %call1, i8* noundef %call2, i8* noundef %call) #8
  %call5 = tail call i32 @ERR_pop_to_mark() #8
  %cmp = icmp eq %struct.evp_cipher_st* %call4, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  tail call void @EVP_CIPHER_free(%struct.evp_cipher_st* noundef nonnull %call4) #8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @sk_EVP_CIPHER_push(%struct.stack_st_EVP_CIPHER* noundef %sk, %struct.evp_cipher_st* noundef %ptr) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_EVP_CIPHER* %sk to %struct.stack_st*
  %1 = bitcast %struct.evp_cipher_st* %ptr to i8*
  %call = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %0, i8* noundef %1) #8
  ret i32 %call
}

declare dso_local i32 @EVP_CIPHER_up_ref(%struct.evp_cipher_st* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.stack_st_OSSL_ENCODER* @sk_OSSL_ENCODER_new() unnamed_addr #0 {
entry:
  %call = tail call %struct.stack_st* @OPENSSL_sk_new(i32 (i8*, i8*)* noundef bitcast (i32 (%struct.ossl_encoder_st**, %struct.ossl_encoder_st**)* @encoder_cmp to i32 (i8*, i8*)*)) #8
  %0 = bitcast %struct.stack_st* %call to %struct.stack_st_OSSL_ENCODER*
  ret %struct.stack_st_OSSL_ENCODER* %0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @encoder_cmp(%struct.ossl_encoder_st** nocapture noundef readonly %a, %struct.ossl_encoder_st** nocapture noundef readonly %b) #0 {
entry:
  %0 = load %struct.ossl_encoder_st*, %struct.ossl_encoder_st** %a, align 8, !tbaa !5
  %call = tail call %struct.ossl_provider_st* @OSSL_ENCODER_get0_provider(%struct.ossl_encoder_st* noundef %0) #8
  %call1 = tail call i8* @OSSL_PROVIDER_get0_name(%struct.ossl_provider_st* noundef %call) #8
  %1 = load %struct.ossl_encoder_st*, %struct.ossl_encoder_st** %b, align 8, !tbaa !5
  %call2 = tail call %struct.ossl_provider_st* @OSSL_ENCODER_get0_provider(%struct.ossl_encoder_st* noundef %1) #8
  %call3 = tail call i8* @OSSL_PROVIDER_get0_name(%struct.ossl_provider_st* noundef %call2) #8
  %call4 = tail call i32 @strcmp(i8* noundef %call1, i8* noundef %call3) #10
  ret i32 %call4
}

declare dso_local void @OSSL_ENCODER_do_all_provided(%struct.ossl_lib_ctx_st* noundef, void (%struct.ossl_encoder_st*, i8*)* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal void @collect_encoders(%struct.ossl_encoder_st* noundef %encoder, i8* noundef %stack) #0 {
entry:
  %call = tail call fastcc i32 @is_encoder_fetchable(%struct.ossl_encoder_st* noundef %encoder) #9
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %0 = bitcast i8* %stack to %struct.stack_st_OSSL_ENCODER*
  %call1 = tail call fastcc i32 @sk_OSSL_ENCODER_push(%struct.stack_st_OSSL_ENCODER* noundef %0, %struct.ossl_encoder_st* noundef %encoder) #9
  %cmp = icmp sgt i32 %call1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %call2 = tail call i32 @OSSL_ENCODER_up_ref(%struct.ossl_encoder_st* noundef %encoder) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @sk_OSSL_ENCODER_sort(%struct.stack_st_OSSL_ENCODER* noundef %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_OSSL_ENCODER* %sk to %struct.stack_st*
  tail call void @OPENSSL_sk_sort(%struct.stack_st* noundef %0) #8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @sk_OSSL_ENCODER_num(%struct.stack_st_OSSL_ENCODER* noundef %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_OSSL_ENCODER* %sk to %struct.stack_st*
  %call = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %0) #8
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.ossl_encoder_st* @sk_OSSL_ENCODER_value(%struct.stack_st_OSSL_ENCODER* noundef %sk, i32 noundef %idx) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_OSSL_ENCODER* %sk to %struct.stack_st*
  %call = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %0, i32 noundef %idx) #8
  %1 = bitcast i8* %call to %struct.ossl_encoder_st*
  ret %struct.ossl_encoder_st* %1
}

declare dso_local i32 @OSSL_ENCODER_is_a(%struct.ossl_encoder_st* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local i32 @OSSL_ENCODER_names_do_all(%struct.ossl_encoder_st* noundef, void (i8*, i8*)* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local %struct.ossl_provider_st* @OSSL_ENCODER_get0_provider(%struct.ossl_encoder_st* noundef) local_unnamed_addr #3

declare dso_local i8* @OSSL_ENCODER_get0_properties(%struct.ossl_encoder_st* noundef) local_unnamed_addr #3

declare dso_local i8* @OSSL_ENCODER_get0_description(%struct.ossl_encoder_st* noundef) local_unnamed_addr #3

declare dso_local %struct.ossl_param_st* @OSSL_ENCODER_settable_ctx_params(%struct.ossl_encoder_st* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @sk_OSSL_ENCODER_pop_free(%struct.stack_st_OSSL_ENCODER* noundef %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_OSSL_ENCODER* %sk to %struct.stack_st*
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %0, void (i8*)* noundef bitcast (void (%struct.ossl_encoder_st*)* @OSSL_ENCODER_free to void (i8*)*)) #8
  ret void
}

declare dso_local void @OSSL_ENCODER_free(%struct.ossl_encoder_st* noundef) #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @is_encoder_fetchable(%struct.ossl_encoder_st* noundef %alg) unnamed_addr #0 {
entry:
  %call = tail call i8* @app_get0_propq() #8
  %call1 = tail call %struct.ossl_lib_ctx_st* @app_get0_libctx() #8
  %call2 = tail call i8* @OSSL_ENCODER_get0_name(%struct.ossl_encoder_st* noundef %alg) #8
  %call3 = tail call i32 @ERR_set_mark() #8
  %call4 = tail call %struct.ossl_encoder_st* @OSSL_ENCODER_fetch(%struct.ossl_lib_ctx_st* noundef %call1, i8* noundef %call2, i8* noundef %call) #8
  %call5 = tail call i32 @ERR_pop_to_mark() #8
  %cmp = icmp eq %struct.ossl_encoder_st* %call4, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  tail call void @OSSL_ENCODER_free(%struct.ossl_encoder_st* noundef nonnull %call4) #8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @sk_OSSL_ENCODER_push(%struct.stack_st_OSSL_ENCODER* noundef %sk, %struct.ossl_encoder_st* noundef %ptr) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_OSSL_ENCODER* %sk to %struct.stack_st*
  %1 = bitcast %struct.ossl_encoder_st* %ptr to i8*
  %call = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %0, i8* noundef %1) #8
  ret i32 %call
}

declare dso_local i32 @OSSL_ENCODER_up_ref(%struct.ossl_encoder_st* noundef) local_unnamed_addr #3

declare dso_local i8* @OSSL_ENCODER_get0_name(%struct.ossl_encoder_st* noundef) local_unnamed_addr #3

declare dso_local %struct.ossl_encoder_st* @OSSL_ENCODER_fetch(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.stack_st_OSSL_DECODER* @sk_OSSL_DECODER_new() unnamed_addr #0 {
entry:
  %call = tail call %struct.stack_st* @OPENSSL_sk_new(i32 (i8*, i8*)* noundef bitcast (i32 (%struct.ossl_decoder_st**, %struct.ossl_decoder_st**)* @decoder_cmp to i32 (i8*, i8*)*)) #8
  %0 = bitcast %struct.stack_st* %call to %struct.stack_st_OSSL_DECODER*
  ret %struct.stack_st_OSSL_DECODER* %0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @decoder_cmp(%struct.ossl_decoder_st** nocapture noundef readonly %a, %struct.ossl_decoder_st** nocapture noundef readonly %b) #0 {
entry:
  %0 = load %struct.ossl_decoder_st*, %struct.ossl_decoder_st** %a, align 8, !tbaa !5
  %call = tail call %struct.ossl_provider_st* @OSSL_DECODER_get0_provider(%struct.ossl_decoder_st* noundef %0) #8
  %call1 = tail call i8* @OSSL_PROVIDER_get0_name(%struct.ossl_provider_st* noundef %call) #8
  %1 = load %struct.ossl_decoder_st*, %struct.ossl_decoder_st** %b, align 8, !tbaa !5
  %call2 = tail call %struct.ossl_provider_st* @OSSL_DECODER_get0_provider(%struct.ossl_decoder_st* noundef %1) #8
  %call3 = tail call i8* @OSSL_PROVIDER_get0_name(%struct.ossl_provider_st* noundef %call2) #8
  %call4 = tail call i32 @strcmp(i8* noundef %call1, i8* noundef %call3) #10
  ret i32 %call4
}

declare dso_local void @OSSL_DECODER_do_all_provided(%struct.ossl_lib_ctx_st* noundef, void (%struct.ossl_decoder_st*, i8*)* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal void @collect_decoders(%struct.ossl_decoder_st* noundef %decoder, i8* noundef %stack) #0 {
entry:
  %call = tail call fastcc i32 @is_decoder_fetchable(%struct.ossl_decoder_st* noundef %decoder) #9
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %0 = bitcast i8* %stack to %struct.stack_st_OSSL_DECODER*
  %call1 = tail call fastcc i32 @sk_OSSL_DECODER_push(%struct.stack_st_OSSL_DECODER* noundef %0, %struct.ossl_decoder_st* noundef %decoder) #9
  %cmp = icmp sgt i32 %call1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %call2 = tail call i32 @OSSL_DECODER_up_ref(%struct.ossl_decoder_st* noundef %decoder) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @sk_OSSL_DECODER_sort(%struct.stack_st_OSSL_DECODER* noundef %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_OSSL_DECODER* %sk to %struct.stack_st*
  tail call void @OPENSSL_sk_sort(%struct.stack_st* noundef %0) #8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @sk_OSSL_DECODER_num(%struct.stack_st_OSSL_DECODER* noundef %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_OSSL_DECODER* %sk to %struct.stack_st*
  %call = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %0) #8
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.ossl_decoder_st* @sk_OSSL_DECODER_value(%struct.stack_st_OSSL_DECODER* noundef %sk, i32 noundef %idx) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_OSSL_DECODER* %sk to %struct.stack_st*
  %call = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %0, i32 noundef %idx) #8
  %1 = bitcast i8* %call to %struct.ossl_decoder_st*
  ret %struct.ossl_decoder_st* %1
}

declare dso_local i32 @OSSL_DECODER_is_a(%struct.ossl_decoder_st* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local i32 @OSSL_DECODER_names_do_all(%struct.ossl_decoder_st* noundef, void (i8*, i8*)* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local %struct.ossl_provider_st* @OSSL_DECODER_get0_provider(%struct.ossl_decoder_st* noundef) local_unnamed_addr #3

declare dso_local i8* @OSSL_DECODER_get0_properties(%struct.ossl_decoder_st* noundef) local_unnamed_addr #3

declare dso_local i8* @OSSL_DECODER_get0_description(%struct.ossl_decoder_st* noundef) local_unnamed_addr #3

declare dso_local %struct.ossl_param_st* @OSSL_DECODER_settable_ctx_params(%struct.ossl_decoder_st* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @sk_OSSL_DECODER_pop_free(%struct.stack_st_OSSL_DECODER* noundef %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_OSSL_DECODER* %sk to %struct.stack_st*
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %0, void (i8*)* noundef bitcast (void (%struct.ossl_decoder_st*)* @OSSL_DECODER_free to void (i8*)*)) #8
  ret void
}

declare dso_local void @OSSL_DECODER_free(%struct.ossl_decoder_st* noundef) #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @is_decoder_fetchable(%struct.ossl_decoder_st* noundef %alg) unnamed_addr #0 {
entry:
  %call = tail call i8* @app_get0_propq() #8
  %call1 = tail call %struct.ossl_lib_ctx_st* @app_get0_libctx() #8
  %call2 = tail call i8* @OSSL_DECODER_get0_name(%struct.ossl_decoder_st* noundef %alg) #8
  %call3 = tail call i32 @ERR_set_mark() #8
  %call4 = tail call %struct.ossl_decoder_st* @OSSL_DECODER_fetch(%struct.ossl_lib_ctx_st* noundef %call1, i8* noundef %call2, i8* noundef %call) #8
  %call5 = tail call i32 @ERR_pop_to_mark() #8
  %cmp = icmp eq %struct.ossl_decoder_st* %call4, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  tail call void @OSSL_DECODER_free(%struct.ossl_decoder_st* noundef nonnull %call4) #8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @sk_OSSL_DECODER_push(%struct.stack_st_OSSL_DECODER* noundef %sk, %struct.ossl_decoder_st* noundef %ptr) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_OSSL_DECODER* %sk to %struct.stack_st*
  %1 = bitcast %struct.ossl_decoder_st* %ptr to i8*
  %call = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %0, i8* noundef %1) #8
  ret i32 %call
}

declare dso_local i32 @OSSL_DECODER_up_ref(%struct.ossl_decoder_st* noundef) local_unnamed_addr #3

declare dso_local i8* @OSSL_DECODER_get0_name(%struct.ossl_decoder_st* noundef) local_unnamed_addr #3

declare dso_local %struct.ossl_decoder_st* @OSSL_DECODER_fetch(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.stack_st_EVP_KEYMGMT* @sk_EVP_KEYMGMT_new() unnamed_addr #0 {
entry:
  %call = tail call %struct.stack_st* @OPENSSL_sk_new(i32 (i8*, i8*)* noundef bitcast (i32 (%struct.evp_keymgmt_st**, %struct.evp_keymgmt_st**)* @keymanager_cmp to i32 (i8*, i8*)*)) #8
  %0 = bitcast %struct.stack_st* %call to %struct.stack_st_EVP_KEYMGMT*
  ret %struct.stack_st_EVP_KEYMGMT* %0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @keymanager_cmp(%struct.evp_keymgmt_st** nocapture noundef readonly %a, %struct.evp_keymgmt_st** nocapture noundef readonly %b) #0 {
entry:
  %0 = load %struct.evp_keymgmt_st*, %struct.evp_keymgmt_st** %a, align 8, !tbaa !5
  %call = tail call %struct.ossl_provider_st* @EVP_KEYMGMT_get0_provider(%struct.evp_keymgmt_st* noundef %0) #8
  %call1 = tail call i8* @OSSL_PROVIDER_get0_name(%struct.ossl_provider_st* noundef %call) #8
  %1 = load %struct.evp_keymgmt_st*, %struct.evp_keymgmt_st** %b, align 8, !tbaa !5
  %call2 = tail call %struct.ossl_provider_st* @EVP_KEYMGMT_get0_provider(%struct.evp_keymgmt_st* noundef %1) #8
  %call3 = tail call i8* @OSSL_PROVIDER_get0_name(%struct.ossl_provider_st* noundef %call2) #8
  %call4 = tail call i32 @strcmp(i8* noundef %call1, i8* noundef %call3) #10
  ret i32 %call4
}

declare dso_local void @EVP_KEYMGMT_do_all_provided(%struct.ossl_lib_ctx_st* noundef, void (%struct.evp_keymgmt_st*, i8*)* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal void @collect_keymanagers(%struct.evp_keymgmt_st* noundef %km, i8* noundef %stack) #0 {
entry:
  %call = tail call fastcc i32 @is_keymgmt_fetchable(%struct.evp_keymgmt_st* noundef %km) #9
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %0 = bitcast i8* %stack to %struct.stack_st_EVP_KEYMGMT*
  %call1 = tail call fastcc i32 @sk_EVP_KEYMGMT_push(%struct.stack_st_EVP_KEYMGMT* noundef %0, %struct.evp_keymgmt_st* noundef %km) #9
  %cmp = icmp sgt i32 %call1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %call2 = tail call i32 @EVP_KEYMGMT_up_ref(%struct.evp_keymgmt_st* noundef %km) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @sk_EVP_KEYMGMT_sort(%struct.stack_st_EVP_KEYMGMT* noundef %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_EVP_KEYMGMT* %sk to %struct.stack_st*
  tail call void @OPENSSL_sk_sort(%struct.stack_st* noundef %0) #8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @sk_EVP_KEYMGMT_num(%struct.stack_st_EVP_KEYMGMT* noundef %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_EVP_KEYMGMT* %sk to %struct.stack_st*
  %call = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %0) #8
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.evp_keymgmt_st* @sk_EVP_KEYMGMT_value(%struct.stack_st_EVP_KEYMGMT* noundef %sk, i32 noundef %idx) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_EVP_KEYMGMT* %sk to %struct.stack_st*
  %call = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %0, i32 noundef %idx) #8
  %1 = bitcast i8* %call to %struct.evp_keymgmt_st*
  ret %struct.evp_keymgmt_st* %1
}

declare dso_local i32 @EVP_KEYMGMT_is_a(%struct.evp_keymgmt_st* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local i32 @EVP_KEYMGMT_names_do_all(%struct.evp_keymgmt_st* noundef, void (i8*, i8*)* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local i8* @EVP_KEYMGMT_get0_description(%struct.evp_keymgmt_st* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_OPENSSL_CSTRING_sk_type(%struct.stack_st_OPENSSL_CSTRING* noundef readnone %sk) unnamed_addr #7 {
entry:
  %0 = bitcast %struct.stack_st_OPENSSL_CSTRING* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare dso_local %struct.ossl_provider_st* @EVP_KEYMGMT_get0_provider(%struct.evp_keymgmt_st* noundef) local_unnamed_addr #3

declare dso_local %struct.ossl_param_st* @EVP_KEYMGMT_gen_settable_params(%struct.evp_keymgmt_st* noundef) local_unnamed_addr #3

declare dso_local %struct.ossl_param_st* @EVP_KEYMGMT_settable_params(%struct.evp_keymgmt_st* noundef) local_unnamed_addr #3

declare dso_local %struct.ossl_param_st* @EVP_KEYMGMT_gettable_params(%struct.evp_keymgmt_st* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @sk_EVP_KEYMGMT_pop_free(%struct.stack_st_EVP_KEYMGMT* noundef %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_EVP_KEYMGMT* %sk to %struct.stack_st*
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %0, void (i8*)* noundef bitcast (void (%struct.evp_keymgmt_st*)* @EVP_KEYMGMT_free to void (i8*)*)) #8
  ret void
}

declare dso_local void @EVP_KEYMGMT_free(%struct.evp_keymgmt_st* noundef) #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @is_keymgmt_fetchable(%struct.evp_keymgmt_st* noundef %alg) unnamed_addr #0 {
entry:
  %call = tail call i8* @app_get0_propq() #8
  %call1 = tail call %struct.ossl_lib_ctx_st* @app_get0_libctx() #8
  %call2 = tail call i8* @EVP_KEYMGMT_get0_name(%struct.evp_keymgmt_st* noundef %alg) #8
  %call3 = tail call i32 @ERR_set_mark() #8
  %call4 = tail call %struct.evp_keymgmt_st* @EVP_KEYMGMT_fetch(%struct.ossl_lib_ctx_st* noundef %call1, i8* noundef %call2, i8* noundef %call) #8
  %call5 = tail call i32 @ERR_pop_to_mark() #8
  %cmp = icmp eq %struct.evp_keymgmt_st* %call4, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  tail call void @EVP_KEYMGMT_free(%struct.evp_keymgmt_st* noundef nonnull %call4) #8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @sk_EVP_KEYMGMT_push(%struct.stack_st_EVP_KEYMGMT* noundef %sk, %struct.evp_keymgmt_st* noundef %ptr) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_EVP_KEYMGMT* %sk to %struct.stack_st*
  %1 = bitcast %struct.evp_keymgmt_st* %ptr to i8*
  %call = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %0, i8* noundef %1) #8
  ret i32 %call
}

declare dso_local i32 @EVP_KEYMGMT_up_ref(%struct.evp_keymgmt_st* noundef) local_unnamed_addr #3

declare dso_local i8* @EVP_KEYMGMT_get0_name(%struct.evp_keymgmt_st* noundef) local_unnamed_addr #3

declare dso_local %struct.evp_keymgmt_st* @EVP_KEYMGMT_fetch(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.stack_st_EVP_SIGNATURE* @sk_EVP_SIGNATURE_new() unnamed_addr #0 {
entry:
  %call = tail call %struct.stack_st* @OPENSSL_sk_new(i32 (i8*, i8*)* noundef bitcast (i32 (%struct.evp_signature_st**, %struct.evp_signature_st**)* @signature_cmp to i32 (i8*, i8*)*)) #8
  %0 = bitcast %struct.stack_st* %call to %struct.stack_st_EVP_SIGNATURE*
  ret %struct.stack_st_EVP_SIGNATURE* %0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @signature_cmp(%struct.evp_signature_st** nocapture noundef readonly %a, %struct.evp_signature_st** nocapture noundef readonly %b) #0 {
entry:
  %0 = load %struct.evp_signature_st*, %struct.evp_signature_st** %a, align 8, !tbaa !5
  %call = tail call %struct.ossl_provider_st* @EVP_SIGNATURE_get0_provider(%struct.evp_signature_st* noundef %0) #8
  %call1 = tail call i8* @OSSL_PROVIDER_get0_name(%struct.ossl_provider_st* noundef %call) #8
  %1 = load %struct.evp_signature_st*, %struct.evp_signature_st** %b, align 8, !tbaa !5
  %call2 = tail call %struct.ossl_provider_st* @EVP_SIGNATURE_get0_provider(%struct.evp_signature_st* noundef %1) #8
  %call3 = tail call i8* @OSSL_PROVIDER_get0_name(%struct.ossl_provider_st* noundef %call2) #8
  %call4 = tail call i32 @strcmp(i8* noundef %call1, i8* noundef %call3) #10
  ret i32 %call4
}

declare dso_local void @EVP_SIGNATURE_do_all_provided(%struct.ossl_lib_ctx_st* noundef, void (%struct.evp_signature_st*, i8*)* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal void @collect_signatures(%struct.evp_signature_st* noundef %sig, i8* noundef %stack) #0 {
entry:
  %call = tail call fastcc i32 @is_signature_fetchable(%struct.evp_signature_st* noundef %sig) #9
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %0 = bitcast i8* %stack to %struct.stack_st_EVP_SIGNATURE*
  %call1 = tail call fastcc i32 @sk_EVP_SIGNATURE_push(%struct.stack_st_EVP_SIGNATURE* noundef %0, %struct.evp_signature_st* noundef %sig) #9
  %cmp = icmp sgt i32 %call1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %call2 = tail call i32 @EVP_SIGNATURE_up_ref(%struct.evp_signature_st* noundef %sig) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @sk_EVP_SIGNATURE_sort(%struct.stack_st_EVP_SIGNATURE* noundef %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_EVP_SIGNATURE* %sk to %struct.stack_st*
  tail call void @OPENSSL_sk_sort(%struct.stack_st* noundef %0) #8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @sk_EVP_SIGNATURE_num(%struct.stack_st_EVP_SIGNATURE* noundef %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_EVP_SIGNATURE* %sk to %struct.stack_st*
  %call = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %0) #8
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.evp_signature_st* @sk_EVP_SIGNATURE_value(%struct.stack_st_EVP_SIGNATURE* noundef %sk, i32 noundef %idx) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_EVP_SIGNATURE* %sk to %struct.stack_st*
  %call = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %0, i32 noundef %idx) #8
  %1 = bitcast i8* %call to %struct.evp_signature_st*
  ret %struct.evp_signature_st* %1
}

declare dso_local i32 @EVP_SIGNATURE_is_a(%struct.evp_signature_st* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local i32 @EVP_SIGNATURE_names_do_all(%struct.evp_signature_st* noundef, void (i8*, i8*)* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local %struct.ossl_provider_st* @EVP_SIGNATURE_get0_provider(%struct.evp_signature_st* noundef) local_unnamed_addr #3

declare dso_local i8* @EVP_SIGNATURE_get0_description(%struct.evp_signature_st* noundef) local_unnamed_addr #3

declare dso_local %struct.ossl_param_st* @EVP_SIGNATURE_settable_ctx_params(%struct.evp_signature_st* noundef) local_unnamed_addr #3

declare dso_local %struct.ossl_param_st* @EVP_SIGNATURE_gettable_ctx_params(%struct.evp_signature_st* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @sk_EVP_SIGNATURE_pop_free(%struct.stack_st_EVP_SIGNATURE* noundef %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_EVP_SIGNATURE* %sk to %struct.stack_st*
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %0, void (i8*)* noundef bitcast (void (%struct.evp_signature_st*)* @EVP_SIGNATURE_free to void (i8*)*)) #8
  ret void
}

declare dso_local void @EVP_SIGNATURE_free(%struct.evp_signature_st* noundef) #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @is_signature_fetchable(%struct.evp_signature_st* noundef %alg) unnamed_addr #0 {
entry:
  %call = tail call i8* @app_get0_propq() #8
  %call1 = tail call %struct.ossl_lib_ctx_st* @app_get0_libctx() #8
  %call2 = tail call i8* @EVP_SIGNATURE_get0_name(%struct.evp_signature_st* noundef %alg) #8
  %call3 = tail call i32 @ERR_set_mark() #8
  %call4 = tail call %struct.evp_signature_st* @EVP_SIGNATURE_fetch(%struct.ossl_lib_ctx_st* noundef %call1, i8* noundef %call2, i8* noundef %call) #8
  %call5 = tail call i32 @ERR_pop_to_mark() #8
  %cmp = icmp eq %struct.evp_signature_st* %call4, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  tail call void @EVP_SIGNATURE_free(%struct.evp_signature_st* noundef nonnull %call4) #8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @sk_EVP_SIGNATURE_push(%struct.stack_st_EVP_SIGNATURE* noundef %sk, %struct.evp_signature_st* noundef %ptr) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_EVP_SIGNATURE* %sk to %struct.stack_st*
  %1 = bitcast %struct.evp_signature_st* %ptr to i8*
  %call = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %0, i8* noundef %1) #8
  ret i32 %call
}

declare dso_local i32 @EVP_SIGNATURE_up_ref(%struct.evp_signature_st* noundef) local_unnamed_addr #3

declare dso_local i8* @EVP_SIGNATURE_get0_name(%struct.evp_signature_st* noundef) local_unnamed_addr #3

declare dso_local %struct.evp_signature_st* @EVP_SIGNATURE_fetch(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.stack_st_EVP_ASYM_CIPHER* @sk_EVP_ASYM_CIPHER_new() unnamed_addr #0 {
entry:
  %call = tail call %struct.stack_st* @OPENSSL_sk_new(i32 (i8*, i8*)* noundef bitcast (i32 (%struct.evp_asym_cipher_st**, %struct.evp_asym_cipher_st**)* @asymcipher_cmp to i32 (i8*, i8*)*)) #8
  %0 = bitcast %struct.stack_st* %call to %struct.stack_st_EVP_ASYM_CIPHER*
  ret %struct.stack_st_EVP_ASYM_CIPHER* %0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @asymcipher_cmp(%struct.evp_asym_cipher_st** nocapture noundef readonly %a, %struct.evp_asym_cipher_st** nocapture noundef readonly %b) #0 {
entry:
  %0 = load %struct.evp_asym_cipher_st*, %struct.evp_asym_cipher_st** %a, align 8, !tbaa !5
  %call = tail call %struct.ossl_provider_st* @EVP_ASYM_CIPHER_get0_provider(%struct.evp_asym_cipher_st* noundef %0) #8
  %call1 = tail call i8* @OSSL_PROVIDER_get0_name(%struct.ossl_provider_st* noundef %call) #8
  %1 = load %struct.evp_asym_cipher_st*, %struct.evp_asym_cipher_st** %b, align 8, !tbaa !5
  %call2 = tail call %struct.ossl_provider_st* @EVP_ASYM_CIPHER_get0_provider(%struct.evp_asym_cipher_st* noundef %1) #8
  %call3 = tail call i8* @OSSL_PROVIDER_get0_name(%struct.ossl_provider_st* noundef %call2) #8
  %call4 = tail call i32 @strcmp(i8* noundef %call1, i8* noundef %call3) #10
  ret i32 %call4
}

declare dso_local void @EVP_ASYM_CIPHER_do_all_provided(%struct.ossl_lib_ctx_st* noundef, void (%struct.evp_asym_cipher_st*, i8*)* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal void @collect_asymciph(%struct.evp_asym_cipher_st* noundef %asym_cipher, i8* noundef %stack) #0 {
entry:
  %call = tail call fastcc i32 @is_asym_cipher_fetchable(%struct.evp_asym_cipher_st* noundef %asym_cipher) #9
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %0 = bitcast i8* %stack to %struct.stack_st_EVP_ASYM_CIPHER*
  %call1 = tail call fastcc i32 @sk_EVP_ASYM_CIPHER_push(%struct.stack_st_EVP_ASYM_CIPHER* noundef %0, %struct.evp_asym_cipher_st* noundef %asym_cipher) #9
  %cmp = icmp sgt i32 %call1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %call2 = tail call i32 @EVP_ASYM_CIPHER_up_ref(%struct.evp_asym_cipher_st* noundef %asym_cipher) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @sk_EVP_ASYM_CIPHER_sort(%struct.stack_st_EVP_ASYM_CIPHER* noundef %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_EVP_ASYM_CIPHER* %sk to %struct.stack_st*
  tail call void @OPENSSL_sk_sort(%struct.stack_st* noundef %0) #8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @sk_EVP_ASYM_CIPHER_num(%struct.stack_st_EVP_ASYM_CIPHER* noundef %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_EVP_ASYM_CIPHER* %sk to %struct.stack_st*
  %call = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %0) #8
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.evp_asym_cipher_st* @sk_EVP_ASYM_CIPHER_value(%struct.stack_st_EVP_ASYM_CIPHER* noundef %sk, i32 noundef %idx) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_EVP_ASYM_CIPHER* %sk to %struct.stack_st*
  %call = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %0, i32 noundef %idx) #8
  %1 = bitcast i8* %call to %struct.evp_asym_cipher_st*
  ret %struct.evp_asym_cipher_st* %1
}

declare dso_local i32 @EVP_ASYM_CIPHER_is_a(%struct.evp_asym_cipher_st* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local i32 @EVP_ASYM_CIPHER_names_do_all(%struct.evp_asym_cipher_st* noundef, void (i8*, i8*)* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local %struct.ossl_provider_st* @EVP_ASYM_CIPHER_get0_provider(%struct.evp_asym_cipher_st* noundef) local_unnamed_addr #3

declare dso_local i8* @EVP_ASYM_CIPHER_get0_description(%struct.evp_asym_cipher_st* noundef) local_unnamed_addr #3

declare dso_local %struct.ossl_param_st* @EVP_ASYM_CIPHER_settable_ctx_params(%struct.evp_asym_cipher_st* noundef) local_unnamed_addr #3

declare dso_local %struct.ossl_param_st* @EVP_ASYM_CIPHER_gettable_ctx_params(%struct.evp_asym_cipher_st* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @sk_EVP_ASYM_CIPHER_pop_free(%struct.stack_st_EVP_ASYM_CIPHER* noundef %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_EVP_ASYM_CIPHER* %sk to %struct.stack_st*
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %0, void (i8*)* noundef bitcast (void (%struct.evp_asym_cipher_st*)* @EVP_ASYM_CIPHER_free to void (i8*)*)) #8
  ret void
}

declare dso_local void @EVP_ASYM_CIPHER_free(%struct.evp_asym_cipher_st* noundef) #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @is_asym_cipher_fetchable(%struct.evp_asym_cipher_st* noundef %alg) unnamed_addr #0 {
entry:
  %call = tail call i8* @app_get0_propq() #8
  %call1 = tail call %struct.ossl_lib_ctx_st* @app_get0_libctx() #8
  %call2 = tail call i8* @EVP_ASYM_CIPHER_get0_name(%struct.evp_asym_cipher_st* noundef %alg) #8
  %call3 = tail call i32 @ERR_set_mark() #8
  %call4 = tail call %struct.evp_asym_cipher_st* @EVP_ASYM_CIPHER_fetch(%struct.ossl_lib_ctx_st* noundef %call1, i8* noundef %call2, i8* noundef %call) #8
  %call5 = tail call i32 @ERR_pop_to_mark() #8
  %cmp = icmp eq %struct.evp_asym_cipher_st* %call4, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  tail call void @EVP_ASYM_CIPHER_free(%struct.evp_asym_cipher_st* noundef nonnull %call4) #8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @sk_EVP_ASYM_CIPHER_push(%struct.stack_st_EVP_ASYM_CIPHER* noundef %sk, %struct.evp_asym_cipher_st* noundef %ptr) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_EVP_ASYM_CIPHER* %sk to %struct.stack_st*
  %1 = bitcast %struct.evp_asym_cipher_st* %ptr to i8*
  %call = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %0, i8* noundef %1) #8
  ret i32 %call
}

declare dso_local i32 @EVP_ASYM_CIPHER_up_ref(%struct.evp_asym_cipher_st* noundef) local_unnamed_addr #3

declare dso_local i8* @EVP_ASYM_CIPHER_get0_name(%struct.evp_asym_cipher_st* noundef) local_unnamed_addr #3

declare dso_local %struct.evp_asym_cipher_st* @EVP_ASYM_CIPHER_fetch(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.stack_st_EVP_KEYEXCH* @sk_EVP_KEYEXCH_new() unnamed_addr #0 {
entry:
  %call = tail call %struct.stack_st* @OPENSSL_sk_new(i32 (i8*, i8*)* noundef bitcast (i32 (%struct.evp_keyexch_st**, %struct.evp_keyexch_st**)* @kex_cmp to i32 (i8*, i8*)*)) #8
  %0 = bitcast %struct.stack_st* %call to %struct.stack_st_EVP_KEYEXCH*
  ret %struct.stack_st_EVP_KEYEXCH* %0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @kex_cmp(%struct.evp_keyexch_st** nocapture noundef readonly %a, %struct.evp_keyexch_st** nocapture noundef readonly %b) #0 {
entry:
  %0 = load %struct.evp_keyexch_st*, %struct.evp_keyexch_st** %a, align 8, !tbaa !5
  %call = tail call %struct.ossl_provider_st* @EVP_KEYEXCH_get0_provider(%struct.evp_keyexch_st* noundef %0) #8
  %call1 = tail call i8* @OSSL_PROVIDER_get0_name(%struct.ossl_provider_st* noundef %call) #8
  %1 = load %struct.evp_keyexch_st*, %struct.evp_keyexch_st** %b, align 8, !tbaa !5
  %call2 = tail call %struct.ossl_provider_st* @EVP_KEYEXCH_get0_provider(%struct.evp_keyexch_st* noundef %1) #8
  %call3 = tail call i8* @OSSL_PROVIDER_get0_name(%struct.ossl_provider_st* noundef %call2) #8
  %call4 = tail call i32 @strcmp(i8* noundef %call1, i8* noundef %call3) #10
  ret i32 %call4
}

declare dso_local void @EVP_KEYEXCH_do_all_provided(%struct.ossl_lib_ctx_st* noundef, void (%struct.evp_keyexch_st*, i8*)* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal void @collect_kex(%struct.evp_keyexch_st* noundef %kex, i8* noundef %stack) #0 {
entry:
  %call = tail call fastcc i32 @is_keyexch_fetchable(%struct.evp_keyexch_st* noundef %kex) #9
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %0 = bitcast i8* %stack to %struct.stack_st_EVP_KEYEXCH*
  %call1 = tail call fastcc i32 @sk_EVP_KEYEXCH_push(%struct.stack_st_EVP_KEYEXCH* noundef %0, %struct.evp_keyexch_st* noundef %kex) #9
  %cmp = icmp sgt i32 %call1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %call2 = tail call i32 @EVP_KEYEXCH_up_ref(%struct.evp_keyexch_st* noundef %kex) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @sk_EVP_KEYEXCH_sort(%struct.stack_st_EVP_KEYEXCH* noundef %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_EVP_KEYEXCH* %sk to %struct.stack_st*
  tail call void @OPENSSL_sk_sort(%struct.stack_st* noundef %0) #8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @sk_EVP_KEYEXCH_num(%struct.stack_st_EVP_KEYEXCH* noundef %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_EVP_KEYEXCH* %sk to %struct.stack_st*
  %call = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %0) #8
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.evp_keyexch_st* @sk_EVP_KEYEXCH_value(%struct.stack_st_EVP_KEYEXCH* noundef %sk, i32 noundef %idx) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_EVP_KEYEXCH* %sk to %struct.stack_st*
  %call = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %0, i32 noundef %idx) #8
  %1 = bitcast i8* %call to %struct.evp_keyexch_st*
  ret %struct.evp_keyexch_st* %1
}

declare dso_local i32 @EVP_KEYEXCH_is_a(%struct.evp_keyexch_st* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local i32 @EVP_KEYEXCH_names_do_all(%struct.evp_keyexch_st* noundef, void (i8*, i8*)* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local %struct.ossl_provider_st* @EVP_KEYEXCH_get0_provider(%struct.evp_keyexch_st* noundef) local_unnamed_addr #3

declare dso_local i8* @EVP_KEYEXCH_get0_description(%struct.evp_keyexch_st* noundef) local_unnamed_addr #3

declare dso_local %struct.ossl_param_st* @EVP_KEYEXCH_settable_ctx_params(%struct.evp_keyexch_st* noundef) local_unnamed_addr #3

declare dso_local %struct.ossl_param_st* @EVP_KEYEXCH_gettable_ctx_params(%struct.evp_keyexch_st* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @sk_EVP_KEYEXCH_pop_free(%struct.stack_st_EVP_KEYEXCH* noundef %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_EVP_KEYEXCH* %sk to %struct.stack_st*
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %0, void (i8*)* noundef bitcast (void (%struct.evp_keyexch_st*)* @EVP_KEYEXCH_free to void (i8*)*)) #8
  ret void
}

declare dso_local void @EVP_KEYEXCH_free(%struct.evp_keyexch_st* noundef) #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @is_keyexch_fetchable(%struct.evp_keyexch_st* noundef %alg) unnamed_addr #0 {
entry:
  %call = tail call i8* @app_get0_propq() #8
  %call1 = tail call %struct.ossl_lib_ctx_st* @app_get0_libctx() #8
  %call2 = tail call i8* @EVP_KEYEXCH_get0_name(%struct.evp_keyexch_st* noundef %alg) #8
  %call3 = tail call i32 @ERR_set_mark() #8
  %call4 = tail call %struct.evp_keyexch_st* @EVP_KEYEXCH_fetch(%struct.ossl_lib_ctx_st* noundef %call1, i8* noundef %call2, i8* noundef %call) #8
  %call5 = tail call i32 @ERR_pop_to_mark() #8
  %cmp = icmp eq %struct.evp_keyexch_st* %call4, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  tail call void @EVP_KEYEXCH_free(%struct.evp_keyexch_st* noundef nonnull %call4) #8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @sk_EVP_KEYEXCH_push(%struct.stack_st_EVP_KEYEXCH* noundef %sk, %struct.evp_keyexch_st* noundef %ptr) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_EVP_KEYEXCH* %sk to %struct.stack_st*
  %1 = bitcast %struct.evp_keyexch_st* %ptr to i8*
  %call = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %0, i8* noundef %1) #8
  ret i32 %call
}

declare dso_local i32 @EVP_KEYEXCH_up_ref(%struct.evp_keyexch_st* noundef) local_unnamed_addr #3

declare dso_local i8* @EVP_KEYEXCH_get0_name(%struct.evp_keyexch_st* noundef) local_unnamed_addr #3

declare dso_local %struct.evp_keyexch_st* @EVP_KEYEXCH_fetch(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.stack_st_EVP_KEM* @sk_EVP_KEM_new() unnamed_addr #0 {
entry:
  %call = tail call %struct.stack_st* @OPENSSL_sk_new(i32 (i8*, i8*)* noundef bitcast (i32 (%struct.evp_kem_st**, %struct.evp_kem_st**)* @kem_cmp to i32 (i8*, i8*)*)) #8
  %0 = bitcast %struct.stack_st* %call to %struct.stack_st_EVP_KEM*
  ret %struct.stack_st_EVP_KEM* %0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @kem_cmp(%struct.evp_kem_st** nocapture noundef readonly %a, %struct.evp_kem_st** nocapture noundef readonly %b) #0 {
entry:
  %0 = load %struct.evp_kem_st*, %struct.evp_kem_st** %a, align 8, !tbaa !5
  %call = tail call %struct.ossl_provider_st* @EVP_KEM_get0_provider(%struct.evp_kem_st* noundef %0) #8
  %call1 = tail call i8* @OSSL_PROVIDER_get0_name(%struct.ossl_provider_st* noundef %call) #8
  %1 = load %struct.evp_kem_st*, %struct.evp_kem_st** %b, align 8, !tbaa !5
  %call2 = tail call %struct.ossl_provider_st* @EVP_KEM_get0_provider(%struct.evp_kem_st* noundef %1) #8
  %call3 = tail call i8* @OSSL_PROVIDER_get0_name(%struct.ossl_provider_st* noundef %call2) #8
  %call4 = tail call i32 @strcmp(i8* noundef %call1, i8* noundef %call3) #10
  ret i32 %call4
}

declare dso_local void @EVP_KEM_do_all_provided(%struct.ossl_lib_ctx_st* noundef, void (%struct.evp_kem_st*, i8*)* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal void @collect_kem(%struct.evp_kem_st* noundef %kem, i8* noundef %stack) #0 {
entry:
  %call = tail call fastcc i32 @is_kem_fetchable(%struct.evp_kem_st* noundef %kem) #9
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %0 = bitcast i8* %stack to %struct.stack_st_EVP_KEM*
  %call1 = tail call fastcc i32 @sk_EVP_KEM_push(%struct.stack_st_EVP_KEM* noundef %0, %struct.evp_kem_st* noundef %kem) #9
  %cmp = icmp sgt i32 %call1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %call2 = tail call i32 @EVP_KEM_up_ref(%struct.evp_kem_st* noundef %kem) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @sk_EVP_KEM_sort(%struct.stack_st_EVP_KEM* noundef %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_EVP_KEM* %sk to %struct.stack_st*
  tail call void @OPENSSL_sk_sort(%struct.stack_st* noundef %0) #8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @sk_EVP_KEM_num(%struct.stack_st_EVP_KEM* noundef %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_EVP_KEM* %sk to %struct.stack_st*
  %call = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %0) #8
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.evp_kem_st* @sk_EVP_KEM_value(%struct.stack_st_EVP_KEM* noundef %sk, i32 noundef %idx) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_EVP_KEM* %sk to %struct.stack_st*
  %call = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %0, i32 noundef %idx) #8
  %1 = bitcast i8* %call to %struct.evp_kem_st*
  ret %struct.evp_kem_st* %1
}

declare dso_local i32 @EVP_KEM_is_a(%struct.evp_kem_st* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local i32 @EVP_KEM_names_do_all(%struct.evp_kem_st* noundef, void (i8*, i8*)* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local %struct.ossl_provider_st* @EVP_KEM_get0_provider(%struct.evp_kem_st* noundef) local_unnamed_addr #3

declare dso_local i8* @EVP_KEM_get0_description(%struct.evp_kem_st* noundef) local_unnamed_addr #3

declare dso_local %struct.ossl_param_st* @EVP_KEM_settable_ctx_params(%struct.evp_kem_st* noundef) local_unnamed_addr #3

declare dso_local %struct.ossl_param_st* @EVP_KEM_gettable_ctx_params(%struct.evp_kem_st* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @sk_EVP_KEM_pop_free(%struct.stack_st_EVP_KEM* noundef %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_EVP_KEM* %sk to %struct.stack_st*
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %0, void (i8*)* noundef bitcast (void (%struct.evp_kem_st*)* @EVP_KEM_free to void (i8*)*)) #8
  ret void
}

declare dso_local void @EVP_KEM_free(%struct.evp_kem_st* noundef) #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @is_kem_fetchable(%struct.evp_kem_st* noundef %alg) unnamed_addr #0 {
entry:
  %call = tail call i8* @app_get0_propq() #8
  %call1 = tail call %struct.ossl_lib_ctx_st* @app_get0_libctx() #8
  %call2 = tail call i8* @EVP_KEM_get0_name(%struct.evp_kem_st* noundef %alg) #8
  %call3 = tail call i32 @ERR_set_mark() #8
  %call4 = tail call %struct.evp_kem_st* @EVP_KEM_fetch(%struct.ossl_lib_ctx_st* noundef %call1, i8* noundef %call2, i8* noundef %call) #8
  %call5 = tail call i32 @ERR_pop_to_mark() #8
  %cmp = icmp eq %struct.evp_kem_st* %call4, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  tail call void @EVP_KEM_free(%struct.evp_kem_st* noundef nonnull %call4) #8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @sk_EVP_KEM_push(%struct.stack_st_EVP_KEM* noundef %sk, %struct.evp_kem_st* noundef %ptr) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_EVP_KEM* %sk to %struct.stack_st*
  %1 = bitcast %struct.evp_kem_st* %ptr to i8*
  %call = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %0, i8* noundef %1) #8
  ret i32 %call
}

declare dso_local i32 @EVP_KEM_up_ref(%struct.evp_kem_st* noundef) local_unnamed_addr #3

declare dso_local i8* @EVP_KEM_get0_name(%struct.evp_kem_st* noundef) local_unnamed_addr #3

declare dso_local %struct.evp_kem_st* @EVP_KEM_fetch(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local i32 @EVP_PKEY_asn1_get_count() local_unnamed_addr #3

declare dso_local %struct.evp_pkey_asn1_method_st* @EVP_PKEY_asn1_get0(i32 noundef) local_unnamed_addr #3

declare dso_local i32 @EVP_PKEY_asn1_get0_info(i32* noundef, i32* noundef, i32* noundef, i8** noundef, i8** noundef, %struct.evp_pkey_asn1_method_st* noundef) local_unnamed_addr #3

declare dso_local i8* @OBJ_nid2ln(i32 noundef) local_unnamed_addr #3

declare dso_local i64 @EVP_PKEY_meth_get_count() local_unnamed_addr #3

declare dso_local %struct.evp_pkey_method_st* @EVP_PKEY_meth_get0(i64 noundef) local_unnamed_addr #3

declare dso_local void @EVP_PKEY_meth_get0_info(i32* noundef, i32* noundef, %struct.evp_pkey_method_st* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.stack_st_OSSL_STORE_LOADER* @sk_OSSL_STORE_LOADER_new() unnamed_addr #0 {
entry:
  %call = tail call %struct.stack_st* @OPENSSL_sk_new(i32 (i8*, i8*)* noundef bitcast (i32 (%struct.ossl_store_loader_st**, %struct.ossl_store_loader_st**)* @store_cmp to i32 (i8*, i8*)*)) #8
  %0 = bitcast %struct.stack_st* %call to %struct.stack_st_OSSL_STORE_LOADER*
  ret %struct.stack_st_OSSL_STORE_LOADER* %0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @store_cmp(%struct.ossl_store_loader_st** nocapture noundef readonly %a, %struct.ossl_store_loader_st** nocapture noundef readonly %b) #0 {
entry:
  %0 = load %struct.ossl_store_loader_st*, %struct.ossl_store_loader_st** %a, align 8, !tbaa !5
  %call = tail call %struct.ossl_provider_st* @OSSL_STORE_LOADER_get0_provider(%struct.ossl_store_loader_st* noundef %0) #8
  %call1 = tail call i8* @OSSL_PROVIDER_get0_name(%struct.ossl_provider_st* noundef %call) #8
  %1 = load %struct.ossl_store_loader_st*, %struct.ossl_store_loader_st** %b, align 8, !tbaa !5
  %call2 = tail call %struct.ossl_provider_st* @OSSL_STORE_LOADER_get0_provider(%struct.ossl_store_loader_st* noundef %1) #8
  %call3 = tail call i8* @OSSL_PROVIDER_get0_name(%struct.ossl_provider_st* noundef %call2) #8
  %call4 = tail call i32 @strcmp(i8* noundef %call1, i8* noundef %call3) #10
  ret i32 %call4
}

declare dso_local void @OSSL_STORE_LOADER_do_all_provided(%struct.ossl_lib_ctx_st* noundef, void (%struct.ossl_store_loader_st*, i8*)* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal void @collect_store_loaders(%struct.ossl_store_loader_st* noundef %store, i8* noundef %stack) #0 {
entry:
  %0 = bitcast i8* %stack to %struct.stack_st_OSSL_STORE_LOADER*
  %call = tail call fastcc i32 @sk_OSSL_STORE_LOADER_push(%struct.stack_st_OSSL_STORE_LOADER* noundef %0, %struct.ossl_store_loader_st* noundef %store) #9
  %cmp = icmp sgt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = tail call i32 @OSSL_STORE_LOADER_up_ref(%struct.ossl_store_loader_st* noundef %store) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @sk_OSSL_STORE_LOADER_sort(%struct.stack_st_OSSL_STORE_LOADER* noundef %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_OSSL_STORE_LOADER* %sk to %struct.stack_st*
  tail call void @OPENSSL_sk_sort(%struct.stack_st* noundef %0) #8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @sk_OSSL_STORE_LOADER_num(%struct.stack_st_OSSL_STORE_LOADER* noundef %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_OSSL_STORE_LOADER* %sk to %struct.stack_st*
  %call = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %0) #8
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.ossl_store_loader_st* @sk_OSSL_STORE_LOADER_value(%struct.stack_st_OSSL_STORE_LOADER* noundef %sk, i32 noundef %idx) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_OSSL_STORE_LOADER* %sk to %struct.stack_st*
  %call = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %0, i32 noundef %idx) #8
  %1 = bitcast i8* %call to %struct.ossl_store_loader_st*
  ret %struct.ossl_store_loader_st* %1
}

declare dso_local i32 @OSSL_STORE_LOADER_is_a(%struct.ossl_store_loader_st* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local i32 @OSSL_STORE_LOADER_names_do_all(%struct.ossl_store_loader_st* noundef, void (i8*, i8*)* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local %struct.ossl_provider_st* @OSSL_STORE_LOADER_get0_provider(%struct.ossl_store_loader_st* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @sk_OSSL_STORE_LOADER_pop_free(%struct.stack_st_OSSL_STORE_LOADER* noundef %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_OSSL_STORE_LOADER* %sk to %struct.stack_st*
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %0, void (i8*)* noundef bitcast (void (%struct.ossl_store_loader_st*)* @OSSL_STORE_LOADER_free to void (i8*)*)) #8
  ret void
}

declare dso_local void @OSSL_STORE_LOADER_free(%struct.ossl_store_loader_st* noundef) #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @sk_OSSL_STORE_LOADER_push(%struct.stack_st_OSSL_STORE_LOADER* noundef %sk, %struct.ossl_store_loader_st* noundef %ptr) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_OSSL_STORE_LOADER* %sk to %struct.stack_st*
  %1 = bitcast %struct.ossl_store_loader_st* %ptr to i8*
  %call = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %0, i8* noundef %1) #8
  ret i32 %call
}

declare dso_local i32 @OSSL_STORE_LOADER_up_ref(%struct.ossl_store_loader_st* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.stack_st_OSSL_PROVIDER* @sk_OSSL_PROVIDER_new() unnamed_addr #0 {
entry:
  %call = tail call %struct.stack_st* @OPENSSL_sk_new(i32 (i8*, i8*)* noundef bitcast (i32 (%struct.ossl_provider_st**, %struct.ossl_provider_st**)* @provider_cmp to i32 (i8*, i8*)*)) #8
  %0 = bitcast %struct.stack_st* %call to %struct.stack_st_OSSL_PROVIDER*
  ret %struct.stack_st_OSSL_PROVIDER* %0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @provider_cmp(%struct.ossl_provider_st** nocapture noundef readonly %a, %struct.ossl_provider_st** nocapture noundef readonly %b) #0 {
entry:
  %0 = load %struct.ossl_provider_st*, %struct.ossl_provider_st** %a, align 8, !tbaa !5
  %call = tail call i8* @OSSL_PROVIDER_get0_name(%struct.ossl_provider_st* noundef %0) #8
  %1 = load %struct.ossl_provider_st*, %struct.ossl_provider_st** %b, align 8, !tbaa !5
  %call1 = tail call i8* @OSSL_PROVIDER_get0_name(%struct.ossl_provider_st* noundef %1) #8
  %call2 = tail call i32 @strcmp(i8* noundef %call, i8* noundef %call1) #10
  ret i32 %call2
}

declare dso_local i32 @OSSL_PROVIDER_do_all(%struct.ossl_lib_ctx_st* noundef, i32 (%struct.ossl_provider_st*, i8*)* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal i32 @collect_providers(%struct.ossl_provider_st* noundef %provider, i8* noundef %stack) #0 {
entry:
  %0 = bitcast i8* %stack to %struct.stack_st_OSSL_PROVIDER*
  tail call fastcc void @sk_OSSL_PROVIDER_push(%struct.stack_st_OSSL_PROVIDER* noundef %0, %struct.ossl_provider_st* noundef %provider) #9
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @sk_OSSL_PROVIDER_sort(%struct.stack_st_OSSL_PROVIDER* noundef %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_OSSL_PROVIDER* %sk to %struct.stack_st*
  tail call void @OPENSSL_sk_sort(%struct.stack_st* noundef %0) #8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @sk_OSSL_PROVIDER_num(%struct.stack_st_OSSL_PROVIDER* noundef %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_OSSL_PROVIDER* %sk to %struct.stack_st*
  %call = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %0) #8
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.ossl_provider_st* @sk_OSSL_PROVIDER_value(%struct.stack_st_OSSL_PROVIDER* noundef %sk, i32 noundef %idx) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_OSSL_PROVIDER* %sk to %struct.stack_st*
  %call = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %0, i32 noundef %idx) #8
  %1 = bitcast i8* %call to %struct.ossl_provider_st*
  ret %struct.ossl_provider_st* %1
}

declare dso_local void @OSSL_PARAM_construct_utf8_ptr(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8, i8* noundef, i8** noundef, i64 noundef) local_unnamed_addr #3

declare dso_local void @OSSL_PARAM_construct_int(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8, i8* noundef, i32* noundef) local_unnamed_addr #3

declare dso_local void @OSSL_PARAM_construct_end(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8) local_unnamed_addr #3

declare dso_local void @OSSL_PARAM_set_all_unmodified(%struct.ossl_param_st* noundef) local_unnamed_addr #3

declare dso_local i32 @OSSL_PROVIDER_get_params(%struct.ossl_provider_st* noundef, %struct.ossl_param_st* noundef) local_unnamed_addr #3

declare dso_local i32 @OSSL_PARAM_modified(%struct.ossl_param_st* noundef) local_unnamed_addr #3

declare dso_local %struct.ossl_param_st* @OSSL_PROVIDER_gettable_params(%struct.ossl_provider_st* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @sk_OSSL_PROVIDER_free(%struct.stack_st_OSSL_PROVIDER* noundef %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_OSSL_PROVIDER* %sk to %struct.stack_st*
  tail call void @OPENSSL_sk_free(%struct.stack_st* noundef %0) #8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @sk_OSSL_PROVIDER_push(%struct.stack_st_OSSL_PROVIDER* noundef %sk, %struct.ossl_provider_st* noundef %ptr) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_OSSL_PROVIDER* %sk to %struct.stack_st*
  %1 = bitcast %struct.ossl_provider_st* %ptr to i8*
  %call = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %0, i8* noundef %1) #8
  ret void
}

declare dso_local i32 @BIO_puts(%struct.bio_st* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local %struct.engine_st* @ENGINE_get_first() local_unnamed_addr #3

declare dso_local i8* @ENGINE_get_id(%struct.engine_st* noundef) local_unnamed_addr #3

declare dso_local %struct.engine_st* @ENGINE_get_next(%struct.engine_st* noundef) local_unnamed_addr #3

declare dso_local i32 @OBJ_new_nid(i32 noundef) local_unnamed_addr #3

declare dso_local %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef) local_unnamed_addr #3

declare dso_local i8* @OBJ_nid2sn(i32 noundef) local_unnamed_addr #3

declare dso_local void @ERR_clear_error() local_unnamed_addr #3

declare dso_local i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef) local_unnamed_addr #3

declare dso_local i32 @OBJ_obj2txt(i8* noundef, i32 noundef, %struct.asn1_object_st* noundef, i32 noundef) local_unnamed_addr #3

declare dso_local i8* @CRYPTO_realloc(i8* noundef, i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare dso_local void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #3 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin nounwind "no-builtins" }
attributes #9 = { nobuiltin "no-builtins" }
attributes #10 = { nobuiltin nounwind readonly willreturn "no-builtins" }
attributes #11 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.0"}
!3 = distinct !{!3, !4}
!4 = !{!"llvm.loop.mustprogress"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !6, i64 8}
!10 = !{!"function_st", !7, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40}
!11 = distinct !{!11, !4}
!12 = !{!10, !6, i64 24}
!13 = !{!14, !6, i64 0}
!14 = !{!"options_st", !6, i64 0, !15, i64 8, !15, i64 12, !6, i64 16}
!15 = !{!"int", !7, i64 0}
!16 = !{!14, !15, i64 12}
!17 = !{!7, !7, i64 0}
!18 = distinct !{!18, !4}
!19 = !{!10, !7, i64 0}
!20 = !{!21, !15, i64 0}
!21 = !{!"", !15, i64 0, !15, i64 4}
!22 = !{!21, !15, i64 4}
!23 = distinct !{!23, !4}
!24 = distinct !{!24, !4}
!25 = distinct !{!25, !4}
!26 = distinct !{!26, !4}
!27 = distinct !{!27, !4}
!28 = distinct !{!28, !4}
!29 = distinct !{!29, !4}
!30 = distinct !{!30, !4}
!31 = distinct !{!31, !4}
!32 = distinct !{!32, !4}
!33 = distinct !{!33, !4}
!34 = distinct !{!34, !4}
!35 = distinct !{!35, !4}
!36 = !{!15, !15, i64 0}
!37 = distinct !{!37, !4}
!38 = distinct !{!38, !4}
!39 = distinct !{!39, !4}
!40 = !{i64 0, i64 8, !5, i64 8, i64 4, !36, i64 16, i64 8, !5, i64 24, i64 8, !41, i64 32, i64 8, !41}
!41 = !{!42, !42, i64 0}
!42 = !{!"long", !7, i64 0}
!43 = distinct !{!43, !4}
!44 = distinct !{!44, !4}
!45 = distinct !{!45, !4}
!46 = !{!47, !6, i64 0}
!47 = !{!"ossl_param_st", !6, i64 0, !15, i64 8, !6, i64 16, !42, i64 24, !42, i64 32}
!48 = !{!47, !15, i64 8}
!49 = !{!47, !6, i64 16}
!50 = !{!47, !42, i64 24}
!51 = !{!47, !42, i64 32}
!52 = distinct !{!52, !4}
