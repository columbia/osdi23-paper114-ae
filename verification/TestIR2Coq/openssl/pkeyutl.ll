; ModuleID = 'apps/pkeyutl.c'
source_filename = "apps/pkeyutl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.options_st = type { i8*, i32, i32, i8* }
%struct.bio_st = type opaque
%struct.evp_pkey_st = type opaque
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.ossl_lib_ctx_st = type opaque
%struct.stack_st_OPENSSL_STRING = type opaque
%struct.engine_st = type opaque
%struct.conf_st = type { %struct.conf_method_st*, i8*, %struct.lhash_st_CONF_VALUE*, i32, i32, i8*, %struct.ossl_lib_ctx_st* }
%struct.conf_method_st = type { i8*, %struct.conf_st* (%struct.conf_method_st*)*, i32 (%struct.conf_st*)*, i32 (%struct.conf_st*)*, i32 (%struct.conf_st*)*, i32 (%struct.conf_st*, %struct.bio_st*, i64*)*, i32 (%struct.conf_st*, %struct.bio_st*)*, i32 (%struct.conf_st*, i8)*, i32 (%struct.conf_st*, i8)*, i32 (%struct.conf_st*, i8*, i64*)* }
%struct.lhash_st_CONF_VALUE = type { %union.lh_CONF_VALUE_dummy }
%union.lh_CONF_VALUE_dummy = type { i8* }
%struct.stack_st = type opaque
%struct.evp_md_ctx_st = type opaque
%struct.evp_pkey_ctx_st = type opaque
%struct.evp_md_st = type opaque
%struct.x509_st = type opaque
%struct.ossl_param_st = type { i8*, i32, i8*, i64, i64 }

@OPT_SECTION_STR = external dso_local constant [0 x i8], align 1
@.str = private unnamed_addr constant [18 x i8] c"General options:\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Display this summary\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"engine\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"Use engine, possibly a hardware device\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"engine_impl\00", align 1
@.str.6 = private unnamed_addr constant [55 x i8] c"Also use engine given by -engine for crypto operations\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"sign\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"Sign input data with private key\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"verify\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"Verify with public key\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"encrypt\00", align 1
@.str.12 = private unnamed_addr constant [35 x i8] c"Encrypt input data with public key\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"decrypt\00", align 1
@.str.14 = private unnamed_addr constant [36 x i8] c"Decrypt input data with private key\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"derive\00", align 1
@.str.16 = private unnamed_addr constant [21 x i8] c"Derive shared secret\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"config\00", align 1
@.str.18 = private unnamed_addr constant [50 x i8] c"Load a configuration file (this may load modules)\00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"Input options:\0A\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str.21 = private unnamed_addr constant [27 x i8] c"Input file - default stdin\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"rawin\00", align 1
@.str.23 = private unnamed_addr constant [39 x i8] c"Indicate the input data is in raw form\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"pubin\00", align 1
@.str.25 = private unnamed_addr constant [22 x i8] c"Input is a public key\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"inkey\00", align 1
@.str.27 = private unnamed_addr constant [23 x i8] c"Input private key file\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"passin\00", align 1
@.str.29 = private unnamed_addr constant [30 x i8] c"Input file pass phrase source\00", align 1
@.str.30 = private unnamed_addr constant [8 x i8] c"peerkey\00", align 1
@.str.31 = private unnamed_addr constant [37 x i8] c"Peer key file used in key derivation\00", align 1
@.str.32 = private unnamed_addr constant [9 x i8] c"peerform\00", align 1
@.str.33 = private unnamed_addr constant [37 x i8] c"Peer key format (DER/PEM/P12/ENGINE)\00", align 1
@.str.34 = private unnamed_addr constant [7 x i8] c"certin\00", align 1
@.str.35 = private unnamed_addr constant [34 x i8] c"Input is a cert with a public key\00", align 1
@.str.36 = private unnamed_addr constant [4 x i8] c"rev\00", align 1
@.str.37 = private unnamed_addr constant [38 x i8] c"Reverse the order of the input buffer\00", align 1
@.str.38 = private unnamed_addr constant [8 x i8] c"sigfile\00", align 1
@.str.39 = private unnamed_addr constant [39 x i8] c"Signature file (verify operation only)\00", align 1
@.str.40 = private unnamed_addr constant [8 x i8] c"keyform\00", align 1
@.str.41 = private unnamed_addr constant [50 x i8] c"Private key format (ENGINE, other values ignored)\00", align 1
@.str.42 = private unnamed_addr constant [17 x i8] c"Output options:\0A\00", align 1
@.str.43 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@.str.44 = private unnamed_addr constant [29 x i8] c"Output file - default stdout\00", align 1
@.str.45 = private unnamed_addr constant [10 x i8] c"asn1parse\00", align 1
@.str.46 = private unnamed_addr constant [26 x i8] c"asn1parse the output data\00", align 1
@.str.47 = private unnamed_addr constant [8 x i8] c"hexdump\00", align 1
@.str.48 = private unnamed_addr constant [16 x i8] c"Hex dump output\00", align 1
@.str.49 = private unnamed_addr constant [14 x i8] c"verifyrecover\00", align 1
@.str.50 = private unnamed_addr constant [46 x i8] c"Verify with public key, recover original data\00", align 1
@.str.51 = private unnamed_addr constant [29 x i8] c"Signing/Derivation options:\0A\00", align 1
@.str.52 = private unnamed_addr constant [7 x i8] c"digest\00", align 1
@.str.53 = private unnamed_addr constant [61 x i8] c"Specify the digest algorithm when signing the raw input data\00", align 1
@.str.54 = private unnamed_addr constant [8 x i8] c"pkeyopt\00", align 1
@.str.55 = private unnamed_addr constant [32 x i8] c"Public key options as opt:value\00", align 1
@.str.56 = private unnamed_addr constant [15 x i8] c"pkeyopt_passin\00", align 1
@.str.57 = private unnamed_addr constant [71 x i8] c"Public key option that is read as a passphrase argument opt:passphrase\00", align 1
@.str.58 = private unnamed_addr constant [4 x i8] c"kdf\00", align 1
@.str.59 = private unnamed_addr constant [18 x i8] c"Use KDF algorithm\00", align 1
@.str.60 = private unnamed_addr constant [7 x i8] c"kdflen\00", align 1
@.str.61 = private unnamed_addr constant [28 x i8] c"KDF algorithm output length\00", align 1
@.str.62 = private unnamed_addr constant [23 x i8] c"Random state options:\0A\00", align 1
@.str.63 = private unnamed_addr constant [5 x i8] c"rand\00", align 1
@.str.64 = private unnamed_addr constant [56 x i8] c"Load the given file(s) into the random number generator\00", align 1
@.str.65 = private unnamed_addr constant [10 x i8] c"writerand\00", align 1
@.str.66 = private unnamed_addr constant [40 x i8] c"Write random data to the specified file\00", align 1
@.str.67 = private unnamed_addr constant [19 x i8] c"Provider options:\0A\00", align 1
@.str.68 = private unnamed_addr constant [14 x i8] c"provider-path\00", align 1
@.str.69 = private unnamed_addr constant [68 x i8] c"Provider load path (must be before 'provider' argument if required)\00", align 1
@.str.70 = private unnamed_addr constant [9 x i8] c"provider\00", align 1
@.str.71 = private unnamed_addr constant [51 x i8] c"Provider to load (can be specified multiple times)\00", align 1
@.str.72 = private unnamed_addr constant [10 x i8] c"propquery\00", align 1
@.str.73 = private unnamed_addr constant [45 x i8] c"Property query used when fetching algorithms\00", align 1
@pkeyutl_options = dso_local constant [41 x %struct.options_st] [%struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i32 2, i32 115, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i32 0, i32 0), i32 3, i32 45, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.6, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i32 10, i32 45, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0), i32 11, i32 45, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0), i32 14, i32 45, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.12, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0), i32 15, i32 45, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.14, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i32 0, i32 0), i32 16, i32 45, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i32 0, i32 0), i32 1605, i32 60, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.18, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.19, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i32 0, i32 0), i32 4, i32 60, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.21, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i32 0, i32 0), i32 1606, i32 45, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.23, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i32 6, i32 45, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.25, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i32 0, i32 0), i32 18, i32 115, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.27, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i32 0, i32 0), i32 20, i32 115, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.29, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.30, i32 0, i32 0), i32 19, i32 115, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.31, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.32, i32 0, i32 0), i32 21, i32 69, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.33, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.34, i32 0, i32 0), i32 7, i32 45, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.35, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.36, i32 0, i32 0), i32 13, i32 45, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.37, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.38, i32 0, i32 0), i32 17, i32 60, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.39, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.40, i32 0, i32 0), i32 22, i32 69, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.41, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.42, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.43, i32 0, i32 0), i32 5, i32 62, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.44, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.45, i32 0, i32 0), i32 8, i32 45, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.46, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.47, i32 0, i32 0), i32 9, i32 45, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.48, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.49, i32 0, i32 0), i32 12, i32 45, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.50, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.51, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.52, i32 0, i32 0), i32 1607, i32 115, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.53, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.54, i32 0, i32 0), i32 23, i32 115, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.55, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.56, i32 0, i32 0), i32 24, i32 115, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.57, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.58, i32 0, i32 0), i32 25, i32 115, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.59, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.60, i32 0, i32 0), i32 26, i32 112, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.61, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.62, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.63, i32 0, i32 0), i32 1501, i32 115, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.64, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.65, i32 0, i32 0), i32 1502, i32 62, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.66, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.67, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.68, i32 0, i32 0), i32 1602, i32 115, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.69, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.70, i32 0, i32 0), i32 1601, i32 115, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.71, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.72, i32 0, i32 0), i32 1603, i32 115, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.73, i32 0, i32 0) }, %struct.options_st zeroinitializer], align 16
@bio_err = external dso_local local_unnamed_addr global %struct.bio_st*, align 8
@.str.74 = private unnamed_addr constant [28 x i8] c"%s: Use -help for summary.\0A\00", align 1
@.str.75 = private unnamed_addr constant [15 x i8] c"out of memory\0A\00", align 1
@.str.76 = private unnamed_addr constant [51 x i8] c"%s: -rawin can only be used with -sign or -verify\0A\00", align 1
@.str.77 = private unnamed_addr constant [42 x i8] c"%s: -digest can only be used with -rawin\0A\00", align 1
@.str.78 = private unnamed_addr constant [40 x i8] c"%s: -rev cannot be used with raw input\0A\00", align 1
@.str.79 = private unnamed_addr constant [46 x i8] c"%s: no KDF length given (-kdflen parameter).\0A\00", align 1
@.str.80 = private unnamed_addr constant [46 x i8] c"%s: no private key given (-inkey parameter).\0A\00", align 1
@.str.81 = private unnamed_addr constant [45 x i8] c"%s: no peer key given (-peerkey parameter).\0A\00", align 1
@.str.82 = private unnamed_addr constant [22 x i8] c"Error: out of memory\0A\00", align 1
@.str.83 = private unnamed_addr constant [32 x i8] c"%s: Error initializing context\0A\00", align 1
@.str.84 = private unnamed_addr constant [31 x i8] c"%s: Error setting up peer key\0A\00", align 1
@.str.85 = private unnamed_addr constant [31 x i8] c"%s: Can't set parameter \22%s\22:\0A\00", align 1
@.str.86 = private unnamed_addr constant [11 x i8] c"Enter %s: \00", align 1
@.str.87 = private unnamed_addr constant [12 x i8] c"user abort\0A\00", align 1
@.str.88 = private unnamed_addr constant [14 x i8] c"entry failed\0A\00", align 1
@.str.89 = private unnamed_addr constant [15 x i8] c"apps/pkeyutl.c\00", align 1
@.str.90 = private unnamed_addr constant [20 x i8] c"failed to get '%s'\0A\00", align 1
@.str.91 = private unnamed_addr constant [45 x i8] c"%s: Signature file specified for non verify\0A\00", align 1
@.str.92 = private unnamed_addr constant [44 x i8] c"%s: No signature file specified for verify\0A\00", align 1
@.str.93 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.94 = private unnamed_addr constant [30 x i8] c"Can't open signature file %s\0A\00", align 1
@.str.95 = private unnamed_addr constant [30 x i8] c"Error reading signature data\0A\00", align 1
@.str.96 = private unnamed_addr constant [26 x i8] c"Error reading input Data\0A\00", align 1
@.str.97 = private unnamed_addr constant [51 x i8] c"Error: The input data looks too long to be a hash\0A\00", align 1
@.str.98 = private unnamed_addr constant [33 x i8] c"Signature Verified Successfully\0A\00", align 1
@.str.99 = private unnamed_addr constant [32 x i8] c"Signature Verification Failure\0A\00", align 1
@.str.100 = private unnamed_addr constant [14 x i8] c"buffer output\00", align 1
@.str.101 = private unnamed_addr constant [28 x i8] c"Public Key operation error\0A\00", align 1
@.str.102 = private unnamed_addr constant [23 x i8] c"Key derivation failed\0A\00", align 1
@.str.103 = private unnamed_addr constant [44 x i8] c"A private key is needed for this operation\0A\00", align 1
@.str.104 = private unnamed_addr constant [24 x i8] c"Error getting password\0A\00", align 1
@.str.105 = private unnamed_addr constant [12 x i8] c"private key\00", align 1
@.str.106 = private unnamed_addr constant [11 x i8] c"public key\00", align 1
@.str.107 = private unnamed_addr constant [12 x i8] c"Certificate\00", align 1
@.str.108 = private unnamed_addr constant [32 x i8] c"The given KDF \22%s\22 is unknown.\0A\00", align 1
@.str.109 = private unnamed_addr constant [9 x i8] c"peer key\00", align 1
@.str.110 = private unnamed_addr constant [27 x i8] c"Error reading peer key %s\0A\00", align 1
@.str.111 = private unnamed_addr constant [60 x i8] c"Error: unable to determine file size for oneshot operation\0A\00", align 1
@.str.112 = private unnamed_addr constant [27 x i8] c"oneshot sign/verify buffer\00", align 1
@.str.113 = private unnamed_addr constant [30 x i8] c"Error reading raw input data\0A\00", align 1
@.str.114 = private unnamed_addr constant [32 x i8] c"Error verifying raw input data\0A\00", align 1
@.str.115 = private unnamed_addr constant [30 x i8] c"Error signing raw input data\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @pkeyutl_main(i32 noundef %argc, i8** noundef %argv) local_unnamed_addr #0 {
entry:
  %pkey = alloca %struct.evp_pkey_st*, align 8
  %buf_in = alloca i8*, align 8
  %buf_out = alloca i8*, align 8
  %sig = alloca i8*, align 8
  %keyform = alloca i32, align 4
  %peerform = alloca i32, align 4
  %keysize = alloca i32, align 4
  %buf_outlen = alloca i64, align 8
  %passwd = alloca i8*, align 8
  %passwd_buf = alloca [4096 x i8], align 16
  %st = alloca %struct.stat, align 8
  %0 = bitcast %struct.evp_pkey_st** %pkey to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7
  store %struct.evp_pkey_st* null, %struct.evp_pkey_st** %pkey, align 8, !tbaa !3
  %1 = bitcast i8** %buf_in to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #7
  store i8* null, i8** %buf_in, align 8, !tbaa !3
  %2 = bitcast i8** %buf_out to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #7
  store i8* null, i8** %buf_out, align 8, !tbaa !3
  %3 = bitcast i8** %sig to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #7
  store i8* null, i8** %sig, align 8, !tbaa !3
  %4 = bitcast i32* %keyform to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #7
  store i32 0, i32* %keyform, align 4, !tbaa !7
  %5 = bitcast i32* %peerform to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #7
  store i32 0, i32* %peerform, align 4, !tbaa !7
  %6 = bitcast i32* %keysize to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #7
  store i32 -1, i32* %keysize, align 4, !tbaa !7
  %7 = bitcast i64* %buf_outlen to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #7
  %call = tail call %struct.ossl_lib_ctx_st* @app_get0_libctx() #8
  %call1 = tail call i8* @opt_init(i32 noundef %argc, i8** noundef %argv, %struct.options_st* noundef getelementptr inbounds ([41 x %struct.options_st], [41 x %struct.options_st]* @pkeyutl_options, i64 0, i64 0)) #8
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %entry
  %asn1parse.0 = phi i8 [ 0, %entry ], [ %asn1parse.0.be, %while.cond.backedge ]
  %rev.0 = phi i8 [ 0, %entry ], [ %rev.0.be, %while.cond.backedge ]
  %hexdump.0 = phi i8 [ 0, %entry ], [ %hexdump.0.be, %while.cond.backedge ]
  %passinarg.0 = phi i8* [ null, %entry ], [ %passinarg.0.be, %while.cond.backedge ]
  %pkey_op.0 = phi i32 [ 16, %entry ], [ %pkey_op.0.be, %while.cond.backedge ]
  %key_type.0 = phi i32 [ 1, %entry ], [ %key_type.0.be, %while.cond.backedge ]
  %engine_impl.0 = phi i32 [ 0, %entry ], [ %engine_impl.0.be, %while.cond.backedge ]
  %inkey.0 = phi i8* [ null, %entry ], [ %inkey.0.be, %while.cond.backedge ]
  %peerkey.0 = phi i8* [ null, %entry ], [ %peerkey.0.be, %while.cond.backedge ]
  %kdfalg.0 = phi i8* [ null, %entry ], [ %kdfalg.0.be, %while.cond.backedge ]
  %digestname.0 = phi i8* [ null, %entry ], [ %digestname.0.be, %while.cond.backedge ]
  %kdflen.0 = phi i32 [ 0, %entry ], [ %kdflen.0.be, %while.cond.backedge ]
  %pkeyopts.0 = phi %struct.stack_st_OPENSSL_STRING* [ null, %entry ], [ %pkeyopts.0.be, %while.cond.backedge ]
  %pkeyopts_passin.0 = phi %struct.stack_st_OPENSSL_STRING* [ null, %entry ], [ %pkeyopts_passin.0.be, %while.cond.backedge ]
  %rawin.0 = phi i32 [ 0, %entry ], [ %rawin.0.be, %while.cond.backedge ]
  %sigfile.0 = phi i8* [ null, %entry ], [ %sigfile.0.be, %while.cond.backedge ]
  %outfile.0 = phi i8* [ null, %entry ], [ %outfile.0.be, %while.cond.backedge ]
  %infile.0 = phi i8* [ null, %entry ], [ %infile.0.be, %while.cond.backedge ]
  %e.0 = phi %struct.engine_st* [ null, %entry ], [ %e.0.be, %while.cond.backedge ]
  %conf.0 = phi %struct.conf_st* [ null, %entry ], [ %conf.0.be, %while.cond.backedge ]
  %call2 = call i32 @opt_next() #8
  switch i32 %call2, label %while.cond.backedge [
    i32 0, label %while.end
    i32 13, label %sw.bb63
    i32 -1, label %opthelp
    i32 1, label %sw.bb4
    i32 4, label %sw.bb5
    i32 5, label %sw.bb7
    i32 17, label %sw.bb9
    i32 3, label %sw.bb11
    i32 18, label %sw.bb12
    i32 19, label %sw.bb14
    i32 20, label %sw.bb16
    i32 21, label %sw.bb18
    i32 22, label %sw.bb21
    i32 1607, label %sw.bb91
    i32 1606, label %sw.bb90
    i32 1501, label %sw.bb28
    i32 1502, label %sw.bb28
    i32 1605, label %sw.bb33
    i32 24, label %sw.bb76
    i32 23, label %sw.bb64
    i32 1601, label %sw.bb40
    i32 1602, label %sw.bb40
    i32 1603, label %sw.bb40
    i32 2, label %sw.bb45
    i32 6, label %sw.bb48
    i32 7, label %sw.bb49
    i32 8, label %sw.bb50
    i32 9, label %sw.bb51
    i32 10, label %sw.bb52
    i32 11, label %sw.bb53
    i32 12, label %sw.bb54
    i32 14, label %sw.bb55
    i32 15, label %sw.bb56
    i32 16, label %sw.bb57
    i32 25, label %sw.bb58
    i32 26, label %sw.bb60
  ]

