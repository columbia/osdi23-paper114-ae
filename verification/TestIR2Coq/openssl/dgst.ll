; ModuleID = 'apps/dgst.c'
source_filename = "apps/dgst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.options_st = type { i8*, i32, i32, i8* }
%struct.bio_st = type opaque
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.evp_md_st = type opaque
%struct.doall_dgst_digests = type { %struct.bio_st*, i32 }
%struct.evp_pkey_ctx_st = type opaque
%struct.evp_md_ctx_st = type opaque
%struct.engine_st = type opaque
%struct.stack_st_OPENSSL_STRING = type opaque
%struct.stack_st = type opaque
%struct.bio_method_st = type opaque
%struct.evp_pkey_st = type opaque
%struct.ossl_lib_ctx_st = type opaque
%struct.obj_name_st = type { i32, i32, i8*, i8* }

@OPT_HELP_STR = external dso_local constant [0 x i8], align 1
@.str = private unnamed_addr constant [31 x i8] c"Usage: %s [options] [file...]\0A\00", align 1
@OPT_SECTION_STR = external dso_local constant [0 x i8], align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"General options:\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Display this summary\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"list\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"List digests\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"engine\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"Use engine e, possibly a hardware device\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"engine_impl\00", align 1
@.str.9 = private unnamed_addr constant [55 x i8] c"Also use engine given by -engine for digest operations\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"passin\00", align 1
@.str.11 = private unnamed_addr constant [30 x i8] c"Input file pass phrase source\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"Output options:\0A\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.14 = private unnamed_addr constant [40 x i8] c"Print the digest with separating colons\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.16 = private unnamed_addr constant [37 x i8] c"Print the digest in coreutils format\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@.str.18 = private unnamed_addr constant [38 x i8] c"Output to filename rather than stdout\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"keyform\00", align 1
@.str.20 = private unnamed_addr constant [47 x i8] c"Key file format (ENGINE, other values ignored)\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"hex\00", align 1
@.str.22 = private unnamed_addr constant [18 x i8] c"Print as hex dump\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"binary\00", align 1
@.str.24 = private unnamed_addr constant [21 x i8] c"Print in binary form\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"xoflen\00", align 1
@.str.26 = private unnamed_addr constant [33 x i8] c"Output length for XOF algorithms\00", align 1
@.str.27 = private unnamed_addr constant [2 x i8] c"d\00", align 1
@.str.28 = private unnamed_addr constant [17 x i8] c"Print debug info\00", align 1
@.str.29 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@.str.30 = private unnamed_addr constant [18 x i8] c"Signing options:\0A\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"sign\00", align 1
@.str.32 = private unnamed_addr constant [30 x i8] c"Sign digest using private key\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"verify\00", align 1
@.str.34 = private unnamed_addr constant [36 x i8] c"Verify a signature using public key\00", align 1
@.str.35 = private unnamed_addr constant [9 x i8] c"prverify\00", align 1
@.str.36 = private unnamed_addr constant [37 x i8] c"Verify a signature using private key\00", align 1
@.str.37 = private unnamed_addr constant [7 x i8] c"sigopt\00", align 1
@.str.38 = private unnamed_addr constant [32 x i8] c"Signature parameter in n:v form\00", align 1
@.str.39 = private unnamed_addr constant [10 x i8] c"signature\00", align 1
@.str.40 = private unnamed_addr constant [30 x i8] c"File with signature to verify\00", align 1
@.str.41 = private unnamed_addr constant [5 x i8] c"hmac\00", align 1
@.str.42 = private unnamed_addr constant [27 x i8] c"Create hashed MAC with key\00", align 1
@.str.43 = private unnamed_addr constant [4 x i8] c"mac\00", align 1
@.str.44 = private unnamed_addr constant [34 x i8] c"Create MAC (not necessarily HMAC)\00", align 1
@.str.45 = private unnamed_addr constant [7 x i8] c"macopt\00", align 1
@.str.46 = private unnamed_addr constant [44 x i8] c"MAC algorithm parameters in n:v form or key\00", align 1
@.str.47 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.48 = private unnamed_addr constant [21 x i8] c"Any supported digest\00", align 1
@.str.49 = private unnamed_addr constant [17 x i8] c"fips-fingerprint\00", align 1
@.str.50 = private unnamed_addr constant [59 x i8] c"Compute HMAC with the key used in OpenSSL-FIPS fingerprint\00", align 1
@.str.51 = private unnamed_addr constant [23 x i8] c"Random state options:\0A\00", align 1
@.str.52 = private unnamed_addr constant [5 x i8] c"rand\00", align 1
@.str.53 = private unnamed_addr constant [56 x i8] c"Load the given file(s) into the random number generator\00", align 1
@.str.54 = private unnamed_addr constant [10 x i8] c"writerand\00", align 1
@.str.55 = private unnamed_addr constant [40 x i8] c"Write random data to the specified file\00", align 1
@.str.56 = private unnamed_addr constant [19 x i8] c"Provider options:\0A\00", align 1
@.str.57 = private unnamed_addr constant [14 x i8] c"provider-path\00", align 1
@.str.58 = private unnamed_addr constant [68 x i8] c"Provider load path (must be before 'provider' argument if required)\00", align 1
@.str.59 = private unnamed_addr constant [9 x i8] c"provider\00", align 1
@.str.60 = private unnamed_addr constant [51 x i8] c"Provider to load (can be specified multiple times)\00", align 1
@.str.61 = private unnamed_addr constant [10 x i8] c"propquery\00", align 1
@.str.62 = private unnamed_addr constant [45 x i8] c"Property query used when fetching algorithms\00", align 1
@OPT_PARAM_STR = external dso_local constant [0 x i8], align 1
@.str.63 = private unnamed_addr constant [13 x i8] c"Parameters:\0A\00", align 1
@.str.64 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.65 = private unnamed_addr constant [45 x i8] c"Files to digest (optional; default is stdin)\00", align 1
@dgst_options = dso_local constant [38 x %struct.options_st] [%struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_HELP_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 2, i32 45, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i32 12, i32 115, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i32 0, i32 0), i32 13, i32 45, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.9, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0), i32 7, i32 115, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i32 0, i32 0), i32 3, i32 45, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.14, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i32 0, i32 0), i32 4, i32 45, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.16, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i32 0, i32 0), i32 5, i32 62, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.18, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i32 0, i32 0), i32 11, i32 102, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.20, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i32 0, i32 0), i32 14, i32 45, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.22, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i32 0, i32 0), i32 15, i32 45, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.24, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i32 0, i32 0), i32 22, i32 112, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.26, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i32 0, i32 0), i32 16, i32 45, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.28, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i32 0, i32 0), i32 16, i32 45, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.28, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.30, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i32 0, i32 0), i32 6, i32 115, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.32, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.33, i32 0, i32 0), i32 8, i32 115, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.34, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.35, i32 0, i32 0), i32 9, i32 115, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.36, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.37, i32 0, i32 0), i32 20, i32 115, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.38, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.39, i32 0, i32 0), i32 10, i32 60, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.40, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.41, i32 0, i32 0), i32 18, i32 115, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.42, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.43, i32 0, i32 0), i32 19, i32 115, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.44, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.45, i32 0, i32 0), i32 21, i32 115, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.46, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.47, i32 0, i32 0), i32 23, i32 45, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.48, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.49, i32 0, i32 0), i32 17, i32 45, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.50, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.51, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.52, i32 0, i32 0), i32 1501, i32 115, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.53, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.54, i32 0, i32 0), i32 1502, i32 62, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.55, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.56, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.57, i32 0, i32 0), i32 1602, i32 115, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.58, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.59, i32 0, i32 0), i32 1601, i32 115, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.60, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.61, i32 0, i32 0), i32 1603, i32 115, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.62, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_PARAM_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.63, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.64, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.65, i32 0, i32 0) }, %struct.options_st zeroinitializer], align 16
@.str.66 = private unnamed_addr constant [11 x i8] c"I/O buffer\00", align 1
@bio_err = external dso_local local_unnamed_addr global %struct.bio_st*, align 8
@.str.67 = private unnamed_addr constant [28 x i8] c"%s: Use -help for summary.\0A\00", align 1
@bio_out = external dso_local local_unnamed_addr global %struct.bio_st*, align 8
@.str.68 = private unnamed_addr constant [20 x i8] c"Supported digests:\0A\00", align 1
@.str.69 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.70 = private unnamed_addr constant [17 x i8] c"etaonrishdlcupfm\00", align 1
@.str.71 = private unnamed_addr constant [39 x i8] c"%s: Can only sign or verify one file.\0A\00", align 1
@.str.72 = private unnamed_addr constant [51 x i8] c"No signature to verify: use the -signature option\0A\00", align 1
@.str.73 = private unnamed_addr constant [24 x i8] c"Error getting password\0A\00", align 1
@.str.74 = private unnamed_addr constant [46 x i8] c"MAC and signing key cannot both be specified\0A\00", align 1
@.str.75 = private unnamed_addr constant [11 x i8] c"public key\00", align 1
@.str.76 = private unnamed_addr constant [12 x i8] c"private key\00", align 1
@.str.77 = private unnamed_addr constant [43 x i8] c"Key type not supported for this operation\0A\00", align 1
@.str.78 = private unnamed_addr constant [26 x i8] c"MAC parameter error \22%s\22\0A\00", align 1
@.str.79 = private unnamed_addr constant [23 x i8] c"Error getting context\0A\00", align 1
@.str.80 = private unnamed_addr constant [23 x i8] c"Error setting context\0A\00", align 1
@.str.81 = private unnamed_addr constant [32 x i8] c"Signature parameter error \22%s\22\0A\00", align 1
@.str.82 = private unnamed_addr constant [22 x i8] c"Error setting digest\0A\00", align 1
@.str.83 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.84 = private unnamed_addr constant [33 x i8] c"Error opening signature file %s\0A\00", align 1
@.str.85 = private unnamed_addr constant [17 x i8] c"signature buffer\00", align 1
@.str.86 = private unnamed_addr constant [33 x i8] c"Error reading signature file %s\0A\00", align 1
@.str.87 = private unnamed_addr constant [38 x i8] c"Length can only be specified for XOF\0A\00", align 1
@.str.88 = private unnamed_addr constant [41 x i8] c"Signing key cannot be specified for XOF\0A\00", align 1
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.89 = private unnamed_addr constant [6 x i8] c"stdin\00", align 1
@.str.90 = private unnamed_addr constant [12 x i8] c"apps/dgst.c\00", align 1
@.str.91 = private unnamed_addr constant [18 x i8] c"Read error in %s\0A\00", align 1
@.str.92 = private unnamed_addr constant [13 x i8] c"Verified OK\0A\00", align 1
@.str.93 = private unnamed_addr constant [22 x i8] c"Verification failure\0A\00", align 1
@.str.94 = private unnamed_addr constant [22 x i8] c"Error verifying data\0A\00", align 1
@.str.95 = private unnamed_addr constant [45 x i8] c"Error getting maximum length of signed data\0A\00", align 1
@.str.96 = private unnamed_addr constant [17 x i8] c"Signature buffer\00", align 1
@.str.97 = private unnamed_addr constant [20 x i8] c"Error signing data\0A\00", align 1
@.str.98 = private unnamed_addr constant [14 x i8] c"Digest buffer\00", align 1
@.str.99 = private unnamed_addr constant [22 x i8] c"Error Digesting Data\0A\00", align 1
@.str.100 = private unnamed_addr constant [2 x i8] c"\\\00", align 1
@.str.101 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.102 = private unnamed_addr constant [6 x i8] c" *%s\0A\00", align 1
@.str.103 = private unnamed_addr constant [4 x i8] c"-%s\00", align 1
@.str.104 = private unnamed_addr constant [7 x i8] c"(%s)= \00", align 1
@.str.105 = private unnamed_addr constant [9 x i8] c"%s(%s)= \00", align 1
@.str.106 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.107 = private unnamed_addr constant [4 x i8] c"rsa\00", align 1
@.str.108 = private unnamed_addr constant [4 x i8] c"RSA\00", align 1
@.str.109 = private unnamed_addr constant [7 x i8] c"-%-25s\00", align 1
@.str.110 = private unnamed_addr constant [2 x i8] c" \00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @dgst_main(i32 noundef %argc, i8** noundef %argv) local_unnamed_addr #0 {
entry:
  %passin = alloca i8*, align 8
  %md = alloca %struct.evp_md_st*, align 8
  %keyform = alloca i32, align 4
  %dec = alloca %struct.doall_dgst_digests, align 8
  %mac_ctx = alloca %struct.evp_pkey_ctx_st*, align 8
  %mctx = alloca %struct.evp_md_ctx_st*, align 8
  %pctx = alloca %struct.evp_pkey_ctx_st*, align 8
  %mctx251 = alloca %struct.evp_md_ctx_st*, align 8
  %tctx = alloca %struct.evp_md_ctx_st*, align 8
  %0 = bitcast i8** %passin to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8
  store i8* null, i8** %passin, align 8, !tbaa !3
  %1 = bitcast %struct.evp_md_st** %md to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #8
  %2 = bitcast i32* %keyform to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #8
  store i32 0, i32* %keyform, align 4, !tbaa !7
  %3 = bitcast %struct.doall_dgst_digests* %dec to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %3) #8
  %call = tail call i8* @app_malloc(i64 noundef 8192, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.66, i64 0, i64 0)) #9
  %4 = load i8*, i8** %argv, align 8, !tbaa !3
  %call1 = tail call %struct.evp_md_st* @EVP_get_digestbyname(i8* noundef %4) #9
  store %struct.evp_md_st* %call1, %struct.evp_md_st** %md, align 8, !tbaa !3
  %call2 = tail call i8* @opt_init(i32 noundef %argc, i8** noundef nonnull %argv, %struct.options_st* noundef getelementptr inbounds ([38 x %struct.options_st], [38 x %struct.options_st]* @dgst_options, i64 0, i64 0)) #9
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %entry
  %e.0 = phi %struct.engine_st* [ null, %entry ], [ %e.0.be, %while.cond.backedge ]
  %sigopts.0 = phi %struct.stack_st_OPENSSL_STRING* [ null, %entry ], [ %sigopts.0.be, %while.cond.backedge ]
  %macopts.0 = phi %struct.stack_st_OPENSSL_STRING* [ null, %entry ], [ %macopts.0.be, %while.cond.backedge ]
  %hmac_key.0 = phi i8* [ null, %entry ], [ %hmac_key.0.be, %while.cond.backedge ]
  %mac_name.0 = phi i8* [ null, %entry ], [ %mac_name.0.be, %while.cond.backedge ]
  %digestname.0 = phi i8* [ null, %entry ], [ %digestname.0.be, %while.cond.backedge ]
  %passinarg.0 = phi i8* [ null, %entry ], [ %passinarg.0.be, %while.cond.backedge ]
  %outfile.0 = phi i8* [ null, %entry ], [ %outfile.0.be, %while.cond.backedge ]
  %keyfile.0 = phi i8* [ null, %entry ], [ %keyfile.0.be, %while.cond.backedge ]
  %sigfile.0 = phi i8* [ null, %entry ], [ %sigfile.0.be, %while.cond.backedge ]
  %separator.0 = phi i32 [ 0, %entry ], [ %separator.0.be, %while.cond.backedge ]
  %debug.0 = phi i32 [ 0, %entry ], [ %debug.0.be, %while.cond.backedge ]
  %out_bin.0 = phi i32 [ -1, %entry ], [ %out_bin.0.be, %while.cond.backedge ]
  %want_pub.0 = phi i32 [ 0, %entry ], [ %want_pub.0.be, %while.cond.backedge ]
  %do_verify.0 = phi i32 [ 0, %entry ], [ %do_verify.0.be, %while.cond.backedge ]
  %xoflen.0 = phi i32 [ 0, %entry ], [ %xoflen.0.be, %while.cond.backedge ]
  %engine_impl.0 = phi i32 [ 0, %entry ], [ %engine_impl.0.be, %while.cond.backedge ]
  %call3 = call i32 @opt_next() #9
  switch i32 %call3, label %while.cond.backedge [
    i32 0, label %while.end
    i32 1601, label %sw.bb77
    i32 -1, label %opthelp
    i32 1, label %sw.bb5
    i32 2, label %sw.bb6
    i32 3, label %sw.bb9
    i32 4, label %sw.bb10
    i32 1603, label %sw.bb77
    i32 1602, label %sw.bb77
    i32 1501, label %sw.bb12
    i32 1502, label %sw.bb12
    i32 5, label %sw.bb14
    i32 6, label %sw.bb16
    i32 7, label %sw.bb18
    i32 8, label %sw.bb20
    i32 9, label %sw.bb22
    i32 10, label %sw.bb24
    i32 11, label %sw.bb26
    i32 12, label %sw.bb32
    i32 13, label %sw.bb35
    i32 14, label %sw.bb36
    i32 15, label %sw.bb37
    i32 22, label %sw.bb38
    i32 16, label %sw.bb41
    i32 17, label %sw.bb42
    i32 18, label %sw.bb43
    i32 19, label %sw.bb45
    i32 20, label %sw.bb47
    i32 21, label %sw.bb60
    i32 23, label %sw.bb74
  ]

