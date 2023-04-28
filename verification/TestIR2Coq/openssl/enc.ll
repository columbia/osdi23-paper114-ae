; ModuleID = 'apps/enc.c'
source_filename = "apps/enc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.options_st = type { i8*, i32, i32, i8* }
%struct.bio_st = type opaque
%struct.evp_cipher_ctx_st = type opaque
%struct.evp_cipher_st = type opaque
%struct.evp_md_st = type opaque
%struct.doall_enc_ciphers = type { %struct.bio_st*, i32 }
%struct.engine_st = type opaque
%struct.bio_method_st = type opaque
%struct.obj_name_st = type { i32, i32, i8*, i8* }

@OPT_SECTION_STR = external dso_local constant [0 x i8], align 1
@.str = private unnamed_addr constant [18 x i8] c"General options:\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Display this summary\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"list\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"List ciphers\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"ciphers\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"Alias for -list\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"e\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"Encrypt\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"d\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"Decrypt\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"p\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"Print the iv/key\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"P\00", align 1
@.str.14 = private unnamed_addr constant [26 x i8] c"Print the iv/key and exit\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"engine\00", align 1
@.str.16 = private unnamed_addr constant [39 x i8] c"Use engine, possibly a hardware device\00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"Input options:\0A\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"Input file\00", align 1
@.str.20 = private unnamed_addr constant [2 x i8] c"k\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"Passphrase\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"kfile\00", align 1
@.str.23 = private unnamed_addr constant [26 x i8] c"Read passphrase from file\00", align 1
@.str.24 = private unnamed_addr constant [17 x i8] c"Output options:\0A\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@.str.26 = private unnamed_addr constant [12 x i8] c"Output file\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"pass\00", align 1
@.str.28 = private unnamed_addr constant [18 x i8] c"Passphrase source\00", align 1
@.str.29 = private unnamed_addr constant [2 x i8] c"v\00", align 1
@.str.30 = private unnamed_addr constant [15 x i8] c"Verbose output\00", align 1
@.str.31 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.32 = private unnamed_addr constant [51 x i8] c"Base64 encode/decode, depending on encryption flag\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"base64\00", align 1
@.str.34 = private unnamed_addr constant [18 x i8] c"Same as option -a\00", align 1
@.str.35 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.36 = private unnamed_addr constant [64 x i8] c"Used with -[base64|a] to specify base64 buffer as a single line\00", align 1
@.str.37 = private unnamed_addr constant [21 x i8] c"Encryption options:\0A\00", align 1
@.str.38 = private unnamed_addr constant [6 x i8] c"nopad\00", align 1
@.str.39 = private unnamed_addr constant [31 x i8] c"Disable standard block padding\00", align 1
@.str.40 = private unnamed_addr constant [5 x i8] c"salt\00", align 1
@.str.41 = private unnamed_addr constant [30 x i8] c"Use salt in the KDF (default)\00", align 1
@.str.42 = private unnamed_addr constant [7 x i8] c"nosalt\00", align 1
@.str.43 = private unnamed_addr constant [27 x i8] c"Do not use salt in the KDF\00", align 1
@.str.44 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@.str.45 = private unnamed_addr constant [17 x i8] c"Print debug info\00", align 1
@.str.46 = private unnamed_addr constant [8 x i8] c"bufsize\00", align 1
@.str.47 = private unnamed_addr constant [12 x i8] c"Buffer size\00", align 1
@.str.48 = private unnamed_addr constant [2 x i8] c"K\00", align 1
@.str.49 = private unnamed_addr constant [16 x i8] c"Raw key, in hex\00", align 1
@.str.50 = private unnamed_addr constant [2 x i8] c"S\00", align 1
@.str.51 = private unnamed_addr constant [13 x i8] c"Salt, in hex\00", align 1
@.str.52 = private unnamed_addr constant [3 x i8] c"iv\00", align 1
@.str.53 = private unnamed_addr constant [10 x i8] c"IV in hex\00", align 1
@.str.54 = private unnamed_addr constant [3 x i8] c"md\00", align 1
@.str.55 = private unnamed_addr constant [57 x i8] c"Use specified digest to create a key from the passphrase\00", align 1
@.str.56 = private unnamed_addr constant [5 x i8] c"iter\00", align 1
@.str.57 = private unnamed_addr constant [52 x i8] c"Specify the iteration count and force use of PBKDF2\00", align 1
@.str.58 = private unnamed_addr constant [7 x i8] c"pbkdf2\00", align 1
@.str.59 = private unnamed_addr constant [45 x i8] c"Use password-based key derivation function 2\00", align 1
@.str.60 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.61 = private unnamed_addr constant [14 x i8] c"Don't encrypt\00", align 1
@.str.62 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.63 = private unnamed_addr constant [21 x i8] c"Any supported cipher\00", align 1
@.str.64 = private unnamed_addr constant [23 x i8] c"Random state options:\0A\00", align 1
@.str.65 = private unnamed_addr constant [5 x i8] c"rand\00", align 1
@.str.66 = private unnamed_addr constant [56 x i8] c"Load the given file(s) into the random number generator\00", align 1
@.str.67 = private unnamed_addr constant [10 x i8] c"writerand\00", align 1
@.str.68 = private unnamed_addr constant [40 x i8] c"Write random data to the specified file\00", align 1
@.str.69 = private unnamed_addr constant [19 x i8] c"Provider options:\0A\00", align 1
@.str.70 = private unnamed_addr constant [14 x i8] c"provider-path\00", align 1
@.str.71 = private unnamed_addr constant [68 x i8] c"Provider load path (must be before 'provider' argument if required)\00", align 1
@.str.72 = private unnamed_addr constant [9 x i8] c"provider\00", align 1
@.str.73 = private unnamed_addr constant [51 x i8] c"Provider to load (can be specified multiple times)\00", align 1
@.str.74 = private unnamed_addr constant [10 x i8] c"propquery\00", align 1
@.str.75 = private unnamed_addr constant [45 x i8] c"Property query used when fetching algorithms\00", align 1
@enc_options = dso_local constant [42 x %struct.options_st] [%struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i32 2, i32 45, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), i32 2, i32 45, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0), i32 3, i32 45, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0), i32 8, i32 45, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0), i32 9, i32 45, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i32 0, i32 0), i32 15, i32 45, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.14, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i32 0, i32 0), i32 7, i32 115, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.16, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i32 0, i32 0), i32 4, i32 60, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i32 0, i32 0), i32 20, i32 115, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i32 0, i32 0), i32 21, i32 60, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.23, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i32 0, i32 0), i32 5, i32 62, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.26, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i32 0, i32 0), i32 6, i32 115, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.28, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i32 0, i32 0), i32 10, i32 45, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.30, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i32 0, i32 0), i32 17, i32 45, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.32, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.33, i32 0, i32 0), i32 17, i32 45, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.34, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.35, i32 0, i32 0), i32 16, i32 45, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.36, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.37, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.38, i32 0, i32 0), i32 11, i32 45, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.39, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.40, i32 0, i32 0), i32 12, i32 45, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.41, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.42, i32 0, i32 0), i32 13, i32 45, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.43, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.44, i32 0, i32 0), i32 14, i32 45, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.45, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.46, i32 0, i32 0), i32 19, i32 115, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.47, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.48, i32 0, i32 0), i32 22, i32 115, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.49, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.50, i32 0, i32 0), i32 24, i32 115, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.51, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.52, i32 0, i32 0), i32 25, i32 115, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.53, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.54, i32 0, i32 0), i32 26, i32 115, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.55, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.56, i32 0, i32 0), i32 27, i32 112, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.57, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.58, i32 0, i32 0), i32 28, i32 45, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.59, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.60, i32 0, i32 0), i32 23, i32 45, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.61, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.62, i32 0, i32 0), i32 29, i32 45, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.63, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.64, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.65, i32 0, i32 0), i32 1501, i32 115, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.66, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.67, i32 0, i32 0), i32 1502, i32 62, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.68, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.69, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.70, i32 0, i32 0), i32 1602, i32 115, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.71, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.72, i32 0, i32 0), i32 1601, i32 115, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.73, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.74, i32 0, i32 0), i32 1603, i32 115, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.75, i32 0, i32 0) }, %struct.options_st zeroinitializer], align 16
@enc_main.buf = internal global [128 x i8] zeroinitializer, align 16
@enc_main.magic = internal constant [9 x i8] c"Salted__\00", align 1
@.str.76 = private unnamed_addr constant [4 x i8] c"enc\00", align 1
@bio_err = external dso_local local_unnamed_addr global %struct.bio_st*, align 8
@.str.77 = private unnamed_addr constant [28 x i8] c"%s: Use -help for summary.\0A\00", align 1
@bio_out = external dso_local local_unnamed_addr global %struct.bio_st*, align 8
@.str.78 = private unnamed_addr constant [20 x i8] c"Supported ciphers:\0A\00", align 1
@.str.79 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.80 = private unnamed_addr constant [27 x i8] c"%s Can't read key from %s\0A\00", align 1
@.str.81 = private unnamed_addr constant [26 x i8] c"%s: zero length password\0A\00", align 1
@.str.82 = private unnamed_addr constant [12 x i8] c"bufsize=%d\0A\00", align 1
@.str.83 = private unnamed_addr constant [7 x i8] c"strbuf\00", align 1
@.str.84 = private unnamed_addr constant [11 x i8] c"evp buffer\00", align 1
@.str.85 = private unnamed_addr constant [24 x i8] c"Error getting password\0A\00", align 1
@.str.86 = private unnamed_addr constant [22 x i8] c"enter %s %s password:\00", align 1
@.str.87 = private unnamed_addr constant [11 x i8] c"encryption\00", align 1
@.str.88 = private unnamed_addr constant [11 x i8] c"decryption\00", align 1
@.str.89 = private unnamed_addr constant [19 x i8] c"bad password read\0A\00", align 1
@.str.90 = private unnamed_addr constant [24 x i8] c"invalid hex salt value\0A\00", align 1
@.str.91 = private unnamed_addr constant [19 x i8] c"RAND_bytes failed\0A\00", align 1
@.str.92 = private unnamed_addr constant [27 x i8] c"error writing output file\0A\00", align 1
@.str.93 = private unnamed_addr constant [26 x i8] c"error reading input file\0A\00", align 1
@.str.94 = private unnamed_addr constant [18 x i8] c"bad magic number\0A\00", align 1
@.str.95 = private unnamed_addr constant [26 x i8] c"PKCS5_PBKDF2_HMAC failed\0A\00", align 1
@.str.96 = private unnamed_addr constant [87 x i8] c"*** WARNING : deprecated key derivation used.\0AUsing -iter or -pbkdf2 would be better.\0A\00", align 1
@.str.97 = private unnamed_addr constant [23 x i8] c"EVP_BytesToKey failed\0A\00", align 1
@.str.98 = private unnamed_addr constant [37 x i8] c"warning: iv not used by this cipher\0A\00", align 1
@.str.99 = private unnamed_addr constant [22 x i8] c"invalid hex iv value\0A\00", align 1
@.str.100 = private unnamed_addr constant [14 x i8] c"iv undefined\0A\00", align 1
@.str.101 = private unnamed_addr constant [23 x i8] c"invalid hex key value\0A\00", align 1
@.str.102 = private unnamed_addr constant [25 x i8] c"Error setting cipher %s\0A\00", align 1
@.str.103 = private unnamed_addr constant [6 x i8] c"salt=\00", align 1
@.str.104 = private unnamed_addr constant [5 x i8] c"%02X\00", align 1
@.str.105 = private unnamed_addr constant [5 x i8] c"key=\00", align 1
@.str.106 = private unnamed_addr constant [5 x i8] c"iv =\00", align 1
@.str.107 = private unnamed_addr constant [13 x i8] c"bad decrypt\0A\00", align 1
@.str.108 = private unnamed_addr constant [21 x i8] c"bytes read   : %8ju\0A\00", align 1
@.str.109 = private unnamed_addr constant [21 x i8] c"bytes written: %8ju\0A\00", align 1
@.str.110 = private unnamed_addr constant [11 x i8] c"apps/enc.c\00", align 1
@.str.111 = private unnamed_addr constant [7 x i8] c"-%-25s\00", align 1
@.str.112 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.113 = private unnamed_addr constant [41 x i8] c"hex string is too long, ignoring excess\0A\00", align 1
@.str.114 = private unnamed_addr constant [60 x i8] c"hex string is too short, padding with zero bytes to length\0A\00", align 1
@.str.115 = private unnamed_addr constant [15 x i8] c"non-hex digit\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @enc_main(i32 noundef %argc, i8** noundef %argv) local_unnamed_addr #0 {
entry:
  %ctx = alloca %struct.evp_cipher_ctx_st*, align 8
  %cipher = alloca %struct.evp_cipher_st*, align 8
  %dgst = alloca %struct.evp_md_st*, align 8
  %pass = alloca i8*, align 8
  %mbuf = alloca [8 x i8], align 1
  %key = alloca [64 x i8], align 16
  %iv = alloca [16 x i8], align 16
  %salt = alloca [8 x i8], align 1
  %n = alloca i64, align 8
  %dec = alloca %struct.doall_enc_ciphers, align 8
  %prompt = alloca [200 x i8], align 16
  %tmpkeyiv = alloca [80 x i8], align 16
  %0 = bitcast %struct.evp_cipher_ctx_st** %ctx to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #6
  store %struct.evp_cipher_ctx_st* null, %struct.evp_cipher_ctx_st** %ctx, align 8, !tbaa !3
  %1 = bitcast %struct.evp_cipher_st** %cipher to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #6
  store %struct.evp_cipher_st* null, %struct.evp_cipher_st** %cipher, align 8, !tbaa !3
  %2 = bitcast %struct.evp_md_st** %dgst to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #6
  store %struct.evp_md_st* null, %struct.evp_md_st** %dgst, align 8, !tbaa !3
  %3 = bitcast i8** %pass to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #6
  store i8* null, i8** %pass, align 8, !tbaa !3
  %4 = getelementptr inbounds [8 x i8], [8 x i8]* %mbuf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #6
  %5 = getelementptr inbounds [64 x i8], [64 x i8]* %key, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %5) #6
  %6 = getelementptr inbounds [16 x i8], [16 x i8]* %iv, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %6) #6
  %7 = getelementptr inbounds [8 x i8], [8 x i8]* %salt, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #6
  %8 = bitcast i64* %n to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #6
  %9 = bitcast %struct.doall_enc_ciphers* %dec to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %9) #6
  %10 = load i8*, i8** %argv, align 8, !tbaa !3
  %call = tail call i32 @strcmp(i8* noundef %10, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.33, i64 0, i64 0)) #7
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.end6, label %if.else

if.else:                                          ; preds = %entry
  %call2 = tail call i32 @strcmp(i8* noundef %10, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.76, i64 0, i64 0)) #7
  %cmp3.not = icmp eq i32 %call2, 0
  %spec.select = select i1 %cmp3.not, i8* null, i8* %10
  br label %if.end6