while.cond.backedge:                              ; preds = %while.cond, %lor.lhs.false81, %lor.lhs.false, %sw.bb40, %sw.bb33, %sw.bb28, %sw.bb21, %sw.bb18, %sw.bb91, %sw.bb90, %sw.bb63, %sw.bb60, %sw.bb58, %sw.bb57, %sw.bb56, %sw.bb55, %sw.bb54, %sw.bb53, %sw.bb52, %sw.bb51, %sw.bb50, %sw.bb49, %sw.bb48, %sw.bb45, %sw.bb16, %sw.bb14, %sw.bb12, %sw.bb11, %sw.bb9, %sw.bb7, %sw.bb5
  %asn1parse.0.be = phi i8 [ %asn1parse.0, %sw.bb63 ], [ %asn1parse.0, %sw.bb60 ], [ %asn1parse.0, %sw.bb58 ], [ %asn1parse.0, %sw.bb57 ], [ %asn1parse.0, %sw.bb56 ], [ %asn1parse.0, %sw.bb55 ], [ %asn1parse.0, %sw.bb54 ], [ %asn1parse.0, %sw.bb53 ], [ %asn1parse.0, %sw.bb52 ], [ %asn1parse.0, %sw.bb51 ], [ 1, %sw.bb50 ], [ %asn1parse.0, %sw.bb49 ], [ %asn1parse.0, %sw.bb48 ], [ %asn1parse.0, %sw.bb45 ], [ %asn1parse.0, %sw.bb40 ], [ %asn1parse.0, %lor.lhs.false ], [ %asn1parse.0, %lor.lhs.false81 ], [ %asn1parse.0, %sw.bb33 ], [ %asn1parse.0, %sw.bb28 ], [ %asn1parse.0, %sw.bb90 ], [ %asn1parse.0, %sw.bb91 ], [ %asn1parse.0, %sw.bb21 ], [ %asn1parse.0, %sw.bb18 ], [ %asn1parse.0, %sw.bb16 ], [ %asn1parse.0, %sw.bb14 ], [ %asn1parse.0, %sw.bb12 ], [ %asn1parse.0, %sw.bb11 ], [ %asn1parse.0, %sw.bb9 ], [ %asn1parse.0, %sw.bb7 ], [ %asn1parse.0, %sw.bb5 ], [ %asn1parse.0, %while.cond ]
  %rev.0.be = phi i8 [ 1, %sw.bb63 ], [ %rev.0, %sw.bb60 ], [ %rev.0, %sw.bb58 ], [ %rev.0, %sw.bb57 ], [ %rev.0, %sw.bb56 ], [ %rev.0, %sw.bb55 ], [ %rev.0, %sw.bb54 ], [ %rev.0, %sw.bb53 ], [ %rev.0, %sw.bb52 ], [ %rev.0, %sw.bb51 ], [ %rev.0, %sw.bb50 ], [ %rev.0, %sw.bb49 ], [ %rev.0, %sw.bb48 ], [ %rev.0, %sw.bb45 ], [ %rev.0, %sw.bb40 ], [ %rev.0, %lor.lhs.false ], [ %rev.0, %lor.lhs.false81 ], [ %rev.0, %sw.bb33 ], [ %rev.0, %sw.bb28 ], [ %rev.0, %sw.bb90 ], [ %rev.0, %sw.bb91 ], [ %rev.0, %sw.bb21 ], [ %rev.0, %sw.bb18 ], [ %rev.0, %sw.bb16 ], [ %rev.0, %sw.bb14 ], [ %rev.0, %sw.bb12 ], [ %rev.0, %sw.bb11 ], [ %rev.0, %sw.bb9 ], [ %rev.0, %sw.bb7 ], [ %rev.0, %sw.bb5 ], [ %rev.0, %while.cond ]
  %hexdump.0.be = phi i8 [ %hexdump.0, %sw.bb63 ], [ %hexdump.0, %sw.bb60 ], [ %hexdump.0, %sw.bb58 ], [ %hexdump.0, %sw.bb57 ], [ %hexdump.0, %sw.bb56 ], [ %hexdump.0, %sw.bb55 ], [ %hexdump.0, %sw.bb54 ], [ %hexdump.0, %sw.bb53 ], [ %hexdump.0, %sw.bb52 ], [ 1, %sw.bb51 ], [ %hexdump.0, %sw.bb50 ], [ %hexdump.0, %sw.bb49 ], [ %hexdump.0, %sw.bb48 ], [ %hexdump.0, %sw.bb45 ], [ %hexdump.0, %sw.bb40 ], [ %hexdump.0, %lor.lhs.false ], [ %hexdump.0, %lor.lhs.false81 ], [ %hexdump.0, %sw.bb33 ], [ %hexdump.0, %sw.bb28 ], [ %hexdump.0, %sw.bb90 ], [ %hexdump.0, %sw.bb91 ], [ %hexdump.0, %sw.bb21 ], [ %hexdump.0, %sw.bb18 ], [ %hexdump.0, %sw.bb16 ], [ %hexdump.0, %sw.bb14 ], [ %hexdump.0, %sw.bb12 ], [ %hexdump.0, %sw.bb11 ], [ %hexdump.0, %sw.bb9 ], [ %hexdump.0, %sw.bb7 ], [ %hexdump.0, %sw.bb5 ], [ %hexdump.0, %while.cond ]
  %passinarg.0.be = phi i8* [ %passinarg.0, %sw.bb63 ], [ %passinarg.0, %sw.bb60 ], [ %passinarg.0, %sw.bb58 ], [ %passinarg.0, %sw.bb57 ], [ %passinarg.0, %sw.bb56 ], [ %passinarg.0, %sw.bb55 ], [ %passinarg.0, %sw.bb54 ], [ %passinarg.0, %sw.bb53 ], [ %passinarg.0, %sw.bb52 ], [ %passinarg.0, %sw.bb51 ], [ %passinarg.0, %sw.bb50 ], [ %passinarg.0, %sw.bb49 ], [ %passinarg.0, %sw.bb48 ], [ %passinarg.0, %sw.bb45 ], [ %passinarg.0, %sw.bb40 ], [ %passinarg.0, %lor.lhs.false ], [ %passinarg.0, %lor.lhs.false81 ], [ %passinarg.0, %sw.bb33 ], [ %passinarg.0, %sw.bb28 ], [ %passinarg.0, %sw.bb90 ], [ %passinarg.0, %sw.bb91 ], [ %passinarg.0, %sw.bb21 ], [ %passinarg.0, %sw.bb18 ], [ %call17, %sw.bb16 ], [ %passinarg.0, %sw.bb14 ], [ %passinarg.0, %sw.bb12 ], [ %passinarg.0, %sw.bb11 ], [ %passinarg.0, %sw.bb9 ], [ %passinarg.0, %sw.bb7 ], [ %passinarg.0, %sw.bb5 ], [ %passinarg.0, %while.cond ]
  %pkey_op.0.be = phi i32 [ %pkey_op.0, %sw.bb63 ], [ %pkey_op.0, %sw.bb60 ], [ 2048, %sw.bb58 ], [ 2048, %sw.bb57 ], [ 1024, %sw.bb56 ], [ 512, %sw.bb55 ], [ 64, %sw.bb54 ], [ 32, %sw.bb53 ], [ 16, %sw.bb52 ], [ %pkey_op.0, %sw.bb51 ], [ %pkey_op.0, %sw.bb50 ], [ %pkey_op.0, %sw.bb49 ], [ %pkey_op.0, %sw.bb48 ], [ %pkey_op.0, %sw.bb45 ], [ %pkey_op.0, %sw.bb40 ], [ %pkey_op.0, %lor.lhs.false ], [ %pkey_op.0, %lor.lhs.false81 ], [ %pkey_op.0, %sw.bb33 ], [ %pkey_op.0, %sw.bb28 ], [ %pkey_op.0, %sw.bb90 ], [ %pkey_op.0, %sw.bb91 ], [ %pkey_op.0, %sw.bb21 ], [ %pkey_op.0, %sw.bb18 ], [ %pkey_op.0, %sw.bb16 ], [ %pkey_op.0, %sw.bb14 ], [ %pkey_op.0, %sw.bb12 ], [ %pkey_op.0, %sw.bb11 ], [ %pkey_op.0, %sw.bb9 ], [ %pkey_op.0, %sw.bb7 ], [ %pkey_op.0, %sw.bb5 ], [ %pkey_op.0, %while.cond ]
  %key_type.0.be = phi i32 [ %key_type.0, %sw.bb63 ], [ %key_type.0, %sw.bb60 ], [ 0, %sw.bb58 ], [ %key_type.0, %sw.bb57 ], [ %key_type.0, %sw.bb56 ], [ %key_type.0, %sw.bb55 ], [ %key_type.0, %sw.bb54 ], [ %key_type.0, %sw.bb53 ], [ %key_type.0, %sw.bb52 ], [ %key_type.0, %sw.bb51 ], [ %key_type.0, %sw.bb50 ], [ 3, %sw.bb49 ], [ 2, %sw.bb48 ], [ %key_type.0, %sw.bb45 ], [ %key_type.0, %sw.bb40 ], [ %key_type.0, %lor.lhs.false ], [ %key_type.0, %lor.lhs.false81 ], [ %key_type.0, %sw.bb33 ], [ %key_type.0, %sw.bb28 ], [ %key_type.0, %sw.bb90 ], [ %key_type.0, %sw.bb91 ], [ %key_type.0, %sw.bb21 ], [ %key_type.0, %sw.bb18 ], [ %key_type.0, %sw.bb16 ], [ %key_type.0, %sw.bb14 ], [ %key_type.0, %sw.bb12 ], [ %key_type.0, %sw.bb11 ], [ %key_type.0, %sw.bb9 ], [ %key_type.0, %sw.bb7 ], [ %key_type.0, %sw.bb5 ], [ %key_type.0, %while.cond ]
  %engine_impl.0.be = phi i32 [ %engine_impl.0, %sw.bb63 ], [ %engine_impl.0, %sw.bb60 ], [ %engine_impl.0, %sw.bb58 ], [ %engine_impl.0, %sw.bb57 ], [ %engine_impl.0, %sw.bb56 ], [ %engine_impl.0, %sw.bb55 ], [ %engine_impl.0, %sw.bb54 ], [ %engine_impl.0, %sw.bb53 ], [ %engine_impl.0, %sw.bb52 ], [ %engine_impl.0, %sw.bb51 ], [ %engine_impl.0, %sw.bb50 ], [ %engine_impl.0, %sw.bb49 ], [ %engine_impl.0, %sw.bb48 ], [ %engine_impl.0, %sw.bb45 ], [ %engine_impl.0, %sw.bb40 ], [ %engine_impl.0, %lor.lhs.false ], [ %engine_impl.0, %lor.lhs.false81 ], [ %engine_impl.0, %sw.bb33 ], [ %engine_impl.0, %sw.bb28 ], [ %engine_impl.0, %sw.bb90 ], [ %engine_impl.0, %sw.bb91 ], [ %engine_impl.0, %sw.bb21 ], [ %engine_impl.0, %sw.bb18 ], [ %engine_impl.0, %sw.bb16 ], [ %engine_impl.0, %sw.bb14 ], [ %engine_impl.0, %sw.bb12 ], [ 1, %sw.bb11 ], [ %engine_impl.0, %sw.bb9 ], [ %engine_impl.0, %sw.bb7 ], [ %engine_impl.0, %sw.bb5 ], [ %engine_impl.0, %while.cond ]
  %inkey.0.be = phi i8* [ %inkey.0, %sw.bb63 ], [ %inkey.0, %sw.bb60 ], [ %inkey.0, %sw.bb58 ], [ %inkey.0, %sw.bb57 ], [ %inkey.0, %sw.bb56 ], [ %inkey.0, %sw.bb55 ], [ %inkey.0, %sw.bb54 ], [ %inkey.0, %sw.bb53 ], [ %inkey.0, %sw.bb52 ], [ %inkey.0, %sw.bb51 ], [ %inkey.0, %sw.bb50 ], [ %inkey.0, %sw.bb49 ], [ %inkey.0, %sw.bb48 ], [ %inkey.0, %sw.bb45 ], [ %inkey.0, %sw.bb40 ], [ %inkey.0, %lor.lhs.false ], [ %inkey.0, %lor.lhs.false81 ], [ %inkey.0, %sw.bb33 ], [ %inkey.0, %sw.bb28 ], [ %inkey.0, %sw.bb90 ], [ %inkey.0, %sw.bb91 ], [ %inkey.0, %sw.bb21 ], [ %inkey.0, %sw.bb18 ], [ %inkey.0, %sw.bb16 ], [ %inkey.0, %sw.bb14 ], [ %call13, %sw.bb12 ], [ %inkey.0, %sw.bb11 ], [ %inkey.0, %sw.bb9 ], [ %inkey.0, %sw.bb7 ], [ %inkey.0, %sw.bb5 ], [ %inkey.0, %while.cond ]
  %peerkey.0.be = phi i8* [ %peerkey.0, %sw.bb63 ], [ %peerkey.0, %sw.bb60 ], [ %peerkey.0, %sw.bb58 ], [ %peerkey.0, %sw.bb57 ], [ %peerkey.0, %sw.bb56 ], [ %peerkey.0, %sw.bb55 ], [ %peerkey.0, %sw.bb54 ], [ %peerkey.0, %sw.bb53 ], [ %peerkey.0, %sw.bb52 ], [ %peerkey.0, %sw.bb51 ], [ %peerkey.0, %sw.bb50 ], [ %peerkey.0, %sw.bb49 ], [ %peerkey.0, %sw.bb48 ], [ %peerkey.0, %sw.bb45 ], [ %peerkey.0, %sw.bb40 ], [ %peerkey.0, %lor.lhs.false ], [ %peerkey.0, %lor.lhs.false81 ], [ %peerkey.0, %sw.bb33 ], [ %peerkey.0, %sw.bb28 ], [ %peerkey.0, %sw.bb90 ], [ %peerkey.0, %sw.bb91 ], [ %peerkey.0, %sw.bb21 ], [ %peerkey.0, %sw.bb18 ], [ %peerkey.0, %sw.bb16 ], [ %call15, %sw.bb14 ], [ %peerkey.0, %sw.bb12 ], [ %peerkey.0, %sw.bb11 ], [ %peerkey.0, %sw.bb9 ], [ %peerkey.0, %sw.bb7 ], [ %peerkey.0, %sw.bb5 ], [ %peerkey.0, %while.cond ]
  %kdfalg.0.be = phi i8* [ %kdfalg.0, %sw.bb63 ], [ %kdfalg.0, %sw.bb60 ], [ %call59, %sw.bb58 ], [ %kdfalg.0, %sw.bb57 ], [ %kdfalg.0, %sw.bb56 ], [ %kdfalg.0, %sw.bb55 ], [ %kdfalg.0, %sw.bb54 ], [ %kdfalg.0, %sw.bb53 ], [ %kdfalg.0, %sw.bb52 ], [ %kdfalg.0, %sw.bb51 ], [ %kdfalg.0, %sw.bb50 ], [ %kdfalg.0, %sw.bb49 ], [ %kdfalg.0, %sw.bb48 ], [ %kdfalg.0, %sw.bb45 ], [ %kdfalg.0, %sw.bb40 ], [ %kdfalg.0, %lor.lhs.false ], [ %kdfalg.0, %lor.lhs.false81 ], [ %kdfalg.0, %sw.bb33 ], [ %kdfalg.0, %sw.bb28 ], [ %kdfalg.0, %sw.bb90 ], [ %kdfalg.0, %sw.bb91 ], [ %kdfalg.0, %sw.bb21 ], [ %kdfalg.0, %sw.bb18 ], [ %kdfalg.0, %sw.bb16 ], [ %kdfalg.0, %sw.bb14 ], [ %kdfalg.0, %sw.bb12 ], [ %kdfalg.0, %sw.bb11 ], [ %kdfalg.0, %sw.bb9 ], [ %kdfalg.0, %sw.bb7 ], [ %kdfalg.0, %sw.bb5 ], [ %kdfalg.0, %while.cond ]
  %digestname.0.be = phi i8* [ %digestname.0, %sw.bb63 ], [ %digestname.0, %sw.bb60 ], [ %digestname.0, %sw.bb58 ], [ %digestname.0, %sw.bb57 ], [ %digestname.0, %sw.bb56 ], [ %digestname.0, %sw.bb55 ], [ %digestname.0, %sw.bb54 ], [ %digestname.0, %sw.bb53 ], [ %digestname.0, %sw.bb52 ], [ %digestname.0, %sw.bb51 ], [ %digestname.0, %sw.bb50 ], [ %digestname.0, %sw.bb49 ], [ %digestname.0, %sw.bb48 ], [ %digestname.0, %sw.bb45 ], [ %digestname.0, %sw.bb40 ], [ %digestname.0, %lor.lhs.false ], [ %digestname.0, %lor.lhs.false81 ], [ %digestname.0, %sw.bb33 ], [ %digestname.0, %sw.bb28 ], [ %digestname.0, %sw.bb90 ], [ %call92, %sw.bb91 ], [ %digestname.0, %sw.bb21 ], [ %digestname.0, %sw.bb18 ], [ %digestname.0, %sw.bb16 ], [ %digestname.0, %sw.bb14 ], [ %digestname.0, %sw.bb12 ], [ %digestname.0, %sw.bb11 ], [ %digestname.0, %sw.bb9 ], [ %digestname.0, %sw.bb7 ], [ %digestname.0, %sw.bb5 ], [ %digestname.0, %while.cond ]
  %kdflen.0.be = phi i32 [ %kdflen.0, %sw.bb63 ], [ %call62, %sw.bb60 ], [ %kdflen.0, %sw.bb58 ], [ %kdflen.0, %sw.bb57 ], [ %kdflen.0, %sw.bb56 ], [ %kdflen.0, %sw.bb55 ], [ %kdflen.0, %sw.bb54 ], [ %kdflen.0, %sw.bb53 ], [ %kdflen.0, %sw.bb52 ], [ %kdflen.0, %sw.bb51 ], [ %kdflen.0, %sw.bb50 ], [ %kdflen.0, %sw.bb49 ], [ %kdflen.0, %sw.bb48 ], [ %kdflen.0, %sw.bb45 ], [ %kdflen.0, %sw.bb40 ], [ %kdflen.0, %lor.lhs.false ], [ %kdflen.0, %lor.lhs.false81 ], [ %kdflen.0, %sw.bb33 ], [ %kdflen.0, %sw.bb28 ], [ %kdflen.0, %sw.bb90 ], [ %kdflen.0, %sw.bb91 ], [ %kdflen.0, %sw.bb21 ], [ %kdflen.0, %sw.bb18 ], [ %kdflen.0, %sw.bb16 ], [ %kdflen.0, %sw.bb14 ], [ %kdflen.0, %sw.bb12 ], [ %kdflen.0, %sw.bb11 ], [ %kdflen.0, %sw.bb9 ], [ %kdflen.0, %sw.bb7 ], [ %kdflen.0, %sw.bb5 ], [ %kdflen.0, %while.cond ]
  %pkeyopts.0.be = phi %struct.stack_st_OPENSSL_STRING* [ %pkeyopts.0, %sw.bb63 ], [ %pkeyopts.0, %sw.bb60 ], [ %pkeyopts.0, %sw.bb58 ], [ %pkeyopts.0, %sw.bb57 ], [ %pkeyopts.0, %sw.bb56 ], [ %pkeyopts.0, %sw.bb55 ], [ %pkeyopts.0, %sw.bb54 ], [ %pkeyopts.0, %sw.bb53 ], [ %pkeyopts.0, %sw.bb52 ], [ %pkeyopts.0, %sw.bb51 ], [ %pkeyopts.0, %sw.bb50 ], [ %pkeyopts.0, %sw.bb49 ], [ %pkeyopts.0, %sw.bb48 ], [ %pkeyopts.0, %sw.bb45 ], [ %pkeyopts.0, %sw.bb40 ], [ %pkeyopts.1, %lor.lhs.false ], [ %pkeyopts.0, %lor.lhs.false81 ], [ %pkeyopts.0, %sw.bb33 ], [ %pkeyopts.0, %sw.bb28 ], [ %pkeyopts.0, %sw.bb90 ], [ %pkeyopts.0, %sw.bb91 ], [ %pkeyopts.0, %sw.bb21 ], [ %pkeyopts.0, %sw.bb18 ], [ %pkeyopts.0, %sw.bb16 ], [ %pkeyopts.0, %sw.bb14 ], [ %pkeyopts.0, %sw.bb12 ], [ %pkeyopts.0, %sw.bb11 ], [ %pkeyopts.0, %sw.bb9 ], [ %pkeyopts.0, %sw.bb7 ], [ %pkeyopts.0, %sw.bb5 ], [ %pkeyopts.0, %while.cond ]
  %pkeyopts_passin.0.be = phi %struct.stack_st_OPENSSL_STRING* [ %pkeyopts_passin.0, %sw.bb63 ], [ %pkeyopts_passin.0, %sw.bb60 ], [ %pkeyopts_passin.0, %sw.bb58 ], [ %pkeyopts_passin.0, %sw.bb57 ], [ %pkeyopts_passin.0, %sw.bb56 ], [ %pkeyopts_passin.0, %sw.bb55 ], [ %pkeyopts_passin.0, %sw.bb54 ], [ %pkeyopts_passin.0, %sw.bb53 ], [ %pkeyopts_passin.0, %sw.bb52 ], [ %pkeyopts_passin.0, %sw.bb51 ], [ %pkeyopts_passin.0, %sw.bb50 ], [ %pkeyopts_passin.0, %sw.bb49 ], [ %pkeyopts_passin.0, %sw.bb48 ], [ %pkeyopts_passin.0, %sw.bb45 ], [ %pkeyopts_passin.0, %sw.bb40 ], [ %pkeyopts_passin.0, %lor.lhs.false ], [ %pkeyopts_passin.1, %lor.lhs.false81 ], [ %pkeyopts_passin.0, %sw.bb33 ], [ %pkeyopts_passin.0, %sw.bb28 ], [ %pkeyopts_passin.0, %sw.bb90 ], [ %pkeyopts_passin.0, %sw.bb91 ], [ %pkeyopts_passin.0, %sw.bb21 ], [ %pkeyopts_passin.0, %sw.bb18 ], [ %pkeyopts_passin.0, %sw.bb16 ], [ %pkeyopts_passin.0, %sw.bb14 ], [ %pkeyopts_passin.0, %sw.bb12 ], [ %pkeyopts_passin.0, %sw.bb11 ], [ %pkeyopts_passin.0, %sw.bb9 ], [ %pkeyopts_passin.0, %sw.bb7 ], [ %pkeyopts_passin.0, %sw.bb5 ], [ %pkeyopts_passin.0, %while.cond ]
  %rawin.0.be = phi i32 [ %rawin.0, %sw.bb63 ], [ %rawin.0, %sw.bb60 ], [ %rawin.0, %sw.bb58 ], [ %rawin.0, %sw.bb57 ], [ %rawin.0, %sw.bb56 ], [ %rawin.0, %sw.bb55 ], [ %rawin.0, %sw.bb54 ], [ %rawin.0, %sw.bb53 ], [ %rawin.0, %sw.bb52 ], [ %rawin.0, %sw.bb51 ], [ %rawin.0, %sw.bb50 ], [ %rawin.0, %sw.bb49 ], [ %rawin.0, %sw.bb48 ], [ %rawin.0, %sw.bb45 ], [ %rawin.0, %sw.bb40 ], [ %rawin.0, %lor.lhs.false ], [ %rawin.0, %lor.lhs.false81 ], [ %rawin.0, %sw.bb33 ], [ %rawin.0, %sw.bb28 ], [ 1, %sw.bb90 ], [ %rawin.0, %sw.bb91 ], [ %rawin.0, %sw.bb21 ], [ %rawin.0, %sw.bb18 ], [ %rawin.0, %sw.bb16 ], [ %rawin.0, %sw.bb14 ], [ %rawin.0, %sw.bb12 ], [ %rawin.0, %sw.bb11 ], [ %rawin.0, %sw.bb9 ], [ %rawin.0, %sw.bb7 ], [ %rawin.0, %sw.bb5 ], [ %rawin.0, %while.cond ]
  %sigfile.0.be = phi i8* [ %sigfile.0, %sw.bb63 ], [ %sigfile.0, %sw.bb60 ], [ %sigfile.0, %sw.bb58 ], [ %sigfile.0, %sw.bb57 ], [ %sigfile.0, %sw.bb56 ], [ %sigfile.0, %sw.bb55 ], [ %sigfile.0, %sw.bb54 ], [ %sigfile.0, %sw.bb53 ], [ %sigfile.0, %sw.bb52 ], [ %sigfile.0, %sw.bb51 ], [ %sigfile.0, %sw.bb50 ], [ %sigfile.0, %sw.bb49 ], [ %sigfile.0, %sw.bb48 ], [ %sigfile.0, %sw.bb45 ], [ %sigfile.0, %sw.bb40 ], [ %sigfile.0, %lor.lhs.false ], [ %sigfile.0, %lor.lhs.false81 ], [ %sigfile.0, %sw.bb33 ], [ %sigfile.0, %sw.bb28 ], [ %sigfile.0, %sw.bb90 ], [ %sigfile.0, %sw.bb91 ], [ %sigfile.0, %sw.bb21 ], [ %sigfile.0, %sw.bb18 ], [ %sigfile.0, %sw.bb16 ], [ %sigfile.0, %sw.bb14 ], [ %sigfile.0, %sw.bb12 ], [ %sigfile.0, %sw.bb11 ], [ %call10, %sw.bb9 ], [ %sigfile.0, %sw.bb7 ], [ %sigfile.0, %sw.bb5 ], [ %sigfile.0, %while.cond ]
  %outfile.0.be = phi i8* [ %outfile.0, %sw.bb63 ], [ %outfile.0, %sw.bb60 ], [ %outfile.0, %sw.bb58 ], [ %outfile.0, %sw.bb57 ], [ %outfile.0, %sw.bb56 ], [ %outfile.0, %sw.bb55 ], [ %outfile.0, %sw.bb54 ], [ %outfile.0, %sw.bb53 ], [ %outfile.0, %sw.bb52 ], [ %outfile.0, %sw.bb51 ], [ %outfile.0, %sw.bb50 ], [ %outfile.0, %sw.bb49 ], [ %outfile.0, %sw.bb48 ], [ %outfile.0, %sw.bb45 ], [ %outfile.0, %sw.bb40 ], [ %outfile.0, %lor.lhs.false ], [ %outfile.0, %lor.lhs.false81 ], [ %outfile.0, %sw.bb33 ], [ %outfile.0, %sw.bb28 ], [ %outfile.0, %sw.bb90 ], [ %outfile.0, %sw.bb91 ], [ %outfile.0, %sw.bb21 ], [ %outfile.0, %sw.bb18 ], [ %outfile.0, %sw.bb16 ], [ %outfile.0, %sw.bb14 ], [ %outfile.0, %sw.bb12 ], [ %outfile.0, %sw.bb11 ], [ %outfile.0, %sw.bb9 ], [ %call8, %sw.bb7 ], [ %outfile.0, %sw.bb5 ], [ %outfile.0, %while.cond ]
  %infile.0.be = phi i8* [ %infile.0, %sw.bb63 ], [ %infile.0, %sw.bb60 ], [ %infile.0, %sw.bb58 ], [ %infile.0, %sw.bb57 ], [ %infile.0, %sw.bb56 ], [ %infile.0, %sw.bb55 ], [ %infile.0, %sw.bb54 ], [ %infile.0, %sw.bb53 ], [ %infile.0, %sw.bb52 ], [ %infile.0, %sw.bb51 ], [ %infile.0, %sw.bb50 ], [ %infile.0, %sw.bb49 ], [ %infile.0, %sw.bb48 ], [ %infile.0, %sw.bb45 ], [ %infile.0, %sw.bb40 ], [ %infile.0, %lor.lhs.false ], [ %infile.0, %lor.lhs.false81 ], [ %infile.0, %sw.bb33 ], [ %infile.0, %sw.bb28 ], [ %infile.0, %sw.bb90 ], [ %infile.0, %sw.bb91 ], [ %infile.0, %sw.bb21 ], [ %infile.0, %sw.bb18 ], [ %infile.0, %sw.bb16 ], [ %infile.0, %sw.bb14 ], [ %infile.0, %sw.bb12 ], [ %infile.0, %sw.bb11 ], [ %infile.0, %sw.bb9 ], [ %infile.0, %sw.bb7 ], [ %call6, %sw.bb5 ], [ %infile.0, %while.cond ]
  %e.0.be = phi %struct.engine_st* [ %e.0, %sw.bb63 ], [ %e.0, %sw.bb60 ], [ %e.0, %sw.bb58 ], [ %e.0, %sw.bb57 ], [ %e.0, %sw.bb56 ], [ %e.0, %sw.bb55 ], [ %e.0, %sw.bb54 ], [ %e.0, %sw.bb53 ], [ %e.0, %sw.bb52 ], [ %e.0, %sw.bb51 ], [ %e.0, %sw.bb50 ], [ %e.0, %sw.bb49 ], [ %e.0, %sw.bb48 ], [ %call47, %sw.bb45 ], [ %e.0, %sw.bb40 ], [ %e.0, %lor.lhs.false ], [ %e.0, %lor.lhs.false81 ], [ %e.0, %sw.bb33 ], [ %e.0, %sw.bb28 ], [ %e.0, %sw.bb90 ], [ %e.0, %sw.bb91 ], [ %e.0, %sw.bb21 ], [ %e.0, %sw.bb18 ], [ %e.0, %sw.bb16 ], [ %e.0, %sw.bb14 ], [ %e.0, %sw.bb12 ], [ %e.0, %sw.bb11 ], [ %e.0, %sw.bb9 ], [ %e.0, %sw.bb7 ], [ %e.0, %sw.bb5 ], [ %e.0, %while.cond ]
  %conf.0.be = phi %struct.conf_st* [ %conf.0, %sw.bb63 ], [ %conf.0, %sw.bb60 ], [ %conf.0, %sw.bb58 ], [ %conf.0, %sw.bb57 ], [ %conf.0, %sw.bb56 ], [ %conf.0, %sw.bb55 ], [ %conf.0, %sw.bb54 ], [ %conf.0, %sw.bb53 ], [ %conf.0, %sw.bb52 ], [ %conf.0, %sw.bb51 ], [ %conf.0, %sw.bb50 ], [ %conf.0, %sw.bb49 ], [ %conf.0, %sw.bb48 ], [ %conf.0, %sw.bb45 ], [ %conf.0, %sw.bb40 ], [ %conf.0, %lor.lhs.false ], [ %conf.0, %lor.lhs.false81 ], [ %call35, %sw.bb33 ], [ %conf.0, %sw.bb28 ], [ %conf.0, %sw.bb90 ], [ %conf.0, %sw.bb91 ], [ %conf.0, %sw.bb21 ], [ %conf.0, %sw.bb18 ], [ %conf.0, %sw.bb16 ], [ %conf.0, %sw.bb14 ], [ %conf.0, %sw.bb12 ], [ %conf.0, %sw.bb11 ], [ %conf.0, %sw.bb9 ], [ %conf.0, %sw.bb7 ], [ %conf.0, %sw.bb5 ], [ %conf.0, %while.cond ]
  br label %while.cond, !llvm.loop !9