while.cond.backedge:                              ; preds = %while.cond, %sw.bb77, %lor.lhs.false66, %lor.lhs.false, %sw.bb26, %sw.bb12, %sw.bb74, %sw.bb45, %sw.bb43, %sw.bb42, %sw.bb41, %sw.bb38, %sw.bb37, %sw.bb36, %sw.bb35, %sw.bb32, %sw.bb24, %sw.bb22, %sw.bb20, %sw.bb18, %sw.bb16, %sw.bb14, %sw.bb10, %sw.bb9
  %e.0.be = phi %struct.engine_st* [ %e.0, %sw.bb74 ], [ %e.0, %lor.lhs.false66 ], [ %e.0, %lor.lhs.false ], [ %e.0, %sw.bb45 ], [ %e.0, %sw.bb43 ], [ %e.0, %sw.bb42 ], [ %e.0, %sw.bb41 ], [ %e.0, %sw.bb38 ], [ %e.0, %sw.bb37 ], [ %e.0, %sw.bb36 ], [ %e.0, %sw.bb35 ], [ %call34, %sw.bb32 ], [ %e.0, %sw.bb26 ], [ %e.0, %sw.bb24 ], [ %e.0, %sw.bb22 ], [ %e.0, %sw.bb20 ], [ %e.0, %sw.bb18 ], [ %e.0, %sw.bb16 ], [ %e.0, %sw.bb14 ], [ %e.0, %sw.bb12 ], [ %e.0, %sw.bb77 ], [ %e.0, %sw.bb10 ], [ %e.0, %sw.bb9 ], [ %e.0, %while.cond ]
  %sigopts.0.be = phi %struct.stack_st_OPENSSL_STRING* [ %sigopts.0, %sw.bb74 ], [ %sigopts.0, %lor.lhs.false66 ], [ %sigopts.2563, %lor.lhs.false ], [ %sigopts.0, %sw.bb45 ], [ %sigopts.0, %sw.bb43 ], [ %sigopts.0, %sw.bb42 ], [ %sigopts.0, %sw.bb41 ], [ %sigopts.0, %sw.bb38 ], [ %sigopts.0, %sw.bb37 ], [ %sigopts.0, %sw.bb36 ], [ %sigopts.0, %sw.bb35 ], [ %sigopts.0, %sw.bb32 ], [ %sigopts.0, %sw.bb26 ], [ %sigopts.0, %sw.bb24 ], [ %sigopts.0, %sw.bb22 ], [ %sigopts.0, %sw.bb20 ], [ %sigopts.0, %sw.bb18 ], [ %sigopts.0, %sw.bb16 ], [ %sigopts.0, %sw.bb14 ], [ %sigopts.0, %sw.bb12 ], [ %sigopts.0, %sw.bb77 ], [ %sigopts.0, %sw.bb10 ], [ %sigopts.0, %sw.bb9 ], [ %sigopts.0, %while.cond ]
  %macopts.0.be = phi %struct.stack_st_OPENSSL_STRING* [ %macopts.0, %sw.bb74 ], [ %macopts.2566, %lor.lhs.false66 ], [ %macopts.0, %lor.lhs.false ], [ %macopts.0, %sw.bb45 ], [ %macopts.0, %sw.bb43 ], [ %macopts.0, %sw.bb42 ], [ %macopts.0, %sw.bb41 ], [ %macopts.0, %sw.bb38 ], [ %macopts.0, %sw.bb37 ], [ %macopts.0, %sw.bb36 ], [ %macopts.0, %sw.bb35 ], [ %macopts.0, %sw.bb32 ], [ %macopts.0, %sw.bb26 ], [ %macopts.0, %sw.bb24 ], [ %macopts.0, %sw.bb22 ], [ %macopts.0, %sw.bb20 ], [ %macopts.0, %sw.bb18 ], [ %macopts.0, %sw.bb16 ], [ %macopts.0, %sw.bb14 ], [ %macopts.0, %sw.bb12 ], [ %macopts.0, %sw.bb77 ], [ %macopts.0, %sw.bb10 ], [ %macopts.0, %sw.bb9 ], [ %macopts.0, %while.cond ]
  %hmac_key.0.be = phi i8* [ %hmac_key.0, %sw.bb74 ], [ %hmac_key.0, %lor.lhs.false66 ], [ %hmac_key.0, %lor.lhs.false ], [ %hmac_key.0, %sw.bb45 ], [ %call44, %sw.bb43 ], [ getelementptr inbounds ([17 x i8], [17 x i8]* @.str.70, i64 0, i64 0), %sw.bb42 ], [ %hmac_key.0, %sw.bb41 ], [ %hmac_key.0, %sw.bb38 ], [ %hmac_key.0, %sw.bb37 ], [ %hmac_key.0, %sw.bb36 ], [ %hmac_key.0, %sw.bb35 ], [ %hmac_key.0, %sw.bb32 ], [ %hmac_key.0, %sw.bb26 ], [ %hmac_key.0, %sw.bb24 ], [ %hmac_key.0, %sw.bb22 ], [ %hmac_key.0, %sw.bb20 ], [ %hmac_key.0, %sw.bb18 ], [ %hmac_key.0, %sw.bb16 ], [ %hmac_key.0, %sw.bb14 ], [ %hmac_key.0, %sw.bb12 ], [ %hmac_key.0, %sw.bb77 ], [ %hmac_key.0, %sw.bb10 ], [ %hmac_key.0, %sw.bb9 ], [ %hmac_key.0, %while.cond ]
  %mac_name.0.be = phi i8* [ %mac_name.0, %sw.bb74 ], [ %mac_name.0, %lor.lhs.false66 ], [ %mac_name.0, %lor.lhs.false ], [ %call46, %sw.bb45 ], [ %mac_name.0, %sw.bb43 ], [ %mac_name.0, %sw.bb42 ], [ %mac_name.0, %sw.bb41 ], [ %mac_name.0, %sw.bb38 ], [ %mac_name.0, %sw.bb37 ], [ %mac_name.0, %sw.bb36 ], [ %mac_name.0, %sw.bb35 ], [ %mac_name.0, %sw.bb32 ], [ %mac_name.0, %sw.bb26 ], [ %mac_name.0, %sw.bb24 ], [ %mac_name.0, %sw.bb22 ], [ %mac_name.0, %sw.bb20 ], [ %mac_name.0, %sw.bb18 ], [ %mac_name.0, %sw.bb16 ], [ %mac_name.0, %sw.bb14 ], [ %mac_name.0, %sw.bb12 ], [ %mac_name.0, %sw.bb77 ], [ %mac_name.0, %sw.bb10 ], [ %mac_name.0, %sw.bb9 ], [ %mac_name.0, %while.cond ]
  %digestname.0.be = phi i8* [ %call75, %sw.bb74 ], [ %digestname.0, %lor.lhs.false66 ], [ %digestname.0, %lor.lhs.false ], [ %digestname.0, %sw.bb45 ], [ %digestname.0, %sw.bb43 ], [ %digestname.0, %sw.bb42 ], [ %digestname.0, %sw.bb41 ], [ %digestname.0, %sw.bb38 ], [ %digestname.0, %sw.bb37 ], [ %digestname.0, %sw.bb36 ], [ %digestname.0, %sw.bb35 ], [ %digestname.0, %sw.bb32 ], [ %digestname.0, %sw.bb26 ], [ %digestname.0, %sw.bb24 ], [ %digestname.0, %sw.bb22 ], [ %digestname.0, %sw.bb20 ], [ %digestname.0, %sw.bb18 ], [ %digestname.0, %sw.bb16 ], [ %digestname.0, %sw.bb14 ], [ %digestname.0, %sw.bb12 ], [ %digestname.0, %sw.bb77 ], [ %digestname.0, %sw.bb10 ], [ %digestname.0, %sw.bb9 ], [ %digestname.0, %while.cond ]
  %passinarg.0.be = phi i8* [ %passinarg.0, %sw.bb74 ], [ %passinarg.0, %lor.lhs.false66 ], [ %passinarg.0, %lor.lhs.false ], [ %passinarg.0, %sw.bb45 ], [ %passinarg.0, %sw.bb43 ], [ %passinarg.0, %sw.bb42 ], [ %passinarg.0, %sw.bb41 ], [ %passinarg.0, %sw.bb38 ], [ %passinarg.0, %sw.bb37 ], [ %passinarg.0, %sw.bb36 ], [ %passinarg.0, %sw.bb35 ], [ %passinarg.0, %sw.bb32 ], [ %passinarg.0, %sw.bb26 ], [ %passinarg.0, %sw.bb24 ], [ %passinarg.0, %sw.bb22 ], [ %passinarg.0, %sw.bb20 ], [ %call19, %sw.bb18 ], [ %passinarg.0, %sw.bb16 ], [ %passinarg.0, %sw.bb14 ], [ %passinarg.0, %sw.bb12 ], [ %passinarg.0, %sw.bb77 ], [ %passinarg.0, %sw.bb10 ], [ %passinarg.0, %sw.bb9 ], [ %passinarg.0, %while.cond ]
  %outfile.0.be = phi i8* [ %outfile.0, %sw.bb74 ], [ %outfile.0, %lor.lhs.false66 ], [ %outfile.0, %lor.lhs.false ], [ %outfile.0, %sw.bb45 ], [ %outfile.0, %sw.bb43 ], [ %outfile.0, %sw.bb42 ], [ %outfile.0, %sw.bb41 ], [ %outfile.0, %sw.bb38 ], [ %outfile.0, %sw.bb37 ], [ %outfile.0, %sw.bb36 ], [ %outfile.0, %sw.bb35 ], [ %outfile.0, %sw.bb32 ], [ %outfile.0, %sw.bb26 ], [ %outfile.0, %sw.bb24 ], [ %outfile.0, %sw.bb22 ], [ %outfile.0, %sw.bb20 ], [ %outfile.0, %sw.bb18 ], [ %outfile.0, %sw.bb16 ], [ %call15, %sw.bb14 ], [ %outfile.0, %sw.bb12 ], [ %outfile.0, %sw.bb77 ], [ %outfile.0, %sw.bb10 ], [ %outfile.0, %sw.bb9 ], [ %outfile.0, %while.cond ]
  %keyfile.0.be = phi i8* [ %keyfile.0, %sw.bb74 ], [ %keyfile.0, %lor.lhs.false66 ], [ %keyfile.0, %lor.lhs.false ], [ %keyfile.0, %sw.bb45 ], [ %keyfile.0, %sw.bb43 ], [ %keyfile.0, %sw.bb42 ], [ %keyfile.0, %sw.bb41 ], [ %keyfile.0, %sw.bb38 ], [ %keyfile.0, %sw.bb37 ], [ %keyfile.0, %sw.bb36 ], [ %keyfile.0, %sw.bb35 ], [ %keyfile.0, %sw.bb32 ], [ %keyfile.0, %sw.bb26 ], [ %keyfile.0, %sw.bb24 ], [ %call23, %sw.bb22 ], [ %call21, %sw.bb20 ], [ %keyfile.0, %sw.bb18 ], [ %call17, %sw.bb16 ], [ %keyfile.0, %sw.bb14 ], [ %keyfile.0, %sw.bb12 ], [ %keyfile.0, %sw.bb77 ], [ %keyfile.0, %sw.bb10 ], [ %keyfile.0, %sw.bb9 ], [ %keyfile.0, %while.cond ]
  %sigfile.0.be = phi i8* [ %sigfile.0, %sw.bb74 ], [ %sigfile.0, %lor.lhs.false66 ], [ %sigfile.0, %lor.lhs.false ], [ %sigfile.0, %sw.bb45 ], [ %sigfile.0, %sw.bb43 ], [ %sigfile.0, %sw.bb42 ], [ %sigfile.0, %sw.bb41 ], [ %sigfile.0, %sw.bb38 ], [ %sigfile.0, %sw.bb37 ], [ %sigfile.0, %sw.bb36 ], [ %sigfile.0, %sw.bb35 ], [ %sigfile.0, %sw.bb32 ], [ %sigfile.0, %sw.bb26 ], [ %call25, %sw.bb24 ], [ %sigfile.0, %sw.bb22 ], [ %sigfile.0, %sw.bb20 ], [ %sigfile.0, %sw.bb18 ], [ %sigfile.0, %sw.bb16 ], [ %sigfile.0, %sw.bb14 ], [ %sigfile.0, %sw.bb12 ], [ %sigfile.0, %sw.bb77 ], [ %sigfile.0, %sw.bb10 ], [ %sigfile.0, %sw.bb9 ], [ %sigfile.0, %while.cond ]
  %separator.0.be = phi i32 [ %separator.0, %sw.bb74 ], [ %separator.0, %lor.lhs.false66 ], [ %separator.0, %lor.lhs.false ], [ %separator.0, %sw.bb45 ], [ %separator.0, %sw.bb43 ], [ %separator.0, %sw.bb42 ], [ %separator.0, %sw.bb41 ], [ %separator.0, %sw.bb38 ], [ %separator.0, %sw.bb37 ], [ %separator.0, %sw.bb36 ], [ %separator.0, %sw.bb35 ], [ %separator.0, %sw.bb32 ], [ %separator.0, %sw.bb26 ], [ %separator.0, %sw.bb24 ], [ %separator.0, %sw.bb22 ], [ %separator.0, %sw.bb20 ], [ %separator.0, %sw.bb18 ], [ %separator.0, %sw.bb16 ], [ %separator.0, %sw.bb14 ], [ %separator.0, %sw.bb12 ], [ %separator.0, %sw.bb77 ], [ 2, %sw.bb10 ], [ 1, %sw.bb9 ], [ %separator.0, %while.cond ]
  %debug.0.be = phi i32 [ %debug.0, %sw.bb74 ], [ %debug.0, %lor.lhs.false66 ], [ %debug.0, %lor.lhs.false ], [ %debug.0, %sw.bb45 ], [ %debug.0, %sw.bb43 ], [ %debug.0, %sw.bb42 ], [ 1, %sw.bb41 ], [ %debug.0, %sw.bb38 ], [ %debug.0, %sw.bb37 ], [ %debug.0, %sw.bb36 ], [ %debug.0, %sw.bb35 ], [ %debug.0, %sw.bb32 ], [ %debug.0, %sw.bb26 ], [ %debug.0, %sw.bb24 ], [ %debug.0, %sw.bb22 ], [ %debug.0, %sw.bb20 ], [ %debug.0, %sw.bb18 ], [ %debug.0, %sw.bb16 ], [ %debug.0, %sw.bb14 ], [ %debug.0, %sw.bb12 ], [ %debug.0, %sw.bb77 ], [ %debug.0, %sw.bb10 ], [ %debug.0, %sw.bb9 ], [ %debug.0, %while.cond ]
  %out_bin.0.be = phi i32 [ %out_bin.0, %sw.bb74 ], [ %out_bin.0, %lor.lhs.false66 ], [ %out_bin.0, %lor.lhs.false ], [ %out_bin.0, %sw.bb45 ], [ %out_bin.0, %sw.bb43 ], [ %out_bin.0, %sw.bb42 ], [ %out_bin.0, %sw.bb41 ], [ %out_bin.0, %sw.bb38 ], [ 1, %sw.bb37 ], [ 0, %sw.bb36 ], [ %out_bin.0, %sw.bb35 ], [ %out_bin.0, %sw.bb32 ], [ %out_bin.0, %sw.bb26 ], [ %out_bin.0, %sw.bb24 ], [ %out_bin.0, %sw.bb22 ], [ %out_bin.0, %sw.bb20 ], [ %out_bin.0, %sw.bb18 ], [ %out_bin.0, %sw.bb16 ], [ %out_bin.0, %sw.bb14 ], [ %out_bin.0, %sw.bb12 ], [ %out_bin.0, %sw.bb77 ], [ %out_bin.0, %sw.bb10 ], [ %out_bin.0, %sw.bb9 ], [ %out_bin.0, %while.cond ]
  %want_pub.0.be = phi i32 [ %want_pub.0, %sw.bb74 ], [ %want_pub.0, %lor.lhs.false66 ], [ %want_pub.0, %lor.lhs.false ], [ %want_pub.0, %sw.bb45 ], [ %want_pub.0, %sw.bb43 ], [ %want_pub.0, %sw.bb42 ], [ %want_pub.0, %sw.bb41 ], [ %want_pub.0, %sw.bb38 ], [ %want_pub.0, %sw.bb37 ], [ %want_pub.0, %sw.bb36 ], [ %want_pub.0, %sw.bb35 ], [ %want_pub.0, %sw.bb32 ], [ %want_pub.0, %sw.bb26 ], [ %want_pub.0, %sw.bb24 ], [ %want_pub.0, %sw.bb22 ], [ 1, %sw.bb20 ], [ %want_pub.0, %sw.bb18 ], [ %want_pub.0, %sw.bb16 ], [ %want_pub.0, %sw.bb14 ], [ %want_pub.0, %sw.bb12 ], [ %want_pub.0, %sw.bb77 ], [ %want_pub.0, %sw.bb10 ], [ %want_pub.0, %sw.bb9 ], [ %want_pub.0, %while.cond ]
  %do_verify.0.be = phi i32 [ %do_verify.0, %sw.bb74 ], [ %do_verify.0, %lor.lhs.false66 ], [ %do_verify.0, %lor.lhs.false ], [ %do_verify.0, %sw.bb45 ], [ %do_verify.0, %sw.bb43 ], [ %do_verify.0, %sw.bb42 ], [ %do_verify.0, %sw.bb41 ], [ %do_verify.0, %sw.bb38 ], [ %do_verify.0, %sw.bb37 ], [ %do_verify.0, %sw.bb36 ], [ %do_verify.0, %sw.bb35 ], [ %do_verify.0, %sw.bb32 ], [ %do_verify.0, %sw.bb26 ], [ %do_verify.0, %sw.bb24 ], [ 1, %sw.bb22 ], [ 1, %sw.bb20 ], [ %do_verify.0, %sw.bb18 ], [ %do_verify.0, %sw.bb16 ], [ %do_verify.0, %sw.bb14 ], [ %do_verify.0, %sw.bb12 ], [ %do_verify.0, %sw.bb77 ], [ %do_verify.0, %sw.bb10 ], [ %do_verify.0, %sw.bb9 ], [ %do_verify.0, %while.cond ]
  %xoflen.0.be = phi i32 [ %xoflen.0, %sw.bb74 ], [ %xoflen.0, %lor.lhs.false66 ], [ %xoflen.0, %lor.lhs.false ], [ %xoflen.0, %sw.bb45 ], [ %xoflen.0, %sw.bb43 ], [ %xoflen.0, %sw.bb42 ], [ %xoflen.0, %sw.bb41 ], [ %call40, %sw.bb38 ], [ %xoflen.0, %sw.bb37 ], [ %xoflen.0, %sw.bb36 ], [ %xoflen.0, %sw.bb35 ], [ %xoflen.0, %sw.bb32 ], [ %xoflen.0, %sw.bb26 ], [ %xoflen.0, %sw.bb24 ], [ %xoflen.0, %sw.bb22 ], [ %xoflen.0, %sw.bb20 ], [ %xoflen.0, %sw.bb18 ], [ %xoflen.0, %sw.bb16 ], [ %xoflen.0, %sw.bb14 ], [ %xoflen.0, %sw.bb12 ], [ %xoflen.0, %sw.bb77 ], [ %xoflen.0, %sw.bb10 ], [ %xoflen.0, %sw.bb9 ], [ %xoflen.0, %while.cond ]
  %engine_impl.0.be = phi i32 [ %engine_impl.0, %sw.bb74 ], [ %engine_impl.0, %lor.lhs.false66 ], [ %engine_impl.0, %lor.lhs.false ], [ %engine_impl.0, %sw.bb45 ], [ %engine_impl.0, %sw.bb43 ], [ %engine_impl.0, %sw.bb42 ], [ %engine_impl.0, %sw.bb41 ], [ %engine_impl.0, %sw.bb38 ], [ %engine_impl.0, %sw.bb37 ], [ %engine_impl.0, %sw.bb36 ], [ 1, %sw.bb35 ], [ %engine_impl.0, %sw.bb32 ], [ %engine_impl.0, %sw.bb26 ], [ %engine_impl.0, %sw.bb24 ], [ %engine_impl.0, %sw.bb22 ], [ %engine_impl.0, %sw.bb20 ], [ %engine_impl.0, %sw.bb18 ], [ %engine_impl.0, %sw.bb16 ], [ %engine_impl.0, %sw.bb14 ], [ %engine_impl.0, %sw.bb12 ], [ %engine_impl.0, %sw.bb77 ], [ %engine_impl.0, %sw.bb10 ], [ %engine_impl.0, %sw.bb9 ], [ %engine_impl.0, %while.cond ]
  br label %while.cond, !llvm.loop !9

