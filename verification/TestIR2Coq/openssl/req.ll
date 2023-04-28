; ModuleID = 'apps/req.c'
source_filename = "apps/req.c"
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
%struct.evp_md_st = type opaque
%struct.v3_ext_ctx = type { i32, %struct.x509_st*, %struct.x509_st*, %struct.X509_req_st*, %struct.X509_crl_st*, %struct.X509V3_CONF_METHOD_st*, i8*, %struct.evp_pkey_st* }
%struct.x509_st = type opaque
%struct.X509_req_st = type opaque
%struct.X509_crl_st = type opaque
%struct.X509V3_CONF_METHOD_st = type { i8* (i8*, i8*, i8*)*, %struct.stack_st_CONF_VALUE* (i8*, i8*)*, void (i8*, i8*)*, void (i8*, %struct.stack_st_CONF_VALUE*)* }
%struct.stack_st_CONF_VALUE = type opaque
%struct.evp_pkey_st = type opaque
%struct.bignum_st = type opaque
%struct.evp_cipher_st = type opaque
%struct.stack_st_OPENSSL_STRING = type opaque
%struct.lhash_st_OPENSSL_STRING = type { %union.lh_OPENSSL_STRING_dummy }
%union.lh_OPENSSL_STRING_dummy = type { i8* }
%struct.engine_st = type opaque
%struct.asn1_string_st = type { i32, i32, i8*, i64 }
%struct.stack_st = type opaque
%struct.v3_ext_method = type { i32, i32, %struct.ASN1_ITEM_st* ()*, i8* ()*, void (i8*)*, i8* (i8*, i8**, i64)*, i32 (i8*, i8**)*, i8* (%struct.v3_ext_method*, i8*)*, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)*, %struct.stack_st_CONF_VALUE* (%struct.v3_ext_method*, i8*, %struct.stack_st_CONF_VALUE*)*, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, %struct.stack_st_CONF_VALUE*)*, i32 (%struct.v3_ext_method*, i8*, %struct.bio_st*, i32)*, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)*, i8* }
%struct.ASN1_ITEM_st = type opaque
%struct.lhash_st = type opaque
%struct.bio_method_st = type opaque
%struct.evp_pkey_ctx_st = type opaque
%struct.X509_name_st = type opaque
%struct.ossl_param_st = type { i8*, i32, i8*, i64, i64 }

@OPT_SECTION_STR = external dso_local constant [0 x i8], align 1
@.str = private unnamed_addr constant [18 x i8] c"General options:\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Display this summary\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"engine\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"Use engine, possibly a hardware device\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"keygen_engine\00", align 1
@.str.6 = private unnamed_addr constant [56 x i8] c"Specify engine to be used for key generation operations\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"X.509 request input file\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"inform\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"Input format - DER or PEM\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"verify\00", align 1
@.str.12 = private unnamed_addr constant [37 x i8] c"Verify self-signature on the request\00", align 1
@.str.13 = private unnamed_addr constant [22 x i8] c"Certificate options:\0A\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"new\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"New request\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"config\00", align 1
@.str.17 = private unnamed_addr constant [22 x i8] c"Request template file\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"section\00", align 1
@.str.19 = private unnamed_addr constant [38 x i8] c"Config section to use (default \22req\22)\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"utf8\00", align 1
@.str.21 = private unnamed_addr constant [42 x i8] c"Input characters are UTF8 (default ASCII)\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"nameopt\00", align 1
@.str.23 = private unnamed_addr constant [49 x i8] c"Certificate subject/issuer name printing options\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"reqopt\00", align 1
@.str.25 = private unnamed_addr constant [29 x i8] c"Various request text options\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"text\00", align 1
@.str.27 = private unnamed_addr constant [21 x i8] c"Text form of request\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"x509\00", align 1
@.str.29 = private unnamed_addr constant [64 x i8] c"Output an X.509 certificate structure instead of a cert request\00", align 1
@.str.30 = private unnamed_addr constant [3 x i8] c"CA\00", align 1
@.str.31 = private unnamed_addr constant [53 x i8] c"Issuer cert to use for signing a cert, implies -x509\00", align 1
@.str.32 = private unnamed_addr constant [6 x i8] c"CAkey\00", align 1
@.str.33 = private unnamed_addr constant [55 x i8] c"Issuer private key to use with -CA; default is -CA arg\00", align 1
@OPT_MORE_STR = external dso_local constant [0 x i8], align 1
@.str.34 = private unnamed_addr constant [24 x i8] c"(Required by some CA's)\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"subj\00", align 1
@.str.36 = private unnamed_addr constant [41 x i8] c"Set or modify subject of request or cert\00", align 1
@.str.37 = private unnamed_addr constant [8 x i8] c"subject\00", align 1
@.str.38 = private unnamed_addr constant [48 x i8] c"Print the subject of the output request or cert\00", align 1
@.str.39 = private unnamed_addr constant [15 x i8] c"multivalue-rdn\00", align 1
@.str.40 = private unnamed_addr constant [52 x i8] c"Deprecated; multi-valued RDNs support is always on.\00", align 1
@.str.41 = private unnamed_addr constant [5 x i8] c"days\00", align 1
@.str.42 = private unnamed_addr constant [33 x i8] c"Number of days cert is valid for\00", align 1
@.str.43 = private unnamed_addr constant [11 x i8] c"set_serial\00", align 1
@.str.44 = private unnamed_addr constant [21 x i8] c"Serial number to use\00", align 1
@.str.45 = private unnamed_addr constant [16 x i8] c"copy_extensions\00", align 1
@.str.46 = private unnamed_addr constant [46 x i8] c"copy extensions from request when using -x509\00", align 1
@.str.47 = private unnamed_addr constant [7 x i8] c"addext\00", align 1
@.str.48 = private unnamed_addr constant [71 x i8] c"Additional cert extension key=value pair (may be given more than once)\00", align 1
@.str.49 = private unnamed_addr constant [11 x i8] c"extensions\00", align 1
@.str.50 = private unnamed_addr constant [55 x i8] c"Cert extension section (override value in config file)\00", align 1
@.str.51 = private unnamed_addr constant [8 x i8] c"reqexts\00", align 1
@.str.52 = private unnamed_addr constant [58 x i8] c"Request extension section (override value in config file)\00", align 1
@.str.53 = private unnamed_addr constant [8 x i8] c"precert\00", align 1
@.str.54 = private unnamed_addr constant [38 x i8] c"Add a poison extension (implies -new)\00", align 1
@.str.55 = private unnamed_addr constant [27 x i8] c"Keys and Signing options:\0A\00", align 1
@.str.56 = private unnamed_addr constant [4 x i8] c"key\00", align 1
@.str.57 = private unnamed_addr constant [45 x i8] c"Key to include and to use for self-signature\00", align 1
@.str.58 = private unnamed_addr constant [8 x i8] c"keyform\00", align 1
@.str.59 = private unnamed_addr constant [47 x i8] c"Key file format (ENGINE, other values ignored)\00", align 1
@.str.60 = private unnamed_addr constant [7 x i8] c"pubkey\00", align 1
@.str.61 = private unnamed_addr constant [18 x i8] c"Output public key\00", align 1
@.str.62 = private unnamed_addr constant [7 x i8] c"keyout\00", align 1
@.str.63 = private unnamed_addr constant [29 x i8] c"File to write private key to\00", align 1
@.str.64 = private unnamed_addr constant [7 x i8] c"passin\00", align 1
@.str.65 = private unnamed_addr constant [44 x i8] c"Private key and certificate password source\00", align 1
@.str.66 = private unnamed_addr constant [8 x i8] c"passout\00", align 1
@.str.67 = private unnamed_addr constant [31 x i8] c"Output file pass phrase source\00", align 1
@.str.68 = private unnamed_addr constant [7 x i8] c"newkey\00", align 1
@.str.69 = private unnamed_addr constant [72 x i8] c"Generate new key with [<alg>:]<nbits> or <alg>[:<file>] or param:<file>\00", align 1
@.str.70 = private unnamed_addr constant [8 x i8] c"pkeyopt\00", align 1
@.str.71 = private unnamed_addr constant [32 x i8] c"Public key options as opt:value\00", align 1
@.str.72 = private unnamed_addr constant [7 x i8] c"sigopt\00", align 1
@.str.73 = private unnamed_addr constant [32 x i8] c"Signature parameter in n:v form\00", align 1
@.str.74 = private unnamed_addr constant [7 x i8] c"vfyopt\00", align 1
@.str.75 = private unnamed_addr constant [35 x i8] c"Verification parameter in n:v form\00", align 1
@.str.76 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.77 = private unnamed_addr constant [21 x i8] c"Any supported digest\00", align 1
@.str.78 = private unnamed_addr constant [17 x i8] c"Output options:\0A\00", align 1
@.str.79 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@.str.80 = private unnamed_addr constant [12 x i8] c"Output file\00", align 1
@.str.81 = private unnamed_addr constant [8 x i8] c"outform\00", align 1
@.str.82 = private unnamed_addr constant [27 x i8] c"Output format - DER or PEM\00", align 1
@.str.83 = private unnamed_addr constant [6 x i8] c"batch\00", align 1
@.str.84 = private unnamed_addr constant [46 x i8] c"Do not ask anything during request generation\00", align 1
@.str.85 = private unnamed_addr constant [8 x i8] c"verbose\00", align 1
@.str.86 = private unnamed_addr constant [15 x i8] c"Verbose output\00", align 1
@.str.87 = private unnamed_addr constant [6 x i8] c"noenc\00", align 1
@.str.88 = private unnamed_addr constant [27 x i8] c"Don't encrypt private keys\00", align 1
@.str.89 = private unnamed_addr constant [6 x i8] c"nodes\00", align 1
@.str.90 = private unnamed_addr constant [39 x i8] c"Don't encrypt private keys; deprecated\00", align 1
@.str.91 = private unnamed_addr constant [6 x i8] c"noout\00", align 1
@.str.92 = private unnamed_addr constant [18 x i8] c"Do not output REQ\00", align 1
@.str.93 = private unnamed_addr constant [7 x i8] c"newhdr\00", align 1
@.str.94 = private unnamed_addr constant [33 x i8] c"Output \22NEW\22 in the header lines\00", align 1
@.str.95 = private unnamed_addr constant [8 x i8] c"modulus\00", align 1
@.str.96 = private unnamed_addr constant [12 x i8] c"RSA modulus\00", align 1
@.str.97 = private unnamed_addr constant [23 x i8] c"Random state options:\0A\00", align 1
@.str.98 = private unnamed_addr constant [5 x i8] c"rand\00", align 1
@.str.99 = private unnamed_addr constant [56 x i8] c"Load the given file(s) into the random number generator\00", align 1
@.str.100 = private unnamed_addr constant [10 x i8] c"writerand\00", align 1
@.str.101 = private unnamed_addr constant [40 x i8] c"Write random data to the specified file\00", align 1
@.str.102 = private unnamed_addr constant [19 x i8] c"Provider options:\0A\00", align 1
@.str.103 = private unnamed_addr constant [14 x i8] c"provider-path\00", align 1
@.str.104 = private unnamed_addr constant [68 x i8] c"Provider load path (must be before 'provider' argument if required)\00", align 1
@.str.105 = private unnamed_addr constant [9 x i8] c"provider\00", align 1
@.str.106 = private unnamed_addr constant [51 x i8] c"Provider to load (can be specified multiple times)\00", align 1
@.str.107 = private unnamed_addr constant [10 x i8] c"propquery\00", align 1
@.str.108 = private unnamed_addr constant [45 x i8] c"Property query used when fetching algorithms\00", align 1
@req_options = dso_local constant [59 x %struct.options_st] [%struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i32 4, i32 115, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0), i32 5, i32 115, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.6, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0), i32 11, i32 60, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0), i32 2, i32 70, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i32 0, i32 0), i32 23, i32 45, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.12, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i32 0, i32 0), i32 8, i32 45, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i32 0, i32 0), i32 9, i32 60, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i32 0, i32 0), i32 46, i32 115, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.19, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i32 0, i32 0), i32 28, i32 45, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.21, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i32 0, i32 0), i32 29, i32 115, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.23, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i32 0, i32 0), i32 30, i32 115, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.25, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i32 0, i32 0), i32 33, i32 45, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.27, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i32 0), i32 34, i32 45, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.29, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i32 0, i32 0), i32 35, i32 60, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.31, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i32 0, i32 0), i32 36, i32 115, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.33, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_MORE_STR, i32 0, i32 0), i32 1, i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.34, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.35, i32 0, i32 0), i32 31, i32 115, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.36, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.37, i32 0, i32 0), i32 32, i32 45, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.38, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.39, i32 0, i32 0), i32 37, i32 45, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.40, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.41, i32 0, i32 0), i32 38, i32 112, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.42, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.43, i32 0, i32 0), i32 39, i32 115, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.44, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.45, i32 0, i32 0), i32 40, i32 115, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.46, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.47, i32 0, i32 0), i32 41, i32 115, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.48, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.49, i32 0, i32 0), i32 42, i32 115, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.50, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.51, i32 0, i32 0), i32 43, i32 115, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.52, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.53, i32 0, i32 0), i32 44, i32 45, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.54, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.55, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.56, i32 0, i32 0), i32 6, i32 115, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.57, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.58, i32 0, i32 0), i32 10, i32 102, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.59, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.60, i32 0, i32 0), i32 7, i32 45, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.61, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.62, i32 0, i32 0), i32 13, i32 62, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.63, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.64, i32 0, i32 0), i32 14, i32 115, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.65, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.66, i32 0, i32 0), i32 15, i32 115, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.67, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.68, i32 0, i32 0), i32 16, i32 115, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.69, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.70, i32 0, i32 0), i32 17, i32 115, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.71, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.72, i32 0, i32 0), i32 18, i32 115, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.73, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.74, i32 0, i32 0), i32 19, i32 115, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.75, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.76, i32 0, i32 0), i32 45, i32 45, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.77, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.78, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.79, i32 0, i32 0), i32 12, i32 62, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.80, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.81, i32 0, i32 0), i32 3, i32 70, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.82, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.83, i32 0, i32 0), i32 20, i32 45, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.84, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.85, i32 0, i32 0), i32 27, i32 45, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.86, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.87, i32 0, i32 0), i32 24, i32 45, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.88, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.89, i32 0, i32 0), i32 25, i32 45, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.90, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.91, i32 0, i32 0), i32 26, i32 45, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.92, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.93, i32 0, i32 0), i32 21, i32 45, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.94, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.95, i32 0, i32 0), i32 22, i32 45, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.96, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.97, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.98, i32 0, i32 0), i32 1501, i32 115, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.99, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.100, i32 0, i32 0), i32 1502, i32 62, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.101, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.102, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.103, i32 0, i32 0), i32 1602, i32 115, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.104, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.105, i32 0, i32 0), i32 1601, i32 115, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.106, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.107, i32 0, i32 0), i32 1603, i32 115, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.108, i32 0, i32 0) }, %struct.options_st zeroinitializer], align 16
@default_config_file = external dso_local local_unnamed_addr global i8*, align 8
@bio_err = external dso_local local_unnamed_addr global %struct.bio_st*, align 8
@.str.109 = private unnamed_addr constant [28 x i8] c"%s: Use -help for summary.\0A\00", align 1
@.str.110 = private unnamed_addr constant [29 x i8] c"Can't find keygen engine %s\0A\00", align 1
@section = internal unnamed_addr global i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.185, i64 0, i64 0), align 8
@batch = internal unnamed_addr global i1 false, align 4
@.str.111 = private unnamed_addr constant [39 x i8] c"%s: -days parameter arg must be >= -1\0A\00", align 1
@.str.112 = private unnamed_addr constant [30 x i8] c"Serial number supplied twice\0A\00", align 1
@.str.113 = private unnamed_addr constant [37 x i8] c"Invalid extension copy option: \22%s\22\0A\00", align 1
@.str.114 = private unnamed_addr constant [25 x i8] c"Duplicate extension: %s\0A\00", align 1
@.str.115 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.116 = private unnamed_addr constant [60 x i8] c"Ignoring -days without -x509; not generating a certificate\0A\00", align 1
@.str.117 = private unnamed_addr constant [58 x i8] c"Ignoring -copy_extensions 'none' when -x509 is not given\0A\00", align 1
@.str.118 = private unnamed_addr constant [25 x i8] c"Error getting passwords\0A\00", align 1
@req_conf = internal unnamed_addr global %struct.conf_st* null, align 8
@.str.119 = private unnamed_addr constant [53 x i8] c"Using additional configuration from -addext options\0A\00", align 1
@addext_conf = internal unnamed_addr global %struct.conf_st* null, align 8
@.str.120 = private unnamed_addr constant [9 x i8] c"oid_file\00", align 1
@.str.121 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.122 = private unnamed_addr constant [38 x i8] c"Problems opening '%s' for extra OIDs\0A\00", align 1
@.str.123 = private unnamed_addr constant [11 x i8] c"default_md\00", align 1
@.str.124 = private unnamed_addr constant [16 x i8] c"x509_extensions\00", align 1
@.str.125 = private unnamed_addr constant [42 x i8] c"Error checking x509 extension section %s\0A\00", align 1
@.str.126 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.127 = private unnamed_addr constant [49 x i8] c"Error checking extensions defined using -addext\0A\00", align 1
@.str.128 = private unnamed_addr constant [15 x i8] c"input_password\00", align 1
@.str.129 = private unnamed_addr constant [16 x i8] c"output_password\00", align 1
@.str.130 = private unnamed_addr constant [12 x i8] c"string_mask\00", align 1
@.str.131 = private unnamed_addr constant [39 x i8] c"Invalid global string mask setting %s\0A\00", align 1
@.str.132 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.133 = private unnamed_addr constant [15 x i8] c"req_extensions\00", align 1
@.str.134 = private unnamed_addr constant [45 x i8] c"Error checking request extension section %s\0A\00", align 1
@.str.135 = private unnamed_addr constant [12 x i8] c"private key\00", align 1
@.str.136 = private unnamed_addr constant [13 x i8] c"default_bits\00", align 1
@.str.137 = private unnamed_addr constant [4 x i8] c"RSA\00", align 1
@.str.138 = private unnamed_addr constant [8 x i8] c"RSA-PSS\00", align 1
@.str.139 = private unnamed_addr constant [4 x i8] c"DSA\00", align 1
@.str.140 = private unnamed_addr constant [70 x i8] c"Private key length too short, needs to be at least %d bits, not %ld.\0A\00", align 1
@.str.141 = private unnamed_addr constant [145 x i8] c"Warning: It is not recommended to use more than %d bit for RSA keys.\0A         Your key size is %ld! Larger key size may behave not as expected.\0A\00", align 1
@.str.142 = private unnamed_addr constant [145 x i8] c"Warning: It is not recommended to use more than %d bit for DSA keys.\0A         Your key size is %ld! Larger key size may behave not as expected.\0A\00", align 1
@.str.143 = private unnamed_addr constant [26 x i8] c"Key parameter error \22%s\22\0A\00", align 1
@.str.144 = private unnamed_addr constant [16 x i8] c"default_keyfile\00", align 1
@.str.145 = private unnamed_addr constant [24 x i8] c"Writing private key to \00", align 1
@.str.146 = private unnamed_addr constant [8 x i8] c"stdout\0A\00", align 1
@.str.147 = private unnamed_addr constant [6 x i8] c"'%s'\0A\00", align 1
@.str.148 = private unnamed_addr constant [16 x i8] c"encrypt_rsa_key\00", align 1
@.str.149 = private unnamed_addr constant [12 x i8] c"encrypt_key\00", align 1
@.str.150 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.151 = private unnamed_addr constant [7 x i8] c"-----\0A\00", align 1
@.str.152 = private unnamed_addr constant [13 x i8] c"X509 request\00", align 1
@.str.153 = private unnamed_addr constant [53 x i8] c"Ignoring -CAkey option since no -CA option is given\0A\00", align 1
@.str.154 = private unnamed_addr constant [35 x i8] c"issuer private key from -CAkey arg\00", align 1
@.str.155 = private unnamed_addr constant [32 x i8] c"issuer private key from -CA arg\00", align 1
@.str.156 = private unnamed_addr constant [25 x i8] c"issuer cert from -CA arg\00", align 1
@.str.157 = private unnamed_addr constant [44 x i8] c"Issuer CA certificate and key do not match\0A\00", align 1
@.str.158 = private unnamed_addr constant [41 x i8] c"Must provide a signature key using -key\0A\00", align 1
@.str.159 = private unnamed_addr constant [34 x i8] c"Error making certificate request\0A\00", align 1
@.str.160 = private unnamed_addr constant [76 x i8] c"Warning: No -copy_extensions given; ignoring any extensions in the request\0A\00", align 1
@.str.161 = private unnamed_addr constant [39 x i8] c"Error copying extensions from request\0A\00", align 1
@.str.162 = private unnamed_addr constant [60 x i8] c"Warning: Signature key and public key of cert do not match\0A\00", align 1
@.str.163 = private unnamed_addr constant [46 x i8] c"Error adding x509 extensions from section %s\0A\00", align 1
@.str.164 = private unnamed_addr constant [45 x i8] c"Error adding extensions defined via -addext\0A\00", align 1
@.str.165 = private unnamed_addr constant [31 x i8] c"Error adding poison extension\0A\00", align 1
@.str.166 = private unnamed_addr constant [49 x i8] c"Error adding request extensions from section %s\0A\00", align 1
@.str.167 = private unnamed_addr constant [42 x i8] c"Modifying subject of certificate request\0A\00", align 1
@.str.168 = private unnamed_addr constant [13 x i8] c"Old subject=\00", align 1
@.str.169 = private unnamed_addr constant [48 x i8] c"Error modifying subject of certificate request\0A\00", align 1
@.str.170 = private unnamed_addr constant [13 x i8] c"New subject=\00", align 1
@.str.171 = private unnamed_addr constant [51 x i8] c"Certificate request self-signature verify failure\0A\00", align 1
@.str.172 = private unnamed_addr constant [46 x i8] c"Certificate request self-signature verify OK\0A\00", align 1
@.str.173 = private unnamed_addr constant [26 x i8] c"Error getting public key\0A\00", align 1
@.str.174 = private unnamed_addr constant [28 x i8] c"Error printing certificate\0A\00", align 1
@.str.175 = private unnamed_addr constant [36 x i8] c"Error printing certificate request\0A\00", align 1
@.str.176 = private unnamed_addr constant [9 x i8] c"subject=\00", align 1
@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.177 = private unnamed_addr constant [24 x i8] c"Modulus is unavailable\0A\00", align 1
@.str.178 = private unnamed_addr constant [9 x i8] c"Modulus=\00", align 1
@.str.179 = private unnamed_addr constant [2 x i8] c"n\00", align 1
@.str.180 = private unnamed_addr constant [21 x i8] c"Wrong Algorithm type\00", align 1
@.str.181 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.182 = private unnamed_addr constant [37 x i8] c"Unable to write certificate request\0A\00", align 1
@.str.183 = private unnamed_addr constant [34 x i8] c"Unable to write X509 certificate\0A\00", align 1
@.str.184 = private unnamed_addr constant [11 x i8] c"apps/req.c\00", align 1
@.str.185 = private unnamed_addr constant [4 x i8] c"req\00", align 1
@.str.186 = private unnamed_addr constant [7 x i8] c"prompt\00", align 1
@.str.187 = private unnamed_addr constant [19 x i8] c"distinguished_name\00", align 1
@.str.188 = private unnamed_addr constant [28 x i8] c"Unable to get '%s' section\0A\00", align 1
@.str.189 = private unnamed_addr constant [11 x i8] c"attributes\00", align 1
@.str.190 = private unnamed_addr constant [44 x i8] c"Error: No objects specified in config file\0A\00", align 1
@.str.191 = private unnamed_addr constant [74 x i8] c"You are about to be asked to enter information that will be incorporated\0A\00", align 1
@.str.192 = private unnamed_addr constant [32 x i8] c"into your certificate request.\0A\00", align 1
@.str.193 = private unnamed_addr constant [77 x i8] c"What you are about to enter is what is called a Distinguished Name or a DN.\0A\00", align 1
@.str.194 = private unnamed_addr constant [59 x i8] c"There are quite a few fields but you can leave some blank\0A\00", align 1
@.str.195 = private unnamed_addr constant [48 x i8] c"For some fields there will be a default value,\0A\00", align 1
@.str.196 = private unnamed_addr constant [49 x i8] c"If you enter '.', the field will be left blank.\0A\00", align 1
@.str.197 = private unnamed_addr constant [5 x i8] c"_min\00", align 1
@.str.198 = private unnamed_addr constant [5 x i8] c"_max\00", align 1
@.str.199 = private unnamed_addr constant [9 x i8] c"_default\00", align 1
@.str.200 = private unnamed_addr constant [7 x i8] c"_value\00", align 1
@.str.201 = private unnamed_addr constant [5 x i8] c"Name\00", align 1
@.str.202 = private unnamed_addr constant [48 x i8] c"\0APlease enter the following 'extra' attributes\0A\00", align 1
@.str.203 = private unnamed_addr constant [42 x i8] c"to be sent with your certificate request\0A\00", align 1
@.str.204 = private unnamed_addr constant [33 x i8] c"No template, please set one up.\0A\00", align 1
@.str.205 = private unnamed_addr constant [18 x i8] c"%s '%s' too long\0A\00", align 1
@.str.206 = private unnamed_addr constant [9 x i8] c"DN value\00", align 1
@.str.207 = private unnamed_addr constant [11 x i8] c"DN default\00", align 1
@.str.208 = private unnamed_addr constant [9 x i8] c"%s [%s]:\00", align 1
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.209 = private unnamed_addr constant [33 x i8] c"Missing newline at end of input\0A\00", align 1
@.str.210 = private unnamed_addr constant [50 x i8] c"String too short, must be at least %d bytes long\0A\00", align 1
@.str.211 = private unnamed_addr constant [48 x i8] c"String too long, must be at most %d bytes long\0A\00", align 1
@.str.212 = private unnamed_addr constant [16 x i8] c"Attribute value\00", align 1
@.str.213 = private unnamed_addr constant [18 x i8] c"Attribute default\00", align 1
@.str.214 = private unnamed_addr constant [24 x i8] c"Error adding attribute\0A\00", align 1
@.str.215 = private unnamed_addr constant [6 x i8] c"param\00", align 1
@.str.216 = private unnamed_addr constant [48 x i8] c"Parameter file requested but no path given: %s\0A\00", align 1
@.str.217 = private unnamed_addr constant [31 x i8] c"Cannot open parameter file %s\0A\00", align 1
@.str.218 = private unnamed_addr constant [33 x i8] c"Error reading parameter file %s\0A\00", align 1
@.str.219 = private unnamed_addr constant [30 x i8] c"Unable to determine key type\0A\00", align 1
@.str.220 = private unnamed_addr constant [36 x i8] c"Key type does not match parameters\0A\00", align 1
@.str.221 = private unnamed_addr constant [33 x i8] c"Error allocating keygen context\0A\00", align 1
@.str.222 = private unnamed_addr constant [35 x i8] c"Error initializing keygen context\0A\00", align 1
@.str.223 = private unnamed_addr constant [5 x i8] c"bits\00", align 1
@.str.224 = private unnamed_addr constant [23 x i8] c"Error setting keysize\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @req_main(i32 noundef %argc, i8** noundef %argv) local_unnamed_addr #0 {
entry:
  %md = alloca %struct.evp_md_st*, align 8
  %ext_copy = alloca i32, align 4
  %keyalgstr = alloca i8*, align 8
  %passin = alloca i8*, align 8
  %passout = alloca i8*, align 8
  %informat = alloca i32, align 4
  %outformat = alloca i32, align 4
  %keyform = alloca i32, align 4
  %newkey_len = alloca i64, align 8
  %reqflag = alloca i64, align 8
  %ctx = alloca %struct.v3_ext_ctx, align 8
  %ctx293 = alloca %struct.v3_ext_ctx, align 8
  %ctx349 = alloca %struct.v3_ext_ctx, align 8
  %ext_ctx = alloca %struct.v3_ext_ctx, align 8
  %ext_ctx716 = alloca %struct.v3_ext_ctx, align 8
  %n = alloca %struct.bignum_st*, align 8
  %0 = bitcast %struct.evp_md_st** %md to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #9
  store %struct.evp_md_st* null, %struct.evp_md_st** %md, align 8, !tbaa !3
  %1 = bitcast i32* %ext_copy to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #9
  store i32 -1, i32* %ext_copy, align 4, !tbaa !7
  %2 = bitcast i8** %keyalgstr to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #9
  store i8* null, i8** %keyalgstr, align 8, !tbaa !3
  %3 = bitcast i8** %passin to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #9
  store i8* null, i8** %passin, align 8, !tbaa !3
  %4 = bitcast i8** %passout to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #9
  store i8* null, i8** %passout, align 8, !tbaa !3
  %5 = load i8*, i8** @default_config_file, align 8, !tbaa !3
  %6 = bitcast i32* %informat to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #9
  store i32 0, i32* %informat, align 4, !tbaa !7
  %7 = bitcast i32* %outformat to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #9
  store i32 32773, i32* %outformat, align 4, !tbaa !7
  %8 = bitcast i32* %keyform to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %8) #9
  store i32 0, i32* %keyform, align 4, !tbaa !7
  %9 = bitcast i64* %newkey_len to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %9) #9
  store i64 -1, i64* %newkey_len, align 8, !tbaa !9
  %10 = bitcast i64* %reqflag to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #9
  store i64 0, i64* %reqflag, align 8, !tbaa !9
  %call = tail call %struct.evp_cipher_st* @EVP_des_ede3_cbc() #10
  %call1 = tail call i8* @opt_init(i32 noundef %argc, i8** noundef %argv, %struct.options_st* noundef getelementptr inbounds ([59 x %struct.options_st], [59 x %struct.options_st]* @req_options, i64 0, i64 0)) #10
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %entry
  %sigopts.0 = phi %struct.stack_st_OPENSSL_STRING* [ null, %entry ], [ %sigopts.0.be, %while.cond.backedge ]
  %vfyopts.0 = phi %struct.stack_st_OPENSSL_STRING* [ null, %entry ], [ %vfyopts.0.be, %while.cond.backedge ]
  %addexts.0 = phi %struct.lhash_st_OPENSSL_STRING* [ null, %entry ], [ %addexts.0.be, %while.cond.backedge ]
  %addext_bio.0 = phi %struct.bio_st* [ null, %entry ], [ %addext_bio.0.be, %while.cond.backedge ]
  %extensions.0 = phi i8* [ null, %entry ], [ %extensions.0.be, %while.cond.backedge ]
  %infile.0 = phi i8* [ null, %entry ], [ %infile.0.be, %while.cond.backedge ]
  %CAfile.0 = phi i8* [ null, %entry ], [ %CAfile.0.be, %while.cond.backedge ]
  %CAkeyfile.0 = phi i8* [ null, %entry ], [ %CAkeyfile.0.be, %while.cond.backedge ]
  %outfile.0 = phi i8* [ null, %entry ], [ %outfile.0.be, %while.cond.backedge ]
  %keyfile.0 = phi i8* [ null, %entry ], [ %keyfile.0.be, %while.cond.backedge ]
  %digest.0 = phi i8* [ null, %entry ], [ %digest.0.be, %while.cond.backedge ]
  %pkeyopts.0 = phi %struct.stack_st_OPENSSL_STRING* [ null, %entry ], [ %pkeyopts.0.be, %while.cond.backedge ]
  %passargin.0 = phi i8* [ null, %entry ], [ %passargin.0.be, %while.cond.backedge ]
  %passargout.0 = phi i8* [ null, %entry ], [ %passargout.0.be, %while.cond.backedge ]
  %req_exts.0 = phi i8* [ null, %entry ], [ %req_exts.0.be, %while.cond.backedge ]
  %subj.0 = phi i8* [ null, %entry ], [ %subj.0.be, %while.cond.backedge ]
  %template.0 = phi i8* [ %5, %entry ], [ %template.0.be, %while.cond.backedge ]
  %keyout.0 = phi i8* [ null, %entry ], [ %keyout.0.be, %while.cond.backedge ]
  %keyalg.0 = phi i8* [ null, %entry ], [ %keyalg.0.be, %while.cond.backedge ]
  %days.0 = phi i32 [ -2, %entry ], [ %days.0.be, %while.cond.backedge ]
  %gen_x509.0 = phi i32 [ 0, %entry ], [ %gen_x509.0.be, %while.cond.backedge ]
  %newreq.0 = phi i32 [ 0, %entry ], [ %newreq.0.be, %while.cond.backedge ]
  %verbose.0 = phi i32 [ 0, %entry ], [ %verbose.0.be, %while.cond.backedge ]
  %modulus.0 = phi i32 [ 0, %entry ], [ %modulus.0.be, %while.cond.backedge ]
  %verify.0 = phi i32 [ 0, %entry ], [ %verify.0.be, %while.cond.backedge ]
  %noout.0 = phi i32 [ 0, %entry ], [ %noout.0.be, %while.cond.backedge ]
  %text.0 = phi i32 [ 0, %entry ], [ %text.0.be, %while.cond.backedge ]
  %noenc.0 = phi i32 [ 0, %entry ], [ %noenc.0.be, %while.cond.backedge ]
  %newhdr.0 = phi i32 [ 0, %entry ], [ %newhdr.0.be, %while.cond.backedge ]
  %subject.0 = phi i32 [ 0, %entry ], [ %subject.0.be, %while.cond.backedge ]
  %pubkey.0 = phi i32 [ 0, %entry ], [ %pubkey.0.be, %while.cond.backedge ]
  %precert.0 = phi i32 [ 0, %entry ], [ %precert.0.be, %while.cond.backedge ]
  %chtype.0 = phi i64 [ 4097, %entry ], [ %chtype.0.be, %while.cond.backedge ]
  %gen_eng.0 = phi %struct.engine_st* [ null, %entry ], [ %gen_eng.0.be, %while.cond.backedge ]
  %e.0 = phi %struct.engine_st* [ null, %entry ], [ %e.0.be, %while.cond.backedge ]
  %serial.0 = phi %struct.asn1_string_st* [ null, %entry ], [ %serial.0.be, %while.cond.backedge ]
  %call2 = call i32 @opt_next() #10
  switch i32 %call2, label %while.cond.backedge [
    i32 0, label %while.end
    i32 40, label %sw.bb149
    i32 -1, label %opthelp
    i32 1, label %sw.bb4
    i32 2, label %sw.bb5
    i32 3, label %sw.bb8
    i32 4, label %sw.bb14
    i32 5, label %sw.bb17
    i32 6, label %sw.bb24
    i32 7, label %sw.bb26
    i32 8, label %sw.bb27
    i32 9, label %sw.bb28
    i32 46, label %sw.bb30
    i32 10, label %sw.bb32
    i32 11, label %sw.bb38
    i32 12, label %sw.bb40
    i32 13, label %sw.bb42
    i32 14, label %sw.bb44
    i32 15, label %sw.bb46
    i32 44, label %sw.bb187
    i32 43, label %sw.bb185
    i32 1501, label %sw.bb49
    i32 1502, label %sw.bb49
    i32 42, label %sw.bb183
    i32 41, label %sw.bb157
    i32 1601, label %sw.bb55
    i32 1602, label %sw.bb55
    i32 1603, label %sw.bb55
    i32 16, label %sw.bb60
    i32 17, label %sw.bb62
    i32 18, label %sw.bb75
    i32 19, label %sw.bb89
    i32 20, label %sw.bb103
    i32 21, label %sw.bb104
    i32 22, label %sw.bb105
    i32 23, label %sw.bb106
    i32 25, label %sw.bb107
    i32 24, label %sw.bb107
    i32 26, label %sw.bb108
    i32 27, label %sw.bb109
    i32 28, label %sw.bb110
    i32 29, label %sw.bb111
    i32 30, label %sw.bb117
    i32 33, label %sw.bb123
    i32 34, label %sw.bb124
    i32 35, label %sw.bb125
    i32 36, label %sw.bb127
    i32 38, label %sw.bb129
    i32 39, label %sw.bb136
    i32 32, label %sw.bb146
    i32 31, label %sw.bb147
    i32 45, label %sw.bb188
  ]

while.cond.backedge:                              ; preds = %while.cond, %lor.lhs.false178, %sw.bb149, %if.end140, %sw.bb129, %sw.bb117, %sw.bb111, %lor.lhs.false95, %lor.lhs.false81, %lor.lhs.false, %sw.bb55, %sw.bb49, %sw.bb32, %sw.bb17, %sw.bb8, %sw.bb5, %sw.bb188, %sw.bb187, %sw.bb185, %sw.bb183, %sw.bb147, %sw.bb146, %sw.bb127, %sw.bb125, %sw.bb124, %sw.bb123, %sw.bb110, %sw.bb109, %sw.bb108, %sw.bb107, %sw.bb106, %sw.bb105, %sw.bb104, %sw.bb103, %sw.bb60, %sw.bb46, %sw.bb44, %sw.bb42, %sw.bb40, %sw.bb38, %sw.bb30, %sw.bb28, %sw.bb27, %sw.bb26, %sw.bb24, %sw.bb14
  %sigopts.0.be = phi %struct.stack_st_OPENSSL_STRING* [ %sigopts.0, %sw.bb149 ], [ %sigopts.0, %sw.bb188 ], [ %sigopts.0, %sw.bb147 ], [ %sigopts.0, %sw.bb146 ], [ %sigopts.0, %if.end140 ], [ %sigopts.0, %sw.bb129 ], [ %sigopts.0, %sw.bb127 ], [ %sigopts.0, %sw.bb125 ], [ %sigopts.0, %sw.bb124 ], [ %sigopts.0, %sw.bb123 ], [ %sigopts.0, %sw.bb117 ], [ %sigopts.0, %sw.bb111 ], [ %sigopts.0, %sw.bb110 ], [ %sigopts.0, %sw.bb109 ], [ %sigopts.0, %sw.bb108 ], [ %sigopts.0, %sw.bb107 ], [ %sigopts.0, %sw.bb106 ], [ %sigopts.0, %sw.bb105 ], [ %sigopts.0, %sw.bb104 ], [ %sigopts.0, %sw.bb103 ], [ %sigopts.0, %lor.lhs.false95 ], [ %sigopts.21375, %lor.lhs.false81 ], [ %sigopts.0, %lor.lhs.false ], [ %sigopts.0, %sw.bb60 ], [ %sigopts.0, %sw.bb55 ], [ %sigopts.0, %lor.lhs.false178 ], [ %sigopts.0, %sw.bb183 ], [ %sigopts.0, %sw.bb49 ], [ %sigopts.0, %sw.bb185 ], [ %sigopts.0, %sw.bb187 ], [ %sigopts.0, %sw.bb46 ], [ %sigopts.0, %sw.bb44 ], [ %sigopts.0, %sw.bb42 ], [ %sigopts.0, %sw.bb40 ], [ %sigopts.0, %sw.bb38 ], [ %sigopts.0, %sw.bb32 ], [ %sigopts.0, %sw.bb30 ], [ %sigopts.0, %sw.bb28 ], [ %sigopts.0, %sw.bb27 ], [ %sigopts.0, %sw.bb26 ], [ %sigopts.0, %sw.bb24 ], [ %sigopts.0, %sw.bb17 ], [ %sigopts.0, %sw.bb14 ], [ %sigopts.0, %sw.bb8 ], [ %sigopts.0, %sw.bb5 ], [ %sigopts.0, %while.cond ]
  %vfyopts.0.be = phi %struct.stack_st_OPENSSL_STRING* [ %vfyopts.0, %sw.bb149 ], [ %vfyopts.0, %sw.bb188 ], [ %vfyopts.0, %sw.bb147 ], [ %vfyopts.0, %sw.bb146 ], [ %vfyopts.0, %if.end140 ], [ %vfyopts.0, %sw.bb129 ], [ %vfyopts.0, %sw.bb127 ], [ %vfyopts.0, %sw.bb125 ], [ %vfyopts.0, %sw.bb124 ], [ %vfyopts.0, %sw.bb123 ], [ %vfyopts.0, %sw.bb117 ], [ %vfyopts.0, %sw.bb111 ], [ %vfyopts.0, %sw.bb110 ], [ %vfyopts.0, %sw.bb109 ], [ %vfyopts.0, %sw.bb108 ], [ %vfyopts.0, %sw.bb107 ], [ %vfyopts.0, %sw.bb106 ], [ %vfyopts.0, %sw.bb105 ], [ %vfyopts.0, %sw.bb104 ], [ %vfyopts.0, %sw.bb103 ], [ %vfyopts.21378, %lor.lhs.false95 ], [ %vfyopts.0, %lor.lhs.false81 ], [ %vfyopts.0, %lor.lhs.false ], [ %vfyopts.0, %sw.bb60 ], [ %vfyopts.0, %sw.bb55 ], [ %vfyopts.0, %lor.lhs.false178 ], [ %vfyopts.0, %sw.bb183 ], [ %vfyopts.0, %sw.bb49 ], [ %vfyopts.0, %sw.bb185 ], [ %vfyopts.0, %sw.bb187 ], [ %vfyopts.0, %sw.bb46 ], [ %vfyopts.0, %sw.bb44 ], [ %vfyopts.0, %sw.bb42 ], [ %vfyopts.0, %sw.bb40 ], [ %vfyopts.0, %sw.bb38 ], [ %vfyopts.0, %sw.bb32 ], [ %vfyopts.0, %sw.bb30 ], [ %vfyopts.0, %sw.bb28 ], [ %vfyopts.0, %sw.bb27 ], [ %vfyopts.0, %sw.bb26 ], [ %vfyopts.0, %sw.bb24 ], [ %vfyopts.0, %sw.bb17 ], [ %vfyopts.0, %sw.bb14 ], [ %vfyopts.0, %sw.bb8 ], [ %vfyopts.0, %sw.bb5 ], [ %vfyopts.0, %while.cond ]
  %addexts.0.be = phi %struct.lhash_st_OPENSSL_STRING* [ %addexts.0, %sw.bb149 ], [ %addexts.0, %sw.bb188 ], [ %addexts.0, %sw.bb147 ], [ %addexts.0, %sw.bb146 ], [ %addexts.0, %if.end140 ], [ %addexts.0, %sw.bb129 ], [ %addexts.0, %sw.bb127 ], [ %addexts.0, %sw.bb125 ], [ %addexts.0, %sw.bb124 ], [ %addexts.0, %sw.bb123 ], [ %addexts.0, %sw.bb117 ], [ %addexts.0, %sw.bb111 ], [ %addexts.0, %sw.bb110 ], [ %addexts.0, %sw.bb109 ], [ %addexts.0, %sw.bb108 ], [ %addexts.0, %sw.bb107 ], [ %addexts.0, %sw.bb106 ], [ %addexts.0, %sw.bb105 ], [ %addexts.0, %sw.bb104 ], [ %addexts.0, %sw.bb103 ], [ %addexts.0, %lor.lhs.false95 ], [ %addexts.0, %lor.lhs.false81 ], [ %addexts.0, %lor.lhs.false ], [ %addexts.0, %sw.bb60 ], [ %addexts.0, %sw.bb55 ], [ %addexts.2, %lor.lhs.false178 ], [ %addexts.0, %sw.bb183 ], [ %addexts.0, %sw.bb49 ], [ %addexts.0, %sw.bb185 ], [ %addexts.0, %sw.bb187 ], [ %addexts.0, %sw.bb46 ], [ %addexts.0, %sw.bb44 ], [ %addexts.0, %sw.bb42 ], [ %addexts.0, %sw.bb40 ], [ %addexts.0, %sw.bb38 ], [ %addexts.0, %sw.bb32 ], [ %addexts.0, %sw.bb30 ], [ %addexts.0, %sw.bb28 ], [ %addexts.0, %sw.bb27 ], [ %addexts.0, %sw.bb26 ], [ %addexts.0, %sw.bb24 ], [ %addexts.0, %sw.bb17 ], [ %addexts.0, %sw.bb14 ], [ %addexts.0, %sw.bb8 ], [ %addexts.0, %sw.bb5 ], [ %addexts.0, %while.cond ]
  %addext_bio.0.be = phi %struct.bio_st* [ %addext_bio.0, %sw.bb149 ], [ %addext_bio.0, %sw.bb188 ], [ %addext_bio.0, %sw.bb147 ], [ %addext_bio.0, %sw.bb146 ], [ %addext_bio.0, %if.end140 ], [ %addext_bio.0, %sw.bb129 ], [ %addext_bio.0, %sw.bb127 ], [ %addext_bio.0, %sw.bb125 ], [ %addext_bio.0, %sw.bb124 ], [ %addext_bio.0, %sw.bb123 ], [ %addext_bio.0, %sw.bb117 ], [ %addext_bio.0, %sw.bb111 ], [ %addext_bio.0, %sw.bb110 ], [ %addext_bio.0, %sw.bb109 ], [ %addext_bio.0, %sw.bb108 ], [ %addext_bio.0, %sw.bb107 ], [ %addext_bio.0, %sw.bb106 ], [ %addext_bio.0, %sw.bb105 ], [ %addext_bio.0, %sw.bb104 ], [ %addext_bio.0, %sw.bb103 ], [ %addext_bio.0, %lor.lhs.false95 ], [ %addext_bio.0, %lor.lhs.false81 ], [ %addext_bio.0, %lor.lhs.false ], [ %addext_bio.0, %sw.bb60 ], [ %addext_bio.0, %sw.bb55 ], [ %addext_bio.2, %lor.lhs.false178 ], [ %addext_bio.0, %sw.bb183 ], [ %addext_bio.0, %sw.bb49 ], [ %addext_bio.0, %sw.bb185 ], [ %addext_bio.0, %sw.bb187 ], [ %addext_bio.0, %sw.bb46 ], [ %addext_bio.0, %sw.bb44 ], [ %addext_bio.0, %sw.bb42 ], [ %addext_bio.0, %sw.bb40 ], [ %addext_bio.0, %sw.bb38 ], [ %addext_bio.0, %sw.bb32 ], [ %addext_bio.0, %sw.bb30 ], [ %addext_bio.0, %sw.bb28 ], [ %addext_bio.0, %sw.bb27 ], [ %addext_bio.0, %sw.bb26 ], [ %addext_bio.0, %sw.bb24 ], [ %addext_bio.0, %sw.bb17 ], [ %addext_bio.0, %sw.bb14 ], [ %addext_bio.0, %sw.bb8 ], [ %addext_bio.0, %sw.bb5 ], [ %addext_bio.0, %while.cond ]
  %extensions.0.be = phi i8* [ %extensions.0, %sw.bb149 ], [ %extensions.0, %sw.bb188 ], [ %extensions.0, %sw.bb147 ], [ %extensions.0, %sw.bb146 ], [ %extensions.0, %if.end140 ], [ %extensions.0, %sw.bb129 ], [ %extensions.0, %sw.bb127 ], [ %extensions.0, %sw.bb125 ], [ %extensions.0, %sw.bb124 ], [ %extensions.0, %sw.bb123 ], [ %extensions.0, %sw.bb117 ], [ %extensions.0, %sw.bb111 ], [ %extensions.0, %sw.bb110 ], [ %extensions.0, %sw.bb109 ], [ %extensions.0, %sw.bb108 ], [ %extensions.0, %sw.bb107 ], [ %extensions.0, %sw.bb106 ], [ %extensions.0, %sw.bb105 ], [ %extensions.0, %sw.bb104 ], [ %extensions.0, %sw.bb103 ], [ %extensions.0, %lor.lhs.false95 ], [ %extensions.0, %lor.lhs.false81 ], [ %extensions.0, %lor.lhs.false ], [ %extensions.0, %sw.bb60 ], [ %extensions.0, %sw.bb55 ], [ %extensions.0, %lor.lhs.false178 ], [ %call184, %sw.bb183 ], [ %extensions.0, %sw.bb49 ], [ %extensions.0, %sw.bb185 ], [ %extensions.0, %sw.bb187 ], [ %extensions.0, %sw.bb46 ], [ %extensions.0, %sw.bb44 ], [ %extensions.0, %sw.bb42 ], [ %extensions.0, %sw.bb40 ], [ %extensions.0, %sw.bb38 ], [ %extensions.0, %sw.bb32 ], [ %extensions.0, %sw.bb30 ], [ %extensions.0, %sw.bb28 ], [ %extensions.0, %sw.bb27 ], [ %extensions.0, %sw.bb26 ], [ %extensions.0, %sw.bb24 ], [ %extensions.0, %sw.bb17 ], [ %extensions.0, %sw.bb14 ], [ %extensions.0, %sw.bb8 ], [ %extensions.0, %sw.bb5 ], [ %extensions.0, %while.cond ]
  %infile.0.be = phi i8* [ %infile.0, %sw.bb149 ], [ %infile.0, %sw.bb188 ], [ %infile.0, %sw.bb147 ], [ %infile.0, %sw.bb146 ], [ %infile.0, %if.end140 ], [ %infile.0, %sw.bb129 ], [ %infile.0, %sw.bb127 ], [ %infile.0, %sw.bb125 ], [ %infile.0, %sw.bb124 ], [ %infile.0, %sw.bb123 ], [ %infile.0, %sw.bb117 ], [ %infile.0, %sw.bb111 ], [ %infile.0, %sw.bb110 ], [ %infile.0, %sw.bb109 ], [ %infile.0, %sw.bb108 ], [ %infile.0, %sw.bb107 ], [ %infile.0, %sw.bb106 ], [ %infile.0, %sw.bb105 ], [ %infile.0, %sw.bb104 ], [ %infile.0, %sw.bb103 ], [ %infile.0, %lor.lhs.false95 ], [ %infile.0, %lor.lhs.false81 ], [ %infile.0, %lor.lhs.false ], [ %infile.0, %sw.bb60 ], [ %infile.0, %sw.bb55 ], [ %infile.0, %lor.lhs.false178 ], [ %infile.0, %sw.bb183 ], [ %infile.0, %sw.bb49 ], [ %infile.0, %sw.bb185 ], [ %infile.0, %sw.bb187 ], [ %infile.0, %sw.bb46 ], [ %infile.0, %sw.bb44 ], [ %infile.0, %sw.bb42 ], [ %infile.0, %sw.bb40 ], [ %call39, %sw.bb38 ], [ %infile.0, %sw.bb32 ], [ %infile.0, %sw.bb30 ], [ %infile.0, %sw.bb28 ], [ %infile.0, %sw.bb27 ], [ %infile.0, %sw.bb26 ], [ %infile.0, %sw.bb24 ], [ %infile.0, %sw.bb17 ], [ %infile.0, %sw.bb14 ], [ %infile.0, %sw.bb8 ], [ %infile.0, %sw.bb5 ], [ %infile.0, %while.cond ]
  %CAfile.0.be = phi i8* [ %CAfile.0, %sw.bb149 ], [ %CAfile.0, %sw.bb188 ], [ %CAfile.0, %sw.bb147 ], [ %CAfile.0, %sw.bb146 ], [ %CAfile.0, %if.end140 ], [ %CAfile.0, %sw.bb129 ], [ %CAfile.0, %sw.bb127 ], [ %call126, %sw.bb125 ], [ %CAfile.0, %sw.bb124 ], [ %CAfile.0, %sw.bb123 ], [ %CAfile.0, %sw.bb117 ], [ %CAfile.0, %sw.bb111 ], [ %CAfile.0, %sw.bb110 ], [ %CAfile.0, %sw.bb109 ], [ %CAfile.0, %sw.bb108 ], [ %CAfile.0, %sw.bb107 ], [ %CAfile.0, %sw.bb106 ], [ %CAfile.0, %sw.bb105 ], [ %CAfile.0, %sw.bb104 ], [ %CAfile.0, %sw.bb103 ], [ %CAfile.0, %lor.lhs.false95 ], [ %CAfile.0, %lor.lhs.false81 ], [ %CAfile.0, %lor.lhs.false ], [ %CAfile.0, %sw.bb60 ], [ %CAfile.0, %sw.bb55 ], [ %CAfile.0, %lor.lhs.false178 ], [ %CAfile.0, %sw.bb183 ], [ %CAfile.0, %sw.bb49 ], [ %CAfile.0, %sw.bb185 ], [ %CAfile.0, %sw.bb187 ], [ %CAfile.0, %sw.bb46 ], [ %CAfile.0, %sw.bb44 ], [ %CAfile.0, %sw.bb42 ], [ %CAfile.0, %sw.bb40 ], [ %CAfile.0, %sw.bb38 ], [ %CAfile.0, %sw.bb32 ], [ %CAfile.0, %sw.bb30 ], [ %CAfile.0, %sw.bb28 ], [ %CAfile.0, %sw.bb27 ], [ %CAfile.0, %sw.bb26 ], [ %CAfile.0, %sw.bb24 ], [ %CAfile.0, %sw.bb17 ], [ %CAfile.0, %sw.bb14 ], [ %CAfile.0, %sw.bb8 ], [ %CAfile.0, %sw.bb5 ], [ %CAfile.0, %while.cond ]
  %CAkeyfile.0.be = phi i8* [ %CAkeyfile.0, %sw.bb149 ], [ %CAkeyfile.0, %sw.bb188 ], [ %CAkeyfile.0, %sw.bb147 ], [ %CAkeyfile.0, %sw.bb146 ], [ %CAkeyfile.0, %if.end140 ], [ %CAkeyfile.0, %sw.bb129 ], [ %call128, %sw.bb127 ], [ %CAkeyfile.0, %sw.bb125 ], [ %CAkeyfile.0, %sw.bb124 ], [ %CAkeyfile.0, %sw.bb123 ], [ %CAkeyfile.0, %sw.bb117 ], [ %CAkeyfile.0, %sw.bb111 ], [ %CAkeyfile.0, %sw.bb110 ], [ %CAkeyfile.0, %sw.bb109 ], [ %CAkeyfile.0, %sw.bb108 ], [ %CAkeyfile.0, %sw.bb107 ], [ %CAkeyfile.0, %sw.bb106 ], [ %CAkeyfile.0, %sw.bb105 ], [ %CAkeyfile.0, %sw.bb104 ], [ %CAkeyfile.0, %sw.bb103 ], [ %CAkeyfile.0, %lor.lhs.false95 ], [ %CAkeyfile.0, %lor.lhs.false81 ], [ %CAkeyfile.0, %lor.lhs.false ], [ %CAkeyfile.0, %sw.bb60 ], [ %CAkeyfile.0, %sw.bb55 ], [ %CAkeyfile.0, %lor.lhs.false178 ], [ %CAkeyfile.0, %sw.bb183 ], [ %CAkeyfile.0, %sw.bb49 ], [ %CAkeyfile.0, %sw.bb185 ], [ %CAkeyfile.0, %sw.bb187 ], [ %CAkeyfile.0, %sw.bb46 ], [ %CAkeyfile.0, %sw.bb44 ], [ %CAkeyfile.0, %sw.bb42 ], [ %CAkeyfile.0, %sw.bb40 ], [ %CAkeyfile.0, %sw.bb38 ], [ %CAkeyfile.0, %sw.bb32 ], [ %CAkeyfile.0, %sw.bb30 ], [ %CAkeyfile.0, %sw.bb28 ], [ %CAkeyfile.0, %sw.bb27 ], [ %CAkeyfile.0, %sw.bb26 ], [ %CAkeyfile.0, %sw.bb24 ], [ %CAkeyfile.0, %sw.bb17 ], [ %CAkeyfile.0, %sw.bb14 ], [ %CAkeyfile.0, %sw.bb8 ], [ %CAkeyfile.0, %sw.bb5 ], [ %CAkeyfile.0, %while.cond ]
  %outfile.0.be = phi i8* [ %outfile.0, %sw.bb149 ], [ %outfile.0, %sw.bb188 ], [ %outfile.0, %sw.bb147 ], [ %outfile.0, %sw.bb146 ], [ %outfile.0, %if.end140 ], [ %outfile.0, %sw.bb129 ], [ %outfile.0, %sw.bb127 ], [ %outfile.0, %sw.bb125 ], [ %outfile.0, %sw.bb124 ], [ %outfile.0, %sw.bb123 ], [ %outfile.0, %sw.bb117 ], [ %outfile.0, %sw.bb111 ], [ %outfile.0, %sw.bb110 ], [ %outfile.0, %sw.bb109 ], [ %outfile.0, %sw.bb108 ], [ %outfile.0, %sw.bb107 ], [ %outfile.0, %sw.bb106 ], [ %outfile.0, %sw.bb105 ], [ %outfile.0, %sw.bb104 ], [ %outfile.0, %sw.bb103 ], [ %outfile.0, %lor.lhs.false95 ], [ %outfile.0, %lor.lhs.false81 ], [ %outfile.0, %lor.lhs.false ], [ %outfile.0, %sw.bb60 ], [ %outfile.0, %sw.bb55 ], [ %outfile.0, %lor.lhs.false178 ], [ %outfile.0, %sw.bb183 ], [ %outfile.0, %sw.bb49 ], [ %outfile.0, %sw.bb185 ], [ %outfile.0, %sw.bb187 ], [ %outfile.0, %sw.bb46 ], [ %outfile.0, %sw.bb44 ], [ %outfile.0, %sw.bb42 ], [ %call41, %sw.bb40 ], [ %outfile.0, %sw.bb38 ], [ %outfile.0, %sw.bb32 ], [ %outfile.0, %sw.bb30 ], [ %outfile.0, %sw.bb28 ], [ %outfile.0, %sw.bb27 ], [ %outfile.0, %sw.bb26 ], [ %outfile.0, %sw.bb24 ], [ %outfile.0, %sw.bb17 ], [ %outfile.0, %sw.bb14 ], [ %outfile.0, %sw.bb8 ], [ %outfile.0, %sw.bb5 ], [ %outfile.0, %while.cond ]
  %keyfile.0.be = phi i8* [ %keyfile.0, %sw.bb149 ], [ %keyfile.0, %sw.bb188 ], [ %keyfile.0, %sw.bb147 ], [ %keyfile.0, %sw.bb146 ], [ %keyfile.0, %if.end140 ], [ %keyfile.0, %sw.bb129 ], [ %keyfile.0, %sw.bb127 ], [ %keyfile.0, %sw.bb125 ], [ %keyfile.0, %sw.bb124 ], [ %keyfile.0, %sw.bb123 ], [ %keyfile.0, %sw.bb117 ], [ %keyfile.0, %sw.bb111 ], [ %keyfile.0, %sw.bb110 ], [ %keyfile.0, %sw.bb109 ], [ %keyfile.0, %sw.bb108 ], [ %keyfile.0, %sw.bb107 ], [ %keyfile.0, %sw.bb106 ], [ %keyfile.0, %sw.bb105 ], [ %keyfile.0, %sw.bb104 ], [ %keyfile.0, %sw.bb103 ], [ %keyfile.0, %lor.lhs.false95 ], [ %keyfile.0, %lor.lhs.false81 ], [ %keyfile.0, %lor.lhs.false ], [ %keyfile.0, %sw.bb60 ], [ %keyfile.0, %sw.bb55 ], [ %keyfile.0, %lor.lhs.false178 ], [ %keyfile.0, %sw.bb183 ], [ %keyfile.0, %sw.bb49 ], [ %keyfile.0, %sw.bb185 ], [ %keyfile.0, %sw.bb187 ], [ %keyfile.0, %sw.bb46 ], [ %keyfile.0, %sw.bb44 ], [ %keyfile.0, %sw.bb42 ], [ %keyfile.0, %sw.bb40 ], [ %keyfile.0, %sw.bb38 ], [ %keyfile.0, %sw.bb32 ], [ %keyfile.0, %sw.bb30 ], [ %keyfile.0, %sw.bb28 ], [ %keyfile.0, %sw.bb27 ], [ %keyfile.0, %sw.bb26 ], [ %call25, %sw.bb24 ], [ %keyfile.0, %sw.bb17 ], [ %keyfile.0, %sw.bb14 ], [ %keyfile.0, %sw.bb8 ], [ %keyfile.0, %sw.bb5 ], [ %keyfile.0, %while.cond ]
  %digest.0.be = phi i8* [ %digest.0, %sw.bb149 ], [ %call189, %sw.bb188 ], [ %digest.0, %sw.bb147 ], [ %digest.0, %sw.bb146 ], [ %digest.0, %if.end140 ], [ %digest.0, %sw.bb129 ], [ %digest.0, %sw.bb127 ], [ %digest.0, %sw.bb125 ], [ %digest.0, %sw.bb124 ], [ %digest.0, %sw.bb123 ], [ %digest.0, %sw.bb117 ], [ %digest.0, %sw.bb111 ], [ %digest.0, %sw.bb110 ], [ %digest.0, %sw.bb109 ], [ %digest.0, %sw.bb108 ], [ %digest.0, %sw.bb107 ], [ %digest.0, %sw.bb106 ], [ %digest.0, %sw.bb105 ], [ %digest.0, %sw.bb104 ], [ %digest.0, %sw.bb103 ], [ %digest.0, %lor.lhs.false95 ], [ %digest.0, %lor.lhs.false81 ], [ %digest.0, %lor.lhs.false ], [ %digest.0, %sw.bb60 ], [ %digest.0, %sw.bb55 ], [ %digest.0, %lor.lhs.false178 ], [ %digest.0, %sw.bb183 ], [ %digest.0, %sw.bb49 ], [ %digest.0, %sw.bb185 ], [ %digest.0, %sw.bb187 ], [ %digest.0, %sw.bb46 ], [ %digest.0, %sw.bb44 ], [ %digest.0, %sw.bb42 ], [ %digest.0, %sw.bb40 ], [ %digest.0, %sw.bb38 ], [ %digest.0, %sw.bb32 ], [ %digest.0, %sw.bb30 ], [ %digest.0, %sw.bb28 ], [ %digest.0, %sw.bb27 ], [ %digest.0, %sw.bb26 ], [ %digest.0, %sw.bb24 ], [ %digest.0, %sw.bb17 ], [ %digest.0, %sw.bb14 ], [ %digest.0, %sw.bb8 ], [ %digest.0, %sw.bb5 ], [ %digest.0, %while.cond ]
  %pkeyopts.0.be = phi %struct.stack_st_OPENSSL_STRING* [ %pkeyopts.0, %sw.bb149 ], [ %pkeyopts.0, %sw.bb188 ], [ %pkeyopts.0, %sw.bb147 ], [ %pkeyopts.0, %sw.bb146 ], [ %pkeyopts.0, %if.end140 ], [ %pkeyopts.0, %sw.bb129 ], [ %pkeyopts.0, %sw.bb127 ], [ %pkeyopts.0, %sw.bb125 ], [ %pkeyopts.0, %sw.bb124 ], [ %pkeyopts.0, %sw.bb123 ], [ %pkeyopts.0, %sw.bb117 ], [ %pkeyopts.0, %sw.bb111 ], [ %pkeyopts.0, %sw.bb110 ], [ %pkeyopts.0, %sw.bb109 ], [ %pkeyopts.0, %sw.bb108 ], [ %pkeyopts.0, %sw.bb107 ], [ %pkeyopts.0, %sw.bb106 ], [ %pkeyopts.0, %sw.bb105 ], [ %pkeyopts.0, %sw.bb104 ], [ %pkeyopts.0, %sw.bb103 ], [ %pkeyopts.0, %lor.lhs.false95 ], [ %pkeyopts.0, %lor.lhs.false81 ], [ %pkeyopts.21372, %lor.lhs.false ], [ %pkeyopts.0, %sw.bb60 ], [ %pkeyopts.0, %sw.bb55 ], [ %pkeyopts.0, %lor.lhs.false178 ], [ %pkeyopts.0, %sw.bb183 ], [ %pkeyopts.0, %sw.bb49 ], [ %pkeyopts.0, %sw.bb185 ], [ %pkeyopts.0, %sw.bb187 ], [ %pkeyopts.0, %sw.bb46 ], [ %pkeyopts.0, %sw.bb44 ], [ %pkeyopts.0, %sw.bb42 ], [ %pkeyopts.0, %sw.bb40 ], [ %pkeyopts.0, %sw.bb38 ], [ %pkeyopts.0, %sw.bb32 ], [ %pkeyopts.0, %sw.bb30 ], [ %pkeyopts.0, %sw.bb28 ], [ %pkeyopts.0, %sw.bb27 ], [ %pkeyopts.0, %sw.bb26 ], [ %pkeyopts.0, %sw.bb24 ], [ %pkeyopts.0, %sw.bb17 ], [ %pkeyopts.0, %sw.bb14 ], [ %pkeyopts.0, %sw.bb8 ], [ %pkeyopts.0, %sw.bb5 ], [ %pkeyopts.0, %while.cond ]
  %passargin.0.be = phi i8* [ %passargin.0, %sw.bb149 ], [ %passargin.0, %sw.bb188 ], [ %passargin.0, %sw.bb147 ], [ %passargin.0, %sw.bb146 ], [ %passargin.0, %if.end140 ], [ %passargin.0, %sw.bb129 ], [ %passargin.0, %sw.bb127 ], [ %passargin.0, %sw.bb125 ], [ %passargin.0, %sw.bb124 ], [ %passargin.0, %sw.bb123 ], [ %passargin.0, %sw.bb117 ], [ %passargin.0, %sw.bb111 ], [ %passargin.0, %sw.bb110 ], [ %passargin.0, %sw.bb109 ], [ %passargin.0, %sw.bb108 ], [ %passargin.0, %sw.bb107 ], [ %passargin.0, %sw.bb106 ], [ %passargin.0, %sw.bb105 ], [ %passargin.0, %sw.bb104 ], [ %passargin.0, %sw.bb103 ], [ %passargin.0, %lor.lhs.false95 ], [ %passargin.0, %lor.lhs.false81 ], [ %passargin.0, %lor.lhs.false ], [ %passargin.0, %sw.bb60 ], [ %passargin.0, %sw.bb55 ], [ %passargin.0, %lor.lhs.false178 ], [ %passargin.0, %sw.bb183 ], [ %passargin.0, %sw.bb49 ], [ %passargin.0, %sw.bb185 ], [ %passargin.0, %sw.bb187 ], [ %passargin.0, %sw.bb46 ], [ %call45, %sw.bb44 ], [ %passargin.0, %sw.bb42 ], [ %passargin.0, %sw.bb40 ], [ %passargin.0, %sw.bb38 ], [ %passargin.0, %sw.bb32 ], [ %passargin.0, %sw.bb30 ], [ %passargin.0, %sw.bb28 ], [ %passargin.0, %sw.bb27 ], [ %passargin.0, %sw.bb26 ], [ %passargin.0, %sw.bb24 ], [ %passargin.0, %sw.bb17 ], [ %passargin.0, %sw.bb14 ], [ %passargin.0, %sw.bb8 ], [ %passargin.0, %sw.bb5 ], [ %passargin.0, %while.cond ]
  %passargout.0.be = phi i8* [ %passargout.0, %sw.bb149 ], [ %passargout.0, %sw.bb188 ], [ %passargout.0, %sw.bb147 ], [ %passargout.0, %sw.bb146 ], [ %passargout.0, %if.end140 ], [ %passargout.0, %sw.bb129 ], [ %passargout.0, %sw.bb127 ], [ %passargout.0, %sw.bb125 ], [ %passargout.0, %sw.bb124 ], [ %passargout.0, %sw.bb123 ], [ %passargout.0, %sw.bb117 ], [ %passargout.0, %sw.bb111 ], [ %passargout.0, %sw.bb110 ], [ %passargout.0, %sw.bb109 ], [ %passargout.0, %sw.bb108 ], [ %passargout.0, %sw.bb107 ], [ %passargout.0, %sw.bb106 ], [ %passargout.0, %sw.bb105 ], [ %passargout.0, %sw.bb104 ], [ %passargout.0, %sw.bb103 ], [ %passargout.0, %lor.lhs.false95 ], [ %passargout.0, %lor.lhs.false81 ], [ %passargout.0, %lor.lhs.false ], [ %passargout.0, %sw.bb60 ], [ %passargout.0, %sw.bb55 ], [ %passargout.0, %lor.lhs.false178 ], [ %passargout.0, %sw.bb183 ], [ %passargout.0, %sw.bb49 ], [ %passargout.0, %sw.bb185 ], [ %passargout.0, %sw.bb187 ], [ %call47, %sw.bb46 ], [ %passargout.0, %sw.bb44 ], [ %passargout.0, %sw.bb42 ], [ %passargout.0, %sw.bb40 ], [ %passargout.0, %sw.bb38 ], [ %passargout.0, %sw.bb32 ], [ %passargout.0, %sw.bb30 ], [ %passargout.0, %sw.bb28 ], [ %passargout.0, %sw.bb27 ], [ %passargout.0, %sw.bb26 ], [ %passargout.0, %sw.bb24 ], [ %passargout.0, %sw.bb17 ], [ %passargout.0, %sw.bb14 ], [ %passargout.0, %sw.bb8 ], [ %passargout.0, %sw.bb5 ], [ %passargout.0, %while.cond ]
  %req_exts.0.be = phi i8* [ %req_exts.0, %sw.bb149 ], [ %req_exts.0, %sw.bb188 ], [ %req_exts.0, %sw.bb147 ], [ %req_exts.0, %sw.bb146 ], [ %req_exts.0, %if.end140 ], [ %req_exts.0, %sw.bb129 ], [ %req_exts.0, %sw.bb127 ], [ %req_exts.0, %sw.bb125 ], [ %req_exts.0, %sw.bb124 ], [ %req_exts.0, %sw.bb123 ], [ %req_exts.0, %sw.bb117 ], [ %req_exts.0, %sw.bb111 ], [ %req_exts.0, %sw.bb110 ], [ %req_exts.0, %sw.bb109 ], [ %req_exts.0, %sw.bb108 ], [ %req_exts.0, %sw.bb107 ], [ %req_exts.0, %sw.bb106 ], [ %req_exts.0, %sw.bb105 ], [ %req_exts.0, %sw.bb104 ], [ %req_exts.0, %sw.bb103 ], [ %req_exts.0, %lor.lhs.false95 ], [ %req_exts.0, %lor.lhs.false81 ], [ %req_exts.0, %lor.lhs.false ], [ %req_exts.0, %sw.bb60 ], [ %req_exts.0, %sw.bb55 ], [ %req_exts.0, %lor.lhs.false178 ], [ %req_exts.0, %sw.bb183 ], [ %req_exts.0, %sw.bb49 ], [ %call186, %sw.bb185 ], [ %req_exts.0, %sw.bb187 ], [ %req_exts.0, %sw.bb46 ], [ %req_exts.0, %sw.bb44 ], [ %req_exts.0, %sw.bb42 ], [ %req_exts.0, %sw.bb40 ], [ %req_exts.0, %sw.bb38 ], [ %req_exts.0, %sw.bb32 ], [ %req_exts.0, %sw.bb30 ], [ %req_exts.0, %sw.bb28 ], [ %req_exts.0, %sw.bb27 ], [ %req_exts.0, %sw.bb26 ], [ %req_exts.0, %sw.bb24 ], [ %req_exts.0, %sw.bb17 ], [ %req_exts.0, %sw.bb14 ], [ %req_exts.0, %sw.bb8 ], [ %req_exts.0, %sw.bb5 ], [ %req_exts.0, %while.cond ]
  %subj.0.be = phi i8* [ %subj.0, %sw.bb149 ], [ %subj.0, %sw.bb188 ], [ %call148, %sw.bb147 ], [ %subj.0, %sw.bb146 ], [ %subj.0, %if.end140 ], [ %subj.0, %sw.bb129 ], [ %subj.0, %sw.bb127 ], [ %subj.0, %sw.bb125 ], [ %subj.0, %sw.bb124 ], [ %subj.0, %sw.bb123 ], [ %subj.0, %sw.bb117 ], [ %subj.0, %sw.bb111 ], [ %subj.0, %sw.bb110 ], [ %subj.0, %sw.bb109 ], [ %subj.0, %sw.bb108 ], [ %subj.0, %sw.bb107 ], [ %subj.0, %sw.bb106 ], [ %subj.0, %sw.bb105 ], [ %subj.0, %sw.bb104 ], [ %subj.0, %sw.bb103 ], [ %subj.0, %lor.lhs.false95 ], [ %subj.0, %lor.lhs.false81 ], [ %subj.0, %lor.lhs.false ], [ %subj.0, %sw.bb60 ], [ %subj.0, %sw.bb55 ], [ %subj.0, %lor.lhs.false178 ], [ %subj.0, %sw.bb183 ], [ %subj.0, %sw.bb49 ], [ %subj.0, %sw.bb185 ], [ %subj.0, %sw.bb187 ], [ %subj.0, %sw.bb46 ], [ %subj.0, %sw.bb44 ], [ %subj.0, %sw.bb42 ], [ %subj.0, %sw.bb40 ], [ %subj.0, %sw.bb38 ], [ %subj.0, %sw.bb32 ], [ %subj.0, %sw.bb30 ], [ %subj.0, %sw.bb28 ], [ %subj.0, %sw.bb27 ], [ %subj.0, %sw.bb26 ], [ %subj.0, %sw.bb24 ], [ %subj.0, %sw.bb17 ], [ %subj.0, %sw.bb14 ], [ %subj.0, %sw.bb8 ], [ %subj.0, %sw.bb5 ], [ %subj.0, %while.cond ]
  %template.0.be = phi i8* [ %template.0, %sw.bb149 ], [ %template.0, %sw.bb188 ], [ %template.0, %sw.bb147 ], [ %template.0, %sw.bb146 ], [ %template.0, %if.end140 ], [ %template.0, %sw.bb129 ], [ %template.0, %sw.bb127 ], [ %template.0, %sw.bb125 ], [ %template.0, %sw.bb124 ], [ %template.0, %sw.bb123 ], [ %template.0, %sw.bb117 ], [ %template.0, %sw.bb111 ], [ %template.0, %sw.bb110 ], [ %template.0, %sw.bb109 ], [ %template.0, %sw.bb108 ], [ %template.0, %sw.bb107 ], [ %template.0, %sw.bb106 ], [ %template.0, %sw.bb105 ], [ %template.0, %sw.bb104 ], [ %template.0, %sw.bb103 ], [ %template.0, %lor.lhs.false95 ], [ %template.0, %lor.lhs.false81 ], [ %template.0, %lor.lhs.false ], [ %template.0, %sw.bb60 ], [ %template.0, %sw.bb55 ], [ %template.0, %lor.lhs.false178 ], [ %template.0, %sw.bb183 ], [ %template.0, %sw.bb49 ], [ %template.0, %sw.bb185 ], [ %template.0, %sw.bb187 ], [ %template.0, %sw.bb46 ], [ %template.0, %sw.bb44 ], [ %template.0, %sw.bb42 ], [ %template.0, %sw.bb40 ], [ %template.0, %sw.bb38 ], [ %template.0, %sw.bb32 ], [ %template.0, %sw.bb30 ], [ %call29, %sw.bb28 ], [ %template.0, %sw.bb27 ], [ %template.0, %sw.bb26 ], [ %template.0, %sw.bb24 ], [ %template.0, %sw.bb17 ], [ %template.0, %sw.bb14 ], [ %template.0, %sw.bb8 ], [ %template.0, %sw.bb5 ], [ %template.0, %while.cond ]
  %keyout.0.be = phi i8* [ %keyout.0, %sw.bb149 ], [ %keyout.0, %sw.bb188 ], [ %keyout.0, %sw.bb147 ], [ %keyout.0, %sw.bb146 ], [ %keyout.0, %if.end140 ], [ %keyout.0, %sw.bb129 ], [ %keyout.0, %sw.bb127 ], [ %keyout.0, %sw.bb125 ], [ %keyout.0, %sw.bb124 ], [ %keyout.0, %sw.bb123 ], [ %keyout.0, %sw.bb117 ], [ %keyout.0, %sw.bb111 ], [ %keyout.0, %sw.bb110 ], [ %keyout.0, %sw.bb109 ], [ %keyout.0, %sw.bb108 ], [ %keyout.0, %sw.bb107 ], [ %keyout.0, %sw.bb106 ], [ %keyout.0, %sw.bb105 ], [ %keyout.0, %sw.bb104 ], [ %keyout.0, %sw.bb103 ], [ %keyout.0, %lor.lhs.false95 ], [ %keyout.0, %lor.lhs.false81 ], [ %keyout.0, %lor.lhs.false ], [ %keyout.0, %sw.bb60 ], [ %keyout.0, %sw.bb55 ], [ %keyout.0, %lor.lhs.false178 ], [ %keyout.0, %sw.bb183 ], [ %keyout.0, %sw.bb49 ], [ %keyout.0, %sw.bb185 ], [ %keyout.0, %sw.bb187 ], [ %keyout.0, %sw.bb46 ], [ %keyout.0, %sw.bb44 ], [ %call43, %sw.bb42 ], [ %keyout.0, %sw.bb40 ], [ %keyout.0, %sw.bb38 ], [ %keyout.0, %sw.bb32 ], [ %keyout.0, %sw.bb30 ], [ %keyout.0, %sw.bb28 ], [ %keyout.0, %sw.bb27 ], [ %keyout.0, %sw.bb26 ], [ %keyout.0, %sw.bb24 ], [ %keyout.0, %sw.bb17 ], [ %keyout.0, %sw.bb14 ], [ %keyout.0, %sw.bb8 ], [ %keyout.0, %sw.bb5 ], [ %keyout.0, %while.cond ]
  %keyalg.0.be = phi i8* [ %keyalg.0, %sw.bb149 ], [ %keyalg.0, %sw.bb188 ], [ %keyalg.0, %sw.bb147 ], [ %keyalg.0, %sw.bb146 ], [ %keyalg.0, %if.end140 ], [ %keyalg.0, %sw.bb129 ], [ %keyalg.0, %sw.bb127 ], [ %keyalg.0, %sw.bb125 ], [ %keyalg.0, %sw.bb124 ], [ %keyalg.0, %sw.bb123 ], [ %keyalg.0, %sw.bb117 ], [ %keyalg.0, %sw.bb111 ], [ %keyalg.0, %sw.bb110 ], [ %keyalg.0, %sw.bb109 ], [ %keyalg.0, %sw.bb108 ], [ %keyalg.0, %sw.bb107 ], [ %keyalg.0, %sw.bb106 ], [ %keyalg.0, %sw.bb105 ], [ %keyalg.0, %sw.bb104 ], [ %keyalg.0, %sw.bb103 ], [ %keyalg.0, %lor.lhs.false95 ], [ %keyalg.0, %lor.lhs.false81 ], [ %keyalg.0, %lor.lhs.false ], [ %call61, %sw.bb60 ], [ %keyalg.0, %sw.bb55 ], [ %keyalg.0, %lor.lhs.false178 ], [ %keyalg.0, %sw.bb183 ], [ %keyalg.0, %sw.bb49 ], [ %keyalg.0, %sw.bb185 ], [ %keyalg.0, %sw.bb187 ], [ %keyalg.0, %sw.bb46 ], [ %keyalg.0, %sw.bb44 ], [ %keyalg.0, %sw.bb42 ], [ %keyalg.0, %sw.bb40 ], [ %keyalg.0, %sw.bb38 ], [ %keyalg.0, %sw.bb32 ], [ %keyalg.0, %sw.bb30 ], [ %keyalg.0, %sw.bb28 ], [ %keyalg.0, %sw.bb27 ], [ %keyalg.0, %sw.bb26 ], [ %keyalg.0, %sw.bb24 ], [ %keyalg.0, %sw.bb17 ], [ %keyalg.0, %sw.bb14 ], [ %keyalg.0, %sw.bb8 ], [ %keyalg.0, %sw.bb5 ], [ %keyalg.0, %while.cond ]
  %days.0.be = phi i32 [ %days.0, %sw.bb149 ], [ %days.0, %sw.bb188 ], [ %days.0, %sw.bb147 ], [ %days.0, %sw.bb146 ], [ %days.0, %if.end140 ], [ %call131, %sw.bb129 ], [ %days.0, %sw.bb127 ], [ %days.0, %sw.bb125 ], [ %days.0, %sw.bb124 ], [ %days.0, %sw.bb123 ], [ %days.0, %sw.bb117 ], [ %days.0, %sw.bb111 ], [ %days.0, %sw.bb110 ], [ %days.0, %sw.bb109 ], [ %days.0, %sw.bb108 ], [ %days.0, %sw.bb107 ], [ %days.0, %sw.bb106 ], [ %days.0, %sw.bb105 ], [ %days.0, %sw.bb104 ], [ %days.0, %sw.bb103 ], [ %days.0, %lor.lhs.false95 ], [ %days.0, %lor.lhs.false81 ], [ %days.0, %lor.lhs.false ], [ %days.0, %sw.bb60 ], [ %days.0, %sw.bb55 ], [ %days.0, %lor.lhs.false178 ], [ %days.0, %sw.bb183 ], [ %days.0, %sw.bb49 ], [ %days.0, %sw.bb185 ], [ %days.0, %sw.bb187 ], [ %days.0, %sw.bb46 ], [ %days.0, %sw.bb44 ], [ %days.0, %sw.bb42 ], [ %days.0, %sw.bb40 ], [ %days.0, %sw.bb38 ], [ %days.0, %sw.bb32 ], [ %days.0, %sw.bb30 ], [ %days.0, %sw.bb28 ], [ %days.0, %sw.bb27 ], [ %days.0, %sw.bb26 ], [ %days.0, %sw.bb24 ], [ %days.0, %sw.bb17 ], [ %days.0, %sw.bb14 ], [ %days.0, %sw.bb8 ], [ %days.0, %sw.bb5 ], [ %days.0, %while.cond ]
  %gen_x509.0.be = phi i32 [ %gen_x509.0, %sw.bb149 ], [ %gen_x509.0, %sw.bb188 ], [ %gen_x509.0, %sw.bb147 ], [ %gen_x509.0, %sw.bb146 ], [ %gen_x509.0, %if.end140 ], [ %gen_x509.0, %sw.bb129 ], [ %gen_x509.0, %sw.bb127 ], [ 1, %sw.bb125 ], [ 1, %sw.bb124 ], [ %gen_x509.0, %sw.bb123 ], [ %gen_x509.0, %sw.bb117 ], [ %gen_x509.0, %sw.bb111 ], [ %gen_x509.0, %sw.bb110 ], [ %gen_x509.0, %sw.bb109 ], [ %gen_x509.0, %sw.bb108 ], [ %gen_x509.0, %sw.bb107 ], [ %gen_x509.0, %sw.bb106 ], [ %gen_x509.0, %sw.bb105 ], [ %gen_x509.0, %sw.bb104 ], [ %gen_x509.0, %sw.bb103 ], [ %gen_x509.0, %lor.lhs.false95 ], [ %gen_x509.0, %lor.lhs.false81 ], [ %gen_x509.0, %lor.lhs.false ], [ %gen_x509.0, %sw.bb60 ], [ %gen_x509.0, %sw.bb55 ], [ %gen_x509.0, %lor.lhs.false178 ], [ %gen_x509.0, %sw.bb183 ], [ %gen_x509.0, %sw.bb49 ], [ %gen_x509.0, %sw.bb185 ], [ %gen_x509.0, %sw.bb187 ], [ %gen_x509.0, %sw.bb46 ], [ %gen_x509.0, %sw.bb44 ], [ %gen_x509.0, %sw.bb42 ], [ %gen_x509.0, %sw.bb40 ], [ %gen_x509.0, %sw.bb38 ], [ %gen_x509.0, %sw.bb32 ], [ %gen_x509.0, %sw.bb30 ], [ %gen_x509.0, %sw.bb28 ], [ %gen_x509.0, %sw.bb27 ], [ %gen_x509.0, %sw.bb26 ], [ %gen_x509.0, %sw.bb24 ], [ %gen_x509.0, %sw.bb17 ], [ %gen_x509.0, %sw.bb14 ], [ %gen_x509.0, %sw.bb8 ], [ %gen_x509.0, %sw.bb5 ], [ %gen_x509.0, %while.cond ]
  %newreq.0.be = phi i32 [ %newreq.0, %sw.bb149 ], [ %newreq.0, %sw.bb188 ], [ %newreq.0, %sw.bb147 ], [ %newreq.0, %sw.bb146 ], [ %newreq.0, %if.end140 ], [ %newreq.0, %sw.bb129 ], [ %newreq.0, %sw.bb127 ], [ %newreq.0, %sw.bb125 ], [ %newreq.0, %sw.bb124 ], [ %newreq.0, %sw.bb123 ], [ %newreq.0, %sw.bb117 ], [ %newreq.0, %sw.bb111 ], [ %newreq.0, %sw.bb110 ], [ %newreq.0, %sw.bb109 ], [ %newreq.0, %sw.bb108 ], [ %newreq.0, %sw.bb107 ], [ %newreq.0, %sw.bb106 ], [ %newreq.0, %sw.bb105 ], [ %newreq.0, %sw.bb104 ], [ %newreq.0, %sw.bb103 ], [ %newreq.0, %lor.lhs.false95 ], [ %newreq.0, %lor.lhs.false81 ], [ %newreq.0, %lor.lhs.false ], [ 1, %sw.bb60 ], [ %newreq.0, %sw.bb55 ], [ %newreq.0, %lor.lhs.false178 ], [ %newreq.0, %sw.bb183 ], [ %newreq.0, %sw.bb49 ], [ %newreq.0, %sw.bb185 ], [ 1, %sw.bb187 ], [ %newreq.0, %sw.bb46 ], [ %newreq.0, %sw.bb44 ], [ %newreq.0, %sw.bb42 ], [ %newreq.0, %sw.bb40 ], [ %newreq.0, %sw.bb38 ], [ %newreq.0, %sw.bb32 ], [ %newreq.0, %sw.bb30 ], [ %newreq.0, %sw.bb28 ], [ 1, %sw.bb27 ], [ %newreq.0, %sw.bb26 ], [ %newreq.0, %sw.bb24 ], [ %newreq.0, %sw.bb17 ], [ %newreq.0, %sw.bb14 ], [ %newreq.0, %sw.bb8 ], [ %newreq.0, %sw.bb5 ], [ %newreq.0, %while.cond ]
  %verbose.0.be = phi i32 [ %verbose.0, %sw.bb149 ], [ %verbose.0, %sw.bb188 ], [ %verbose.0, %sw.bb147 ], [ %verbose.0, %sw.bb146 ], [ %verbose.0, %if.end140 ], [ %verbose.0, %sw.bb129 ], [ %verbose.0, %sw.bb127 ], [ %verbose.0, %sw.bb125 ], [ %verbose.0, %sw.bb124 ], [ %verbose.0, %sw.bb123 ], [ %verbose.0, %sw.bb117 ], [ %verbose.0, %sw.bb111 ], [ %verbose.0, %sw.bb110 ], [ 1, %sw.bb109 ], [ %verbose.0, %sw.bb108 ], [ %verbose.0, %sw.bb107 ], [ %verbose.0, %sw.bb106 ], [ %verbose.0, %sw.bb105 ], [ %verbose.0, %sw.bb104 ], [ %verbose.0, %sw.bb103 ], [ %verbose.0, %lor.lhs.false95 ], [ %verbose.0, %lor.lhs.false81 ], [ %verbose.0, %lor.lhs.false ], [ %verbose.0, %sw.bb60 ], [ %verbose.0, %sw.bb55 ], [ %verbose.0, %lor.lhs.false178 ], [ %verbose.0, %sw.bb183 ], [ %verbose.0, %sw.bb49 ], [ %verbose.0, %sw.bb185 ], [ %verbose.0, %sw.bb187 ], [ %verbose.0, %sw.bb46 ], [ %verbose.0, %sw.bb44 ], [ %verbose.0, %sw.bb42 ], [ %verbose.0, %sw.bb40 ], [ %verbose.0, %sw.bb38 ], [ %verbose.0, %sw.bb32 ], [ %verbose.0, %sw.bb30 ], [ %verbose.0, %sw.bb28 ], [ %verbose.0, %sw.bb27 ], [ %verbose.0, %sw.bb26 ], [ %verbose.0, %sw.bb24 ], [ %verbose.0, %sw.bb17 ], [ %verbose.0, %sw.bb14 ], [ %verbose.0, %sw.bb8 ], [ %verbose.0, %sw.bb5 ], [ %verbose.0, %while.cond ]
  %modulus.0.be = phi i32 [ %modulus.0, %sw.bb149 ], [ %modulus.0, %sw.bb188 ], [ %modulus.0, %sw.bb147 ], [ %modulus.0, %sw.bb146 ], [ %modulus.0, %if.end140 ], [ %modulus.0, %sw.bb129 ], [ %modulus.0, %sw.bb127 ], [ %modulus.0, %sw.bb125 ], [ %modulus.0, %sw.bb124 ], [ %modulus.0, %sw.bb123 ], [ %modulus.0, %sw.bb117 ], [ %modulus.0, %sw.bb111 ], [ %modulus.0, %sw.bb110 ], [ %modulus.0, %sw.bb109 ], [ %modulus.0, %sw.bb108 ], [ %modulus.0, %sw.bb107 ], [ %modulus.0, %sw.bb106 ], [ 1, %sw.bb105 ], [ %modulus.0, %sw.bb104 ], [ %modulus.0, %sw.bb103 ], [ %modulus.0, %lor.lhs.false95 ], [ %modulus.0, %lor.lhs.false81 ], [ %modulus.0, %lor.lhs.false ], [ %modulus.0, %sw.bb60 ], [ %modulus.0, %sw.bb55 ], [ %modulus.0, %lor.lhs.false178 ], [ %modulus.0, %sw.bb183 ], [ %modulus.0, %sw.bb49 ], [ %modulus.0, %sw.bb185 ], [ %modulus.0, %sw.bb187 ], [ %modulus.0, %sw.bb46 ], [ %modulus.0, %sw.bb44 ], [ %modulus.0, %sw.bb42 ], [ %modulus.0, %sw.bb40 ], [ %modulus.0, %sw.bb38 ], [ %modulus.0, %sw.bb32 ], [ %modulus.0, %sw.bb30 ], [ %modulus.0, %sw.bb28 ], [ %modulus.0, %sw.bb27 ], [ %modulus.0, %sw.bb26 ], [ %modulus.0, %sw.bb24 ], [ %modulus.0, %sw.bb17 ], [ %modulus.0, %sw.bb14 ], [ %modulus.0, %sw.bb8 ], [ %modulus.0, %sw.bb5 ], [ %modulus.0, %while.cond ]
  %verify.0.be = phi i32 [ %verify.0, %sw.bb149 ], [ %verify.0, %sw.bb188 ], [ %verify.0, %sw.bb147 ], [ %verify.0, %sw.bb146 ], [ %verify.0, %if.end140 ], [ %verify.0, %sw.bb129 ], [ %verify.0, %sw.bb127 ], [ %verify.0, %sw.bb125 ], [ %verify.0, %sw.bb124 ], [ %verify.0, %sw.bb123 ], [ %verify.0, %sw.bb117 ], [ %verify.0, %sw.bb111 ], [ %verify.0, %sw.bb110 ], [ %verify.0, %sw.bb109 ], [ %verify.0, %sw.bb108 ], [ %verify.0, %sw.bb107 ], [ 1, %sw.bb106 ], [ %verify.0, %sw.bb105 ], [ %verify.0, %sw.bb104 ], [ %verify.0, %sw.bb103 ], [ %verify.0, %lor.lhs.false95 ], [ %verify.0, %lor.lhs.false81 ], [ %verify.0, %lor.lhs.false ], [ %verify.0, %sw.bb60 ], [ %verify.0, %sw.bb55 ], [ %verify.0, %lor.lhs.false178 ], [ %verify.0, %sw.bb183 ], [ %verify.0, %sw.bb49 ], [ %verify.0, %sw.bb185 ], [ %verify.0, %sw.bb187 ], [ %verify.0, %sw.bb46 ], [ %verify.0, %sw.bb44 ], [ %verify.0, %sw.bb42 ], [ %verify.0, %sw.bb40 ], [ %verify.0, %sw.bb38 ], [ %verify.0, %sw.bb32 ], [ %verify.0, %sw.bb30 ], [ %verify.0, %sw.bb28 ], [ %verify.0, %sw.bb27 ], [ %verify.0, %sw.bb26 ], [ %verify.0, %sw.bb24 ], [ %verify.0, %sw.bb17 ], [ %verify.0, %sw.bb14 ], [ %verify.0, %sw.bb8 ], [ %verify.0, %sw.bb5 ], [ %verify.0, %while.cond ]
  %noout.0.be = phi i32 [ %noout.0, %sw.bb149 ], [ %noout.0, %sw.bb188 ], [ %noout.0, %sw.bb147 ], [ %noout.0, %sw.bb146 ], [ %noout.0, %if.end140 ], [ %noout.0, %sw.bb129 ], [ %noout.0, %sw.bb127 ], [ %noout.0, %sw.bb125 ], [ %noout.0, %sw.bb124 ], [ %noout.0, %sw.bb123 ], [ %noout.0, %sw.bb117 ], [ %noout.0, %sw.bb111 ], [ %noout.0, %sw.bb110 ], [ %noout.0, %sw.bb109 ], [ 1, %sw.bb108 ], [ %noout.0, %sw.bb107 ], [ %noout.0, %sw.bb106 ], [ %noout.0, %sw.bb105 ], [ %noout.0, %sw.bb104 ], [ %noout.0, %sw.bb103 ], [ %noout.0, %lor.lhs.false95 ], [ %noout.0, %lor.lhs.false81 ], [ %noout.0, %lor.lhs.false ], [ %noout.0, %sw.bb60 ], [ %noout.0, %sw.bb55 ], [ %noout.0, %lor.lhs.false178 ], [ %noout.0, %sw.bb183 ], [ %noout.0, %sw.bb49 ], [ %noout.0, %sw.bb185 ], [ %noout.0, %sw.bb187 ], [ %noout.0, %sw.bb46 ], [ %noout.0, %sw.bb44 ], [ %noout.0, %sw.bb42 ], [ %noout.0, %sw.bb40 ], [ %noout.0, %sw.bb38 ], [ %noout.0, %sw.bb32 ], [ %noout.0, %sw.bb30 ], [ %noout.0, %sw.bb28 ], [ %noout.0, %sw.bb27 ], [ %noout.0, %sw.bb26 ], [ %noout.0, %sw.bb24 ], [ %noout.0, %sw.bb17 ], [ %noout.0, %sw.bb14 ], [ %noout.0, %sw.bb8 ], [ %noout.0, %sw.bb5 ], [ %noout.0, %while.cond ]
  %text.0.be = phi i32 [ %text.0, %sw.bb149 ], [ %text.0, %sw.bb188 ], [ %text.0, %sw.bb147 ], [ %text.0, %sw.bb146 ], [ %text.0, %if.end140 ], [ %text.0, %sw.bb129 ], [ %text.0, %sw.bb127 ], [ %text.0, %sw.bb125 ], [ %text.0, %sw.bb124 ], [ 1, %sw.bb123 ], [ %text.0, %sw.bb117 ], [ %text.0, %sw.bb111 ], [ %text.0, %sw.bb110 ], [ %text.0, %sw.bb109 ], [ %text.0, %sw.bb108 ], [ %text.0, %sw.bb107 ], [ %text.0, %sw.bb106 ], [ %text.0, %sw.bb105 ], [ %text.0, %sw.bb104 ], [ %text.0, %sw.bb103 ], [ %text.0, %lor.lhs.false95 ], [ %text.0, %lor.lhs.false81 ], [ %text.0, %lor.lhs.false ], [ %text.0, %sw.bb60 ], [ %text.0, %sw.bb55 ], [ %text.0, %lor.lhs.false178 ], [ %text.0, %sw.bb183 ], [ %text.0, %sw.bb49 ], [ %text.0, %sw.bb185 ], [ %text.0, %sw.bb187 ], [ %text.0, %sw.bb46 ], [ %text.0, %sw.bb44 ], [ %text.0, %sw.bb42 ], [ %text.0, %sw.bb40 ], [ %text.0, %sw.bb38 ], [ %text.0, %sw.bb32 ], [ %text.0, %sw.bb30 ], [ %text.0, %sw.bb28 ], [ %text.0, %sw.bb27 ], [ %text.0, %sw.bb26 ], [ %text.0, %sw.bb24 ], [ %text.0, %sw.bb17 ], [ %text.0, %sw.bb14 ], [ %text.0, %sw.bb8 ], [ %text.0, %sw.bb5 ], [ %text.0, %while.cond ]
  %noenc.0.be = phi i32 [ %noenc.0, %sw.bb149 ], [ %noenc.0, %sw.bb188 ], [ %noenc.0, %sw.bb147 ], [ %noenc.0, %sw.bb146 ], [ %noenc.0, %if.end140 ], [ %noenc.0, %sw.bb129 ], [ %noenc.0, %sw.bb127 ], [ %noenc.0, %sw.bb125 ], [ %noenc.0, %sw.bb124 ], [ %noenc.0, %sw.bb123 ], [ %noenc.0, %sw.bb117 ], [ %noenc.0, %sw.bb111 ], [ %noenc.0, %sw.bb110 ], [ %noenc.0, %sw.bb109 ], [ %noenc.0, %sw.bb108 ], [ 1, %sw.bb107 ], [ %noenc.0, %sw.bb106 ], [ %noenc.0, %sw.bb105 ], [ %noenc.0, %sw.bb104 ], [ %noenc.0, %sw.bb103 ], [ %noenc.0, %lor.lhs.false95 ], [ %noenc.0, %lor.lhs.false81 ], [ %noenc.0, %lor.lhs.false ], [ %noenc.0, %sw.bb60 ], [ %noenc.0, %sw.bb55 ], [ %noenc.0, %lor.lhs.false178 ], [ %noenc.0, %sw.bb183 ], [ %noenc.0, %sw.bb49 ], [ %noenc.0, %sw.bb185 ], [ %noenc.0, %sw.bb187 ], [ %noenc.0, %sw.bb46 ], [ %noenc.0, %sw.bb44 ], [ %noenc.0, %sw.bb42 ], [ %noenc.0, %sw.bb40 ], [ %noenc.0, %sw.bb38 ], [ %noenc.0, %sw.bb32 ], [ %noenc.0, %sw.bb30 ], [ %noenc.0, %sw.bb28 ], [ %noenc.0, %sw.bb27 ], [ %noenc.0, %sw.bb26 ], [ %noenc.0, %sw.bb24 ], [ %noenc.0, %sw.bb17 ], [ %noenc.0, %sw.bb14 ], [ %noenc.0, %sw.bb8 ], [ %noenc.0, %sw.bb5 ], [ %noenc.0, %while.cond ]
  %newhdr.0.be = phi i32 [ %newhdr.0, %sw.bb149 ], [ %newhdr.0, %sw.bb188 ], [ %newhdr.0, %sw.bb147 ], [ %newhdr.0, %sw.bb146 ], [ %newhdr.0, %if.end140 ], [ %newhdr.0, %sw.bb129 ], [ %newhdr.0, %sw.bb127 ], [ %newhdr.0, %sw.bb125 ], [ %newhdr.0, %sw.bb124 ], [ %newhdr.0, %sw.bb123 ], [ %newhdr.0, %sw.bb117 ], [ %newhdr.0, %sw.bb111 ], [ %newhdr.0, %sw.bb110 ], [ %newhdr.0, %sw.bb109 ], [ %newhdr.0, %sw.bb108 ], [ %newhdr.0, %sw.bb107 ], [ %newhdr.0, %sw.bb106 ], [ %newhdr.0, %sw.bb105 ], [ 1, %sw.bb104 ], [ %newhdr.0, %sw.bb103 ], [ %newhdr.0, %lor.lhs.false95 ], [ %newhdr.0, %lor.lhs.false81 ], [ %newhdr.0, %lor.lhs.false ], [ %newhdr.0, %sw.bb60 ], [ %newhdr.0, %sw.bb55 ], [ %newhdr.0, %lor.lhs.false178 ], [ %newhdr.0, %sw.bb183 ], [ %newhdr.0, %sw.bb49 ], [ %newhdr.0, %sw.bb185 ], [ %newhdr.0, %sw.bb187 ], [ %newhdr.0, %sw.bb46 ], [ %newhdr.0, %sw.bb44 ], [ %newhdr.0, %sw.bb42 ], [ %newhdr.0, %sw.bb40 ], [ %newhdr.0, %sw.bb38 ], [ %newhdr.0, %sw.bb32 ], [ %newhdr.0, %sw.bb30 ], [ %newhdr.0, %sw.bb28 ], [ %newhdr.0, %sw.bb27 ], [ %newhdr.0, %sw.bb26 ], [ %newhdr.0, %sw.bb24 ], [ %newhdr.0, %sw.bb17 ], [ %newhdr.0, %sw.bb14 ], [ %newhdr.0, %sw.bb8 ], [ %newhdr.0, %sw.bb5 ], [ %newhdr.0, %while.cond ]
  %subject.0.be = phi i32 [ %subject.0, %sw.bb149 ], [ %subject.0, %sw.bb188 ], [ %subject.0, %sw.bb147 ], [ 1, %sw.bb146 ], [ %subject.0, %if.end140 ], [ %subject.0, %sw.bb129 ], [ %subject.0, %sw.bb127 ], [ %subject.0, %sw.bb125 ], [ %subject.0, %sw.bb124 ], [ %subject.0, %sw.bb123 ], [ %subject.0, %sw.bb117 ], [ %subject.0, %sw.bb111 ], [ %subject.0, %sw.bb110 ], [ %subject.0, %sw.bb109 ], [ %subject.0, %sw.bb108 ], [ %subject.0, %sw.bb107 ], [ %subject.0, %sw.bb106 ], [ %subject.0, %sw.bb105 ], [ %subject.0, %sw.bb104 ], [ %subject.0, %sw.bb103 ], [ %subject.0, %lor.lhs.false95 ], [ %subject.0, %lor.lhs.false81 ], [ %subject.0, %lor.lhs.false ], [ %subject.0, %sw.bb60 ], [ %subject.0, %sw.bb55 ], [ %subject.0, %lor.lhs.false178 ], [ %subject.0, %sw.bb183 ], [ %subject.0, %sw.bb49 ], [ %subject.0, %sw.bb185 ], [ %subject.0, %sw.bb187 ], [ %subject.0, %sw.bb46 ], [ %subject.0, %sw.bb44 ], [ %subject.0, %sw.bb42 ], [ %subject.0, %sw.bb40 ], [ %subject.0, %sw.bb38 ], [ %subject.0, %sw.bb32 ], [ %subject.0, %sw.bb30 ], [ %subject.0, %sw.bb28 ], [ %subject.0, %sw.bb27 ], [ %subject.0, %sw.bb26 ], [ %subject.0, %sw.bb24 ], [ %subject.0, %sw.bb17 ], [ %subject.0, %sw.bb14 ], [ %subject.0, %sw.bb8 ], [ %subject.0, %sw.bb5 ], [ %subject.0, %while.cond ]
  %pubkey.0.be = phi i32 [ %pubkey.0, %sw.bb149 ], [ %pubkey.0, %sw.bb188 ], [ %pubkey.0, %sw.bb147 ], [ %pubkey.0, %sw.bb146 ], [ %pubkey.0, %if.end140 ], [ %pubkey.0, %sw.bb129 ], [ %pubkey.0, %sw.bb127 ], [ %pubkey.0, %sw.bb125 ], [ %pubkey.0, %sw.bb124 ], [ %pubkey.0, %sw.bb123 ], [ %pubkey.0, %sw.bb117 ], [ %pubkey.0, %sw.bb111 ], [ %pubkey.0, %sw.bb110 ], [ %pubkey.0, %sw.bb109 ], [ %pubkey.0, %sw.bb108 ], [ %pubkey.0, %sw.bb107 ], [ %pubkey.0, %sw.bb106 ], [ %pubkey.0, %sw.bb105 ], [ %pubkey.0, %sw.bb104 ], [ %pubkey.0, %sw.bb103 ], [ %pubkey.0, %lor.lhs.false95 ], [ %pubkey.0, %lor.lhs.false81 ], [ %pubkey.0, %lor.lhs.false ], [ %pubkey.0, %sw.bb60 ], [ %pubkey.0, %sw.bb55 ], [ %pubkey.0, %lor.lhs.false178 ], [ %pubkey.0, %sw.bb183 ], [ %pubkey.0, %sw.bb49 ], [ %pubkey.0, %sw.bb185 ], [ %pubkey.0, %sw.bb187 ], [ %pubkey.0, %sw.bb46 ], [ %pubkey.0, %sw.bb44 ], [ %pubkey.0, %sw.bb42 ], [ %pubkey.0, %sw.bb40 ], [ %pubkey.0, %sw.bb38 ], [ %pubkey.0, %sw.bb32 ], [ %pubkey.0, %sw.bb30 ], [ %pubkey.0, %sw.bb28 ], [ %pubkey.0, %sw.bb27 ], [ 1, %sw.bb26 ], [ %pubkey.0, %sw.bb24 ], [ %pubkey.0, %sw.bb17 ], [ %pubkey.0, %sw.bb14 ], [ %pubkey.0, %sw.bb8 ], [ %pubkey.0, %sw.bb5 ], [ %pubkey.0, %while.cond ]
  %precert.0.be = phi i32 [ %precert.0, %sw.bb149 ], [ %precert.0, %sw.bb188 ], [ %precert.0, %sw.bb147 ], [ %precert.0, %sw.bb146 ], [ %precert.0, %if.end140 ], [ %precert.0, %sw.bb129 ], [ %precert.0, %sw.bb127 ], [ %precert.0, %sw.bb125 ], [ %precert.0, %sw.bb124 ], [ %precert.0, %sw.bb123 ], [ %precert.0, %sw.bb117 ], [ %precert.0, %sw.bb111 ], [ %precert.0, %sw.bb110 ], [ %precert.0, %sw.bb109 ], [ %precert.0, %sw.bb108 ], [ %precert.0, %sw.bb107 ], [ %precert.0, %sw.bb106 ], [ %precert.0, %sw.bb105 ], [ %precert.0, %sw.bb104 ], [ %precert.0, %sw.bb103 ], [ %precert.0, %lor.lhs.false95 ], [ %precert.0, %lor.lhs.false81 ], [ %precert.0, %lor.lhs.false ], [ %precert.0, %sw.bb60 ], [ %precert.0, %sw.bb55 ], [ %precert.0, %lor.lhs.false178 ], [ %precert.0, %sw.bb183 ], [ %precert.0, %sw.bb49 ], [ %precert.0, %sw.bb185 ], [ 1, %sw.bb187 ], [ %precert.0, %sw.bb46 ], [ %precert.0, %sw.bb44 ], [ %precert.0, %sw.bb42 ], [ %precert.0, %sw.bb40 ], [ %precert.0, %sw.bb38 ], [ %precert.0, %sw.bb32 ], [ %precert.0, %sw.bb30 ], [ %precert.0, %sw.bb28 ], [ %precert.0, %sw.bb27 ], [ %precert.0, %sw.bb26 ], [ %precert.0, %sw.bb24 ], [ %precert.0, %sw.bb17 ], [ %precert.0, %sw.bb14 ], [ %precert.0, %sw.bb8 ], [ %precert.0, %sw.bb5 ], [ %precert.0, %while.cond ]
  %chtype.0.be = phi i64 [ %chtype.0, %sw.bb149 ], [ %chtype.0, %sw.bb188 ], [ %chtype.0, %sw.bb147 ], [ %chtype.0, %sw.bb146 ], [ %chtype.0, %if.end140 ], [ %chtype.0, %sw.bb129 ], [ %chtype.0, %sw.bb127 ], [ %chtype.0, %sw.bb125 ], [ %chtype.0, %sw.bb124 ], [ %chtype.0, %sw.bb123 ], [ %chtype.0, %sw.bb117 ], [ %chtype.0, %sw.bb111 ], [ 4096, %sw.bb110 ], [ %chtype.0, %sw.bb109 ], [ %chtype.0, %sw.bb108 ], [ %chtype.0, %sw.bb107 ], [ %chtype.0, %sw.bb106 ], [ %chtype.0, %sw.bb105 ], [ %chtype.0, %sw.bb104 ], [ %chtype.0, %sw.bb103 ], [ %chtype.0, %lor.lhs.false95 ], [ %chtype.0, %lor.lhs.false81 ], [ %chtype.0, %lor.lhs.false ], [ %chtype.0, %sw.bb60 ], [ %chtype.0, %sw.bb55 ], [ %chtype.0, %lor.lhs.false178 ], [ %chtype.0, %sw.bb183 ], [ %chtype.0, %sw.bb49 ], [ %chtype.0, %sw.bb185 ], [ %chtype.0, %sw.bb187 ], [ %chtype.0, %sw.bb46 ], [ %chtype.0, %sw.bb44 ], [ %chtype.0, %sw.bb42 ], [ %chtype.0, %sw.bb40 ], [ %chtype.0, %sw.bb38 ], [ %chtype.0, %sw.bb32 ], [ %chtype.0, %sw.bb30 ], [ %chtype.0, %sw.bb28 ], [ %chtype.0, %sw.bb27 ], [ %chtype.0, %sw.bb26 ], [ %chtype.0, %sw.bb24 ], [ %chtype.0, %sw.bb17 ], [ %chtype.0, %sw.bb14 ], [ %chtype.0, %sw.bb8 ], [ %chtype.0, %sw.bb5 ], [ %chtype.0, %while.cond ]
  %gen_eng.0.be = phi %struct.engine_st* [ %gen_eng.0, %sw.bb149 ], [ %gen_eng.0, %sw.bb188 ], [ %gen_eng.0, %sw.bb147 ], [ %gen_eng.0, %sw.bb146 ], [ %gen_eng.0, %if.end140 ], [ %gen_eng.0, %sw.bb129 ], [ %gen_eng.0, %sw.bb127 ], [ %gen_eng.0, %sw.bb125 ], [ %gen_eng.0, %sw.bb124 ], [ %gen_eng.0, %sw.bb123 ], [ %gen_eng.0, %sw.bb117 ], [ %gen_eng.0, %sw.bb111 ], [ %gen_eng.0, %sw.bb110 ], [ %gen_eng.0, %sw.bb109 ], [ %gen_eng.0, %sw.bb108 ], [ %gen_eng.0, %sw.bb107 ], [ %gen_eng.0, %sw.bb106 ], [ %gen_eng.0, %sw.bb105 ], [ %gen_eng.0, %sw.bb104 ], [ %gen_eng.0, %sw.bb103 ], [ %gen_eng.0, %lor.lhs.false95 ], [ %gen_eng.0, %lor.lhs.false81 ], [ %gen_eng.0, %lor.lhs.false ], [ %gen_eng.0, %sw.bb60 ], [ %gen_eng.0, %sw.bb55 ], [ %gen_eng.0, %lor.lhs.false178 ], [ %gen_eng.0, %sw.bb183 ], [ %gen_eng.0, %sw.bb49 ], [ %gen_eng.0, %sw.bb185 ], [ %gen_eng.0, %sw.bb187 ], [ %gen_eng.0, %sw.bb46 ], [ %gen_eng.0, %sw.bb44 ], [ %gen_eng.0, %sw.bb42 ], [ %gen_eng.0, %sw.bb40 ], [ %gen_eng.0, %sw.bb38 ], [ %gen_eng.0, %sw.bb32 ], [ %gen_eng.0, %sw.bb30 ], [ %gen_eng.0, %sw.bb28 ], [ %gen_eng.0, %sw.bb27 ], [ %gen_eng.0, %sw.bb26 ], [ %gen_eng.0, %sw.bb24 ], [ %call19, %sw.bb17 ], [ %gen_eng.0, %sw.bb14 ], [ %gen_eng.0, %sw.bb8 ], [ %gen_eng.0, %sw.bb5 ], [ %gen_eng.0, %while.cond ]
  %e.0.be = phi %struct.engine_st* [ %e.0, %sw.bb149 ], [ %e.0, %sw.bb188 ], [ %e.0, %sw.bb147 ], [ %e.0, %sw.bb146 ], [ %e.0, %if.end140 ], [ %e.0, %sw.bb129 ], [ %e.0, %sw.bb127 ], [ %e.0, %sw.bb125 ], [ %e.0, %sw.bb124 ], [ %e.0, %sw.bb123 ], [ %e.0, %sw.bb117 ], [ %e.0, %sw.bb111 ], [ %e.0, %sw.bb110 ], [ %e.0, %sw.bb109 ], [ %e.0, %sw.bb108 ], [ %e.0, %sw.bb107 ], [ %e.0, %sw.bb106 ], [ %e.0, %sw.bb105 ], [ %e.0, %sw.bb104 ], [ %e.0, %sw.bb103 ], [ %e.0, %lor.lhs.false95 ], [ %e.0, %lor.lhs.false81 ], [ %e.0, %lor.lhs.false ], [ %e.0, %sw.bb60 ], [ %e.0, %sw.bb55 ], [ %e.0, %lor.lhs.false178 ], [ %e.0, %sw.bb183 ], [ %e.0, %sw.bb49 ], [ %e.0, %sw.bb185 ], [ %e.0, %sw.bb187 ], [ %e.0, %sw.bb46 ], [ %e.0, %sw.bb44 ], [ %e.0, %sw.bb42 ], [ %e.0, %sw.bb40 ], [ %e.0, %sw.bb38 ], [ %e.0, %sw.bb32 ], [ %e.0, %sw.bb30 ], [ %e.0, %sw.bb28 ], [ %e.0, %sw.bb27 ], [ %e.0, %sw.bb26 ], [ %e.0, %sw.bb24 ], [ %e.0, %sw.bb17 ], [ %call16, %sw.bb14 ], [ %e.0, %sw.bb8 ], [ %e.0, %sw.bb5 ], [ %e.0, %while.cond ]
  %serial.0.be = phi %struct.asn1_string_st* [ %serial.0, %sw.bb149 ], [ %serial.0, %sw.bb188 ], [ %serial.0, %sw.bb147 ], [ %serial.0, %sw.bb146 ], [ %call142, %if.end140 ], [ %serial.0, %sw.bb129 ], [ %serial.0, %sw.bb127 ], [ %serial.0, %sw.bb125 ], [ %serial.0, %sw.bb124 ], [ %serial.0, %sw.bb123 ], [ %serial.0, %sw.bb117 ], [ %serial.0, %sw.bb111 ], [ %serial.0, %sw.bb110 ], [ %serial.0, %sw.bb109 ], [ %serial.0, %sw.bb108 ], [ %serial.0, %sw.bb107 ], [ %serial.0, %sw.bb106 ], [ %serial.0, %sw.bb105 ], [ %serial.0, %sw.bb104 ], [ %serial.0, %sw.bb103 ], [ %serial.0, %lor.lhs.false95 ], [ %serial.0, %lor.lhs.false81 ], [ %serial.0, %lor.lhs.false ], [ %serial.0, %sw.bb60 ], [ %serial.0, %sw.bb55 ], [ %serial.0, %lor.lhs.false178 ], [ %serial.0, %sw.bb183 ], [ %serial.0, %sw.bb49 ], [ %serial.0, %sw.bb185 ], [ %serial.0, %sw.bb187 ], [ %serial.0, %sw.bb46 ], [ %serial.0, %sw.bb44 ], [ %serial.0, %sw.bb42 ], [ %serial.0, %sw.bb40 ], [ %serial.0, %sw.bb38 ], [ %serial.0, %sw.bb32 ], [ %serial.0, %sw.bb30 ], [ %serial.0, %sw.bb28 ], [ %serial.0, %sw.bb27 ], [ %serial.0, %sw.bb26 ], [ %serial.0, %sw.bb24 ], [ %serial.0, %sw.bb17 ], [ %serial.0, %sw.bb14 ], [ %serial.0, %sw.bb8 ], [ %serial.0, %sw.bb5 ], [ %serial.0, %while.cond ]
  br label %while.cond, !llvm.loop !11

opthelp:                                          ; preds = %while.cond, %if.end140, %sw.bb117, %sw.bb111, %if.end93, %lor.lhs.false95, %if.end79, %lor.lhs.false81, %if.end66, %lor.lhs.false, %sw.bb32, %sw.bb8, %sw.bb5, %while.end, %if.then267, %if.then174, %if.then138, %if.then21
  %sigopts.1 = phi %struct.stack_st_OPENSSL_STRING* [ %sigopts.0, %if.then138 ], [ %sigopts.0, %if.then174 ], [ %sigopts.0, %if.then21 ], [ %sigopts.0, %while.end ], [ %sigopts.0, %if.then267 ], [ %sigopts.0, %sw.bb5 ], [ %sigopts.0, %sw.bb8 ], [ %sigopts.0, %sw.bb32 ], [ %sigopts.0, %lor.lhs.false ], [ %sigopts.0, %if.end66 ], [ %sigopts.21375, %lor.lhs.false81 ], [ null, %if.end79 ], [ %sigopts.0, %lor.lhs.false95 ], [ %sigopts.0, %if.end93 ], [ %sigopts.0, %sw.bb111 ], [ %sigopts.0, %sw.bb117 ], [ %sigopts.0, %if.end140 ], [ %sigopts.0, %while.cond ]
  %vfyopts.1 = phi %struct.stack_st_OPENSSL_STRING* [ %vfyopts.0, %if.then138 ], [ %vfyopts.0, %if.then174 ], [ %vfyopts.0, %if.then21 ], [ %vfyopts.0, %while.end ], [ %vfyopts.0, %if.then267 ], [ %vfyopts.0, %sw.bb5 ], [ %vfyopts.0, %sw.bb8 ], [ %vfyopts.0, %sw.bb32 ], [ %vfyopts.0, %lor.lhs.false ], [ %vfyopts.0, %if.end66 ], [ %vfyopts.0, %lor.lhs.false81 ], [ %vfyopts.0, %if.end79 ], [ %vfyopts.21378, %lor.lhs.false95 ], [ null, %if.end93 ], [ %vfyopts.0, %sw.bb111 ], [ %vfyopts.0, %sw.bb117 ], [ %vfyopts.0, %if.end140 ], [ %vfyopts.0, %while.cond ]
  %addexts.1 = phi %struct.lhash_st_OPENSSL_STRING* [ %addexts.0, %if.then138 ], [ %addexts.2, %if.then174 ], [ %addexts.0, %if.then21 ], [ %addexts.0, %while.end ], [ %addexts.0, %if.then267 ], [ %addexts.0, %sw.bb5 ], [ %addexts.0, %sw.bb8 ], [ %addexts.0, %sw.bb32 ], [ %addexts.0, %lor.lhs.false ], [ %addexts.0, %if.end66 ], [ %addexts.0, %lor.lhs.false81 ], [ %addexts.0, %if.end79 ], [ %addexts.0, %lor.lhs.false95 ], [ %addexts.0, %if.end93 ], [ %addexts.0, %sw.bb111 ], [ %addexts.0, %sw.bb117 ], [ %addexts.0, %if.end140 ], [ %addexts.0, %while.cond ]
  %addext_bio.1 = phi %struct.bio_st* [ %addext_bio.0, %if.then138 ], [ %addext_bio.2, %if.then174 ], [ %addext_bio.0, %if.then21 ], [ %addext_bio.0, %while.end ], [ %addext_bio.0, %if.then267 ], [ %addext_bio.0, %sw.bb5 ], [ %addext_bio.0, %sw.bb8 ], [ %addext_bio.0, %sw.bb32 ], [ %addext_bio.0, %lor.lhs.false ], [ %addext_bio.0, %if.end66 ], [ %addext_bio.0, %lor.lhs.false81 ], [ %addext_bio.0, %if.end79 ], [ %addext_bio.0, %lor.lhs.false95 ], [ %addext_bio.0, %if.end93 ], [ %addext_bio.0, %sw.bb111 ], [ %addext_bio.0, %sw.bb117 ], [ %addext_bio.0, %if.end140 ], [ %addext_bio.0, %while.cond ]
  %pkeyopts.1 = phi %struct.stack_st_OPENSSL_STRING* [ %pkeyopts.0, %if.then138 ], [ %pkeyopts.0, %if.then174 ], [ %pkeyopts.0, %if.then21 ], [ %pkeyopts.0, %while.end ], [ %pkeyopts.0, %if.then267 ], [ %pkeyopts.0, %sw.bb5 ], [ %pkeyopts.0, %sw.bb8 ], [ %pkeyopts.0, %sw.bb32 ], [ %pkeyopts.21372, %lor.lhs.false ], [ null, %if.end66 ], [ %pkeyopts.0, %lor.lhs.false81 ], [ %pkeyopts.0, %if.end79 ], [ %pkeyopts.0, %lor.lhs.false95 ], [ %pkeyopts.0, %if.end93 ], [ %pkeyopts.0, %sw.bb111 ], [ %pkeyopts.0, %sw.bb117 ], [ %pkeyopts.0, %if.end140 ], [ %pkeyopts.0, %while.cond ]
  %gen_eng.1 = phi %struct.engine_st* [ %gen_eng.0, %if.then138 ], [ %gen_eng.0, %if.then174 ], [ null, %if.then21 ], [ %gen_eng.0, %while.end ], [ %gen_eng.0, %if.then267 ], [ %gen_eng.0, %sw.bb5 ], [ %gen_eng.0, %sw.bb8 ], [ %gen_eng.0, %sw.bb32 ], [ %gen_eng.0, %lor.lhs.false ], [ %gen_eng.0, %if.end66 ], [ %gen_eng.0, %lor.lhs.false81 ], [ %gen_eng.0, %if.end79 ], [ %gen_eng.0, %lor.lhs.false95 ], [ %gen_eng.0, %if.end93 ], [ %gen_eng.0, %sw.bb111 ], [ %gen_eng.0, %sw.bb117 ], [ %gen_eng.0, %if.end140 ], [ %gen_eng.0, %while.cond ]
  %serial.1 = phi %struct.asn1_string_st* [ %serial.0, %if.then138 ], [ %serial.0, %if.then174 ], [ %serial.0, %if.then21 ], [ %serial.0, %while.end ], [ %serial.0, %if.then267 ], [ %serial.0, %sw.bb5 ], [ %serial.0, %sw.bb8 ], [ %serial.0, %sw.bb32 ], [ %serial.0, %lor.lhs.false ], [ %serial.0, %if.end66 ], [ %serial.0, %lor.lhs.false81 ], [ %serial.0, %if.end79 ], [ %serial.0, %lor.lhs.false95 ], [ %serial.0, %if.end93 ], [ %serial.0, %sw.bb111 ], [ %serial.0, %sw.bb117 ], [ null, %if.end140 ], [ %serial.0, %while.cond ]
  %11 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call3 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %11, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.109, i64 0, i64 0), i8* noundef %call1) #10
  br label %if.then937

sw.bb4:                                           ; preds = %while.cond
  call void @opt_help(%struct.options_st* noundef getelementptr inbounds ([59 x %struct.options_st], [59 x %struct.options_st]* @req_options, i64 0, i64 0)) #10
  br label %if.end938

sw.bb5:                                           ; preds = %while.cond
  %call6 = call i8* @opt_arg() #10
  %call7 = call i32 @opt_format(i8* noundef %call6, i64 noundef 2, i32* noundef nonnull %informat) #10
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %opthelp, label %while.cond.backedge

sw.bb8:                                           ; preds = %while.cond
  %call9 = call i8* @opt_arg() #10
  %call10 = call i32 @opt_format(i8* noundef %call9, i64 noundef 2, i32* noundef nonnull %outformat) #10
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %opthelp, label %while.cond.backedge

sw.bb14:                                          ; preds = %while.cond
  %call15 = call i8* @opt_arg() #10
  %call16 = call %struct.engine_st* @setup_engine_methods(i8* noundef %call15, i32 noundef -1, i32 noundef 0) #10
  br label %while.cond.backedge

sw.bb17:                                          ; preds = %while.cond
  %call18 = call i8* @opt_arg() #10
  %call19 = call %struct.engine_st* @setup_engine_methods(i8* noundef %call18, i32 noundef -1, i32 noundef 0) #10
  %cmp20 = icmp eq %struct.engine_st* %call19, null
  br i1 %cmp20, label %if.then21, label %while.cond.backedge

if.then21:                                        ; preds = %sw.bb17
  %12 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %13 = load i8*, i8** %argv, align 8, !tbaa !3
  %call22 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %12, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.110, i64 0, i64 0), i8* noundef %13) #10
  br label %opthelp

sw.bb24:                                          ; preds = %while.cond
  %call25 = call i8* @opt_arg() #10
  br label %while.cond.backedge

sw.bb26:                                          ; preds = %while.cond
  br label %while.cond.backedge

sw.bb27:                                          ; preds = %while.cond
  br label %while.cond.backedge

sw.bb28:                                          ; preds = %while.cond
  %call29 = call i8* @opt_arg() #10
  br label %while.cond.backedge

sw.bb30:                                          ; preds = %while.cond
  %call31 = call i8* @opt_arg() #10
  store i8* %call31, i8** @section, align 8, !tbaa !3
  br label %while.cond.backedge

sw.bb32:                                          ; preds = %while.cond
  %call33 = call i8* @opt_arg() #10
  %call34 = call i32 @opt_format(i8* noundef %call33, i64 noundef 1982, i32* noundef nonnull %keyform) #10
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %opthelp, label %while.cond.backedge

sw.bb38:                                          ; preds = %while.cond
  %call39 = call i8* @opt_arg() #10
  br label %while.cond.backedge

sw.bb40:                                          ; preds = %while.cond
  %call41 = call i8* @opt_arg() #10
  br label %while.cond.backedge

sw.bb42:                                          ; preds = %while.cond
  %call43 = call i8* @opt_arg() #10
  br label %while.cond.backedge

sw.bb44:                                          ; preds = %while.cond
  %call45 = call i8* @opt_arg() #10
  br label %while.cond.backedge

sw.bb46:                                          ; preds = %while.cond
  %call47 = call i8* @opt_arg() #10
  br label %while.cond.backedge

sw.bb49:                                          ; preds = %while.cond, %while.cond
  %call50 = call i32 @opt_rand(i32 noundef %call2) #10
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.then937, label %while.cond.backedge

sw.bb55:                                          ; preds = %while.cond, %while.cond, %while.cond
  %call56 = call i32 @opt_provider(i32 noundef %call2) #10
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.then937, label %while.cond.backedge

sw.bb60:                                          ; preds = %while.cond
  %call61 = call i8* @opt_arg() #10
  br label %while.cond.backedge

sw.bb62:                                          ; preds = %while.cond
  %cmp63 = icmp eq %struct.stack_st_OPENSSL_STRING* %pkeyopts.0, null
  br i1 %cmp63, label %if.end66, label %lor.lhs.false

if.end66:                                         ; preds = %sw.bb62
  %call65 = call %struct.stack_st* @OPENSSL_sk_new_null() #10
  %14 = bitcast %struct.stack_st* %call65 to %struct.stack_st_OPENSSL_STRING*
  %cmp67 = icmp eq %struct.stack_st* %call65, null
  br i1 %cmp67, label %opthelp, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb62, %if.end66
  %pkeyopts.21372 = phi %struct.stack_st_OPENSSL_STRING* [ %14, %if.end66 ], [ %pkeyopts.0, %sw.bb62 ]
  %call68 = call fastcc %struct.stack_st* @ossl_check_OPENSSL_STRING_sk_type(%struct.stack_st_OPENSSL_STRING* noundef nonnull %pkeyopts.21372) #11
  %call69 = call i8* @opt_arg() #10
  %call71 = call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call68, i8* noundef %call69) #10
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %opthelp, label %while.cond.backedge

sw.bb75:                                          ; preds = %while.cond
  %tobool76.not = icmp eq %struct.stack_st_OPENSSL_STRING* %sigopts.0, null
  br i1 %tobool76.not, label %if.end79, label %lor.lhs.false81

if.end79:                                         ; preds = %sw.bb75
  %call78 = call %struct.stack_st* @OPENSSL_sk_new_null() #10
  %15 = bitcast %struct.stack_st* %call78 to %struct.stack_st_OPENSSL_STRING*
  %tobool80.not = icmp eq %struct.stack_st* %call78, null
  br i1 %tobool80.not, label %opthelp, label %lor.lhs.false81

lor.lhs.false81:                                  ; preds = %sw.bb75, %if.end79
  %sigopts.21375 = phi %struct.stack_st_OPENSSL_STRING* [ %15, %if.end79 ], [ %sigopts.0, %sw.bb75 ]
  %call82 = call fastcc %struct.stack_st* @ossl_check_OPENSSL_STRING_sk_type(%struct.stack_st_OPENSSL_STRING* noundef nonnull %sigopts.21375) #11
  %call83 = call i8* @opt_arg() #10
  %call85 = call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call82, i8* noundef %call83) #10
  %tobool86.not = icmp eq i32 %call85, 0
  br i1 %tobool86.not, label %opthelp, label %while.cond.backedge

sw.bb89:                                          ; preds = %while.cond
  %tobool90.not = icmp eq %struct.stack_st_OPENSSL_STRING* %vfyopts.0, null
  br i1 %tobool90.not, label %if.end93, label %lor.lhs.false95

if.end93:                                         ; preds = %sw.bb89
  %call92 = call %struct.stack_st* @OPENSSL_sk_new_null() #10
  %16 = bitcast %struct.stack_st* %call92 to %struct.stack_st_OPENSSL_STRING*
  %tobool94.not = icmp eq %struct.stack_st* %call92, null
  br i1 %tobool94.not, label %opthelp, label %lor.lhs.false95

lor.lhs.false95:                                  ; preds = %sw.bb89, %if.end93
  %vfyopts.21378 = phi %struct.stack_st_OPENSSL_STRING* [ %16, %if.end93 ], [ %vfyopts.0, %sw.bb89 ]
  %call96 = call fastcc %struct.stack_st* @ossl_check_OPENSSL_STRING_sk_type(%struct.stack_st_OPENSSL_STRING* noundef nonnull %vfyopts.21378) #11
  %call97 = call i8* @opt_arg() #10
  %call99 = call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call96, i8* noundef %call97) #10
  %tobool100.not = icmp eq i32 %call99, 0
  br i1 %tobool100.not, label %opthelp, label %while.cond.backedge

sw.bb103:                                         ; preds = %while.cond
  store i1 true, i1* @batch, align 4
  br label %while.cond.backedge

sw.bb104:                                         ; preds = %while.cond
  br label %while.cond.backedge

sw.bb105:                                         ; preds = %while.cond
  br label %while.cond.backedge

sw.bb106:                                         ; preds = %while.cond
  br label %while.cond.backedge

sw.bb107:                                         ; preds = %while.cond, %while.cond
  br label %while.cond.backedge

sw.bb108:                                         ; preds = %while.cond
  br label %while.cond.backedge

sw.bb109:                                         ; preds = %while.cond
  br label %while.cond.backedge

sw.bb110:                                         ; preds = %while.cond
  br label %while.cond.backedge

sw.bb111:                                         ; preds = %while.cond
  %call112 = call i8* @opt_arg() #10
  %call113 = call i32 @set_nameopt(i8* noundef %call112) #10
  %tobool114.not = icmp eq i32 %call113, 0
  br i1 %tobool114.not, label %opthelp, label %while.cond.backedge

sw.bb117:                                         ; preds = %while.cond
  %call118 = call i8* @opt_arg() #10
  %call119 = call i32 @set_cert_ex(i64* noundef nonnull %reqflag, i8* noundef %call118) #10
  %tobool120.not = icmp eq i32 %call119, 0
  br i1 %tobool120.not, label %opthelp, label %while.cond.backedge

sw.bb123:                                         ; preds = %while.cond
  br label %while.cond.backedge

sw.bb124:                                         ; preds = %while.cond
  br label %while.cond.backedge

sw.bb125:                                         ; preds = %while.cond
  %call126 = call i8* @opt_arg() #10
  br label %while.cond.backedge

sw.bb127:                                         ; preds = %while.cond
  %call128 = call i8* @opt_arg() #10
  br label %while.cond.backedge

sw.bb129:                                         ; preds = %while.cond
  %call130 = call i8* @opt_arg() #10
  %call131 = call i32 @atoi(i8* noundef %call130) #12
  %cmp132 = icmp slt i32 %call131, -1
  br i1 %cmp132, label %if.then133, label %while.cond.backedge

if.then133:                                       ; preds = %sw.bb129
  %17 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call134 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %17, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.111, i64 0, i64 0), i8* noundef %call1) #10
  br label %if.then937

sw.bb136:                                         ; preds = %while.cond
  %cmp137.not = icmp eq %struct.asn1_string_st* %serial.0, null
  br i1 %cmp137.not, label %if.end140, label %if.then138

if.then138:                                       ; preds = %sw.bb136
  %18 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call139 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %18, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.112, i64 0, i64 0)) #10
  br label %opthelp

if.end140:                                        ; preds = %sw.bb136
  %call141 = call i8* @opt_arg() #10
  %call142 = call %struct.asn1_string_st* @s2i_ASN1_INTEGER(%struct.v3_ext_method* noundef null, i8* noundef %call141) #10
  %cmp143 = icmp eq %struct.asn1_string_st* %call142, null
  br i1 %cmp143, label %opthelp, label %while.cond.backedge

sw.bb146:                                         ; preds = %while.cond
  br label %while.cond.backedge

sw.bb147:                                         ; preds = %while.cond
  %call148 = call i8* @opt_arg() #10
  br label %while.cond.backedge

sw.bb149:                                         ; preds = %while.cond
  %call150 = call i8* @opt_arg() #10
  %call151 = call i32 @set_ext_copy(i32* noundef nonnull %ext_copy, i8* noundef %call150) #10
  %tobool152.not = icmp eq i32 %call151, 0
  br i1 %tobool152.not, label %if.then153, label %while.cond.backedge

if.then153:                                       ; preds = %sw.bb149
  %19 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call154 = call i8* @opt_arg() #10
  %call155 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %19, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.113, i64 0, i64 0), i8* noundef %call154) #10
  br label %if.then937

sw.bb157:                                         ; preds = %while.cond
  %call158 = call i8* @opt_arg() #10
  %cmp159 = icmp eq %struct.lhash_st_OPENSSL_STRING* %addexts.0, null
  br i1 %cmp159, label %if.then160, label %if.end171

if.then160:                                       ; preds = %sw.bb157
  %call163 = call %struct.lhash_st* @OPENSSL_LH_new(i64 (i8*)* noundef bitcast (i64 (i8**)* @ext_name_hash to i64 (i8*)*), i32 (i8*, i8*)* noundef bitcast (i32 (i8**, i8**)* @ext_name_cmp to i32 (i8*, i8*)*)) #10
  %20 = bitcast %struct.lhash_st* %call163 to %struct.lhash_st_OPENSSL_STRING*
  %call164 = call %struct.bio_method_st* @BIO_s_mem() #10
  %call165 = call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call164) #10
  %cmp166 = icmp eq %struct.lhash_st* %call163, null
  %cmp168 = icmp eq %struct.bio_st* %call165, null
  %or.cond = select i1 %cmp166, i1 true, i1 %cmp168
  br i1 %or.cond, label %if.then937.loopexit2368.split.loop.exit, label %if.end171

if.end171:                                        ; preds = %if.then160, %sw.bb157
  %addexts.2 = phi %struct.lhash_st_OPENSSL_STRING* [ %20, %if.then160 ], [ %addexts.0, %sw.bb157 ]
  %addext_bio.2 = phi %struct.bio_st* [ %call165, %if.then160 ], [ %addext_bio.0, %sw.bb157 ]
  %call172 = call fastcc i32 @duplicated(%struct.lhash_st_OPENSSL_STRING* noundef %addexts.2, i8* noundef %call158) #11
  %cmp173 = icmp eq i32 %call172, 1
  br i1 %cmp173, label %if.then174, label %if.end176

if.then174:                                       ; preds = %if.end171
  %21 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call175 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %21, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.114, i64 0, i64 0), i8* noundef %call158) #10
  br label %opthelp

if.end176:                                        ; preds = %if.end171
  %cmp177 = icmp slt i32 %call172, 0
  br i1 %cmp177, label %if.then937, label %lor.lhs.false178

lor.lhs.false178:                                 ; preds = %if.end176
  %call179 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %addext_bio.2, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.115, i64 0, i64 0), i8* noundef %call158) #10
  %cmp180 = icmp slt i32 %call179, 0
  br i1 %cmp180, label %if.then937, label %while.cond.backedge

sw.bb183:                                         ; preds = %while.cond
  %call184 = call i8* @opt_arg() #10
  br label %while.cond.backedge

sw.bb185:                                         ; preds = %while.cond
  %call186 = call i8* @opt_arg() #10
  br label %while.cond.backedge

sw.bb187:                                         ; preds = %while.cond
  br label %while.cond.backedge

sw.bb188:                                         ; preds = %while.cond
  %call189 = call i8* @opt_unknown() #10
  br label %while.cond.backedge

while.end:                                        ; preds = %while.cond
  %call190 = call i32 @opt_num_rest() #10
  %cmp191.not = icmp eq i32 %call190, 0
  br i1 %cmp191.not, label %if.end193, label %opthelp

if.end193:                                        ; preds = %while.end
  %call194 = call i32 @app_RAND_load() #10
  %tobool195.not = icmp eq i32 %call194, 0
  br i1 %tobool195.not, label %if.then937, label %if.end197

if.end197:                                        ; preds = %if.end193
  %tobool198 = icmp ne i32 %gen_x509.0, 0
  br i1 %tobool198, label %if.end208, label %if.then199

if.then199:                                       ; preds = %if.end197
  %cmp200.not = icmp eq i32 %days.0, -2
  br i1 %cmp200.not, label %if.end203, label %if.then201

if.then201:                                       ; preds = %if.then199
  %22 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call202 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %22, i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.116, i64 0, i64 0)) #10
  br label %if.end203

if.end203:                                        ; preds = %if.then201, %if.then199
  %23 = load i32, i32* %ext_copy, align 4, !tbaa !7
  %cmp204 = icmp eq i32 %23, 0
  br i1 %cmp204, label %if.then205, label %if.end208

if.then205:                                       ; preds = %if.end203
  %24 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call206 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %24, i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @.str.117, i64 0, i64 0)) #10
  br label %if.end208

if.end208:                                        ; preds = %if.end203, %if.then205, %if.end197
  %cmp210 = icmp eq i8* %infile.0, null
  %or.cond1018 = select i1 %tobool198, i1 %cmp210, i1 false
  %spec.select = select i1 %or.cond1018, i32 1, i32 %newreq.0
  %call213 = call i32 @app_passwd(i8* noundef %passargin.0, i8* noundef %passargout.0, i8** noundef nonnull %passin, i8** noundef nonnull %passout) #10
  %tobool214.not = icmp eq i32 %call213, 0
  br i1 %tobool214.not, label %if.then215, label %if.end217

if.then215:                                       ; preds = %if.end208
  %25 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call216 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %25, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.118, i64 0, i64 0)) #10
  br label %if.then937

if.end217:                                        ; preds = %if.end208
  %call218 = call %struct.conf_st* @app_load_config_verbose(i8* noundef %template.0, i32 noundef %verbose.0) #10
  store %struct.conf_st* %call218, %struct.conf_st** @req_conf, align 8, !tbaa !3
  %cmp219 = icmp eq %struct.conf_st* %call218, null
  br i1 %cmp219, label %if.then937, label %if.end221

if.end221:                                        ; preds = %if.end217
  %cmp222.not = icmp eq %struct.bio_st* %addext_bio.0, null
  br i1 %cmp222.not, label %if.end232, label %if.then223

if.then223:                                       ; preds = %if.end221
  %tobool224.not = icmp eq i32 %verbose.0, 0
  br i1 %tobool224.not, label %if.end227, label %if.then225

if.then225:                                       ; preds = %if.then223
  %26 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call226 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %26, i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.119, i64 0, i64 0)) #10
  br label %if.end227

if.end227:                                        ; preds = %if.then225, %if.then223
  %call228 = call %struct.conf_st* @app_load_config_bio(%struct.bio_st* noundef nonnull %addext_bio.0, i8* noundef null) #10
  store %struct.conf_st* %call228, %struct.conf_st** @addext_conf, align 8, !tbaa !3
  %cmp229 = icmp eq %struct.conf_st* %call228, null
  br i1 %cmp229, label %if.then937, label %if.end232

if.end232:                                        ; preds = %if.end227, %if.end221
  %27 = load i8*, i8** @default_config_file, align 8, !tbaa !3
  %cmp233.not = icmp eq i8* %template.0, %27
  br i1 %cmp233.not, label %if.end238, label %land.lhs.true234

land.lhs.true234:                                 ; preds = %if.end232
  %28 = load %struct.conf_st*, %struct.conf_st** @req_conf, align 8, !tbaa !3
  %call235 = call i32 @app_load_modules(%struct.conf_st* noundef %28) #10
  %tobool236.not = icmp eq i32 %call235, 0
  br i1 %tobool236.not, label %if.then937, label %if.end238

if.end238:                                        ; preds = %land.lhs.true234, %if.end232
  %29 = load %struct.conf_st*, %struct.conf_st** @req_conf, align 8, !tbaa !3
  %cmp239.not = icmp eq %struct.conf_st* %29, null
  br i1 %cmp239.not, label %if.end258, label %if.then240

if.then240:                                       ; preds = %if.end238
  %call241 = call i8* @NCONF_get_string(%struct.conf_st* noundef nonnull %29, i8* noundef null, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.120, i64 0, i64 0)) #10
  %cond1367 = icmp eq i8* %call241, null
  br i1 %cond1367, label %if.then243, label %if.then246

if.then243:                                       ; preds = %if.then240
  call void @ERR_clear_error() #10
  br label %if.end258

if.then246:                                       ; preds = %if.then240
  %call247 = call %struct.bio_st* @BIO_new_file(i8* noundef nonnull %call241, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.121, i64 0, i64 0)) #10
  %cmp248 = icmp eq %struct.bio_st* %call247, null
  br i1 %cmp248, label %if.then249, label %if.else

if.then249:                                       ; preds = %if.then246
  %tobool250.not = icmp eq i32 %verbose.0, 0
  br i1 %tobool250.not, label %if.end258, label %if.then251

if.then251:                                       ; preds = %if.then249
  %30 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call252 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %30, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.122, i64 0, i64 0), i8* noundef nonnull %call241) #10
  br label %if.end258

if.else:                                          ; preds = %if.then246
  %call254 = call i32 @OBJ_create_objects(%struct.bio_st* noundef nonnull %call247) #10
  %call255 = call i32 @BIO_free(%struct.bio_st* noundef nonnull %call247) #10
  br label %if.end258

if.end258:                                        ; preds = %if.then243, %if.else, %if.then251, %if.then249, %if.end238
  %31 = load %struct.conf_st*, %struct.conf_st** @req_conf, align 8, !tbaa !3
  %call259 = call i32 @add_oid_section(%struct.conf_st* noundef %31) #10
  %tobool260.not = icmp eq i32 %call259, 0
  br i1 %tobool260.not, label %if.then937, label %if.end262

if.end262:                                        ; preds = %if.end258
  %cmp263.not = icmp eq i8* %digest.0, null
  br i1 %cmp263.not, label %if.else269, label %if.then264

if.then264:                                       ; preds = %if.end262
  %call265 = call i32 @opt_md(i8* noundef nonnull %digest.0, %struct.evp_md_st** noundef nonnull %md) #10
  %tobool266.not = icmp eq i32 %call265, 0
  br i1 %tobool266.not, label %if.then267, label %if.end268

if.then267:                                       ; preds = %if.then264
  call void @ERR_clear_error() #10
  br label %opthelp

if.end268:                                        ; preds = %if.then264
  %32 = load %struct.evp_md_st*, %struct.evp_md_st** %md, align 8, !tbaa !3
  call void @EVP_MD_free(%struct.evp_md_st* noundef %32) #10
  br label %if.end275

if.else269:                                       ; preds = %if.end262
  %33 = load %struct.conf_st*, %struct.conf_st** @req_conf, align 8, !tbaa !3
  %34 = load i8*, i8** @section, align 8, !tbaa !3
  %call270 = call i8* @NCONF_get_string(%struct.conf_st* noundef %33, i8* noundef %34, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.123, i64 0, i64 0)) #10
  %cmp271 = icmp eq i8* %call270, null
  br i1 %cmp271, label %if.then272, label %if.end275

if.then272:                                       ; preds = %if.else269
  call void @ERR_clear_error() #10
  br label %if.end275

if.end275:                                        ; preds = %if.else269, %if.then272, %if.end268
  %digest.2 = phi i8* [ %digest.0, %if.end268 ], [ null, %if.then272 ], [ %call270, %if.else269 ]
  %cmp276 = icmp eq i8* %extensions.0, null
  br i1 %cmp276, label %if.then277, label %if.then284

if.then277:                                       ; preds = %if.end275
  %35 = load %struct.conf_st*, %struct.conf_st** @req_conf, align 8, !tbaa !3
  %36 = load i8*, i8** @section, align 8, !tbaa !3
  %call278 = call i8* @NCONF_get_string(%struct.conf_st* noundef %35, i8* noundef %36, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.124, i64 0, i64 0)) #10
  %cmp279 = icmp eq i8* %call278, null
  br i1 %cmp279, label %if.end282, label %if.then284

if.end282:                                        ; preds = %if.then277
  call void @ERR_clear_error() #10
  br label %if.end290

if.then284:                                       ; preds = %if.then277, %if.end275
  %extensions.2.ph = phi i8* [ %extensions.0, %if.end275 ], [ %call278, %if.then277 ]
  %37 = bitcast %struct.v3_ext_ctx* %ctx to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %37) #9
  call void @X509V3_set_ctx(%struct.v3_ext_ctx* noundef nonnull %ctx, %struct.x509_st* noundef null, %struct.x509_st* noundef null, %struct.X509_req_st* noundef null, %struct.X509_crl_st* noundef null, i32 noundef 1) #10
  %38 = load %struct.conf_st*, %struct.conf_st** @req_conf, align 8, !tbaa !3
  call void @X509V3_set_nconf(%struct.v3_ext_ctx* noundef nonnull %ctx, %struct.conf_st* noundef %38) #10
  %39 = load %struct.conf_st*, %struct.conf_st** @req_conf, align 8, !tbaa !3
  %call285 = call i32 @X509V3_EXT_add_nconf(%struct.conf_st* noundef %39, %struct.v3_ext_ctx* noundef nonnull %ctx, i8* noundef nonnull %extensions.2.ph, %struct.x509_st* noundef null) #10
  %tobool286.not = icmp eq i32 %call285, 0
  br i1 %tobool286.not, label %cleanup, label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then284
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %37) #9
  br label %if.end290

cleanup:                                          ; preds = %if.then284
  %40 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call288 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %40, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.125, i64 0, i64 0), i8* noundef nonnull %extensions.2.ph) #10
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %37) #9
  br label %if.then937

if.end290:                                        ; preds = %cleanup.thread, %if.end282
  %cmp283.not1385 = phi i1 [ true, %if.end282 ], [ false, %cleanup.thread ]
  %extensions.21382 = phi i8* [ null, %if.end282 ], [ %extensions.2.ph, %cleanup.thread ]
  %41 = load %struct.conf_st*, %struct.conf_st** @addext_conf, align 8, !tbaa !3
  %cmp291.not = icmp eq %struct.conf_st* %41, null
  br i1 %cmp291.not, label %if.end302, label %if.then292

if.then292:                                       ; preds = %if.end290
  %42 = bitcast %struct.v3_ext_ctx* %ctx293 to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %42) #9
  call void @X509V3_set_ctx(%struct.v3_ext_ctx* noundef nonnull %ctx293, %struct.x509_st* noundef null, %struct.x509_st* noundef null, %struct.X509_req_st* noundef null, %struct.X509_crl_st* noundef null, i32 noundef 1) #10
  %43 = load %struct.conf_st*, %struct.conf_st** @addext_conf, align 8, !tbaa !3
  call void @X509V3_set_nconf(%struct.v3_ext_ctx* noundef nonnull %ctx293, %struct.conf_st* noundef %43) #10
  %44 = load %struct.conf_st*, %struct.conf_st** @addext_conf, align 8, !tbaa !3
  %call294 = call i32 @X509V3_EXT_add_nconf(%struct.conf_st* noundef %44, %struct.v3_ext_ctx* noundef nonnull %ctx293, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.126, i64 0, i64 0), %struct.x509_st* noundef null) #10
  %tobool295.not = icmp eq i32 %call294, 0
  br i1 %tobool295.not, label %cleanup299, label %cleanup299.thread

cleanup299.thread:                                ; preds = %if.then292
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %42) #9
  br label %if.end302

cleanup299:                                       ; preds = %if.then292
  %45 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call297 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %45, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.127, i64 0, i64 0)) #10
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %42) #9
  br label %if.then937

if.end302:                                        ; preds = %cleanup299.thread, %if.end290
  %46 = load i8*, i8** %passin, align 8, !tbaa !3
  %cmp303 = icmp eq i8* %46, null
  br i1 %cmp303, label %if.then304, label %if.end309

if.then304:                                       ; preds = %if.end302
  %47 = load %struct.conf_st*, %struct.conf_st** @req_conf, align 8, !tbaa !3
  %48 = load i8*, i8** @section, align 8, !tbaa !3
  %call305 = call i8* @NCONF_get_string(%struct.conf_st* noundef %47, i8* noundef %48, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.128, i64 0, i64 0)) #10
  store i8* %call305, i8** %passin, align 8, !tbaa !3
  %cmp306 = icmp eq i8* %call305, null
  br i1 %cmp306, label %if.then307, label %if.end309

if.then307:                                       ; preds = %if.then304
  call void @ERR_clear_error() #10
  br label %if.end309

if.end309:                                        ; preds = %if.then304, %if.then307, %if.end302
  %nofree_passin.0 = phi i8* [ null, %if.then307 ], [ %call305, %if.then304 ], [ null, %if.end302 ]
  %49 = load i8*, i8** %passout, align 8, !tbaa !3
  %cmp310 = icmp eq i8* %49, null
  br i1 %cmp310, label %if.then311, label %if.end316

if.then311:                                       ; preds = %if.end309
  %50 = load %struct.conf_st*, %struct.conf_st** @req_conf, align 8, !tbaa !3
  %51 = load i8*, i8** @section, align 8, !tbaa !3
  %call312 = call i8* @NCONF_get_string(%struct.conf_st* noundef %50, i8* noundef %51, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.129, i64 0, i64 0)) #10
  store i8* %call312, i8** %passout, align 8, !tbaa !3
  %cmp313 = icmp eq i8* %call312, null
  br i1 %cmp313, label %if.then314, label %if.end316

if.then314:                                       ; preds = %if.then311
  call void @ERR_clear_error() #10
  br label %if.end316

if.end316:                                        ; preds = %if.then311, %if.then314, %if.end309
  %nofree_passout.0 = phi i8* [ null, %if.then314 ], [ %call312, %if.then311 ], [ null, %if.end309 ]
  %52 = load %struct.conf_st*, %struct.conf_st** @req_conf, align 8, !tbaa !3
  %53 = load i8*, i8** @section, align 8, !tbaa !3
  %call317 = call i8* @NCONF_get_string(%struct.conf_st* noundef %52, i8* noundef %53, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.130, i64 0, i64 0)) #10
  %cond1368 = icmp eq i8* %call317, null
  br i1 %cond1368, label %if.then319, label %land.lhs.true322

if.then319:                                       ; preds = %if.end316
  call void @ERR_clear_error() #10
  br label %if.end327

land.lhs.true322:                                 ; preds = %if.end316
  %call323 = call i32 @ASN1_STRING_set_default_mask_asc(i8* noundef nonnull %call317) #10
  %tobool324.not = icmp eq i32 %call323, 0
  br i1 %tobool324.not, label %if.then325, label %if.end327

if.then325:                                       ; preds = %land.lhs.true322
  %54 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call326 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %54, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.131, i64 0, i64 0), i8* noundef nonnull %call317) #10
  br label %if.then937

if.end327:                                        ; preds = %if.then319, %land.lhs.true322
  %cmp328.not = icmp eq i64 %chtype.0, 4096
  br i1 %cmp328.not, label %if.end339, label %if.then329

if.then329:                                       ; preds = %if.end327
  %55 = load %struct.conf_st*, %struct.conf_st** @req_conf, align 8, !tbaa !3
  %56 = load i8*, i8** @section, align 8, !tbaa !3
  %call330 = call i8* @NCONF_get_string(%struct.conf_st* noundef %55, i8* noundef %56, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0)) #10
  %cmp331 = icmp eq i8* %call330, null
  br i1 %cmp331, label %if.then332, label %if.else333

if.then332:                                       ; preds = %if.then329
  call void @ERR_clear_error() #10
  br label %if.end339

if.else333:                                       ; preds = %if.then329
  %call334 = call i32 @strcmp(i8* noundef nonnull %call330, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.132, i64 0, i64 0)) #12
  %cmp335 = icmp eq i32 %call334, 0
  %spec.select1362 = select i1 %cmp335, i64 4096, i64 4097
  br label %if.end339

if.end339:                                        ; preds = %if.else333, %if.then332, %if.end327
  %chtype.2 = phi i64 [ 4097, %if.then332 ], [ 4096, %if.end327 ], [ %spec.select1362, %if.else333 ]
  %cmp340 = icmp eq i8* %req_exts.0, null
  br i1 %cmp340, label %if.then341, label %if.then348

if.then341:                                       ; preds = %if.end339
  %57 = load %struct.conf_st*, %struct.conf_st** @req_conf, align 8, !tbaa !3
  %58 = load i8*, i8** @section, align 8, !tbaa !3
  %call342 = call i8* @NCONF_get_string(%struct.conf_st* noundef %57, i8* noundef %58, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.133, i64 0, i64 0)) #10
  %cmp343 = icmp eq i8* %call342, null
  br i1 %cmp343, label %if.end346, label %if.then348

if.end346:                                        ; preds = %if.then341
  call void @ERR_clear_error() #10
  br label %if.end358

if.then348:                                       ; preds = %if.then341, %if.end339
  %req_exts.2.ph = phi i8* [ %req_exts.0, %if.end339 ], [ %call342, %if.then341 ]
  %59 = bitcast %struct.v3_ext_ctx* %ctx349 to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %59) #9
  call void @X509V3_set_ctx(%struct.v3_ext_ctx* noundef nonnull %ctx349, %struct.x509_st* noundef null, %struct.x509_st* noundef null, %struct.X509_req_st* noundef null, %struct.X509_crl_st* noundef null, i32 noundef 1) #10
  %60 = load %struct.conf_st*, %struct.conf_st** @req_conf, align 8, !tbaa !3
  call void @X509V3_set_nconf(%struct.v3_ext_ctx* noundef nonnull %ctx349, %struct.conf_st* noundef %60) #10
  %61 = load %struct.conf_st*, %struct.conf_st** @req_conf, align 8, !tbaa !3
  %call350 = call i32 @X509V3_EXT_add_nconf(%struct.conf_st* noundef %61, %struct.v3_ext_ctx* noundef nonnull %ctx349, i8* noundef nonnull %req_exts.2.ph, %struct.x509_st* noundef null) #10
  %tobool351.not = icmp eq i32 %call350, 0
  br i1 %tobool351.not, label %cleanup355, label %cleanup355.thread

cleanup355.thread:                                ; preds = %if.then348
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %59) #9
  br label %if.end358

cleanup355:                                       ; preds = %if.then348
  %62 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call353 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %62, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.134, i64 0, i64 0), i8* noundef nonnull %req_exts.2.ph) #10
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %59) #9
  br label %if.then937

if.end358:                                        ; preds = %cleanup355.thread, %if.end346
  %cmp347.not1395 = phi i1 [ true, %if.end346 ], [ false, %cleanup355.thread ]
  %req_exts.21392 = phi i8* [ null, %if.end346 ], [ %req_exts.2.ph, %cleanup355.thread ]
  %cmp359.not = icmp eq i8* %keyfile.0, null
  br i1 %cmp359.not, label %if.end365, label %if.then360

if.then360:                                       ; preds = %if.end358
  %63 = load i32, i32* %keyform, align 4, !tbaa !7
  %64 = load i8*, i8** %passin, align 8, !tbaa !3
  %call361 = call %struct.evp_pkey_st* @load_key(i8* noundef nonnull %keyfile.0, i32 noundef %63, i32 noundef 0, i8* noundef %64, %struct.engine_st* noundef %e.0, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.135, i64 0, i64 0)) #10
  %cmp362 = icmp eq %struct.evp_pkey_st* %call361, null
  br i1 %cmp362, label %if.then937, label %if.end437.thread

if.end437.thread:                                 ; preds = %if.then360
  %65 = load %struct.conf_st*, %struct.conf_st** @req_conf, align 8, !tbaa !3
  %66 = load i8*, i8** @section, align 8, !tbaa !3
  call void @app_RAND_load_conf(%struct.conf_st* noundef %65, i8* noundef %66) #10
  %tobool3661399 = icmp ne i32 %spec.select, 0
  br label %land.lhs.true440

if.end365:                                        ; preds = %if.end358
  %tobool366 = icmp ne i32 %spec.select, 0
  br i1 %tobool366, label %if.then369, label %if.end425

if.then369:                                       ; preds = %if.end365
  %67 = load %struct.conf_st*, %struct.conf_st** @req_conf, align 8, !tbaa !3
  %68 = load i8*, i8** @section, align 8, !tbaa !3
  call void @app_RAND_load_conf(%struct.conf_st* noundef %67, i8* noundef %68) #10
  %69 = load %struct.conf_st*, %struct.conf_st** @req_conf, align 8, !tbaa !3
  %70 = load i8*, i8** @section, align 8, !tbaa !3
  %call370 = call i32 @NCONF_get_number_e(%struct.conf_st* noundef %69, i8* noundef %70, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.136, i64 0, i64 0), i64* noundef nonnull %newkey_len) #10
  %tobool371.not = icmp eq i32 %call370, 0
  br i1 %tobool371.not, label %if.then372, label %if.end373

if.then372:                                       ; preds = %if.then369
  store i64 2048, i64* %newkey_len, align 8, !tbaa !9
  br label %if.end373

if.end373:                                        ; preds = %if.then372, %if.then369
  %call374 = call fastcc %struct.evp_pkey_ctx_st* @set_keygen_ctx(i8* noundef %keyalg.0, i8** noundef nonnull %keyalgstr, i64* noundef nonnull %newkey_len, %struct.engine_st* noundef %gen_eng.0) #11
  %cmp375 = icmp eq %struct.evp_pkey_ctx_st* %call374, null
  br i1 %cmp375, label %if.then937, label %if.end377

if.end377:                                        ; preds = %if.end373
  %71 = load i64, i64* %newkey_len, align 8, !tbaa !9
  %cmp378 = icmp slt i64 %71, 512
  br i1 %cmp378, label %land.lhs.true379, label %if.end390

land.lhs.true379:                                 ; preds = %if.end377
  %call380 = call i32 @EVP_PKEY_CTX_is_a(%struct.evp_pkey_ctx_st* noundef nonnull %call374, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.137, i64 0, i64 0)) #10
  %tobool381.not = icmp eq i32 %call380, 0
  br i1 %tobool381.not, label %lor.lhs.false382, label %if.then388

lor.lhs.false382:                                 ; preds = %land.lhs.true379
  %call383 = call i32 @EVP_PKEY_CTX_is_a(%struct.evp_pkey_ctx_st* noundef nonnull %call374, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.138, i64 0, i64 0)) #10
  %tobool384.not = icmp eq i32 %call383, 0
  br i1 %tobool384.not, label %lor.lhs.false385, label %if.then388

lor.lhs.false385:                                 ; preds = %lor.lhs.false382
  %call386 = call i32 @EVP_PKEY_CTX_is_a(%struct.evp_pkey_ctx_st* noundef nonnull %call374, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.139, i64 0, i64 0)) #10
  %tobool387.not = icmp eq i32 %call386, 0
  br i1 %tobool387.not, label %if.end390thread-pre-split, label %if.then388

if.then388:                                       ; preds = %lor.lhs.false385, %lor.lhs.false382, %land.lhs.true379
  %72 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %73 = load i64, i64* %newkey_len, align 8, !tbaa !9
  %call389 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %72, i8* noundef getelementptr inbounds ([70 x i8], [70 x i8]* @.str.140, i64 0, i64 0), i32 noundef 512, i64 noundef %73) #10
  br label %if.then937

if.end390thread-pre-split:                        ; preds = %lor.lhs.false385
  %.pr = load i64, i64* %newkey_len, align 8, !tbaa !9
  br label %if.end390

if.end390:                                        ; preds = %if.end390thread-pre-split, %if.end377
  %74 = phi i64 [ %.pr, %if.end390thread-pre-split ], [ %71, %if.end377 ]
  %cmp391 = icmp sgt i64 %74, 16384
  br i1 %cmp391, label %land.lhs.true392, label %if.end400

land.lhs.true392:                                 ; preds = %if.end390
  %call393 = call i32 @EVP_PKEY_CTX_is_a(%struct.evp_pkey_ctx_st* noundef nonnull %call374, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.137, i64 0, i64 0)) #10
  %tobool394.not = icmp eq i32 %call393, 0
  br i1 %tobool394.not, label %lor.lhs.false395, label %if.then398

lor.lhs.false395:                                 ; preds = %land.lhs.true392
  %call396 = call i32 @EVP_PKEY_CTX_is_a(%struct.evp_pkey_ctx_st* noundef nonnull %call374, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.138, i64 0, i64 0)) #10
  %tobool397.not = icmp eq i32 %call396, 0
  br i1 %tobool397.not, label %if.end400, label %if.then398

if.then398:                                       ; preds = %lor.lhs.false395, %land.lhs.true392
  %75 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %76 = load i64, i64* %newkey_len, align 8, !tbaa !9
  %call399 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %75, i8* noundef getelementptr inbounds ([145 x i8], [145 x i8]* @.str.141, i64 0, i64 0), i32 noundef 16384, i64 noundef %76) #10
  br label %if.end400

if.end400:                                        ; preds = %if.then398, %lor.lhs.false395, %if.end390
  %call401 = call i32 @EVP_PKEY_CTX_is_a(%struct.evp_pkey_ctx_st* noundef nonnull %call374, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.139, i64 0, i64 0)) #10
  %tobool402 = icmp ne i32 %call401, 0
  %77 = load i64, i64* %newkey_len, align 8
  %cmp404 = icmp sgt i64 %77, 10000
  %or.cond1020 = select i1 %tobool402, i1 %cmp404, i1 false
  br i1 %or.cond1020, label %if.then405, label %if.end407

if.then405:                                       ; preds = %if.end400
  %78 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call406 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %78, i8* noundef getelementptr inbounds ([145 x i8], [145 x i8]* @.str.142, i64 0, i64 0), i32 noundef 10000, i64 noundef %77) #10
  br label %if.end407

if.end407:                                        ; preds = %if.then405, %if.end400
  %cmp408.not = icmp eq %struct.stack_st_OPENSSL_STRING* %pkeyopts.0, null
  br i1 %cmp408.not, label %if.end423, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end407
  %call410 = call fastcc %struct.stack_st* @ossl_check_const_OPENSSL_STRING_sk_type(%struct.stack_st_OPENSSL_STRING* noundef nonnull %pkeyopts.0) #11
  %call4111962 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call410) #10
  %cmp4121963 = icmp sgt i32 %call4111962, 0
  br i1 %cmp4121963, label %for.body, label %if.end423

for.cond:                                         ; preds = %for.body
  %call411 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call410) #10
  %cmp412 = icmp slt i32 %inc, %call411
  br i1 %cmp412, label %for.body, label %if.end423, !llvm.loop !13

for.body:                                         ; preds = %for.cond.preheader, %for.cond
  %i.01964 = phi i32 [ %inc, %for.cond ], [ 0, %for.cond.preheader ]
  %call414 = call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call410, i32 noundef %i.01964) #10
  %call415 = call i32 @pkey_ctrl_string(%struct.evp_pkey_ctx_st* noundef nonnull %call374, i8* noundef %call414) #10
  %cmp416 = icmp slt i32 %call415, 1
  %inc = add nuw nsw i32 %i.01964, 1
  br i1 %cmp416, label %cleanup420, label %for.cond

cleanup420:                                       ; preds = %for.body
  %79 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call418 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %79, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.143, i64 0, i64 0), i8* noundef %call414) #10
  br label %if.then937

if.end423:                                        ; preds = %for.cond, %for.cond.preheader, %if.end407
  call void @EVP_PKEY_CTX_set_cb(%struct.evp_pkey_ctx_st* noundef nonnull %call374, i32 (%struct.evp_pkey_ctx_st*)* noundef nonnull @genpkey_cb) #10
  %80 = load i8*, i8** bitcast (%struct.bio_st** @bio_err to i8**), align 8, !tbaa !3
  call void @EVP_PKEY_CTX_set_app_data(%struct.evp_pkey_ctx_st* noundef nonnull %call374, i8* noundef %80) #10
  %81 = load i8*, i8** %keyalgstr, align 8, !tbaa !3
  %82 = load i64, i64* %newkey_len, align 8, !tbaa !9
  %conv = trunc i64 %82 to i32
  %call424 = call %struct.evp_pkey_st* @app_keygen(%struct.evp_pkey_ctx_st* noundef nonnull %call374, i8* noundef %81, i32 noundef %conv, i32 noundef %verbose.0) #10
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef nonnull %call374) #10
  br label %if.end425

if.end425:                                        ; preds = %if.end423, %if.end365
  %83 = phi i8* [ %81, %if.end423 ], [ null, %if.end365 ]
  %pkey.1 = phi %struct.evp_pkey_st* [ %call424, %if.end423 ], [ null, %if.end365 ]
  %cmp426 = icmp eq i8* %keyout.0, null
  br i1 %cmp426, label %if.then431, label %if.end437

if.then431:                                       ; preds = %if.end425
  %84 = load %struct.conf_st*, %struct.conf_st** @req_conf, align 8, !tbaa !3
  %85 = load i8*, i8** @section, align 8, !tbaa !3
  %call432 = call i8* @NCONF_get_string(%struct.conf_st* noundef %84, i8* noundef %85, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.144, i64 0, i64 0)) #10
  %cmp433 = icmp eq i8* %call432, null
  br i1 %cmp433, label %if.then435, label %if.end437

if.then435:                                       ; preds = %if.then431
  call void @ERR_clear_error() #10
  br label %if.end437

if.end437:                                        ; preds = %if.then431, %if.then435, %if.end425
  %keyout.2 = phi i8* [ null, %if.then435 ], [ %call432, %if.then431 ], [ %keyout.0, %if.end425 ]
  %cmp438.not = icmp eq %struct.evp_pkey_st* %pkey.1, null
  br i1 %cmp438.not, label %if.end500, label %land.lhs.true440

land.lhs.true440:                                 ; preds = %if.end437.thread, %if.end437
  %86 = phi i8* [ null, %if.end437.thread ], [ %83, %if.end437 ]
  %keyout.21424 = phi i8* [ %keyout.0, %if.end437.thread ], [ %keyout.2, %if.end437 ]
  %tobool366140214081422 = phi i1 [ %tobool3661399, %if.end437.thread ], [ %tobool366, %if.end437 ]
  %pkey.114091421 = phi %struct.evp_pkey_st* [ %call361, %if.end437.thread ], [ %pkey.1, %if.end437 ]
  %cmp444 = icmp ne i8* %keyout.21424, null
  %or.cond1022 = select i1 %cmp359.not, i1 true, i1 %cmp444
  br i1 %or.cond1022, label %if.then446, label %if.end500

if.then446:                                       ; preds = %land.lhs.true440
  %tobool447.not = icmp eq i32 %verbose.0, 0
  br i1 %tobool447.not, label %if.end457, label %if.then448

if.then448:                                       ; preds = %if.then446
  %87 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call449 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %87, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.145, i64 0, i64 0)) #10
  %cmp450 = icmp eq i8* %keyout.21424, null
  %88 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  br i1 %cmp450, label %if.then452, label %if.else454

if.then452:                                       ; preds = %if.then448
  %call453 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %88, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.146, i64 0, i64 0)) #10
  br label %if.end457

if.else454:                                       ; preds = %if.then448
  %call455 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %88, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.147, i64 0, i64 0), i8* noundef nonnull %keyout.21424) #10
  br label %if.end457

if.end457:                                        ; preds = %if.then452, %if.else454, %if.then446
  %keyout.21425 = phi i8* [ null, %if.then452 ], [ %keyout.21424, %if.else454 ], [ %keyout.21424, %if.then446 ]
  %89 = load i32, i32* %outformat, align 4, !tbaa !7
  %call458 = call %struct.bio_st* @bio_open_owner(i8* noundef %keyout.21425, i32 noundef %89, i32 noundef %spec.select) #10
  %cmp459 = icmp eq %struct.bio_st* %call458, null
  br i1 %cmp459, label %if.then937, label %if.end462

if.end462:                                        ; preds = %if.end457
  %90 = load %struct.conf_st*, %struct.conf_st** @req_conf, align 8, !tbaa !3
  %91 = load i8*, i8** @section, align 8, !tbaa !3
  %call463 = call i8* @NCONF_get_string(%struct.conf_st* noundef %90, i8* noundef %91, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.148, i64 0, i64 0)) #10
  %cmp464 = icmp eq i8* %call463, null
  br i1 %cmp464, label %if.then466, label %land.lhs.true475

if.then466:                                       ; preds = %if.end462
  call void @ERR_clear_error() #10
  %92 = load %struct.conf_st*, %struct.conf_st** @req_conf, align 8, !tbaa !3
  %93 = load i8*, i8** @section, align 8, !tbaa !3
  %call467 = call i8* @NCONF_get_string(%struct.conf_st* noundef %92, i8* noundef %93, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.149, i64 0, i64 0)) #10
  %cmp468 = icmp eq i8* %call467, null
  br i1 %cmp468, label %if.end472, label %land.lhs.true475

if.end472:                                        ; preds = %if.then466
  call void @ERR_clear_error() #10
  br label %if.end480

land.lhs.true475:                                 ; preds = %if.then466, %if.end462
  %p.0.ph = phi i8* [ %call463, %if.end462 ], [ %call467, %if.then466 ]
  %call476 = call i32 @strcmp(i8* noundef nonnull %p.0.ph, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.150, i64 0, i64 0)) #12
  %cmp477 = icmp eq i32 %call476, 0
  %spec.select1363 = select i1 %cmp477, %struct.evp_cipher_st* null, %struct.evp_cipher_st* %call
  br label %if.end480

if.end480:                                        ; preds = %if.end472, %land.lhs.true475
  %cipher.0 = phi %struct.evp_cipher_st* [ %call, %if.end472 ], [ %spec.select1363, %land.lhs.true475 ]
  %tobool481.not = icmp eq i32 %noenc.0, 0
  %spec.select1364 = select i1 %tobool481.not, %struct.evp_cipher_st* %cipher.0, %struct.evp_cipher_st* null
  %94 = load i8*, i8** %passout, align 8, !tbaa !3
  %call4841965 = call i32 @PEM_write_bio_PrivateKey(%struct.bio_st* noundef nonnull %call458, %struct.evp_pkey_st* noundef nonnull %pkey.114091421, %struct.evp_cipher_st* noundef %spec.select1364, i8* noundef null, i32 noundef 0, i32 (i8*, i32, i32, i8*)* noundef null, i8* noundef %94) #10
  %tobool485.not1966 = icmp eq i32 %call4841965, 0
  br i1 %tobool485.not1966, label %if.then486, label %if.end497

if.then486:                                       ; preds = %if.end480, %if.then494
  %i.11967 = phi i32 [ %inc495, %if.then494 ], [ 0, %if.end480 ]
  %call487 = call i64 @ERR_peek_error() #10
  %call488 = call fastcc i32 @ERR_GET_REASON(i64 noundef %call487) #11
  %cmp489 = icmp eq i32 %call488, 109
  %cmp492 = icmp ult i32 %i.11967, 3
  %or.cond1023 = select i1 %cmp489, i1 %cmp492, i1 false
  br i1 %or.cond1023, label %if.then494, label %if.then937

if.then494:                                       ; preds = %if.then486
  call void @ERR_clear_error() #10
  %inc495 = add nuw nsw i32 %i.11967, 1
  %95 = load i8*, i8** %passout, align 8, !tbaa !3
  %call484 = call i32 @PEM_write_bio_PrivateKey(%struct.bio_st* noundef nonnull %call458, %struct.evp_pkey_st* noundef %pkey.114091421, %struct.evp_cipher_st* noundef %spec.select1364, i8* noundef null, i32 noundef 0, i32 (i8*, i32, i32, i8*)* noundef null, i8* noundef %95) #10
  %tobool485.not = icmp eq i32 %call484, 0
  br i1 %tobool485.not, label %if.then486, label %if.end497

if.end497:                                        ; preds = %if.then494, %if.end480
  %call498 = call i32 @BIO_free(%struct.bio_st* noundef nonnull %call458) #10
  %96 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call499 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %96, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.151, i64 0, i64 0)) #10
  br label %if.end500

if.end500:                                        ; preds = %land.lhs.true440, %if.end497, %if.end437
  %97 = phi i8* [ %86, %land.lhs.true440 ], [ %86, %if.end497 ], [ %83, %if.end437 ]
  %cmp438.not1428 = phi i1 [ false, %land.lhs.true440 ], [ false, %if.end497 ], [ true, %if.end437 ]
  %keyout.21426 = phi i8* [ null, %land.lhs.true440 ], [ %keyout.21425, %if.end497 ], [ %keyout.2, %if.end437 ]
  %tobool366140214081423 = phi i1 [ %tobool366140214081422, %land.lhs.true440 ], [ %tobool366140214081422, %if.end497 ], [ %tobool366, %if.end437 ]
  %pkey.11410 = phi %struct.evp_pkey_st* [ %pkey.114091421, %land.lhs.true440 ], [ %pkey.114091421, %if.end497 ], [ null, %if.end437 ]
  %cmp501.not = icmp eq i8* %subj.0, null
  br i1 %cmp501.not, label %if.end509, label %land.lhs.true503

land.lhs.true503:                                 ; preds = %if.end500
  %conv504 = trunc i64 %chtype.2 to i32
  %call505 = call %struct.X509_name_st* @parse_name(i8* noundef nonnull %subj.0, i32 noundef %conv504, i32 noundef 1, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.37, i64 0, i64 0)) #10
  %cmp506 = icmp eq %struct.X509_name_st* %call505, null
  br i1 %cmp506, label %if.then937, label %if.end509

if.end509:                                        ; preds = %land.lhs.true503, %if.end500
  %fsubj.0 = phi %struct.X509_name_st* [ %call505, %land.lhs.true503 ], [ null, %if.end500 ]
  br i1 %tobool366140214081423, label %if.end517, label %if.then511

if.then511:                                       ; preds = %if.end509
  %98 = load i32, i32* %informat, align 4, !tbaa !7
  %call512 = call %struct.X509_req_st* @load_csr(i8* noundef %infile.0, i32 noundef %98, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.152, i64 0, i64 0)) #10
  %cmp513 = icmp eq %struct.X509_req_st* %call512, null
  br i1 %cmp513, label %if.then937, label %if.end517

if.end517:                                        ; preds = %if.then511, %if.end509
  %req.0 = phi %struct.X509_req_st* [ null, %if.end509 ], [ %call512, %if.then511 ]
  %cmp518 = icmp eq i8* %CAkeyfile.0, null
  %spec.select1365 = select i1 %cmp518, i8* %CAfile.0, i8* %CAkeyfile.0
  %cmp522.not = icmp eq i8* %spec.select1365, null
  %cmp539.not = icmp eq i8* %CAfile.0, null
  br i1 %cmp522.not, label %if.end538, label %if.then524

if.then524:                                       ; preds = %if.end517
  br i1 %cmp539.not, label %if.end538.thread, label %if.else529

if.end538.thread:                                 ; preds = %if.then524
  %99 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call528 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %99, i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.153, i64 0, i64 0)) #10
  br label %if.end552

if.else529:                                       ; preds = %if.then524
  %100 = load i8*, i8** %passin, align 8, !tbaa !3
  %cmp530.not = icmp eq i8* %spec.select1365, %CAfile.0
  %cond = select i1 %cmp530.not, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.155, i64 0, i64 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.154, i64 0, i64 0)
  %call532 = call %struct.evp_pkey_st* @load_key(i8* noundef nonnull %spec.select1365, i32 noundef 0, i32 noundef 0, i8* noundef %100, %struct.engine_st* noundef %e.0, i8* noundef %cond) #10
  %cmp533 = icmp eq %struct.evp_pkey_st* %call532, null
  br i1 %cmp533, label %if.then937, label %if.then541

if.end538:                                        ; preds = %if.end517
  br i1 %cmp539.not, label %if.end552, label %if.then541

if.then541:                                       ; preds = %if.else529, %if.end538
  %CAkey.01444 = phi %struct.evp_pkey_st* [ null, %if.end538 ], [ %call532, %if.else529 ]
  %101 = load i8*, i8** %passin, align 8, !tbaa !3
  %call542 = call %struct.x509_st* @load_cert_pass(i8* noundef nonnull %CAfile.0, i32 noundef 0, i32 noundef 1, i8* noundef %101, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.156, i64 0, i64 0)) #10
  %cmp543 = icmp eq %struct.x509_st* %call542, null
  br i1 %cmp543, label %if.then937, label %if.end546

if.end546:                                        ; preds = %if.then541
  %call547 = call i32 @X509_check_private_key(%struct.x509_st* noundef nonnull %call542, %struct.evp_pkey_st* noundef %CAkey.01444) #10
  %tobool548.not = icmp eq i32 %call547, 0
  br i1 %tobool548.not, label %if.then549, label %if.end552

if.then549:                                       ; preds = %if.end546
  %102 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call550 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %102, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.157, i64 0, i64 0)) #10
  br label %if.then937

if.end552:                                        ; preds = %if.end538.thread, %if.end546, %if.end538
  %CAkey.01435 = phi %struct.evp_pkey_st* [ %CAkey.01444, %if.end546 ], [ null, %if.end538 ], [ null, %if.end538.thread ]
  %CAcert.0 = phi %struct.x509_st* [ %call542, %if.end546 ], [ null, %if.end538 ], [ null, %if.end538.thread ]
  %or.cond1024 = select i1 %tobool366140214081423, i1 true, i1 %tobool198
  br i1 %or.cond1024, label %if.then556, label %if.end741

if.then556:                                       ; preds = %if.end552
  br i1 %cmp438.not1428, label %if.then559, label %if.end561

if.then559:                                       ; preds = %if.then556
  %103 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call560 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %103, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.158, i64 0, i64 0)) #10
  br label %if.then937

if.end561:                                        ; preds = %if.then556
  %cmp562 = icmp eq %struct.X509_req_st* %req.0, null
  br i1 %cmp562, label %if.then564, label %if.end578

if.then564:                                       ; preds = %if.end561
  %call565 = call %struct.ossl_lib_ctx_st* @app_get0_libctx() #10
  %call566 = call i8* @app_get0_propq() #10
  %call567 = call %struct.X509_req_st* @X509_REQ_new_ex(%struct.ossl_lib_ctx_st* noundef %call565, i8* noundef %call566) #10
  %cmp568 = icmp eq %struct.X509_req_st* %call567, null
  br i1 %cmp568, label %if.then937, label %if.end571

if.end571:                                        ; preds = %if.then564
  %lnot = xor i1 %tobool198, true
  %lnot.ext = zext i1 %lnot to i32
  %call573 = call fastcc i32 @make_REQ(%struct.X509_req_st* noundef nonnull %call567, %struct.evp_pkey_st* noundef %pkey.11410, %struct.X509_name_st* noundef %fsubj.0, i32 noundef %lnot.ext, i64 noundef %chtype.2) #11
  %tobool574.not = icmp eq i32 %call573, 0
  br i1 %tobool574.not, label %if.then575, label %if.end578

if.then575:                                       ; preds = %if.end571
  %104 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call576 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %104, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.159, i64 0, i64 0)) #10
  br label %if.then937

if.end578:                                        ; preds = %if.end571, %if.end561
  %req.1 = phi %struct.X509_req_st* [ %call567, %if.end571 ], [ %req.0, %if.end561 ]
  br i1 %tobool198, label %if.then580, label %if.else715

if.then580:                                       ; preds = %if.end578
  %call581 = call %struct.evp_pkey_st* @X509_REQ_get0_pubkey(%struct.X509_req_st* noundef nonnull %req.1) #10
  %cmp582.not = icmp eq %struct.x509_st* %CAcert.0, null
  %cond584 = select i1 %cmp582.not, %struct.evp_pkey_st* %pkey.11410, %struct.evp_pkey_st* %CAkey.01435
  %105 = bitcast %struct.v3_ext_ctx* %ext_ctx to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %105) #9
  br i1 %cmp582.not, label %cond.false589, label %cond.true587

cond.true587:                                     ; preds = %if.then580
  %call588 = call %struct.X509_name_st* @X509_get_subject_name(%struct.x509_st* noundef nonnull %CAcert.0) #10
  br label %cond.end591

cond.false589:                                    ; preds = %if.then580
  %call590 = call %struct.X509_name_st* @X509_REQ_get_subject_name(%struct.X509_req_st* noundef nonnull %req.1) #10
  br label %cond.end591

cond.end591:                                      ; preds = %cond.false589, %cond.true587
  %cond592 = phi %struct.X509_name_st* [ %call588, %cond.true587 ], [ %call590, %cond.false589 ]
  %cmp593.not = icmp eq %struct.X509_name_st* %fsubj.0, null
  br i1 %cmp593.not, label %cond.false596, label %cond.end598

cond.false596:                                    ; preds = %cond.end591
  %call597 = call %struct.X509_name_st* @X509_REQ_get_subject_name(%struct.X509_req_st* noundef nonnull %req.1) #10
  br label %cond.end598

cond.end598:                                      ; preds = %cond.end591, %cond.false596
  %cond599 = phi %struct.X509_name_st* [ %call597, %cond.false596 ], [ %fsubj.0, %cond.end591 ]
  %call600 = call %struct.ossl_lib_ctx_st* @app_get0_libctx() #10
  %call601 = call i8* @app_get0_propq() #10
  %call602 = call %struct.x509_st* @X509_new_ex(%struct.ossl_lib_ctx_st* noundef %call600, i8* noundef %call601) #10
  %cmp603 = icmp eq %struct.x509_st* %call602, null
  br i1 %cmp603, label %cleanup708.thread, label %if.end606

if.end606:                                        ; preds = %cond.end598
  %cmp607.not = icmp eq %struct.asn1_string_st* %serial.0, null
  br i1 %cmp607.not, label %if.else614, label %if.then609

if.then609:                                       ; preds = %if.end606
  %call610 = call i32 @X509_set_serialNumber(%struct.x509_st* noundef nonnull %call602, %struct.asn1_string_st* noundef nonnull %serial.0) #10
  %tobool611.not = icmp eq i32 %call610, 0
  br i1 %tobool611.not, label %cleanup708.thread, label %if.end620

if.else614:                                       ; preds = %if.end606
  %call615 = call %struct.asn1_string_st* @X509_get_serialNumber(%struct.x509_st* noundef nonnull %call602) #10
  %call616 = call i32 @rand_serial(%struct.bignum_st* noundef null, %struct.asn1_string_st* noundef %call615) #10
  %tobool617.not = icmp eq i32 %call616, 0
  br i1 %tobool617.not, label %cleanup708.thread, label %if.end620

if.end620:                                        ; preds = %if.else614, %if.then609
  %call621 = call i32 @X509_set_issuer_name(%struct.x509_st* noundef nonnull %call602, %struct.X509_name_st* noundef %cond592) #10
  %tobool622.not = icmp eq i32 %call621, 0
  br i1 %tobool622.not, label %cleanup708.thread, label %if.end624

if.end624:                                        ; preds = %if.end620
  %cmp625 = icmp eq i32 %days.0, -2
  %spec.store.select = select i1 %cmp625, i32 30, i32 %days.0
  %call629 = call i32 @set_cert_times(%struct.x509_st* noundef nonnull %call602, i8* noundef null, i8* noundef null, i32 noundef %spec.store.select) #10
  %tobool630.not = icmp eq i32 %call629, 0
  br i1 %tobool630.not, label %cleanup708.thread, label %if.end632

if.end632:                                        ; preds = %if.end624
  %call633 = call i32 @X509_set_subject_name(%struct.x509_st* noundef nonnull %call602, %struct.X509_name_st* noundef %cond599) #10
  %tobool634.not = icmp eq i32 %call633, 0
  %tobool637.not = icmp eq %struct.evp_pkey_st* %call581, null
  %or.cond1369 = select i1 %tobool634.not, i1 true, i1 %tobool637.not
  br i1 %or.cond1369, label %cleanup708.thread, label %lor.lhs.false638

lor.lhs.false638:                                 ; preds = %if.end632
  %call639 = call i32 @X509_set_pubkey(%struct.x509_st* noundef nonnull %call602, %struct.evp_pkey_st* noundef nonnull %call581) #10
  %tobool640.not = icmp eq i32 %call639, 0
  br i1 %tobool640.not, label %cleanup708.thread, label %if.end642

if.end642:                                        ; preds = %lor.lhs.false638
  %106 = load i32, i32* %ext_copy, align 4, !tbaa !7
  %cmp643 = icmp eq i32 %106, -1
  br i1 %cmp643, label %if.then645, label %if.else651

if.then645:                                       ; preds = %if.end642
  br i1 %cmp210, label %if.end657, label %if.then648

if.then648:                                       ; preds = %if.then645
  %107 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call649 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %107, i8* noundef getelementptr inbounds ([76 x i8], [76 x i8]* @.str.160, i64 0, i64 0)) #10
  br label %if.end657

if.else651:                                       ; preds = %if.end642
  %call652 = call i32 @copy_extensions(%struct.x509_st* noundef nonnull %call602, %struct.X509_req_st* noundef nonnull %req.1, i32 noundef %106) #10
  %tobool653.not = icmp eq i32 %call652, 0
  br i1 %tobool653.not, label %if.then654, label %if.end657

if.then654:                                       ; preds = %if.else651
  %108 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call655 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %108, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.161, i64 0, i64 0)) #10
  br label %cleanup708.thread

if.end657:                                        ; preds = %if.else651, %if.then645, %if.then648
  %cond663 = select i1 %cmp582.not, %struct.x509_st* %call602, %struct.x509_st* %CAcert.0
  call void @X509V3_set_ctx(%struct.v3_ext_ctx* noundef nonnull %ext_ctx, %struct.x509_st* noundef %cond663, %struct.x509_st* noundef nonnull %call602, %struct.X509_req_st* noundef null, %struct.X509_crl_st* noundef null, i32 noundef 2) #10
  br i1 %cmp582.not, label %if.then666, label %if.end678

if.then666:                                       ; preds = %if.end657
  %call667 = call i32 @X509V3_set_issuer_pkey(%struct.v3_ext_ctx* noundef nonnull %ext_ctx, %struct.evp_pkey_st* noundef %cond584) #10
  %tobool668.not = icmp eq i32 %call667, 0
  br i1 %tobool668.not, label %cleanup708.thread, label %if.end670

if.end670:                                        ; preds = %if.then666
  %call671 = call i32 @ERR_set_mark() #10
  %call672 = call i32 @X509_check_private_key(%struct.x509_st* noundef nonnull %call602, %struct.evp_pkey_st* noundef %cond584) #10
  %tobool673.not = icmp eq i32 %call672, 0
  br i1 %tobool673.not, label %if.then674, label %if.end676

if.then674:                                       ; preds = %if.end670
  %109 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call675 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %109, i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.162, i64 0, i64 0)) #10
  br label %if.end676

if.end676:                                        ; preds = %if.then674, %if.end670
  %call677 = call i32 @ERR_pop_to_mark() #10
  br label %if.end678

if.end678:                                        ; preds = %if.end676, %if.end657
  %110 = load %struct.conf_st*, %struct.conf_st** @req_conf, align 8, !tbaa !3
  call void @X509V3_set_nconf(%struct.v3_ext_ctx* noundef nonnull %ext_ctx, %struct.conf_st* noundef %110) #10
  br i1 %cmp283.not1385, label %if.end686, label %land.lhs.true681

land.lhs.true681:                                 ; preds = %if.end678
  %111 = load %struct.conf_st*, %struct.conf_st** @req_conf, align 8, !tbaa !3
  %call682 = call i32 @X509V3_EXT_add_nconf(%struct.conf_st* noundef %111, %struct.v3_ext_ctx* noundef nonnull %ext_ctx, i8* noundef nonnull %extensions.21382, %struct.x509_st* noundef nonnull %call602) #10
  %tobool683.not = icmp eq i32 %call682, 0
  br i1 %tobool683.not, label %if.then684, label %if.end686

if.then684:                                       ; preds = %land.lhs.true681
  %112 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call685 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %112, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.163, i64 0, i64 0), i8* noundef nonnull %extensions.21382) #10
  br label %cleanup708.thread

if.end686:                                        ; preds = %land.lhs.true681, %if.end678
  %113 = load %struct.conf_st*, %struct.conf_st** @addext_conf, align 8, !tbaa !3
  %cmp687.not = icmp eq %struct.conf_st* %113, null
  br i1 %cmp687.not, label %if.end694, label %land.lhs.true689

land.lhs.true689:                                 ; preds = %if.end686
  %call690 = call i32 @X509V3_EXT_add_nconf(%struct.conf_st* noundef nonnull %113, %struct.v3_ext_ctx* noundef nonnull %ext_ctx, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.126, i64 0, i64 0), %struct.x509_st* noundef nonnull %call602) #10
  %tobool691.not = icmp eq i32 %call690, 0
  br i1 %tobool691.not, label %if.then692, label %if.end694

if.then692:                                       ; preds = %land.lhs.true689
  %114 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call693 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %114, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.164, i64 0, i64 0)) #10
  br label %cleanup708.thread

if.end694:                                        ; preds = %land.lhs.true689, %if.end686
  %tobool695.not = icmp eq i32 %precert.0, 0
  br i1 %tobool695.not, label %if.end703, label %if.then696

if.then696:                                       ; preds = %if.end694
  %call697 = call i32 @X509_add1_ext_i2d(%struct.x509_st* noundef nonnull %call602, i32 noundef 952, i8* noundef null, i32 noundef 1, i64 noundef 0) #10
  %cmp698.not = icmp eq i32 %call697, 1
  br i1 %cmp698.not, label %if.end703, label %if.then700

if.then700:                                       ; preds = %if.then696
  %115 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call701 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %115, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.165, i64 0, i64 0)) #10
  br label %cleanup708.thread

if.end703:                                        ; preds = %if.then696, %if.end694
  %call704 = call i32 @do_X509_sign(%struct.x509_st* noundef nonnull %call602, %struct.evp_pkey_st* noundef %cond584, i8* noundef %digest.2, %struct.stack_st_OPENSSL_STRING* noundef %sigopts.0, %struct.v3_ext_ctx* noundef nonnull %ext_ctx) #10
  %tobool705.not = icmp eq i32 %call704, 0
  br i1 %tobool705.not, label %cleanup708.thread, label %if.end763.thread

cleanup708.thread:                                ; preds = %if.then700, %if.then692, %if.then684, %if.then654, %cond.end598, %if.then609, %if.else614, %if.end620, %if.end624, %if.end632, %lor.lhs.false638, %if.then666, %if.end703
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %105) #9
  br label %if.then937

if.else715:                                       ; preds = %if.end578
  %116 = bitcast %struct.v3_ext_ctx* %ext_ctx716 to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %116) #9
  call void @X509V3_set_ctx(%struct.v3_ext_ctx* noundef nonnull %ext_ctx716, %struct.x509_st* noundef null, %struct.x509_st* noundef null, %struct.X509_req_st* noundef nonnull %req.1, %struct.X509_crl_st* noundef null, i32 noundef 0) #10
  %117 = load %struct.conf_st*, %struct.conf_st** @req_conf, align 8, !tbaa !3
  call void @X509V3_set_nconf(%struct.v3_ext_ctx* noundef nonnull %ext_ctx716, %struct.conf_st* noundef %117) #10
  br i1 %cmp347.not1395, label %if.end724, label %land.lhs.true719

land.lhs.true719:                                 ; preds = %if.else715
  %118 = load %struct.conf_st*, %struct.conf_st** @req_conf, align 8, !tbaa !3
  %call720 = call i32 @X509V3_EXT_REQ_add_nconf(%struct.conf_st* noundef %118, %struct.v3_ext_ctx* noundef nonnull %ext_ctx716, i8* noundef nonnull %req_exts.21392, %struct.X509_req_st* noundef nonnull %req.1) #10
  %tobool721.not = icmp eq i32 %call720, 0
  br i1 %tobool721.not, label %if.then722, label %if.end724

if.then722:                                       ; preds = %land.lhs.true719
  %119 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call723 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %119, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.166, i64 0, i64 0), i8* noundef nonnull %req_exts.21392) #10
  br label %cleanup737.thread

if.end724:                                        ; preds = %land.lhs.true719, %if.else715
  %120 = load %struct.conf_st*, %struct.conf_st** @addext_conf, align 8, !tbaa !3
  %cmp725.not = icmp eq %struct.conf_st* %120, null
  br i1 %cmp725.not, label %if.end732, label %land.lhs.true727

land.lhs.true727:                                 ; preds = %if.end724
  %call728 = call i32 @X509V3_EXT_REQ_add_nconf(%struct.conf_st* noundef nonnull %120, %struct.v3_ext_ctx* noundef nonnull %ext_ctx716, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.126, i64 0, i64 0), %struct.X509_req_st* noundef nonnull %req.1) #10
  %tobool729.not = icmp eq i32 %call728, 0
  br i1 %tobool729.not, label %if.then730, label %if.end732

if.then730:                                       ; preds = %land.lhs.true727
  %121 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call731 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %121, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.164, i64 0, i64 0)) #10
  br label %cleanup737.thread

if.end732:                                        ; preds = %land.lhs.true727, %if.end724
  %call733 = call i32 @do_X509_REQ_sign(%struct.X509_req_st* noundef nonnull %req.1, %struct.evp_pkey_st* noundef %pkey.11410, i8* noundef %digest.2, %struct.stack_st_OPENSSL_STRING* noundef %sigopts.0) #10
  %tobool734.not = icmp eq i32 %call733, 0
  br i1 %tobool734.not, label %cleanup737.thread, label %cleanup737

cleanup737.thread:                                ; preds = %if.then730, %if.then722, %if.end732
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %116) #9
  br label %if.then937

cleanup737:                                       ; preds = %if.end732
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %116) #9
  br label %if.end741

if.end741:                                        ; preds = %cleanup737, %if.end552
  %req.2 = phi %struct.X509_req_st* [ %req.1, %cleanup737 ], [ %req.0, %if.end552 ]
  %or.cond1025 = select i1 %cmp501.not, i1 true, i1 %tobool366140214081423
  %or.cond1026 = select i1 %or.cond1025, i1 true, i1 %tobool198
  br i1 %or.cond1026, label %if.end763, label %if.then748

if.then748:                                       ; preds = %if.end741
  %tobool749.not = icmp eq i32 %verbose.0, 0
  br i1 %tobool749.not, label %if.end753, label %if.end753.thread

if.end753:                                        ; preds = %if.then748
  %call754 = call i32 @X509_REQ_set_subject_name(%struct.X509_req_st* noundef %req.2, %struct.X509_name_st* noundef %fsubj.0) #10
  %tobool755.not = icmp eq i32 %call754, 0
  br i1 %tobool755.not, label %if.then756, label %if.end763

if.end753.thread:                                 ; preds = %if.then748
  %call751 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef null, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.167, i64 0, i64 0)) #10
  %call752 = call %struct.X509_name_st* @X509_REQ_get_subject_name(%struct.X509_req_st* noundef %req.2) #10
  call void @print_name(%struct.bio_st* noundef null, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.168, i64 0, i64 0), %struct.X509_name_st* noundef %call752) #10
  %call7541474 = call i32 @X509_REQ_set_subject_name(%struct.X509_req_st* noundef %req.2, %struct.X509_name_st* noundef %fsubj.0) #10
  %tobool755.not1475 = icmp eq i32 %call7541474, 0
  br i1 %tobool755.not1475, label %if.then756, label %if.then760

if.then756:                                       ; preds = %if.end753.thread, %if.end753
  %122 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call757 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %122, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.169, i64 0, i64 0)) #10
  br label %if.then937

if.then760:                                       ; preds = %if.end753.thread
  %call761 = call %struct.X509_name_st* @X509_REQ_get_subject_name(%struct.X509_req_st* noundef %req.2) #10
  call void @print_name(%struct.bio_st* noundef null, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.170, i64 0, i64 0), %struct.X509_name_st* noundef %call761) #10
  br label %if.end763

if.end763:                                        ; preds = %if.end753, %if.then760, %if.end741
  %tobool764.not = icmp eq i32 %verify.0, 0
  br i1 %tobool764.not, label %if.end790, label %if.then765

if.end763.thread:                                 ; preds = %if.end703
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %105) #9
  %tobool764.not2337 = icmp eq i32 %verify.0, 0
  br i1 %tobool764.not2337, label %if.end790, label %if.end774

if.then765:                                       ; preds = %if.end763
  br i1 %cmp438.not1428, label %if.then768, label %if.end774

if.then768:                                       ; preds = %if.then765
  %call769 = call %struct.evp_pkey_st* @X509_REQ_get0_pubkey(%struct.X509_req_st* noundef %req.2) #10
  %cmp770 = icmp eq %struct.evp_pkey_st* %call769, null
  br i1 %cmp770, label %if.then937, label %if.end774

if.end774:                                        ; preds = %if.end763.thread, %if.then768, %if.then765
  %new_x509.0145923512367 = phi %struct.x509_st* [ null, %if.then768 ], [ null, %if.then765 ], [ %call602, %if.end763.thread ]
  %req.214672339 = phi %struct.X509_req_st* [ %req.2, %if.then768 ], [ %req.2, %if.then765 ], [ %req.1, %if.end763.thread ]
  %tpubkey.0 = phi %struct.evp_pkey_st* [ %call769, %if.then768 ], [ %pkey.11410, %if.then765 ], [ %pkey.11410, %if.end763.thread ]
  %call775 = call i32 @do_X509_REQ_verify(%struct.X509_req_st* noundef %req.214672339, %struct.evp_pkey_st* noundef %tpubkey.0, %struct.stack_st_OPENSSL_STRING* noundef %vfyopts.0) #10
  %cmp776 = icmp slt i32 %call775, 0
  br i1 %cmp776, label %if.then937, label %if.end779

if.end779:                                        ; preds = %if.end774
  %cmp780 = icmp eq i32 %call775, 0
  %123 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %. = select i1 %cmp780, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.171, i64 0, i64 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.172, i64 0, i64 0)
  %call783 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %123, i8* noundef %.) #10
  br label %if.end790

if.end790:                                        ; preds = %if.end779, %if.end763.thread, %if.end763
  %new_x509.014592352 = phi %struct.x509_st* [ %call602, %if.end763.thread ], [ null, %if.end763 ], [ %new_x509.0145923512367, %if.end779 ]
  %req.214672340 = phi %struct.X509_req_st* [ %req.1, %if.end763.thread ], [ %req.2, %if.end763 ], [ %req.214672339, %if.end779 ]
  %tobool791 = icmp eq i32 %noout.0, 0
  %tobool793 = icmp ne i32 %text.0, 0
  %or.cond1027 = select i1 %tobool791, i1 true, i1 %tobool793
  %tobool795 = icmp ne i32 %modulus.0, 0
  %or.cond1028 = select i1 %or.cond1027, i1 true, i1 %tobool795
  %tobool797 = icmp ne i32 %subject.0, 0
  %or.cond1029 = select i1 %or.cond1028, i1 true, i1 %tobool797
  %tobool799 = icmp ne i32 %pubkey.0, 0
  %or.cond1030 = select i1 %or.cond1029, i1 true, i1 %tobool799
  br i1 %or.cond1030, label %if.end801, label %if.end938

if.end801:                                        ; preds = %if.end790
  %cmp802 = icmp ne i8* %keyout.21426, null
  %cmp805 = icmp ne i8* %outfile.0, null
  %or.cond1031 = select i1 %cmp802, i1 %cmp805, i1 false
  br i1 %or.cond1031, label %land.end, label %land.end.thread

land.end:                                         ; preds = %if.end801
  %call807 = call i32 @strcmp(i8* noundef nonnull %keyout.21426, i8* noundef nonnull %outfile.0) #12
  %cmp808 = icmp eq i32 %call807, 0
  %spec.select1572 = select i1 %cmp808, i8 97, i8 119
  br label %land.end.thread

land.end.thread:                                  ; preds = %land.end, %if.end801
  %124 = phi i8 [ 119, %if.end801 ], [ %spec.select1572, %land.end ]
  %125 = load i32, i32* %outformat, align 4, !tbaa !7
  %call812 = call %struct.bio_st* @bio_open_default(i8* noundef %outfile.0, i8 noundef signext %124, i32 noundef %125) #10
  %cmp813 = icmp eq %struct.bio_st* %call812, null
  br i1 %cmp813, label %if.then937, label %if.end816

if.end816:                                        ; preds = %land.end.thread
  br i1 %tobool799, label %if.then818, label %if.end830

if.then818:                                       ; preds = %if.end816
  %call820 = call %struct.evp_pkey_st* @X509_REQ_get0_pubkey(%struct.X509_req_st* noundef %req.214672340) #10
  %cmp821 = icmp eq %struct.evp_pkey_st* %call820, null
  br i1 %cmp821, label %cleanup827, label %cleanup827.thread

cleanup827.thread:                                ; preds = %if.then818
  %call826 = call i32 @PEM_write_bio_PUBKEY(%struct.bio_st* noundef nonnull %call812, %struct.evp_pkey_st* noundef nonnull %call820) #10
  br label %if.end830

cleanup827:                                       ; preds = %if.then818
  %126 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call824 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %126, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.173, i64 0, i64 0)) #10
  br label %if.then937

if.end830:                                        ; preds = %cleanup827.thread, %if.end816
  br i1 %tobool793, label %if.then832, label %if.end851

if.then832:                                       ; preds = %if.end830
  %call835 = call i64 @get_nameopt() #10
  %127 = load i64, i64* %reqflag, align 8, !tbaa !9
  br i1 %tobool198, label %if.end840, label %if.end840.thread

if.end840:                                        ; preds = %if.then832
  %call836 = call i32 @X509_print_ex(%struct.bio_st* noundef nonnull %call812, %struct.x509_st* noundef %new_x509.014592352, i64 noundef %call835, i64 noundef %127) #10
  %cmp841 = icmp eq i32 %call836, 0
  br i1 %cmp841, label %if.then845, label %if.end851.thread1558

if.end840.thread:                                 ; preds = %if.then832
  %call839 = call i32 @X509_REQ_print_ex(%struct.bio_st* noundef nonnull %call812, %struct.X509_req_st* noundef %req.214672340, i64 noundef %call835, i64 noundef %127) #10
  %cmp8411481 = icmp eq i32 %call839, 0
  br i1 %cmp8411481, label %if.else847, label %if.end851.thread

if.then845:                                       ; preds = %if.end840
  %128 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call846 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %128, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.174, i64 0, i64 0)) #10
  br label %if.end938

if.else847:                                       ; preds = %if.end840.thread
  %129 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call848 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %129, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.175, i64 0, i64 0)) #10
  br label %if.end938

if.end851:                                        ; preds = %if.end830
  br i1 %tobool797, label %if.then853, label %if.end861

if.end851.thread1558:                             ; preds = %if.end840
  br i1 %tobool797, label %cond.true855, label %if.end861.thread1563

if.end851.thread:                                 ; preds = %if.end840.thread
  br i1 %tobool797, label %cond.false857, label %if.end861.thread

if.then853:                                       ; preds = %if.end851
  br i1 %tobool198, label %cond.true855, label %cond.false857

cond.true855:                                     ; preds = %if.end851.thread1558, %if.then853
  %ret.114911562 = phi i32 [ 1, %if.then853 ], [ %call836, %if.end851.thread1558 ]
  %call856 = call %struct.X509_name_st* @X509_get_subject_name(%struct.x509_st* noundef %new_x509.014592352) #10
  br label %cond.end859

cond.false857:                                    ; preds = %if.end851.thread, %if.then853
  %ret.114911495 = phi i32 [ 1, %if.then853 ], [ %call839, %if.end851.thread ]
  %call858 = call %struct.X509_name_st* @X509_REQ_get_subject_name(%struct.X509_req_st* noundef %req.214672340) #10
  br label %cond.end859

cond.end859:                                      ; preds = %cond.false857, %cond.true855
  %ret.114911494 = phi i32 [ %ret.114911562, %cond.true855 ], [ %ret.114911495, %cond.false857 ]
  %cond860 = phi %struct.X509_name_st* [ %call856, %cond.true855 ], [ %call858, %cond.false857 ]
  call void @print_name(%struct.bio_st* noundef nonnull %call812, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.176, i64 0, i64 0), %struct.X509_name_st* noundef %cond860) #10
  br label %if.end861

if.end861:                                        ; preds = %cond.end859, %if.end851
  %ret.11490 = phi i32 [ %ret.114911494, %cond.end859 ], [ 1, %if.end851 ]
  br i1 %tobool795, label %if.then863, label %if.end895

if.end861.thread1563:                             ; preds = %if.end851.thread1558
  br i1 %tobool795, label %if.then866, label %if.end916

if.end861.thread:                                 ; preds = %if.end851.thread
  br i1 %tobool795, label %if.else868, label %if.end895

if.then863:                                       ; preds = %if.end861
  br i1 %tobool198, label %if.then866, label %if.else868

if.then866:                                       ; preds = %if.end861.thread1563, %if.then863
  %ret.1149014971567 = phi i32 [ %ret.11490, %if.then863 ], [ %call836, %if.end861.thread1563 ]
  %call867 = call %struct.evp_pkey_st* @X509_get0_pubkey(%struct.x509_st* noundef %new_x509.014592352) #10
  br label %if.end870

if.else868:                                       ; preds = %if.end861.thread, %if.then863
  %ret.1149014971500 = phi i32 [ %ret.11490, %if.then863 ], [ %call839, %if.end861.thread ]
  %call869 = call %struct.evp_pkey_st* @X509_REQ_get0_pubkey(%struct.X509_req_st* noundef %req.214672340) #10
  br label %if.end870

if.end870:                                        ; preds = %if.else868, %if.then866
  %ret.1149014971499 = phi i32 [ %ret.1149014971567, %if.then866 ], [ %ret.1149014971500, %if.else868 ]
  %tpubkey864.0 = phi %struct.evp_pkey_st* [ %call867, %if.then866 ], [ %call869, %if.else868 ]
  %cmp871 = icmp eq %struct.evp_pkey_st* %tpubkey864.0, null
  %130 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !3
  br i1 %cmp871, label %if.then873, label %if.end875

if.then873:                                       ; preds = %if.end870
  %call874 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %130, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.177, i64 0, i64 0)) #10
  br label %if.then937

if.end875:                                        ; preds = %if.end870
  %call876 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %130, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.178, i64 0, i64 0)) #10
  %call877 = call i32 @EVP_PKEY_is_a(%struct.evp_pkey_st* noundef nonnull %tpubkey864.0, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.137, i64 0, i64 0)) #10
  %tobool878.not = icmp eq i32 %call877, 0
  br i1 %tobool878.not, label %if.else888, label %if.then879

if.then879:                                       ; preds = %if.end875
  %131 = bitcast %struct.bignum_st** %n to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %131) #9
  store %struct.bignum_st* null, %struct.bignum_st** %n, align 8, !tbaa !3
  %call880 = call i32 @EVP_PKEY_get_bn_param(%struct.evp_pkey_st* noundef nonnull %tpubkey864.0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.179, i64 0, i64 0), %struct.bignum_st** noundef nonnull %n) #10
  %tobool881.not = icmp eq i32 %call880, 0
  br i1 %tobool881.not, label %cleanup885.thread, label %cleanup885

cleanup885.thread:                                ; preds = %if.then879
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %131) #9
  br label %if.then937

cleanup885:                                       ; preds = %if.then879
  %132 = load %struct.bignum_st*, %struct.bignum_st** %n, align 8, !tbaa !3
  %call884 = call i32 @BN_print(%struct.bio_st* noundef nonnull %call812, %struct.bignum_st* noundef %132) #10
  %133 = load %struct.bignum_st*, %struct.bignum_st** %n, align 8, !tbaa !3
  call void @BN_free(%struct.bignum_st* noundef %133) #10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %131) #9
  br label %cleanup892

if.else888:                                       ; preds = %if.end875
  %134 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !3
  %call889 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %134, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.180, i64 0, i64 0)) #10
  br label %cleanup892

cleanup892:                                       ; preds = %if.else888, %cleanup885
  %135 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !3
  %call891 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %135, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.181, i64 0, i64 0)) #10
  br label %if.end895

if.end895:                                        ; preds = %cleanup892, %if.end861.thread, %if.end861
  %ret.11492 = phi i32 [ %ret.1149014971499, %cleanup892 ], [ %ret.11490, %if.end861 ], [ %call839, %if.end861.thread ]
  %tobool896 = icmp ne i32 %noout.0, 0
  %or.cond1032 = select i1 %tobool896, i1 true, i1 %tobool198
  br i1 %or.cond1032, label %if.end916, label %if.then899

if.then899:                                       ; preds = %if.end895
  %136 = load i32, i32* %outformat, align 4, !tbaa !7
  %cmp900 = icmp eq i32 %136, 4
  br i1 %cmp900, label %if.then902, label %if.else904

if.then902:                                       ; preds = %if.then899
  %call903 = call i32 @i2d_X509_REQ_bio(%struct.bio_st* noundef nonnull %call812, %struct.X509_req_st* noundef %req.214672340) #10
  br label %if.end911

if.else904:                                       ; preds = %if.then899
  %tobool905.not = icmp eq i32 %newhdr.0, 0
  br i1 %tobool905.not, label %if.else908, label %if.then906

if.then906:                                       ; preds = %if.else904
  %call907 = call i32 @PEM_write_bio_X509_REQ_NEW(%struct.bio_st* noundef nonnull %call812, %struct.X509_req_st* noundef %req.214672340) #10
  br label %if.end911

if.else908:                                       ; preds = %if.else904
  %call909 = call i32 @PEM_write_bio_X509_REQ(%struct.bio_st* noundef nonnull %call812, %struct.X509_req_st* noundef %req.214672340) #10
  br label %if.end911

if.end911:                                        ; preds = %if.then906, %if.else908, %if.then902
  %i.2 = phi i32 [ %call903, %if.then902 ], [ %call907, %if.then906 ], [ %call909, %if.else908 ]
  %tobool912.not = icmp eq i32 %i.2, 0
  br i1 %tobool912.not, label %if.then913, label %if.end916

if.then913:                                       ; preds = %if.end911
  %137 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call914 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %137, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.182, i64 0, i64 0)) #10
  br label %if.then937

if.end916:                                        ; preds = %if.end861.thread1563, %if.end911, %if.end895
  %ret.114921571 = phi i32 [ %ret.11492, %if.end911 ], [ %ret.11492, %if.end895 ], [ %call836, %if.end861.thread1563 ]
  %or.cond1033 = select i1 %tobool791, i1 %tobool198, i1 false
  %cmp921 = icmp ne %struct.x509_st* %new_x509.014592352, null
  %or.cond1034 = select i1 %or.cond1033, i1 %cmp921, i1 false
  br i1 %or.cond1034, label %if.then923, label %if.end938

if.then923:                                       ; preds = %if.end916
  %138 = load i32, i32* %outformat, align 4, !tbaa !7
  %cmp924 = icmp eq i32 %138, 4
  br i1 %cmp924, label %if.then926, label %if.else928

if.then926:                                       ; preds = %if.then923
  %call927 = call i32 @i2d_X509_bio(%struct.bio_st* noundef nonnull %call812, %struct.x509_st* noundef nonnull %new_x509.014592352) #10
  br label %if.end930

if.else928:                                       ; preds = %if.then923
  %call929 = call i32 @PEM_write_bio_X509(%struct.bio_st* noundef nonnull %call812, %struct.x509_st* noundef nonnull %new_x509.014592352) #10
  br label %if.end930

if.end930:                                        ; preds = %if.else928, %if.then926
  %i.3 = phi i32 [ %call927, %if.then926 ], [ %call929, %if.else928 ]
  %tobool931.not = icmp eq i32 %i.3, 0
  br i1 %tobool931.not, label %if.then932, label %if.end938

if.then932:                                       ; preds = %if.end930
  %139 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call933 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %139, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.183, i64 0, i64 0)) #10
  br label %if.then937

if.then937.loopexit2368.split.loop.exit:          ; preds = %if.then160
  %140 = bitcast %struct.lhash_st* %call163 to %struct.lhash_st_OPENSSL_STRING*
  br label %if.then937

if.then937:                                       ; preds = %sw.bb55, %if.end176, %lor.lhs.false178, %sw.bb49, %if.then486, %if.then937.loopexit2368.split.loop.exit, %cleanup885.thread, %if.then873, %if.then153, %opthelp, %if.then133, %if.end217, %if.end227, %cleanup, %cleanup299, %cleanup355, %if.then360, %if.end373, %if.then388, %cleanup420, %if.end457, %land.lhs.true503, %if.then541, %if.then559, %if.then564, %land.end.thread, %cleanup827, %if.then932, %if.then913, %if.then756, %if.then575, %if.then549, %if.else529, %if.then511, %if.then325, %if.end258, %land.lhs.true234, %if.then215, %if.end193, %cleanup708.thread, %cleanup737.thread, %if.end774, %if.then768
  %sigopts.4.ph = phi %struct.stack_st_OPENSSL_STRING* [ %sigopts.0, %if.then768 ], [ %sigopts.0, %if.end774 ], [ %sigopts.0, %cleanup737.thread ], [ %sigopts.0, %cleanup708.thread ], [ %sigopts.0, %if.end193 ], [ %sigopts.0, %if.then215 ], [ %sigopts.0, %land.lhs.true234 ], [ %sigopts.0, %if.end258 ], [ %sigopts.0, %if.then325 ], [ %sigopts.0, %if.then511 ], [ %sigopts.0, %if.else529 ], [ %sigopts.0, %if.then549 ], [ %sigopts.0, %if.then575 ], [ %sigopts.0, %if.then756 ], [ %sigopts.0, %if.then913 ], [ %sigopts.0, %if.then932 ], [ %sigopts.0, %cleanup827 ], [ %sigopts.0, %land.end.thread ], [ %sigopts.0, %if.then564 ], [ %sigopts.0, %if.then559 ], [ %sigopts.0, %if.then541 ], [ %sigopts.0, %land.lhs.true503 ], [ %sigopts.0, %if.end457 ], [ %sigopts.0, %cleanup420 ], [ %sigopts.0, %if.then388 ], [ %sigopts.0, %if.end373 ], [ %sigopts.0, %if.then360 ], [ %sigopts.0, %cleanup355 ], [ %sigopts.0, %cleanup299 ], [ %sigopts.0, %cleanup ], [ %sigopts.0, %if.end227 ], [ %sigopts.0, %if.end217 ], [ %sigopts.0, %if.then133 ], [ %sigopts.1, %opthelp ], [ %sigopts.0, %if.then153 ], [ %sigopts.0, %if.then873 ], [ %sigopts.0, %cleanup885.thread ], [ %sigopts.0, %if.then937.loopexit2368.split.loop.exit ], [ %sigopts.0, %if.then486 ], [ %sigopts.0, %sw.bb49 ], [ %sigopts.0, %lor.lhs.false178 ], [ %sigopts.0, %if.end176 ], [ %sigopts.0, %sw.bb55 ]
  %vfyopts.4.ph = phi %struct.stack_st_OPENSSL_STRING* [ %vfyopts.0, %if.then768 ], [ %vfyopts.0, %if.end774 ], [ %vfyopts.0, %cleanup737.thread ], [ %vfyopts.0, %cleanup708.thread ], [ %vfyopts.0, %if.end193 ], [ %vfyopts.0, %if.then215 ], [ %vfyopts.0, %land.lhs.true234 ], [ %vfyopts.0, %if.end258 ], [ %vfyopts.0, %if.then325 ], [ %vfyopts.0, %if.then511 ], [ %vfyopts.0, %if.else529 ], [ %vfyopts.0, %if.then549 ], [ %vfyopts.0, %if.then575 ], [ %vfyopts.0, %if.then756 ], [ %vfyopts.0, %if.then913 ], [ %vfyopts.0, %if.then932 ], [ %vfyopts.0, %cleanup827 ], [ %vfyopts.0, %land.end.thread ], [ %vfyopts.0, %if.then564 ], [ %vfyopts.0, %if.then559 ], [ %vfyopts.0, %if.then541 ], [ %vfyopts.0, %land.lhs.true503 ], [ %vfyopts.0, %if.end457 ], [ %vfyopts.0, %cleanup420 ], [ %vfyopts.0, %if.then388 ], [ %vfyopts.0, %if.end373 ], [ %vfyopts.0, %if.then360 ], [ %vfyopts.0, %cleanup355 ], [ %vfyopts.0, %cleanup299 ], [ %vfyopts.0, %cleanup ], [ %vfyopts.0, %if.end227 ], [ %vfyopts.0, %if.end217 ], [ %vfyopts.0, %if.then133 ], [ %vfyopts.1, %opthelp ], [ %vfyopts.0, %if.then153 ], [ %vfyopts.0, %if.then873 ], [ %vfyopts.0, %cleanup885.thread ], [ %vfyopts.0, %if.then937.loopexit2368.split.loop.exit ], [ %vfyopts.0, %if.then486 ], [ %vfyopts.0, %sw.bb49 ], [ %vfyopts.0, %lor.lhs.false178 ], [ %vfyopts.0, %if.end176 ], [ %vfyopts.0, %sw.bb55 ]
  %addexts.4.ph = phi %struct.lhash_st_OPENSSL_STRING* [ %addexts.0, %if.then768 ], [ %addexts.0, %if.end774 ], [ %addexts.0, %cleanup737.thread ], [ %addexts.0, %cleanup708.thread ], [ %addexts.0, %if.end193 ], [ %addexts.0, %if.then215 ], [ %addexts.0, %land.lhs.true234 ], [ %addexts.0, %if.end258 ], [ %addexts.0, %if.then325 ], [ %addexts.0, %if.then511 ], [ %addexts.0, %if.else529 ], [ %addexts.0, %if.then549 ], [ %addexts.0, %if.then575 ], [ %addexts.0, %if.then756 ], [ %addexts.0, %if.then913 ], [ %addexts.0, %if.then932 ], [ %addexts.0, %cleanup827 ], [ %addexts.0, %land.end.thread ], [ %addexts.0, %if.then564 ], [ %addexts.0, %if.then559 ], [ %addexts.0, %if.then541 ], [ %addexts.0, %land.lhs.true503 ], [ %addexts.0, %if.end457 ], [ %addexts.0, %cleanup420 ], [ %addexts.0, %if.then388 ], [ %addexts.0, %if.end373 ], [ %addexts.0, %if.then360 ], [ %addexts.0, %cleanup355 ], [ %addexts.0, %cleanup299 ], [ %addexts.0, %cleanup ], [ %addexts.0, %if.end227 ], [ %addexts.0, %if.end217 ], [ %addexts.0, %if.then133 ], [ %addexts.1, %opthelp ], [ %addexts.0, %if.then153 ], [ %addexts.0, %if.then873 ], [ %addexts.0, %cleanup885.thread ], [ %140, %if.then937.loopexit2368.split.loop.exit ], [ %addexts.0, %if.then486 ], [ %addexts.0, %sw.bb55 ], [ %addexts.2, %if.end176 ], [ %addexts.2, %lor.lhs.false178 ], [ %addexts.0, %sw.bb49 ]
  %new_x509.1.ph = phi %struct.x509_st* [ null, %if.then768 ], [ %new_x509.0145923512367, %if.end774 ], [ null, %cleanup737.thread ], [ %call602, %cleanup708.thread ], [ null, %if.end193 ], [ null, %if.then215 ], [ null, %land.lhs.true234 ], [ null, %if.end258 ], [ null, %if.then325 ], [ null, %if.then511 ], [ null, %if.else529 ], [ null, %if.then549 ], [ null, %if.then575 ], [ null, %if.then756 ], [ %new_x509.014592352, %if.then913 ], [ %new_x509.014592352, %if.then932 ], [ %new_x509.014592352, %cleanup827 ], [ %new_x509.014592352, %land.end.thread ], [ null, %if.then564 ], [ null, %if.then559 ], [ null, %if.then541 ], [ null, %land.lhs.true503 ], [ null, %if.end457 ], [ null, %cleanup420 ], [ null, %if.then388 ], [ null, %if.end373 ], [ null, %if.then360 ], [ null, %cleanup355 ], [ null, %cleanup299 ], [ null, %cleanup ], [ null, %if.end227 ], [ null, %if.end217 ], [ null, %if.then133 ], [ null, %opthelp ], [ null, %if.then153 ], [ %new_x509.014592352, %if.then873 ], [ %new_x509.014592352, %cleanup885.thread ], [ null, %if.then937.loopexit2368.split.loop.exit ], [ null, %if.then486 ], [ null, %sw.bb49 ], [ null, %lor.lhs.false178 ], [ null, %if.end176 ], [ null, %sw.bb55 ]
  %CAcert.1.ph = phi %struct.x509_st* [ %CAcert.0, %if.then768 ], [ %CAcert.0, %if.end774 ], [ %CAcert.0, %cleanup737.thread ], [ %CAcert.0, %cleanup708.thread ], [ null, %if.end193 ], [ null, %if.then215 ], [ null, %land.lhs.true234 ], [ null, %if.end258 ], [ null, %if.then325 ], [ null, %if.then511 ], [ null, %if.else529 ], [ %call542, %if.then549 ], [ %CAcert.0, %if.then575 ], [ %CAcert.0, %if.then756 ], [ %CAcert.0, %if.then913 ], [ %CAcert.0, %if.then932 ], [ %CAcert.0, %cleanup827 ], [ %CAcert.0, %land.end.thread ], [ %CAcert.0, %if.then564 ], [ %CAcert.0, %if.then559 ], [ null, %if.then541 ], [ null, %land.lhs.true503 ], [ null, %if.end457 ], [ null, %cleanup420 ], [ null, %if.then388 ], [ null, %if.end373 ], [ null, %if.then360 ], [ null, %cleanup355 ], [ null, %cleanup299 ], [ null, %cleanup ], [ null, %if.end227 ], [ null, %if.end217 ], [ null, %if.then133 ], [ null, %opthelp ], [ null, %if.then153 ], [ %CAcert.0, %if.then873 ], [ %CAcert.0, %cleanup885.thread ], [ null, %if.then937.loopexit2368.split.loop.exit ], [ null, %if.then486 ], [ null, %sw.bb49 ], [ null, %lor.lhs.false178 ], [ null, %if.end176 ], [ null, %sw.bb55 ]
  %req.3.ph = phi %struct.X509_req_st* [ %req.2, %if.then768 ], [ %req.214672339, %if.end774 ], [ %req.1, %cleanup737.thread ], [ %req.1, %cleanup708.thread ], [ null, %if.end193 ], [ null, %if.then215 ], [ null, %land.lhs.true234 ], [ null, %if.end258 ], [ null, %if.then325 ], [ null, %if.then511 ], [ %req.0, %if.else529 ], [ %req.0, %if.then549 ], [ %call567, %if.then575 ], [ %req.2, %if.then756 ], [ %req.214672340, %if.then913 ], [ %req.214672340, %if.then932 ], [ %req.214672340, %cleanup827 ], [ %req.214672340, %land.end.thread ], [ null, %if.then564 ], [ %req.0, %if.then559 ], [ %req.0, %if.then541 ], [ null, %land.lhs.true503 ], [ null, %if.end457 ], [ null, %cleanup420 ], [ null, %if.then388 ], [ null, %if.end373 ], [ null, %if.then360 ], [ null, %cleanup355 ], [ null, %cleanup299 ], [ null, %cleanup ], [ null, %if.end227 ], [ null, %if.end217 ], [ null, %if.then133 ], [ null, %opthelp ], [ null, %if.then153 ], [ %req.214672340, %if.then873 ], [ %req.214672340, %cleanup885.thread ], [ null, %if.then937.loopexit2368.split.loop.exit ], [ null, %if.then486 ], [ null, %sw.bb49 ], [ null, %lor.lhs.false178 ], [ null, %if.end176 ], [ null, %sw.bb55 ]
  %addext_bio.4.ph = phi %struct.bio_st* [ %addext_bio.0, %if.then768 ], [ %addext_bio.0, %if.end774 ], [ %addext_bio.0, %cleanup737.thread ], [ %addext_bio.0, %cleanup708.thread ], [ %addext_bio.0, %if.end193 ], [ %addext_bio.0, %if.then215 ], [ %addext_bio.0, %land.lhs.true234 ], [ %addext_bio.0, %if.end258 ], [ %addext_bio.0, %if.then325 ], [ %addext_bio.0, %if.then511 ], [ %addext_bio.0, %if.else529 ], [ %addext_bio.0, %if.then549 ], [ %addext_bio.0, %if.then575 ], [ %addext_bio.0, %if.then756 ], [ %addext_bio.0, %if.then913 ], [ %addext_bio.0, %if.then932 ], [ %addext_bio.0, %cleanup827 ], [ %addext_bio.0, %land.end.thread ], [ %addext_bio.0, %if.then564 ], [ %addext_bio.0, %if.then559 ], [ %addext_bio.0, %if.then541 ], [ %addext_bio.0, %land.lhs.true503 ], [ %addext_bio.0, %if.end457 ], [ %addext_bio.0, %cleanup420 ], [ %addext_bio.0, %if.then388 ], [ %addext_bio.0, %if.end373 ], [ %addext_bio.0, %if.then360 ], [ %addext_bio.0, %cleanup355 ], [ %addext_bio.0, %cleanup299 ], [ %addext_bio.0, %cleanup ], [ %addext_bio.0, %if.end227 ], [ %addext_bio.0, %if.end217 ], [ %addext_bio.0, %if.then133 ], [ %addext_bio.1, %opthelp ], [ %addext_bio.0, %if.then153 ], [ %addext_bio.0, %if.then873 ], [ %addext_bio.0, %cleanup885.thread ], [ %call165, %if.then937.loopexit2368.split.loop.exit ], [ %addext_bio.0, %if.then486 ], [ %addext_bio.0, %sw.bb55 ], [ %addext_bio.2, %if.end176 ], [ %addext_bio.2, %lor.lhs.false178 ], [ %addext_bio.0, %sw.bb49 ]
  %pkeyopts.4.ph = phi %struct.stack_st_OPENSSL_STRING* [ %pkeyopts.0, %if.then768 ], [ %pkeyopts.0, %if.end774 ], [ %pkeyopts.0, %cleanup737.thread ], [ %pkeyopts.0, %cleanup708.thread ], [ %pkeyopts.0, %if.end193 ], [ %pkeyopts.0, %if.then215 ], [ %pkeyopts.0, %land.lhs.true234 ], [ %pkeyopts.0, %if.end258 ], [ %pkeyopts.0, %if.then325 ], [ %pkeyopts.0, %if.then511 ], [ %pkeyopts.0, %if.else529 ], [ %pkeyopts.0, %if.then549 ], [ %pkeyopts.0, %if.then575 ], [ %pkeyopts.0, %if.then756 ], [ %pkeyopts.0, %if.then913 ], [ %pkeyopts.0, %if.then932 ], [ %pkeyopts.0, %cleanup827 ], [ %pkeyopts.0, %land.end.thread ], [ %pkeyopts.0, %if.then564 ], [ %pkeyopts.0, %if.then559 ], [ %pkeyopts.0, %if.then541 ], [ %pkeyopts.0, %land.lhs.true503 ], [ %pkeyopts.0, %if.end457 ], [ %pkeyopts.0, %cleanup420 ], [ %pkeyopts.0, %if.then388 ], [ %pkeyopts.0, %if.end373 ], [ %pkeyopts.0, %if.then360 ], [ %pkeyopts.0, %cleanup355 ], [ %pkeyopts.0, %cleanup299 ], [ %pkeyopts.0, %cleanup ], [ %pkeyopts.0, %if.end227 ], [ %pkeyopts.0, %if.end217 ], [ %pkeyopts.0, %if.then133 ], [ %pkeyopts.1, %opthelp ], [ %pkeyopts.0, %if.then153 ], [ %pkeyopts.0, %if.then873 ], [ %pkeyopts.0, %cleanup885.thread ], [ %pkeyopts.0, %if.then937.loopexit2368.split.loop.exit ], [ %pkeyopts.0, %if.then486 ], [ %pkeyopts.0, %sw.bb49 ], [ %pkeyopts.0, %lor.lhs.false178 ], [ %pkeyopts.0, %if.end176 ], [ %pkeyopts.0, %sw.bb55 ]
  %nofree_passin.1.ph = phi i8* [ %nofree_passin.0, %if.then768 ], [ %nofree_passin.0, %if.end774 ], [ %nofree_passin.0, %cleanup737.thread ], [ %nofree_passin.0, %cleanup708.thread ], [ null, %if.end193 ], [ null, %if.then215 ], [ null, %land.lhs.true234 ], [ null, %if.end258 ], [ %nofree_passin.0, %if.then325 ], [ %nofree_passin.0, %if.then511 ], [ %nofree_passin.0, %if.else529 ], [ %nofree_passin.0, %if.then549 ], [ %nofree_passin.0, %if.then575 ], [ %nofree_passin.0, %if.then756 ], [ %nofree_passin.0, %if.then913 ], [ %nofree_passin.0, %if.then932 ], [ %nofree_passin.0, %cleanup827 ], [ %nofree_passin.0, %land.end.thread ], [ %nofree_passin.0, %if.then564 ], [ %nofree_passin.0, %if.then559 ], [ %nofree_passin.0, %if.then541 ], [ %nofree_passin.0, %land.lhs.true503 ], [ %nofree_passin.0, %if.end457 ], [ %nofree_passin.0, %cleanup420 ], [ %nofree_passin.0, %if.then388 ], [ %nofree_passin.0, %if.end373 ], [ %nofree_passin.0, %if.then360 ], [ %nofree_passin.0, %cleanup355 ], [ null, %cleanup299 ], [ null, %cleanup ], [ null, %if.end227 ], [ null, %if.end217 ], [ null, %if.then133 ], [ null, %opthelp ], [ null, %if.then153 ], [ %nofree_passin.0, %if.then873 ], [ %nofree_passin.0, %cleanup885.thread ], [ null, %if.then937.loopexit2368.split.loop.exit ], [ %nofree_passin.0, %if.then486 ], [ null, %sw.bb49 ], [ null, %lor.lhs.false178 ], [ null, %if.end176 ], [ null, %sw.bb55 ]
  %nofree_passout.1.ph = phi i8* [ %nofree_passout.0, %if.then768 ], [ %nofree_passout.0, %if.end774 ], [ %nofree_passout.0, %cleanup737.thread ], [ %nofree_passout.0, %cleanup708.thread ], [ null, %if.end193 ], [ null, %if.then215 ], [ null, %land.lhs.true234 ], [ null, %if.end258 ], [ %nofree_passout.0, %if.then325 ], [ %nofree_passout.0, %if.then511 ], [ %nofree_passout.0, %if.else529 ], [ %nofree_passout.0, %if.then549 ], [ %nofree_passout.0, %if.then575 ], [ %nofree_passout.0, %if.then756 ], [ %nofree_passout.0, %if.then913 ], [ %nofree_passout.0, %if.then932 ], [ %nofree_passout.0, %cleanup827 ], [ %nofree_passout.0, %land.end.thread ], [ %nofree_passout.0, %if.then564 ], [ %nofree_passout.0, %if.then559 ], [ %nofree_passout.0, %if.then541 ], [ %nofree_passout.0, %land.lhs.true503 ], [ %nofree_passout.0, %if.end457 ], [ %nofree_passout.0, %cleanup420 ], [ %nofree_passout.0, %if.then388 ], [ %nofree_passout.0, %if.end373 ], [ %nofree_passout.0, %if.then360 ], [ %nofree_passout.0, %cleanup355 ], [ null, %cleanup299 ], [ null, %cleanup ], [ null, %if.end227 ], [ null, %if.end217 ], [ null, %if.then133 ], [ null, %opthelp ], [ null, %if.then153 ], [ %nofree_passout.0, %if.then873 ], [ %nofree_passout.0, %cleanup885.thread ], [ null, %if.then937.loopexit2368.split.loop.exit ], [ %nofree_passout.0, %if.then486 ], [ null, %sw.bb49 ], [ null, %lor.lhs.false178 ], [ null, %if.end176 ], [ null, %sw.bb55 ]
  %fsubj.1.ph = phi %struct.X509_name_st* [ %fsubj.0, %if.then768 ], [ %fsubj.0, %if.end774 ], [ %fsubj.0, %cleanup737.thread ], [ %fsubj.0, %cleanup708.thread ], [ null, %if.end193 ], [ null, %if.then215 ], [ null, %land.lhs.true234 ], [ null, %if.end258 ], [ null, %if.then325 ], [ %fsubj.0, %if.then511 ], [ %fsubj.0, %if.else529 ], [ %fsubj.0, %if.then549 ], [ %fsubj.0, %if.then575 ], [ %fsubj.0, %if.then756 ], [ %fsubj.0, %if.then913 ], [ %fsubj.0, %if.then932 ], [ %fsubj.0, %cleanup827 ], [ %fsubj.0, %land.end.thread ], [ %fsubj.0, %if.then564 ], [ %fsubj.0, %if.then559 ], [ %fsubj.0, %if.then541 ], [ null, %land.lhs.true503 ], [ null, %if.end457 ], [ null, %cleanup420 ], [ null, %if.then388 ], [ null, %if.end373 ], [ null, %if.then360 ], [ null, %cleanup355 ], [ null, %cleanup299 ], [ null, %cleanup ], [ null, %if.end227 ], [ null, %if.end217 ], [ null, %if.then133 ], [ null, %opthelp ], [ null, %if.then153 ], [ %fsubj.0, %if.then873 ], [ %fsubj.0, %cleanup885.thread ], [ null, %if.then937.loopexit2368.split.loop.exit ], [ null, %if.then486 ], [ null, %sw.bb49 ], [ null, %lor.lhs.false178 ], [ null, %if.end176 ], [ null, %sw.bb55 ]
  %genctx.1.ph = phi %struct.evp_pkey_ctx_st* [ null, %if.then768 ], [ null, %if.end774 ], [ null, %cleanup737.thread ], [ null, %cleanup708.thread ], [ null, %if.end193 ], [ null, %if.then215 ], [ null, %land.lhs.true234 ], [ null, %if.end258 ], [ null, %if.then325 ], [ null, %if.then511 ], [ null, %if.else529 ], [ null, %if.then549 ], [ null, %if.then575 ], [ null, %if.then756 ], [ null, %if.then913 ], [ null, %if.then932 ], [ null, %cleanup827 ], [ null, %land.end.thread ], [ null, %if.then564 ], [ null, %if.then559 ], [ null, %if.then541 ], [ null, %land.lhs.true503 ], [ null, %if.end457 ], [ %call374, %cleanup420 ], [ %call374, %if.then388 ], [ null, %if.end373 ], [ null, %if.then360 ], [ null, %cleanup355 ], [ null, %cleanup299 ], [ null, %cleanup ], [ null, %if.end227 ], [ null, %if.end217 ], [ null, %if.then133 ], [ null, %opthelp ], [ null, %if.then153 ], [ null, %if.then873 ], [ null, %cleanup885.thread ], [ null, %if.then937.loopexit2368.split.loop.exit ], [ null, %if.then486 ], [ null, %sw.bb49 ], [ null, %lor.lhs.false178 ], [ null, %if.end176 ], [ null, %sw.bb55 ]
  %ret.2.ph = phi i32 [ 1, %if.then768 ], [ 1, %if.end774 ], [ 1, %cleanup737.thread ], [ 1, %cleanup708.thread ], [ 1, %if.end193 ], [ 1, %if.then215 ], [ 1, %land.lhs.true234 ], [ 1, %if.end258 ], [ 1, %if.then325 ], [ 1, %if.then511 ], [ 1, %if.else529 ], [ 1, %if.then549 ], [ 1, %if.then575 ], [ 1, %if.then756 ], [ %ret.11492, %if.then913 ], [ %ret.114921571, %if.then932 ], [ 1, %cleanup827 ], [ 1, %land.end.thread ], [ 1, %if.then564 ], [ 1, %if.then559 ], [ 1, %if.then541 ], [ 1, %land.lhs.true503 ], [ 1, %if.end457 ], [ 1, %cleanup420 ], [ 1, %if.then388 ], [ 1, %if.end373 ], [ 1, %if.then360 ], [ 1, %cleanup355 ], [ 1, %cleanup299 ], [ 1, %cleanup ], [ 1, %if.end227 ], [ 1, %if.end217 ], [ 1, %if.then133 ], [ 1, %opthelp ], [ 1, %if.then153 ], [ %ret.1149014971499, %if.then873 ], [ %ret.1149014971499, %cleanup885.thread ], [ 1, %if.then937.loopexit2368.split.loop.exit ], [ 1, %if.then486 ], [ 1, %sw.bb49 ], [ 1, %lor.lhs.false178 ], [ 1, %if.end176 ], [ 1, %sw.bb55 ]
  %CAkey.1.ph = phi %struct.evp_pkey_st* [ %CAkey.01435, %if.then768 ], [ %CAkey.01435, %if.end774 ], [ %CAkey.01435, %cleanup737.thread ], [ %CAkey.01435, %cleanup708.thread ], [ null, %if.end193 ], [ null, %if.then215 ], [ null, %land.lhs.true234 ], [ null, %if.end258 ], [ null, %if.then325 ], [ null, %if.then511 ], [ null, %if.else529 ], [ %CAkey.01444, %if.then549 ], [ %CAkey.01435, %if.then575 ], [ %CAkey.01435, %if.then756 ], [ %CAkey.01435, %if.then913 ], [ %CAkey.01435, %if.then932 ], [ %CAkey.01435, %cleanup827 ], [ %CAkey.01435, %land.end.thread ], [ %CAkey.01435, %if.then564 ], [ %CAkey.01435, %if.then559 ], [ %CAkey.01444, %if.then541 ], [ null, %land.lhs.true503 ], [ null, %if.end457 ], [ null, %cleanup420 ], [ null, %if.then388 ], [ null, %if.end373 ], [ null, %if.then360 ], [ null, %cleanup355 ], [ null, %cleanup299 ], [ null, %cleanup ], [ null, %if.end227 ], [ null, %if.end217 ], [ null, %if.then133 ], [ null, %opthelp ], [ null, %if.then153 ], [ %CAkey.01435, %if.then873 ], [ %CAkey.01435, %cleanup885.thread ], [ null, %if.then937.loopexit2368.split.loop.exit ], [ null, %if.then486 ], [ null, %sw.bb49 ], [ null, %lor.lhs.false178 ], [ null, %if.end176 ], [ null, %sw.bb55 ]
  %pkey.2.ph = phi %struct.evp_pkey_st* [ %pkey.11410, %if.then768 ], [ %pkey.11410, %if.end774 ], [ %pkey.11410, %cleanup737.thread ], [ %pkey.11410, %cleanup708.thread ], [ null, %if.end193 ], [ null, %if.then215 ], [ null, %land.lhs.true234 ], [ null, %if.end258 ], [ null, %if.then325 ], [ %pkey.11410, %if.then511 ], [ %pkey.11410, %if.else529 ], [ %pkey.11410, %if.then549 ], [ %pkey.11410, %if.then575 ], [ %pkey.11410, %if.then756 ], [ %pkey.11410, %if.then913 ], [ %pkey.11410, %if.then932 ], [ %pkey.11410, %cleanup827 ], [ %pkey.11410, %land.end.thread ], [ %pkey.11410, %if.then564 ], [ null, %if.then559 ], [ %pkey.11410, %if.then541 ], [ %pkey.11410, %land.lhs.true503 ], [ %pkey.114091421, %if.end457 ], [ null, %cleanup420 ], [ null, %if.then388 ], [ null, %if.end373 ], [ null, %if.then360 ], [ null, %cleanup355 ], [ null, %cleanup299 ], [ null, %cleanup ], [ null, %if.end227 ], [ null, %if.end217 ], [ null, %if.then133 ], [ null, %opthelp ], [ null, %if.then153 ], [ %pkey.11410, %if.then873 ], [ %pkey.11410, %cleanup885.thread ], [ null, %if.then937.loopexit2368.split.loop.exit ], [ %pkey.114091421, %if.then486 ], [ null, %sw.bb49 ], [ null, %lor.lhs.false178 ], [ null, %if.end176 ], [ null, %sw.bb55 ]
  %gen_eng.3.ph = phi %struct.engine_st* [ %gen_eng.0, %if.then768 ], [ %gen_eng.0, %if.end774 ], [ %gen_eng.0, %cleanup737.thread ], [ %gen_eng.0, %cleanup708.thread ], [ %gen_eng.0, %if.end193 ], [ %gen_eng.0, %if.then215 ], [ %gen_eng.0, %land.lhs.true234 ], [ %gen_eng.0, %if.end258 ], [ %gen_eng.0, %if.then325 ], [ %gen_eng.0, %if.then511 ], [ %gen_eng.0, %if.else529 ], [ %gen_eng.0, %if.then549 ], [ %gen_eng.0, %if.then575 ], [ %gen_eng.0, %if.then756 ], [ %gen_eng.0, %if.then913 ], [ %gen_eng.0, %if.then932 ], [ %gen_eng.0, %cleanup827 ], [ %gen_eng.0, %land.end.thread ], [ %gen_eng.0, %if.then564 ], [ %gen_eng.0, %if.then559 ], [ %gen_eng.0, %if.then541 ], [ %gen_eng.0, %land.lhs.true503 ], [ %gen_eng.0, %if.end457 ], [ %gen_eng.0, %cleanup420 ], [ %gen_eng.0, %if.then388 ], [ %gen_eng.0, %if.end373 ], [ %gen_eng.0, %if.then360 ], [ %gen_eng.0, %cleanup355 ], [ %gen_eng.0, %cleanup299 ], [ %gen_eng.0, %cleanup ], [ %gen_eng.0, %if.end227 ], [ %gen_eng.0, %if.end217 ], [ %gen_eng.0, %if.then133 ], [ %gen_eng.1, %opthelp ], [ %gen_eng.0, %if.then153 ], [ %gen_eng.0, %if.then873 ], [ %gen_eng.0, %cleanup885.thread ], [ %gen_eng.0, %if.then937.loopexit2368.split.loop.exit ], [ %gen_eng.0, %if.then486 ], [ %gen_eng.0, %sw.bb49 ], [ %gen_eng.0, %lor.lhs.false178 ], [ %gen_eng.0, %if.end176 ], [ %gen_eng.0, %sw.bb55 ]
  %out.1.ph = phi %struct.bio_st* [ null, %if.then768 ], [ null, %if.end774 ], [ null, %cleanup737.thread ], [ null, %cleanup708.thread ], [ null, %if.end193 ], [ null, %if.then215 ], [ null, %land.lhs.true234 ], [ null, %if.end258 ], [ null, %if.then325 ], [ null, %if.then511 ], [ null, %if.else529 ], [ null, %if.then549 ], [ null, %if.then575 ], [ null, %if.then756 ], [ %call812, %if.then913 ], [ %call812, %if.then932 ], [ %call812, %cleanup827 ], [ null, %land.end.thread ], [ null, %if.then564 ], [ null, %if.then559 ], [ null, %if.then541 ], [ null, %land.lhs.true503 ], [ null, %if.end457 ], [ null, %cleanup420 ], [ null, %if.then388 ], [ null, %if.end373 ], [ null, %if.then360 ], [ null, %cleanup355 ], [ null, %cleanup299 ], [ null, %cleanup ], [ null, %if.end227 ], [ null, %if.end217 ], [ null, %if.then133 ], [ null, %opthelp ], [ null, %if.then153 ], [ %call812, %if.then873 ], [ %call812, %cleanup885.thread ], [ null, %if.then937.loopexit2368.split.loop.exit ], [ %call458, %if.then486 ], [ null, %sw.bb49 ], [ null, %lor.lhs.false178 ], [ null, %if.end176 ], [ null, %sw.bb55 ]
  %serial.3.ph = phi %struct.asn1_string_st* [ %serial.0, %if.then768 ], [ %serial.0, %if.end774 ], [ %serial.0, %cleanup737.thread ], [ %serial.0, %cleanup708.thread ], [ %serial.0, %if.end193 ], [ %serial.0, %if.then215 ], [ %serial.0, %land.lhs.true234 ], [ %serial.0, %if.end258 ], [ %serial.0, %if.then325 ], [ %serial.0, %if.then511 ], [ %serial.0, %if.else529 ], [ %serial.0, %if.then549 ], [ %serial.0, %if.then575 ], [ %serial.0, %if.then756 ], [ %serial.0, %if.then913 ], [ %serial.0, %if.then932 ], [ %serial.0, %cleanup827 ], [ %serial.0, %land.end.thread ], [ %serial.0, %if.then564 ], [ %serial.0, %if.then559 ], [ %serial.0, %if.then541 ], [ %serial.0, %land.lhs.true503 ], [ %serial.0, %if.end457 ], [ %serial.0, %cleanup420 ], [ %serial.0, %if.then388 ], [ %serial.0, %if.end373 ], [ %serial.0, %if.then360 ], [ %serial.0, %cleanup355 ], [ %serial.0, %cleanup299 ], [ %serial.0, %cleanup ], [ %serial.0, %if.end227 ], [ %serial.0, %if.end217 ], [ %serial.0, %if.then133 ], [ %serial.1, %opthelp ], [ %serial.0, %if.then153 ], [ %serial.0, %if.then873 ], [ %serial.0, %cleanup885.thread ], [ %serial.0, %if.then937.loopexit2368.split.loop.exit ], [ %serial.0, %if.then486 ], [ %serial.0, %sw.bb49 ], [ %serial.0, %lor.lhs.false178 ], [ %serial.0, %if.end176 ], [ %serial.0, %sw.bb55 ]
  %141 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  call void @ERR_print_errors(%struct.bio_st* noundef %141) #10
  %.pre = load i8*, i8** %keyalgstr, align 8, !tbaa !3
  br label %if.end938

if.end938:                                        ; preds = %sw.bb4, %if.else847, %if.then845, %if.end790, %if.end930, %if.end916, %if.then937
  %142 = phi i8* [ %.pre, %if.then937 ], [ null, %sw.bb4 ], [ %97, %if.then845 ], [ %97, %if.else847 ], [ %97, %if.end790 ], [ %97, %if.end930 ], [ %97, %if.end916 ]
  %serial.31557 = phi %struct.asn1_string_st* [ %serial.3.ph, %if.then937 ], [ %serial.0, %sw.bb4 ], [ %serial.0, %if.then845 ], [ %serial.0, %if.else847 ], [ %serial.0, %if.end790 ], [ %serial.0, %if.end930 ], [ %serial.0, %if.end916 ]
  %out.11555 = phi %struct.bio_st* [ %out.1.ph, %if.then937 ], [ null, %sw.bb4 ], [ %call812, %if.then845 ], [ %call812, %if.else847 ], [ null, %if.end790 ], [ %call812, %if.end930 ], [ %call812, %if.end916 ]
  %gen_eng.31553 = phi %struct.engine_st* [ %gen_eng.3.ph, %if.then937 ], [ %gen_eng.0, %sw.bb4 ], [ %gen_eng.0, %if.then845 ], [ %gen_eng.0, %if.else847 ], [ %gen_eng.0, %if.end790 ], [ %gen_eng.0, %if.end930 ], [ %gen_eng.0, %if.end916 ]
  %pkey.21551 = phi %struct.evp_pkey_st* [ %pkey.2.ph, %if.then937 ], [ null, %sw.bb4 ], [ %pkey.11410, %if.then845 ], [ %pkey.11410, %if.else847 ], [ %pkey.11410, %if.end790 ], [ %pkey.11410, %if.end930 ], [ %pkey.11410, %if.end916 ]
  %CAkey.11549 = phi %struct.evp_pkey_st* [ %CAkey.1.ph, %if.then937 ], [ null, %sw.bb4 ], [ %CAkey.01435, %if.then845 ], [ %CAkey.01435, %if.else847 ], [ %CAkey.01435, %if.end790 ], [ %CAkey.01435, %if.end930 ], [ %CAkey.01435, %if.end916 ]
  %ret.21547 = phi i32 [ %ret.2.ph, %if.then937 ], [ 0, %sw.bb4 ], [ 0, %if.then845 ], [ 0, %if.else847 ], [ 0, %if.end790 ], [ 0, %if.end930 ], [ 0, %if.end916 ]
  %genctx.11545 = phi %struct.evp_pkey_ctx_st* [ %genctx.1.ph, %if.then937 ], [ null, %sw.bb4 ], [ null, %if.then845 ], [ null, %if.else847 ], [ null, %if.end790 ], [ null, %if.end930 ], [ null, %if.end916 ]
  %fsubj.11543 = phi %struct.X509_name_st* [ %fsubj.1.ph, %if.then937 ], [ null, %sw.bb4 ], [ %fsubj.0, %if.then845 ], [ %fsubj.0, %if.else847 ], [ %fsubj.0, %if.end790 ], [ %fsubj.0, %if.end930 ], [ %fsubj.0, %if.end916 ]
  %nofree_passout.11541 = phi i8* [ %nofree_passout.1.ph, %if.then937 ], [ null, %sw.bb4 ], [ %nofree_passout.0, %if.then845 ], [ %nofree_passout.0, %if.else847 ], [ %nofree_passout.0, %if.end790 ], [ %nofree_passout.0, %if.end930 ], [ %nofree_passout.0, %if.end916 ]
  %nofree_passin.11539 = phi i8* [ %nofree_passin.1.ph, %if.then937 ], [ null, %sw.bb4 ], [ %nofree_passin.0, %if.then845 ], [ %nofree_passin.0, %if.else847 ], [ %nofree_passin.0, %if.end790 ], [ %nofree_passin.0, %if.end930 ], [ %nofree_passin.0, %if.end916 ]
  %pkeyopts.41537 = phi %struct.stack_st_OPENSSL_STRING* [ %pkeyopts.4.ph, %if.then937 ], [ %pkeyopts.0, %sw.bb4 ], [ %pkeyopts.0, %if.then845 ], [ %pkeyopts.0, %if.else847 ], [ %pkeyopts.0, %if.end790 ], [ %pkeyopts.0, %if.end930 ], [ %pkeyopts.0, %if.end916 ]
  %addext_bio.41535 = phi %struct.bio_st* [ %addext_bio.4.ph, %if.then937 ], [ %addext_bio.0, %sw.bb4 ], [ %addext_bio.0, %if.then845 ], [ %addext_bio.0, %if.else847 ], [ %addext_bio.0, %if.end790 ], [ %addext_bio.0, %if.end930 ], [ %addext_bio.0, %if.end916 ]
  %req.31533 = phi %struct.X509_req_st* [ %req.3.ph, %if.then937 ], [ null, %sw.bb4 ], [ %req.214672340, %if.then845 ], [ %req.214672340, %if.else847 ], [ %req.214672340, %if.end790 ], [ %req.214672340, %if.end930 ], [ %req.214672340, %if.end916 ]
  %CAcert.11531 = phi %struct.x509_st* [ %CAcert.1.ph, %if.then937 ], [ null, %sw.bb4 ], [ %CAcert.0, %if.then845 ], [ %CAcert.0, %if.else847 ], [ %CAcert.0, %if.end790 ], [ %CAcert.0, %if.end930 ], [ %CAcert.0, %if.end916 ]
  %new_x509.11529 = phi %struct.x509_st* [ %new_x509.1.ph, %if.then937 ], [ null, %sw.bb4 ], [ %new_x509.014592352, %if.then845 ], [ %new_x509.014592352, %if.else847 ], [ %new_x509.014592352, %if.end790 ], [ %new_x509.014592352, %if.end930 ], [ %new_x509.014592352, %if.end916 ]
  %addexts.41527 = phi %struct.lhash_st_OPENSSL_STRING* [ %addexts.4.ph, %if.then937 ], [ %addexts.0, %sw.bb4 ], [ %addexts.0, %if.then845 ], [ %addexts.0, %if.else847 ], [ %addexts.0, %if.end790 ], [ %addexts.0, %if.end930 ], [ %addexts.0, %if.end916 ]
  %vfyopts.41525 = phi %struct.stack_st_OPENSSL_STRING* [ %vfyopts.4.ph, %if.then937 ], [ %vfyopts.0, %sw.bb4 ], [ %vfyopts.0, %if.then845 ], [ %vfyopts.0, %if.else847 ], [ %vfyopts.0, %if.end790 ], [ %vfyopts.0, %if.end930 ], [ %vfyopts.0, %if.end916 ]
  %sigopts.41523 = phi %struct.stack_st_OPENSSL_STRING* [ %sigopts.4.ph, %if.then937 ], [ %sigopts.0, %sw.bb4 ], [ %sigopts.0, %if.then845 ], [ %sigopts.0, %if.else847 ], [ %sigopts.0, %if.end790 ], [ %sigopts.0, %if.end930 ], [ %sigopts.0, %if.end916 ]
  %143 = load %struct.conf_st*, %struct.conf_st** @req_conf, align 8, !tbaa !3
  call void @NCONF_free(%struct.conf_st* noundef %143) #10
  %144 = load %struct.conf_st*, %struct.conf_st** @addext_conf, align 8, !tbaa !3
  call void @NCONF_free(%struct.conf_st* noundef %144) #10
  %call939 = call i32 @BIO_free(%struct.bio_st* noundef %addext_bio.41535) #10
  call void @BIO_free_all(%struct.bio_st* noundef %out.11555) #10
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %pkey.21551) #10
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %genctx.11545) #10
  %call940 = call fastcc %struct.stack_st* @ossl_check_OPENSSL_STRING_sk_type(%struct.stack_st_OPENSSL_STRING* noundef %pkeyopts.41537) #11
  call void @OPENSSL_sk_free(%struct.stack_st* noundef %call940) #10
  %call941 = call fastcc %struct.stack_st* @ossl_check_OPENSSL_STRING_sk_type(%struct.stack_st_OPENSSL_STRING* noundef %sigopts.41523) #11
  call void @OPENSSL_sk_free(%struct.stack_st* noundef %call941) #10
  %call942 = call fastcc %struct.stack_st* @ossl_check_OPENSSL_STRING_sk_type(%struct.stack_st_OPENSSL_STRING* noundef %vfyopts.41525) #11
  call void @OPENSSL_sk_free(%struct.stack_st* noundef %call942) #10
  %call943 = call fastcc %struct.lhash_st* @ossl_check_OPENSSL_STRING_lh_type(%struct.lhash_st_OPENSSL_STRING* noundef %addexts.41527) #11
  call void @OPENSSL_LH_doall(%struct.lhash_st* noundef %call943, void (i8*)* noundef bitcast (void (i8**)* @exts_cleanup to void (i8*)*)) #10
  call void @OPENSSL_LH_free(%struct.lhash_st* noundef %call943) #10
  call void @release_engine(%struct.engine_st* noundef %gen_eng.31553) #10
  call void @CRYPTO_free(i8* noundef %142, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.184, i64 0, i64 0), i32 noundef 1045) #10
  call void @X509_REQ_free(%struct.X509_req_st* noundef %req.31533) #10
  call void @X509_NAME_free(%struct.X509_name_st* noundef %fsubj.11543) #10
  call void @X509_free(%struct.x509_st* noundef %new_x509.11529) #10
  call void @X509_free(%struct.x509_st* noundef %CAcert.11531) #10
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %CAkey.11549) #10
  call void @ASN1_INTEGER_free(%struct.asn1_string_st* noundef %serial.31557) #10
  call void @release_engine(%struct.engine_st* noundef %e.0) #10
  %145 = load i8*, i8** %passin, align 8, !tbaa !3
  %cmp946.not = icmp eq i8* %145, %nofree_passin.11539
  br i1 %cmp946.not, label %if.end949, label %if.then948

if.then948:                                       ; preds = %if.end938
  call void @CRYPTO_free(i8* noundef %145, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.184, i64 0, i64 0), i32 noundef 1054) #10
  br label %if.end949

if.end949:                                        ; preds = %if.then948, %if.end938
  %146 = load i8*, i8** %passout, align 8, !tbaa !3
  %cmp950.not = icmp eq i8* %146, %nofree_passout.11541
  br i1 %cmp950.not, label %cleanup954, label %if.then952

if.then952:                                       ; preds = %if.end949
  call void @CRYPTO_free(i8* noundef %146, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.184, i64 0, i64 0), i32 noundef 1056) #10
  br label %cleanup954

cleanup954:                                       ; preds = %if.end949, %if.then952
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %9) #9
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %8) #9
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #9
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #9
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #9
  ret i32 %ret.21547
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare dso_local %struct.evp_cipher_st* @EVP_des_ede3_cbc() local_unnamed_addr #2

declare dso_local i8* @opt_init(i32 noundef, i8** noundef, %struct.options_st* noundef) local_unnamed_addr #2

declare dso_local i32 @opt_next() local_unnamed_addr #2

declare dso_local i32 @BIO_printf(%struct.bio_st* noundef, i8* noundef, ...) local_unnamed_addr #2

declare dso_local void @opt_help(%struct.options_st* noundef) local_unnamed_addr #2

declare dso_local i32 @opt_format(i8* noundef, i64 noundef, i32* noundef) local_unnamed_addr #2

declare dso_local i8* @opt_arg() local_unnamed_addr #2

declare dso_local %struct.engine_st* @setup_engine_methods(i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i32 @opt_rand(i32 noundef) local_unnamed_addr #2

declare dso_local i32 @opt_provider(i32 noundef) local_unnamed_addr #2

declare dso_local %struct.stack_st* @OPENSSL_sk_new_null() local_unnamed_addr #2

declare dso_local i32 @OPENSSL_sk_push(%struct.stack_st* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_OPENSSL_STRING_sk_type(%struct.stack_st_OPENSSL_STRING* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_OPENSSL_STRING* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare dso_local i32 @set_nameopt(i8* noundef) local_unnamed_addr #2

declare dso_local i32 @set_cert_ex(i64* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline nounwind readonly uwtable willreturn
declare dso_local i32 @atoi(i8* noundef nonnull) local_unnamed_addr #4

declare dso_local %struct.asn1_string_st* @s2i_ASN1_INTEGER(%struct.v3_ext_method* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local i32 @set_ext_copy(i32* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local %struct.lhash_st* @OPENSSL_LH_new(i64 (i8*)* noundef, i32 (i8*, i8*)* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal i64 @ext_name_hash(i8** noundef %a) #0 {
entry:
  %0 = bitcast i8** %a to i8*
  %call = tail call i64 @OPENSSL_LH_strhash(i8* noundef %0) #10
  ret i64 %call
}

; Function Attrs: mustprogress nofree noinline nounwind readonly uwtable willreturn
define internal i32 @ext_name_cmp(i8** noundef readonly %a, i8** noundef readonly %b) #4 {
entry:
  %0 = bitcast i8** %a to i8*
  %1 = bitcast i8** %b to i8*
  %call = tail call i32 @strcmp(i8* noundef %0, i8* noundef %1) #12
  ret i32 %call
}

declare dso_local %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef) local_unnamed_addr #2

declare dso_local %struct.bio_method_st* @BIO_s_mem() local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @duplicated(%struct.lhash_st_OPENSSL_STRING* noundef %addexts, i8* noundef %kv) unnamed_addr #0 {
entry:
  %.pr = load i8, i8* %kv, align 1, !tbaa !14
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = phi i8 [ %4, %while.body ], [ %.pr, %entry ]
  %kv.addr.0 = phi i8* [ %incdec.ptr, %while.body ], [ %kv, %entry ]
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %while.end, label %land.rhs

land.rhs:                                         ; preds = %while.cond
  %call = tail call i16** @__ctype_b_loc() #13
  %1 = load i16*, i16** %call, align 8, !tbaa !3
  %idxprom = sext i8 %0 to i64
  %arrayidx = getelementptr inbounds i16, i16* %1, i64 %idxprom
  %2 = load i16, i16* %arrayidx, align 2, !tbaa !15
  %3 = and i16 %2, 8192
  %tobool3.not = icmp eq i16 %3, 0
  br i1 %tobool3.not, label %while.end, label %while.body

while.body:                                       ; preds = %land.rhs
  %incdec.ptr = getelementptr inbounds i8, i8* %kv.addr.0, i64 1
  %4 = load i8, i8* %incdec.ptr, align 1, !tbaa !14
  %cmp = icmp eq i8 %4, 0
  br i1 %cmp, label %cleanup, label %while.cond, !llvm.loop !17

while.end:                                        ; preds = %while.cond, %land.rhs
  %call6 = tail call i8* @strchr(i8* noundef nonnull %kv.addr.0, i32 noundef 61) #12
  %cmp7 = icmp eq i8* %call6, null
  br i1 %cmp7, label %cleanup, label %if.end10

if.end10:                                         ; preds = %while.end
  %call11 = tail call i8* @CRYPTO_strdup(i8* noundef nonnull %kv.addr.0, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.184, i64 0, i64 0), i32 noundef 207) #10
  %cmp12 = icmp eq i8* %call11, null
  br i1 %cmp12, label %cleanup, label %if.end15

if.end15:                                         ; preds = %if.end10
  %sub.ptr.lhs.cast = ptrtoint i8* %call6 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %kv.addr.0 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %add.ptr = getelementptr inbounds i8, i8* %call11, i64 %sub.ptr.sub
  br label %for.cond

for.cond:                                         ; preds = %for.body, %if.end15
  %p.0 = phi i8* [ %add.ptr, %if.end15 ], [ %arrayidx19, %for.body ]
  %cmp16 = icmp ugt i8* %p.0, %call11
  br i1 %cmp16, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call18 = tail call i16** @__ctype_b_loc() #13
  %5 = load i16*, i16** %call18, align 8, !tbaa !3
  %arrayidx19 = getelementptr inbounds i8, i8* %p.0, i64 -1
  %6 = load i8, i8* %arrayidx19, align 1, !tbaa !14
  %idxprom21 = sext i8 %6 to i64
  %arrayidx22 = getelementptr inbounds i16, i16* %5, i64 %idxprom21
  %7 = load i16, i16* %arrayidx22, align 2, !tbaa !15
  %8 = and i16 %7, 8192
  %tobool25.not = icmp eq i16 %8, 0
  br i1 %tobool25.not, label %for.end, label %for.cond, !llvm.loop !18

for.end:                                          ; preds = %for.body, %for.cond
  %cmp29 = icmp eq i8* %p.0, %call11
  br i1 %cmp29, label %if.then31, label %if.end32

if.then31:                                        ; preds = %for.end
  tail call void @CRYPTO_free(i8* noundef nonnull %call11, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.184, i64 0, i64 0), i32 noundef 215) #10
  br label %cleanup

if.end32:                                         ; preds = %for.end
  store i8 0, i8* %p.0, align 1, !tbaa !14
  %call33 = tail call fastcc %struct.lhash_st* @ossl_check_OPENSSL_STRING_lh_type(%struct.lhash_st_OPENSSL_STRING* noundef %addexts) #11
  %call35 = tail call i8* @OPENSSL_LH_insert(%struct.lhash_st* noundef %call33, i8* noundef nonnull %call11) #10
  %cmp36.not = icmp eq i8* %call35, null
  br i1 %cmp36.not, label %if.else, label %if.then38

if.then38:                                        ; preds = %if.end32
  tail call void @CRYPTO_free(i8* noundef nonnull %call35, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.184, i64 0, i64 0), i32 noundef 223) #10
  br label %cleanup

if.else:                                          ; preds = %if.end32
  %call40 = tail call i32 @OPENSSL_LH_error(%struct.lhash_st* noundef %call33) #10
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %cleanup, label %if.then42

if.then42:                                        ; preds = %if.else
  tail call void @CRYPTO_free(i8* noundef nonnull %call11, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.184, i64 0, i64 0), i32 noundef 226) #10
  br label %cleanup

cleanup:                                          ; preds = %while.body, %if.else, %if.end10, %while.end, %if.then42, %if.then38, %if.then31
  %retval.0 = phi i32 [ 1, %if.then31 ], [ 1, %if.then38 ], [ -1, %if.then42 ], [ 1, %while.end ], [ -1, %if.end10 ], [ 0, %if.else ], [ 1, %while.body ]
  ret i32 %retval.0
}

declare dso_local i8* @opt_unknown() local_unnamed_addr #2

declare dso_local i32 @opt_num_rest() local_unnamed_addr #2

declare dso_local i32 @app_RAND_load() local_unnamed_addr #2

declare dso_local i32 @app_passwd(i8* noundef, i8* noundef, i8** noundef, i8** noundef) local_unnamed_addr #2

declare dso_local %struct.conf_st* @app_load_config_verbose(i8* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local %struct.conf_st* @app_load_config_bio(%struct.bio_st* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local i32 @app_load_modules(%struct.conf_st* noundef) local_unnamed_addr #2

declare dso_local i8* @NCONF_get_string(%struct.conf_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local void @ERR_clear_error() local_unnamed_addr #2

declare dso_local %struct.bio_st* @BIO_new_file(i8* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local i32 @OBJ_create_objects(%struct.bio_st* noundef) local_unnamed_addr #2

declare dso_local i32 @BIO_free(%struct.bio_st* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

declare dso_local i32 @add_oid_section(%struct.conf_st* noundef) local_unnamed_addr #2

declare dso_local i32 @opt_md(i8* noundef, %struct.evp_md_st** noundef) local_unnamed_addr #2

declare dso_local void @EVP_MD_free(%struct.evp_md_st* noundef) local_unnamed_addr #2

declare dso_local void @X509V3_set_ctx(%struct.v3_ext_ctx* noundef, %struct.x509_st* noundef, %struct.x509_st* noundef, %struct.X509_req_st* noundef, %struct.X509_crl_st* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local void @X509V3_set_nconf(%struct.v3_ext_ctx* noundef, %struct.conf_st* noundef) local_unnamed_addr #2

declare dso_local i32 @X509V3_EXT_add_nconf(%struct.conf_st* noundef, %struct.v3_ext_ctx* noundef, i8* noundef, %struct.x509_st* noundef) local_unnamed_addr #2

declare dso_local i32 @ASN1_STRING_set_default_mask_asc(i8* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) local_unnamed_addr #5

declare dso_local %struct.evp_pkey_st* @load_key(i8* noundef, i32 noundef, i32 noundef, i8* noundef, %struct.engine_st* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local void @app_RAND_load_conf(%struct.conf_st* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local i32 @NCONF_get_number_e(%struct.conf_st* noundef, i8* noundef, i8* noundef, i64* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.evp_pkey_ctx_st* @set_keygen_ctx(i8* noundef %gstr, i8** nocapture noundef %pkeytype, i64* nocapture noundef %pkeylen, %struct.engine_st* noundef %keygen_engine) unnamed_addr #0 {
entry:
  %params = alloca [2 x %struct.ossl_param_st], align 16
  %bits = alloca i64, align 8
  %cmp = icmp eq i8* %gstr, null
  br i1 %cmp, label %if.end94.thread, label %if.else

if.end94.thread:                                  ; preds = %entry
  %0 = load i64, i64* %pkeylen, align 8, !tbaa !9
  br label %if.else99

if.else:                                          ; preds = %entry
  %1 = load i8, i8* %gstr, align 1, !tbaa !14
  %2 = add i8 %1, -48
  %3 = icmp ult i8 %2, 10
  br i1 %3, label %if.then51, label %if.else8

if.else8:                                         ; preds = %if.else
  %call = tail call i8* @strchr(i8* noundef nonnull %gstr, i32 noundef 58) #12
  %cmp9.not = icmp eq i8* %call, null
  br i1 %cmp9.not, label %if.else13, label %if.then11

if.then11:                                        ; preds = %if.else8
  %sub.ptr.lhs.cast = ptrtoint i8* %call to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %gstr to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  br label %if.end

if.else13:                                        ; preds = %if.else8
  %call14 = tail call i64 @strlen(i8* noundef nonnull %gstr) #12
  br label %if.end

if.end:                                           ; preds = %if.else13, %if.then11
  %len.0.in = phi i64 [ %sub.ptr.sub, %if.then11 ], [ %call14, %if.else13 ]
  %sext = shl i64 %len.0.in, 32
  %conv16 = ashr exact i64 %sext, 32
  %call17 = tail call i32 @strncmp(i8* noundef nonnull %gstr, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.215, i64 0, i64 0), i64 noundef %conv16) #12
  %cmp18 = icmp ne i32 %call17, 0
  %cmp9.not.not = xor i1 %cmp9.not, true
  %brmerge = select i1 %cmp18, i1 true, i1 %cmp9.not.not
  br i1 %brmerge, label %if.end37, label %cleanup

cleanup:                                          ; preds = %if.end
  %4 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call24 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %4, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.216, i64 0, i64 0), i8* noundef nonnull %gstr) #10
  br label %cleanup177

if.end37:                                         ; preds = %if.end
  %conv16.mux = select i1 %cmp18, i64 %conv16, i64 0
  %gstr.mux = select i1 %cmp18, i8* %gstr, i8* null
  %add.ptr = getelementptr inbounds i8, i8* %gstr, i64 %conv16
  %add.ptr32 = getelementptr inbounds i8, i8* %add.ptr, i64 1
  br i1 %cmp9.not, label %if.end94, label %if.then40

if.then40:                                        ; preds = %if.end37
  br i1 %cmp18, label %land.lhs.true41, label %if.then58

land.lhs.true41:                                  ; preds = %if.then40
  %.pre = load i8, i8* %add.ptr32, align 1, !tbaa !14
  %.pre334 = add i8 %.pre, -48
  %5 = icmp ult i8 %.pre334, 10
  br i1 %5, label %if.then51, label %if.then58

if.then51:                                        ; preds = %if.else, %land.lhs.true41
  %gstr.addr.2289296341 = phi i8* [ %add.ptr32, %land.lhs.true41 ], [ %gstr, %if.else ]
  %keytypelen.2287297340 = phi i64 [ %conv16, %land.lhs.true41 ], [ 0, %if.else ]
  %keytype.2286298339 = phi i8* [ %gstr, %land.lhs.true41 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.137, i64 0, i64 0), %if.else ]
  %call52 = tail call i64 @atol(i8* noundef %gstr.addr.2289296341) #12
  br label %if.end94

if.then58:                                        ; preds = %land.lhs.true41, %if.then40
  %keytypelen.2277 = phi i64 [ %conv16, %land.lhs.true41 ], [ 0, %if.then40 ]
  %keytype.2276 = phi i8* [ %gstr, %land.lhs.true41 ], [ null, %if.then40 ]
  %call59 = tail call %struct.bio_st* @BIO_new_file(i8* noundef nonnull %add.ptr32, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.121, i64 0, i64 0)) #10
  %cmp60 = icmp eq %struct.bio_st* %call59, null
  br i1 %cmp60, label %if.then62, label %if.end64

if.then62:                                        ; preds = %if.then58
  %6 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call63 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %6, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.217, i64 0, i64 0), i8* noundef nonnull %add.ptr32) #10
  br label %cleanup177

if.end64:                                         ; preds = %if.then58
  %call65 = tail call %struct.evp_pkey_st* @PEM_read_bio_Parameters(%struct.bio_st* noundef nonnull %call59, %struct.evp_pkey_st** noundef null) #10
  %cmp66 = icmp eq %struct.evp_pkey_st* %call65, null
  br i1 %cmp66, label %if.then68, label %if.end77.thread310

if.end77.thread310:                               ; preds = %if.end64
  %call78312 = tail call i32 @BIO_free(%struct.bio_st* noundef nonnull %call59) #10
  br label %if.end83

if.then68:                                        ; preds = %if.end64
  %call69 = tail call i64 @BIO_ctrl(%struct.bio_st* noundef nonnull %call59, i32 noundef 1, i64 noundef 0, i8* noundef null) #10
  %call71 = tail call %struct.x509_st* @PEM_read_bio_X509(%struct.bio_st* noundef nonnull %call59, %struct.x509_st** noundef null, i32 (i8*, i32, i32, i8*)* noundef null, i8* noundef null) #10
  %cmp72.not = icmp eq %struct.x509_st* %call71, null
  br i1 %cmp72.not, label %if.end77.thread, label %if.end77

if.end77.thread:                                  ; preds = %if.then68
  %call78308 = tail call i32 @BIO_free(%struct.bio_st* noundef nonnull %call59) #10
  br label %if.then81

if.end77:                                         ; preds = %if.then68
  %call75 = tail call %struct.evp_pkey_st* @X509_get_pubkey(%struct.x509_st* noundef nonnull %call71) #10
  tail call void @X509_free(%struct.x509_st* noundef nonnull %call71) #10
  %call78 = tail call i32 @BIO_free(%struct.bio_st* noundef nonnull %call59) #10
  %cmp79 = icmp eq %struct.evp_pkey_st* %call75, null
  br i1 %cmp79, label %if.then81, label %if.end83

if.then81:                                        ; preds = %if.end77.thread, %if.end77
  %7 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call82 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %7, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.218, i64 0, i64 0), i8* noundef nonnull %add.ptr32) #10
  br label %cleanup177

if.end83:                                         ; preds = %if.end77.thread310, %if.end77
  %param.1314 = phi %struct.evp_pkey_st* [ %call65, %if.end77.thread310 ], [ %call75, %if.end77 ]
  %cmp84 = icmp eq i8* %keytype.2276, null
  br i1 %cmp84, label %if.then86, label %if.end94

if.then86:                                        ; preds = %if.end83
  %call87 = tail call i8* @EVP_PKEY_get0_type_name(%struct.evp_pkey_st* noundef nonnull %param.1314) #10
  %cmp88 = icmp eq i8* %call87, null
  br i1 %cmp88, label %if.then90, label %if.end94

if.then90:                                        ; preds = %if.then86
  tail call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef nonnull %param.1314) #10
  %8 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call91 = tail call i32 @BIO_puts(%struct.bio_st* noundef %8, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.219, i64 0, i64 0)) #10
  br label %cleanup177

if.end94:                                         ; preds = %if.end37, %if.then51, %if.end83, %if.then86
  %keylen.1306 = phi i64 [ -1, %if.then86 ], [ -1, %if.end83 ], [ -1, %if.end37 ], [ %call52, %if.then51 ]
  %keytypelen.2277305 = phi i64 [ %keytypelen.2277, %if.then86 ], [ %keytypelen.2277, %if.end83 ], [ %conv16.mux, %if.end37 ], [ %keytypelen.2287297340, %if.then51 ]
  %param.2 = phi %struct.evp_pkey_st* [ %param.1314, %if.then86 ], [ %param.1314, %if.end83 ], [ null, %if.end37 ], [ null, %if.then51 ]
  %keytype.3 = phi i8* [ %call87, %if.then86 ], [ %keytype.2276, %if.end83 ], [ %gstr.mux, %if.end37 ], [ %keytype.2286298339, %if.then51 ]
  %cmp95.not = icmp eq i64 %keytypelen.2277305, 0
  br i1 %cmp95.not, label %if.else99, label %if.then97

if.then97:                                        ; preds = %if.end94
  %call98 = tail call i8* @CRYPTO_strndup(i8* noundef %keytype.3, i64 noundef %keytypelen.2277305, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.184, i64 0, i64 0), i32 noundef 1591) #10
  br label %if.end101

if.else99:                                        ; preds = %if.end94.thread, %if.end94
  %keytype.3333 = phi i8* [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.137, i64 0, i64 0), %if.end94.thread ], [ %keytype.3, %if.end94 ]
  %param.2331 = phi %struct.evp_pkey_st* [ null, %if.end94.thread ], [ %param.2, %if.end94 ]
  %keylen.1306329 = phi i64 [ %0, %if.end94.thread ], [ %keylen.1306, %if.end94 ]
  %call100 = tail call i8* @CRYPTO_strdup(i8* noundef %keytype.3333, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.184, i64 0, i64 0), i32 noundef 1593) #10
  br label %if.end101

if.end101:                                        ; preds = %if.else99, %if.then97
  %param.2330 = phi %struct.evp_pkey_st* [ %param.2331, %if.else99 ], [ %param.2, %if.then97 ]
  %keylen.1306328 = phi i64 [ %keylen.1306329, %if.else99 ], [ %keylen.1306, %if.then97 ]
  %storemerge = phi i8* [ %call100, %if.else99 ], [ %call98, %if.then97 ]
  store i8* %storemerge, i8** %pkeytype, align 8, !tbaa !3
  %cmp102 = icmp sgt i64 %keylen.1306328, -1
  br i1 %cmp102, label %if.then104, label %if.end105

if.then104:                                       ; preds = %if.end101
  store i64 %keylen.1306328, i64* %pkeylen, align 8, !tbaa !9
  br label %if.end105

if.end105:                                        ; preds = %if.then104, %if.end101
  %cmp106.not = icmp eq %struct.evp_pkey_st* %param.2330, null
  br i1 %cmp106.not, label %if.else125, label %if.then108

if.then108:                                       ; preds = %if.end105
  %call109 = tail call i32 @EVP_PKEY_is_a(%struct.evp_pkey_st* noundef nonnull %param.2330, i8* noundef %storemerge) #10
  %tobool110.not = icmp eq i32 %call109, 0
  br i1 %tobool110.not, label %if.then111, label %if.end113

if.then111:                                       ; preds = %if.then108
  %9 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call112 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %9, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.220, i64 0, i64 0)) #10
  tail call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef nonnull %param.2330) #10
  br label %cleanup177

if.end113:                                        ; preds = %if.then108
  %cmp114.not = icmp eq %struct.engine_st* %keygen_engine, null
  br i1 %cmp114.not, label %if.else118, label %if.then116

if.then116:                                       ; preds = %if.end113
  %call117 = tail call %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new(%struct.evp_pkey_st* noundef nonnull %param.2330, %struct.engine_st* noundef nonnull %keygen_engine) #10
  br label %if.end122

if.else118:                                       ; preds = %if.end113
  %call119 = tail call %struct.ossl_lib_ctx_st* @app_get0_libctx() #10
  %call120 = tail call i8* @app_get0_propq() #10
  %call121 = tail call %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_from_pkey(%struct.ossl_lib_ctx_st* noundef %call119, %struct.evp_pkey_st* noundef nonnull %param.2330, i8* noundef %call120) #10
  br label %if.end122

if.end122:                                        ; preds = %if.else118, %if.then116
  %gctx.0 = phi %struct.evp_pkey_ctx_st* [ %call117, %if.then116 ], [ %call121, %if.else118 ]
  %call123 = tail call i32 @EVP_PKEY_get_bits(%struct.evp_pkey_st* noundef nonnull %param.2330) #10
  %conv124 = sext i32 %call123 to i64
  store i64 %conv124, i64* %pkeylen, align 8, !tbaa !9
  tail call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef nonnull %param.2330) #10
  br label %if.end141

if.else125:                                       ; preds = %if.end105
  %cmp126.not = icmp eq %struct.engine_st* %keygen_engine, null
  %call137 = tail call %struct.ossl_lib_ctx_st* @app_get0_libctx() #10
  %10 = load i8*, i8** %pkeytype, align 8, !tbaa !3
  br i1 %cmp126.not, label %if.else136, label %if.then128

if.then128:                                       ; preds = %if.else125
  %call130 = tail call i32 @get_legacy_pkey_id(%struct.ossl_lib_ctx_st* noundef %call137, i8* noundef %10, %struct.engine_st* noundef nonnull %keygen_engine) #10
  %cmp131.not = icmp eq i32 %call130, 0
  br i1 %cmp131.not, label %if.then144, label %if.then133

if.then133:                                       ; preds = %if.then128
  %call134 = tail call %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_id(i32 noundef %call130, %struct.engine_st* noundef nonnull %keygen_engine) #10
  br label %if.end141

if.else136:                                       ; preds = %if.else125
  %call138 = tail call i8* @app_get0_propq() #10
  %call139 = tail call %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_from_name(%struct.ossl_lib_ctx_st* noundef %call137, i8* noundef %10, i8* noundef %call138) #10
  br label %if.end141

if.end141:                                        ; preds = %if.then133, %if.else136, %if.end122
  %gctx.2 = phi %struct.evp_pkey_ctx_st* [ %gctx.0, %if.end122 ], [ %call139, %if.else136 ], [ %call134, %if.then133 ]
  %cmp142 = icmp eq %struct.evp_pkey_ctx_st* %gctx.2, null
  br i1 %cmp142, label %if.then144, label %if.end146

if.then144:                                       ; preds = %if.then128, %if.end141
  %11 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call145 = tail call i32 @BIO_puts(%struct.bio_st* noundef %11, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.221, i64 0, i64 0)) #10
  br label %cleanup177

if.end146:                                        ; preds = %if.end141
  %call147 = tail call i32 @EVP_PKEY_keygen_init(%struct.evp_pkey_ctx_st* noundef nonnull %gctx.2) #10
  %cmp148 = icmp slt i32 %call147, 1
  br i1 %cmp148, label %if.then150, label %if.end152

if.then150:                                       ; preds = %if.end146
  %12 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call151 = tail call i32 @BIO_puts(%struct.bio_st* noundef %12, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.222, i64 0, i64 0)) #10
  tail call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef nonnull %gctx.2) #10
  br label %cleanup177

if.end152:                                        ; preds = %if.end146
  %cmp153 = icmp eq i64 %keylen.1306328, -1
  br i1 %cmp153, label %land.lhs.true155, label %if.then164

land.lhs.true155:                                 ; preds = %if.end152
  %call156 = tail call i32 @EVP_PKEY_CTX_is_a(%struct.evp_pkey_ctx_st* noundef nonnull %gctx.2, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.137, i64 0, i64 0)) #10
  %tobool157.not = icmp eq i32 %call156, 0
  br i1 %tobool157.not, label %lor.lhs.false, label %if.end161

lor.lhs.false:                                    ; preds = %land.lhs.true155
  %call158 = tail call i32 @EVP_PKEY_CTX_is_a(%struct.evp_pkey_ctx_st* noundef nonnull %gctx.2, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.138, i64 0, i64 0)) #10
  %tobool159.not = icmp eq i32 %call158, 0
  br i1 %tobool159.not, label %cleanup177, label %if.end161

if.end161:                                        ; preds = %land.lhs.true155, %lor.lhs.false
  %13 = load i64, i64* %pkeylen, align 8, !tbaa !9
  %cmp162.not = icmp eq i64 %13, -1
  br i1 %cmp162.not, label %cleanup177, label %if.then164

if.then164:                                       ; preds = %if.end152, %if.end161
  %keylen.2322 = phi i64 [ %13, %if.end161 ], [ %keylen.1306328, %if.end152 ]
  %14 = bitcast [2 x %struct.ossl_param_st]* %params to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %14) #9
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(80) %14, i8 0, i64 80, i1 false)
  %15 = bitcast i64* %bits to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %15) #9
  store i64 %keylen.2322, i64* %bits, align 8, !tbaa !9
  %arrayidx165 = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0
  %params342 = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0
  call void @OSSL_PARAM_construct_size_t(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %params342, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.223, i64 0, i64 0), i64* noundef nonnull %bits) #10
  %call166 = call i32 @EVP_PKEY_CTX_set_params(%struct.evp_pkey_ctx_st* noundef nonnull %gctx.2, %struct.ossl_param_st* noundef nonnull %arrayidx165) #10
  %cmp167 = icmp slt i32 %call166, 1
  br i1 %cmp167, label %if.then169, label %if.end176.critedge

if.then169:                                       ; preds = %if.then164
  %16 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call170 = call i32 @BIO_puts(%struct.bio_st* noundef %16, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.224, i64 0, i64 0)) #10
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef nonnull %gctx.2) #10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %15) #9
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %14) #9
  br label %cleanup177

if.end176.critedge:                               ; preds = %if.then164
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %15) #9
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %14) #9
  br label %cleanup177

cleanup177:                                       ; preds = %lor.lhs.false, %cleanup, %if.end161, %if.end176.critedge, %if.then169, %if.then150, %if.then144, %if.then111, %if.then90, %if.then81, %if.then62
  %retval.3 = phi %struct.evp_pkey_ctx_st* [ null, %if.then62 ], [ null, %if.then81 ], [ null, %if.then90 ], [ null, %if.then144 ], [ null, %if.then150 ], [ null, %if.then169 ], [ null, %if.then111 ], [ null, %cleanup ], [ %gctx.2, %if.end176.critedge ], [ %gctx.2, %if.end161 ], [ %gctx.2, %lor.lhs.false ]
  ret %struct.evp_pkey_ctx_st* %retval.3
}

declare dso_local i32 @EVP_PKEY_CTX_is_a(%struct.evp_pkey_ctx_st* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local i32 @OPENSSL_sk_num(%struct.stack_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_OPENSSL_STRING_sk_type(%struct.stack_st_OPENSSL_STRING* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_OPENSSL_STRING* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare dso_local i8* @OPENSSL_sk_value(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i32 @pkey_ctrl_string(%struct.evp_pkey_ctx_st* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local void @EVP_PKEY_CTX_set_cb(%struct.evp_pkey_ctx_st* noundef, i32 (%struct.evp_pkey_ctx_st*)* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @genpkey_cb(%struct.evp_pkey_ctx_st* noundef %ctx) #0 {
entry:
  %c = alloca i8, align 1
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %c) #9
  store i8 42, i8* %c, align 1, !tbaa !14
  %call = tail call i8* @EVP_PKEY_CTX_get_app_data(%struct.evp_pkey_ctx_st* noundef %ctx) #10
  %0 = bitcast i8* %call to %struct.bio_st*
  %call1 = tail call i32 @EVP_PKEY_CTX_get_keygen_info(%struct.evp_pkey_ctx_st* noundef %ctx, i32 noundef 0) #10
  switch i32 %call1, label %if.end10 [
    i32 0, label %if.then
    i32 1, label %if.then3
    i32 2, label %if.then6
    i32 3, label %if.then9
  ]

if.then:                                          ; preds = %entry
  store i8 46, i8* %c, align 1, !tbaa !14
  br label %if.end10

if.then3:                                         ; preds = %entry
  store i8 43, i8* %c, align 1, !tbaa !14
  br label %if.end10

if.then6:                                         ; preds = %entry
  store i8 42, i8* %c, align 1, !tbaa !14
  br label %if.end10

if.then9:                                         ; preds = %entry
  store i8 10, i8* %c, align 1, !tbaa !14
  br label %if.end10

if.end10:                                         ; preds = %if.then6, %if.then3, %if.then, %entry, %if.then9
  %call11 = call i32 @BIO_write(%struct.bio_st* noundef %0, i8* noundef nonnull %c, i32 noundef 1) #10
  %call12 = call i64 @BIO_ctrl(%struct.bio_st* noundef %0, i32 noundef 11, i64 noundef 0, i8* noundef null) #10
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %c) #9
  ret i32 1
}

declare dso_local void @EVP_PKEY_CTX_set_app_data(%struct.evp_pkey_ctx_st* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local %struct.evp_pkey_st* @app_keygen(%struct.evp_pkey_ctx_st* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare dso_local void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #2

declare dso_local %struct.bio_st* @bio_open_owner(i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i32 @PEM_write_bio_PrivateKey(%struct.bio_st* noundef, %struct.evp_pkey_st* noundef, %struct.evp_cipher_st* noundef, i8* noundef, i32 noundef, i32 (i8*, i32, i32, i8*)* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc i32 @ERR_GET_REASON(i64 noundef %errcode) unnamed_addr #3 {
entry:
  %and = and i64 %errcode, 2147483648
  %cmp.not = icmp eq i64 %and, 0
  %0 = trunc i64 %errcode to i32
  %retval.0.v = select i1 %cmp.not, i32 8388607, i32 2147483647
  %retval.0 = and i32 %retval.0.v, %0
  ret i32 %retval.0
}

declare dso_local i64 @ERR_peek_error() local_unnamed_addr #2

declare dso_local %struct.X509_name_st* @parse_name(i8* noundef, i32 noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare dso_local %struct.X509_req_st* @load_csr(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare dso_local %struct.x509_st* @load_cert_pass(i8* noundef, i32 noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local i32 @X509_check_private_key(%struct.x509_st* noundef, %struct.evp_pkey_st* noundef) local_unnamed_addr #2

declare dso_local %struct.X509_req_st* @X509_REQ_new_ex(%struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local %struct.ossl_lib_ctx_st* @app_get0_libctx() local_unnamed_addr #2

declare dso_local i8* @app_get0_propq() local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @make_REQ(%struct.X509_req_st* noundef %req, %struct.evp_pkey_st* noundef %pkey, %struct.X509_name_st* noundef %fsubj, i32 noundef %attribs, i64 noundef %chtype) unnamed_addr #0 {
entry:
  %0 = load %struct.conf_st*, %struct.conf_st** @req_conf, align 8, !tbaa !3
  %1 = load i8*, i8** @section, align 8, !tbaa !3
  %call = tail call i8* @NCONF_get_string(%struct.conf_st* noundef %0, i8* noundef %1, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.186, i64 0, i64 0)) #10
  %cond = icmp eq i8* %call, null
  br i1 %cond, label %if.then, label %land.lhs.true

if.then:                                          ; preds = %entry
  tail call void @ERR_clear_error() #10
  br label %if.end5

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call i32 @strcmp(i8* noundef nonnull %call, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.150, i64 0, i64 0)) #12
  %cmp3 = icmp ne i32 %call2, 0
  br label %if.end5

if.end5:                                          ; preds = %land.lhs.true, %if.then
  %tobool32.not = phi i1 [ true, %if.then ], [ %cmp3, %land.lhs.true ]
  %2 = load %struct.conf_st*, %struct.conf_st** @req_conf, align 8, !tbaa !3
  %3 = load i8*, i8** @section, align 8, !tbaa !3
  %call6 = tail call i8* @NCONF_get_string(%struct.conf_st* noundef %2, i8* noundef %3, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.187, i64 0, i64 0)) #10
  %cmp7 = icmp eq i8* %call6, null
  br i1 %cmp7, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.end5
  tail call void @ERR_clear_error() #10
  br label %if.end14

if.else:                                          ; preds = %if.end5
  %4 = load %struct.conf_st*, %struct.conf_st** @req_conf, align 8, !tbaa !3
  %call9 = tail call %struct.stack_st_CONF_VALUE* @NCONF_get_section(%struct.conf_st* noundef %4, i8* noundef nonnull %call6) #10
  %cmp10 = icmp eq %struct.stack_st_CONF_VALUE* %call9, null
  br i1 %cmp10, label %if.then11, label %if.end14

if.then11:                                        ; preds = %if.else
  %5 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call12 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %5, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.188, i64 0, i64 0), i8* noundef nonnull %call6) #10
  br label %err

if.end14:                                         ; preds = %if.else, %if.then8
  %dn_sk.0 = phi %struct.stack_st_CONF_VALUE* [ null, %if.then8 ], [ %call9, %if.else ]
  %6 = load %struct.conf_st*, %struct.conf_st** @req_conf, align 8, !tbaa !3
  %7 = load i8*, i8** @section, align 8, !tbaa !3
  %call15 = tail call i8* @NCONF_get_string(%struct.conf_st* noundef %6, i8* noundef %7, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.189, i64 0, i64 0)) #10
  %cmp16 = icmp eq i8* %call15, null
  br i1 %cmp16, label %if.then17, label %if.else18

if.then17:                                        ; preds = %if.end14
  tail call void @ERR_clear_error() #10
  br label %if.end24

if.else18:                                        ; preds = %if.end14
  %8 = load %struct.conf_st*, %struct.conf_st** @req_conf, align 8, !tbaa !3
  %call19 = tail call %struct.stack_st_CONF_VALUE* @NCONF_get_section(%struct.conf_st* noundef %8, i8* noundef nonnull %call15) #10
  %cmp20 = icmp eq %struct.stack_st_CONF_VALUE* %call19, null
  br i1 %cmp20, label %if.then21, label %if.end24

if.then21:                                        ; preds = %if.else18
  %9 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call22 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %9, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.188, i64 0, i64 0), i8* noundef nonnull %call15) #10
  br label %err

if.end24:                                         ; preds = %if.else18, %if.then17
  %attr_sk.0 = phi %struct.stack_st_CONF_VALUE* [ null, %if.then17 ], [ %call19, %if.else18 ]
  %call25 = tail call i32 @X509_REQ_set_version(%struct.X509_req_st* noundef %req, i64 noundef 0) #10
  %tobool.not = icmp eq i32 %call25, 0
  br i1 %tobool.not, label %err, label %if.end27

if.end27:                                         ; preds = %if.end24
  %cmp28.not = icmp eq %struct.X509_name_st* %fsubj, null
  br i1 %cmp28.not, label %if.else31, label %if.then29

if.then29:                                        ; preds = %if.end27
  %call30 = tail call i32 @X509_REQ_set_subject_name(%struct.X509_req_st* noundef %req, %struct.X509_name_st* noundef nonnull %fsubj) #10
  br label %if.end38

if.else31:                                        ; preds = %if.end27
  br i1 %tobool32.not, label %if.else35, label %if.then33

if.then33:                                        ; preds = %if.else31
  %call34 = tail call fastcc i32 @auto_info(%struct.X509_req_st* noundef %req, %struct.stack_st_CONF_VALUE* noundef %dn_sk.0, %struct.stack_st_CONF_VALUE* noundef %attr_sk.0, i32 noundef %attribs, i64 noundef %chtype) #11
  br label %if.end38

if.else35:                                        ; preds = %if.else31
  %call36 = tail call fastcc i32 @prompt_info(%struct.X509_req_st* noundef %req, %struct.stack_st_CONF_VALUE* noundef %dn_sk.0, i8* noundef %call6, %struct.stack_st_CONF_VALUE* noundef %attr_sk.0, i8* noundef %call15, i32 noundef %attribs, i64 noundef %chtype) #11
  br label %if.end38

if.end38:                                         ; preds = %if.then33, %if.else35, %if.then29
  %i.0 = phi i32 [ %call30, %if.then29 ], [ %call34, %if.then33 ], [ %call36, %if.else35 ]
  %tobool39.not = icmp eq i32 %i.0, 0
  br i1 %tobool39.not, label %err, label %if.end41

if.end41:                                         ; preds = %if.end38
  %call42 = tail call i32 @X509_REQ_set_pubkey(%struct.X509_req_st* noundef %req, %struct.evp_pkey_st* noundef %pkey) #10
  %tobool43.not = icmp ne i32 %call42, 0
  %spec.select1 = zext i1 %tobool43.not to i32
  br label %err

err:                                              ; preds = %if.end41, %if.end38, %if.end24, %if.then21, %if.then11
  %ret.0 = phi i32 [ 0, %if.end38 ], [ 0, %if.end24 ], [ 0, %if.then21 ], [ 0, %if.then11 ], [ %spec.select1, %if.end41 ]
  ret i32 %ret.0
}

declare dso_local %struct.evp_pkey_st* @X509_REQ_get0_pubkey(%struct.X509_req_st* noundef) local_unnamed_addr #2

declare dso_local %struct.X509_name_st* @X509_get_subject_name(%struct.x509_st* noundef) local_unnamed_addr #2

declare dso_local %struct.X509_name_st* @X509_REQ_get_subject_name(%struct.X509_req_st* noundef) local_unnamed_addr #2

declare dso_local %struct.x509_st* @X509_new_ex(%struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local i32 @X509_set_serialNumber(%struct.x509_st* noundef, %struct.asn1_string_st* noundef) local_unnamed_addr #2

declare dso_local i32 @rand_serial(%struct.bignum_st* noundef, %struct.asn1_string_st* noundef) local_unnamed_addr #2

declare dso_local %struct.asn1_string_st* @X509_get_serialNumber(%struct.x509_st* noundef) local_unnamed_addr #2

declare dso_local i32 @X509_set_issuer_name(%struct.x509_st* noundef, %struct.X509_name_st* noundef) local_unnamed_addr #2

declare dso_local i32 @set_cert_times(%struct.x509_st* noundef, i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i32 @X509_set_subject_name(%struct.x509_st* noundef, %struct.X509_name_st* noundef) local_unnamed_addr #2

declare dso_local i32 @X509_set_pubkey(%struct.x509_st* noundef, %struct.evp_pkey_st* noundef) local_unnamed_addr #2

declare dso_local i32 @copy_extensions(%struct.x509_st* noundef, %struct.X509_req_st* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i32 @X509V3_set_issuer_pkey(%struct.v3_ext_ctx* noundef, %struct.evp_pkey_st* noundef) local_unnamed_addr #2

declare dso_local i32 @ERR_set_mark() local_unnamed_addr #2

declare dso_local i32 @ERR_pop_to_mark() local_unnamed_addr #2

declare dso_local i32 @X509_add1_ext_i2d(%struct.x509_st* noundef, i32 noundef, i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

declare dso_local i32 @do_X509_sign(%struct.x509_st* noundef, %struct.evp_pkey_st* noundef, i8* noundef, %struct.stack_st_OPENSSL_STRING* noundef, %struct.v3_ext_ctx* noundef) local_unnamed_addr #2

declare dso_local i32 @X509V3_EXT_REQ_add_nconf(%struct.conf_st* noundef, %struct.v3_ext_ctx* noundef, i8* noundef, %struct.X509_req_st* noundef) local_unnamed_addr #2

declare dso_local i32 @do_X509_REQ_sign(%struct.X509_req_st* noundef, %struct.evp_pkey_st* noundef, i8* noundef, %struct.stack_st_OPENSSL_STRING* noundef) local_unnamed_addr #2

declare dso_local void @print_name(%struct.bio_st* noundef, i8* noundef, %struct.X509_name_st* noundef) local_unnamed_addr #2

declare dso_local i32 @X509_REQ_set_subject_name(%struct.X509_req_st* noundef, %struct.X509_name_st* noundef) local_unnamed_addr #2

declare dso_local i32 @do_X509_REQ_verify(%struct.X509_req_st* noundef, %struct.evp_pkey_st* noundef, %struct.stack_st_OPENSSL_STRING* noundef) local_unnamed_addr #2

declare dso_local %struct.bio_st* @bio_open_default(i8* noundef, i8 noundef signext, i32 noundef) local_unnamed_addr #2

declare dso_local i32 @PEM_write_bio_PUBKEY(%struct.bio_st* noundef, %struct.evp_pkey_st* noundef) local_unnamed_addr #2

declare dso_local i32 @X509_print_ex(%struct.bio_st* noundef, %struct.x509_st* noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare dso_local i64 @get_nameopt() local_unnamed_addr #2

declare dso_local i32 @X509_REQ_print_ex(%struct.bio_st* noundef, %struct.X509_req_st* noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare dso_local %struct.evp_pkey_st* @X509_get0_pubkey(%struct.x509_st* noundef) local_unnamed_addr #2

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) local_unnamed_addr #2

declare dso_local i32 @EVP_PKEY_is_a(%struct.evp_pkey_st* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local i32 @EVP_PKEY_get_bn_param(%struct.evp_pkey_st* noundef, i8* noundef, %struct.bignum_st** noundef) local_unnamed_addr #2

declare dso_local i32 @BN_print(%struct.bio_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #2

declare dso_local void @BN_free(%struct.bignum_st* noundef) local_unnamed_addr #2

declare dso_local i32 @i2d_X509_REQ_bio(%struct.bio_st* noundef, %struct.X509_req_st* noundef) local_unnamed_addr #2

declare dso_local i32 @PEM_write_bio_X509_REQ_NEW(%struct.bio_st* noundef, %struct.X509_req_st* noundef) local_unnamed_addr #2

declare dso_local i32 @PEM_write_bio_X509_REQ(%struct.bio_st* noundef, %struct.X509_req_st* noundef) local_unnamed_addr #2

declare dso_local i32 @i2d_X509_bio(%struct.bio_st* noundef, %struct.x509_st* noundef) local_unnamed_addr #2

declare dso_local i32 @PEM_write_bio_X509(%struct.bio_st* noundef, %struct.x509_st* noundef) local_unnamed_addr #2

declare dso_local void @ERR_print_errors(%struct.bio_st* noundef) local_unnamed_addr #2

declare dso_local void @NCONF_free(%struct.conf_st* noundef) local_unnamed_addr #2

declare dso_local void @BIO_free_all(%struct.bio_st* noundef) local_unnamed_addr #2

declare dso_local void @EVP_PKEY_free(%struct.evp_pkey_st* noundef) local_unnamed_addr #2

declare dso_local void @OPENSSL_sk_free(%struct.stack_st* noundef) local_unnamed_addr #2

declare dso_local void @OPENSSL_LH_doall(%struct.lhash_st* noundef, void (i8*)* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.lhash_st* @ossl_check_OPENSSL_STRING_lh_type(%struct.lhash_st_OPENSSL_STRING* noundef readnone %lh) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.lhash_st_OPENSSL_STRING* %lh to %struct.lhash_st*
  ret %struct.lhash_st* %0
}

; Function Attrs: noinline nounwind uwtable
define internal void @exts_cleanup(i8** noundef %x) #0 {
entry:
  %0 = bitcast i8** %x to i8*
  tail call void @CRYPTO_free(i8* noundef %0, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.184, i64 0, i64 0), i32 noundef 187) #10
  ret void
}

declare dso_local void @OPENSSL_LH_free(%struct.lhash_st* noundef) local_unnamed_addr #2

declare dso_local void @release_engine(%struct.engine_st* noundef) local_unnamed_addr #2

declare dso_local void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local void @X509_REQ_free(%struct.X509_req_st* noundef) local_unnamed_addr #2

declare dso_local void @X509_NAME_free(%struct.X509_name_st* noundef) local_unnamed_addr #2

declare dso_local void @X509_free(%struct.x509_st* noundef) local_unnamed_addr #2

declare dso_local void @ASN1_INTEGER_free(%struct.asn1_string_st* noundef) local_unnamed_addr #2

declare dso_local i64 @OPENSSL_LH_strhash(i8* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i8* @strchr(i8* noundef, i32 noundef) local_unnamed_addr #5

declare dso_local i8* @CRYPTO_strdup(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i8* @OPENSSL_LH_insert(%struct.lhash_st* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local i32 @OPENSSL_LH_error(%struct.lhash_st* noundef) local_unnamed_addr #2

declare dso_local %struct.stack_st_CONF_VALUE* @NCONF_get_section(%struct.conf_st* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local i32 @X509_REQ_set_version(%struct.X509_req_st* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @auto_info(%struct.X509_req_st* noundef %req, %struct.stack_st_CONF_VALUE* noundef %dn_sk, %struct.stack_st_CONF_VALUE* noundef %attr_sk, i32 noundef %attribs, i64 noundef %chtype) unnamed_addr #0 {
entry:
  %call = tail call %struct.X509_name_st* @X509_REQ_get_subject_name(%struct.X509_req_st* noundef %req) #10
  %call1 = tail call fastcc %struct.stack_st* @ossl_check_const_CONF_VALUE_sk_type(%struct.stack_st_CONF_VALUE* noundef %dn_sk) #11
  %call2103 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call1) #10
  %cmp104 = icmp sgt i32 %call2103, 0
  br i1 %cmp104, label %for.body.lr.ph, label %for.end34

for.body.lr.ph:                                   ; preds = %entry
  %conv28 = trunc i64 %chtype to i32
  br label %for.body

for.cond:                                         ; preds = %for.end
  %call2 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call1) #10
  %cmp = icmp slt i32 %inc, %call2
  br i1 %cmp, label %for.body, label %for.end34, !llvm.loop !19

for.body:                                         ; preds = %for.body.lr.ph, %for.cond
  %i.0105 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond ]
  %call4 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call1, i32 noundef %i.0105) #10
  %name = getelementptr inbounds i8, i8* %call4, i64 8
  %0 = bitcast i8* %name to i8**
  %1 = load i8*, i8** %0, align 8, !tbaa !20
  br label %for.cond6

for.cond6:                                        ; preds = %lor.rhs, %for.body
  %p.0 = phi i8* [ %1, %for.body ], [ %incdec.ptr20, %lor.rhs ]
  %2 = load i8, i8* %p.0, align 1, !tbaa !14
  switch i8 %2, label %lor.rhs [
    i8 0, label %for.end
    i8 58, label %if.then
    i8 44, label %if.then
    i8 46, label %if.then
  ]

lor.rhs:                                          ; preds = %for.cond6
  %incdec.ptr20 = getelementptr inbounds i8, i8* %p.0, i64 1
  br label %for.cond6, !llvm.loop !22

if.then:                                          ; preds = %for.cond6, %for.cond6, %for.cond6
  %incdec.ptr = getelementptr inbounds i8, i8* %p.0, i64 1
  %3 = load i8, i8* %incdec.ptr, align 1, !tbaa !14
  %tobool17.not = icmp eq i8 %3, 0
  %spec.select = select i1 %tobool17.not, i8* %1, i8* %incdec.ptr
  br label %for.end

for.end:                                          ; preds = %for.cond6, %if.then
  %type.0 = phi i8* [ %spec.select, %if.then ], [ %1, %for.cond6 ]
  %4 = load i8, i8* %type.0, align 1, !tbaa !14
  %cmp22 = icmp eq i8 %4, 43
  %type.1.idx = zext i1 %cmp22 to i64
  %type.1 = getelementptr i8, i8* %type.0, i64 %type.1.idx
  %mval.0 = sext i1 %cmp22 to i32
  %value = getelementptr inbounds i8, i8* %call4, i64 16
  %5 = bitcast i8* %value to i8**
  %6 = load i8*, i8** %5, align 8, !tbaa !23
  %call29 = tail call i32 @X509_NAME_add_entry_by_txt(%struct.X509_name_st* noundef %call, i8* noundef nonnull %type.1, i32 noundef %conv28, i8* noundef %6, i32 noundef -1, i32 noundef -1, i32 noundef %mval.0) #10
  %tobool30.not = icmp eq i32 %call29, 0
  %inc = add nuw nsw i32 %i.0105, 1
  br i1 %tobool30.not, label %cleanup61, label %for.cond

for.end34:                                        ; preds = %for.cond, %entry
  %call35 = tail call i32 @X509_NAME_entry_count(%struct.X509_name_st* noundef %call) #10
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.then37, label %if.end39

if.then37:                                        ; preds = %for.end34
  %7 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call38 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %7, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.190, i64 0, i64 0)) #10
  br label %cleanup61

if.end39:                                         ; preds = %for.end34
  %tobool40.not = icmp eq i32 %attribs, 0
  br i1 %tobool40.not, label %cleanup61, label %for.cond42.preheader

for.cond42.preheader:                             ; preds = %if.end39
  %call43 = tail call fastcc %struct.stack_st* @ossl_check_const_CONF_VALUE_sk_type(%struct.stack_st_CONF_VALUE* noundef %attr_sk) #11
  %call44106 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call43) #10
  %cmp45107 = icmp sgt i32 %call44106, 0
  br i1 %cmp45107, label %for.body47.lr.ph, label %cleanup61

for.body47.lr.ph:                                 ; preds = %for.cond42.preheader
  %conv51 = trunc i64 %chtype to i32
  br label %for.body47

for.cond42:                                       ; preds = %for.body47
  %call44 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call43) #10
  %cmp45 = icmp slt i32 %inc58, %call44
  br i1 %cmp45, label %for.body47, label %cleanup61, !llvm.loop !24

for.body47:                                       ; preds = %for.body47.lr.ph, %for.cond42
  %i.1108 = phi i32 [ 0, %for.body47.lr.ph ], [ %inc58, %for.cond42 ]
  %call49 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call43, i32 noundef %i.1108) #10
  %name50 = getelementptr inbounds i8, i8* %call49, i64 8
  %8 = bitcast i8* %name50 to i8**
  %9 = load i8*, i8** %8, align 8, !tbaa !20
  %value52 = getelementptr inbounds i8, i8* %call49, i64 16
  %10 = bitcast i8* %value52 to i8**
  %11 = load i8*, i8** %10, align 8, !tbaa !23
  %call53 = tail call i32 @X509_REQ_add1_attr_by_txt(%struct.X509_req_st* noundef %req, i8* noundef %9, i32 noundef %conv51, i8* noundef %11, i32 noundef -1) #10
  %tobool54.not = icmp eq i32 %call53, 0
  %inc58 = add nuw nsw i32 %i.1108, 1
  br i1 %tobool54.not, label %cleanup61, label %for.cond42

cleanup61:                                        ; preds = %for.end, %for.body47, %for.cond42, %for.cond42.preheader, %if.end39, %if.then37
  %retval.2 = phi i32 [ 0, %if.then37 ], [ 1, %if.end39 ], [ 1, %for.cond42.preheader ], [ 0, %for.body47 ], [ 1, %for.cond42 ], [ 0, %for.end ]
  ret i32 %retval.2
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @prompt_info(%struct.X509_req_st* noundef %req, %struct.stack_st_CONF_VALUE* noundef %dn_sk, i8* noundef %dn_sect, %struct.stack_st_CONF_VALUE* noundef %attr_sk, i8* noundef %attr_sect, i32 noundef %attribs, i64 noundef %chtype) unnamed_addr #0 {
entry:
  %buf = alloca [100 x i8], align 16
  %n_min = alloca i64, align 8
  %n_max = alloca i64, align 8
  %0 = getelementptr inbounds [100 x i8], [100 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 100, i8* nonnull %0) #9
  %1 = bitcast i64* %n_min to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #9
  %2 = bitcast i64* %n_max to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #9
  %call = tail call %struct.X509_name_st* @X509_REQ_get_subject_name(%struct.X509_req_st* noundef %req) #10
  %.b277 = load i1, i1* @batch, align 4
  br i1 %.b277, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %3 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call1 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %3, i8* noundef getelementptr inbounds ([74 x i8], [74 x i8]* @.str.191, i64 0, i64 0)) #10
  %4 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call2 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %4, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.192, i64 0, i64 0)) #10
  %5 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call3 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %5, i8* noundef getelementptr inbounds ([77 x i8], [77 x i8]* @.str.193, i64 0, i64 0)) #10
  %6 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call4 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %6, i8* noundef getelementptr inbounds ([59 x i8], [59 x i8]* @.str.194, i64 0, i64 0)) #10
  %7 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call5 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %7, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.195, i64 0, i64 0)) #10
  %8 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call6 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %8, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.196, i64 0, i64 0)) #10
  %9 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call7 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %9, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.151, i64 0, i64 0)) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call8 = tail call fastcc %struct.stack_st* @ossl_check_const_CONF_VALUE_sk_type(%struct.stack_st_CONF_VALUE* noundef %dn_sk) #11
  %call9 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call8) #10
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.else203, label %start.preheader

start.preheader:                                  ; preds = %if.end
  %call13284287 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call8) #10
  %cmp.not285288 = icmp sgt i32 %call13284287, 0
  br i1 %cmp.not285288, label %if.end15, label %for.end112

start.loopexit:                                   ; preds = %for.end
  %inc283 = add nsw i32 %inc286, 1
  %call13284 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call8) #10
  %cmp.not285 = icmp sgt i32 %call13284, %inc283
  br i1 %cmp.not285, label %if.end15.backedge, label %for.end112

if.end15:                                         ; preds = %start.preheader, %if.end15.backedge
  %inc286 = phi i32 [ %inc286.be, %if.end15.backedge ], [ 0, %start.preheader ]
  %call17 = call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call8, i32 noundef %inc286) #10
  %name = getelementptr inbounds i8, i8* %call17, i64 8
  %10 = bitcast i8* %name to i8**
  %11 = load i8*, i8** %10, align 8, !tbaa !20
  %call18 = call fastcc i32 @check_end(i8* noundef %11, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.197, i64 0, i64 0)) #11
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %for.cond.backedge, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end15
  %call20 = call fastcc i32 @check_end(i8* noundef %11, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.198, i64 0, i64 0)) #11
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %for.cond.backedge, label %lor.lhs.false22

lor.lhs.false22:                                  ; preds = %lor.lhs.false
  %call23 = call fastcc i32 @check_end(i8* noundef %11, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.199, i64 0, i64 0)) #11
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %for.cond.backedge, label %lor.lhs.false25

lor.lhs.false25:                                  ; preds = %lor.lhs.false22
  %call26 = call fastcc i32 @check_end(i8* noundef %11, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.200, i64 0, i64 0)) #11
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %for.cond.backedge, label %for.cond31

for.cond.backedge:                                ; preds = %if.end15, %lor.lhs.false, %lor.lhs.false22, %lor.lhs.false25, %if.end104
  %inc = add nsw i32 %inc286, 1
  %call13 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call8) #10
  %cmp.not = icmp sgt i32 %call13, %inc
  br i1 %cmp.not, label %if.end15.backedge, label %for.end112

if.end15.backedge:                                ; preds = %for.cond.backedge, %start.loopexit
  %inc286.be = phi i32 [ %inc, %for.cond.backedge ], [ %inc283, %start.loopexit ]
  br label %if.end15

for.cond31:                                       ; preds = %lor.lhs.false25, %for.inc
  %p.0 = phi i8* [ %incdec.ptr48, %for.inc ], [ %11, %lor.lhs.false25 ]
  %12 = load i8, i8* %p.0, align 1, !tbaa !14
  switch i8 %12, label %for.inc [
    i8 0, label %for.end
    i8 58, label %if.then43
    i8 44, label %if.then43
    i8 46, label %if.then43
  ]

if.then43:                                        ; preds = %for.cond31, %for.cond31, %for.cond31
  %incdec.ptr = getelementptr inbounds i8, i8* %p.0, i64 1
  %13 = load i8, i8* %incdec.ptr, align 1, !tbaa !14
  %tobool44.not = icmp eq i8 %13, 0
  %spec.select = select i1 %tobool44.not, i8* %11, i8* %incdec.ptr
  br label %for.end

for.inc:                                          ; preds = %for.cond31
  %incdec.ptr48 = getelementptr inbounds i8, i8* %p.0, i64 1
  br label %for.cond31, !llvm.loop !25

for.end:                                          ; preds = %for.cond31, %if.then43
  %type.0 = phi i8* [ %spec.select, %if.then43 ], [ %11, %for.cond31 ]
  %14 = load i8, i8* %type.0, align 1, !tbaa !14
  %cmp50 = icmp eq i8 %14, 43
  %mval.0 = sext i1 %cmp50 to i32
  %type.1.idx = zext i1 %cmp50 to i64
  %type.1 = getelementptr i8, i8* %type.0, i64 %type.1.idx
  %call55 = call i32 @OBJ_txt2nid(i8* noundef nonnull %type.1) #10
  %cmp56 = icmp eq i32 %call55, 0
  br i1 %cmp56, label %start.loopexit, label %if.end59

if.end59:                                         ; preds = %for.end
  %15 = load i8*, i8** %10, align 8, !tbaa !20
  %call61 = call fastcc i32 @join(i8* noundef nonnull %0, i64 noundef 100, i8* noundef %15, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.199, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.201, i64 0, i64 0)) #11
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %cleanup, label %if.end64

if.end64:                                         ; preds = %if.end59
  %16 = load %struct.conf_st*, %struct.conf_st** @req_conf, align 8, !tbaa !3
  %call66 = call i8* @NCONF_get_string(%struct.conf_st* noundef %16, i8* noundef %dn_sect, i8* noundef nonnull %0) #10
  %cmp67 = icmp eq i8* %call66, null
  br i1 %cmp67, label %if.then69, label %if.end70

if.then69:                                        ; preds = %if.end64
  call void @ERR_clear_error() #10
  br label %if.end70

if.end70:                                         ; preds = %if.then69, %if.end64
  %def.0 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.76, i64 0, i64 0), %if.then69 ], [ %call66, %if.end64 ]
  %17 = load i8*, i8** %10, align 8, !tbaa !20
  %call73 = call fastcc i32 @join(i8* noundef nonnull %0, i64 noundef 100, i8* noundef %17, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.200, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.201, i64 0, i64 0)) #11
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %cleanup, label %if.end76

if.end76:                                         ; preds = %if.end70
  %18 = load %struct.conf_st*, %struct.conf_st** @req_conf, align 8, !tbaa !3
  %call78 = call i8* @NCONF_get_string(%struct.conf_st* noundef %18, i8* noundef %dn_sect, i8* noundef nonnull %0) #10
  %cmp79 = icmp eq i8* %call78, null
  br i1 %cmp79, label %if.then81, label %if.end82

if.then81:                                        ; preds = %if.end76
  call void @ERR_clear_error() #10
  br label %if.end82

if.end82:                                         ; preds = %if.then81, %if.end76
  %19 = load i8*, i8** %10, align 8, !tbaa !20
  %call85 = call fastcc i32 @join(i8* noundef nonnull %0, i64 noundef 100, i8* noundef %19, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.197, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.201, i64 0, i64 0)) #11
  %tobool86.not = icmp eq i32 %call85, 0
  br i1 %tobool86.not, label %cleanup, label %if.end88

if.end88:                                         ; preds = %if.end82
  %20 = load %struct.conf_st*, %struct.conf_st** @req_conf, align 8, !tbaa !3
  %call90 = call i32 @NCONF_get_number_e(%struct.conf_st* noundef %20, i8* noundef %dn_sect, i8* noundef nonnull %0, i64* noundef nonnull %n_min) #10
  %tobool91.not = icmp eq i32 %call90, 0
  br i1 %tobool91.not, label %if.then92, label %if.end93

if.then92:                                        ; preds = %if.end88
  call void @ERR_clear_error() #10
  store i64 -1, i64* %n_min, align 8, !tbaa !9
  br label %if.end93

if.end93:                                         ; preds = %if.then92, %if.end88
  %21 = load i8*, i8** %10, align 8, !tbaa !20
  %call96 = call fastcc i32 @join(i8* noundef nonnull %0, i64 noundef 100, i8* noundef %21, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.198, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.201, i64 0, i64 0)) #11
  %tobool97.not = icmp eq i32 %call96, 0
  br i1 %tobool97.not, label %cleanup, label %if.end99

if.end99:                                         ; preds = %if.end93
  %22 = load %struct.conf_st*, %struct.conf_st** @req_conf, align 8, !tbaa !3
  %call101 = call i32 @NCONF_get_number_e(%struct.conf_st* noundef %22, i8* noundef %dn_sect, i8* noundef nonnull %0, i64* noundef nonnull %n_max) #10
  %tobool102.not = icmp eq i32 %call101, 0
  br i1 %tobool102.not, label %if.then103, label %if.end99.if.end104_crit_edge

if.end99.if.end104_crit_edge:                     ; preds = %if.end99
  %.pre = load i64, i64* %n_max, align 8, !tbaa !9
  br label %if.end104

if.then103:                                       ; preds = %if.end99
  call void @ERR_clear_error() #10
  store i64 -1, i64* %n_max, align 8, !tbaa !9
  br label %if.end104

if.end104:                                        ; preds = %if.end99.if.end104_crit_edge, %if.then103
  %23 = phi i64 [ %.pre, %if.end99.if.end104_crit_edge ], [ -1, %if.then103 ]
  %value105 = getelementptr inbounds i8, i8* %call17, i64 16
  %24 = bitcast i8* %value105 to i8**
  %25 = load i8*, i8** %24, align 8, !tbaa !23
  %26 = load i64, i64* %n_min, align 8, !tbaa !9
  %conv106 = trunc i64 %26 to i32
  %conv107 = trunc i64 %23 to i32
  %call108 = call fastcc i32 @add_DN_object(%struct.X509_name_st* noundef %call, i8* noundef %25, i8* noundef %def.0, i8* noundef %call78, i32 noundef %call55, i32 noundef %conv106, i32 noundef %conv107, i64 noundef %chtype, i32 noundef %mval.0) #11
  %tobool109.not = icmp eq i32 %call108, 0
  br i1 %tobool109.not, label %cleanup, label %for.cond.backedge

for.end112:                                       ; preds = %start.loopexit, %for.cond.backedge, %start.preheader
  %call113 = call i32 @X509_NAME_entry_count(%struct.X509_name_st* noundef %call) #10
  %cmp114 = icmp eq i32 %call113, 0
  br i1 %cmp114, label %if.then116, label %if.end118

if.then116:                                       ; preds = %for.end112
  %27 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call117 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %27, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.190, i64 0, i64 0)) #10
  br label %cleanup

if.end118:                                        ; preds = %for.end112
  %tobool119.not = icmp eq i32 %attribs, 0
  br i1 %tobool119.not, label %cleanup, label %if.then120

if.then120:                                       ; preds = %if.end118
  %cmp121.not = icmp eq %struct.stack_st_CONF_VALUE* %attr_sk, null
  br i1 %cmp121.not, label %cleanup, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then120
  %call123 = call fastcc %struct.stack_st* @ossl_check_const_CONF_VALUE_sk_type(%struct.stack_st_CONF_VALUE* noundef nonnull %attr_sk) #11
  %call124 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call123) #10
  %cmp125 = icmp slt i32 %call124, 1
  %.b = load i1, i1* @batch, align 4
  %or.cond = select i1 %cmp125, i1 true, i1 %.b
  br i1 %or.cond, label %if.end132, label %if.then129

if.then129:                                       ; preds = %land.lhs.true
  %28 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call130 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %28, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.202, i64 0, i64 0)) #10
  %29 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call131 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %29, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.203, i64 0, i64 0)) #10
  br label %if.end132

if.end132:                                        ; preds = %if.then129, %land.lhs.true
  br i1 %cmp121.not, label %cleanup, label %start2.split.preheader

start2.split.preheader:                           ; preds = %if.end132
  %call138 = call fastcc %struct.stack_st* @ossl_check_const_CONF_VALUE_sk_type(%struct.stack_st_CONF_VALUE* noundef nonnull %attr_sk) #11
  br label %start2.split

start2.loopexit:                                  ; preds = %if.end143
  br i1 %cmp121.not, label %cleanup, label %start2.split

start2.split:                                     ; preds = %start2.split.preheader, %start2.loopexit
  %i.2312 = phi i32 [ %inc134, %start2.loopexit ], [ -1, %start2.split.preheader ]
  br label %for.cond133

for.cond133:                                      ; preds = %if.end193, %start2.split
  %i.3 = phi i32 [ %i.2312, %start2.split ], [ %inc134, %if.end193 ]
  %inc134 = add nsw i32 %i.3, 1
  %call139 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call138) #10
  %cmp140.not = icmp sgt i32 %call139, %inc134
  br i1 %cmp140.not, label %if.end143, label %cleanup

if.end143:                                        ; preds = %for.cond133
  %call145 = call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call138, i32 noundef %inc134) #10
  %name146 = getelementptr inbounds i8, i8* %call145, i64 8
  %30 = bitcast i8* %name146 to i8**
  %31 = load i8*, i8** %30, align 8, !tbaa !20
  %call147 = call i32 @OBJ_txt2nid(i8* noundef %31) #10
  %cmp148 = icmp eq i32 %call147, 0
  br i1 %cmp148, label %start2.loopexit, label %if.end151

if.end151:                                        ; preds = %if.end143
  %call153 = call fastcc i32 @join(i8* noundef nonnull %0, i64 noundef 100, i8* noundef %31, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.199, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.201, i64 0, i64 0)) #11
  %tobool154.not = icmp eq i32 %call153, 0
  br i1 %tobool154.not, label %cleanup, label %if.end156

if.end156:                                        ; preds = %if.end151
  %32 = load %struct.conf_st*, %struct.conf_st** @req_conf, align 8, !tbaa !3
  %call158 = call i8* @NCONF_get_string(%struct.conf_st* noundef %32, i8* noundef %attr_sect, i8* noundef nonnull %0) #10
  %cmp159 = icmp eq i8* %call158, null
  br i1 %cmp159, label %if.then161, label %if.end162

if.then161:                                       ; preds = %if.end156
  call void @ERR_clear_error() #10
  br label %if.end162

if.end162:                                        ; preds = %if.then161, %if.end156
  %def.1 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.76, i64 0, i64 0), %if.then161 ], [ %call158, %if.end156 ]
  %call164 = call fastcc i32 @join(i8* noundef nonnull %0, i64 noundef 100, i8* noundef %31, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.200, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.201, i64 0, i64 0)) #11
  %tobool165.not = icmp eq i32 %call164, 0
  br i1 %tobool165.not, label %cleanup, label %if.end167

if.end167:                                        ; preds = %if.end162
  %33 = load %struct.conf_st*, %struct.conf_st** @req_conf, align 8, !tbaa !3
  %call169 = call i8* @NCONF_get_string(%struct.conf_st* noundef %33, i8* noundef %attr_sect, i8* noundef nonnull %0) #10
  %cmp170 = icmp eq i8* %call169, null
  br i1 %cmp170, label %if.then172, label %if.end173

if.then172:                                       ; preds = %if.end167
  call void @ERR_clear_error() #10
  br label %if.end173

if.end173:                                        ; preds = %if.then172, %if.end167
  %call175 = call fastcc i32 @join(i8* noundef nonnull %0, i64 noundef 100, i8* noundef %31, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.197, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.201, i64 0, i64 0)) #11
  %tobool176.not = icmp eq i32 %call175, 0
  br i1 %tobool176.not, label %cleanup, label %if.end178

if.end178:                                        ; preds = %if.end173
  %34 = load %struct.conf_st*, %struct.conf_st** @req_conf, align 8, !tbaa !3
  %call180 = call i32 @NCONF_get_number_e(%struct.conf_st* noundef %34, i8* noundef %attr_sect, i8* noundef nonnull %0, i64* noundef nonnull %n_min) #10
  %tobool181.not = icmp eq i32 %call180, 0
  br i1 %tobool181.not, label %if.then182, label %if.end183

if.then182:                                       ; preds = %if.end178
  call void @ERR_clear_error() #10
  store i64 -1, i64* %n_min, align 8, !tbaa !9
  br label %if.end183

if.end183:                                        ; preds = %if.then182, %if.end178
  %call185 = call fastcc i32 @join(i8* noundef nonnull %0, i64 noundef 100, i8* noundef %31, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.198, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.201, i64 0, i64 0)) #11
  %tobool186.not = icmp eq i32 %call185, 0
  br i1 %tobool186.not, label %cleanup, label %if.end188

if.end188:                                        ; preds = %if.end183
  %35 = load %struct.conf_st*, %struct.conf_st** @req_conf, align 8, !tbaa !3
  %call190 = call i32 @NCONF_get_number_e(%struct.conf_st* noundef %35, i8* noundef %attr_sect, i8* noundef nonnull %0, i64* noundef nonnull %n_max) #10
  %tobool191.not = icmp eq i32 %call190, 0
  br i1 %tobool191.not, label %if.then192, label %if.end188.if.end193_crit_edge

if.end188.if.end193_crit_edge:                    ; preds = %if.end188
  %.pre297 = load i64, i64* %n_max, align 8, !tbaa !9
  br label %if.end193

if.then192:                                       ; preds = %if.end188
  call void @ERR_clear_error() #10
  store i64 -1, i64* %n_max, align 8, !tbaa !9
  br label %if.end193

if.end193:                                        ; preds = %if.end188.if.end193_crit_edge, %if.then192
  %36 = phi i64 [ %.pre297, %if.end188.if.end193_crit_edge ], [ -1, %if.then192 ]
  %value194 = getelementptr inbounds i8, i8* %call145, i64 16
  %37 = bitcast i8* %value194 to i8**
  %38 = load i8*, i8** %37, align 8, !tbaa !23
  %39 = load i64, i64* %n_min, align 8, !tbaa !9
  %conv195 = trunc i64 %39 to i32
  %conv196 = trunc i64 %36 to i32
  %call197 = call fastcc i32 @add_attribute_object(%struct.X509_req_st* noundef %req, i8* noundef %38, i8* noundef %def.1, i8* noundef %call169, i32 noundef %call147, i32 noundef %conv195, i32 noundef %conv196, i64 noundef %chtype) #11
  %tobool198.not = icmp eq i32 %call197, 0
  br i1 %tobool198.not, label %cleanup, label %for.cond133

if.else203:                                       ; preds = %if.end
  %40 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call204 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %40, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.204, i64 0, i64 0)) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end104, %if.end93, %if.end82, %if.end70, %if.end59, %start2.loopexit, %if.end151, %if.end162, %if.end173, %if.end183, %if.end193, %for.cond133, %if.end132, %if.then120, %if.end118, %if.else203, %if.then116
  %retval.0 = phi i32 [ 0, %if.then116 ], [ 0, %if.else203 ], [ 1, %if.end118 ], [ 1, %if.then120 ], [ 1, %if.end132 ], [ 1, %for.cond133 ], [ 0, %if.end193 ], [ 0, %if.end183 ], [ 0, %if.end173 ], [ 0, %if.end162 ], [ 0, %if.end151 ], [ 1, %start2.loopexit ], [ 0, %if.end59 ], [ 0, %if.end70 ], [ 0, %if.end82 ], [ 0, %if.end93 ], [ 0, %if.end104 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #9
  call void @llvm.lifetime.end.p0i8(i64 100, i8* nonnull %0) #9
  ret i32 %retval.0
}

declare dso_local i32 @X509_REQ_set_pubkey(%struct.X509_req_st* noundef, %struct.evp_pkey_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_CONF_VALUE_sk_type(%struct.stack_st_CONF_VALUE* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_CONF_VALUE* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare dso_local i32 @X509_NAME_add_entry_by_txt(%struct.X509_name_st* noundef, i8* noundef, i32 noundef, i8* noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i32 @X509_NAME_entry_count(%struct.X509_name_st* noundef) local_unnamed_addr #2

declare dso_local i32 @X509_REQ_add1_attr_by_txt(%struct.X509_req_st* noundef, i8* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline nounwind readonly uwtable willreturn
define internal fastcc i32 @check_end(i8* noundef readonly %str, i8* noundef %end) unnamed_addr #4 {
entry:
  %call = tail call i64 @strlen(i8* noundef %end) #12
  %call1 = tail call i64 @strlen(i8* noundef %str) #12
  %cmp = icmp ugt i64 %call, %call1
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr inbounds i8, i8* %str, i64 %call1
  %idx.neg = sub i64 0, %call
  %add.ptr2 = getelementptr inbounds i8, i8* %add.ptr, i64 %idx.neg
  %call3 = tail call i32 @strcmp(i8* noundef %add.ptr2, i8* noundef %end) #12
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call3, %if.end ], [ 1, %entry ]
  ret i32 %retval.0
}

declare dso_local i32 @OBJ_txt2nid(i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @join(i8* noundef %buf, i64 noundef %buf_size, i8* noundef %name, i8* noundef %tail, i8* noundef %desc) unnamed_addr #0 {
entry:
  %call = tail call i64 @strlen(i8* noundef %name) #12
  %call1 = tail call i64 @strlen(i8* noundef %tail) #12
  %add = add i64 %call1, 1
  %add2 = add i64 %add, %call
  %cmp = icmp ugt i64 %add2, %buf_size
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call3 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %0, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.205, i64 0, i64 0), i8* noundef %desc, i8* noundef %name) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = tail call i8* @memcpy(i8* noundef %buf, i8* noundef %name, i64 noundef %call) #10
  %add.ptr = getelementptr inbounds i8, i8* %buf, i64 %call
  %call6 = tail call i8* @memcpy(i8* noundef %add.ptr, i8* noundef %tail, i64 noundef %add) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @add_DN_object(%struct.X509_name_st* noundef %n, i8* noundef %text, i8* noundef %def, i8* noundef %value, i32 noundef %nid, i32 noundef %n_min, i32 noundef %n_max, i64 noundef %chtype, i32 noundef %mval) unnamed_addr #0 {
entry:
  %buf = alloca [1024 x i8], align 16
  %0 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %0) #9
  %call = call fastcc i32 @build_data(i8* noundef %text, i8* noundef %def, i8* noundef %value, i32 noundef %n_min, i32 noundef %n_max, i8* noundef nonnull %0, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.206, i64 0, i64 0), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.207, i64 0, i64 0)) #11
  %1 = icmp ult i32 %call, 2
  br i1 %1, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %conv = trunc i64 %chtype to i32
  %call3 = call i32 @X509_NAME_add_entry_by_NID(%struct.X509_name_st* noundef %n, i32 noundef %nid, i32 noundef %conv, i8* noundef nonnull %0, i32 noundef -1, i32 noundef -1, i32 noundef %mval) #10
  %tobool.not = icmp ne i32 %call3, 0
  %spec.select = zext i1 %tobool.not to i32
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %spec.select, %if.end ], [ %call, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %0) #9
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @add_attribute_object(%struct.X509_req_st* noundef %req, i8* noundef %text, i8* noundef %def, i8* noundef %value, i32 noundef %nid, i32 noundef %n_min, i32 noundef %n_max, i64 noundef %chtype) unnamed_addr #0 {
entry:
  %buf = alloca [1024 x i8], align 16
  %0 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %0) #9
  %call = call fastcc i32 @build_data(i8* noundef %text, i8* noundef %def, i8* noundef %value, i32 noundef %n_min, i32 noundef %n_max, i8* noundef nonnull %0, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.212, i64 0, i64 0), i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.213, i64 0, i64 0)) #11
  %1 = icmp ult i32 %call, 2
  br i1 %1, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %conv = trunc i64 %chtype to i32
  %call3 = call i32 @X509_REQ_add1_attr_by_NID(%struct.X509_req_st* noundef %req, i32 noundef %nid, i32 noundef %conv, i8* noundef nonnull %0, i32 noundef -1) #10
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.then4, label %cleanup

if.then4:                                         ; preds = %if.end
  %2 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call5 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %2, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.214, i64 0, i64 0)) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then4, %entry
  %retval.0 = phi i32 [ %call, %entry ], [ 1, %if.end ], [ 0, %if.then4 ]
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %0) #9
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @build_data(i8* noundef %text, i8* noundef %def, i8* noundef %value, i32 noundef %n_min, i32 noundef %n_max, i8* noundef %buf, i8* noundef %desc1, i8* noundef %desc2) unnamed_addr #0 {
entry:
  %.b101.pr = load i1, i1* @batch, align 4
  %cmp = icmp ne i8* %value, null
  %arrayidx18 = getelementptr inbounds i8, i8* %buf, i64 1
  %cmp32 = icmp eq i8* %def, null
  br i1 %.b101.pr, label %if.end, label %if.then

if.then:                                          ; preds = %if.then70, %entry
  %0 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %0, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.208, i64 0, i64 0), i8* noundef %text, i8* noundef %def) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call1 = tail call i64 @BIO_ctrl(%struct.bio_st* noundef %1, i32 noundef 11, i64 noundef 0, i8* noundef null) #10
  br i1 %cmp, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  %call5 = tail call fastcc i32 @join(i8* noundef %buf, i64 noundef 1024, i8* noundef nonnull %value, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.181, i64 0, i64 0), i8* noundef %desc1) #11
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %cleanup, label %if.end8

if.end8:                                          ; preds = %if.then3
  %2 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call9 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %2, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.115, i64 0, i64 0), i8* noundef nonnull %value) #10
  br label %if.end20

if.else:                                          ; preds = %if.end
  store i8 0, i8* %buf, align 1, !tbaa !14
  %.b100 = load i1, i1* @batch, align 4
  br i1 %.b100, label %if.end20.thread, label %if.then11

if.then11:                                        ; preds = %if.else
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !tbaa !3
  %call12 = tail call i8* @fgets(i8* noundef nonnull %buf, i32 noundef 1024, %struct._IO_FILE* noundef %3) #10
  %tobool13.not = icmp eq i8* %call12, null
  br i1 %tobool13.not, label %cleanup, label %if.end20

if.end20.thread:                                  ; preds = %if.else
  store i8 10, i8* %buf, align 1, !tbaa !14
  store i8 0, i8* %arrayidx18, align 1, !tbaa !14
  br label %if.then31

if.end20:                                         ; preds = %if.then11, %if.end8
  %.pr = load i8, i8* %buf, align 1, !tbaa !14
  switch i8 %.pr, label %if.end56 [
    i8 0, label %cleanup
    i8 10, label %if.then31
    i8 46, label %land.lhs.true
  ]

if.then31:                                        ; preds = %if.end20.thread, %if.end20
  br i1 %cmp32, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then31
  %4 = load i8, i8* %def, align 1, !tbaa !14
  %cmp36 = icmp eq i8 %4, 0
  br i1 %cmp36, label %cleanup, label %if.end39

if.end39:                                         ; preds = %lor.lhs.false
  %call41 = tail call fastcc i32 @join(i8* noundef nonnull %buf, i64 noundef 1024, i8* noundef nonnull %def, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.181, i64 0, i64 0), i8* noundef %desc2) #11
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %cleanup, label %if.end56

land.lhs.true:                                    ; preds = %if.end20
  %5 = load i8, i8* %arrayidx18, align 1, !tbaa !14
  %cmp52 = icmp eq i8 %5, 10
  br i1 %cmp52, label %cleanup, label %if.end56

if.end56:                                         ; preds = %if.end20, %land.lhs.true, %if.end39
  %call57 = tail call i64 @strlen(i8* noundef nonnull %buf) #12
  %sub = shl i64 %call57, 32
  %sext = add i64 %sub, -4294967296
  %idxprom = ashr exact i64 %sext, 32
  %arrayidx59 = getelementptr inbounds i8, i8* %buf, i64 %idxprom
  %6 = load i8, i8* %arrayidx59, align 1, !tbaa !14
  %cmp61.not = icmp eq i8 %6, 10
  br i1 %cmp61.not, label %if.end65, label %if.then63

if.then63:                                        ; preds = %if.end56
  %7 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call64 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %7, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.209, i64 0, i64 0)) #10
  br label %cleanup

if.end65:                                         ; preds = %if.end56
  %conv58 = trunc i64 %call57 to i32
  %dec = add nsw i32 %conv58, -1
  %idxprom66 = sext i32 %dec to i64
  %arrayidx67 = getelementptr inbounds i8, i8* %buf, i64 %idxprom66
  store i8 0, i8* %arrayidx67, align 1, !tbaa !14
  %call68 = tail call fastcc i32 @req_check_len(i32 noundef %dec, i32 noundef %n_min, i32 noundef %n_max) #11
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %if.then70, label %cleanup

if.then70:                                        ; preds = %if.end65
  %.b = load i1, i1* @batch, align 4
  %or.cond = or i1 %cmp, %.b
  br i1 %or.cond, label %cleanup, label %if.then

cleanup:                                          ; preds = %if.end65, %if.then70, %land.lhs.true, %if.end20, %if.end39, %if.then31, %lor.lhs.false, %if.then11, %if.then3, %if.then63
  %retval.0 = phi i32 [ 0, %if.then63 ], [ 2, %if.end65 ], [ 0, %if.then70 ], [ 1, %land.lhs.true ], [ 0, %if.end39 ], [ 1, %if.then31 ], [ 1, %lor.lhs.false ], [ 0, %if.end20 ], [ 0, %if.then11 ], [ 0, %if.then3 ]
  ret i32 %retval.0
}

declare dso_local i32 @X509_NAME_add_entry_by_NID(%struct.X509_name_st* noundef, i32 noundef, i32 noundef, i8* noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i64 @BIO_ctrl(%struct.bio_st* noundef, i32 noundef, i64 noundef, i8* noundef) local_unnamed_addr #2

declare dso_local i8* @fgets(i8* noundef, i32 noundef, %struct._IO_FILE* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @req_check_len(i32 noundef %len, i32 noundef %n_min, i32 noundef %n_max) unnamed_addr #0 {
entry:
  %cmp = icmp sgt i32 %n_min, 0
  %cmp1 = icmp slt i32 %len, %n_min
  %or.cond = and i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %0, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.210, i64 0, i64 0), i32 noundef %n_min) #10
  br label %return

if.end:                                           ; preds = %entry
  %cmp2 = icmp sgt i32 %n_max, -1
  %cmp4 = icmp sgt i32 %len, %n_max
  %or.cond13 = and i1 %cmp2, %cmp4
  br i1 %or.cond13, label %if.then5, label %return

if.then5:                                         ; preds = %if.end
  %1 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call6 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %1, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.211, i64 0, i64 0), i32 noundef %n_max) #10
  br label %return

return:                                           ; preds = %if.end, %if.then5, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then5 ], [ 1, %if.end ]
  ret i32 %retval.0
}

declare dso_local i32 @X509_REQ_add1_attr_by_NID(%struct.X509_req_st* noundef, i32 noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @strncmp(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline nounwind readonly uwtable willreturn
declare dso_local i64 @atol(i8* noundef nonnull) local_unnamed_addr #4

declare dso_local %struct.evp_pkey_st* @PEM_read_bio_Parameters(%struct.bio_st* noundef, %struct.evp_pkey_st** noundef) local_unnamed_addr #2

declare dso_local %struct.x509_st* @PEM_read_bio_X509(%struct.bio_st* noundef, %struct.x509_st** noundef, i32 (i8*, i32, i32, i8*)* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local %struct.evp_pkey_st* @X509_get_pubkey(%struct.x509_st* noundef) local_unnamed_addr #2

declare dso_local i8* @EVP_PKEY_get0_type_name(%struct.evp_pkey_st* noundef) local_unnamed_addr #2

declare dso_local i32 @BIO_puts(%struct.bio_st* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local i8* @CRYPTO_strndup(i8* noundef, i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new(%struct.evp_pkey_st* noundef, %struct.engine_st* noundef) local_unnamed_addr #2

declare dso_local %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_from_pkey(%struct.ossl_lib_ctx_st* noundef, %struct.evp_pkey_st* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local i32 @EVP_PKEY_get_bits(%struct.evp_pkey_st* noundef) local_unnamed_addr #2

declare dso_local i32 @get_legacy_pkey_id(%struct.ossl_lib_ctx_st* noundef, i8* noundef, %struct.engine_st* noundef) local_unnamed_addr #2

declare dso_local %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_id(i32 noundef, %struct.engine_st* noundef) local_unnamed_addr #2

declare dso_local %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_from_name(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local i32 @EVP_PKEY_keygen_init(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #8

declare dso_local void @OSSL_PARAM_construct_size_t(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8, i8* noundef, i64* noundef) local_unnamed_addr #2

declare dso_local i32 @EVP_PKEY_CTX_set_params(%struct.evp_pkey_ctx_st* noundef, %struct.ossl_param_st* noundef) local_unnamed_addr #2

declare dso_local i8* @EVP_PKEY_CTX_get_app_data(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #2

declare dso_local i32 @EVP_PKEY_CTX_get_keygen_info(%struct.evp_pkey_ctx_st* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i32 @BIO_write(%struct.bio_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #9 = { nounwind }
attributes #10 = { nobuiltin nounwind "no-builtins" }
attributes #11 = { nobuiltin "no-builtins" }
attributes #12 = { nobuiltin nounwind readonly willreturn "no-builtins" }
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
!13 = distinct !{!13, !12}
!14 = !{!5, !5, i64 0}
!15 = !{!16, !16, i64 0}
!16 = !{!"short", !5, i64 0}
!17 = distinct !{!17, !12}
!18 = distinct !{!18, !12}
!19 = distinct !{!19, !12}
!20 = !{!21, !4, i64 8}
!21 = !{!"", !4, i64 0, !4, i64 8, !4, i64 16}
!22 = distinct !{!22, !12}
!23 = !{!21, !4, i64 16}
!24 = distinct !{!24, !12}
!25 = distinct !{!25, !12}