opthelp.sink.split:                               ; preds = %if.else133, %if.else, %if.then123, %if.end114, %if.end108, %if.end100
  %.sink1081 = phi i8* [ getelementptr inbounds ([51 x i8], [51 x i8]* @.str.76, i64 0, i64 0), %if.end100 ], [ getelementptr inbounds ([42 x i8], [42 x i8]* @.str.77, i64 0, i64 0), %if.end108 ], [ getelementptr inbounds ([40 x i8], [40 x i8]* @.str.78, i64 0, i64 0), %if.end114 ], [ getelementptr inbounds ([46 x i8], [46 x i8]* @.str.79, i64 0, i64 0), %if.then123 ], [ getelementptr inbounds ([46 x i8], [46 x i8]* @.str.80, i64 0, i64 0), %if.else ], [ getelementptr inbounds ([45 x i8], [45 x i8]* @.str.81, i64 0, i64 0), %if.else133 ]
  %8 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call140 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %8, i8* noundef %.sink1081, i8* noundef %call1) #8
  br label %opthelp

opthelp:                                          ; preds = %while.cond, %sw.bb21, %sw.bb18, %opthelp.sink.split, %while.end
  %9 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call3 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %9, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.74, i64 0, i64 0), i8* noundef %call1) #8
  br label %if.then438