if.end6:                                          ; preds = %if.else, %entry
  %ciphername.0 = phi i8* [ null, %entry ], [ %spec.select, %if.else ]
  %base64.0 = phi i32 [ 1, %entry ], [ 0, %if.else ]
  %call7 = tail call i8* @opt_init(i32 noundef %argc, i8** noundef nonnull %argv, %struct.options_st* noundef getelementptr inbounds ([42 x %struct.options_st], [42 x %struct.options_st]* @enc_options, i64 0, i64 0)) #8
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %if.end6
  %hkey.0 = phi i8* [ null, %if.end6 ], [ %hkey.0.be, %while.cond.backedge ]
  %hiv.0 = phi i8* [ null, %if.end6 ], [ %hiv.0.be, %while.cond.backedge ]
  %hsalt.0 = phi i8* [ null, %if.end6 ], [ %hsalt.0.be, %while.cond.backedge ]
  %digestname.0 = phi i8* [ null, %if.end6 ], [ %digestname.0.be, %while.cond.backedge ]
  %infile.0 = phi i8* [ null, %if.end6 ], [ %infile.0.be, %while.cond.backedge ]
  %outfile.0 = phi i8* [ null, %if.end6 ], [ %outfile.0.be, %while.cond.backedge ]
  %str.0 = phi i8* [ null, %if.end6 ], [ %str.0.be, %while.cond.backedge ]
  %passarg.0 = phi i8* [ null, %if.end6 ], [ %passarg.0.be, %while.cond.backedge ]
  %ciphername.1 = phi i8* [ %ciphername.0, %if.end6 ], [ %ciphername.1.be, %while.cond.backedge ]
  %bsize.0 = phi i32 [ 8192, %if.end6 ], [ %bsize.0.be, %while.cond.backedge ]
  %verbose.0 = phi i32 [ 0, %if.end6 ], [ %verbose.0.be, %while.cond.backedge ]
  %debug.0 = phi i32 [ 0, %if.end6 ], [ %debug.0.be, %while.cond.backedge ]
  %olb64.0 = phi i32 [ 0, %if.end6 ], [ %olb64.0.be, %while.cond.backedge ]
  %nosalt.0 = phi i32 [ 0, %if.end6 ], [ %nosalt.0.be, %while.cond.backedge ]
  %enc.0 = phi i32 [ 1, %if.end6 ], [ %enc.0.be, %while.cond.backedge ]
  %printkey.0 = phi i32 [ 0, %if.end6 ], [ %printkey.0.be, %while.cond.backedge ]
  %base64.1 = phi i32 [ %base64.0, %if.end6 ], [ %base64.1.be, %while.cond.backedge ]
  %nopad.0 = phi i32 [ 0, %if.end6 ], [ %nopad.0.be, %while.cond.backedge ]
  %pbkdf2.0 = phi i32 [ 0, %if.end6 ], [ %pbkdf2.0.be, %while.cond.backedge ]
  %iter.0 = phi i32 [ 0, %if.end6 ], [ %iter.0.be, %while.cond.backedge ]
  %e.0 = phi %struct.engine_st* [ null, %if.end6 ], [ %e.0.be, %while.cond.backedge ]
  %call8 = call i32 @opt_next() #8
  switch i32 %call8, label %while.cond.backedge [
    i32 0, label %while.end136
    i32 1502, label %sw.bb125
    i32 -1, label %opthelp
    i32 1, label %sw.bb11
    i32 2, label %sw.bb12
    i32 3, label %sw.bb16
    i32 4, label %sw.bb17
    i32 5, label %sw.bb19
    i32 6, label %sw.bb21
    i32 7, label %sw.bb23
    i32 8, label %sw.bb26
    i32 9, label %sw.bb27
    i32 10, label %sw.bb28
    i32 11, label %sw.bb29
    i32 12, label %sw.bb30
    i32 13, label %sw.bb31
    i32 14, label %sw.bb32
    i32 15, label %sw.bb33
    i32 16, label %sw.bb34
    i32 17, label %sw.bb35
    i32 1603, label %sw.bb131
    i32 19, label %sw.bb36
    i32 20, label %sw.bb64
    i32 21, label %sw.bb66
    i32 22, label %sw.bb106
    i32 24, label %sw.bb108
    i32 25, label %sw.bb110
    i32 26, label %sw.bb112
    i32 29, label %sw.bb114
    i32 27, label %sw.bb116
    i32 28, label %sw.bb118
    i32 23, label %sw.bb123
    i32 1602, label %sw.bb131
    i32 1601, label %sw.bb131
    i32 1501, label %sw.bb125
  ]