opthelp:                                          ; preds = %while.cond, %if.end64, %lor.lhs.false66, %if.end51, %lor.lhs.false, %sw.bb26, %if.then94
  %sigopts.1 = phi %struct.stack_st_OPENSSL_STRING* [ %sigopts.0, %if.then94 ], [ %sigopts.0, %sw.bb26 ], [ %sigopts.2563, %lor.lhs.false ], [ null, %if.end51 ], [ %sigopts.0, %lor.lhs.false66 ], [ %sigopts.0, %if.end64 ], [ %sigopts.0, %while.cond ]
  %macopts.1 = phi %struct.stack_st_OPENSSL_STRING* [ %macopts.0, %if.then94 ], [ %macopts.0, %sw.bb26 ], [ %macopts.0, %lor.lhs.false ], [ %macopts.0, %if.end51 ], [ %macopts.2566, %lor.lhs.false66 ], [ null, %if.end64 ], [ %macopts.0, %while.cond ]
  %5 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call4 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %5, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.67, i64 0, i64 0), i8* noundef %call2) #9
  br label %if.then361

sw.bb5:                                           ; preds = %while.cond
  call void @opt_help(%struct.options_st* noundef getelementptr inbounds ([38 x %struct.options_st], [38 x %struct.options_st]* @dgst_options, i64 0, i64 0)) #9
  br label %cleanup367

sw.bb6:                                           ; preds = %while.cond
  %6 = load %struct.bio_st*, %struct.bio_st** @bio_out, align 8, !tbaa !3
  %call7 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %6, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.68, i64 0, i64 0)) #9
  %7 = load %struct.bio_st*, %struct.bio_st** @bio_out, align 8, !tbaa !3
  %bio = getelementptr inbounds %struct.doall_dgst_digests, %struct.doall_dgst_digests* %dec, i64 0, i32 0
  store %struct.bio_st* %7, %struct.bio_st** %bio, align 8, !tbaa !11
  %n = getelementptr inbounds %struct.doall_dgst_digests, %struct.doall_dgst_digests* %dec, i64 0, i32 1
  store i32 0, i32* %n, align 8, !tbaa !13
  call void @OBJ_NAME_do_all_sorted(i32 noundef 1, void (%struct.obj_name_st*, i8*)* noundef nonnull @show_digests, i8* noundef nonnull %3) #9
  %8 = load %struct.bio_st*, %struct.bio_st** @bio_out, align 8, !tbaa !3
  %call8 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %8, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.69, i64 0, i64 0)) #9
  br label %cleanup367

sw.bb9:                                           ; preds = %while.cond
  br label %while.cond.backedge

sw.bb10:                                          ; preds = %while.cond
  br label %while.cond.backedge

sw.bb12:                                          ; preds = %while.cond, %while.cond
  %call13 = call i32 @opt_rand(i32 noundef %call3) #9
  %tobool.not = icmp eq i32 %call13, 0
  br i1 %tobool.not, label %if.then361, label %while.cond.backedge

sw.bb14:                                          ; preds = %while.cond
  %call15 = call i8* @opt_arg() #9
  br label %while.cond.backedge

sw.bb16:                                          ; preds = %while.cond
  %call17 = call i8* @opt_arg() #9
  br label %while.cond.backedge

sw.bb18:                                          ; preds = %while.cond
  %call19 = call i8* @opt_arg() #9
  br label %while.cond.backedge

sw.bb20:                                          ; preds = %while.cond
  %call21 = call i8* @opt_arg() #9
  br label %while.cond.backedge

sw.bb22:                                          ; preds = %while.cond
  %call23 = call i8* @opt_arg() #9
  br label %while.cond.backedge

sw.bb24:                                          ; preds = %while.cond
  %call25 = call i8* @opt_arg() #9
  br label %while.cond.backedge

sw.bb26:                                          ; preds = %while.cond
  %call27 = call i8* @opt_arg() #9
  %call28 = call i32 @opt_format(i8* noundef %call27, i64 noundef 1982, i32* noundef nonnull %keyform) #9
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %opthelp, label %while.cond.backedge

sw.bb32:                                          ; preds = %while.cond
  %call33 = call i8* @opt_arg() #9
  %call34 = call %struct.engine_st* @setup_engine_methods(i8* noundef %call33, i32 noundef -1, i32 noundef 0) #9
  br label %while.cond.backedge

sw.bb35:                                          ; preds = %while.cond
  br label %while.cond.backedge

sw.bb36:                                          ; preds = %while.cond
  br label %while.cond.backedge

sw.bb37:                                          ; preds = %while.cond
  br label %while.cond.backedge

sw.bb38:                                          ; preds = %while.cond
  %call39 = call i8* @opt_arg() #9
  %call40 = call i32 @atoi(i8* noundef %call39) #10
  br label %while.cond.backedge

sw.bb41:                                          ; preds = %while.cond
  br label %while.cond.backedge

sw.bb42:                                          ; preds = %while.cond
  br label %while.cond.backedge

sw.bb43:                                          ; preds = %while.cond
  %call44 = call i8* @opt_arg() #9
  br label %while.cond.backedge

sw.bb45:                                          ; preds = %while.cond
  %call46 = call i8* @opt_arg() #9
  br label %while.cond.backedge

sw.bb47:                                          ; preds = %while.cond
  %tobool48.not = icmp eq %struct.stack_st_OPENSSL_STRING* %sigopts.0, null
  br i1 %tobool48.not, label %if.end51, label %lor.lhs.false

if.end51:                                         ; preds = %sw.bb47
  %call50 = call %struct.stack_st* @OPENSSL_sk_new_null() #9
  %9 = bitcast %struct.stack_st* %call50 to %struct.stack_st_OPENSSL_STRING*
  %tobool52.not = icmp eq %struct.stack_st* %call50, null
  br i1 %tobool52.not, label %opthelp, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb47, %if.end51
  %sigopts.2563 = phi %struct.stack_st_OPENSSL_STRING* [ %9, %if.end51 ], [ %sigopts.0, %sw.bb47 ]
  %call53 = call fastcc %struct.stack_st* @ossl_check_OPENSSL_STRING_sk_type(%struct.stack_st_OPENSSL_STRING* noundef nonnull %sigopts.2563) #11
  %call54 = call i8* @opt_arg() #9
  %call56 = call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call53, i8* noundef %call54) #9
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %opthelp, label %while.cond.backedge

sw.bb60:                                          ; preds = %while.cond
  %tobool61.not = icmp eq %struct.stack_st_OPENSSL_STRING* %macopts.0, null
  br i1 %tobool61.not, label %if.end64, label %lor.lhs.false66

if.end64:                                         ; preds = %sw.bb60
  %call63 = call %struct.stack_st* @OPENSSL_sk_new_null() #9
  %10 = bitcast %struct.stack_st* %call63 to %struct.stack_st_OPENSSL_STRING*
  %tobool65.not = icmp eq %struct.stack_st* %call63, null
  br i1 %tobool65.not, label %opthelp, label %lor.lhs.false66

lor.lhs.false66:                                  ; preds = %sw.bb60, %if.end64
  %macopts.2566 = phi %struct.stack_st_OPENSSL_STRING* [ %10, %if.end64 ], [ %macopts.0, %sw.bb60 ]
  %call67 = call fastcc %struct.stack_st* @ossl_check_OPENSSL_STRING_sk_type(%struct.stack_st_OPENSSL_STRING* noundef nonnull %macopts.2566) #11
  %call68 = call i8* @opt_arg() #9
  %call70 = call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call67, i8* noundef %call68) #9
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %opthelp, label %while.cond.backedge

sw.bb74:                                          ; preds = %while.cond
  %call75 = call i8* @opt_unknown() #9
  br label %while.cond.backedge

sw.bb77:                                          ; preds = %while.cond, %while.cond, %while.cond
  %call78 = call i32 @opt_provider(i32 noundef %call3) #9
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %if.then361, label %while.cond.backedge