sw.bb4:                                           ; preds = %while.cond
  call void @opt_help(%struct.options_st* noundef getelementptr inbounds ([41 x %struct.options_st], [41 x %struct.options_st]* @pkeyutl_options, i64 0, i64 0)) #8
  br label %cleanup443

sw.bb5:                                           ; preds = %while.cond
  %call6 = call i8* @opt_arg() #8
  br label %while.cond.backedge

sw.bb7:                                           ; preds = %while.cond
  %call8 = call i8* @opt_arg() #8
  br label %while.cond.backedge

sw.bb9:                                           ; preds = %while.cond
  %call10 = call i8* @opt_arg() #8
  br label %while.cond.backedge

sw.bb11:                                          ; preds = %while.cond
  br label %while.cond.backedge

sw.bb12:                                          ; preds = %while.cond
  %call13 = call i8* @opt_arg() #8
  br label %while.cond.backedge

sw.bb14:                                          ; preds = %while.cond
  %call15 = call i8* @opt_arg() #8
  br label %while.cond.backedge

sw.bb16:                                          ; preds = %while.cond
  %call17 = call i8* @opt_arg() #8
  br label %while.cond.backedge

sw.bb18:                                          ; preds = %while.cond
  %call19 = call i8* @opt_arg() #8
  %call20 = call i32 @opt_format(i8* noundef %call19, i64 noundef 1982, i32* noundef nonnull %peerform) #8
  %tobool.not = icmp eq i32 %call20, 0
  br i1 %tobool.not, label %opthelp, label %while.cond.backedge

sw.bb21:                                          ; preds = %while.cond
  %call22 = call i8* @opt_arg() #8
  %call23 = call i32 @opt_format(i8* noundef %call22, i64 noundef 1982, i32* noundef nonnull %keyform) #8
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %opthelp, label %while.cond.backedge

sw.bb28:                                          ; preds = %while.cond, %while.cond
  %call29 = call i32 @opt_rand(i32 noundef %call2) #8
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.then438, label %while.cond.backedge

sw.bb33:                                          ; preds = %while.cond
  %call34 = call i8* @opt_arg() #8
  %call35 = call %struct.conf_st* @app_load_config_modules(i8* noundef %call34) #8
  %cmp36 = icmp eq %struct.conf_st* %call35, null
  br i1 %cmp36, label %if.then438, label %while.cond.backedge

sw.bb40:                                          ; preds = %while.cond, %while.cond, %while.cond
  %call41 = call i32 @opt_provider(i32 noundef %call2) #8
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.then438, label %while.cond.backedge

sw.bb45:                                          ; preds = %while.cond
  %call46 = call i8* @opt_arg() #8
  %call47 = call %struct.engine_st* @setup_engine_methods(i8* noundef %call46, i32 noundef -1, i32 noundef 0) #8
  br label %while.cond.backedge

sw.bb48:                                          ; preds = %while.cond
  br label %while.cond.backedge

sw.bb49:                                          ; preds = %while.cond
  br label %while.cond.backedge

sw.bb50:                                          ; preds = %while.cond
  br label %while.cond.backedge

sw.bb51:                                          ; preds = %while.cond
  br label %while.cond.backedge

sw.bb52:                                          ; preds = %while.cond
  br label %while.cond.backedge

sw.bb53:                                          ; preds = %while.cond
  br label %while.cond.backedge

sw.bb54:                                          ; preds = %while.cond
  br label %while.cond.backedge

sw.bb55:                                          ; preds = %while.cond
  br label %while.cond.backedge

sw.bb56:                                          ; preds = %while.cond
  br label %while.cond.backedge

sw.bb57:                                          ; preds = %while.cond
  br label %while.cond.backedge

sw.bb58:                                          ; preds = %while.cond
  %call59 = call i8* @opt_arg() #8
  br label %while.cond.backedge

sw.bb60:                                          ; preds = %while.cond
  %call61 = call i8* @opt_arg() #8
  %call62 = call i32 @atoi(i8* noundef %call61) #9
  br label %while.cond.backedge

sw.bb63:                                          ; preds = %while.cond
  br label %while.cond.backedge

sw.bb64:                                          ; preds = %while.cond
  %cmp65 = icmp eq %struct.stack_st_OPENSSL_STRING* %pkeyopts.0, null
  br i1 %cmp65, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %sw.bb64
  %call66 = call %struct.stack_st* @OPENSSL_sk_new_null() #8
  %10 = bitcast %struct.stack_st* %call66 to %struct.stack_st_OPENSSL_STRING*
  %cmp67 = icmp eq %struct.stack_st* %call66, null
  br i1 %cmp67, label %if.then73, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %sw.bb64
  %pkeyopts.1 = phi %struct.stack_st_OPENSSL_STRING* [ %10, %land.lhs.true ], [ %pkeyopts.0, %sw.bb64 ]
  %call68 = call fastcc %struct.stack_st* @ossl_check_OPENSSL_STRING_sk_type(%struct.stack_st_OPENSSL_STRING* noundef %pkeyopts.1) #10
  %call69 = call i8* @opt_arg() #8
  %call71 = call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call68, i8* noundef %call69) #8
  %cmp72 = icmp eq i32 %call71, 0
  br i1 %cmp72, label %if.then73, label %while.cond.backedge

if.then73:                                        ; preds = %lor.lhs.false, %land.lhs.true
  %pkeyopts.2 = phi %struct.stack_st_OPENSSL_STRING* [ null, %land.lhs.true ], [ %pkeyopts.1, %lor.lhs.false ]
  %11 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call74 = call i32 @BIO_puts(%struct.bio_st* noundef %11, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.75, i64 0, i64 0)) #8
  br label %if.then438

sw.bb76:                                          ; preds = %while.cond
  %cmp77 = icmp eq %struct.stack_st_OPENSSL_STRING* %pkeyopts_passin.0, null
  br i1 %cmp77, label %land.lhs.true78, label %lor.lhs.false81

land.lhs.true78:                                  ; preds = %sw.bb76
  %call79 = call %struct.stack_st* @OPENSSL_sk_new_null() #8
  %12 = bitcast %struct.stack_st* %call79 to %struct.stack_st_OPENSSL_STRING*
  %cmp80 = icmp eq %struct.stack_st* %call79, null
  br i1 %cmp80, label %if.then87, label %lor.lhs.false81

lor.lhs.false81:                                  ; preds = %land.lhs.true78, %sw.bb76
  %pkeyopts_passin.1 = phi %struct.stack_st_OPENSSL_STRING* [ %12, %land.lhs.true78 ], [ %pkeyopts_passin.0, %sw.bb76 ]
  %call82 = call fastcc %struct.stack_st* @ossl_check_OPENSSL_STRING_sk_type(%struct.stack_st_OPENSSL_STRING* noundef %pkeyopts_passin.1) #10
  %call83 = call i8* @opt_arg() #8
  %call85 = call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call82, i8* noundef %call83) #8
  %cmp86 = icmp eq i32 %call85, 0
  br i1 %cmp86, label %if.then87, label %while.cond.backedge

if.then87:                                        ; preds = %lor.lhs.false81, %land.lhs.true78
  %pkeyopts_passin.2 = phi %struct.stack_st_OPENSSL_STRING* [ null, %land.lhs.true78 ], [ %pkeyopts_passin.1, %lor.lhs.false81 ]
  %13 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call88 = call i32 @BIO_puts(%struct.bio_st* noundef %13, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.75, i64 0, i64 0)) #8
  br label %if.then438

sw.bb90:                                          ; preds = %while.cond
  br label %while.cond.backedge

sw.bb91:                                          ; preds = %while.cond
  %call92 = call i8* @opt_arg() #8
  br label %while.cond.backedge

while.end:                                        ; preds = %while.cond
  %call93 = call i32 @opt_num_rest() #8
  %cmp94.not = icmp eq i32 %call93, 0
  br i1 %cmp94.not, label %if.end96, label %opthelp

if.end96:                                         ; preds = %while.end
  %call97 = call i32 @app_RAND_load() #8
  %tobool98.not = icmp eq i32 %call97, 0
  br i1 %tobool98.not, label %if.then438, label %if.end100

if.end100:                                        ; preds = %if.end96
  %tobool101 = icmp ne i32 %rawin.0, 0
  %cmp103 = icmp ne i32 %pkey_op.0, 16
  %or.cond = select i1 %tobool101, i1 %cmp103, i1 false
  %cmp105 = icmp ne i32 %pkey_op.0, 32
  %or.cond486 = select i1 %or.cond, i1 %cmp105, i1 false
  br i1 %or.cond486, label %opthelp.sink.split, label %if.end108

if.end108:                                        ; preds = %if.end100
  %cmp109 = icmp eq i8* %digestname.0, null
  %or.cond487 = select i1 %cmp109, i1 true, i1 %tobool101
  br i1 %or.cond487, label %if.end114, label %opthelp.sink.split

if.end114:                                        ; preds = %if.end108
  %tobool117 = icmp ne i8 %rev.0, 0
  %or.cond488 = select i1 %tobool101, i1 %tobool117, i1 false
  br i1 %or.cond488, label %opthelp.sink.split, label %if.end120

if.end120:                                        ; preds = %if.end114
  %cmp121.not = icmp eq i8* %kdfalg.0, null
  br i1 %cmp121.not, label %if.else, label %if.then123

if.then123:                                       ; preds = %if.end120
  %cmp124 = icmp eq i32 %kdflen.0, 0
  br i1 %cmp124, label %opthelp.sink.split, label %if.end143

if.else:                                          ; preds = %if.end120
  %cmp129 = icmp eq i8* %inkey.0, null
  br i1 %cmp129, label %opthelp.sink.split, label %if.else133

if.else133:                                       ; preds = %if.else
  %cmp134 = icmp ne i8* %peerkey.0, null
  %cmp137 = icmp ne i32 %pkey_op.0, 2048
  %or.cond489 = select i1 %cmp134, i1 %cmp137, i1 false
  br i1 %or.cond489, label %opthelp.sink.split, label %if.end143

if.end143:                                        ; preds = %if.else133, %if.then123
  br i1 %tobool101, label %if.then145, label %if.end152

if.then145:                                       ; preds = %if.end143
  %call146 = call %struct.evp_md_ctx_st* @EVP_MD_CTX_new() #8
  %cmp147 = icmp eq %struct.evp_md_ctx_st* %call146, null
  br i1 %cmp147, label %if.then149, label %if.end152

if.then149:                                       ; preds = %if.then145
  %14 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call150 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %14, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.82, i64 0, i64 0)) #8
  br label %if.then438

if.end152:                                        ; preds = %if.then145, %if.end143
  %mctx.0 = phi %struct.evp_md_ctx_st* [ %call146, %if.then145 ], [ null, %if.end143 ]
  %15 = load i32, i32* %keyform, align 4, !tbaa !7
  %call153 = call i8* @app_get0_propq() #8
  %call154 = call fastcc %struct.evp_pkey_ctx_st* @init_ctx(i8* noundef %kdfalg.0, i32* noundef nonnull %keysize, i8* noundef %inkey.0, i32 noundef %15, i32 noundef %key_type.0, i8* noundef %passinarg.0, i32 noundef %pkey_op.0, %struct.engine_st* noundef %e.0, i32 noundef %engine_impl.0, i32 noundef %rawin.0, %struct.evp_pkey_st** noundef nonnull %pkey, %struct.evp_md_ctx_st* noundef %mctx.0, i8* noundef %digestname.0, %struct.ossl_lib_ctx_st* noundef %call, i8* noundef %call153) #10
  %cmp155 = icmp eq %struct.evp_pkey_ctx_st* %call154, null
  br i1 %cmp155, label %if.then157, label %if.end159

if.then157:                                       ; preds = %if.end152
  %16 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call158 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %16, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.83, i64 0, i64 0), i8* noundef %call1) #8
  br label %if.then438

if.end159:                                        ; preds = %if.end152
  %cmp160.not = icmp eq i8* %peerkey.0, null
  br i1 %cmp160.not, label %if.end167, label %land.lhs.true162

land.lhs.true162:                                 ; preds = %if.end159
  %17 = load i32, i32* %peerform, align 4, !tbaa !7
  %call163 = call fastcc i32 @setup_peer(%struct.evp_pkey_ctx_st* noundef nonnull %call154, i32 noundef %17, i8* noundef nonnull %peerkey.0, %struct.engine_st* noundef %e.0) #10
  %tobool164.not = icmp eq i32 %call163, 0
  br i1 %tobool164.not, label %if.then165, label %if.end167

if.then165:                                       ; preds = %land.lhs.true162
  %18 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call166 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %18, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.84, i64 0, i64 0), i8* noundef %call1) #8
  br label %if.then438

if.end167:                                        ; preds = %land.lhs.true162, %if.end159
  %cmp168.not = icmp eq %struct.stack_st_OPENSSL_STRING* %pkeyopts.0, null
  br i1 %cmp168.not, label %if.end187, label %if.then170

if.then170:                                       ; preds = %if.end167
  %call171 = call fastcc %struct.stack_st* @ossl_check_const_OPENSSL_STRING_sk_type(%struct.stack_st_OPENSSL_STRING* noundef nonnull %pkeyopts.0) #10
  %call172 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call171) #8
  %cmp173837 = icmp sgt i32 %call172, 0
  br i1 %cmp173837, label %for.body, label %if.end187

for.cond:                                         ; preds = %for.body
  %exitcond.not = icmp eq i32 %inc, %call172
  br i1 %exitcond.not, label %if.end187, label %for.body, !llvm.loop !11

for.body:                                         ; preds = %if.then170, %for.cond
  %i.0838 = phi i32 [ %inc, %for.cond ], [ 0, %if.then170 ]
  %call176 = call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call171, i32 noundef %i.0838) #8
  %call177 = call i32 @pkey_ctrl_string(%struct.evp_pkey_ctx_st* noundef %call154, i8* noundef %call176) #8
  %cmp178 = icmp slt i32 %call177, 1
  %inc = add nuw nsw i32 %i.0838, 1
  br i1 %cmp178, label %cleanup183, label %for.cond

cleanup183:                                       ; preds = %for.body
  %19 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call181 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %19, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.85, i64 0, i64 0), i8* noundef %call1, i8* noundef %call176) #8
  br label %if.then438

if.end187:                                        ; preds = %for.cond, %if.then170, %if.end167
  %cmp188.not = icmp eq %struct.stack_st_OPENSSL_STRING* %pkeyopts_passin.0, null
  br i1 %cmp188.not, label %if.end258, label %if.then190

if.then190:                                       ; preds = %if.end187
  %call192 = call fastcc %struct.stack_st* @ossl_check_const_OPENSSL_STRING_sk_type(%struct.stack_st_OPENSSL_STRING* noundef nonnull %pkeyopts_passin.0) #10
  %call193 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call192) #8
  %cmp196839 = icmp sgt i32 %call193, 0
  br i1 %cmp196839, label %for.body198.lr.ph, label %if.end258

for.body198.lr.ph:                                ; preds = %if.then190
  %20 = bitcast i8** %passwd to i8*
  %21 = getelementptr inbounds [4096 x i8], [4096 x i8]* %passwd_buf, i64 0, i64 0
  br label %for.body198