while.cond.backedge:                              ; preds = %land.rhs85, %while.cond, %sw.bb131, %sw.bb125, %sw.bb123, %sw.bb118, %sw.bb116, %sw.bb114, %sw.bb112, %sw.bb110, %sw.bb108, %sw.bb106, %sw.bb64, %if.end62, %sw.bb35, %sw.bb34, %sw.bb33, %sw.bb32, %sw.bb31, %sw.bb30, %sw.bb29, %sw.bb28, %sw.bb27, %sw.bb26, %sw.bb23, %sw.bb21, %sw.bb19, %sw.bb17, %sw.bb16
  %hkey.0.be = phi i8* [ %hkey.0, %sw.bb125 ], [ %hkey.0, %sw.bb123 ], [ %hkey.0, %sw.bb118 ], [ %hkey.0, %sw.bb116 ], [ %hkey.0, %sw.bb114 ], [ %hkey.0, %sw.bb112 ], [ %hkey.0, %sw.bb110 ], [ %hkey.0, %sw.bb108 ], [ %call107, %sw.bb106 ], [ %hkey.0, %sw.bb64 ], [ %hkey.0, %if.end62 ], [ %hkey.0, %sw.bb131 ], [ %hkey.0, %sw.bb35 ], [ %hkey.0, %sw.bb34 ], [ %hkey.0, %sw.bb33 ], [ %hkey.0, %sw.bb32 ], [ %hkey.0, %sw.bb31 ], [ %hkey.0, %sw.bb30 ], [ %hkey.0, %sw.bb29 ], [ %hkey.0, %sw.bb28 ], [ %hkey.0, %sw.bb27 ], [ %hkey.0, %sw.bb26 ], [ %hkey.0, %sw.bb23 ], [ %hkey.0, %sw.bb21 ], [ %hkey.0, %sw.bb19 ], [ %hkey.0, %sw.bb17 ], [ %hkey.0, %sw.bb16 ], [ %hkey.0, %while.cond ], [ %hkey.0, %land.rhs85 ]
  %hiv.0.be = phi i8* [ %hiv.0, %sw.bb125 ], [ %hiv.0, %sw.bb123 ], [ %hiv.0, %sw.bb118 ], [ %hiv.0, %sw.bb116 ], [ %hiv.0, %sw.bb114 ], [ %hiv.0, %sw.bb112 ], [ %call111, %sw.bb110 ], [ %hiv.0, %sw.bb108 ], [ %hiv.0, %sw.bb106 ], [ %hiv.0, %sw.bb64 ], [ %hiv.0, %if.end62 ], [ %hiv.0, %sw.bb131 ], [ %hiv.0, %sw.bb35 ], [ %hiv.0, %sw.bb34 ], [ %hiv.0, %sw.bb33 ], [ %hiv.0, %sw.bb32 ], [ %hiv.0, %sw.bb31 ], [ %hiv.0, %sw.bb30 ], [ %hiv.0, %sw.bb29 ], [ %hiv.0, %sw.bb28 ], [ %hiv.0, %sw.bb27 ], [ %hiv.0, %sw.bb26 ], [ %hiv.0, %sw.bb23 ], [ %hiv.0, %sw.bb21 ], [ %hiv.0, %sw.bb19 ], [ %hiv.0, %sw.bb17 ], [ %hiv.0, %sw.bb16 ], [ %hiv.0, %while.cond ], [ %hiv.0, %land.rhs85 ]
  %hsalt.0.be = phi i8* [ %hsalt.0, %sw.bb125 ], [ %hsalt.0, %sw.bb123 ], [ %hsalt.0, %sw.bb118 ], [ %hsalt.0, %sw.bb116 ], [ %hsalt.0, %sw.bb114 ], [ %hsalt.0, %sw.bb112 ], [ %hsalt.0, %sw.bb110 ], [ %call109, %sw.bb108 ], [ %hsalt.0, %sw.bb106 ], [ %hsalt.0, %sw.bb64 ], [ %hsalt.0, %if.end62 ], [ %hsalt.0, %sw.bb131 ], [ %hsalt.0, %sw.bb35 ], [ %hsalt.0, %sw.bb34 ], [ %hsalt.0, %sw.bb33 ], [ %hsalt.0, %sw.bb32 ], [ %hsalt.0, %sw.bb31 ], [ %hsalt.0, %sw.bb30 ], [ %hsalt.0, %sw.bb29 ], [ %hsalt.0, %sw.bb28 ], [ %hsalt.0, %sw.bb27 ], [ %hsalt.0, %sw.bb26 ], [ %hsalt.0, %sw.bb23 ], [ %hsalt.0, %sw.bb21 ], [ %hsalt.0, %sw.bb19 ], [ %hsalt.0, %sw.bb17 ], [ %hsalt.0, %sw.bb16 ], [ %hsalt.0, %while.cond ], [ %hsalt.0, %land.rhs85 ]
  %digestname.0.be = phi i8* [ %digestname.0, %sw.bb125 ], [ %digestname.0, %sw.bb123 ], [ %digestname.0, %sw.bb118 ], [ %digestname.0, %sw.bb116 ], [ %digestname.0, %sw.bb114 ], [ %call113, %sw.bb112 ], [ %digestname.0, %sw.bb110 ], [ %digestname.0, %sw.bb108 ], [ %digestname.0, %sw.bb106 ], [ %digestname.0, %sw.bb64 ], [ %digestname.0, %if.end62 ], [ %digestname.0, %sw.bb131 ], [ %digestname.0, %sw.bb35 ], [ %digestname.0, %sw.bb34 ], [ %digestname.0, %sw.bb33 ], [ %digestname.0, %sw.bb32 ], [ %digestname.0, %sw.bb31 ], [ %digestname.0, %sw.bb30 ], [ %digestname.0, %sw.bb29 ], [ %digestname.0, %sw.bb28 ], [ %digestname.0, %sw.bb27 ], [ %digestname.0, %sw.bb26 ], [ %digestname.0, %sw.bb23 ], [ %digestname.0, %sw.bb21 ], [ %digestname.0, %sw.bb19 ], [ %digestname.0, %sw.bb17 ], [ %digestname.0, %sw.bb16 ], [ %digestname.0, %while.cond ], [ %digestname.0, %land.rhs85 ]
  %infile.0.be = phi i8* [ %infile.0, %sw.bb125 ], [ %infile.0, %sw.bb123 ], [ %infile.0, %sw.bb118 ], [ %infile.0, %sw.bb116 ], [ %infile.0, %sw.bb114 ], [ %infile.0, %sw.bb112 ], [ %infile.0, %sw.bb110 ], [ %infile.0, %sw.bb108 ], [ %infile.0, %sw.bb106 ], [ %infile.0, %sw.bb64 ], [ %infile.0, %if.end62 ], [ %infile.0, %sw.bb131 ], [ %infile.0, %sw.bb35 ], [ %infile.0, %sw.bb34 ], [ %infile.0, %sw.bb33 ], [ %infile.0, %sw.bb32 ], [ %infile.0, %sw.bb31 ], [ %infile.0, %sw.bb30 ], [ %infile.0, %sw.bb29 ], [ %infile.0, %sw.bb28 ], [ %infile.0, %sw.bb27 ], [ %infile.0, %sw.bb26 ], [ %infile.0, %sw.bb23 ], [ %infile.0, %sw.bb21 ], [ %infile.0, %sw.bb19 ], [ %call18, %sw.bb17 ], [ %infile.0, %sw.bb16 ], [ %infile.0, %while.cond ], [ %infile.0, %land.rhs85 ]
  %outfile.0.be = phi i8* [ %outfile.0, %sw.bb125 ], [ %outfile.0, %sw.bb123 ], [ %outfile.0, %sw.bb118 ], [ %outfile.0, %sw.bb116 ], [ %outfile.0, %sw.bb114 ], [ %outfile.0, %sw.bb112 ], [ %outfile.0, %sw.bb110 ], [ %outfile.0, %sw.bb108 ], [ %outfile.0, %sw.bb106 ], [ %outfile.0, %sw.bb64 ], [ %outfile.0, %if.end62 ], [ %outfile.0, %sw.bb131 ], [ %outfile.0, %sw.bb35 ], [ %outfile.0, %sw.bb34 ], [ %outfile.0, %sw.bb33 ], [ %outfile.0, %sw.bb32 ], [ %outfile.0, %sw.bb31 ], [ %outfile.0, %sw.bb30 ], [ %outfile.0, %sw.bb29 ], [ %outfile.0, %sw.bb28 ], [ %outfile.0, %sw.bb27 ], [ %outfile.0, %sw.bb26 ], [ %outfile.0, %sw.bb23 ], [ %outfile.0, %sw.bb21 ], [ %call20, %sw.bb19 ], [ %outfile.0, %sw.bb17 ], [ %outfile.0, %sw.bb16 ], [ %outfile.0, %while.cond ], [ %outfile.0, %land.rhs85 ]
  %str.0.be = phi i8* [ %str.0, %sw.bb125 ], [ %str.0, %sw.bb123 ], [ %str.0, %sw.bb118 ], [ %str.0, %sw.bb116 ], [ %str.0, %sw.bb114 ], [ %str.0, %sw.bb112 ], [ %str.0, %sw.bb110 ], [ %str.0, %sw.bb108 ], [ %str.0, %sw.bb106 ], [ %call65, %sw.bb64 ], [ %str.0, %if.end62 ], [ %str.0, %sw.bb131 ], [ %str.0, %sw.bb35 ], [ %str.0, %sw.bb34 ], [ %str.0, %sw.bb33 ], [ %str.0, %sw.bb32 ], [ %str.0, %sw.bb31 ], [ %str.0, %sw.bb30 ], [ %str.0, %sw.bb29 ], [ %str.0, %sw.bb28 ], [ %str.0, %sw.bb27 ], [ %str.0, %sw.bb26 ], [ %str.0, %sw.bb23 ], [ %str.0, %sw.bb21 ], [ %str.0, %sw.bb19 ], [ %str.0, %sw.bb17 ], [ %str.0, %sw.bb16 ], [ %str.0, %while.cond ], [ getelementptr inbounds ([128 x i8], [128 x i8]* @enc_main.buf, i64 0, i64 0), %land.rhs85 ]
  %passarg.0.be = phi i8* [ %passarg.0, %sw.bb125 ], [ %passarg.0, %sw.bb123 ], [ %passarg.0, %sw.bb118 ], [ %passarg.0, %sw.bb116 ], [ %passarg.0, %sw.bb114 ], [ %passarg.0, %sw.bb112 ], [ %passarg.0, %sw.bb110 ], [ %passarg.0, %sw.bb108 ], [ %passarg.0, %sw.bb106 ], [ %passarg.0, %sw.bb64 ], [ %passarg.0, %if.end62 ], [ %passarg.0, %sw.bb131 ], [ %passarg.0, %sw.bb35 ], [ %passarg.0, %sw.bb34 ], [ %passarg.0, %sw.bb33 ], [ %passarg.0, %sw.bb32 ], [ %passarg.0, %sw.bb31 ], [ %passarg.0, %sw.bb30 ], [ %passarg.0, %sw.bb29 ], [ %passarg.0, %sw.bb28 ], [ %passarg.0, %sw.bb27 ], [ %passarg.0, %sw.bb26 ], [ %passarg.0, %sw.bb23 ], [ %call22, %sw.bb21 ], [ %passarg.0, %sw.bb19 ], [ %passarg.0, %sw.bb17 ], [ %passarg.0, %sw.bb16 ], [ %passarg.0, %while.cond ], [ %passarg.0, %land.rhs85 ]
  %ciphername.1.be = phi i8* [ %ciphername.1, %sw.bb125 ], [ %ciphername.1, %sw.bb123 ], [ %ciphername.1, %sw.bb118 ], [ %ciphername.1, %sw.bb116 ], [ %call115, %sw.bb114 ], [ %ciphername.1, %sw.bb112 ], [ %ciphername.1, %sw.bb110 ], [ %ciphername.1, %sw.bb108 ], [ %ciphername.1, %sw.bb106 ], [ %ciphername.1, %sw.bb64 ], [ %ciphername.1, %if.end62 ], [ %ciphername.1, %sw.bb131 ], [ %ciphername.1, %sw.bb35 ], [ %ciphername.1, %sw.bb34 ], [ %ciphername.1, %sw.bb33 ], [ %ciphername.1, %sw.bb32 ], [ %ciphername.1, %sw.bb31 ], [ %ciphername.1, %sw.bb30 ], [ %ciphername.1, %sw.bb29 ], [ %ciphername.1, %sw.bb28 ], [ %ciphername.1, %sw.bb27 ], [ %ciphername.1, %sw.bb26 ], [ %ciphername.1, %sw.bb23 ], [ %ciphername.1, %sw.bb21 ], [ %ciphername.1, %sw.bb19 ], [ %ciphername.1, %sw.bb17 ], [ %ciphername.1, %sw.bb16 ], [ %ciphername.1, %while.cond ], [ %ciphername.1, %land.rhs85 ]
  %bsize.0.be = phi i32 [ %bsize.0, %sw.bb125 ], [ %bsize.0, %sw.bb123 ], [ %bsize.0, %sw.bb118 ], [ %bsize.0, %sw.bb116 ], [ %bsize.0, %sw.bb114 ], [ %bsize.0, %sw.bb112 ], [ %bsize.0, %sw.bb110 ], [ %bsize.0, %sw.bb108 ], [ %bsize.0, %sw.bb106 ], [ %bsize.0, %sw.bb64 ], [ %conv63, %if.end62 ], [ %bsize.0, %sw.bb131 ], [ %bsize.0, %sw.bb35 ], [ %bsize.0, %sw.bb34 ], [ %bsize.0, %sw.bb33 ], [ %bsize.0, %sw.bb32 ], [ %bsize.0, %sw.bb31 ], [ %bsize.0, %sw.bb30 ], [ %bsize.0, %sw.bb29 ], [ %bsize.0, %sw.bb28 ], [ %bsize.0, %sw.bb27 ], [ %bsize.0, %sw.bb26 ], [ %bsize.0, %sw.bb23 ], [ %bsize.0, %sw.bb21 ], [ %bsize.0, %sw.bb19 ], [ %bsize.0, %sw.bb17 ], [ %bsize.0, %sw.bb16 ], [ %bsize.0, %while.cond ], [ %bsize.0, %land.rhs85 ]
  %verbose.0.be = phi i32 [ %verbose.0, %sw.bb125 ], [ %verbose.0, %sw.bb123 ], [ %verbose.0, %sw.bb118 ], [ %verbose.0, %sw.bb116 ], [ %verbose.0, %sw.bb114 ], [ %verbose.0, %sw.bb112 ], [ %verbose.0, %sw.bb110 ], [ %verbose.0, %sw.bb108 ], [ %verbose.0, %sw.bb106 ], [ %verbose.0, %sw.bb64 ], [ %verbose.0, %if.end62 ], [ %verbose.0, %sw.bb131 ], [ %verbose.0, %sw.bb35 ], [ %verbose.0, %sw.bb34 ], [ %verbose.0, %sw.bb33 ], [ %verbose.0, %sw.bb32 ], [ %verbose.0, %sw.bb31 ], [ %verbose.0, %sw.bb30 ], [ %verbose.0, %sw.bb29 ], [ 1, %sw.bb28 ], [ %verbose.0, %sw.bb27 ], [ %verbose.0, %sw.bb26 ], [ %verbose.0, %sw.bb23 ], [ %verbose.0, %sw.bb21 ], [ %verbose.0, %sw.bb19 ], [ %verbose.0, %sw.bb17 ], [ %verbose.0, %sw.bb16 ], [ %verbose.0, %while.cond ], [ %verbose.0, %land.rhs85 ]
  %debug.0.be = phi i32 [ %debug.0, %sw.bb125 ], [ %debug.0, %sw.bb123 ], [ %debug.0, %sw.bb118 ], [ %debug.0, %sw.bb116 ], [ %debug.0, %sw.bb114 ], [ %debug.0, %sw.bb112 ], [ %debug.0, %sw.bb110 ], [ %debug.0, %sw.bb108 ], [ %debug.0, %sw.bb106 ], [ %debug.0, %sw.bb64 ], [ %debug.0, %if.end62 ], [ %debug.0, %sw.bb131 ], [ %debug.0, %sw.bb35 ], [ %debug.0, %sw.bb34 ], [ %debug.0, %sw.bb33 ], [ 1, %sw.bb32 ], [ %debug.0, %sw.bb31 ], [ %debug.0, %sw.bb30 ], [ %debug.0, %sw.bb29 ], [ %debug.0, %sw.bb28 ], [ %debug.0, %sw.bb27 ], [ %debug.0, %sw.bb26 ], [ %debug.0, %sw.bb23 ], [ %debug.0, %sw.bb21 ], [ %debug.0, %sw.bb19 ], [ %debug.0, %sw.bb17 ], [ %debug.0, %sw.bb16 ], [ %debug.0, %while.cond ], [ %debug.0, %land.rhs85 ]
  %olb64.0.be = phi i32 [ %olb64.0, %sw.bb125 ], [ %olb64.0, %sw.bb123 ], [ %olb64.0, %sw.bb118 ], [ %olb64.0, %sw.bb116 ], [ %olb64.0, %sw.bb114 ], [ %olb64.0, %sw.bb112 ], [ %olb64.0, %sw.bb110 ], [ %olb64.0, %sw.bb108 ], [ %olb64.0, %sw.bb106 ], [ %olb64.0, %sw.bb64 ], [ %olb64.0, %if.end62 ], [ %olb64.0, %sw.bb131 ], [ %olb64.0, %sw.bb35 ], [ 1, %sw.bb34 ], [ %olb64.0, %sw.bb33 ], [ %olb64.0, %sw.bb32 ], [ %olb64.0, %sw.bb31 ], [ %olb64.0, %sw.bb30 ], [ %olb64.0, %sw.bb29 ], [ %olb64.0, %sw.bb28 ], [ %olb64.0, %sw.bb27 ], [ %olb64.0, %sw.bb26 ], [ %olb64.0, %sw.bb23 ], [ %olb64.0, %sw.bb21 ], [ %olb64.0, %sw.bb19 ], [ %olb64.0, %sw.bb17 ], [ %olb64.0, %sw.bb16 ], [ %olb64.0, %while.cond ], [ %olb64.0, %land.rhs85 ]
  %nosalt.0.be = phi i32 [ %nosalt.0, %sw.bb125 ], [ %nosalt.0, %sw.bb123 ], [ %nosalt.0, %sw.bb118 ], [ %nosalt.0, %sw.bb116 ], [ %nosalt.0, %sw.bb114 ], [ %nosalt.0, %sw.bb112 ], [ %nosalt.0, %sw.bb110 ], [ %nosalt.0, %sw.bb108 ], [ %nosalt.0, %sw.bb106 ], [ %nosalt.0, %sw.bb64 ], [ %nosalt.0, %if.end62 ], [ %nosalt.0, %sw.bb131 ], [ %nosalt.0, %sw.bb35 ], [ %nosalt.0, %sw.bb34 ], [ %nosalt.0, %sw.bb33 ], [ %nosalt.0, %sw.bb32 ], [ 1, %sw.bb31 ], [ 0, %sw.bb30 ], [ %nosalt.0, %sw.bb29 ], [ %nosalt.0, %sw.bb28 ], [ %nosalt.0, %sw.bb27 ], [ %nosalt.0, %sw.bb26 ], [ %nosalt.0, %sw.bb23 ], [ %nosalt.0, %sw.bb21 ], [ %nosalt.0, %sw.bb19 ], [ %nosalt.0, %sw.bb17 ], [ %nosalt.0, %sw.bb16 ], [ %nosalt.0, %while.cond ], [ %nosalt.0, %land.rhs85 ]
  %enc.0.be = phi i32 [ %enc.0, %sw.bb125 ], [ %enc.0, %sw.bb123 ], [ %enc.0, %sw.bb118 ], [ %enc.0, %sw.bb116 ], [ %enc.0, %sw.bb114 ], [ %enc.0, %sw.bb112 ], [ %enc.0, %sw.bb110 ], [ %enc.0, %sw.bb108 ], [ %enc.0, %sw.bb106 ], [ %enc.0, %sw.bb64 ], [ %enc.0, %if.end62 ], [ %enc.0, %sw.bb131 ], [ %enc.0, %sw.bb35 ], [ %enc.0, %sw.bb34 ], [ %enc.0, %sw.bb33 ], [ %enc.0, %sw.bb32 ], [ %enc.0, %sw.bb31 ], [ %enc.0, %sw.bb30 ], [ %enc.0, %sw.bb29 ], [ %enc.0, %sw.bb28 ], [ %enc.0, %sw.bb27 ], [ 0, %sw.bb26 ], [ %enc.0, %sw.bb23 ], [ %enc.0, %sw.bb21 ], [ %enc.0, %sw.bb19 ], [ %enc.0, %sw.bb17 ], [ 1, %sw.bb16 ], [ %enc.0, %while.cond ], [ %enc.0, %land.rhs85 ]
  %printkey.0.be = phi i32 [ %printkey.0, %sw.bb125 ], [ %printkey.0, %sw.bb123 ], [ %printkey.0, %sw.bb118 ], [ %printkey.0, %sw.bb116 ], [ %printkey.0, %sw.bb114 ], [ %printkey.0, %sw.bb112 ], [ %printkey.0, %sw.bb110 ], [ %printkey.0, %sw.bb108 ], [ %printkey.0, %sw.bb106 ], [ %printkey.0, %sw.bb64 ], [ %printkey.0, %if.end62 ], [ %printkey.0, %sw.bb131 ], [ %printkey.0, %sw.bb35 ], [ %printkey.0, %sw.bb34 ], [ 2, %sw.bb33 ], [ %printkey.0, %sw.bb32 ], [ %printkey.0, %sw.bb31 ], [ %printkey.0, %sw.bb30 ], [ %printkey.0, %sw.bb29 ], [ %printkey.0, %sw.bb28 ], [ 1, %sw.bb27 ], [ %printkey.0, %sw.bb26 ], [ %printkey.0, %sw.bb23 ], [ %printkey.0, %sw.bb21 ], [ %printkey.0, %sw.bb19 ], [ %printkey.0, %sw.bb17 ], [ %printkey.0, %sw.bb16 ], [ %printkey.0, %while.cond ], [ %printkey.0, %land.rhs85 ]
  %base64.1.be = phi i32 [ %base64.1, %sw.bb125 ], [ %base64.1, %sw.bb123 ], [ %base64.1, %sw.bb118 ], [ %base64.1, %sw.bb116 ], [ %base64.1, %sw.bb114 ], [ %base64.1, %sw.bb112 ], [ %base64.1, %sw.bb110 ], [ %base64.1, %sw.bb108 ], [ %base64.1, %sw.bb106 ], [ %base64.1, %sw.bb64 ], [ %base64.1, %if.end62 ], [ %base64.1, %sw.bb131 ], [ 1, %sw.bb35 ], [ %base64.1, %sw.bb34 ], [ %base64.1, %sw.bb33 ], [ %base64.1, %sw.bb32 ], [ %base64.1, %sw.bb31 ], [ %base64.1, %sw.bb30 ], [ %base64.1, %sw.bb29 ], [ %base64.1, %sw.bb28 ], [ %base64.1, %sw.bb27 ], [ %base64.1, %sw.bb26 ], [ %base64.1, %sw.bb23 ], [ %base64.1, %sw.bb21 ], [ %base64.1, %sw.bb19 ], [ %base64.1, %sw.bb17 ], [ %base64.1, %sw.bb16 ], [ %base64.1, %while.cond ], [ %base64.1, %land.rhs85 ]
  %nopad.0.be = phi i32 [ %nopad.0, %sw.bb125 ], [ %nopad.0, %sw.bb123 ], [ %nopad.0, %sw.bb118 ], [ %nopad.0, %sw.bb116 ], [ %nopad.0, %sw.bb114 ], [ %nopad.0, %sw.bb112 ], [ %nopad.0, %sw.bb110 ], [ %nopad.0, %sw.bb108 ], [ %nopad.0, %sw.bb106 ], [ %nopad.0, %sw.bb64 ], [ %nopad.0, %if.end62 ], [ %nopad.0, %sw.bb131 ], [ %nopad.0, %sw.bb35 ], [ %nopad.0, %sw.bb34 ], [ %nopad.0, %sw.bb33 ], [ %nopad.0, %sw.bb32 ], [ %nopad.0, %sw.bb31 ], [ %nopad.0, %sw.bb30 ], [ 1, %sw.bb29 ], [ %nopad.0, %sw.bb28 ], [ %nopad.0, %sw.bb27 ], [ %nopad.0, %sw.bb26 ], [ %nopad.0, %sw.bb23 ], [ %nopad.0, %sw.bb21 ], [ %nopad.0, %sw.bb19 ], [ %nopad.0, %sw.bb17 ], [ %nopad.0, %sw.bb16 ], [ %nopad.0, %while.cond ], [ %nopad.0, %land.rhs85 ]
  %pbkdf2.0.be = phi i32 [ %pbkdf2.0, %sw.bb125 ], [ %pbkdf2.0, %sw.bb123 ], [ 1, %sw.bb118 ], [ 1, %sw.bb116 ], [ %pbkdf2.0, %sw.bb114 ], [ %pbkdf2.0, %sw.bb112 ], [ %pbkdf2.0, %sw.bb110 ], [ %pbkdf2.0, %sw.bb108 ], [ %pbkdf2.0, %sw.bb106 ], [ %pbkdf2.0, %sw.bb64 ], [ %pbkdf2.0, %if.end62 ], [ %pbkdf2.0, %sw.bb131 ], [ %pbkdf2.0, %sw.bb35 ], [ %pbkdf2.0, %sw.bb34 ], [ %pbkdf2.0, %sw.bb33 ], [ %pbkdf2.0, %sw.bb32 ], [ %pbkdf2.0, %sw.bb31 ], [ %pbkdf2.0, %sw.bb30 ], [ %pbkdf2.0, %sw.bb29 ], [ %pbkdf2.0, %sw.bb28 ], [ %pbkdf2.0, %sw.bb27 ], [ %pbkdf2.0, %sw.bb26 ], [ %pbkdf2.0, %sw.bb23 ], [ %pbkdf2.0, %sw.bb21 ], [ %pbkdf2.0, %sw.bb19 ], [ %pbkdf2.0, %sw.bb17 ], [ %pbkdf2.0, %sw.bb16 ], [ %pbkdf2.0, %while.cond ], [ %pbkdf2.0, %land.rhs85 ]
  %iter.0.be = phi i32 [ %iter.0, %sw.bb125 ], [ %iter.0, %sw.bb123 ], [ %spec.store.select, %sw.bb118 ], [ %call117, %sw.bb116 ], [ %iter.0, %sw.bb114 ], [ %iter.0, %sw.bb112 ], [ %iter.0, %sw.bb110 ], [ %iter.0, %sw.bb108 ], [ %iter.0, %sw.bb106 ], [ %iter.0, %sw.bb64 ], [ %iter.0, %if.end62 ], [ %iter.0, %sw.bb131 ], [ %iter.0, %sw.bb35 ], [ %iter.0, %sw.bb34 ], [ %iter.0, %sw.bb33 ], [ %iter.0, %sw.bb32 ], [ %iter.0, %sw.bb31 ], [ %iter.0, %sw.bb30 ], [ %iter.0, %sw.bb29 ], [ %iter.0, %sw.bb28 ], [ %iter.0, %sw.bb27 ], [ %iter.0, %sw.bb26 ], [ %iter.0, %sw.bb23 ], [ %iter.0, %sw.bb21 ], [ %iter.0, %sw.bb19 ], [ %iter.0, %sw.bb17 ], [ %iter.0, %sw.bb16 ], [ %iter.0, %while.cond ], [ %iter.0, %land.rhs85 ]
  %e.0.be = phi %struct.engine_st* [ %e.0, %sw.bb125 ], [ %e.0, %sw.bb123 ], [ %e.0, %sw.bb118 ], [ %e.0, %sw.bb116 ], [ %e.0, %sw.bb114 ], [ %e.0, %sw.bb112 ], [ %e.0, %sw.bb110 ], [ %e.0, %sw.bb108 ], [ %e.0, %sw.bb106 ], [ %e.0, %sw.bb64 ], [ %e.0, %if.end62 ], [ %e.0, %sw.bb131 ], [ %e.0, %sw.bb35 ], [ %e.0, %sw.bb34 ], [ %e.0, %sw.bb33 ], [ %e.0, %sw.bb32 ], [ %e.0, %sw.bb31 ], [ %e.0, %sw.bb30 ], [ %e.0, %sw.bb29 ], [ %e.0, %sw.bb28 ], [ %e.0, %sw.bb27 ], [ %e.0, %sw.bb26 ], [ %call25, %sw.bb23 ], [ %e.0, %sw.bb21 ], [ %e.0, %sw.bb19 ], [ %e.0, %sw.bb17 ], [ %e.0, %sw.bb16 ], [ %e.0, %while.cond ], [ %e.0, %land.rhs85 ]
  br label %while.cond, !llvm.loop !7