while.end:                                        ; preds = %while.cond
  %call82 = call i32 @opt_num_rest() #9
  %call83 = call i8** @opt_rest() #9
  %cmp84 = icmp ne i8* %keyfile.0, null
  %cmp85 = icmp sgt i32 %call82, 1
  %or.cond = select i1 %cmp84, i1 %cmp85, i1 false
  br i1 %or.cond, label %if.then86, label %if.end88

if.then86:                                        ; preds = %while.end
  %11 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call87 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %11, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.71, i64 0, i64 0), i8* noundef %call2) #9
  br label %if.then361

if.end88:                                         ; preds = %while.end
  %call89 = call i32 @app_RAND_load() #9
  %tobool90.not = icmp eq i32 %call89, 0
  br i1 %tobool90.not, label %if.then361, label %if.end92

if.end92:                                         ; preds = %if.end88
  %cmp93.not = icmp eq i8* %digestname.0, null
  br i1 %cmp93.not, label %if.end99, label %if.then94

if.then94:                                        ; preds = %if.end92
  %call95 = call i32 @opt_md(i8* noundef nonnull %digestname.0, %struct.evp_md_st** noundef nonnull %md) #9
  %tobool96.not = icmp eq i32 %call95, 0
  br i1 %tobool96.not, label %opthelp, label %if.end99

if.end99:                                         ; preds = %if.then94, %if.end92
  %tobool100 = icmp ne i32 %do_verify.0, 0
  %cmp102 = icmp eq i8* %sigfile.0, null
  %or.cond404 = select i1 %tobool100, i1 %cmp102, i1 false
  br i1 %or.cond404, label %if.then103, label %if.end105

if.then103:                                       ; preds = %if.end99
  %12 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call104 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %12, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.72, i64 0, i64 0)) #9
  br label %if.then361

if.end105:                                        ; preds = %if.end99
  %tobool106.not = icmp eq i32 %engine_impl.0, 0
  %spec.select = select i1 %tobool106.not, %struct.engine_st* null, %struct.engine_st* %e.0
  %call109 = call %struct.bio_method_st* @BIO_s_file() #9
  %call110 = call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call109) #9
  %call111 = call %struct.bio_method_st* @BIO_f_md() #9
  %call112 = call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call111) #9
  %cmp113 = icmp eq %struct.bio_st* %call110, null
  %cmp115 = icmp eq %struct.bio_st* %call112, null
  %or.cond405 = select i1 %cmp113, i1 true, i1 %cmp115
  br i1 %or.cond405, label %if.then361, label %if.end117

if.end117:                                        ; preds = %if.end105
  %tobool118.not = icmp eq i32 %debug.0, 0
  br i1 %tobool118.not, label %if.end120, label %if.then119

if.then119:                                       ; preds = %if.end117
  call void @BIO_set_callback_ex(%struct.bio_st* noundef nonnull %call110, i64 (%struct.bio_st*, i32, i8*, i64, i32, i64, i32, i64*)* noundef nonnull @BIO_debug_callback_ex) #9
  %13 = load i8*, i8** bitcast (%struct.bio_st** @bio_err to i8**), align 8, !tbaa !3
  call void @BIO_set_callback_arg(%struct.bio_st* noundef nonnull %call110, i8* noundef %13) #9
  br label %if.end120

if.end120:                                        ; preds = %if.then119, %if.end117
  %call121 = call i32 @app_passwd(i8* noundef %passinarg.0, i8* noundef null, i8** noundef nonnull %passin, i8** noundef null) #9
  %tobool122.not = icmp eq i32 %call121, 0
  br i1 %tobool122.not, label %if.then123, label %if.end125

if.then123:                                       ; preds = %if.end120
  %14 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call124 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %14, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.73, i64 0, i64 0)) #9
  br label %if.then361

if.end125:                                        ; preds = %if.end120
  %cmp126 = icmp eq i32 %out_bin.0, -1
  %. = zext i1 %cmp84 to i32
  %out_bin.2 = select i1 %cmp126, i32 %., i32 %out_bin.0
  %tobool132.not = icmp eq i32 %out_bin.2, 0
  %cond = select i1 %tobool132.not, i32 32769, i32 2
  %call133 = call %struct.bio_st* @bio_open_default(i8* noundef %outfile.0, i8 noundef signext 119, i32 noundef %cond) #9
  %cmp134 = icmp eq %struct.bio_st* %call133, null
  br i1 %cmp134, label %if.then361, label %if.end136

if.end136:                                        ; preds = %if.end125
  %cmp137 = icmp ne i8* %mac_name.0, null
  %lnot.ext = zext i1 %cmp137 to i32
  %cmp141 = icmp ne i8* %hmac_key.0, null
  %lnot.ext143 = zext i1 %cmp141 to i32
  %add = add nuw nsw i32 %lnot.ext, %lnot.ext143
  %add144 = add nuw nsw i32 %add, %.
  %cmp145 = icmp ugt i32 %add144, 1
  br i1 %cmp145, label %if.then146, label %if.end148

if.then146:                                       ; preds = %if.end136
  %15 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call147 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %15, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.74, i64 0, i64 0)) #9
  br label %if.then361

if.end148:                                        ; preds = %if.end136
  br i1 %cmp84, label %if.then150, label %if.end167

if.then150:                                       ; preds = %if.end148
  %tobool151.not = icmp eq i32 %want_pub.0, 0
  %16 = load i32, i32* %keyform, align 4, !tbaa !7
  br i1 %tobool151.not, label %if.else154, label %if.then152

if.then152:                                       ; preds = %if.then150
  %call153 = call %struct.evp_pkey_st* @load_pubkey(i8* noundef nonnull %keyfile.0, i32 noundef %16, i32 noundef 0, i8* noundef null, %struct.engine_st* noundef %e.0, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.75, i64 0, i64 0)) #9
  br label %if.end156

if.else154:                                       ; preds = %if.then150
  %17 = load i8*, i8** %passin, align 8, !tbaa !3
  %call155 = call %struct.evp_pkey_st* @load_key(i8* noundef nonnull %keyfile.0, i32 noundef %16, i32 noundef 0, i8* noundef %17, %struct.engine_st* noundef %e.0, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.76, i64 0, i64 0)) #9
  br label %if.end156

if.end156:                                        ; preds = %if.else154, %if.then152
  %sigkey.0 = phi %struct.evp_pkey_st* [ %call153, %if.then152 ], [ %call155, %if.else154 ]
  %cmp157 = icmp eq %struct.evp_pkey_st* %sigkey.0, null
  br i1 %cmp157, label %if.then361, label %if.end159

if.end159:                                        ; preds = %if.end156
  %call160 = call i32 @EVP_PKEY_get_id(%struct.evp_pkey_st* noundef nonnull %sigkey.0) #9
  %18 = add i32 %call160, -1087
  %19 = icmp ult i32 %18, 2
  br i1 %19, label %if.then164, label %if.end167

if.then164:                                       ; preds = %if.end159
  %20 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call165 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %20, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.77, i64 0, i64 0)) #9
  br label %if.then361

if.end167:                                        ; preds = %if.end159, %if.end148
  %sigkey.1 = phi %struct.evp_pkey_st* [ null, %if.end148 ], [ %sigkey.0, %if.end159 ]
  %cmp168.not = icmp eq i8* %mac_name.0, null
  br i1 %cmp168.not, label %if.end194, label %if.then169

if.then169:                                       ; preds = %if.end167
  %21 = bitcast %struct.evp_pkey_ctx_st** %mac_ctx to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %21) #8
  store %struct.evp_pkey_ctx_st* null, %struct.evp_pkey_ctx_st** %mac_ctx, align 8, !tbaa !3
  %call170 = call i32 @init_gen_str(%struct.evp_pkey_ctx_st** noundef nonnull %mac_ctx, i8* noundef nonnull %mac_name.0, %struct.engine_st* noundef %spec.select, i32 noundef 0, %struct.ossl_lib_ctx_st* noundef null, i8* noundef null) #9
  %tobool171.not = icmp eq i32 %call170, 0
  br i1 %tobool171.not, label %cleanup191.thread, label %if.end173

if.end173:                                        ; preds = %if.then169
  %cmp174.not = icmp eq %struct.stack_st_OPENSSL_STRING* %macopts.0, null
  br i1 %cmp174.not, label %cleanup191, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end173
  %call176 = call fastcc %struct.stack_st* @ossl_check_const_OPENSSL_STRING_sk_type(%struct.stack_st_OPENSSL_STRING* noundef nonnull %macopts.0) #11
  %call177708 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call176) #9
  %cmp178709 = icmp sgt i32 %call177708, 0
  br i1 %cmp178709, label %for.body, label %cleanup191

for.cond:                                         ; preds = %for.body
  %call177 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call176) #9
  %cmp178 = icmp slt i32 %inc, %call177
  br i1 %cmp178, label %for.body, label %cleanup191, !llvm.loop !14

for.body:                                         ; preds = %for.cond.preheader, %for.cond
  %i.0710 = phi i32 [ %inc, %for.cond ], [ 0, %for.cond.preheader ]
  %call180 = call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call176, i32 noundef %i.0710) #9
  %22 = load %struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st** %mac_ctx, align 8, !tbaa !3
  %call181 = call i32 @pkey_ctrl_string(%struct.evp_pkey_ctx_st* noundef %22, i8* noundef %call180) #9
  %cmp182 = icmp slt i32 %call181, 1
  %inc = add nuw nsw i32 %i.0710, 1
  br i1 %cmp182, label %cleanup186.thread, label %for.cond

cleanup186.thread:                                ; preds = %for.body
  %23 = load %struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st** %mac_ctx, align 8, !tbaa !3
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %23) #9
  %24 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call184 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %24, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.78, i64 0, i64 0), i8* noundef %call180) #9
  br label %cleanup191.thread

cleanup191.thread:                                ; preds = %if.then169, %cleanup186.thread
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %21) #8
  br label %if.then361

cleanup191:                                       ; preds = %for.cond, %for.cond.preheader, %if.end173
  %25 = load %struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st** %mac_ctx, align 8, !tbaa !3
  %call190 = call %struct.evp_pkey_st* @app_keygen(%struct.evp_pkey_ctx_st* noundef %25, i8* noundef nonnull %mac_name.0, i32 noundef 0, i32 noundef 0) #9
  %26 = load %struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st** %mac_ctx, align 8, !tbaa !3
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %26) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %21) #8
  br label %if.end194

if.end194:                                        ; preds = %cleanup191, %if.end167
  %sigkey.3 = phi %struct.evp_pkey_st* [ %call190, %cleanup191 ], [ %sigkey.1, %if.end167 ]
  %cmp195.not = icmp eq i8* %hmac_key.0, null
  br i1 %cmp195.not, label %if.end206, label %if.then196

if.then196:                                       ; preds = %if.end194
  %27 = load %struct.evp_md_st*, %struct.evp_md_st** %md, align 8, !tbaa !3
  %cmp197 = icmp eq %struct.evp_md_st* %27, null
  br i1 %cmp197, label %if.then198, label %if.end200

if.then198:                                       ; preds = %if.then196
  %call199 = call %struct.evp_md_st* @EVP_sha256() #9
  store %struct.evp_md_st* %call199, %struct.evp_md_st** %md, align 8, !tbaa !3
  br label %if.end200

if.end200:                                        ; preds = %if.then198, %if.then196
  %call201 = call i64 @strlen(i8* noundef nonnull %hmac_key.0) #10
  %call202 = call %struct.evp_pkey_st* @EVP_PKEY_new_raw_private_key(i32 noundef 855, %struct.engine_st* noundef %spec.select, i8* noundef nonnull %hmac_key.0, i64 noundef %call201) #9
  %cmp203 = icmp eq %struct.evp_pkey_st* %call202, null
  br i1 %cmp203, label %if.then361, label %if.then208

if.end206:                                        ; preds = %if.end194
  %cmp207.not = icmp eq %struct.evp_pkey_st* %sigkey.3, null
  br i1 %cmp207.not, label %if.else250, label %if.then208

if.then208:                                       ; preds = %if.end200, %if.end206
  %sigkey.4574 = phi %struct.evp_pkey_st* [ %sigkey.3, %if.end206 ], [ %call202, %if.end200 ]
  %28 = bitcast %struct.evp_md_ctx_st** %mctx to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %28) #8
  store %struct.evp_md_ctx_st* null, %struct.evp_md_ctx_st** %mctx, align 8, !tbaa !3
  %29 = bitcast %struct.evp_pkey_ctx_st** %pctx to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %29) #8
  store %struct.evp_pkey_ctx_st* null, %struct.evp_pkey_ctx_st** %pctx, align 8, !tbaa !3
  %call209 = call i64 @BIO_ctrl(%struct.bio_st* noundef %call112, i32 noundef 120, i64 noundef 0, i8* noundef nonnull %28) #9
  %tobool210.not = icmp eq i64 %call209, 0
  br i1 %tobool210.not, label %if.then211, label %if.end213

if.then211:                                       ; preds = %if.then208
  %30 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call212 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %30, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.79, i64 0, i64 0)) #9
  br label %cleanup245.thread

if.end213:                                        ; preds = %if.then208
  %31 = load %struct.evp_md_ctx_st*, %struct.evp_md_ctx_st** %mctx, align 8, !tbaa !3
  %32 = load %struct.evp_md_st*, %struct.evp_md_st** %md, align 8, !tbaa !3
  br i1 %tobool100, label %if.then215, label %if.else217

if.then215:                                       ; preds = %if.end213
  %call216 = call i32 @EVP_DigestVerifyInit(%struct.evp_md_ctx_st* noundef %31, %struct.evp_pkey_ctx_st** noundef nonnull %pctx, %struct.evp_md_st* noundef %32, %struct.engine_st* noundef %spec.select, %struct.evp_pkey_st* noundef nonnull %sigkey.4574) #9
  br label %if.end219

if.else217:                                       ; preds = %if.end213
  %call218 = call i32 @EVP_DigestSignInit(%struct.evp_md_ctx_st* noundef %31, %struct.evp_pkey_ctx_st** noundef nonnull %pctx, %struct.evp_md_st* noundef %32, %struct.engine_st* noundef %spec.select, %struct.evp_pkey_st* noundef nonnull %sigkey.4574) #9
  br label %if.end219

if.end219:                                        ; preds = %if.else217, %if.then215
  %res.0 = phi i32 [ %call216, %if.then215 ], [ %call218, %if.else217 ]
  %cmp220 = icmp eq i32 %res.0, 0
  br i1 %cmp220, label %if.then221, label %if.end223

if.then221:                                       ; preds = %if.end219
  %33 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call222 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %33, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.80, i64 0, i64 0)) #9
  br label %cleanup245.thread

if.end223:                                        ; preds = %if.end219
  %cmp224.not = icmp eq %struct.stack_st_OPENSSL_STRING* %sigopts.0, null
  br i1 %cmp224.not, label %if.end269, label %for.cond226.preheader

for.cond226.preheader:                            ; preds = %if.end223
  %call227 = call fastcc %struct.stack_st* @ossl_check_const_OPENSSL_STRING_sk_type(%struct.stack_st_OPENSSL_STRING* noundef nonnull %sigopts.0) #11
  %call228711 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call227) #9
  %cmp229712 = icmp sgt i32 %call228711, 0
  br i1 %cmp229712, label %for.body230, label %if.end269