for.body198:                                      ; preds = %for.body198.lr.ph, %for.inc251
  %i194.0840 = phi i32 [ 0, %for.body198.lr.ph ], [ %inc252, %for.inc251 ]
  %call201 = call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call192, i32 noundef %i194.0840) #8
  %call202 = call i8* @strchr(i8* noundef %call201, i32 noundef 58) #9
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %20) #7
  %cmp203 = icmp eq i8* %call202, null
  br i1 %cmp203, label %if.then205, label %if.else232

if.then205:                                       ; preds = %for.body198
  call void @llvm.lifetime.start.p0i8(i64 4096, i8* nonnull %21) #7
  %call206 = call i32 (i8*, i64, i8*, ...) @BIO_snprintf(i8* noundef nonnull %21, i64 noundef 4096, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.86, i64 0, i64 0), i8* noundef %call201) #8
  %call209 = call i32 @EVP_read_pw_string(i8* noundef nonnull %21, i32 noundef 4095, i8* noundef nonnull %21, i32 noundef 0) #8
  %cmp210 = icmp slt i32 %call209, 0
  br i1 %cmp210, label %if.then212, label %if.end220

if.then212:                                       ; preds = %if.then205
  %cmp213 = icmp eq i32 %call209, -2
  %22 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  br i1 %cmp213, label %if.then215, label %if.else217

if.then215:                                       ; preds = %if.then212
  %call216 = call i32 @BIO_puts(%struct.bio_st* noundef %22, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.87, i64 0, i64 0)) #8
  br label %cleanup228.thread

if.else217:                                       ; preds = %if.then212
  %call218 = call i32 @BIO_puts(%struct.bio_st* noundef %22, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.88, i64 0, i64 0)) #8
  br label %cleanup228.thread

if.end220:                                        ; preds = %if.then205
  %call222 = call i8* @CRYPTO_strdup(i8* noundef nonnull %21, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.89, i64 0, i64 0), i32 noundef 354) #8
  store i8* %call222, i8** %passwd, align 8, !tbaa !3
  %cmp223 = icmp eq i8* %call222, null
  br i1 %cmp223, label %if.then225, label %cleanup228

if.then225:                                       ; preds = %if.end220
  %23 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call226 = call i32 @BIO_puts(%struct.bio_st* noundef %23, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.75, i64 0, i64 0)) #8
  br label %cleanup228.thread

cleanup228.thread:                                ; preds = %if.then225, %if.else217, %if.then215
  call void @llvm.lifetime.end.p0i8(i64 4096, i8* nonnull %21) #7
  br label %cleanup254

cleanup228:                                       ; preds = %if.end220
  call void @llvm.lifetime.end.p0i8(i64 4096, i8* nonnull %21) #7
  br label %if.end239

if.else232:                                       ; preds = %for.body198
  store i8 0, i8* %call202, align 1, !tbaa !12
  %incdec.ptr = getelementptr inbounds i8, i8* %call202, i64 1
  %call233 = call i32 @app_passwd(i8* noundef nonnull %incdec.ptr, i8* noundef null, i8** noundef nonnull %passwd, i8** noundef null) #8
  %cmp234 = icmp eq i32 %call233, 0
  br i1 %cmp234, label %if.then236, label %if.else232.if.end239_crit_edge

if.else232.if.end239_crit_edge:                   ; preds = %if.else232
  %.pre = load i8*, i8** %passwd, align 8, !tbaa !3
  br label %if.end239

if.then236:                                       ; preds = %if.else232
  %24 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call237 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %24, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.90, i64 0, i64 0), i8* noundef %call201) #8
  br label %cleanup254

if.end239:                                        ; preds = %if.else232.if.end239_crit_edge, %cleanup228
  %25 = phi i8* [ %.pre, %if.else232.if.end239_crit_edge ], [ %call222, %cleanup228 ]
  %call240 = call i32 @EVP_PKEY_CTX_ctrl_str(%struct.evp_pkey_ctx_st* noundef %call154, i8* noundef %call201, i8* noundef %25) #8
  %cmp241 = icmp slt i32 %call240, 1
  br i1 %cmp241, label %if.then243, label %for.inc251

if.then243:                                       ; preds = %if.end239
  %26 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call244 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %26, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.85, i64 0, i64 0), i8* noundef %call1, i8* noundef %call201) #8
  br label %cleanup254

for.inc251:                                       ; preds = %if.end239
  %27 = load i8*, i8** %passwd, align 8, !tbaa !3
  call void @CRYPTO_free(i8* noundef %27, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.89, i64 0, i64 0), i32 noundef 375) #8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %20) #7
  %inc252 = add nuw nsw i32 %i194.0840, 1
  %exitcond958.not = icmp eq i32 %inc252, %call193
  br i1 %exitcond958.not, label %if.end258, label %for.body198, !llvm.loop !13

cleanup254:                                       ; preds = %if.then243, %if.then236, %cleanup228.thread
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %20) #7
  br label %if.then438

if.end258:                                        ; preds = %for.inc251, %if.then190, %if.end187
  %cmp259 = icmp ne i8* %sigfile.0, null
  %or.cond490 = select i1 %cmp259, i1 %cmp105, i1 false
  br i1 %or.cond490, label %if.then264, label %if.end266

if.then264:                                       ; preds = %if.end258
  %28 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call265 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %28, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.91, i64 0, i64 0), i8* noundef %call1) #8
  br label %if.then438

if.end266:                                        ; preds = %if.end258
  %cmp267 = icmp eq i8* %sigfile.0, null
  %cmp270 = icmp eq i32 %pkey_op.0, 32
  %or.cond491 = select i1 %cmp267, i1 %cmp270, i1 false
  br i1 %or.cond491, label %if.then272, label %if.end274

if.then272:                                       ; preds = %if.end266
  %29 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call273 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %29, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.92, i64 0, i64 0), i8* noundef %call1) #8
  br label %if.then438

if.end274:                                        ; preds = %if.end266
  %cmp275.not = icmp eq i32 %pkey_op.0, 2048
  br i1 %cmp275.not, label %if.end297, label %if.then277

if.then277:                                       ; preds = %if.end274
  %call278 = call %struct.bio_st* @bio_open_default(i8* noundef %infile.0, i8 noundef signext 114, i32 noundef 2) #8
  %cmp279.not = icmp eq i8* %infile.0, null
  br i1 %cmp279.not, label %if.end292, label %if.then281

if.then281:                                       ; preds = %if.then277
  %30 = bitcast %struct.stat* %st to i8*
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %30) #7
  %call282 = call i32 @stat(i8* noundef %infile.0, %struct.stat* noundef %st) #8
  %cmp283 = icmp eq i32 %call282, 0
  %st_size = getelementptr inbounds %struct.stat, %struct.stat* %st, i64 0, i32 8
  %31 = load i64, i64* %st_size, align 8
  %cmp286 = icmp slt i64 %31, 2147483648
  %or.cond492 = select i1 %cmp283, i1 %cmp286, i1 false
  %conv290 = trunc i64 %31 to i32
  %spec.select = select i1 %or.cond492, i32 %conv290, i32 -1
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %30) #7
  br label %if.end292

if.end292:                                        ; preds = %if.then281, %if.then277
  %filesize.1 = phi i32 [ %spec.select, %if.then281 ], [ -1, %if.then277 ]
  %cmp293 = icmp eq %struct.bio_st* %call278, null
  br i1 %cmp293, label %if.then438, label %if.end297

if.end297:                                        ; preds = %if.end292, %if.end274
  %filesize.2 = phi i32 [ %filesize.1, %if.end292 ], [ -1, %if.end274 ]
  %in.0 = phi %struct.bio_st* [ %call278, %if.end292 ], [ null, %if.end274 ]
  %call298 = call %struct.bio_st* @bio_open_default(i8* noundef %outfile.0, i8 noundef signext 119, i32 noundef 2) #8
  %cmp299 = icmp eq %struct.bio_st* %call298, null
  br i1 %cmp299, label %if.then438, label %if.end302

if.end302:                                        ; preds = %if.end297
  br i1 %cmp259, label %if.then305, label %if.end322

if.then305:                                       ; preds = %if.end302
  %call306 = call %struct.bio_st* @BIO_new_file(i8* noundef nonnull %sigfile.0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.93, i64 0, i64 0)) #8
  %cmp307 = icmp eq %struct.bio_st* %call306, null
  br i1 %cmp307, label %if.then309, label %if.end311

if.then309:                                       ; preds = %if.then305
  %32 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call310 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %32, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.94, i64 0, i64 0), i8* noundef nonnull %sigfile.0) #8
  br label %if.then438

if.end311:                                        ; preds = %if.then305
  %33 = load i32, i32* %keysize, align 4, !tbaa !7
  %mul = mul nsw i32 %33, 10
  %call312 = call i32 @bio_to_mem(i8** noundef nonnull %sig, i32 noundef %mul, %struct.bio_st* noundef nonnull %call306) #8
  %call313 = call i32 @BIO_free(%struct.bio_st* noundef nonnull %call306) #8
  %cmp314 = icmp slt i32 %call312, 0
  br i1 %cmp314, label %if.then316, label %if.end322

if.then316:                                       ; preds = %if.end311
  %34 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call317 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %34, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.95, i64 0, i64 0)) #8
  br label %if.then438

if.end322:                                        ; preds = %if.end311, %if.end302
  %siglen.1 = phi i32 [ -1, %if.end302 ], [ %call312, %if.end311 ]
  %cmp323 = icmp eq %struct.bio_st* %in.0, null
  %or.cond493 = select i1 %cmp323, i1 true, i1 %tobool101
  br i1 %or.cond493, label %if.end366, label %if.then327

if.then327:                                       ; preds = %if.end322
  %35 = load i32, i32* %keysize, align 4, !tbaa !7
  %mul328 = mul nsw i32 %35, 10
  %call329 = call i32 @bio_to_mem(i8** noundef nonnull %buf_in, i32 noundef %mul328, %struct.bio_st* noundef nonnull %in.0) #8
  %cmp330 = icmp slt i32 %call329, 0
  br i1 %cmp330, label %if.then332, label %if.end334

if.then332:                                       ; preds = %if.then327
  %36 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call333 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %36, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.96, i64 0, i64 0)) #8
  br label %if.then438

if.end334:                                        ; preds = %if.then327
  %tobool335.not = icmp eq i8 %rev.0, 0
  br i1 %tobool335.not, label %if.end353, label %if.then336

if.then336:                                       ; preds = %if.end334
  %conv338706 = zext i32 %call329 to i64
  %cmp340841.not = icmp ult i32 %call329, 2
  br i1 %cmp340841.not, label %if.end366, label %for.body342.preheader

for.body342.preheader:                            ; preds = %if.then336
  %div = lshr i64 %conv338706, 1
  %umax = call i64 @llvm.umax.i64(i64 %div, i64 1)
  %xtraiter = and i64 %umax, 1
  %37 = icmp ult i32 %call329, 4
  br i1 %37, label %if.end353.loopexit.unr-lcssa, label %for.body342.preheader.new

for.body342.preheader.new:                        ; preds = %for.body342.preheader
  %unroll_iter = and i64 %umax, 2147483646
  br label %for.body342

for.body342:                                      ; preds = %for.body342, %for.body342.preheader.new
  %i337.0842 = phi i64 [ 0, %for.body342.preheader.new ], [ %inc350.1, %for.body342 ]
  %niter = phi i64 [ 0, %for.body342.preheader.new ], [ %niter.next.1, %for.body342 ]
  %38 = load i8*, i8** %buf_in, align 8, !tbaa !3
  %arrayidx = getelementptr inbounds i8, i8* %38, i64 %i337.0842
  %39 = load i8, i8* %arrayidx, align 1, !tbaa !12
  %40 = xor i64 %i337.0842, -1
  %sub343 = add nsw i64 %40, %conv338706
  %arrayidx344 = getelementptr inbounds i8, i8* %38, i64 %sub343
  %41 = load i8, i8* %arrayidx344, align 1, !tbaa !12
  store i8 %41, i8* %arrayidx, align 1, !tbaa !12
  %42 = load i8*, i8** %buf_in, align 8, !tbaa !3
  %arrayidx348 = getelementptr inbounds i8, i8* %42, i64 %sub343
  store i8 %39, i8* %arrayidx348, align 1, !tbaa !12
  %inc350 = or i64 %i337.0842, 1
  %43 = load i8*, i8** %buf_in, align 8, !tbaa !3
  %arrayidx.1 = getelementptr inbounds i8, i8* %43, i64 %inc350
  %44 = load i8, i8* %arrayidx.1, align 1, !tbaa !12
  %45 = sub nuw nsw i64 -2, %i337.0842
  %sub343.1 = add nsw i64 %45, %conv338706
  %arrayidx344.1 = getelementptr inbounds i8, i8* %43, i64 %sub343.1
  %46 = load i8, i8* %arrayidx344.1, align 1, !tbaa !12
  store i8 %46, i8* %arrayidx.1, align 1, !tbaa !12
  %47 = load i8*, i8** %buf_in, align 8, !tbaa !3
  %arrayidx348.1 = getelementptr inbounds i8, i8* %47, i64 %sub343.1
  store i8 %44, i8* %arrayidx348.1, align 1, !tbaa !12
  %inc350.1 = add nuw nsw i64 %i337.0842, 2
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %if.end353.loopexit.unr-lcssa, label %for.body342, !llvm.loop !14

if.end353.loopexit.unr-lcssa:                     ; preds = %for.body342, %for.body342.preheader
  %i337.0842.unr = phi i64 [ 0, %for.body342.preheader ], [ %inc350.1, %for.body342 ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %if.end353, label %for.body342.epil

for.body342.epil:                                 ; preds = %if.end353.loopexit.unr-lcssa
  %48 = load i8*, i8** %buf_in, align 8, !tbaa !3
  %arrayidx.epil = getelementptr inbounds i8, i8* %48, i64 %i337.0842.unr
  %49 = load i8, i8* %arrayidx.epil, align 1, !tbaa !12
  %50 = xor i64 %i337.0842.unr, -1
  %sub343.epil = add nsw i64 %50, %conv338706
  %arrayidx344.epil = getelementptr inbounds i8, i8* %48, i64 %sub343.epil
  %51 = load i8, i8* %arrayidx344.epil, align 1, !tbaa !12
  store i8 %51, i8* %arrayidx.epil, align 1, !tbaa !12
  %52 = load i8*, i8** %buf_in, align 8, !tbaa !3
  %arrayidx348.epil = getelementptr inbounds i8, i8* %52, i64 %sub343.epil
  store i8 %49, i8* %arrayidx348.epil, align 1, !tbaa !12
  br label %if.end353

if.end353:                                        ; preds = %for.body342.epil, %if.end353.loopexit.unr-lcssa, %if.end334
  %cmp356 = icmp sgt i32 %call329, 64
  br i1 %cmp356, label %land.lhs.true358, label %if.end366

land.lhs.true358:                                 ; preds = %if.end353
  switch i32 %pkey_op.0, label %if.end366 [
    i32 32, label %if.then364
    i32 16, label %if.then364
  ]

if.then364:                                       ; preds = %land.lhs.true358, %land.lhs.true358
  %53 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call365 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %53, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.97, i64 0, i64 0)) #8
  br label %if.then438

if.end366:                                        ; preds = %if.then336, %if.end322, %land.lhs.true358, %if.end353
  %buf_inlen.0678 = phi i32 [ %call329, %land.lhs.true358 ], [ %call329, %if.end353 ], [ 0, %if.end322 ], [ %call329, %if.then336 ]
  br i1 %cmp270, label %if.then369, label %if.end385

if.then369:                                       ; preds = %if.end366
  br i1 %tobool101, label %if.then371, label %if.else373

if.then371:                                       ; preds = %if.then369
  %54 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey, align 8, !tbaa !3
  %55 = load i8*, i8** %sig, align 8, !tbaa !3
  %call372 = call fastcc i32 @do_raw_keyop(i32 noundef 32, %struct.evp_md_ctx_st* noundef %mctx.0, %struct.evp_pkey_st* noundef %54, %struct.bio_st* noundef %in.0, i32 noundef %filesize.2, i8* noundef %55, i32 noundef %siglen.1, i8** noundef null, i64* noundef null) #10
  br label %if.end377

if.else373:                                       ; preds = %if.then369
  %56 = load i8*, i8** %sig, align 8, !tbaa !3
  %conv374 = sext i32 %siglen.1 to i64
  %57 = load i8*, i8** %buf_in, align 8, !tbaa !3
  %conv375 = sext i32 %buf_inlen.0678 to i64
  %call376 = call i32 @EVP_PKEY_verify(%struct.evp_pkey_ctx_st* noundef %call154, i8* noundef %56, i64 noundef %conv374, i8* noundef %57, i64 noundef %conv375) #8
  br label %if.end377