opthelp:                                          ; preds = %while.cond, %sw.bb66, %if.end48, %lor.lhs.false54, %if.then156, %if.then148, %while.end136, %if.then103, %if.then77
  %11 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call10 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %11, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.77, i64 0, i64 0), i8* noundef %call7) #8
  br label %cleanup585

sw.bb11:                                          ; preds = %while.cond
  call void @opt_help(%struct.options_st* noundef getelementptr inbounds ([42 x %struct.options_st], [42 x %struct.options_st]* @enc_options, i64 0, i64 0)) #8
  br label %cleanup585

sw.bb12:                                          ; preds = %while.cond
  %12 = load %struct.bio_st*, %struct.bio_st** @bio_out, align 8, !tbaa !3
  %call13 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %12, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.78, i64 0, i64 0)) #8
  %13 = load %struct.bio_st*, %struct.bio_st** @bio_out, align 8, !tbaa !3
  %bio = getelementptr inbounds %struct.doall_enc_ciphers, %struct.doall_enc_ciphers* %dec, i64 0, i32 0
  store %struct.bio_st* %13, %struct.bio_st** %bio, align 8, !tbaa !9
  %n14 = getelementptr inbounds %struct.doall_enc_ciphers, %struct.doall_enc_ciphers* %dec, i64 0, i32 1
  store i32 0, i32* %n14, align 8, !tbaa !12
  call void @OBJ_NAME_do_all_sorted(i32 noundef 2, void (%struct.obj_name_st*, i8*)* noundef nonnull @show_ciphers, i8* noundef nonnull %9) #8
  %14 = load %struct.bio_st*, %struct.bio_st** @bio_out, align 8, !tbaa !3
  %call15 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %14, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.79, i64 0, i64 0)) #8
  br label %cleanup585

sw.bb16:                                          ; preds = %while.cond
  br label %while.cond.backedge

sw.bb17:                                          ; preds = %while.cond
  %call18 = call i8* @opt_arg() #8
  br label %while.cond.backedge

sw.bb19:                                          ; preds = %while.cond
  %call20 = call i8* @opt_arg() #8
  br label %while.cond.backedge

sw.bb21:                                          ; preds = %while.cond
  %call22 = call i8* @opt_arg() #8
  br label %while.cond.backedge

sw.bb23:                                          ; preds = %while.cond
  %call24 = call i8* @opt_arg() #8
  %call25 = call %struct.engine_st* @setup_engine_methods(i8* noundef %call24, i32 noundef -1, i32 noundef 0) #8
  br label %while.cond.backedge

sw.bb26:                                          ; preds = %while.cond
  br label %while.cond.backedge

sw.bb27:                                          ; preds = %while.cond
  br label %while.cond.backedge

sw.bb28:                                          ; preds = %while.cond
  br label %while.cond.backedge

sw.bb29:                                          ; preds = %while.cond
  br label %while.cond.backedge

sw.bb30:                                          ; preds = %while.cond
  br label %while.cond.backedge

sw.bb31:                                          ; preds = %while.cond
  br label %while.cond.backedge

sw.bb32:                                          ; preds = %while.cond
  br label %while.cond.backedge

sw.bb33:                                          ; preds = %while.cond
  br label %while.cond.backedge

sw.bb34:                                          ; preds = %while.cond
  br label %while.cond.backedge

sw.bb35:                                          ; preds = %while.cond
  br label %while.cond.backedge

sw.bb36:                                          ; preds = %while.cond
  %call37 = call i8* @opt_arg() #8
  %call38 = call i64 @strlen(i8* noundef %call37) #7
  %conv = trunc i64 %call38 to i32
  %cmp39 = icmp sgt i32 %conv, 1
  br i1 %cmp39, label %land.end, label %if.end48

land.end:                                         ; preds = %sw.bb36
  %sub = add i64 %call38, 4294967295
  %idxprom832 = and i64 %sub, 4294967295
  %arrayidx41 = getelementptr inbounds i8, i8* %call37, i64 %idxprom832
  %15 = load i8, i8* %arrayidx41, align 1, !tbaa !13
  %cmp43 = icmp eq i8 %15, 107
  br i1 %cmp43, label %if.then45, label %if.end48

if.then45:                                        ; preds = %land.end
  store i8 0, i8* %arrayidx41, align 1, !tbaa !13
  br label %if.end48

if.end48:                                         ; preds = %sw.bb36, %if.then45, %land.end
  %16 = phi i1 [ true, %if.then45 ], [ false, %land.end ], [ false, %sw.bb36 ]
  %call49 = call i8* @opt_arg() #8
  %call50 = call i32 @opt_long(i8* noundef %call49, i64* noundef nonnull %n) #8
  %tobool51 = icmp eq i32 %call50, 0
  %17 = load i64, i64* %n, align 8
  %cmp52 = icmp slt i64 %17, 0
  %or.cond = select i1 %tobool51, i1 true, i1 %cmp52
  br i1 %or.cond, label %opthelp, label %lor.lhs.false54

lor.lhs.false54:                                  ; preds = %if.end48
  %cmp56 = icmp ugt i64 %17, 9007199254740990
  %or.cond634 = select i1 %16, i1 %cmp56, i1 false
  br i1 %or.cond634, label %opthelp, label %if.end59

if.end59:                                         ; preds = %lor.lhs.false54
  br i1 %16, label %if.then61, label %if.end62

if.then61:                                        ; preds = %if.end59
  %mul = shl nsw i64 %17, 10
  store i64 %mul, i64* %n, align 8, !tbaa !14
  br label %if.end62

if.end62:                                         ; preds = %if.then61, %if.end59
  %18 = phi i64 [ %mul, %if.then61 ], [ %17, %if.end59 ]
  %conv63 = trunc i64 %18 to i32
  br label %while.cond.backedge

sw.bb64:                                          ; preds = %while.cond
  %call65 = call i8* @opt_arg() #8
  br label %while.cond.backedge

sw.bb66:                                          ; preds = %while.cond
  %call67 = call i8* @opt_arg() #8
  %call68 = call %struct.bio_st* @bio_open_default(i8* noundef %call67, i8 noundef signext 114, i32 noundef 32769) #8
  %cmp69 = icmp eq %struct.bio_st* %call68, null
  br i1 %cmp69, label %opthelp, label %if.end72

if.end72:                                         ; preds = %sw.bb66
  %call73 = call i32 @BIO_gets(%struct.bio_st* noundef nonnull %call68, i8* noundef getelementptr inbounds ([128 x i8], [128 x i8]* @enc_main.buf, i64 0, i64 0), i32 noundef 128) #8
  %call74 = call i32 @BIO_free(%struct.bio_st* noundef nonnull %call68) #8
  %cmp75 = icmp slt i32 %call73, 1
  br i1 %cmp75, label %if.then77, label %while.cond81.preheader

while.cond81.preheader:                           ; preds = %if.end72
  %cmp83968.not = icmp eq i32 %call73, 1
  br i1 %cmp83968.not, label %if.then103, label %land.rhs85.preheader

land.rhs85.preheader:                             ; preds = %while.cond81.preheader
  %19 = zext i32 %call73 to i64
  br label %land.rhs85

if.then77:                                        ; preds = %if.end72
  %20 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call78 = call i8* @opt_arg() #8
  %call79 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %20, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.80, i64 0, i64 0), i8* noundef %call7, i8* noundef %call78) #8
  br label %opthelp

land.rhs85:                                       ; preds = %land.rhs85.preheader, %while.body98
  %indvars.iv = phi i64 [ %19, %land.rhs85.preheader ], [ %21, %while.body98 ]
  %21 = add nsw i64 %indvars.iv, -1
  %arrayidx87 = getelementptr inbounds [128 x i8], [128 x i8]* @enc_main.buf, i64 0, i64 %21
  %22 = load i8, i8* %arrayidx87, align 1, !tbaa !13
  switch i8 %22, label %while.cond.backedge [
    i8 13, label %while.body98
    i8 10, label %while.body98
  ], !llvm.loop !7

while.body98:                                     ; preds = %land.rhs85, %land.rhs85
  store i8 0, i8* %arrayidx87, align 1, !tbaa !13
  %cmp83.wide = icmp ugt i64 %21, 1
  br i1 %cmp83.wide, label %land.rhs85, label %if.then103, !llvm.loop !16

if.then103:                                       ; preds = %while.cond81.preheader, %while.body98
  %23 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call104 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %23, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.81, i64 0, i64 0), i8* noundef %call7) #8
  br label %opthelp

sw.bb106:                                         ; preds = %while.cond
  %call107 = call i8* @opt_arg() #8
  br label %while.cond.backedge

sw.bb108:                                         ; preds = %while.cond
  %call109 = call i8* @opt_arg() #8
  br label %while.cond.backedge

sw.bb110:                                         ; preds = %while.cond
  %call111 = call i8* @opt_arg() #8
  br label %while.cond.backedge

sw.bb112:                                         ; preds = %while.cond
  %call113 = call i8* @opt_arg() #8
  br label %while.cond.backedge

sw.bb114:                                         ; preds = %while.cond
  %call115 = call i8* @opt_unknown() #8
  br label %while.cond.backedge

sw.bb116:                                         ; preds = %while.cond
  %call117 = call i32 @opt_int_arg() #8
  br label %while.cond.backedge

sw.bb118:                                         ; preds = %while.cond
  %cmp119 = icmp eq i32 %iter.0, 0
  %spec.store.select = select i1 %cmp119, i32 10000, i32 %iter.0
  br label %while.cond.backedge

sw.bb123:                                         ; preds = %while.cond
  store %struct.evp_cipher_st* null, %struct.evp_cipher_st** %cipher, align 8, !tbaa !3
  br label %while.cond.backedge

sw.bb125:                                         ; preds = %while.cond, %while.cond
  %call126 = call i32 @opt_rand(i32 noundef %call8) #8
  %tobool127.not = icmp eq i32 %call126, 0
  br i1 %tobool127.not, label %cleanup585, label %while.cond.backedge

sw.bb131:                                         ; preds = %while.cond, %while.cond, %while.cond
  %call132 = call i32 @opt_provider(i32 noundef %call8) #8
  %tobool133.not = icmp eq i32 %call132, 0
  br i1 %tobool133.not, label %cleanup585, label %while.cond.backedge

while.end136:                                     ; preds = %while.cond
  %call137 = call i32 @opt_num_rest() #8
  %cmp138.not = icmp eq i32 %call137, 0
  br i1 %cmp138.not, label %if.end141, label %opthelp

if.end141:                                        ; preds = %while.end136
  %call142 = call i32 @app_RAND_load() #8
  %tobool143.not = icmp eq i32 %call142, 0
  br i1 %tobool143.not, label %cleanup585, label %if.end145

if.end145:                                        ; preds = %if.end141
  %cmp146.not = icmp eq i8* %ciphername.1, null
  br i1 %cmp146.not, label %if.end153, label %if.then148

if.then148:                                       ; preds = %if.end145
  %call149 = call i32 @opt_cipher(i8* noundef nonnull %ciphername.1, %struct.evp_cipher_st** noundef nonnull %cipher) #8
  %tobool150.not = icmp eq i32 %call149, 0
  br i1 %tobool150.not, label %opthelp, label %if.end153

if.end153:                                        ; preds = %if.then148, %if.end145
  %cmp154.not = icmp eq i8* %digestname.0, null
  br i1 %cmp154.not, label %if.end161, label %if.then156

if.then156:                                       ; preds = %if.end153
  %call157 = call i32 @opt_md(i8* noundef nonnull %digestname.0, %struct.evp_md_st** noundef nonnull %dgst) #8
  %tobool158.not = icmp eq i32 %call157, 0
  br i1 %tobool158.not, label %opthelp, label %if.end161

if.end161:                                        ; preds = %if.then156, %if.end153
  %24 = load %struct.evp_md_st*, %struct.evp_md_st** %dgst, align 8, !tbaa !3
  %cmp162 = icmp eq %struct.evp_md_st* %24, null
  br i1 %cmp162, label %if.then164, label %if.end166

if.then164:                                       ; preds = %if.end161
  %call165 = call %struct.evp_md_st* @EVP_sha256() #8
  store %struct.evp_md_st* %call165, %struct.evp_md_st** %dgst, align 8, !tbaa !3
  br label %if.end166