for.cond226:                                      ; preds = %for.body230
  %call228 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call227) #9
  %cmp229 = icmp slt i32 %inc242, %call228
  br i1 %cmp229, label %for.body230, label %if.end269, !llvm.loop !15

for.body230:                                      ; preds = %for.cond226.preheader, %for.cond226
  %i.1713 = phi i32 [ %inc242, %for.cond226 ], [ 0, %for.cond226.preheader ]
  %call232 = call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call227, i32 noundef %i.1713) #9
  %34 = load %struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st** %pctx, align 8, !tbaa !3
  %call233 = call i32 @pkey_ctrl_string(%struct.evp_pkey_ctx_st* noundef %34, i8* noundef %call232) #9
  %cmp234 = icmp slt i32 %call233, 1
  %inc242 = add nuw nsw i32 %i.1713, 1
  br i1 %cmp234, label %cleanup238.thread, label %for.cond226

cleanup238.thread:                                ; preds = %for.body230
  %35 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call236 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %35, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.81, i64 0, i64 0), i8* noundef %call232) #9
  br label %cleanup245.thread

cleanup245.thread:                                ; preds = %if.then221, %if.then211, %cleanup238.thread
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %29) #8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %28) #8
  br label %if.then361

if.else250:                                       ; preds = %if.end206
  %36 = bitcast %struct.evp_md_ctx_st** %mctx251 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %36) #8
  store %struct.evp_md_ctx_st* null, %struct.evp_md_ctx_st** %mctx251, align 8, !tbaa !3
  %call252 = call i64 @BIO_ctrl(%struct.bio_st* noundef %call112, i32 noundef 120, i64 noundef 0, i8* noundef nonnull %36) #9
  %tobool253.not = icmp eq i64 %call252, 0
  br i1 %tobool253.not, label %cleanup266.thread, label %if.end256

if.end256:                                        ; preds = %if.else250
  %37 = load %struct.evp_md_st*, %struct.evp_md_st** %md, align 8, !tbaa !3
  %cmp257 = icmp eq %struct.evp_md_st* %37, null
  br i1 %cmp257, label %if.then258, label %if.end260

if.then258:                                       ; preds = %if.end256
  %call259 = call %struct.evp_md_st* @EVP_sha256() #9
  store %struct.evp_md_st* %call259, %struct.evp_md_st** %md, align 8, !tbaa !3
  br label %if.end260

if.end260:                                        ; preds = %if.then258, %if.end256
  %38 = phi %struct.evp_md_st* [ %call259, %if.then258 ], [ %37, %if.end256 ]
  %39 = load %struct.evp_md_ctx_st*, %struct.evp_md_ctx_st** %mctx251, align 8, !tbaa !3
  %call261 = call i32 @EVP_DigestInit_ex(%struct.evp_md_ctx_st* noundef %39, %struct.evp_md_st* noundef %38, %struct.engine_st* noundef %spec.select) #9
  %tobool262.not = icmp eq i32 %call261, 0
  br i1 %tobool262.not, label %cleanup266.thread, label %if.end269.thread

cleanup266.thread:                                ; preds = %if.end260, %if.else250
  %.sink879 = phi i8* [ getelementptr inbounds ([23 x i8], [23 x i8]* @.str.79, i64 0, i64 0), %if.else250 ], [ getelementptr inbounds ([22 x i8], [22 x i8]* @.str.82, i64 0, i64 0), %if.end260 ]
  %40 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call264 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %40, i8* noundef %.sink879) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %36) #8
  br label %if.then361

if.end269.thread:                                 ; preds = %if.end260
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %36) #8
  br label %if.end291

if.end269:                                        ; preds = %for.cond226, %for.cond226.preheader, %if.end223
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %29) #8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %28) #8
  br i1 %cmp102, label %if.end291, label %if.then273

if.then273:                                       ; preds = %if.end269
  %call274 = call %struct.bio_st* @BIO_new_file(i8* noundef nonnull %sigfile.0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.83, i64 0, i64 0)) #9
  %cmp275 = icmp eq %struct.bio_st* %call274, null
  br i1 %cmp275, label %if.then276, label %if.end278

if.then276:                                       ; preds = %if.then273
  %41 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call277 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %41, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.84, i64 0, i64 0), i8* noundef nonnull %sigfile.0) #9
  br label %if.then361

if.end278:                                        ; preds = %if.then273
  %call279 = call i32 @EVP_PKEY_get_size(%struct.evp_pkey_st* noundef nonnull %sigkey.4574) #9
  %conv = sext i32 %call279 to i64
  %call280 = call i8* @app_malloc(i64 noundef %conv, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.85, i64 0, i64 0)) #9
  %call281 = call i32 @BIO_read(%struct.bio_st* noundef nonnull %call274, i8* noundef %call280, i32 noundef %call279) #9
  %call282 = call i32 @BIO_free(%struct.bio_st* noundef nonnull %call274) #9
  %cmp283 = icmp slt i32 %call281, 1
  br i1 %cmp283, label %if.then285, label %if.end291

if.then285:                                       ; preds = %if.end278
  %42 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call286 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %42, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.86, i64 0, i64 0), i8* noundef nonnull %sigfile.0) #9
  br label %if.then361

if.end291:                                        ; preds = %if.end278, %if.end269.thread, %if.end269
  %sigkey.4573586 = phi %struct.evp_pkey_st* [ %sigkey.4574, %if.end269 ], [ null, %if.end269.thread ], [ %sigkey.4574, %if.end278 ]
  %cmp207575585 = phi i1 [ true, %if.end269 ], [ false, %if.end269.thread ], [ true, %if.end278 ]
  %siglen.1 = phi i32 [ 0, %if.end269 ], [ 0, %if.end269.thread ], [ %call281, %if.end278 ]
  %sigbuf.1 = phi i8* [ null, %if.end269 ], [ null, %if.end269.thread ], [ %call280, %if.end278 ]
  %call292 = call %struct.bio_st* @BIO_push(%struct.bio_st* noundef %call112, %struct.bio_st* noundef %call110) #9
  %43 = load %struct.evp_md_st*, %struct.evp_md_st** %md, align 8, !tbaa !3
  %cmp293 = icmp eq %struct.evp_md_st* %43, null
  br i1 %cmp293, label %if.end298, label %if.then301

if.end298:                                        ; preds = %if.end291
  %44 = bitcast %struct.evp_md_ctx_st** %tctx to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %44) #8
  %call296 = call i64 @BIO_ctrl(%struct.bio_st* noundef %call112, i32 noundef 120, i64 noundef 0, i8* noundef nonnull %44) #9
  %45 = load %struct.evp_md_ctx_st*, %struct.evp_md_ctx_st** %tctx, align 8, !tbaa !3
  %call297 = call %struct.evp_md_st* @EVP_MD_CTX_get1_md(%struct.evp_md_ctx_st* noundef %45) #9
  store %struct.evp_md_st* %call297, %struct.evp_md_st** %md, align 8, !tbaa !3
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %44) #8
  %cmp299.not = icmp eq %struct.evp_md_st* %call297, null
  br i1 %cmp299.not, label %if.end303, label %if.then301

if.then301:                                       ; preds = %if.end291, %if.end298
  %46 = phi %struct.evp_md_st* [ %call297, %if.end298 ], [ %43, %if.end291 ]
  %call302 = call i8* @EVP_MD_get0_name(%struct.evp_md_st* noundef nonnull %46) #9
  br label %if.end303

if.end303:                                        ; preds = %if.then301, %if.end298
  %md_name.0 = phi i8* [ %call302, %if.then301 ], [ null, %if.end298 ]
  %cmp304 = icmp sgt i32 %xoflen.0, 0
  br i1 %cmp304, label %if.then306, label %if.end317

if.then306:                                       ; preds = %if.end303
  %47 = load %struct.evp_md_st*, %struct.evp_md_st** %md, align 8, !tbaa !3
  %call307 = call i64 @EVP_MD_get_flags(%struct.evp_md_st* noundef %47) #9
  %and = and i64 %call307, 2
  %tobool308.not = icmp eq i64 %and, 0
  br i1 %tobool308.not, label %if.then309, label %if.end311

if.then309:                                       ; preds = %if.then306
  %48 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call310 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %48, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.87, i64 0, i64 0)) #9
  br label %if.then361

if.end311:                                        ; preds = %if.then306
  br i1 %cmp207575585, label %if.then314, label %if.end317

if.then314:                                       ; preds = %if.end311
  %49 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call315 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %49, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.88, i64 0, i64 0)) #9
  br label %if.then361

if.end317:                                        ; preds = %if.end311, %if.end303
  %cmp318 = icmp eq i32 %call82, 0
  br i1 %cmp318, label %if.then320, label %if.else323

if.then320:                                       ; preds = %if.end317
  %50 = load i8*, i8** bitcast (%struct._IO_FILE** @stdin to i8**), align 8, !tbaa !3
  %call321 = call i64 @BIO_ctrl(%struct.bio_st* noundef %call110, i32 noundef 106, i64 noundef 0, i8* noundef %50) #9
  %call322 = call i32 @do_fp(%struct.bio_st* noundef nonnull %call133, i8* noundef %call, %struct.bio_st* noundef %call292, i32 noundef %separator.0, i32 noundef %out_bin.2, i32 noundef %xoflen.0, %struct.evp_pkey_st* noundef %sigkey.4573586, i8* noundef %sigbuf.1, i32 noundef %siglen.1, i8* noundef null, i8* noundef %md_name.0, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.89, i64 0, i64 0)) #11
  br label %end

if.else323:                                       ; preds = %if.end317
  %or.cond408 = and i1 %tobool132.not, %cmp207575585
  br i1 %or.cond408, label %if.then329, label %if.end332

if.then329:                                       ; preds = %if.else323
  %call330 = call i8* @EVP_PKEY_get0_type_name(%struct.evp_pkey_st* noundef nonnull %sigkey.4573586) #9
  br label %if.end332

if.end332:                                        ; preds = %if.then329, %if.else323
  %sig_name.0 = phi i8* [ %call330, %if.then329 ], [ null, %if.else323 ]
  %cmp334714 = icmp sgt i32 %call82, 0
  br i1 %cmp334714, label %for.body336.preheader, label %cleanup367

for.body336.preheader:                            ; preds = %if.end332
  %wide.trip.count = zext i32 %call82 to i64
  br label %for.body336

for.body336:                                      ; preds = %for.body336.preheader, %for.inc355
  %indvars.iv = phi i64 [ 0, %for.body336.preheader ], [ %indvars.iv.next, %for.inc355 ]
  %ret.0716 = phi i32 [ 0, %for.body336.preheader ], [ %ret.2, %for.inc355 ]
  %arrayidx337 = getelementptr inbounds i8*, i8** %call83, i64 %indvars.iv
  %51 = load i8*, i8** %arrayidx337, align 8, !tbaa !3
  %call338 = call i64 @BIO_ctrl(%struct.bio_st* noundef %call110, i32 noundef 108, i64 noundef 3, i8* noundef %51) #9
  %conv339 = trunc i64 %call338 to i32
  %cmp340 = icmp slt i32 %conv339, 1
  %52 = load i8*, i8** %arrayidx337, align 8, !tbaa !3
  br i1 %cmp340, label %if.then342, label %if.else345

if.then342:                                       ; preds = %for.body336
  call void @perror(i8* noundef %52) #9
  br label %for.inc355

if.else345:                                       ; preds = %for.body336
  %call348 = call i32 @do_fp(%struct.bio_st* noundef nonnull %call133, i8* noundef %call, %struct.bio_st* noundef %call292, i32 noundef %separator.0, i32 noundef %out_bin.2, i32 noundef %xoflen.0, %struct.evp_pkey_st* noundef %sigkey.4573586, i8* noundef %sigbuf.1, i32 noundef %siglen.1, i8* noundef %sig_name.0, i8* noundef %md_name.0, i8* noundef %52) #11
  %tobool349.not = icmp eq i32 %call348, 0
  %spec.select560 = select i1 %tobool349.not, i32 %ret.0716, i32 1
  %call353 = call i64 @BIO_ctrl(%struct.bio_st* noundef %call112, i32 noundef 1, i64 noundef 0, i8* noundef null) #9
  br label %for.inc355