if.end377:                                        ; preds = %if.else373, %if.then371
  %rv.0 = phi i32 [ %call372, %if.then371 ], [ %call376, %if.else373 ]
  %cmp378 = icmp eq i32 %rv.0, 1
  br i1 %cmp378, label %if.then380, label %if.else382

if.then380:                                       ; preds = %if.end377
  %call381 = call i32 @BIO_puts(%struct.bio_st* noundef nonnull %call298, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.98, i64 0, i64 0)) #8
  br label %cleanup443

if.else382:                                       ; preds = %if.end377
  %call383 = call i32 @BIO_puts(%struct.bio_st* noundef nonnull %call298, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.99, i64 0, i64 0)) #8
  br label %if.then438

if.end385:                                        ; preds = %if.end366
  %cmp386.not = icmp eq i32 %kdflen.0, 0
  br i1 %cmp386.not, label %if.else390, label %if.end408.thread

if.end408.thread:                                 ; preds = %if.end385
  %conv389 = sext i32 %kdflen.0 to i64
  store i64 %conv389, i64* %buf_outlen, align 8, !tbaa !15
  br label %if.end419

if.else390:                                       ; preds = %if.end385
  br i1 %tobool101, label %if.then392, label %if.else394

if.then392:                                       ; preds = %if.else390
  %58 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey, align 8, !tbaa !3
  %call393 = call fastcc i32 @do_raw_keyop(i32 noundef %pkey_op.0, %struct.evp_md_ctx_st* noundef %mctx.0, %struct.evp_pkey_st* noundef %58, %struct.bio_st* noundef %in.0, i32 noundef %filesize.2, i8* noundef null, i32 noundef 0, i8** noundef nonnull %buf_out, i64* noundef nonnull %buf_outlen) #10
  br label %if.end408

if.else394:                                       ; preds = %if.else390
  %59 = load i8*, i8** %buf_in, align 8, !tbaa !3
  %conv395 = sext i32 %buf_inlen.0678 to i64
  %call396 = call fastcc i32 @do_keyop(%struct.evp_pkey_ctx_st* noundef %call154, i32 noundef %pkey_op.0, i8* noundef null, i64* noundef nonnull %buf_outlen, i8* noundef %59, i64 noundef %conv395) #10
  %cmp397 = icmp sgt i32 %call396, 0
  %60 = load i64, i64* %buf_outlen, align 8
  %cmp400 = icmp ne i64 %60, 0
  %or.cond496 = select i1 %cmp397, i1 %cmp400, i1 false
  br i1 %or.cond496, label %if.then402, label %if.end408

if.then402:                                       ; preds = %if.else394
  %call403 = call i8* @app_malloc(i64 noundef %60, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.100, i64 0, i64 0)) #8
  store i8* %call403, i8** %buf_out, align 8, !tbaa !3
  %61 = load i8*, i8** %buf_in, align 8, !tbaa !3
  %call405 = call fastcc i32 @do_keyop(%struct.evp_pkey_ctx_st* noundef %call154, i32 noundef %pkey_op.0, i8* noundef %call403, i64* noundef nonnull %buf_outlen, i8* noundef %61, i64 noundef %conv395) #10
  br label %if.end408

if.end408:                                        ; preds = %if.then392, %if.then402, %if.else394
  %rv.1 = phi i32 [ %call393, %if.then392 ], [ %call405, %if.then402 ], [ %call396, %if.else394 ]
  %cmp409 = icmp slt i32 %rv.1, 1
  br i1 %cmp409, label %if.then411, label %if.end419

if.then411:                                       ; preds = %if.end408
  %62 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  br i1 %cmp275.not, label %if.else416, label %if.then414

if.then414:                                       ; preds = %if.then411
  %call415 = call i32 @BIO_puts(%struct.bio_st* noundef %62, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.101, i64 0, i64 0)) #8
  br label %if.then438

if.else416:                                       ; preds = %if.then411
  %call417 = call i32 @BIO_puts(%struct.bio_st* noundef %62, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.102, i64 0, i64 0)) #8
  br label %if.then438

if.end419:                                        ; preds = %if.end408.thread, %if.end408
  %tobool420.not = icmp eq i8 %asn1parse.0, 0
  br i1 %tobool420.not, label %if.else426, label %if.then421

if.then421:                                       ; preds = %if.end419
  %63 = load i8*, i8** %buf_out, align 8, !tbaa !3
  %64 = load i64, i64* %buf_outlen, align 8, !tbaa !15
  %call422 = call i32 @ASN1_parse_dump(%struct.bio_st* noundef nonnull %call298, i8* noundef %63, i64 noundef %64, i32 noundef 1, i32 noundef -1) #8
  %tobool423.not = icmp eq i32 %call422, 0
  br i1 %tobool423.not, label %if.then424, label %cleanup443

if.then424:                                       ; preds = %if.then421
  %65 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  call void @ERR_print_errors(%struct.bio_st* noundef %65) #8
  br label %cleanup443

if.else426:                                       ; preds = %if.end419
  %tobool427.not = icmp eq i8 %hexdump.0, 0
  %66 = load i8*, i8** %buf_out, align 8, !tbaa !3
  %67 = load i64, i64* %buf_outlen, align 8, !tbaa !15
  %conv432 = trunc i64 %67 to i32
  br i1 %tobool427.not, label %if.else431, label %if.then428

if.then428:                                       ; preds = %if.else426
  %call430 = call i32 @BIO_dump(%struct.bio_st* noundef nonnull %call298, i8* noundef %66, i32 noundef %conv432) #8
  br label %cleanup443

if.else431:                                       ; preds = %if.else426
  %call433 = call i32 @BIO_write(%struct.bio_st* noundef nonnull %call298, i8* noundef %66, i32 noundef %conv432) #8
  br label %cleanup443

if.then438:                                       ; preds = %sw.bb40, %sw.bb33, %sw.bb28, %if.then316, %if.then309, %if.then414, %if.else416, %if.else382, %if.end297, %if.end292, %if.end96, %cleanup254, %cleanup183, %if.then364, %if.then332, %if.then272, %if.then264, %if.then165, %if.then157, %if.then149, %if.then87, %if.then73, %opthelp
  %pkeyopts.4.ph = phi %struct.stack_st_OPENSSL_STRING* [ %pkeyopts.0, %opthelp ], [ %pkeyopts.2, %if.then73 ], [ %pkeyopts.0, %if.then87 ], [ %pkeyopts.0, %if.then149 ], [ %pkeyopts.0, %if.then157 ], [ %pkeyopts.0, %if.then165 ], [ %pkeyopts.0, %if.then264 ], [ %pkeyopts.0, %if.then272 ], [ %pkeyopts.0, %if.then332 ], [ %pkeyopts.0, %if.then364 ], [ %pkeyopts.0, %cleanup183 ], [ %pkeyopts.0, %cleanup254 ], [ %pkeyopts.0, %if.end96 ], [ %pkeyopts.0, %if.end292 ], [ %pkeyopts.0, %if.end297 ], [ %pkeyopts.0, %if.else382 ], [ %pkeyopts.0, %if.else416 ], [ %pkeyopts.0, %if.then414 ], [ %pkeyopts.0, %if.then309 ], [ %pkeyopts.0, %if.then316 ], [ %pkeyopts.0, %sw.bb28 ], [ %pkeyopts.0, %sw.bb33 ], [ %pkeyopts.0, %sw.bb40 ]
  %pkeyopts_passin.4.ph = phi %struct.stack_st_OPENSSL_STRING* [ %pkeyopts_passin.0, %opthelp ], [ %pkeyopts_passin.0, %if.then73 ], [ %pkeyopts_passin.2, %if.then87 ], [ %pkeyopts_passin.0, %if.then149 ], [ %pkeyopts_passin.0, %if.then157 ], [ %pkeyopts_passin.0, %if.then165 ], [ %pkeyopts_passin.0, %if.then264 ], [ %pkeyopts_passin.0, %if.then272 ], [ %pkeyopts_passin.0, %if.then332 ], [ %pkeyopts_passin.0, %if.then364 ], [ %pkeyopts_passin.0, %cleanup183 ], [ %pkeyopts_passin.0, %cleanup254 ], [ %pkeyopts_passin.0, %if.end96 ], [ %pkeyopts_passin.0, %if.end292 ], [ %pkeyopts_passin.0, %if.end297 ], [ %pkeyopts_passin.0, %if.else382 ], [ %pkeyopts_passin.0, %if.else416 ], [ %pkeyopts_passin.0, %if.then414 ], [ %pkeyopts_passin.0, %if.then309 ], [ %pkeyopts_passin.0, %if.then316 ], [ %pkeyopts_passin.0, %sw.bb28 ], [ %pkeyopts_passin.0, %sw.bb33 ], [ %pkeyopts_passin.0, %sw.bb40 ]
  %mctx.1.ph = phi %struct.evp_md_ctx_st* [ null, %opthelp ], [ null, %if.then73 ], [ null, %if.then87 ], [ null, %if.then149 ], [ %mctx.0, %if.then157 ], [ %mctx.0, %if.then165 ], [ %mctx.0, %if.then264 ], [ %mctx.0, %if.then272 ], [ %mctx.0, %if.then332 ], [ %mctx.0, %if.then364 ], [ %mctx.0, %cleanup183 ], [ %mctx.0, %cleanup254 ], [ null, %if.end96 ], [ %mctx.0, %if.end292 ], [ %mctx.0, %if.end297 ], [ %mctx.0, %if.else382 ], [ %mctx.0, %if.else416 ], [ %mctx.0, %if.then414 ], [ %mctx.0, %if.then309 ], [ %mctx.0, %if.then316 ], [ null, %sw.bb28 ], [ null, %sw.bb33 ], [ null, %sw.bb40 ]
  %ctx.0.ph = phi %struct.evp_pkey_ctx_st* [ null, %opthelp ], [ null, %if.then73 ], [ null, %if.then87 ], [ null, %if.then149 ], [ null, %if.then157 ], [ %call154, %if.then165 ], [ %call154, %if.then264 ], [ %call154, %if.then272 ], [ %call154, %if.then332 ], [ %call154, %if.then364 ], [ %call154, %cleanup183 ], [ %call154, %cleanup254 ], [ null, %if.end96 ], [ %call154, %if.end292 ], [ %call154, %if.end297 ], [ %call154, %if.else382 ], [ %call154, %if.else416 ], [ %call154, %if.then414 ], [ %call154, %if.then309 ], [ %call154, %if.then316 ], [ null, %sw.bb28 ], [ null, %sw.bb33 ], [ null, %sw.bb40 ]
  %out.0.ph = phi %struct.bio_st* [ null, %opthelp ], [ null, %if.then73 ], [ null, %if.then87 ], [ null, %if.then149 ], [ null, %if.then157 ], [ null, %if.then165 ], [ null, %if.then264 ], [ null, %if.then272 ], [ %call298, %if.then332 ], [ %call298, %if.then364 ], [ null, %cleanup183 ], [ null, %cleanup254 ], [ null, %if.end96 ], [ null, %if.end292 ], [ null, %if.end297 ], [ %call298, %if.else382 ], [ %call298, %if.else416 ], [ %call298, %if.then414 ], [ %call298, %if.then309 ], [ %call298, %if.then316 ], [ null, %sw.bb28 ], [ null, %sw.bb33 ], [ null, %sw.bb40 ]
  %in.1.ph = phi %struct.bio_st* [ null, %opthelp ], [ null, %if.then73 ], [ null, %if.then87 ], [ null, %if.then149 ], [ null, %if.then157 ], [ null, %if.then165 ], [ null, %if.then264 ], [ null, %if.then272 ], [ %in.0, %if.then332 ], [ %in.0, %if.then364 ], [ null, %cleanup183 ], [ null, %cleanup254 ], [ null, %if.end96 ], [ null, %if.end292 ], [ %in.0, %if.end297 ], [ %in.0, %if.else382 ], [ %in.0, %if.else416 ], [ %in.0, %if.then414 ], [ %in.0, %if.then309 ], [ %in.0, %if.then316 ], [ null, %sw.bb28 ], [ null, %sw.bb33 ], [ null, %sw.bb40 ]
  %conf.2.ph = phi %struct.conf_st* [ %conf.0, %opthelp ], [ %conf.0, %if.then73 ], [ %conf.0, %if.then87 ], [ %conf.0, %if.then149 ], [ %conf.0, %if.then157 ], [ %conf.0, %if.then165 ], [ %conf.0, %if.then264 ], [ %conf.0, %if.then272 ], [ %conf.0, %if.then332 ], [ %conf.0, %if.then364 ], [ %conf.0, %cleanup183 ], [ %conf.0, %cleanup254 ], [ %conf.0, %if.end96 ], [ %conf.0, %if.end292 ], [ %conf.0, %if.end297 ], [ %conf.0, %if.else382 ], [ %conf.0, %if.else416 ], [ %conf.0, %if.then414 ], [ %conf.0, %if.then309 ], [ %conf.0, %if.then316 ], [ %conf.0, %sw.bb40 ], [ null, %sw.bb33 ], [ %conf.0, %sw.bb28 ]
  %68 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  call void @ERR_print_errors(%struct.bio_st* noundef %68) #8
  br label %cleanup443

cleanup443:                                       ; preds = %if.then438, %if.then424, %if.then421, %if.else431, %if.then428, %if.then380, %sw.bb4
  %conf.2705 = phi %struct.conf_st* [ %conf.2.ph, %if.then438 ], [ %conf.0, %if.then424 ], [ %conf.0, %if.then421 ], [ %conf.0, %if.else431 ], [ %conf.0, %if.then428 ], [ %conf.0, %if.then380 ], [ %conf.0, %sw.bb4 ]
  %in.1703 = phi %struct.bio_st* [ %in.1.ph, %if.then438 ], [ %in.0, %if.then424 ], [ %in.0, %if.then421 ], [ %in.0, %if.else431 ], [ %in.0, %if.then428 ], [ %in.0, %if.then380 ], [ null, %sw.bb4 ]
  %out.0701 = phi %struct.bio_st* [ %out.0.ph, %if.then438 ], [ %call298, %if.then424 ], [ %call298, %if.then421 ], [ %call298, %if.else431 ], [ %call298, %if.then428 ], [ %call298, %if.then380 ], [ null, %sw.bb4 ]
  %ctx.0699 = phi %struct.evp_pkey_ctx_st* [ %ctx.0.ph, %if.then438 ], [ %call154, %if.then424 ], [ %call154, %if.then421 ], [ %call154, %if.else431 ], [ %call154, %if.then428 ], [ %call154, %if.then380 ], [ null, %sw.bb4 ]
  %mctx.1697 = phi %struct.evp_md_ctx_st* [ %mctx.1.ph, %if.then438 ], [ %mctx.0, %if.then424 ], [ %mctx.0, %if.then421 ], [ %mctx.0, %if.else431 ], [ %mctx.0, %if.then428 ], [ %mctx.0, %if.then380 ], [ null, %sw.bb4 ]
  %pkeyopts_passin.4695 = phi %struct.stack_st_OPENSSL_STRING* [ %pkeyopts_passin.4.ph, %if.then438 ], [ %pkeyopts_passin.0, %if.then424 ], [ %pkeyopts_passin.0, %if.then421 ], [ %pkeyopts_passin.0, %if.else431 ], [ %pkeyopts_passin.0, %if.then428 ], [ %pkeyopts_passin.0, %if.then380 ], [ %pkeyopts_passin.0, %sw.bb4 ]
  %pkeyopts.4693 = phi %struct.stack_st_OPENSSL_STRING* [ %pkeyopts.4.ph, %if.then438 ], [ %pkeyopts.0, %if.then424 ], [ %pkeyopts.0, %if.then421 ], [ %pkeyopts.0, %if.else431 ], [ %pkeyopts.0, %if.then428 ], [ %pkeyopts.0, %if.then380 ], [ %pkeyopts.0, %sw.bb4 ]
  %ret.0691 = phi i32 [ 1, %if.then438 ], [ 0, %if.then424 ], [ 0, %if.then421 ], [ 0, %if.else431 ], [ 0, %if.then428 ], [ 0, %if.then380 ], [ 0, %sw.bb4 ]
  call void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef %mctx.1697) #8
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %ctx.0699) #8
  call void @EVP_MD_free(%struct.evp_md_st* noundef null) #8
  call void @release_engine(%struct.engine_st* noundef %e.0) #8
  %call440 = call i32 @BIO_free(%struct.bio_st* noundef %in.1703) #8
  call void @BIO_free_all(%struct.bio_st* noundef %out.0701) #8
  %69 = load i8*, i8** %buf_in, align 8, !tbaa !3
  call void @CRYPTO_free(i8* noundef %69, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.89, i64 0, i64 0), i32 noundef 514) #8
  %70 = load i8*, i8** %buf_out, align 8, !tbaa !3
  call void @CRYPTO_free(i8* noundef %70, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.89, i64 0, i64 0), i32 noundef 515) #8
  %71 = load i8*, i8** %sig, align 8, !tbaa !3
  call void @CRYPTO_free(i8* noundef %71, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.89, i64 0, i64 0), i32 noundef 516) #8
  %call441 = call fastcc %struct.stack_st* @ossl_check_OPENSSL_STRING_sk_type(%struct.stack_st_OPENSSL_STRING* noundef %pkeyopts.4693) #10
  call void @OPENSSL_sk_free(%struct.stack_st* noundef %call441) #8
  %call442 = call fastcc %struct.stack_st* @ossl_check_OPENSSL_STRING_sk_type(%struct.stack_st_OPENSSL_STRING* noundef %pkeyopts_passin.4695) #10
  call void @OPENSSL_sk_free(%struct.stack_st* noundef %call442) #8
  call void @NCONF_free(%struct.conf_st* noundef %conf.2705) #8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #7
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #7
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #7
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #7
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #7
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #7
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #7
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7
  ret i32 %ret.0691
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare dso_local %struct.ossl_lib_ctx_st* @app_get0_libctx() local_unnamed_addr #2