if.end166:                                        ; preds = %if.then164, %if.end161
  %cmp167 = icmp eq i32 %iter.0, 0
  %spec.store.select635 = select i1 %cmp167, i32 1, i32 %iter.0
  %tobool171 = icmp ne i32 %base64.1, 0
  %cmp173 = icmp slt i32 %bsize.0, 80
  %or.cond636 = select i1 %tobool171, i1 %cmp173, i1 false
  %spec.store.select641 = select i1 %or.cond636, i32 80, i32 %bsize.0
  %tobool177.not = icmp eq i32 %verbose.0, 0
  br i1 %tobool177.not, label %if.end180, label %if.then178

if.then178:                                       ; preds = %if.end166
  %25 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call179 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %25, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.82, i64 0, i64 0), i32 noundef %spec.store.select641) #8
  br label %if.end180

if.end180:                                        ; preds = %if.then178, %if.end166
  %tobool183.not = icmp eq i32 %enc.0, 0
  %.813 = select i1 %tobool183.not, i32 2, i32 32771
  %26 = select i1 %tobool171, i1 %tobool183.not, i1 false
  %informat.0 = select i1 %26, i32 32771, i32 2
  %outformat.0 = select i1 %tobool171, i32 %.813, i32 2
  %call188 = call i8* @app_malloc(i64 noundef 512, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.83, i64 0, i64 0)) #8
  %add = add nsw i32 %spec.store.select641, 2
  %div = sdiv i32 %add, 3
  %mul189 = shl nsw i32 %div, 2
  %div190 = sdiv i32 %spec.store.select641, 48
  %add191 = shl nsw i32 %div190, 1
  %add193 = add nsw i32 %add191, 82
  %add194 = add i32 %add193, %mul189
  %conv195 = sext i32 %add194 to i64
  %call196 = call i8* @app_malloc(i64 noundef %conv195, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.84, i64 0, i64 0)) #8
  %cmp197 = icmp eq i8* %infile.0, null
  br i1 %cmp197, label %if.then199, label %if.else201

if.then199:                                       ; preds = %if.end180
  %call200 = call %struct.bio_st* @dup_bio_in(i32 noundef %informat.0) #8
  br label %if.end203

if.else201:                                       ; preds = %if.end180
  %call202 = call %struct.bio_st* @bio_open_default(i8* noundef nonnull %infile.0, i8 noundef signext 114, i32 noundef %informat.0) #8
  br label %if.end203

if.end203:                                        ; preds = %if.else201, %if.then199
  %in.3 = phi %struct.bio_st* [ %call200, %if.then199 ], [ %call202, %if.else201 ]
  %cmp204 = icmp eq %struct.bio_st* %in.3, null
  br i1 %cmp204, label %cleanup585, label %if.end207

if.end207:                                        ; preds = %if.end203
  %cmp208 = icmp eq i8* %str.0, null
  %cmp211 = icmp ne i8* %passarg.0, null
  %or.cond637 = select i1 %cmp208, i1 %cmp211, i1 false
  br i1 %or.cond637, label %if.then213, label %if.end219

if.then213:                                       ; preds = %if.end207
  %call214 = call i32 @app_passwd(i8* noundef nonnull %passarg.0, i8* noundef null, i8** noundef nonnull %pass, i8** noundef null) #8
  %tobool215.not = icmp eq i32 %call214, 0
  br i1 %tobool215.not, label %if.then216, label %if.end218

if.then216:                                       ; preds = %if.then213
  %27 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call217 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %27, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.85, i64 0, i64 0)) #8
  br label %cleanup585

if.end218:                                        ; preds = %if.then213
  %28 = load i8*, i8** %pass, align 8, !tbaa !3
  br label %if.end219

if.end219:                                        ; preds = %if.end218, %if.end207
  %str.2 = phi i8* [ %28, %if.end218 ], [ %str.0, %if.end207 ]
  %cmp220 = icmp eq i8* %str.2, null
  %29 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %cipher, align 8
  %cmp223 = icmp ne %struct.evp_cipher_st* %29, null
  %or.cond638 = select i1 %cmp220, i1 %cmp223, i1 false
  %cmp226 = icmp eq i8* %hkey.0, null
  %or.cond639 = select i1 %or.cond638, i1 %cmp226, i1 false
  br i1 %or.cond639, label %for.cond.preheader, label %if.end250

for.cond.preheader:                               ; preds = %if.end219
  %30 = getelementptr inbounds [200 x i8], [200 x i8]* %prompt, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 200, i8* nonnull %30) #6
  %call229971 = call i8* @EVP_CIPHER_get0_name(%struct.evp_cipher_st* noundef nonnull %29) #8
  %cond = select i1 %tobool183.not, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.88, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.87, i64 0, i64 0)
  %call231972 = call i32 (i8*, i64, i8*, ...) @BIO_snprintf(i8* noundef nonnull %30, i64 noundef 200, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.86, i64 0, i64 0), i8* noundef %call229971, i8* noundef %cond) #8
  store i8 0, i8* %call188, align 1, !tbaa !13
  %call234973 = call i32 @EVP_read_pw_string(i8* noundef nonnull %call188, i32 noundef 512, i8* noundef nonnull %30, i32 noundef %enc.0) #8
  %cmp235974 = icmp eq i32 %call234973, 0
  br i1 %cmp235974, label %if.then237, label %if.end244

if.then237:                                       ; preds = %cleanup, %for.cond.preheader
  %31 = load i8, i8* %call188, align 1, !tbaa !13
  %cmp240 = icmp eq i8 %31, 0
  br i1 %cmp240, label %cleanup.thread, label %cleanup.thread818

cleanup.thread818:                                ; preds = %if.then237
  call void @llvm.lifetime.end.p0i8(i64 200, i8* nonnull %30) #6
  br label %if.end250

if.end244:                                        ; preds = %for.cond.preheader, %cleanup
  %call234975 = phi i32 [ %call234, %cleanup ], [ %call234973, %for.cond.preheader ]
  %cmp245 = icmp slt i32 %call234975, 0
  br i1 %cmp245, label %if.then247, label %cleanup

if.then247:                                       ; preds = %if.end244
  %32 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call248 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %32, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.89, i64 0, i64 0)) #8
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then247, %if.then237
  call void @llvm.lifetime.end.p0i8(i64 200, i8* nonnull %30) #6
  br label %cleanup585

cleanup:                                          ; preds = %if.end244
  call void @llvm.lifetime.end.p0i8(i64 200, i8* nonnull %30) #6
  call void @llvm.lifetime.start.p0i8(i64 200, i8* nonnull %30) #6
  %33 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %cipher, align 8, !tbaa !3
  %call229 = call i8* @EVP_CIPHER_get0_name(%struct.evp_cipher_st* noundef %33) #8
  %call231 = call i32 (i8*, i64, i8*, ...) @BIO_snprintf(i8* noundef nonnull %30, i64 noundef 200, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.86, i64 0, i64 0), i8* noundef %call229, i8* noundef %cond) #8
  store i8 0, i8* %call188, align 1, !tbaa !13
  %call234 = call i32 @EVP_read_pw_string(i8* noundef nonnull %call188, i32 noundef 512, i8* noundef nonnull %30, i32 noundef %enc.0) #8
  %cmp235 = icmp eq i32 %call234, 0
  br i1 %cmp235, label %if.then237, label %if.end244

if.end250:                                        ; preds = %cleanup.thread818, %if.end219
  %str.5 = phi i8* [ %str.2, %if.end219 ], [ %call188, %cleanup.thread818 ]
  %call251 = call %struct.bio_st* @bio_open_default(i8* noundef %outfile.0, i8 noundef signext 119, i32 noundef %outformat.0) #8
  %cmp252 = icmp eq %struct.bio_st* %call251, null
  br i1 %cmp252, label %cleanup585, label %if.end255

if.end255:                                        ; preds = %if.end250
  %tobool256.not = icmp eq i32 %debug.0, 0
  br i1 %tobool256.not, label %if.end258, label %if.then257

if.then257:                                       ; preds = %if.end255
  call void @BIO_set_callback_ex(%struct.bio_st* noundef %in.3, i64 (%struct.bio_st*, i32, i8*, i64, i32, i64, i32, i64*)* noundef nonnull @BIO_debug_callback_ex) #8
  call void @BIO_set_callback_ex(%struct.bio_st* noundef nonnull %call251, i64 (%struct.bio_st*, i32, i8*, i64, i32, i64, i32, i64*)* noundef nonnull @BIO_debug_callback_ex) #8
  %34 = load i8*, i8** bitcast (%struct.bio_st** @bio_err to i8**), align 8, !tbaa !3
  call void @BIO_set_callback_arg(%struct.bio_st* noundef %in.3, i8* noundef %34) #8
  %35 = load i8*, i8** bitcast (%struct.bio_st** @bio_err to i8**), align 8, !tbaa !3
  call void @BIO_set_callback_arg(%struct.bio_st* noundef nonnull %call251, i8* noundef %35) #8
  br label %if.end258

if.end258:                                        ; preds = %if.then257, %if.end255
  br i1 %tobool171, label %if.then260, label %if.end279

if.then260:                                       ; preds = %if.end258
  %call261 = call %struct.bio_method_st* @BIO_f_base64() #8
  %call262 = call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call261) #8
  %cmp263 = icmp eq %struct.bio_st* %call262, null
  br i1 %cmp263, label %cleanup585, label %if.end266

if.end266:                                        ; preds = %if.then260
  br i1 %tobool256.not, label %if.end269, label %if.then268

if.then268:                                       ; preds = %if.end266
  call void @BIO_set_callback_ex(%struct.bio_st* noundef nonnull %call262, i64 (%struct.bio_st*, i32, i8*, i64, i32, i64, i32, i64*)* noundef nonnull @BIO_debug_callback_ex) #8
  %36 = load i8*, i8** bitcast (%struct.bio_st** @bio_err to i8**), align 8, !tbaa !3
  call void @BIO_set_callback_arg(%struct.bio_st* noundef nonnull %call262, i8* noundef %36) #8
  br label %if.end269

if.end269:                                        ; preds = %if.then268, %if.end266
  %tobool270.not = icmp eq i32 %olb64.0, 0
  br i1 %tobool270.not, label %if.end272, label %if.then271

if.then271:                                       ; preds = %if.end269
  call void @BIO_set_flags(%struct.bio_st* noundef nonnull %call262, i32 noundef 256) #8
  br label %if.end272

if.end272:                                        ; preds = %if.then271, %if.end269
  br i1 %tobool183.not, label %if.else276, label %if.then274

if.then274:                                       ; preds = %if.end272
  %call275 = call %struct.bio_st* @BIO_push(%struct.bio_st* noundef nonnull %call262, %struct.bio_st* noundef nonnull %call251) #8
  br label %if.end279

if.else276:                                       ; preds = %if.end272
  %call277 = call %struct.bio_st* @BIO_push(%struct.bio_st* noundef nonnull %call262, %struct.bio_st* noundef %in.3) #8
  br label %if.end279

if.end279:                                        ; preds = %if.then274, %if.else276, %if.end258
  %wbio.0 = phi %struct.bio_st* [ %call275, %if.then274 ], [ %call251, %if.else276 ], [ %call251, %if.end258 ]
  %rbio.0 = phi %struct.bio_st* [ %in.3, %if.then274 ], [ %call277, %if.else276 ], [ %in.3, %if.end258 ]
  %b64.0 = phi %struct.bio_st* [ %call262, %if.then274 ], [ %call262, %if.else276 ], [ null, %if.end258 ]
  %37 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %cipher, align 8, !tbaa !3
  %cmp280.not = icmp eq %struct.evp_cipher_st* %37, null
  br i1 %cmp280.not, label %if.end546, label %if.then282

if.then282:                                       ; preds = %if.end279
  %cmp283.not = icmp eq i8* %str.5, null
  br i1 %cmp283.not, label %if.end411.thread, label %if.then285

if.then285:                                       ; preds = %if.then282
  %call286 = call i64 @strlen(i8* noundef nonnull %str.5) #7
  %tobool287.not = icmp eq i32 %nosalt.0, 0
  br i1 %tobool287.not, label %if.else289, label %if.end359

if.else289:                                       ; preds = %if.then285
  %cmp290.not = icmp eq i8* %hsalt.0, null
  br i1 %cmp290.not, label %if.end298, label %land.lhs.true292

land.lhs.true292:                                 ; preds = %if.else289
  %call294 = call fastcc i32 @set_hex(i8* noundef nonnull %hsalt.0, i8* noundef nonnull %7, i32 noundef 8) #9
  %tobool295.not = icmp eq i32 %call294, 0
  br i1 %tobool295.not, label %if.then296, label %if.end359

if.then296:                                       ; preds = %land.lhs.true292
  %38 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call297 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %38, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.90, i64 0, i64 0)) #8
  br label %cleanup585

if.end298:                                        ; preds = %if.else289
  br i1 %tobool183.not, label %if.then331, label %if.then303

if.then303:                                       ; preds = %if.end298
  %call305 = call i32 @RAND_bytes(i8* noundef nonnull %7, i32 noundef 8) #8
  %cmp306 = icmp slt i32 %call305, 1
  br i1 %cmp306, label %if.then308, label %if.end310

if.then308:                                       ; preds = %if.then303
  %39 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call309 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %39, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.91, i64 0, i64 0)) #8
  br label %cleanup585

if.end310:                                        ; preds = %if.then303
  %cmp311.not = icmp eq i32 %printkey.0, 2
  br i1 %cmp311.not, label %if.end359, label %land.lhs.true313

land.lhs.true313:                                 ; preds = %if.end310
  %call314 = call i32 @BIO_write(%struct.bio_st* noundef %wbio.0, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @enc_main.magic, i64 0, i64 0), i32 noundef 8) #8
  %cmp316.not = icmp eq i32 %call314, 8
  br i1 %cmp316.not, label %lor.lhs.false318, label %if.then324

lor.lhs.false318:                                 ; preds = %land.lhs.true313
  %call320 = call i32 @BIO_write(%struct.bio_st* noundef %wbio.0, i8* noundef nonnull %7, i32 noundef 8) #8
  %cmp322.not = icmp eq i32 %call320, 8
  br i1 %cmp322.not, label %if.end359, label %if.then324

if.then324:                                       ; preds = %lor.lhs.false318, %land.lhs.true313
  %40 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call325 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %40, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.92, i64 0, i64 0)) #8
  br label %cleanup585

if.then331:                                       ; preds = %if.end298
  %call333 = call i32 @BIO_read(%struct.bio_st* noundef %rbio.0, i8* noundef nonnull %4, i32 noundef 8) #8
  %cmp335.not = icmp eq i32 %call333, 8
  br i1 %cmp335.not, label %if.end339, label %if.then337

if.then337:                                       ; preds = %if.then331
  %41 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call338 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %41, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.93, i64 0, i64 0)) #8
  br label %cleanup585

if.end339:                                        ; preds = %if.then331
  %call341 = call i32 @memcmp(i8* noundef nonnull %4, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @enc_main.magic, i64 0, i64 0), i64 noundef 8) #7
  %cmp342 = icmp eq i32 %call341, 0
  br i1 %cmp342, label %if.then344, label %if.else353

if.then344:                                       ; preds = %if.end339
  %call346 = call i32 @BIO_read(%struct.bio_st* noundef %rbio.0, i8* noundef nonnull %7, i32 noundef 8) #8
  %cmp348.not = icmp eq i32 %call346, 8
  br i1 %cmp348.not, label %if.end359, label %if.then350