for.inc355:                                       ; preds = %if.else345, %if.then342
  %ret.2 = phi i32 [ 1, %if.then342 ], [ %spec.select560, %if.else345 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %end, label %for.body336, !llvm.loop !16

end:                                              ; preds = %for.inc355, %if.then320
  %ret.3 = phi i32 [ %call322, %if.then320 ], [ %ret.2, %for.inc355 ]
  %cmp359.not = icmp eq i32 %ret.3, 0
  br i1 %cmp359.not, label %cleanup367, label %if.then361

if.then361:                                       ; preds = %sw.bb77, %sw.bb12, %if.then285, %if.then276, %if.end156, %if.then164, %cleanup266.thread, %cleanup245.thread, %cleanup191.thread, %if.end88, %if.then123, %if.then309, %if.then314, %if.end200, %if.then146, %if.end125, %if.end105, %if.then103, %if.then86, %opthelp, %end
  %in.0614 = phi %struct.bio_st* [ %call110, %end ], [ %call110, %cleanup266.thread ], [ %call110, %cleanup245.thread ], [ %call110, %cleanup191.thread ], [ null, %if.end88 ], [ %call110, %if.then123 ], [ %call110, %if.then309 ], [ %call110, %if.then314 ], [ %call110, %if.end200 ], [ %call110, %if.then146 ], [ %call110, %if.end125 ], [ %call110, %if.end105 ], [ null, %if.then103 ], [ null, %if.then86 ], [ null, %opthelp ], [ %call110, %if.then164 ], [ %call110, %if.end156 ], [ %call110, %if.then276 ], [ %call110, %if.then285 ], [ null, %sw.bb12 ], [ null, %sw.bb77 ]
  %sigbuf.2612 = phi i8* [ %sigbuf.1, %end ], [ null, %cleanup266.thread ], [ null, %cleanup245.thread ], [ null, %cleanup191.thread ], [ null, %if.end88 ], [ null, %if.then123 ], [ %sigbuf.1, %if.then309 ], [ %sigbuf.1, %if.then314 ], [ null, %if.end200 ], [ null, %if.then146 ], [ null, %if.end125 ], [ null, %if.end105 ], [ null, %if.then103 ], [ null, %if.then86 ], [ null, %opthelp ], [ null, %if.then164 ], [ null, %if.end156 ], [ null, %if.then276 ], [ %call280, %if.then285 ], [ null, %sw.bb12 ], [ null, %sw.bb77 ]
  %ret.3610 = phi i32 [ %ret.3, %end ], [ 1, %cleanup266.thread ], [ 1, %cleanup245.thread ], [ 1, %cleanup191.thread ], [ 1, %if.end88 ], [ 1, %if.then123 ], [ 1, %if.then309 ], [ 1, %if.then314 ], [ 1, %if.end200 ], [ 1, %if.then146 ], [ 1, %if.end125 ], [ 1, %if.end105 ], [ 1, %if.then103 ], [ 1, %if.then86 ], [ 1, %opthelp ], [ 1, %if.then164 ], [ 1, %if.end156 ], [ 1, %if.then276 ], [ 1, %if.then285 ], [ 1, %sw.bb12 ], [ 1, %sw.bb77 ]
  %bmd.0608 = phi %struct.bio_st* [ %call112, %end ], [ %call112, %cleanup266.thread ], [ %call112, %cleanup245.thread ], [ %call112, %cleanup191.thread ], [ null, %if.end88 ], [ %call112, %if.then123 ], [ %call112, %if.then309 ], [ %call112, %if.then314 ], [ %call112, %if.end200 ], [ %call112, %if.then146 ], [ %call112, %if.end125 ], [ %call112, %if.end105 ], [ null, %if.then103 ], [ null, %if.then86 ], [ null, %opthelp ], [ %call112, %if.then164 ], [ %call112, %if.end156 ], [ %call112, %if.then276 ], [ %call112, %if.then285 ], [ null, %sw.bb12 ], [ null, %sw.bb77 ]
  %macopts.4606 = phi %struct.stack_st_OPENSSL_STRING* [ %macopts.0, %end ], [ %macopts.0, %cleanup266.thread ], [ %macopts.0, %cleanup245.thread ], [ %macopts.0, %cleanup191.thread ], [ %macopts.0, %if.end88 ], [ %macopts.0, %if.then123 ], [ %macopts.0, %if.then309 ], [ %macopts.0, %if.then314 ], [ %macopts.0, %if.end200 ], [ %macopts.0, %if.then146 ], [ %macopts.0, %if.end125 ], [ %macopts.0, %if.end105 ], [ %macopts.0, %if.then103 ], [ %macopts.0, %if.then86 ], [ %macopts.1, %opthelp ], [ %macopts.0, %if.then164 ], [ %macopts.0, %if.end156 ], [ %macopts.0, %if.then276 ], [ %macopts.0, %if.then285 ], [ %macopts.0, %sw.bb12 ], [ %macopts.0, %sw.bb77 ]
  %sigopts.4604 = phi %struct.stack_st_OPENSSL_STRING* [ %sigopts.0, %end ], [ %sigopts.0, %cleanup266.thread ], [ %sigopts.0, %cleanup245.thread ], [ %sigopts.0, %cleanup191.thread ], [ %sigopts.0, %if.end88 ], [ %sigopts.0, %if.then123 ], [ %sigopts.0, %if.then309 ], [ %sigopts.0, %if.then314 ], [ %sigopts.0, %if.end200 ], [ %sigopts.0, %if.then146 ], [ %sigopts.0, %if.end125 ], [ %sigopts.0, %if.end105 ], [ %sigopts.0, %if.then103 ], [ %sigopts.0, %if.then86 ], [ %sigopts.1, %opthelp ], [ %sigopts.0, %if.then164 ], [ %sigopts.0, %if.end156 ], [ %sigopts.0, %if.then276 ], [ %sigopts.0, %if.then285 ], [ %sigopts.0, %sw.bb12 ], [ %sigopts.0, %sw.bb77 ]
  %sigkey.5602 = phi %struct.evp_pkey_st* [ %sigkey.4573586, %end ], [ null, %cleanup266.thread ], [ %sigkey.4574, %cleanup245.thread ], [ %sigkey.1, %cleanup191.thread ], [ null, %if.end88 ], [ null, %if.then123 ], [ %sigkey.4573586, %if.then309 ], [ %sigkey.4573586, %if.then314 ], [ null, %if.end200 ], [ null, %if.then146 ], [ null, %if.end125 ], [ null, %if.end105 ], [ null, %if.then103 ], [ null, %if.then86 ], [ null, %opthelp ], [ %sigkey.0, %if.then164 ], [ null, %if.end156 ], [ %sigkey.4574, %if.then276 ], [ %sigkey.4574, %if.then285 ], [ null, %sw.bb12 ], [ null, %sw.bb77 ]
  %out.0600 = phi %struct.bio_st* [ %call133, %end ], [ %call133, %cleanup266.thread ], [ %call133, %cleanup245.thread ], [ %call133, %cleanup191.thread ], [ null, %if.end88 ], [ null, %if.then123 ], [ %call133, %if.then309 ], [ %call133, %if.then314 ], [ %call133, %if.end200 ], [ %call133, %if.then146 ], [ null, %if.end125 ], [ null, %if.end105 ], [ null, %if.then103 ], [ null, %if.then86 ], [ null, %opthelp ], [ %call133, %if.then164 ], [ %call133, %if.end156 ], [ %call133, %if.then276 ], [ %call133, %if.then285 ], [ null, %sw.bb12 ], [ null, %sw.bb77 ]
  %53 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  call void @ERR_print_errors(%struct.bio_st* noundef %53) #9
  br label %cleanup367

cleanup367:                                       ; preds = %if.end332, %sw.bb5, %sw.bb6, %end, %if.then361
  %in.0615 = phi %struct.bio_st* [ %in.0614, %if.then361 ], [ %call110, %end ], [ null, %sw.bb6 ], [ null, %sw.bb5 ], [ %call110, %if.end332 ]
  %sigbuf.2613 = phi i8* [ %sigbuf.2612, %if.then361 ], [ %sigbuf.1, %end ], [ null, %sw.bb6 ], [ null, %sw.bb5 ], [ %sigbuf.1, %if.end332 ]
  %ret.3611 = phi i32 [ %ret.3610, %if.then361 ], [ 0, %end ], [ 0, %sw.bb6 ], [ 0, %sw.bb5 ], [ 0, %if.end332 ]
  %bmd.0609 = phi %struct.bio_st* [ %bmd.0608, %if.then361 ], [ %call112, %end ], [ null, %sw.bb6 ], [ null, %sw.bb5 ], [ %call112, %if.end332 ]
  %macopts.4607 = phi %struct.stack_st_OPENSSL_STRING* [ %macopts.4606, %if.then361 ], [ %macopts.0, %end ], [ %macopts.0, %sw.bb6 ], [ %macopts.0, %sw.bb5 ], [ %macopts.0, %if.end332 ]
  %sigopts.4605 = phi %struct.stack_st_OPENSSL_STRING* [ %sigopts.4604, %if.then361 ], [ %sigopts.0, %end ], [ %sigopts.0, %sw.bb6 ], [ %sigopts.0, %sw.bb5 ], [ %sigopts.0, %if.end332 ]
  %sigkey.5603 = phi %struct.evp_pkey_st* [ %sigkey.5602, %if.then361 ], [ %sigkey.4573586, %end ], [ null, %sw.bb6 ], [ null, %sw.bb5 ], [ %sigkey.4573586, %if.end332 ]
  %out.0601 = phi %struct.bio_st* [ %out.0600, %if.then361 ], [ %call133, %end ], [ null, %sw.bb6 ], [ null, %sw.bb5 ], [ %call133, %if.end332 ]
  call void @CRYPTO_clear_free(i8* noundef %call, i64 noundef 8192, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.90, i64 0, i64 0), i32 noundef 443) #9
  %call363 = call i32 @BIO_free(%struct.bio_st* noundef %in.0615) #9
  %54 = load i8*, i8** %passin, align 8, !tbaa !3
  call void @CRYPTO_free(i8* noundef %54, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.90, i64 0, i64 0), i32 noundef 445) #9
  call void @BIO_free_all(%struct.bio_st* noundef %out.0601) #9
  %55 = load %struct.evp_md_st*, %struct.evp_md_st** %md, align 8, !tbaa !3
  call void @EVP_MD_free(%struct.evp_md_st* noundef %55) #9
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %sigkey.5603) #9
  %call364 = call fastcc %struct.stack_st* @ossl_check_OPENSSL_STRING_sk_type(%struct.stack_st_OPENSSL_STRING* noundef %sigopts.4605) #11
  call void @OPENSSL_sk_free(%struct.stack_st* noundef %call364) #9
  %call365 = call fastcc %struct.stack_st* @ossl_check_OPENSSL_STRING_sk_type(%struct.stack_st_OPENSSL_STRING* noundef %macopts.4607) #11
  call void @OPENSSL_sk_free(%struct.stack_st* noundef %call365) #9
  call void @CRYPTO_free(i8* noundef %sigbuf.2613, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.90, i64 0, i64 0), i32 noundef 451) #9
  %call366 = call i32 @BIO_free(%struct.bio_st* noundef %bmd.0609) #9
  call void @release_engine(%struct.engine_st* noundef %e.0) #9
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %3) #8
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8
  ret i32 %ret.3611
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare dso_local i8* @app_malloc(i64 noundef, i8* noundef) local_unnamed_addr #2

declare dso_local %struct.evp_md_st* @EVP_get_digestbyname(i8* noundef) local_unnamed_addr #2

declare dso_local i8* @opt_init(i32 noundef, i8** noundef, %struct.options_st* noundef) local_unnamed_addr #2

declare dso_local i32 @opt_next() local_unnamed_addr #2

declare dso_local i32 @BIO_printf(%struct.bio_st* noundef, i8* noundef, ...) local_unnamed_addr #2

declare dso_local void @opt_help(%struct.options_st* noundef) local_unnamed_addr #2

declare dso_local void @OBJ_NAME_do_all_sorted(i32 noundef, void (%struct.obj_name_st*, i8*)* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal void @show_digests(%struct.obj_name_st* nocapture noundef readonly %name, i8* nocapture noundef %arg) #0 {
entry:
  %name1 = getelementptr inbounds %struct.obj_name_st, %struct.obj_name_st* %name, i64 0, i32 2
  %0 = load i8*, i8** %name1, align 8, !tbaa !17
  %call = tail call i8* @strstr(i8* noundef %0, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.107, i64 0, i64 0)) #10
  %cmp.not = icmp eq i8* %call, null
  br i1 %cmp.not, label %lor.lhs.false, label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %call3 = tail call i8* @strstr(i8* noundef %0, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.108, i64 0, i64 0)) #10
  %cmp4.not = icmp eq i8* %call3, null
  br i1 %cmp4.not, label %if.end, label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call5 = tail call i16** @__ctype_b_loc() #12
  %1 = load i16*, i16** %call5, align 8, !tbaa !3
  %2 = load i8, i8* %0, align 1, !tbaa !19
  %3 = zext i8 %2 to i64
  %arrayidx = getelementptr inbounds i16, i16* %1, i64 %3
  %4 = load i16, i16* %arrayidx, align 2, !tbaa !20
  %5 = and i16 %4, 512
  %tobool.not = icmp eq i16 %5, 0
  br i1 %tobool.not, label %cleanup, label %if.end9

if.end9:                                          ; preds = %if.end
  %call11 = tail call %struct.evp_md_st* @EVP_get_digestbyname(i8* noundef nonnull %0) #9
  %cmp12 = icmp eq %struct.evp_md_st* %call11, null
  br i1 %cmp12, label %cleanup, label %if.end15

if.end15:                                         ; preds = %if.end9
  %bio = bitcast i8* %arg to %struct.bio_st**
  %6 = load %struct.bio_st*, %struct.bio_st** %bio, align 8, !tbaa !11
  %7 = load i8*, i8** %name1, align 8, !tbaa !17
  %call17 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %6, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.109, i64 0, i64 0), i8* noundef %7) #9
  %n = getelementptr inbounds i8, i8* %arg, i64 8
  %8 = bitcast i8* %n to i32*
  %9 = load i32, i32* %8, align 8, !tbaa !13
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %8, align 8, !tbaa !13
  %cmp18 = icmp eq i32 %inc, 3
  %10 = load %struct.bio_st*, %struct.bio_st** %bio, align 8, !tbaa !11
  br i1 %cmp18, label %if.then20, label %if.else

if.then20:                                        ; preds = %if.end15
  %call22 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %10, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.69, i64 0, i64 0)) #9
  store i32 0, i32* %8, align 8, !tbaa !13
  br label %cleanup

if.else:                                          ; preds = %if.end15
  %call25 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %10, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.110, i64 0, i64 0)) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then20, %if.else, %if.end9, %if.end, %entry, %lor.lhs.false
  ret void
}

declare dso_local i32 @opt_rand(i32 noundef) local_unnamed_addr #2

declare dso_local i8* @opt_arg() local_unnamed_addr #2

declare dso_local i32 @opt_format(i8* noundef, i64 noundef, i32* noundef) local_unnamed_addr #2