declare dso_local i8* @opt_init(i32 noundef, i8** noundef, %struct.options_st* noundef) local_unnamed_addr #2

declare dso_local i32 @opt_next() local_unnamed_addr #2

declare dso_local i32 @BIO_printf(%struct.bio_st* noundef, i8* noundef, ...) local_unnamed_addr #2

declare dso_local void @opt_help(%struct.options_st* noundef) local_unnamed_addr #2

declare dso_local i8* @opt_arg() local_unnamed_addr #2

declare dso_local i32 @opt_format(i8* noundef, i64 noundef, i32* noundef) local_unnamed_addr #2

declare dso_local i32 @opt_rand(i32 noundef) local_unnamed_addr #2

declare dso_local %struct.conf_st* @app_load_config_modules(i8* noundef) local_unnamed_addr #2

declare dso_local i32 @opt_provider(i32 noundef) local_unnamed_addr #2

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

declare dso_local i32 @BIO_puts(%struct.bio_st* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local i32 @opt_num_rest() local_unnamed_addr #2

declare dso_local i32 @app_RAND_load() local_unnamed_addr #2

declare dso_local %struct.evp_md_ctx_st* @EVP_MD_CTX_new() local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.evp_pkey_ctx_st* @init_ctx(i8* noundef %kdfalg, i32* nocapture noundef writeonly %pkeysize, i8* noundef %keyfile, i32 noundef %keyform, i32 noundef %key_type, i8* noundef %passinarg, i32 noundef %pkey_op, %struct.engine_st* noundef %e, i32 noundef %engine_impl, i32 noundef %rawin, %struct.evp_pkey_st** noundef writeonly %ppkey, %struct.evp_md_ctx_st* noundef %mctx, i8* noundef %digestname, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) unnamed_addr #0 {
entry:
  %passin = alloca i8*, align 8
  %0 = bitcast i8** %passin to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7
  store i8* null, i8** %passin, align 8, !tbaa !3
  %cmp = icmp eq i32 %pkey_op, 16
  %cmp1 = icmp eq i32 %pkey_op, 1024
  %or.cond = or i1 %cmp, %cmp1
  %cmp3 = icmp eq i32 %pkey_op, 2048
  %or.cond88 = or i1 %cmp3, %or.cond
  %cmp4 = icmp ne i32 %key_type, 1
  %or.cond89 = and i1 %cmp4, %or.cond88
  %cmp6 = icmp eq i8* %kdfalg, null
  %or.cond90 = and i1 %cmp6, %or.cond89
  br i1 %or.cond90, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %1, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.103, i64 0, i64 0)) #8
  br label %end

if.end:                                           ; preds = %entry
  %call7 = call i32 @app_passwd(i8* noundef %passinarg, i8* noundef null, i8** noundef nonnull %passin, i8** noundef null) #8
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end
  %2 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call9 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %2, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.104, i64 0, i64 0)) #8
  br label %end

if.end10:                                         ; preds = %if.end
  switch i32 %key_type, label %sw.epilog [
    i32 1, label %sw.bb
    i32 2, label %sw.bb12
    i32 3, label %sw.bb14
  ]

sw.bb:                                            ; preds = %if.end10
  %3 = load i8*, i8** %passin, align 8, !tbaa !3
  %call11 = call %struct.evp_pkey_st* @load_key(i8* noundef %keyfile, i32 noundef %keyform, i32 noundef 0, i8* noundef %3, %struct.engine_st* noundef %e, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.105, i64 0, i64 0)) #8
  br label %sw.epilog

sw.bb12:                                          ; preds = %if.end10
  %call13 = call %struct.evp_pkey_st* @load_pubkey(i8* noundef %keyfile, i32 noundef %keyform, i32 noundef 0, i8* noundef null, %struct.engine_st* noundef %e, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.106, i64 0, i64 0)) #8
  br label %sw.epilog

sw.bb14:                                          ; preds = %if.end10
  %call15 = call %struct.x509_st* @load_cert_pass(i8* noundef %keyfile, i32 noundef %keyform, i32 noundef 1, i8* noundef null, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.107, i64 0, i64 0)) #8
  %tobool16.not = icmp eq %struct.x509_st* %call15, null
  br i1 %tobool16.not, label %sw.epilog, label %if.then17

if.then17:                                        ; preds = %sw.bb14
  %call18 = call %struct.evp_pkey_st* @X509_get_pubkey(%struct.x509_st* noundef nonnull %call15) #8
  call void @X509_free(%struct.x509_st* noundef nonnull %call15) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb14, %if.then17, %if.end10, %sw.bb12, %sw.bb
  %pkey.0 = phi %struct.evp_pkey_st* [ null, %if.end10 ], [ %call18, %if.then17 ], [ null, %sw.bb14 ], [ %call13, %sw.bb12 ], [ %call11, %sw.bb ]
  %tobool20.not = icmp eq i32 %engine_impl, 0
  %spec.select = select i1 %tobool20.not, %struct.engine_st* null, %struct.engine_st* %e
  br i1 %cmp6, label %if.else39, label %if.then24

if.then24:                                        ; preds = %sw.epilog
  %call25 = call i32 @OBJ_sn2nid(i8* noundef nonnull %kdfalg) #8
  %cmp26 = icmp eq i32 %call25, 0
  br i1 %cmp26, label %if.then27, label %if.end33

if.then27:                                        ; preds = %if.then24
  %call28 = call i32 @OBJ_ln2nid(i8* noundef nonnull %kdfalg) #8
  %cmp29 = icmp eq i32 %call28, 0
  br i1 %cmp29, label %cleanup, label %if.end33

if.end33:                                         ; preds = %if.then27, %if.then24
  %kdfnid.0 = phi i32 [ %call28, %if.then27 ], [ %call25, %if.then24 ]
  %cmp34.not = icmp eq %struct.engine_st* %spec.select, null
  br i1 %cmp34.not, label %if.else, label %if.then35

if.then35:                                        ; preds = %if.end33
  %call36 = call %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_id(i32 noundef %kdfnid.0, %struct.engine_st* noundef nonnull %spec.select) #8
  br label %if.end53

if.else:                                          ; preds = %if.end33
  %call37 = call %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_from_name(%struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef nonnull %kdfalg, i8* noundef %propq) #8
  br label %if.end53

cleanup:                                          ; preds = %if.then27
  %4 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call31 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %4, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.108, i64 0, i64 0), i8* noundef nonnull %kdfalg) #8
  br label %end

if.else39:                                        ; preds = %sw.epilog
  %cmp40 = icmp eq %struct.evp_pkey_st* %pkey.0, null
  br i1 %cmp40, label %end, label %if.end42

if.end42:                                         ; preds = %if.else39
  %call43 = call i32 @EVP_PKEY_get_size(%struct.evp_pkey_st* noundef nonnull %pkey.0) #8
  store i32 %call43, i32* %pkeysize, align 4, !tbaa !7
  %cmp44.not = icmp eq %struct.engine_st* %spec.select, null
  br i1 %cmp44.not, label %if.else47, label %if.then45

if.then45:                                        ; preds = %if.end42
  %call46 = call %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new(%struct.evp_pkey_st* noundef nonnull %pkey.0, %struct.engine_st* noundef nonnull %spec.select) #8
  br label %if.end49

if.else47:                                        ; preds = %if.end42
  %call48 = call %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_from_pkey(%struct.ossl_lib_ctx_st* noundef %libctx, %struct.evp_pkey_st* noundef nonnull %pkey.0, i8* noundef %propq) #8
  br label %if.end49

if.end49:                                         ; preds = %if.else47, %if.then45
  %ctx.2 = phi %struct.evp_pkey_ctx_st* [ %call46, %if.then45 ], [ %call48, %if.else47 ]
  %cmp50.not = icmp eq %struct.evp_pkey_st** %ppkey, null
  br i1 %cmp50.not, label %if.end52, label %if.then51

if.then51:                                        ; preds = %if.end49
  store %struct.evp_pkey_st* %pkey.0, %struct.evp_pkey_st** %ppkey, align 8, !tbaa !3
  br label %if.end52

if.end52:                                         ; preds = %if.then51, %if.end49
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef nonnull %pkey.0) #8
  br label %if.end53

if.end53:                                         ; preds = %if.then35, %if.else, %if.end52
  %ctx.3 = phi %struct.evp_pkey_ctx_st* [ %ctx.2, %if.end52 ], [ %call37, %if.else ], [ %call36, %if.then35 ]
  %cmp54 = icmp eq %struct.evp_pkey_ctx_st* %ctx.3, null
  br i1 %cmp54, label %end, label %if.end56

if.end56:                                         ; preds = %if.end53
  %tobool57.not = icmp eq i32 %rawin, 0
  br i1 %tobool57.not, label %if.else64, label %if.then58

if.then58:                                        ; preds = %if.end56
  call void @EVP_MD_CTX_set_pkey_ctx(%struct.evp_md_ctx_st* noundef %mctx, %struct.evp_pkey_ctx_st* noundef nonnull %ctx.3) #8
  switch i32 %pkey_op, label %if.then80 [
    i32 16, label %sw.bb59
    i32 32, label %sw.bb61
  ]

sw.bb59:                                          ; preds = %if.then58
  %call60 = call i32 @EVP_DigestSignInit_ex(%struct.evp_md_ctx_st* noundef %mctx, %struct.evp_pkey_ctx_st** noundef null, i8* noundef %digestname, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq, %struct.evp_pkey_st* noundef %pkey.0, %struct.ossl_param_st* noundef null) #8
  br label %if.end78

sw.bb61:                                          ; preds = %if.then58
  %call62 = call i32 @EVP_DigestVerifyInit_ex(%struct.evp_md_ctx_st* noundef %mctx, %struct.evp_pkey_ctx_st** noundef null, i8* noundef %digestname, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq, %struct.evp_pkey_st* noundef %pkey.0, %struct.ossl_param_st* noundef null) #8
  br label %if.end78

if.else64:                                        ; preds = %if.end56
  switch i32 %pkey_op, label %if.then80 [
    i32 16, label %sw.bb65
    i32 32, label %sw.bb67
    i32 64, label %sw.bb69
    i32 512, label %sw.bb71
    i32 1024, label %sw.bb73
    i32 2048, label %sw.bb75
  ]

sw.bb65:                                          ; preds = %if.else64
  %call66 = call i32 @EVP_PKEY_sign_init(%struct.evp_pkey_ctx_st* noundef nonnull %ctx.3) #8
  br label %if.end78

sw.bb67:                                          ; preds = %if.else64
  %call68 = call i32 @EVP_PKEY_verify_init(%struct.evp_pkey_ctx_st* noundef nonnull %ctx.3) #8
  br label %if.end78

sw.bb69:                                          ; preds = %if.else64
  %call70 = call i32 @EVP_PKEY_verify_recover_init(%struct.evp_pkey_ctx_st* noundef nonnull %ctx.3) #8
  br label %if.end78

sw.bb71:                                          ; preds = %if.else64
  %call72 = call i32 @EVP_PKEY_encrypt_init(%struct.evp_pkey_ctx_st* noundef nonnull %ctx.3) #8
  br label %if.end78

sw.bb73:                                          ; preds = %if.else64
  %call74 = call i32 @EVP_PKEY_decrypt_init(%struct.evp_pkey_ctx_st* noundef nonnull %ctx.3) #8
  br label %if.end78

sw.bb75:                                          ; preds = %if.else64
  %call76 = call i32 @EVP_PKEY_derive_init(%struct.evp_pkey_ctx_st* noundef nonnull %ctx.3) #8
  br label %if.end78

if.end78:                                         ; preds = %sw.bb65, %sw.bb67, %sw.bb69, %sw.bb71, %sw.bb73, %sw.bb75, %sw.bb59, %sw.bb61
  %rv.0 = phi i32 [ %call62, %sw.bb61 ], [ %call60, %sw.bb59 ], [ %call76, %sw.bb75 ], [ %call74, %sw.bb73 ], [ %call72, %sw.bb71 ], [ %call70, %sw.bb69 ], [ %call68, %sw.bb67 ], [ %call66, %sw.bb65 ]
  %cmp79 = icmp slt i32 %rv.0, 1
  br i1 %cmp79, label %if.then80, label %end

if.then80:                                        ; preds = %if.else64, %if.then58, %if.end78
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef nonnull %ctx.3) #8
  br label %end

end:                                              ; preds = %cleanup, %if.end78, %if.then80, %if.end53, %if.else39, %if.then8, %if.then
  %ctx.4 = phi %struct.evp_pkey_ctx_st* [ null, %if.then ], [ null, %cleanup ], [ null, %if.end53 ], [ null, %if.then80 ], [ %ctx.3, %if.end78 ], [ null, %if.else39 ], [ null, %if.then8 ]
  %5 = load i8*, i8** %passin, align 8, !tbaa !3
  call void @CRYPTO_free(i8* noundef %5, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.89, i64 0, i64 0), i32 noundef 655) #8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7
  ret %struct.evp_pkey_ctx_st* %ctx.4
}

declare dso_local i8* @app_get0_propq() local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @setup_peer(%struct.evp_pkey_ctx_st* noundef %ctx, i32 noundef %peerform, i8* noundef %file, %struct.engine_st* noundef %e) unnamed_addr #0 {
entry:
  %cmp = icmp eq i32 %peerform, 8
  %spec.select = select i1 %cmp, %struct.engine_st* %e, %struct.engine_st* null
  %call = tail call %struct.evp_pkey_st* @load_pubkey(i8* noundef %file, i32 noundef %peerform, i32 noundef 0, i8* noundef null, %struct.engine_st* noundef %spec.select, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.109, i64 0, i64 0)) #8
  %cmp1 = icmp eq %struct.evp_pkey_st* %call, null
  br i1 %cmp1, label %if.then2, label %if.end4

if.then2:                                         ; preds = %entry
  %0 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call3 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %0, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.110, i64 0, i64 0), i8* noundef %file) #8
  br label %cleanup

if.end4:                                          ; preds = %entry
  %call5 = tail call i32 @EVP_PKEY_derive_set_peer(%struct.evp_pkey_ctx_st* noundef %ctx, %struct.evp_pkey_st* noundef nonnull %call) #8
  %cmp6 = icmp sgt i32 %call5, 0
  %conv = zext i1 %cmp6 to i32
  tail call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef nonnull %call) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.then2
  %retval.0 = phi i32 [ 0, %if.then2 ], [ %conv, %if.end4 ]
  ret i32 %retval.0
}