if.then350:                                       ; preds = %if.then344
  %42 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call351 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %42, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.93, i64 0, i64 0)) #8
  br label %cleanup585

if.else353:                                       ; preds = %if.end339
  %43 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call354 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %43, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.94, i64 0, i64 0)) #8
  br label %cleanup585

if.end359:                                        ; preds = %land.lhs.true292, %if.end310, %lor.lhs.false318, %if.then344, %if.then285
  %sptr.0 = phi i8* [ null, %if.then285 ], [ %7, %if.then344 ], [ %7, %lor.lhs.false318 ], [ %7, %if.end310 ], [ %7, %land.lhs.true292 ]
  %cmp360 = icmp eq i32 %pbkdf2.0, 1
  br i1 %cmp360, label %if.then362, label %if.else391

if.then362:                                       ; preds = %if.end359
  %44 = getelementptr inbounds [80 x i8], [80 x i8]* %tmpkeyiv, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %44) #6
  %45 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %cipher, align 8, !tbaa !3
  %call363 = call i32 @EVP_CIPHER_get_key_length(%struct.evp_cipher_st* noundef %45) #8
  %46 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %cipher, align 8, !tbaa !3
  %call364 = call i32 @EVP_CIPHER_get_iv_length(%struct.evp_cipher_st* noundef %46) #8
  %cmp365.not = icmp eq i8* %sptr.0, null
  %conv368 = select i1 %cmp365.not, i32 0, i32 8
  %conv369 = trunc i64 %call286 to i32
  %47 = load %struct.evp_md_st*, %struct.evp_md_st** %dgst, align 8, !tbaa !3
  %add370 = add nsw i32 %call364, %call363
  %call372 = call i32 @PKCS5_PBKDF2_HMAC(i8* noundef nonnull %str.5, i32 noundef %conv369, i8* noundef %sptr.0, i32 noundef %conv368, i32 noundef %spec.store.select635, %struct.evp_md_st* noundef %47, i32 noundef %add370, i8* noundef nonnull %44) #8
  %tobool373.not = icmp eq i32 %call372, 0
  br i1 %tobool373.not, label %cleanup385.thread, label %cleanup385

cleanup385.thread:                                ; preds = %if.then362
  %48 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call375 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %48, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.95, i64 0, i64 0)) #8
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %44) #6
  br label %cleanup585

cleanup385:                                       ; preds = %if.then362
  %conv379 = sext i32 %call363 to i64
  %call380 = call i8* @memcpy(i8* noundef nonnull %5, i8* noundef nonnull %44, i64 noundef %conv379) #8
  %add.ptr = getelementptr inbounds [80 x i8], [80 x i8]* %tmpkeyiv, i64 0, i64 %conv379
  %conv383 = sext i32 %call364 to i64
  %call384 = call i8* @memcpy(i8* noundef nonnull %6, i8* noundef nonnull %add.ptr, i64 noundef %conv383) #8
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %44) #6
  br label %if.end401

if.else391:                                       ; preds = %if.end359
  %49 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call392 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %49, i8* noundef getelementptr inbounds ([87 x i8], [87 x i8]* @.str.96, i64 0, i64 0)) #8
  %50 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %cipher, align 8, !tbaa !3
  %51 = load %struct.evp_md_st*, %struct.evp_md_st** %dgst, align 8, !tbaa !3
  %conv393 = trunc i64 %call286 to i32
  %call396 = call i32 @EVP_BytesToKey(%struct.evp_cipher_st* noundef %50, %struct.evp_md_st* noundef %51, i8* noundef %sptr.0, i8* noundef nonnull %str.5, i32 noundef %conv393, i32 noundef 1, i8* noundef nonnull %5, i8* noundef nonnull %6) #8
  %tobool397.not = icmp eq i32 %call396, 0
  br i1 %tobool397.not, label %if.then398, label %if.end401

if.then398:                                       ; preds = %if.else391
  %52 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call399 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %52, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.97, i64 0, i64 0)) #8
  br label %cleanup585

if.end401:                                        ; preds = %cleanup385, %if.else391
  %cmp402 = icmp eq i8* %str.5, %call188
  br i1 %cmp402, label %if.then404, label %if.else405

if.then404:                                       ; preds = %if.end401
  call void @OPENSSL_cleanse(i8* noundef nonnull %call188, i64 noundef 512) #8
  br label %if.end411

if.else405:                                       ; preds = %if.end401
  call void @OPENSSL_cleanse(i8* noundef nonnull %str.5, i64 noundef %call286) #8
  br label %if.end411

if.end411:                                        ; preds = %if.else405, %if.then404
  %cmp412.not = icmp eq i8* %hiv.0, null
  br i1 %cmp412.not, label %if.end431, label %if.then414

if.end411.thread:                                 ; preds = %if.then282
  %cmp412.not1146 = icmp eq i8* %hiv.0, null
  br i1 %cmp412.not1146, label %land.lhs.true437, label %if.then414

if.then414:                                       ; preds = %if.end411.thread, %if.end411
  %53 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %cipher, align 8, !tbaa !3
  %call415 = call i32 @EVP_CIPHER_get_iv_length(%struct.evp_cipher_st* noundef %53) #8
  %cmp416 = icmp eq i32 %call415, 0
  br i1 %cmp416, label %if.then418, label %if.else420

if.then418:                                       ; preds = %if.then414
  %54 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call419 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %54, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.98, i64 0, i64 0)) #8
  br label %if.end443

if.else420:                                       ; preds = %if.then414
  %call422 = call fastcc i32 @set_hex(i8* noundef nonnull %hiv.0, i8* noundef nonnull %6, i32 noundef %call415) #9
  %tobool423.not = icmp eq i32 %call422, 0
  br i1 %tobool423.not, label %cleanup428, label %if.end443

cleanup428:                                       ; preds = %if.else420
  %55 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call425 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %55, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.99, i64 0, i64 0)) #8
  br label %cleanup585

if.end431:                                        ; preds = %if.end411
  br i1 %cmp283.not, label %land.lhs.true437, label %if.end443

land.lhs.true437:                                 ; preds = %if.end411.thread, %if.end431
  %56 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %cipher, align 8, !tbaa !3
  %call438 = call i32 @EVP_CIPHER_get_iv_length(%struct.evp_cipher_st* noundef %56) #8
  %cmp439.not = icmp eq i32 %call438, 0
  br i1 %cmp439.not, label %if.end443, label %if.then441

if.then441:                                       ; preds = %land.lhs.true437
  %57 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call442 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %57, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.100, i64 0, i64 0)) #8
  br label %cleanup585

if.end443:                                        ; preds = %if.else420, %if.then418, %land.lhs.true437, %if.end431
  br i1 %cmp226, label %if.end454, label %if.then446

if.then446:                                       ; preds = %if.end443
  %58 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %cipher, align 8, !tbaa !3
  %call448 = call i32 @EVP_CIPHER_get_key_length(%struct.evp_cipher_st* noundef %58) #8
  %call449 = call fastcc i32 @set_hex(i8* noundef nonnull %hkey.0, i8* noundef nonnull %5, i32 noundef %call448) #9
  %tobool450.not = icmp eq i32 %call449, 0
  br i1 %tobool450.not, label %if.then451, label %if.end453

if.then451:                                       ; preds = %if.then446
  %59 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call452 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %59, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.101, i64 0, i64 0)) #8
  br label %cleanup585

if.end453:                                        ; preds = %if.then446
  call void @cleanse(i8* noundef nonnull %hkey.0) #8
  br label %if.end454

if.end454:                                        ; preds = %if.end453, %if.end443
  %call455 = call %struct.bio_method_st* @BIO_f_cipher() #8
  %call456 = call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call455) #8
  %cmp457 = icmp eq %struct.bio_st* %call456, null
  br i1 %cmp457, label %cleanup585, label %if.end460

if.end460:                                        ; preds = %if.end454
  %call461 = call i64 @BIO_ctrl(%struct.bio_st* noundef nonnull %call456, i32 noundef 129, i64 noundef 0, i8* noundef nonnull %0) #8
  %60 = load %struct.evp_cipher_ctx_st*, %struct.evp_cipher_ctx_st** %ctx, align 8, !tbaa !3
  %61 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %cipher, align 8, !tbaa !3
  %call462 = call i32 @EVP_CipherInit_ex(%struct.evp_cipher_ctx_st* noundef %60, %struct.evp_cipher_st* noundef %61, %struct.engine_st* noundef %e.0, i8* noundef null, i8* noundef null, i32 noundef %enc.0) #8
  %tobool463.not = icmp eq i32 %call462, 0
  br i1 %tobool463.not, label %if.then464, label %if.end467

if.then464:                                       ; preds = %if.end460
  %62 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %63 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %cipher, align 8, !tbaa !3
  %call465 = call i8* @EVP_CIPHER_get0_name(%struct.evp_cipher_st* noundef %63) #8
  %call466 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %62, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.102, i64 0, i64 0), i8* noundef %call465) #8
  %64 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  call void @ERR_print_errors(%struct.bio_st* noundef %64) #8
  br label %cleanup585

if.end467:                                        ; preds = %if.end460
  %tobool468.not = icmp eq i32 %nopad.0, 0
  br i1 %tobool468.not, label %if.end471, label %if.then469

if.then469:                                       ; preds = %if.end467
  %65 = load %struct.evp_cipher_ctx_st*, %struct.evp_cipher_ctx_st** %ctx, align 8, !tbaa !3
  %call470 = call i32 @EVP_CIPHER_CTX_set_padding(%struct.evp_cipher_ctx_st* noundef %65, i32 noundef 0) #8
  br label %if.end471

if.end471:                                        ; preds = %if.then469, %if.end467
  %66 = load %struct.evp_cipher_ctx_st*, %struct.evp_cipher_ctx_st** %ctx, align 8, !tbaa !3
  %call474 = call i32 @EVP_CipherInit_ex(%struct.evp_cipher_ctx_st* noundef %66, %struct.evp_cipher_st* noundef null, %struct.engine_st* noundef null, i8* noundef nonnull %5, i8* noundef nonnull %6, i32 noundef %enc.0) #8
  %tobool475.not = icmp eq i32 %call474, 0
  br i1 %tobool475.not, label %if.then476, label %if.end479

if.then476:                                       ; preds = %if.end471
  %67 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %68 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %cipher, align 8, !tbaa !3
  %call477 = call i8* @EVP_CIPHER_get0_name(%struct.evp_cipher_st* noundef %68) #8
  %call478 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %67, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.102, i64 0, i64 0), i8* noundef %call477) #8
  %69 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  call void @ERR_print_errors(%struct.bio_st* noundef %69) #8
  br label %cleanup585

if.end479:                                        ; preds = %if.end471
  br i1 %tobool256.not, label %if.end482, label %if.then481

if.then481:                                       ; preds = %if.end479
  call void @BIO_set_callback_ex(%struct.bio_st* noundef nonnull %call456, i64 (%struct.bio_st*, i32, i8*, i64, i32, i64, i32, i64*)* noundef nonnull @BIO_debug_callback_ex) #8
  %70 = load i8*, i8** bitcast (%struct.bio_st** @bio_err to i8**), align 8, !tbaa !3
  call void @BIO_set_callback_arg(%struct.bio_st* noundef nonnull %call456, i8* noundef %70) #8
  br label %if.end482

if.end482:                                        ; preds = %if.then481, %if.end479
  %tobool483.not = icmp eq i32 %printkey.0, 0
  br i1 %tobool483.not, label %if.then544, label %if.then484

if.then484:                                       ; preds = %if.end482
  %tobool485.not = icmp eq i32 %nosalt.0, 0
  br i1 %tobool485.not, label %if.then486, label %if.end497

if.then486:                                       ; preds = %if.then484
  %call487 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.103, i64 0, i64 0)) #8
  %71 = load i8, i8* %7, align 1, !tbaa !13
  %conv493 = zext i8 %71 to i32
  %call494 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.104, i64 0, i64 0), i32 noundef %conv493) #8
  %arrayidx492.1 = getelementptr inbounds [8 x i8], [8 x i8]* %salt, i64 0, i64 1
  %72 = load i8, i8* %arrayidx492.1, align 1, !tbaa !13
  %conv493.1 = zext i8 %72 to i32
  %call494.1 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.104, i64 0, i64 0), i32 noundef %conv493.1) #8
  %arrayidx492.2 = getelementptr inbounds [8 x i8], [8 x i8]* %salt, i64 0, i64 2
  %73 = load i8, i8* %arrayidx492.2, align 1, !tbaa !13
  %conv493.2 = zext i8 %73 to i32
  %call494.2 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.104, i64 0, i64 0), i32 noundef %conv493.2) #8
  %arrayidx492.3 = getelementptr inbounds [8 x i8], [8 x i8]* %salt, i64 0, i64 3
  %74 = load i8, i8* %arrayidx492.3, align 1, !tbaa !13
  %conv493.3 = zext i8 %74 to i32
  %call494.3 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.104, i64 0, i64 0), i32 noundef %conv493.3) #8
  %arrayidx492.4 = getelementptr inbounds [8 x i8], [8 x i8]* %salt, i64 0, i64 4
  %75 = load i8, i8* %arrayidx492.4, align 1, !tbaa !13
  %conv493.4 = zext i8 %75 to i32
  %call494.4 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.104, i64 0, i64 0), i32 noundef %conv493.4) #8
  %arrayidx492.5 = getelementptr inbounds [8 x i8], [8 x i8]* %salt, i64 0, i64 5
  %76 = load i8, i8* %arrayidx492.5, align 1, !tbaa !13
  %conv493.5 = zext i8 %76 to i32
  %call494.5 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.104, i64 0, i64 0), i32 noundef %conv493.5) #8
  %arrayidx492.6 = getelementptr inbounds [8 x i8], [8 x i8]* %salt, i64 0, i64 6
  %77 = load i8, i8* %arrayidx492.6, align 1, !tbaa !13
  %conv493.6 = zext i8 %77 to i32
  %call494.6 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.104, i64 0, i64 0), i32 noundef %conv493.6) #8
  %arrayidx492.7 = getelementptr inbounds [8 x i8], [8 x i8]* %salt, i64 0, i64 7
  %78 = load i8, i8* %arrayidx492.7, align 1, !tbaa !13
  %conv493.7 = zext i8 %78 to i32
  %call494.7 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.104, i64 0, i64 0), i32 noundef %conv493.7) #8
  %call496 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.79, i64 0, i64 0)) #8
  br label %if.end497

if.end497:                                        ; preds = %if.then486, %if.then484
  %79 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %cipher, align 8, !tbaa !3
  %call498 = call i32 @EVP_CIPHER_get_key_length(%struct.evp_cipher_st* noundef %79) #8
  %cmp499 = icmp sgt i32 %call498, 0
  br i1 %cmp499, label %if.then501, label %if.end516

if.then501:                                       ; preds = %if.end497
  %call502 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.105, i64 0, i64 0)) #8
  %80 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %cipher, align 8, !tbaa !3
  %call504978 = call i32 @EVP_CIPHER_get_key_length(%struct.evp_cipher_st* noundef %80) #8
  %cmp505979 = icmp sgt i32 %call504978, 0
  br i1 %cmp505979, label %for.body507, label %for.end514