declare dso_local %struct.engine_st* @setup_engine_methods(i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline nounwind readonly uwtable willreturn
declare dso_local i32 @atoi(i8* noundef nonnull) local_unnamed_addr #3

declare dso_local %struct.stack_st* @OPENSSL_sk_new_null() local_unnamed_addr #2

declare dso_local i32 @OPENSSL_sk_push(%struct.stack_st* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_OPENSSL_STRING_sk_type(%struct.stack_st_OPENSSL_STRING* noundef readnone %sk) unnamed_addr #4 {
entry:
  %0 = bitcast %struct.stack_st_OPENSSL_STRING* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare dso_local i8* @opt_unknown() local_unnamed_addr #2

declare dso_local i32 @opt_provider(i32 noundef) local_unnamed_addr #2

declare dso_local i32 @opt_num_rest() local_unnamed_addr #2

declare dso_local i8** @opt_rest() local_unnamed_addr #2

declare dso_local i32 @app_RAND_load() local_unnamed_addr #2

declare dso_local i32 @opt_md(i8* noundef, %struct.evp_md_st** noundef) local_unnamed_addr #2

declare dso_local %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef) local_unnamed_addr #2

declare dso_local %struct.bio_method_st* @BIO_s_file() local_unnamed_addr #2

declare dso_local %struct.bio_method_st* @BIO_f_md() local_unnamed_addr #2

declare dso_local void @BIO_set_callback_ex(%struct.bio_st* noundef, i64 (%struct.bio_st*, i32, i8*, i64, i32, i64, i32, i64*)* noundef) local_unnamed_addr #2

declare dso_local i64 @BIO_debug_callback_ex(%struct.bio_st* noundef, i32 noundef, i8* noundef, i64 noundef, i32 noundef, i64 noundef, i32 noundef, i64* noundef) #2

declare dso_local void @BIO_set_callback_arg(%struct.bio_st* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local i32 @app_passwd(i8* noundef, i8* noundef, i8** noundef, i8** noundef) local_unnamed_addr #2

declare dso_local %struct.bio_st* @bio_open_default(i8* noundef, i8 noundef signext, i32 noundef) local_unnamed_addr #2

declare dso_local %struct.evp_pkey_st* @load_pubkey(i8* noundef, i32 noundef, i32 noundef, i8* noundef, %struct.engine_st* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local %struct.evp_pkey_st* @load_key(i8* noundef, i32 noundef, i32 noundef, i8* noundef, %struct.engine_st* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local i32 @EVP_PKEY_get_id(%struct.evp_pkey_st* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

declare dso_local i32 @init_gen_str(%struct.evp_pkey_ctx_st** noundef, i8* noundef, %struct.engine_st* noundef, i32 noundef, %struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local i32 @OPENSSL_sk_num(%struct.stack_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_OPENSSL_STRING_sk_type(%struct.stack_st_OPENSSL_STRING* noundef readnone %sk) unnamed_addr #4 {
entry:
  %0 = bitcast %struct.stack_st_OPENSSL_STRING* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare dso_local i8* @OPENSSL_sk_value(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i32 @pkey_ctrl_string(%struct.evp_pkey_ctx_st* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #2

declare dso_local %struct.evp_pkey_st* @app_keygen(%struct.evp_pkey_ctx_st* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare dso_local %struct.evp_md_st* @EVP_sha256() local_unnamed_addr #2

declare dso_local %struct.evp_pkey_st* @EVP_PKEY_new_raw_private_key(i32 noundef, %struct.engine_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) local_unnamed_addr #5

declare dso_local i64 @BIO_ctrl(%struct.bio_st* noundef, i32 noundef, i64 noundef, i8* noundef) local_unnamed_addr #2

declare dso_local i32 @EVP_DigestVerifyInit(%struct.evp_md_ctx_st* noundef, %struct.evp_pkey_ctx_st** noundef, %struct.evp_md_st* noundef, %struct.engine_st* noundef, %struct.evp_pkey_st* noundef) local_unnamed_addr #2

declare dso_local i32 @EVP_DigestSignInit(%struct.evp_md_ctx_st* noundef, %struct.evp_pkey_ctx_st** noundef, %struct.evp_md_st* noundef, %struct.engine_st* noundef, %struct.evp_pkey_st* noundef) local_unnamed_addr #2

declare dso_local i32 @EVP_DigestInit_ex(%struct.evp_md_ctx_st* noundef, %struct.evp_md_st* noundef, %struct.engine_st* noundef) local_unnamed_addr #2

declare dso_local %struct.bio_st* @BIO_new_file(i8* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local i32 @EVP_PKEY_get_size(%struct.evp_pkey_st* noundef) local_unnamed_addr #2

declare dso_local i32 @BIO_read(%struct.bio_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i32 @BIO_free(%struct.bio_st* noundef) local_unnamed_addr #2

declare dso_local %struct.bio_st* @BIO_push(%struct.bio_st* noundef, %struct.bio_st* noundef) local_unnamed_addr #2

declare dso_local %struct.evp_md_st* @EVP_MD_CTX_get1_md(%struct.evp_md_ctx_st* noundef) local_unnamed_addr #2

declare dso_local i8* @EVP_MD_get0_name(%struct.evp_md_st* noundef) local_unnamed_addr #2

declare dso_local i64 @EVP_MD_get_flags(%struct.evp_md_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @do_fp(%struct.bio_st* noundef %out, i8* noundef %buf, %struct.bio_st* noundef %bp, i32 noundef %sep, i32 noundef %binout, i32 noundef %xoflen, %struct.evp_pkey_st* noundef readnone %key, i8* noundef %sigin, i32 noundef %siglen, i8* noundef %sig_name, i8* noundef %md_name, i8* noundef %file) local_unnamed_addr #0 {
entry:
  %len = alloca i64, align 8
  %backslash = alloca i32, align 4
  %ctx = alloca %struct.evp_md_ctx_st*, align 8
  %ctx32 = alloca %struct.evp_md_ctx_st*, align 8
  %tmplen = alloca i64, align 8
  %ctx55 = alloca %struct.evp_md_ctx_st*, align 8
  %0 = bitcast i64* %len to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8
  store i64 8192, i64* %len, align 8, !tbaa !22
  %1 = bitcast i32* %backslash to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #8
  store i32 0, i32* %backslash, align 4, !tbaa !7
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %call = tail call i64 @BIO_ctrl(%struct.bio_st* noundef %bp, i32 noundef 10, i64 noundef 0, i8* noundef null) #9
  %conv = trunc i64 %call to i32
  %tobool.not = icmp eq i32 %conv, 0
  br i1 %tobool.not, label %lor.rhs, label %while.body

lor.rhs:                                          ; preds = %while.cond
  %call1 = tail call i64 @BIO_ctrl(%struct.bio_st* noundef %bp, i32 noundef 2, i64 noundef 0, i8* noundef null) #9
  %conv2 = trunc i64 %call1 to i32
  %tobool3.not = icmp eq i32 %conv2, 0
  br i1 %tobool3.not, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond, %lor.rhs
  %call4 = tail call i32 @BIO_read(%struct.bio_st* noundef %bp, i8* noundef %buf, i32 noundef 8192) #9
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %2 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call6 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %2, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.91, i64 0, i64 0), i8* noundef %file) #9
  br label %cleanup147

if.end:                                           ; preds = %while.body
  %cmp7 = icmp eq i32 %call4, 0
  br i1 %cmp7, label %while.end, label %while.cond, !llvm.loop !24

while.end:                                        ; preds = %if.end, %lor.rhs
  %cmp11.not = icmp eq i8* %sigin, null
  br i1 %cmp11.not, label %if.end28, label %if.then13

if.then13:                                        ; preds = %while.end
  %3 = bitcast %struct.evp_md_ctx_st** %ctx to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #8
  %call14 = call i64 @BIO_ctrl(%struct.bio_st* noundef %bp, i32 noundef 120, i64 noundef 0, i8* noundef nonnull %3) #9
  %4 = load %struct.evp_md_ctx_st*, %struct.evp_md_ctx_st** %ctx, align 8, !tbaa !3
  %conv15 = zext i32 %siglen to i64
  %call16 = call i32 @EVP_DigestVerifyFinal(%struct.evp_md_ctx_st* noundef %4, i8* noundef nonnull %sigin, i64 noundef %conv15) #9
  %cmp17 = icmp sgt i32 %call16, 0
  br i1 %cmp17, label %if.then19, label %if.else

if.then19:                                        ; preds = %if.then13
  %call20 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.92, i64 0, i64 0)) #9
  br label %cleanup

if.else:                                          ; preds = %if.then13
  %cmp21 = icmp eq i32 %call16, 0
  br i1 %cmp21, label %if.then23, label %if.else25

if.then23:                                        ; preds = %if.else
  %call24 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.93, i64 0, i64 0)) #9
  br label %cleanup

if.else25:                                        ; preds = %if.else
  %5 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call26 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %5, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.94, i64 0, i64 0)) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then19, %if.else25, %if.then23
  %ret.0 = phi i32 [ 0, %if.then19 ], [ 1, %if.then23 ], [ 1, %if.else25 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #8
  br label %cleanup147

if.end28:                                         ; preds = %while.end
  %cmp29.not = icmp eq %struct.evp_pkey_st* %key, null
  br i1 %cmp29.not, label %if.else51, label %if.then31

if.then31:                                        ; preds = %if.end28
  %6 = bitcast %struct.evp_md_ctx_st** %ctx32 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #8
  %7 = bitcast i64* %tmplen to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #8
  %call33 = call i64 @BIO_ctrl(%struct.bio_st* noundef %bp, i32 noundef 120, i64 noundef 0, i8* noundef nonnull %6) #9
  %8 = load %struct.evp_md_ctx_st*, %struct.evp_md_ctx_st** %ctx32, align 8, !tbaa !3
  %call34 = call i32 @EVP_DigestSignFinal(%struct.evp_md_ctx_st* noundef %8, i8* noundef null, i64* noundef nonnull %tmplen) #9
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %cleanup49.thread, label %if.end38

if.end38:                                         ; preds = %if.then31
  %9 = load i64, i64* %tmplen, align 8, !tbaa !22
  %cmp39 = icmp ugt i64 %9, 8192
  br i1 %cmp39, label %if.then41, label %if.end43

if.then41:                                        ; preds = %if.end38
  store i64 %9, i64* %len, align 8, !tbaa !22
  %call42 = call i8* @app_malloc(i64 noundef %9, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.96, i64 0, i64 0)) #9
  br label %if.end43

if.end43:                                         ; preds = %if.then41, %if.end38
  %buf.addr.0 = phi i8* [ %call42, %if.then41 ], [ %buf, %if.end38 ]
  %allocated_buf.0 = phi i8* [ %call42, %if.then41 ], [ null, %if.end38 ]
  %10 = load %struct.evp_md_ctx_st*, %struct.evp_md_ctx_st** %ctx32, align 8, !tbaa !3
  %call44 = call i32 @EVP_DigestSignFinal(%struct.evp_md_ctx_st* noundef %10, i8* noundef %buf.addr.0, i64* noundef nonnull %len) #9
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %cleanup49.thread, label %cleanup49

cleanup49.thread:                                 ; preds = %if.end43, %if.then31
  %.sink233 = phi i8* [ getelementptr inbounds ([45 x i8], [45 x i8]* @.str.95, i64 0, i64 0), %if.then31 ], [ getelementptr inbounds ([20 x i8], [20 x i8]* @.str.97, i64 0, i64 0), %if.end43 ]
  %allocated_buf.1.ph = phi i8* [ null, %if.then31 ], [ %allocated_buf.0, %if.end43 ]
  %11 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call47 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %11, i8* noundef %.sink233) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #8
  br label %end

cleanup49:                                        ; preds = %if.end43
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #8
  br label %if.end80

if.else51:                                        ; preds = %if.end28
  %cmp52 = icmp sgt i32 %xoflen, 0
  br i1 %cmp52, label %if.then54, label %if.else71

if.then54:                                        ; preds = %if.else51
  %12 = bitcast %struct.evp_md_ctx_st** %ctx55 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %12) #8
  %conv56221 = zext i32 %xoflen to i64
  store i64 %conv56221, i64* %len, align 8, !tbaa !22
  %cmp57 = icmp ugt i32 %xoflen, 8192
  br i1 %cmp57, label %if.then59, label %if.end61

if.then59:                                        ; preds = %if.then54
  %call60 = tail call i8* @app_malloc(i64 noundef %conv56221, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.98, i64 0, i64 0)) #9
  br label %if.end61

if.end61:                                         ; preds = %if.then59, %if.then54
  %buf.addr.2 = phi i8* [ %call60, %if.then59 ], [ %buf, %if.then54 ]
  %allocated_buf.2 = phi i8* [ %call60, %if.then59 ], [ null, %if.then54 ]
  %call62 = call i64 @BIO_ctrl(%struct.bio_st* noundef %bp, i32 noundef 120, i64 noundef 0, i8* noundef nonnull %12) #9
  %13 = load %struct.evp_md_ctx_st*, %struct.evp_md_ctx_st** %ctx55, align 8, !tbaa !3
  %call63 = call i32 @EVP_DigestFinalXOF(%struct.evp_md_ctx_st* noundef %13, i8* noundef %buf.addr.2, i64 noundef %conv56221) #9
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %cleanup68, label %cleanup68.thread

cleanup68.thread:                                 ; preds = %if.end61
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %12) #8
  br label %if.end80

cleanup68:                                        ; preds = %if.end61
  %14 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call66 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %14, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.99, i64 0, i64 0)) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %12) #8
  br label %end

if.else71:                                        ; preds = %if.else51
  %call72 = tail call i32 @BIO_gets(%struct.bio_st* noundef %bp, i8* noundef %buf, i32 noundef 8192) #9
  %conv73 = sext i32 %call72 to i64
  store i64 %conv73, i64* %len, align 8, !tbaa !22
  %cmp75 = icmp slt i32 %call72, 0
  br i1 %cmp75, label %cleanup147, label %if.end80

if.end80:                                         ; preds = %cleanup68.thread, %cleanup49, %if.else71
  %buf.addr.3 = phi i8* [ %buf.addr.0, %cleanup49 ], [ %buf, %if.else71 ], [ %buf.addr.2, %cleanup68.thread ]
  %allocated_buf.3 = phi i8* [ %allocated_buf.0, %cleanup49 ], [ null, %if.else71 ], [ %allocated_buf.2, %cleanup68.thread ]
  %tobool81.not = icmp eq i32 %binout, 0
  br i1 %tobool81.not, label %if.else85, label %if.then82

if.then82:                                        ; preds = %if.end80
  %15 = load i64, i64* %len, align 8, !tbaa !22
  %conv83 = trunc i64 %15 to i32
  %call84 = call i32 @BIO_write(%struct.bio_st* noundef %out, i8* noundef %buf.addr.3, i32 noundef %conv83) #9
  br label %end

if.else85:                                        ; preds = %if.end80
  %cmp86 = icmp eq i32 %sep, 2
  br i1 %cmp86, label %if.then88, label %if.else101

if.then88:                                        ; preds = %if.else85
  %call89 = call fastcc i8* @newline_escape_filename(i8* noundef %file, i32* noundef nonnull %backslash) #11
  %16 = load i32, i32* %backslash, align 4, !tbaa !7
  %cmp90 = icmp eq i32 %16, 1
  br i1 %cmp90, label %if.then92, label %if.end94

if.then92:                                        ; preds = %if.then88
  %call93 = call i32 @BIO_puts(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.100, i64 0, i64 0)) #9
  br label %if.end94

if.end94:                                         ; preds = %if.then92, %if.then88
  %17 = load i64, i64* %len, align 8, !tbaa !22
  %conv95225 = trunc i64 %17 to i32
  %cmp96226 = icmp sgt i32 %conv95225, 0
  br i1 %cmp96226, label %for.body, label %for.end

for.body:                                         ; preds = %if.end94, %for.body
  %indvars.iv229 = phi i64 [ %indvars.iv.next230, %for.body ], [ 0, %if.end94 ]
  %arrayidx = getelementptr inbounds i8, i8* %buf.addr.3, i64 %indvars.iv229
  %18 = load i8, i8* %arrayidx, align 1, !tbaa !19
  %conv98 = zext i8 %18 to i32
  %call99 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.101, i64 0, i64 0), i32 noundef %conv98) #9
  %indvars.iv.next230 = add nuw nsw i64 %indvars.iv229, 1
  %19 = load i64, i64* %len, align 8, !tbaa !22
  %sext232 = shl i64 %19, 32
  %20 = ashr exact i64 %sext232, 32
  %cmp96 = icmp slt i64 %indvars.iv.next230, %20
  br i1 %cmp96, label %for.body, label %for.end, !llvm.loop !25

for.end:                                          ; preds = %for.body, %if.end94
  %call100 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.102, i64 0, i64 0), i8* noundef %call89) #9
  call void @CRYPTO_free(i8* noundef %call89, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.90, i64 0, i64 0), i32 noundef 607) #9
  br label %end

if.else101:                                       ; preds = %if.else85
  %cmp102.not = icmp eq i8* %sig_name, null
  br i1 %cmp102.not, label %if.else112, label %if.then104

if.then104:                                       ; preds = %if.else101
  %call105 = call i32 @BIO_puts(%struct.bio_st* noundef %out, i8* noundef nonnull %sig_name) #9
  %cmp106.not = icmp eq i8* %md_name, null
  br i1 %cmp106.not, label %if.end110, label %if.then108

if.then108:                                       ; preds = %if.then104
  %call109 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.103, i64 0, i64 0), i8* noundef nonnull %md_name) #9
  br label %if.end110

if.end110:                                        ; preds = %if.then108, %if.then104
  %call111 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.104, i64 0, i64 0), i8* noundef %file) #9
  br label %if.end120

if.else112:                                       ; preds = %if.else101
  %cmp113.not = icmp eq i8* %md_name, null
  br i1 %cmp113.not, label %if.else117, label %if.then115

if.then115:                                       ; preds = %if.else112
  %call116 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.105, i64 0, i64 0), i8* noundef nonnull %md_name, i8* noundef %file) #9
  br label %if.end120

if.else117:                                       ; preds = %if.else112
  %call118 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.104, i64 0, i64 0), i8* noundef %file) #9
  br label %if.end120

if.end120:                                        ; preds = %if.then115, %if.else117, %if.end110
  %21 = load i64, i64* %len, align 8, !tbaa !22
  %conv122222 = trunc i64 %21 to i32
  %cmp123223 = icmp sgt i32 %conv122222, 0
  br i1 %cmp123223, label %for.body125.lr.ph, label %for.end138