declare dso_local i32 @OPENSSL_sk_num(%struct.stack_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_OPENSSL_STRING_sk_type(%struct.stack_st_OPENSSL_STRING* noundef readnone %sk) unnamed_addr #4 {
entry:
  %0 = bitcast %struct.stack_st_OPENSSL_STRING* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare dso_local i8* @OPENSSL_sk_value(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i32 @pkey_ctrl_string(%struct.evp_pkey_ctx_st* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i8* @strchr(i8* noundef, i32 noundef) local_unnamed_addr #5

declare dso_local i32 @BIO_snprintf(i8* noundef, i64 noundef, i8* noundef, ...) local_unnamed_addr #2

declare dso_local i32 @EVP_read_pw_string(i8* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i8* @CRYPTO_strdup(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i32 @app_passwd(i8* noundef, i8* noundef, i8** noundef, i8** noundef) local_unnamed_addr #2

declare dso_local i32 @EVP_PKEY_CTX_ctrl_str(%struct.evp_pkey_ctx_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local %struct.bio_st* @bio_open_default(i8* noundef, i8 noundef signext, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
declare dso_local i32 @stat(i8* noundef nonnull, %struct.stat* noundef nonnull) local_unnamed_addr #0

declare dso_local %struct.bio_st* @BIO_new_file(i8* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local i32 @bio_to_mem(i8** noundef, i32 noundef, %struct.bio_st* noundef) local_unnamed_addr #2

declare dso_local i32 @BIO_free(%struct.bio_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @do_raw_keyop(i32 noundef %pkey_op, %struct.evp_md_ctx_st* noundef %mctx, %struct.evp_pkey_st* noundef %pkey, %struct.bio_st* noundef %in, i32 noundef %filesize, i8* noundef %sig, i32 noundef %siglen, i8** noundef writeonly %out, i64* noundef %poutlen) unnamed_addr #0 {
entry:
  %tbuf = alloca [2048 x i8], align 16
  %0 = getelementptr inbounds [2048 x i8], [2048 x i8]* %tbuf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 2048, i8* nonnull %0) #7
  %call = tail call i32 @EVP_PKEY_get_id(%struct.evp_pkey_st* noundef %pkey) #8
  %cmp = icmp eq i32 %call, 1087
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call1 = tail call i32 @EVP_PKEY_get_id(%struct.evp_pkey_st* noundef %pkey) #8
  %cmp2 = icmp eq i32 %call1, 1088
  br i1 %cmp2, label %if.then, label %if.end34

if.then:                                          ; preds = %lor.lhs.false, %entry
  %cmp3 = icmp slt i32 %filesize, 0
  br i1 %cmp3, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.then
  %1 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call5 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %1, i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.111, i64 0, i64 0)) #8
  br label %end

if.end:                                           ; preds = %if.then
  %conv141 = zext i32 %filesize to i64
  %call6 = tail call i8* @app_malloc(i64 noundef %conv141, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.112, i64 0, i64 0)) #8
  switch i32 %pkey_op, label %end [
    i32 32, label %sw.bb
    i32 16, label %sw.bb16
  ]

sw.bb:                                            ; preds = %if.end
  %call7 = tail call i32 @BIO_read(%struct.bio_st* noundef %in, i8* noundef %call6, i32 noundef %filesize) #8
  %cmp8.not = icmp eq i32 %call7, %filesize
  br i1 %cmp8.not, label %if.end12, label %if.then10

if.then10:                                        ; preds = %sw.bb
  %2 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call11 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %2, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.113, i64 0, i64 0)) #8
  br label %end

if.end12:                                         ; preds = %sw.bb
  %conv13 = sext i32 %siglen to i64
  %conv14152 = zext i32 %filesize to i64
  %call15 = tail call i32 @EVP_DigestVerify(%struct.evp_md_ctx_st* noundef %mctx, i8* noundef %sig, i64 noundef %conv13, i8* noundef %call6, i64 noundef %conv14152) #8
  br label %end

sw.bb16:                                          ; preds = %if.end
  %call17 = tail call i32 @BIO_read(%struct.bio_st* noundef %in, i8* noundef %call6, i32 noundef %filesize) #8
  %cmp18.not = icmp eq i32 %call17, %filesize
  br i1 %cmp18.not, label %if.end22, label %if.then20

if.then20:                                        ; preds = %sw.bb16
  %3 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call21 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %3, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.113, i64 0, i64 0)) #8
  br label %end

if.end22:                                         ; preds = %sw.bb16
  %conv23153 = zext i32 %filesize to i64
  %call24 = tail call i32 @EVP_DigestSign(%struct.evp_md_ctx_st* noundef %mctx, i8* noundef null, i64* noundef %poutlen, i8* noundef %call6, i64 noundef %conv23153) #8
  %cmp25 = icmp eq i32 %call24, 1
  %cmp27 = icmp ne i8** %out, null
  %or.cond = and i1 %cmp27, %cmp25
  br i1 %or.cond, label %if.then29, label %end

if.then29:                                        ; preds = %if.end22
  %4 = load i64, i64* %poutlen, align 8, !tbaa !15
  %call30 = tail call i8* @app_malloc(i64 noundef %4, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.100, i64 0, i64 0)) #8
  store i8* %call30, i8** %out, align 8, !tbaa !3
  %call32 = tail call i32 @EVP_DigestSign(%struct.evp_md_ctx_st* noundef %mctx, i8* noundef %call30, i64* noundef nonnull %poutlen, i8* noundef %call6, i64 noundef %conv23153) #8
  br label %end

if.end34:                                         ; preds = %lor.lhs.false
  switch i32 %pkey_op, label %end [
    i32 32, label %for.cond
    i32 16, label %for.cond57
  ]

for.cond:                                         ; preds = %if.end34, %if.end45
  %rv.0 = phi i32 [ 1, %if.end45 ], [ 0, %if.end34 ]
  %call36 = call i32 @BIO_read(%struct.bio_st* noundef %in, i8* noundef nonnull %0, i32 noundef 2048) #8
  %cmp37 = icmp eq i32 %call36, 0
  br i1 %cmp37, label %for.end, label %if.end40

if.end40:                                         ; preds = %for.cond
  %cmp41 = icmp slt i32 %call36, 0
  br i1 %cmp41, label %if.then43, label %if.end45

if.then43:                                        ; preds = %if.end40
  %5 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call44 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %5, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.113, i64 0, i64 0)) #8
  br label %end

if.end45:                                         ; preds = %if.end40
  %conv47142 = zext i32 %call36 to i64
  %call48 = call i32 @EVP_DigestVerifyUpdate(%struct.evp_md_ctx_st* noundef %mctx, i8* noundef nonnull %0, i64 noundef %conv47142) #8
  %cmp49.not = icmp eq i32 %call48, 1
  br i1 %cmp49.not, label %for.cond, label %if.then51

if.then51:                                        ; preds = %if.end45
  %6 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call52 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %6, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.114, i64 0, i64 0)) #8
  br label %end

for.end:                                          ; preds = %for.cond
  %conv54 = sext i32 %siglen to i64
  %call55 = call i32 @EVP_DigestVerifyFinal(%struct.evp_md_ctx_st* noundef %mctx, i8* noundef %sig, i64 noundef %conv54) #8
  br label %end

for.cond57:                                       ; preds = %if.end34, %if.end68
  %rv.1 = phi i32 [ 1, %if.end68 ], [ 0, %if.end34 ]
  %call59 = call i32 @BIO_read(%struct.bio_st* noundef %in, i8* noundef nonnull %0, i32 noundef 2048) #8
  %cmp60 = icmp eq i32 %call59, 0
  br i1 %cmp60, label %for.end77, label %if.end63

if.end63:                                         ; preds = %for.cond57
  %cmp64 = icmp slt i32 %call59, 0
  br i1 %cmp64, label %if.then66, label %if.end68

if.then66:                                        ; preds = %if.end63
  %7 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call67 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %7, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.113, i64 0, i64 0)) #8
  br label %end

if.end68:                                         ; preds = %if.end63
  %conv70143 = zext i32 %call59 to i64
  %call71 = call i32 @EVP_DigestSignUpdate(%struct.evp_md_ctx_st* noundef %mctx, i8* noundef nonnull %0, i64 noundef %conv70143) #8
  %cmp72.not = icmp eq i32 %call71, 1
  br i1 %cmp72.not, label %for.cond57, label %if.then74

if.then74:                                        ; preds = %if.end68
  %8 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call75 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %8, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.115, i64 0, i64 0)) #8
  br label %end

for.end77:                                        ; preds = %for.cond57
  %call78 = call i32 @EVP_DigestSignFinal(%struct.evp_md_ctx_st* noundef %mctx, i8* noundef null, i64* noundef %poutlen) #8
  %cmp79 = icmp eq i32 %call78, 1
  %cmp82 = icmp ne i8** %out, null
  %or.cond89 = and i1 %cmp82, %cmp79
  br i1 %or.cond89, label %if.then84, label %end

if.then84:                                        ; preds = %for.end77
  %9 = load i64, i64* %poutlen, align 8, !tbaa !15
  %call85 = call i8* @app_malloc(i64 noundef %9, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.100, i64 0, i64 0)) #8
  store i8* %call85, i8** %out, align 8, !tbaa !3
  %call86 = call i32 @EVP_DigestSignFinal(%struct.evp_md_ctx_st* noundef %mctx, i8* noundef %call85, i64* noundef nonnull %poutlen) #8
  br label %end

end:                                              ; preds = %for.end, %if.end34, %if.then84, %for.end77, %if.end12, %if.end, %if.then29, %if.end22, %if.then74, %if.then66, %if.then51, %if.then43, %if.then20, %if.then10, %if.then4
  %rv.2 = phi i32 [ 0, %if.then4 ], [ 0, %if.end ], [ 0, %if.then20 ], [ %call32, %if.then29 ], [ %call24, %if.end22 ], [ 0, %if.then10 ], [ %call15, %if.end12 ], [ 0, %if.end34 ], [ %call86, %if.then84 ], [ %call78, %for.end77 ], [ %rv.1, %if.then66 ], [ %call71, %if.then74 ], [ %call55, %for.end ], [ %rv.0, %if.then43 ], [ %call48, %if.then51 ]
  %mbuf.0 = phi i8* [ null, %if.then4 ], [ %call6, %if.end ], [ %call6, %if.then20 ], [ %call6, %if.then29 ], [ %call6, %if.end22 ], [ %call6, %if.then10 ], [ %call6, %if.end12 ], [ null, %if.end34 ], [ null, %if.then84 ], [ null, %for.end77 ], [ null, %if.then66 ], [ null, %if.then74 ], [ null, %for.end ], [ null, %if.then43 ], [ null, %if.then51 ]
  call void @CRYPTO_free(i8* noundef %mbuf.0, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.89, i64 0, i64 0), i32 noundef 799) #8
  call void @llvm.lifetime.end.p0i8(i64 2048, i8* nonnull %0) #7
  ret i32 %rv.2
}

declare dso_local i32 @EVP_PKEY_verify(%struct.evp_pkey_ctx_st* noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @do_keyop(%struct.evp_pkey_ctx_st* noundef %ctx, i32 noundef %pkey_op, i8* noundef %out, i64* noundef %poutlen, i8* noundef %in, i64 noundef %inlen) unnamed_addr #0 {
entry:
  switch i32 %pkey_op, label %sw.epilog [
    i32 64, label %sw.bb
    i32 16, label %sw.bb1
    i32 512, label %sw.bb3
    i32 1024, label %sw.bb5
    i32 2048, label %sw.bb7
  ]

sw.bb:                                            ; preds = %entry
  %call = tail call i32 @EVP_PKEY_verify_recover(%struct.evp_pkey_ctx_st* noundef %ctx, i8* noundef %out, i64* noundef %poutlen, i8* noundef %in, i64 noundef %inlen) #8
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %call2 = tail call i32 @EVP_PKEY_sign(%struct.evp_pkey_ctx_st* noundef %ctx, i8* noundef %out, i64* noundef %poutlen, i8* noundef %in, i64 noundef %inlen) #8
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  %call4 = tail call i32 @EVP_PKEY_encrypt(%struct.evp_pkey_ctx_st* noundef %ctx, i8* noundef %out, i64* noundef %poutlen, i8* noundef %in, i64 noundef %inlen) #8
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  %call6 = tail call i32 @EVP_PKEY_decrypt(%struct.evp_pkey_ctx_st* noundef %ctx, i8* noundef %out, i64* noundef %poutlen, i8* noundef %in, i64 noundef %inlen) #8
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  %call8 = tail call i32 @EVP_PKEY_derive(%struct.evp_pkey_ctx_st* noundef %ctx, i8* noundef %out, i64* noundef %poutlen) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb7, %sw.bb5, %sw.bb3, %sw.bb1, %sw.bb
  %rv.0 = phi i32 [ 0, %entry ], [ %call8, %sw.bb7 ], [ %call6, %sw.bb5 ], [ %call4, %sw.bb3 ], [ %call2, %sw.bb1 ], [ %call, %sw.bb ]
  ret i32 %rv.0
}

declare dso_local i8* @app_malloc(i64 noundef, i8* noundef) local_unnamed_addr #2

declare dso_local i32 @ASN1_parse_dump(%struct.bio_st* noundef, i8* noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare dso_local void @ERR_print_errors(%struct.bio_st* noundef) local_unnamed_addr #2

declare dso_local i32 @BIO_dump(%struct.bio_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i32 @BIO_write(%struct.bio_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef) local_unnamed_addr #2

declare dso_local void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #2

declare dso_local void @EVP_MD_free(%struct.evp_md_st* noundef) local_unnamed_addr #2

declare dso_local void @release_engine(%struct.engine_st* noundef) local_unnamed_addr #2

declare dso_local void @BIO_free_all(%struct.bio_st* noundef) local_unnamed_addr #2

declare dso_local void @OPENSSL_sk_free(%struct.stack_st* noundef) local_unnamed_addr #2

declare dso_local void @NCONF_free(%struct.conf_st* noundef) local_unnamed_addr #2

declare dso_local %struct.evp_pkey_st* @load_key(i8* noundef, i32 noundef, i32 noundef, i8* noundef, %struct.engine_st* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local %struct.evp_pkey_st* @load_pubkey(i8* noundef, i32 noundef, i32 noundef, i8* noundef, %struct.engine_st* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local %struct.x509_st* @load_cert_pass(i8* noundef, i32 noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local %struct.evp_pkey_st* @X509_get_pubkey(%struct.x509_st* noundef) local_unnamed_addr #2

declare dso_local void @X509_free(%struct.x509_st* noundef) local_unnamed_addr #2

declare dso_local i32 @OBJ_sn2nid(i8* noundef) local_unnamed_addr #2

declare dso_local i32 @OBJ_ln2nid(i8* noundef) local_unnamed_addr #2

declare dso_local %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_id(i32 noundef, %struct.engine_st* noundef) local_unnamed_addr #2

declare dso_local %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_from_name(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local i32 @EVP_PKEY_get_size(%struct.evp_pkey_st* noundef) local_unnamed_addr #2

declare dso_local %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new(%struct.evp_pkey_st* noundef, %struct.engine_st* noundef) local_unnamed_addr #2

declare dso_local %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_from_pkey(%struct.ossl_lib_ctx_st* noundef, %struct.evp_pkey_st* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local void @EVP_PKEY_free(%struct.evp_pkey_st* noundef) local_unnamed_addr #2

declare dso_local void @EVP_MD_CTX_set_pkey_ctx(%struct.evp_md_ctx_st* noundef, %struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #2

declare dso_local i32 @EVP_DigestSignInit_ex(%struct.evp_md_ctx_st* noundef, %struct.evp_pkey_ctx_st** noundef, i8* noundef, %struct.ossl_lib_ctx_st* noundef, i8* noundef, %struct.evp_pkey_st* noundef, %struct.ossl_param_st* noundef) local_unnamed_addr #2

declare dso_local i32 @EVP_DigestVerifyInit_ex(%struct.evp_md_ctx_st* noundef, %struct.evp_pkey_ctx_st** noundef, i8* noundef, %struct.ossl_lib_ctx_st* noundef, i8* noundef, %struct.evp_pkey_st* noundef, %struct.ossl_param_st* noundef) local_unnamed_addr #2

declare dso_local i32 @EVP_PKEY_sign_init(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #2

declare dso_local i32 @EVP_PKEY_verify_init(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #2

declare dso_local i32 @EVP_PKEY_verify_recover_init(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #2

declare dso_local i32 @EVP_PKEY_encrypt_init(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #2

declare dso_local i32 @EVP_PKEY_decrypt_init(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #2

declare dso_local i32 @EVP_PKEY_derive_init(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #2

declare dso_local i32 @EVP_PKEY_derive_set_peer(%struct.evp_pkey_ctx_st* noundef, %struct.evp_pkey_st* noundef) local_unnamed_addr #2

declare dso_local i32 @EVP_PKEY_verify_recover(%struct.evp_pkey_ctx_st* noundef, i8* noundef, i64* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare dso_local i32 @EVP_PKEY_sign(%struct.evp_pkey_ctx_st* noundef, i8* noundef, i64* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare dso_local i32 @EVP_PKEY_encrypt(%struct.evp_pkey_ctx_st* noundef, i8* noundef, i64* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare dso_local i32 @EVP_PKEY_decrypt(%struct.evp_pkey_ctx_st* noundef, i8* noundef, i64* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare dso_local i32 @EVP_PKEY_derive(%struct.evp_pkey_ctx_st* noundef, i8* noundef, i64* noundef) local_unnamed_addr #2

declare dso_local i32 @EVP_PKEY_get_id(%struct.evp_pkey_st* noundef) local_unnamed_addr #2

declare dso_local i32 @BIO_read(%struct.bio_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i32 @EVP_DigestVerify(%struct.evp_md_ctx_st* noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare dso_local i32 @EVP_DigestSign(%struct.evp_md_ctx_st* noundef, i8* noundef, i64* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare dso_local i32 @EVP_DigestVerifyUpdate(%struct.evp_md_ctx_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare dso_local i32 @EVP_DigestVerifyFinal(%struct.evp_md_ctx_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare dso_local i32 @EVP_DigestSignUpdate(%struct.evp_md_ctx_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare dso_local i32 @EVP_DigestSignFinal(%struct.evp_md_ctx_st* noundef, i8* noundef, i64* noundef) local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #6

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nobuiltin nounwind "no-builtins" }
attributes #9 = { nobuiltin nounwind readonly willreturn "no-builtins" }
attributes #10 = { nobuiltin "no-builtins" }

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
!12 = !{!5, !5, i64 0}
!13 = distinct !{!13, !10}
!14 = distinct !{!14, !10}
!15 = !{!16, !16, i64 0}
!16 = !{!"long", !5, i64 0}