for.body507:                                      ; preds = %if.then501, %for.body507
  %indvars.iv1140 = phi i64 [ %indvars.iv.next1141, %for.body507 ], [ 0, %if.then501 ]
  %arrayidx509 = getelementptr inbounds [64 x i8], [64 x i8]* %key, i64 0, i64 %indvars.iv1140
  %81 = load i8, i8* %arrayidx509, align 1, !tbaa !13
  %conv510 = zext i8 %81 to i32
  %call511 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.104, i64 0, i64 0), i32 noundef %conv510) #8
  %indvars.iv.next1141 = add nuw nsw i64 %indvars.iv1140, 1
  %82 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %cipher, align 8, !tbaa !3
  %call504 = call i32 @EVP_CIPHER_get_key_length(%struct.evp_cipher_st* noundef %82) #8
  %83 = sext i32 %call504 to i64
  %cmp505 = icmp slt i64 %indvars.iv.next1141, %83
  br i1 %cmp505, label %for.body507, label %for.end514, !llvm.loop !17

for.end514:                                       ; preds = %for.body507, %if.then501
  %call515 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.79, i64 0, i64 0)) #8
  br label %if.end516

if.end516:                                        ; preds = %for.end514, %if.end497
  %84 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %cipher, align 8, !tbaa !3
  %call517 = call i32 @EVP_CIPHER_get_iv_length(%struct.evp_cipher_st* noundef %84) #8
  %cmp518 = icmp sgt i32 %call517, 0
  br i1 %cmp518, label %if.then520, label %if.end535

if.then520:                                       ; preds = %if.end516
  %call521 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.106, i64 0, i64 0)) #8
  %85 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %cipher, align 8, !tbaa !3
  %call523981 = call i32 @EVP_CIPHER_get_iv_length(%struct.evp_cipher_st* noundef %85) #8
  %cmp524982 = icmp sgt i32 %call523981, 0
  br i1 %cmp524982, label %for.body526, label %for.end533

for.body526:                                      ; preds = %if.then520, %for.body526
  %indvars.iv1143 = phi i64 [ %indvars.iv.next1144, %for.body526 ], [ 0, %if.then520 ]
  %arrayidx528 = getelementptr inbounds [16 x i8], [16 x i8]* %iv, i64 0, i64 %indvars.iv1143
  %86 = load i8, i8* %arrayidx528, align 1, !tbaa !13
  %conv529 = zext i8 %86 to i32
  %call530 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.104, i64 0, i64 0), i32 noundef %conv529) #8
  %indvars.iv.next1144 = add nuw nsw i64 %indvars.iv1143, 1
  %87 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %cipher, align 8, !tbaa !3
  %call523 = call i32 @EVP_CIPHER_get_iv_length(%struct.evp_cipher_st* noundef %87) #8
  %88 = sext i32 %call523 to i64
  %cmp524 = icmp slt i64 %indvars.iv.next1144, %88
  br i1 %cmp524, label %for.body526, label %for.end533, !llvm.loop !18

for.end533:                                       ; preds = %for.body526, %if.then520
  %call534 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.79, i64 0, i64 0)) #8
  br label %if.end535

if.end535:                                        ; preds = %for.end533, %if.end516
  %cmp536 = icmp eq i32 %printkey.0, 2
  br i1 %cmp536, label %cleanup585, label %if.then544

if.then544:                                       ; preds = %if.end535, %if.end482
  %call545 = call %struct.bio_st* @BIO_push(%struct.bio_st* noundef nonnull %call456, %struct.bio_st* noundef %wbio.0) #8
  br label %if.end546

if.end546:                                        ; preds = %if.end279, %if.then544
  %benc.0827 = phi %struct.bio_st* [ %call456, %if.then544 ], [ null, %if.end279 ]
  %wbio.1 = phi %struct.bio_st* [ %call545, %if.then544 ], [ %wbio.0, %if.end279 ]
  br label %while.cond547

while.cond547:                                    ; preds = %if.end561, %if.end546
  %call548 = call i64 @BIO_ctrl(%struct.bio_st* noundef %rbio.0, i32 noundef 10, i64 noundef 0, i8* noundef null) #8
  %conv549 = trunc i64 %call548 to i32
  %tobool550.not = icmp eq i32 %conv549, 0
  br i1 %tobool550.not, label %lor.rhs551, label %while.body556

lor.rhs551:                                       ; preds = %while.cond547
  %call552 = call i64 @BIO_ctrl(%struct.bio_st* noundef %rbio.0, i32 noundef 2, i64 noundef 0, i8* noundef null) #8
  %conv553 = trunc i64 %call552 to i32
  %tobool554.not = icmp eq i32 %conv553, 0
  br i1 %tobool554.not, label %while.body556, label %while.end568

while.body556:                                    ; preds = %while.cond547, %lor.rhs551
  %call557 = call i32 @BIO_read(%struct.bio_st* noundef %rbio.0, i8* noundef %call196, i32 noundef %spec.store.select641) #8
  %cmp558 = icmp slt i32 %call557, 1
  br i1 %cmp558, label %while.end568, label %if.end561

if.end561:                                        ; preds = %while.body556
  %call562 = call i32 @BIO_write(%struct.bio_st* noundef %wbio.1, i8* noundef %call196, i32 noundef %call557) #8
  %cmp563.not = icmp eq i32 %call562, %call557
  br i1 %cmp563.not, label %while.cond547, label %if.then565, !llvm.loop !19

if.then565:                                       ; preds = %if.end561
  %89 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call566 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %89, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.92, i64 0, i64 0)) #8
  br label %cleanup585

while.end568:                                     ; preds = %while.body556, %lor.rhs551
  %call569 = call i64 @BIO_ctrl(%struct.bio_st* noundef %wbio.1, i32 noundef 11, i64 noundef 0, i8* noundef null) #8
  %conv570 = trunc i64 %call569 to i32
  %tobool571.not = icmp eq i32 %conv570, 0
  br i1 %tobool571.not, label %if.then572, label %if.end574

if.then572:                                       ; preds = %while.end568
  %90 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call573 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %90, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.107, i64 0, i64 0)) #8
  br label %cleanup585

if.end574:                                        ; preds = %while.end568
  br i1 %tobool177.not, label %cleanup585, label %if.then576

if.then576:                                       ; preds = %if.end574
  %91 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call577 = call i64 @BIO_number_read(%struct.bio_st* noundef %in.3) #8
  %call578 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %91, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.108, i64 0, i64 0), i64 noundef %call577) #8
  %92 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call579 = call i64 @BIO_number_written(%struct.bio_st* noundef nonnull %call251) #8
  %call580 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %92, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.109, i64 0, i64 0), i64 noundef %call579) #8
  br label %cleanup585

cleanup585:                                       ; preds = %sw.bb125, %sw.bb131, %cleanup385.thread, %if.then296, %if.else353, %if.then350, %if.then337, %if.then324, %if.then308, %if.then398, %opthelp, %sw.bb11, %sw.bb12, %if.then216, %if.then441, %if.then451, %if.then464, %if.then476, %if.then565, %if.then572, %if.end141, %if.end203, %if.end250, %if.then260, %if.end454, %if.then576, %if.end574, %if.end535, %cleanup.thread, %cleanup428
  %strbuf.0 = phi i8* [ null, %opthelp ], [ null, %sw.bb12 ], [ null, %sw.bb11 ], [ %call188, %if.end203 ], [ %call188, %if.end250 ], [ %call188, %if.then260 ], [ %call188, %cleanup428 ], [ %call188, %if.then441 ], [ %call188, %if.end454 ], [ %call188, %if.then576 ], [ %call188, %if.end574 ], [ %call188, %if.then572 ], [ %call188, %if.then565 ], [ %call188, %if.then476 ], [ %call188, %if.then464 ], [ %call188, %if.then451 ], [ %call188, %if.then216 ], [ null, %if.end141 ], [ %call188, %if.end535 ], [ %call188, %cleanup.thread ], [ %call188, %if.then398 ], [ %call188, %if.then308 ], [ %call188, %if.then324 ], [ %call188, %if.then337 ], [ %call188, %if.then350 ], [ %call188, %if.else353 ], [ %call188, %if.then296 ], [ %call188, %cleanup385.thread ], [ null, %sw.bb131 ], [ null, %sw.bb125 ]
  %benc.1 = phi %struct.bio_st* [ null, %opthelp ], [ null, %sw.bb12 ], [ null, %sw.bb11 ], [ null, %if.end203 ], [ null, %if.end250 ], [ null, %if.then260 ], [ null, %cleanup428 ], [ null, %if.then441 ], [ null, %if.end454 ], [ %benc.0827, %if.then576 ], [ %benc.0827, %if.end574 ], [ %benc.0827, %if.then572 ], [ %benc.0827, %if.then565 ], [ %call456, %if.then476 ], [ %call456, %if.then464 ], [ null, %if.then451 ], [ null, %if.then216 ], [ null, %if.end141 ], [ %call456, %if.end535 ], [ null, %cleanup.thread ], [ null, %if.then398 ], [ null, %if.then308 ], [ null, %if.then324 ], [ null, %if.then337 ], [ null, %if.then350 ], [ null, %if.else353 ], [ null, %if.then296 ], [ null, %cleanup385.thread ], [ null, %sw.bb131 ], [ null, %sw.bb125 ]
  %ret.3 = phi i32 [ 1, %opthelp ], [ 0, %sw.bb12 ], [ 0, %sw.bb11 ], [ 1, %if.end203 ], [ 1, %if.end250 ], [ 1, %if.then260 ], [ 1, %cleanup428 ], [ 1, %if.then441 ], [ 1, %if.end454 ], [ 0, %if.then576 ], [ 0, %if.end574 ], [ 1, %if.then572 ], [ 1, %if.then565 ], [ 1, %if.then476 ], [ 1, %if.then464 ], [ 1, %if.then451 ], [ 1, %if.then216 ], [ 1, %if.end141 ], [ 0, %if.end535 ], [ 1, %cleanup.thread ], [ 1, %if.then398 ], [ 1, %if.then308 ], [ 1, %if.then324 ], [ 1, %if.then337 ], [ 1, %if.then350 ], [ 1, %if.else353 ], [ 1, %if.then296 ], [ 1, %cleanup385.thread ], [ 1, %sw.bb131 ], [ 1, %sw.bb125 ]
  %b64.1 = phi %struct.bio_st* [ null, %opthelp ], [ null, %sw.bb12 ], [ null, %sw.bb11 ], [ null, %if.end203 ], [ null, %if.end250 ], [ null, %if.then260 ], [ %b64.0, %cleanup428 ], [ %b64.0, %if.then441 ], [ %b64.0, %if.end454 ], [ %b64.0, %if.then576 ], [ %b64.0, %if.end574 ], [ %b64.0, %if.then572 ], [ %b64.0, %if.then565 ], [ %b64.0, %if.then476 ], [ %b64.0, %if.then464 ], [ %b64.0, %if.then451 ], [ null, %if.then216 ], [ null, %if.end141 ], [ %b64.0, %if.end535 ], [ null, %cleanup.thread ], [ %b64.0, %if.then398 ], [ %b64.0, %if.then308 ], [ %b64.0, %if.then324 ], [ %b64.0, %if.then337 ], [ %b64.0, %if.then350 ], [ %b64.0, %if.else353 ], [ %b64.0, %if.then296 ], [ %b64.0, %cleanup385.thread ], [ null, %sw.bb131 ], [ null, %sw.bb125 ]
  %buff.0 = phi i8* [ null, %opthelp ], [ null, %sw.bb12 ], [ null, %sw.bb11 ], [ %call196, %if.end203 ], [ %call196, %if.end250 ], [ %call196, %if.then260 ], [ %call196, %cleanup428 ], [ %call196, %if.then441 ], [ %call196, %if.end454 ], [ %call196, %if.then576 ], [ %call196, %if.end574 ], [ %call196, %if.then572 ], [ %call196, %if.then565 ], [ %call196, %if.then476 ], [ %call196, %if.then464 ], [ %call196, %if.then451 ], [ %call196, %if.then216 ], [ null, %if.end141 ], [ %call196, %if.end535 ], [ %call196, %cleanup.thread ], [ %call196, %if.then398 ], [ %call196, %if.then308 ], [ %call196, %if.then324 ], [ %call196, %if.then337 ], [ %call196, %if.then350 ], [ %call196, %if.else353 ], [ %call196, %if.then296 ], [ %call196, %cleanup385.thread ], [ null, %sw.bb131 ], [ null, %sw.bb125 ]
  %out.0 = phi %struct.bio_st* [ null, %opthelp ], [ null, %sw.bb12 ], [ null, %sw.bb11 ], [ null, %if.end203 ], [ null, %if.end250 ], [ %call251, %if.then260 ], [ %call251, %cleanup428 ], [ %call251, %if.then441 ], [ %call251, %if.end454 ], [ %call251, %if.then576 ], [ %call251, %if.end574 ], [ %call251, %if.then572 ], [ %call251, %if.then565 ], [ %call251, %if.then476 ], [ %call251, %if.then464 ], [ %call251, %if.then451 ], [ null, %if.then216 ], [ null, %if.end141 ], [ %call251, %if.end535 ], [ null, %cleanup.thread ], [ %call251, %if.then398 ], [ %call251, %if.then308 ], [ %call251, %if.then324 ], [ %call251, %if.then337 ], [ %call251, %if.then350 ], [ %call251, %if.else353 ], [ %call251, %if.then296 ], [ %call251, %cleanup385.thread ], [ null, %sw.bb131 ], [ null, %sw.bb125 ]
  %in.4 = phi %struct.bio_st* [ null, %opthelp ], [ null, %sw.bb12 ], [ null, %sw.bb11 ], [ null, %if.end203 ], [ %in.3, %if.end250 ], [ %in.3, %if.then260 ], [ %in.3, %cleanup428 ], [ %in.3, %if.then441 ], [ %in.3, %if.end454 ], [ %in.3, %if.then576 ], [ %in.3, %if.end574 ], [ %in.3, %if.then572 ], [ %in.3, %if.then565 ], [ %in.3, %if.then476 ], [ %in.3, %if.then464 ], [ %in.3, %if.then451 ], [ %in.3, %if.then216 ], [ null, %if.end141 ], [ %in.3, %if.end535 ], [ %in.3, %cleanup.thread ], [ %in.3, %if.then398 ], [ %in.3, %if.then308 ], [ %in.3, %if.then324 ], [ %in.3, %if.then337 ], [ %in.3, %if.then350 ], [ %in.3, %if.else353 ], [ %in.3, %if.then296 ], [ %in.3, %cleanup385.thread ], [ null, %sw.bb131 ], [ null, %sw.bb125 ]
  %93 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  call void @ERR_print_errors(%struct.bio_st* noundef %93) #8
  call void @CRYPTO_free(i8* noundef %strbuf.0, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.110, i64 0, i64 0), i32 noundef 629) #8
  call void @CRYPTO_free(i8* noundef %buff.0, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.110, i64 0, i64 0), i32 noundef 630) #8
  %call582 = call i32 @BIO_free(%struct.bio_st* noundef %in.4) #8
  call void @BIO_free_all(%struct.bio_st* noundef %out.0) #8
  %call583 = call i32 @BIO_free(%struct.bio_st* noundef %benc.1) #8
  %call584 = call i32 @BIO_free(%struct.bio_st* noundef %b64.1) #8
  %94 = load %struct.evp_md_st*, %struct.evp_md_st** %dgst, align 8, !tbaa !3
  call void @EVP_MD_free(%struct.evp_md_st* noundef %94) #8
  %95 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %cipher, align 8, !tbaa !3
  call void @EVP_CIPHER_free(%struct.evp_cipher_st* noundef %95) #8
  call void @release_engine(%struct.engine_st* noundef %e.0) #8
  %96 = load i8*, i8** %pass, align 8, !tbaa !3
  call void @CRYPTO_free(i8* noundef %96, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.110, i64 0, i64 0), i32 noundef 641) #8
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %9) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #6
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %6) #6
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %5) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #6
  ret i32 %ret.3
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local i8* @opt_init(i32 noundef, i8** noundef, %struct.options_st* noundef) local_unnamed_addr #3