for.body125.lr.ph:                                ; preds = %if.end120
  %tobool126 = icmp ne i32 %sep, 0
  br label %for.body125

for.body125:                                      ; preds = %for.body125.lr.ph, %if.end131
  %indvars.iv = phi i64 [ 0, %for.body125.lr.ph ], [ %indvars.iv.next, %if.end131 ]
  %cmp127 = icmp ne i64 %indvars.iv, 0
  %or.cond = select i1 %tobool126, i1 %cmp127, i1 false
  br i1 %or.cond, label %if.then129, label %if.end131

if.then129:                                       ; preds = %for.body125
  %call130 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.106, i64 0, i64 0)) #9
  br label %if.end131

if.end131:                                        ; preds = %if.then129, %for.body125
  %arrayidx133 = getelementptr inbounds i8, i8* %buf.addr.3, i64 %indvars.iv
  %22 = load i8, i8* %arrayidx133, align 1, !tbaa !19
  %conv134 = zext i8 %22 to i32
  %call135 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.101, i64 0, i64 0), i32 noundef %conv134) #9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %23 = load i64, i64* %len, align 8, !tbaa !22
  %sext = shl i64 %23, 32
  %24 = ashr exact i64 %sext, 32
  %cmp123 = icmp slt i64 %indvars.iv.next, %24
  br i1 %cmp123, label %for.body125, label %for.end138, !llvm.loop !26

for.end138:                                       ; preds = %if.end131, %if.end120
  %call139 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.69, i64 0, i64 0)) #9
  br label %end

end:                                              ; preds = %cleanup68, %cleanup49.thread, %if.then82, %for.end138, %for.end
  %ret.1 = phi i32 [ 1, %cleanup68 ], [ 0, %for.end ], [ 0, %for.end138 ], [ 0, %if.then82 ], [ 1, %cleanup49.thread ]
  %allocated_buf.4 = phi i8* [ %allocated_buf.2, %cleanup68 ], [ %allocated_buf.3, %for.end ], [ %allocated_buf.3, %for.end138 ], [ %allocated_buf.3, %if.then82 ], [ %allocated_buf.1.ph, %cleanup49.thread ]
  %cmp143.not = icmp eq i8* %allocated_buf.4, null
  br i1 %cmp143.not, label %cleanup147, label %if.then145

if.then145:                                       ; preds = %end
  %25 = load i64, i64* %len, align 8, !tbaa !22
  call void @CRYPTO_clear_free(i8* noundef nonnull %allocated_buf.4, i64 noundef %25, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.90, i64 0, i64 0), i32 noundef 630) #9
  br label %cleanup147

cleanup147:                                       ; preds = %if.else71, %cleanup, %if.then, %end, %if.then145
  %ret.1220 = phi i32 [ %ret.1, %end ], [ %ret.1, %if.then145 ], [ 1, %if.else71 ], [ %ret.0, %cleanup ], [ 1, %if.then ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8
  ret i32 %ret.1220
}

declare dso_local i8* @EVP_PKEY_get0_type_name(%struct.evp_pkey_st* noundef) local_unnamed_addr #2

declare dso_local void @perror(i8* noundef) local_unnamed_addr #2

declare dso_local void @ERR_print_errors(%struct.bio_st* noundef) local_unnamed_addr #2

declare dso_local void @CRYPTO_clear_free(i8* noundef, i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local void @BIO_free_all(%struct.bio_st* noundef) local_unnamed_addr #2

declare dso_local void @EVP_MD_free(%struct.evp_md_st* noundef) local_unnamed_addr #2

declare dso_local void @EVP_PKEY_free(%struct.evp_pkey_st* noundef) local_unnamed_addr #2

declare dso_local void @OPENSSL_sk_free(%struct.stack_st* noundef) local_unnamed_addr #2

declare dso_local void @release_engine(%struct.engine_st* noundef) local_unnamed_addr #2

declare dso_local i32 @EVP_DigestVerifyFinal(%struct.evp_md_ctx_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare dso_local i32 @EVP_DigestSignFinal(%struct.evp_md_ctx_st* noundef, i8* noundef, i64* noundef) local_unnamed_addr #2

declare dso_local i32 @EVP_DigestFinalXOF(%struct.evp_md_ctx_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare dso_local i32 @BIO_gets(%struct.bio_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i32 @BIO_write(%struct.bio_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i8* @newline_escape_filename(i8* noundef %file, i32* nocapture noundef writeonly %backslash) unnamed_addr #0 {
entry:
  %call = tail call i64 @strlen(i8* noundef %file) #10
  %cmp47.not = icmp eq i64 %call, 0
  br i1 %cmp47.not, label %for.end.thread, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  %min.iters.check = icmp ult i64 %call, 4
  br i1 %min.iters.check, label %for.body.preheader62, label %vector.ph

vector.ph:                                        ; preds = %for.body.preheader
  %n.vec = and i64 %call, -4
  %0 = add i64 %n.vec, -4
  %1 = lshr exact i64 %0, 2
  %2 = add nuw nsw i64 %1, 1
  %xtraiter = and i64 %2, 1
  %3 = icmp eq i64 %0, 0
  br i1 %3, label %middle.block.unr-lcssa, label %vector.ph.new

vector.ph.new:                                    ; preds = %vector.ph
  %unroll_iter = and i64 %2, 9223372036854775806
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph.new
  %index = phi i64 [ 0, %vector.ph.new ], [ %index.next.1, %vector.body ]
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph.new ], [ %22, %vector.body ]
  %vec.phi60 = phi <2 x i64> [ zeroinitializer, %vector.ph.new ], [ %23, %vector.body ]
  %niter = phi i64 [ 0, %vector.ph.new ], [ %niter.next.1, %vector.body ]
  %4 = getelementptr inbounds i8, i8* %file, i64 %index
  %5 = bitcast i8* %4 to <2 x i8>*
  %wide.load = load <2 x i8>, <2 x i8>* %5, align 1, !tbaa !19
  %6 = getelementptr inbounds i8, i8* %4, i64 2
  %7 = bitcast i8* %6 to <2 x i8>*
  %wide.load61 = load <2 x i8>, <2 x i8>* %7, align 1, !tbaa !19
  %8 = icmp eq <2 x i8> %wide.load, <i8 10, i8 10>
  %9 = icmp eq <2 x i8> %wide.load61, <i8 10, i8 10>
  %10 = zext <2 x i1> %8 to <2 x i64>
  %11 = zext <2 x i1> %9 to <2 x i64>
  %12 = add <2 x i64> %vec.phi, %10
  %13 = add <2 x i64> %vec.phi60, %11
  %index.next = or i64 %index, 4
  %14 = getelementptr inbounds i8, i8* %file, i64 %index.next
  %15 = bitcast i8* %14 to <2 x i8>*
  %wide.load.1 = load <2 x i8>, <2 x i8>* %15, align 1, !tbaa !19
  %16 = getelementptr inbounds i8, i8* %14, i64 2
  %17 = bitcast i8* %16 to <2 x i8>*
  %wide.load61.1 = load <2 x i8>, <2 x i8>* %17, align 1, !tbaa !19
  %18 = icmp eq <2 x i8> %wide.load.1, <i8 10, i8 10>
  %19 = icmp eq <2 x i8> %wide.load61.1, <i8 10, i8 10>
  %20 = zext <2 x i1> %18 to <2 x i64>
  %21 = zext <2 x i1> %19 to <2 x i64>
  %22 = add <2 x i64> %12, %20
  %23 = add <2 x i64> %13, %21
  %index.next.1 = add nuw i64 %index, 8
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %middle.block.unr-lcssa, label %vector.body, !llvm.loop !27

middle.block.unr-lcssa:                           ; preds = %vector.body, %vector.ph
  %.lcssa64.ph = phi <2 x i64> [ undef, %vector.ph ], [ %22, %vector.body ]
  %.lcssa.ph = phi <2 x i64> [ undef, %vector.ph ], [ %23, %vector.body ]
  %index.unr = phi i64 [ 0, %vector.ph ], [ %index.next.1, %vector.body ]
  %vec.phi.unr = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %22, %vector.body ]
  %vec.phi60.unr = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %23, %vector.body ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %middle.block, label %vector.body.epil

vector.body.epil:                                 ; preds = %middle.block.unr-lcssa
  %24 = getelementptr inbounds i8, i8* %file, i64 %index.unr
  %25 = bitcast i8* %24 to <2 x i8>*
  %wide.load.epil = load <2 x i8>, <2 x i8>* %25, align 1, !tbaa !19
  %26 = getelementptr inbounds i8, i8* %24, i64 2
  %27 = bitcast i8* %26 to <2 x i8>*
  %wide.load61.epil = load <2 x i8>, <2 x i8>* %27, align 1, !tbaa !19
  %28 = icmp eq <2 x i8> %wide.load.epil, <i8 10, i8 10>
  %29 = icmp eq <2 x i8> %wide.load61.epil, <i8 10, i8 10>
  %30 = zext <2 x i1> %28 to <2 x i64>
  %31 = zext <2 x i1> %29 to <2 x i64>
  %32 = add <2 x i64> %vec.phi.unr, %30
  %33 = add <2 x i64> %vec.phi60.unr, %31
  br label %middle.block

middle.block:                                     ; preds = %middle.block.unr-lcssa, %vector.body.epil
  %.lcssa64 = phi <2 x i64> [ %.lcssa64.ph, %middle.block.unr-lcssa ], [ %32, %vector.body.epil ]
  %.lcssa = phi <2 x i64> [ %.lcssa.ph, %middle.block.unr-lcssa ], [ %33, %vector.body.epil ]
  %bin.rdx = add <2 x i64> %.lcssa, %.lcssa64
  %34 = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx)
  %cmp.n = icmp eq i64 %call, %n.vec
  br i1 %cmp.n, label %for.end, label %for.body.preheader62

for.body.preheader62:                             ; preds = %for.body.preheader, %middle.block
  %i.049.ph = phi i64 [ 0, %for.body.preheader ], [ %n.vec, %middle.block ]
  %newline_count.048.ph = phi i64 [ 0, %for.body.preheader ], [ %34, %middle.block ]
  br label %for.body

for.end.thread:                                   ; preds = %entry
  %add56 = add nuw nsw i64 %call, 1
  %call558 = tail call i8* @app_malloc(i64 noundef %add56, i8* noundef %file) #9
  br label %while.end

for.body:                                         ; preds = %for.body.preheader62, %for.body
  %i.049 = phi i64 [ %inc3, %for.body ], [ %i.049.ph, %for.body.preheader62 ]
  %newline_count.048 = phi i64 [ %spec.select, %for.body ], [ %newline_count.048.ph, %for.body.preheader62 ]
  %arrayidx = getelementptr inbounds i8, i8* %file, i64 %i.049
  %35 = load i8, i8* %arrayidx, align 1, !tbaa !19
  %cmp1 = icmp eq i8 %35, 10
  %inc = zext i1 %cmp1 to i64
  %spec.select = add i64 %newline_count.048, %inc
  %inc3 = add nuw i64 %i.049, 1
  %exitcond.not = icmp eq i64 %inc3, %call
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !29

for.end:                                          ; preds = %for.body, %middle.block
  %spec.select.lcssa = phi i64 [ %34, %middle.block ], [ %spec.select, %for.body ]
  %add = add i64 %call, 1
  %add4 = add i64 %add, %spec.select.lcssa
  %call5 = tail call i8* @app_malloc(i64 noundef %add4, i8* noundef nonnull %file) #9
  br i1 %cmp47.not, label %while.end, label %while.body

while.body:                                       ; preds = %for.end, %if.end19
  %i.152 = phi i64 [ %i.2, %if.end19 ], [ 0, %for.end ]
  %e.051 = phi i64 [ %inc20, %if.end19 ], [ 0, %for.end ]
  %arrayidx8 = getelementptr inbounds i8, i8* %file, i64 %e.051
  %36 = load i8, i8* %arrayidx8, align 1, !tbaa !19
  %cmp10 = icmp eq i8 %36, 10
  br i1 %cmp10, label %if.then12, label %if.else

if.then12:                                        ; preds = %while.body
  %inc13 = add i64 %i.152, 1
  %arrayidx14 = getelementptr inbounds i8, i8* %call5, i64 %i.152
  store i8 92, i8* %arrayidx14, align 1, !tbaa !19
  %arrayidx16 = getelementptr inbounds i8, i8* %call5, i64 %inc13
  store i8 110, i8* %arrayidx16, align 1, !tbaa !19
  store i32 1, i32* %backslash, align 4, !tbaa !7
  br label %if.end19

if.else:                                          ; preds = %while.body
  %arrayidx18 = getelementptr inbounds i8, i8* %call5, i64 %i.152
  store i8 %36, i8* %arrayidx18, align 1, !tbaa !19
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.then12
  %i.2.in = phi i64 [ %inc13, %if.then12 ], [ %i.152, %if.else ]
  %i.2 = add i64 %i.2.in, 1
  %inc20 = add nuw i64 %e.051, 1
  %exitcond54.not = icmp eq i64 %inc20, %call
  br i1 %exitcond54.not, label %while.end, label %while.body, !llvm.loop !31

while.end:                                        ; preds = %if.end19, %for.end.thread, %for.end
  %call559 = phi i8* [ %call5, %for.end ], [ %call558, %for.end.thread ], [ %call5, %if.end19 ]
  %i.1.lcssa = phi i64 [ 0, %for.end ], [ 0, %for.end.thread ], [ %i.2, %if.end19 ]
  %arrayidx21 = getelementptr inbounds i8, i8* %call559, i64 %i.1.lcssa
  store i8 0, i8* %arrayidx21, align 1, !tbaa !19
  ret i8* %call559
}

declare dso_local i32 @BIO_puts(%struct.bio_st* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i8* @strstr(i8* noundef, i8* noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() local_unnamed_addr #6

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #7

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nosync nounwind readnone willreturn }
attributes #8 = { nounwind }
attributes #9 = { nobuiltin nounwind "no-builtins" }
attributes #10 = { nobuiltin nounwind readonly willreturn "no-builtins" }
attributes #11 = { nobuiltin "no-builtins" }
attributes #12 = { nobuiltin nounwind readnone willreturn "no-builtins" }

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
!11 = !{!12, !4, i64 0}
!12 = !{!"doall_dgst_digests", !4, i64 0, !8, i64 8}
!13 = !{!12, !8, i64 8}
!14 = distinct !{!14, !10}
!15 = distinct !{!15, !10}
!16 = distinct !{!16, !10}
!17 = !{!18, !4, i64 8}
!18 = !{!"obj_name_st", !8, i64 0, !8, i64 4, !4, i64 8, !4, i64 16}
!19 = !{!5, !5, i64 0}
!20 = !{!21, !21, i64 0}
!21 = !{!"short", !5, i64 0}
!22 = !{!23, !23, i64 0}
!23 = !{!"long", !5, i64 0}
!24 = distinct !{!24, !10}
!25 = distinct !{!25, !10}
!26 = distinct !{!26, !10}
!27 = distinct !{!27, !10, !28}
!28 = !{!"llvm.loop.isvectorized", i32 1}
!29 = distinct !{!29, !10, !30, !28}
!30 = !{!"llvm.loop.unroll.runtime.disable"}
!31 = distinct !{!31, !10}