declare dso_local i32 @opt_next() local_unnamed_addr #3

declare dso_local i32 @BIO_printf(%struct.bio_st* noundef, i8* noundef, ...) local_unnamed_addr #3

declare dso_local void @opt_help(%struct.options_st* noundef) local_unnamed_addr #3

declare dso_local void @OBJ_NAME_do_all_sorted(i32 noundef, void (%struct.obj_name_st*, i8*)* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal void @show_ciphers(%struct.obj_name_st* nocapture noundef readonly %name, i8* nocapture noundef %arg) #0 {
entry:
  %call = tail call i16** @__ctype_b_loc() #10
  %0 = load i16*, i16** %call, align 8, !tbaa !3
  %name1 = getelementptr inbounds %struct.obj_name_st, %struct.obj_name_st* %name, i64 0, i32 2
  %1 = load i8*, i8** %name1, align 8, !tbaa !20
  %2 = load i8, i8* %1, align 1, !tbaa !13
  %3 = zext i8 %2 to i64
  %arrayidx = getelementptr inbounds i16, i16* %0, i64 %3
  %4 = load i16, i16* %arrayidx, align 2, !tbaa !22
  %5 = and i16 %4, 512
  %tobool.not = icmp eq i16 %5, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call4 = tail call %struct.evp_cipher_st* @EVP_get_cipherbyname(i8* noundef nonnull %1) #8
  %cmp = icmp eq %struct.evp_cipher_st* %call4, null
  br i1 %cmp, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %call6 = tail call i64 @EVP_CIPHER_get_flags(%struct.evp_cipher_st* noundef nonnull %call4) #8
  %and7 = and i64 %call6, 2097152
  %cmp8.not = icmp eq i64 %and7, 0
  br i1 %cmp8.not, label %lor.lhs.false10, label %cleanup

lor.lhs.false10:                                  ; preds = %lor.lhs.false
  %call11 = tail call i32 @EVP_CIPHER_get_mode(%struct.evp_cipher_st* noundef nonnull %call4) #8
  %cmp12 = icmp eq i32 %call11, 65537
  br i1 %cmp12, label %cleanup, label %if.end15

if.end15:                                         ; preds = %lor.lhs.false10
  %bio = bitcast i8* %arg to %struct.bio_st**
  %6 = load %struct.bio_st*, %struct.bio_st** %bio, align 8, !tbaa !9
  %7 = load i8*, i8** %name1, align 8, !tbaa !20
  %call17 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %6, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.111, i64 0, i64 0), i8* noundef %7) #8
  %n = getelementptr inbounds i8, i8* %arg, i64 8
  %8 = bitcast i8* %n to i32*
  %9 = load i32, i32* %8, align 8, !tbaa !12
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %8, align 8, !tbaa !12
  %cmp18 = icmp eq i32 %inc, 3
  %10 = load %struct.bio_st*, %struct.bio_st** %bio, align 8, !tbaa !9
  br i1 %cmp18, label %if.then20, label %if.else

if.then20:                                        ; preds = %if.end15
  %call22 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %10, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.79, i64 0, i64 0)) #8
  store i32 0, i32* %8, align 8, !tbaa !12
  br label %cleanup

if.else:                                          ; preds = %if.end15
  %call25 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %10, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.112, i64 0, i64 0)) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then20, %if.else, %if.end, %lor.lhs.false, %lor.lhs.false10, %entry
  ret void
}

declare dso_local i8* @opt_arg() local_unnamed_addr #3

declare dso_local %struct.engine_st* @setup_engine_methods(i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) local_unnamed_addr #2

declare dso_local i32 @opt_long(i8* noundef, i64* noundef) local_unnamed_addr #3

declare dso_local %struct.bio_st* @bio_open_default(i8* noundef, i8 noundef signext, i32 noundef) local_unnamed_addr #3

declare dso_local i32 @BIO_gets(%struct.bio_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare dso_local i32 @BIO_free(%struct.bio_st* noundef) local_unnamed_addr #3

declare dso_local i8* @opt_unknown() local_unnamed_addr #3

declare dso_local i32 @opt_int_arg() local_unnamed_addr #3

declare dso_local i32 @opt_rand(i32 noundef) local_unnamed_addr #3

declare dso_local i32 @opt_provider(i32 noundef) local_unnamed_addr #3

declare dso_local i32 @opt_num_rest() local_unnamed_addr #3

declare dso_local i32 @app_RAND_load() local_unnamed_addr #3

declare dso_local i32 @opt_cipher(i8* noundef, %struct.evp_cipher_st** noundef) local_unnamed_addr #3

declare dso_local i32 @opt_md(i8* noundef, %struct.evp_md_st** noundef) local_unnamed_addr #3

declare dso_local %struct.evp_md_st* @EVP_sha256() local_unnamed_addr #3

declare dso_local i8* @app_malloc(i64 noundef, i8* noundef) local_unnamed_addr #3

declare dso_local %struct.bio_st* @dup_bio_in(i32 noundef) local_unnamed_addr #3

declare dso_local i32 @app_passwd(i8* noundef, i8* noundef, i8** noundef, i8** noundef) local_unnamed_addr #3

declare dso_local i32 @BIO_snprintf(i8* noundef, i64 noundef, i8* noundef, ...) local_unnamed_addr #3

declare dso_local i8* @EVP_CIPHER_get0_name(%struct.evp_cipher_st* noundef) local_unnamed_addr #3

declare dso_local i32 @EVP_read_pw_string(i8* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

declare dso_local void @BIO_set_callback_ex(%struct.bio_st* noundef, i64 (%struct.bio_st*, i32, i8*, i64, i32, i64, i32, i64*)* noundef) local_unnamed_addr #3

declare dso_local i64 @BIO_debug_callback_ex(%struct.bio_st* noundef, i32 noundef, i8* noundef, i64 noundef, i32 noundef, i64 noundef, i32 noundef, i64* noundef) #3

declare dso_local void @BIO_set_callback_arg(%struct.bio_st* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef) local_unnamed_addr #3

declare dso_local %struct.bio_method_st* @BIO_f_base64() local_unnamed_addr #3

declare dso_local void @BIO_set_flags(%struct.bio_st* noundef, i32 noundef) local_unnamed_addr #3

declare dso_local %struct.bio_st* @BIO_push(%struct.bio_st* noundef, %struct.bio_st* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @set_hex(i8* noundef %in, i8* noundef %out, i32 noundef %size) unnamed_addr #0 {
entry:
  %mul = shl nsw i32 %size, 1
  %call = tail call i64 @strlen(i8* noundef %in) #7
  %conv = trunc i64 %call to i32
  %cmp = icmp slt i32 %mul, %conv
  br i1 %cmp, label %if.end7.sink.split, label %if.else

if.else:                                          ; preds = %entry
  %cmp3 = icmp sgt i32 %mul, %conv
  br i1 %cmp3, label %if.end7.sink.split, label %if.end7

if.end7.sink.split:                               ; preds = %if.else, %entry
  %.sink59 = phi i8* [ getelementptr inbounds ([41 x i8], [41 x i8]* @.str.113, i64 0, i64 0), %entry ], [ getelementptr inbounds ([60 x i8], [60 x i8]* @.str.114, i64 0, i64 0), %if.else ]
  %n.0.ph = phi i32 [ %mul, %entry ], [ %conv, %if.else ]
  %0 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call6 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %0, i8* noundef %.sink59) #8
  br label %if.end7

if.end7:                                          ; preds = %if.end7.sink.split, %if.else
  %n.0 = phi i32 [ %conv, %if.else ], [ %n.0.ph, %if.end7.sink.split ]
  %conv8 = sext i32 %size to i64
  %call9 = tail call i8* @memset(i8* noundef %out, i32 noundef 0, i64 noundef %conv8) #8
  %cmp1055 = icmp sgt i32 %n.0, 0
  br i1 %cmp1055, label %for.body.lr.ph, label %cleanup

for.body.lr.ph:                                   ; preds = %if.end7
  %call12 = tail call i16** @__ctype_b_loc() #10
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %i.057 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc ]
  %in.addr.056 = phi i8* [ %in, %for.body.lr.ph ], [ %incdec.ptr, %for.inc ]
  %incdec.ptr = getelementptr inbounds i8, i8* %in.addr.056, i64 1
  %1 = load i8, i8* %in.addr.056, align 1, !tbaa !13
  %2 = load i16*, i16** %call12, align 8, !tbaa !3
  %3 = zext i8 %1 to i64
  %arrayidx = getelementptr inbounds i16, i16* %2, i64 %3
  %4 = load i16, i16* %arrayidx, align 2, !tbaa !22
  %5 = and i16 %4, 4096
  %tobool.not = icmp eq i16 %5, 0
  br i1 %tobool.not, label %if.then15, label %if.end17

if.then15:                                        ; preds = %for.body
  %6 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call16 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %6, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.115, i64 0, i64 0)) #8
  br label %cleanup

if.end17:                                         ; preds = %for.body
  %call18 = tail call i32 @OPENSSL_hexchar2int(i8 noundef zeroext %1) #8
  %and20 = and i32 %i.057, 1
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %if.else28, label %if.then22

if.then22:                                        ; preds = %if.end17
  %div = lshr i32 %i.057, 1
  %idxprom24 = zext i32 %div to i64
  %arrayidx25 = getelementptr inbounds i8, i8* %out, i64 %idxprom24
  %7 = load i8, i8* %arrayidx25, align 1, !tbaa !13
  %8 = trunc i32 %call18 to i8
  %conv27 = or i8 %7, %8
  store i8 %conv27, i8* %arrayidx25, align 1, !tbaa !13
  br label %for.inc

if.else28:                                        ; preds = %if.end17
  %call18.tr = trunc i32 %call18 to i8
  %conv30 = shl i8 %call18.tr, 4
  %div31 = lshr i32 %i.057, 1
  %idxprom32 = zext i32 %div31 to i64
  %arrayidx33 = getelementptr inbounds i8, i8* %out, i64 %idxprom32
  store i8 %conv30, i8* %arrayidx33, align 1, !tbaa !13
  br label %for.inc

for.inc:                                          ; preds = %if.then22, %if.else28
  %inc = add nuw nsw i32 %i.057, 1
  %exitcond.not = icmp eq i32 %inc, %n.0
  br i1 %exitcond.not, label %cleanup, label %for.body, !llvm.loop !24

cleanup:                                          ; preds = %for.inc, %if.end7, %if.then15
  %retval.0 = phi i32 [ 0, %if.then15 ], [ 1, %if.end7 ], [ 1, %for.inc ]
  ret i32 %retval.0
}

declare dso_local i32 @RAND_bytes(i8* noundef, i32 noundef) local_unnamed_addr #3

declare dso_local i32 @BIO_write(%struct.bio_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare dso_local i32 @BIO_read(%struct.bio_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare dso_local i32 @EVP_CIPHER_get_key_length(%struct.evp_cipher_st* noundef) local_unnamed_addr #3

declare dso_local i32 @EVP_CIPHER_get_iv_length(%struct.evp_cipher_st* noundef) local_unnamed_addr #3

declare dso_local i32 @PKCS5_PBKDF2_HMAC(i8* noundef, i32 noundef, i8* noundef, i32 noundef, i32 noundef, %struct.evp_md_st* noundef, i32 noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

declare dso_local i32 @EVP_BytesToKey(%struct.evp_cipher_st* noundef, %struct.evp_md_st* noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local void @OPENSSL_cleanse(i8* noundef, i64 noundef) local_unnamed_addr #3

declare dso_local void @cleanse(i8* noundef) local_unnamed_addr #3

declare dso_local %struct.bio_method_st* @BIO_f_cipher() local_unnamed_addr #3

declare dso_local i64 @BIO_ctrl(%struct.bio_st* noundef, i32 noundef, i64 noundef, i8* noundef) local_unnamed_addr #3

declare dso_local i32 @EVP_CipherInit_ex(%struct.evp_cipher_ctx_st* noundef, %struct.evp_cipher_st* noundef, %struct.engine_st* noundef, i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare dso_local void @ERR_print_errors(%struct.bio_st* noundef) local_unnamed_addr #3

declare dso_local i32 @EVP_CIPHER_CTX_set_padding(%struct.evp_cipher_ctx_st* noundef, i32 noundef) local_unnamed_addr #3

declare dso_local i32 @printf(i8* noundef, ...) local_unnamed_addr #3

declare dso_local i64 @BIO_number_read(%struct.bio_st* noundef) local_unnamed_addr #3

declare dso_local i64 @BIO_number_written(%struct.bio_st* noundef) local_unnamed_addr #3

declare dso_local void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare dso_local void @BIO_free_all(%struct.bio_st* noundef) local_unnamed_addr #3

declare dso_local void @EVP_MD_free(%struct.evp_md_st* noundef) local_unnamed_addr #3

declare dso_local void @EVP_CIPHER_free(%struct.evp_cipher_st* noundef) local_unnamed_addr #3

declare dso_local void @release_engine(%struct.engine_st* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() local_unnamed_addr #5

declare dso_local %struct.evp_cipher_st* @EVP_get_cipherbyname(i8* noundef) local_unnamed_addr #3

declare dso_local i64 @EVP_CIPHER_get_flags(%struct.evp_cipher_st* noundef) local_unnamed_addr #3

declare dso_local i32 @EVP_CIPHER_get_mode(%struct.evp_cipher_st* noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

declare dso_local i32 @OPENSSL_hexchar2int(i8 noundef zeroext) local_unnamed_addr #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { nobuiltin nounwind readonly willreturn "no-builtins" }
attributes #8 = { nobuiltin nounwind "no-builtins" }
attributes #9 = { nobuiltin "no-builtins" }
attributes #10 = { nobuiltin nounwind readnone willreturn "no-builtins" }

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
!10 = !{!"doall_enc_ciphers", !4, i64 0, !11, i64 8}
!11 = !{!"int", !5, i64 0}
!12 = !{!10, !11, i64 8}
!13 = !{!5, !5, i64 0}
!14 = !{!15, !15, i64 0}
!15 = !{!"long", !5, i64 0}
!16 = distinct !{!16, !8}
!17 = distinct !{!17, !8}
!18 = distinct !{!18, !8}
!19 = distinct !{!19, !8}
!20 = !{!21, !4, i64 8}
!21 = !{!"obj_name_st", !11, i64 0, !11, i64 4, !4, i64 8, !4, i64 16}
!22 = !{!23, !23, i64 0}
!23 = !{!"short", !5, i64 0}
!24 = distinct !{!24, !8}
