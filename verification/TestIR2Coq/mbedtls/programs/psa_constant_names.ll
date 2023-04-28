; ModuleID = 'psa/psa_constant_names.c'
source_filename = "psa/psa_constant_names.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [23 x i8] c"Non-numeric value: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Value too small: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Value too large: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"Value out of range: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"alg\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"algorithm\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"curve\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"ecc_curve\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"group\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"dh_group\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"key_type\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"usage\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"key_usage\00", align 1
@.str.18 = private unnamed_addr constant [18 x i8] c"Unknown type: %s\0A\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@.str.20 = private unnamed_addr constant [25 x i8] c"PSA_ERROR_ALREADY_EXISTS\00", align 1
@.str.21 = private unnamed_addr constant [20 x i8] c"PSA_ERROR_BAD_STATE\00", align 1
@.str.22 = private unnamed_addr constant [27 x i8] c"PSA_ERROR_BUFFER_TOO_SMALL\00", align 1
@.str.23 = private unnamed_addr constant [32 x i8] c"PSA_ERROR_COMMUNICATION_FAILURE\00", align 1
@.str.24 = private unnamed_addr constant [30 x i8] c"PSA_ERROR_CORRUPTION_DETECTED\00", align 1
@.str.25 = private unnamed_addr constant [23 x i8] c"PSA_ERROR_DATA_CORRUPT\00", align 1
@.str.26 = private unnamed_addr constant [23 x i8] c"PSA_ERROR_DATA_INVALID\00", align 1
@.str.27 = private unnamed_addr constant [25 x i8] c"PSA_ERROR_DOES_NOT_EXIST\00", align 1
@.str.28 = private unnamed_addr constant [24 x i8] c"PSA_ERROR_GENERIC_ERROR\00", align 1
@.str.29 = private unnamed_addr constant [27 x i8] c"PSA_ERROR_HARDWARE_FAILURE\00", align 1
@.str.30 = private unnamed_addr constant [28 x i8] c"PSA_ERROR_INSUFFICIENT_DATA\00", align 1
@.str.31 = private unnamed_addr constant [31 x i8] c"PSA_ERROR_INSUFFICIENT_ENTROPY\00", align 1
@.str.32 = private unnamed_addr constant [30 x i8] c"PSA_ERROR_INSUFFICIENT_MEMORY\00", align 1
@.str.33 = private unnamed_addr constant [31 x i8] c"PSA_ERROR_INSUFFICIENT_STORAGE\00", align 1
@.str.34 = private unnamed_addr constant [27 x i8] c"PSA_ERROR_INVALID_ARGUMENT\00", align 1
@.str.35 = private unnamed_addr constant [25 x i8] c"PSA_ERROR_INVALID_HANDLE\00", align 1
@.str.36 = private unnamed_addr constant [26 x i8] c"PSA_ERROR_INVALID_PADDING\00", align 1
@.str.37 = private unnamed_addr constant [28 x i8] c"PSA_ERROR_INVALID_SIGNATURE\00", align 1
@.str.38 = private unnamed_addr constant [24 x i8] c"PSA_ERROR_NOT_PERMITTED\00", align 1
@.str.39 = private unnamed_addr constant [24 x i8] c"PSA_ERROR_NOT_SUPPORTED\00", align 1
@.str.40 = private unnamed_addr constant [26 x i8] c"PSA_ERROR_STORAGE_FAILURE\00", align 1
@.str.41 = private unnamed_addr constant [12 x i8] c"PSA_SUCCESS\00", align 1
@.str.42 = private unnamed_addr constant [34 x i8] c"PSA_ALG_AT_LEAST_THIS_LENGTH_MAC(\00", align 1
@.str.43 = private unnamed_addr constant [23 x i8] c"PSA_ALG_TRUNCATED_MAC(\00", align 1
@.str.44 = private unnamed_addr constant [44 x i8] c"PSA_ALG_AEAD_WITH_AT_LEAST_THIS_LENGTH_TAG(\00", align 1
@.str.45 = private unnamed_addr constant [33 x i8] c"PSA_ALG_AEAD_WITH_SHORTENED_TAG(\00", align 1
@.str.46 = private unnamed_addr constant [23 x i8] c"PSA_ALG_KEY_AGREEMENT(\00", align 1
@.str.47 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.48 = private unnamed_addr constant [17 x i8] c"PSA_ALG_ANY_HASH\00", align 1
@.str.49 = private unnamed_addr constant [22 x i8] c"PSA_ALG_CATEGORY_AEAD\00", align 1
@.str.50 = private unnamed_addr constant [39 x i8] c"PSA_ALG_CATEGORY_ASYMMETRIC_ENCRYPTION\00", align 1
@.str.51 = private unnamed_addr constant [24 x i8] c"PSA_ALG_CATEGORY_CIPHER\00", align 1
@.str.52 = private unnamed_addr constant [22 x i8] c"PSA_ALG_CATEGORY_HASH\00", align 1
@.str.53 = private unnamed_addr constant [31 x i8] c"PSA_ALG_CATEGORY_KEY_AGREEMENT\00", align 1
@.str.54 = private unnamed_addr constant [32 x i8] c"PSA_ALG_CATEGORY_KEY_DERIVATION\00", align 1
@.str.55 = private unnamed_addr constant [21 x i8] c"PSA_ALG_CATEGORY_MAC\00", align 1
@.str.56 = private unnamed_addr constant [22 x i8] c"PSA_ALG_CATEGORY_PAKE\00", align 1
@.str.57 = private unnamed_addr constant [22 x i8] c"PSA_ALG_CATEGORY_SIGN\00", align 1
@.str.58 = private unnamed_addr constant [16 x i8] c"PSA_ALG_CBC_MAC\00", align 1
@.str.59 = private unnamed_addr constant [23 x i8] c"PSA_ALG_CBC_NO_PADDING\00", align 1
@.str.60 = private unnamed_addr constant [18 x i8] c"PSA_ALG_CBC_PKCS7\00", align 1
@.str.61 = private unnamed_addr constant [12 x i8] c"PSA_ALG_CCM\00", align 1
@.str.62 = private unnamed_addr constant [24 x i8] c"PSA_ALG_CCM_STAR_NO_TAG\00", align 1
@.str.63 = private unnamed_addr constant [12 x i8] c"PSA_ALG_CFB\00", align 1
@.str.64 = private unnamed_addr constant [26 x i8] c"PSA_ALG_CHACHA20_POLY1305\00", align 1
@.str.65 = private unnamed_addr constant [24 x i8] c"PSA_ALG_CIPHER_MAC_BASE\00", align 1
@.str.66 = private unnamed_addr constant [13 x i8] c"PSA_ALG_CMAC\00", align 1
@.str.67 = private unnamed_addr constant [12 x i8] c"PSA_ALG_CTR\00", align 1
@.str.68 = private unnamed_addr constant [31 x i8] c"PSA_ALG_DETERMINISTIC_DSA_BASE\00", align 1
@.str.69 = private unnamed_addr constant [33 x i8] c"PSA_ALG_DETERMINISTIC_ECDSA_BASE\00", align 1
@.str.70 = private unnamed_addr constant [17 x i8] c"PSA_ALG_DSA_BASE\00", align 1
@.str.71 = private unnamed_addr constant [23 x i8] c"PSA_ALG_ECB_NO_PADDING\00", align 1
@.str.72 = private unnamed_addr constant [13 x i8] c"PSA_ALG_ECDH\00", align 1
@.str.73 = private unnamed_addr constant [18 x i8] c"PSA_ALG_ECDSA_ANY\00", align 1
@.str.74 = private unnamed_addr constant [18 x i8] c"PSA_ALG_ED25519PH\00", align 1
@.str.75 = private unnamed_addr constant [16 x i8] c"PSA_ALG_ED448PH\00", align 1
@.str.76 = private unnamed_addr constant [13 x i8] c"PSA_ALG_FFDH\00", align 1
@.str.77 = private unnamed_addr constant [12 x i8] c"PSA_ALG_GCM\00", align 1
@.str.78 = private unnamed_addr constant [24 x i8] c"PSA_ALG_HASH_EDDSA_BASE\00", align 1
@.str.79 = private unnamed_addr constant [18 x i8] c"PSA_ALG_HKDF_BASE\00", align 1
@.str.80 = private unnamed_addr constant [25 x i8] c"PSA_ALG_HKDF_EXPAND_BASE\00", align 1
@.str.81 = private unnamed_addr constant [26 x i8] c"PSA_ALG_HKDF_EXTRACT_BASE\00", align 1
@.str.82 = private unnamed_addr constant [18 x i8] c"PSA_ALG_HMAC_BASE\00", align 1
@.str.83 = private unnamed_addr constant [14 x i8] c"PSA_ALG_JPAKE\00", align 1
@.str.84 = private unnamed_addr constant [12 x i8] c"PSA_ALG_MD5\00", align 1
@.str.85 = private unnamed_addr constant [13 x i8] c"PSA_ALG_NONE\00", align 1
@.str.86 = private unnamed_addr constant [12 x i8] c"PSA_ALG_OFB\00", align 1
@.str.87 = private unnamed_addr constant [32 x i8] c"PSA_ALG_PBKDF2_AES_CMAC_PRF_128\00", align 1
@.str.88 = private unnamed_addr constant [25 x i8] c"PSA_ALG_PBKDF2_HMAC_BASE\00", align 1
@.str.89 = private unnamed_addr constant [19 x i8] c"PSA_ALG_PURE_EDDSA\00", align 1
@.str.90 = private unnamed_addr constant [18 x i8] c"PSA_ALG_RIPEMD160\00", align 1
@.str.91 = private unnamed_addr constant [22 x i8] c"PSA_ALG_RSA_OAEP_BASE\00", align 1
@.str.92 = private unnamed_addr constant [27 x i8] c"PSA_ALG_RSA_PKCS1V15_CRYPT\00", align 1
@.str.93 = private unnamed_addr constant [30 x i8] c"PSA_ALG_RSA_PKCS1V15_SIGN_RAW\00", align 1
@.str.94 = private unnamed_addr constant [30 x i8] c"PSA_ALG_RSA_PSS_ANY_SALT_BASE\00", align 1
@.str.95 = private unnamed_addr constant [21 x i8] c"PSA_ALG_RSA_PSS_BASE\00", align 1
@.str.96 = private unnamed_addr constant [17 x i8] c"PSA_ALG_SHA3_224\00", align 1
@.str.97 = private unnamed_addr constant [17 x i8] c"PSA_ALG_SHA3_256\00", align 1
@.str.98 = private unnamed_addr constant [17 x i8] c"PSA_ALG_SHA3_384\00", align 1
@.str.99 = private unnamed_addr constant [17 x i8] c"PSA_ALG_SHA3_512\00", align 1
@.str.100 = private unnamed_addr constant [21 x i8] c"PSA_ALG_SHAKE256_512\00", align 1
@.str.101 = private unnamed_addr constant [14 x i8] c"PSA_ALG_SHA_1\00", align 1
@.str.102 = private unnamed_addr constant [16 x i8] c"PSA_ALG_SHA_224\00", align 1
@.str.103 = private unnamed_addr constant [16 x i8] c"PSA_ALG_SHA_256\00", align 1
@.str.104 = private unnamed_addr constant [16 x i8] c"PSA_ALG_SHA_384\00", align 1
@.str.105 = private unnamed_addr constant [16 x i8] c"PSA_ALG_SHA_512\00", align 1
@.str.106 = private unnamed_addr constant [20 x i8] c"PSA_ALG_SHA_512_224\00", align 1
@.str.107 = private unnamed_addr constant [20 x i8] c"PSA_ALG_SHA_512_256\00", align 1
@.str.108 = private unnamed_addr constant [22 x i8] c"PSA_ALG_STREAM_CIPHER\00", align 1
@.str.109 = private unnamed_addr constant [23 x i8] c"PSA_ALG_TLS12_PRF_BASE\00", align 1
@.str.110 = private unnamed_addr constant [29 x i8] c"PSA_ALG_TLS12_PSK_TO_MS_BASE\00", align 1
@.str.111 = private unnamed_addr constant [12 x i8] c"PSA_ALG_XTS\00", align 1
@.str.112 = private unnamed_addr constant [27 x i8] c"PSA_ALG_DETERMINISTIC_DSA(\00", align 1
@.str.113 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.114 = private unnamed_addr constant [29 x i8] c"PSA_ALG_DETERMINISTIC_ECDSA(\00", align 1
@.str.115 = private unnamed_addr constant [13 x i8] c"PSA_ALG_DSA(\00", align 1
@.str.116 = private unnamed_addr constant [15 x i8] c"PSA_ALG_ECDSA(\00", align 1
@.str.117 = private unnamed_addr constant [14 x i8] c"PSA_ALG_HKDF(\00", align 1
@.str.118 = private unnamed_addr constant [21 x i8] c"PSA_ALG_HKDF_EXPAND(\00", align 1
@.str.119 = private unnamed_addr constant [22 x i8] c"PSA_ALG_HKDF_EXTRACT(\00", align 1
@.str.120 = private unnamed_addr constant [14 x i8] c"PSA_ALG_HMAC(\00", align 1
@.str.121 = private unnamed_addr constant [21 x i8] c"PSA_ALG_PBKDF2_HMAC(\00", align 1
@.str.122 = private unnamed_addr constant [18 x i8] c"PSA_ALG_RSA_OAEP(\00", align 1
@.str.123 = private unnamed_addr constant [27 x i8] c"PSA_ALG_RSA_PKCS1V15_SIGN(\00", align 1
@.str.124 = private unnamed_addr constant [17 x i8] c"PSA_ALG_RSA_PSS(\00", align 1
@.str.125 = private unnamed_addr constant [26 x i8] c"PSA_ALG_RSA_PSS_ANY_SALT(\00", align 1
@.str.126 = private unnamed_addr constant [19 x i8] c"PSA_ALG_TLS12_PRF(\00", align 1
@.str.127 = private unnamed_addr constant [25 x i8] c"PSA_ALG_TLS12_PSK_TO_MS(\00", align 1
@.str.128 = private unnamed_addr constant [8 x i8] c"0x%08lx\00", align 1
@.str.129 = private unnamed_addr constant [4 x i8] c"%lu\00", align 1
@.str.130 = private unnamed_addr constant [7 x i8] c"0x%02x\00", align 1
@.str.131 = private unnamed_addr constant [30 x i8] c"PSA_ECC_FAMILY_BRAINPOOL_P_R1\00", align 1
@.str.132 = private unnamed_addr constant [26 x i8] c"PSA_ECC_FAMILY_MONTGOMERY\00", align 1
@.str.133 = private unnamed_addr constant [23 x i8] c"PSA_ECC_FAMILY_SECP_K1\00", align 1
@.str.134 = private unnamed_addr constant [23 x i8] c"PSA_ECC_FAMILY_SECP_R1\00", align 1
@.str.135 = private unnamed_addr constant [23 x i8] c"PSA_ECC_FAMILY_SECP_R2\00", align 1
@.str.136 = private unnamed_addr constant [23 x i8] c"PSA_ECC_FAMILY_SECT_K1\00", align 1
@.str.137 = private unnamed_addr constant [23 x i8] c"PSA_ECC_FAMILY_SECT_R1\00", align 1
@.str.138 = private unnamed_addr constant [23 x i8] c"PSA_ECC_FAMILY_SECT_R2\00", align 1
@.str.139 = private unnamed_addr constant [31 x i8] c"PSA_ECC_FAMILY_TWISTED_EDWARDS\00", align 1
@.str.140 = private unnamed_addr constant [21 x i8] c"PSA_DH_FAMILY_CUSTOM\00", align 1
@.str.141 = private unnamed_addr constant [22 x i8] c"PSA_DH_FAMILY_RFC7919\00", align 1
@.str.142 = private unnamed_addr constant [17 x i8] c"PSA_KEY_TYPE_AES\00", align 1
@.str.143 = private unnamed_addr constant [18 x i8] c"PSA_KEY_TYPE_ARIA\00", align 1
@.str.144 = private unnamed_addr constant [22 x i8] c"PSA_KEY_TYPE_CAMELLIA\00", align 1
@.str.145 = private unnamed_addr constant [32 x i8] c"PSA_KEY_TYPE_CATEGORY_FLAG_PAIR\00", align 1
@.str.146 = private unnamed_addr constant [31 x i8] c"PSA_KEY_TYPE_CATEGORY_KEY_PAIR\00", align 1
@.str.147 = private unnamed_addr constant [33 x i8] c"PSA_KEY_TYPE_CATEGORY_PUBLIC_KEY\00", align 1
@.str.148 = private unnamed_addr constant [26 x i8] c"PSA_KEY_TYPE_CATEGORY_RAW\00", align 1
@.str.149 = private unnamed_addr constant [32 x i8] c"PSA_KEY_TYPE_CATEGORY_SYMMETRIC\00", align 1
@.str.150 = private unnamed_addr constant [22 x i8] c"PSA_KEY_TYPE_CHACHA20\00", align 1
@.str.151 = private unnamed_addr constant [20 x i8] c"PSA_KEY_TYPE_DERIVE\00", align 1
@.str.152 = private unnamed_addr constant [17 x i8] c"PSA_KEY_TYPE_DES\00", align 1
@.str.153 = private unnamed_addr constant [30 x i8] c"PSA_KEY_TYPE_DH_KEY_PAIR_BASE\00", align 1
@.str.154 = private unnamed_addr constant [32 x i8] c"PSA_KEY_TYPE_DH_PUBLIC_KEY_BASE\00", align 1
@.str.155 = private unnamed_addr constant [26 x i8] c"PSA_KEY_TYPE_DSA_KEY_PAIR\00", align 1
@.str.156 = private unnamed_addr constant [28 x i8] c"PSA_KEY_TYPE_DSA_PUBLIC_KEY\00", align 1
@.str.157 = private unnamed_addr constant [31 x i8] c"PSA_KEY_TYPE_ECC_KEY_PAIR_BASE\00", align 1
@.str.158 = private unnamed_addr constant [33 x i8] c"PSA_KEY_TYPE_ECC_PUBLIC_KEY_BASE\00", align 1
@.str.159 = private unnamed_addr constant [18 x i8] c"PSA_KEY_TYPE_HMAC\00", align 1
@.str.160 = private unnamed_addr constant [18 x i8] c"PSA_KEY_TYPE_NONE\00", align 1
@.str.161 = private unnamed_addr constant [22 x i8] c"PSA_KEY_TYPE_PASSWORD\00", align 1
@.str.162 = private unnamed_addr constant [27 x i8] c"PSA_KEY_TYPE_PASSWORD_HASH\00", align 1
@.str.163 = private unnamed_addr constant [20 x i8] c"PSA_KEY_TYPE_PEPPER\00", align 1
@.str.164 = private unnamed_addr constant [22 x i8] c"PSA_KEY_TYPE_RAW_DATA\00", align 1
@.str.165 = private unnamed_addr constant [26 x i8] c"PSA_KEY_TYPE_RSA_KEY_PAIR\00", align 1
@.str.166 = private unnamed_addr constant [28 x i8] c"PSA_KEY_TYPE_RSA_PUBLIC_KEY\00", align 1
@.str.167 = private unnamed_addr constant [26 x i8] c"PSA_KEY_TYPE_ECC_KEY_PAIR\00", align 1
@.str.168 = private unnamed_addr constant [28 x i8] c"PSA_KEY_TYPE_ECC_PUBLIC_KEY\00", align 1
@.str.169 = private unnamed_addr constant [25 x i8] c"PSA_KEY_TYPE_DH_KEY_PAIR\00", align 1
@.str.170 = private unnamed_addr constant [27 x i8] c"PSA_KEY_TYPE_DH_PUBLIC_KEY\00", align 1
@.str.171 = private unnamed_addr constant [7 x i8] c"0x%04x\00", align 1
@.str.172 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.173 = private unnamed_addr constant [4 x i8] c" | \00", align 1
@.str.174 = private unnamed_addr constant [19 x i8] c"PSA_KEY_USAGE_COPY\00", align 1
@.str.175 = private unnamed_addr constant [22 x i8] c"PSA_KEY_USAGE_DECRYPT\00", align 1
@.str.176 = private unnamed_addr constant [21 x i8] c"PSA_KEY_USAGE_DERIVE\00", align 1
@.str.177 = private unnamed_addr constant [22 x i8] c"PSA_KEY_USAGE_ENCRYPT\00", align 1
@.str.178 = private unnamed_addr constant [21 x i8] c"PSA_KEY_USAGE_EXPORT\00", align 1
@.str.179 = private unnamed_addr constant [24 x i8] c"PSA_KEY_USAGE_SIGN_HASH\00", align 1
@.str.180 = private unnamed_addr constant [27 x i8] c"PSA_KEY_USAGE_SIGN_MESSAGE\00", align 1
@.str.181 = private unnamed_addr constant [32 x i8] c"PSA_KEY_USAGE_VERIFY_DERIVATION\00", align 1
@.str.182 = private unnamed_addr constant [26 x i8] c"PSA_KEY_USAGE_VERIFY_HASH\00", align 1
@.str.183 = private unnamed_addr constant [29 x i8] c"PSA_KEY_USAGE_VERIFY_MESSAGE\00", align 1
@.str.184 = private unnamed_addr constant [33 x i8] c"Usage: %s TYPE VALUE [VALUE...]\0A\00", align 1
@.str.185 = private unnamed_addr constant [19 x i8] c"psa_constant_names\00", align 1
@.str.186 = private unnamed_addr constant [65 x i8] c"Print the symbolic name whose numerical value is VALUE in TYPE.\0A\00", align 1
@.str.187 = private unnamed_addr constant [43 x i8] c"Supported types (with = between aliases):\0A\00", align 1
@.str.188 = private unnamed_addr constant [53 x i8] c"  alg=algorithm         Algorithm (psa_algorithm_t)\0A\00", align 1
@.str.189 = private unnamed_addr constant [70 x i8] c"  curve=ecc_curve       Elliptic curve identifier (psa_ecc_family_t)\0A\00", align 1
@.str.190 = private unnamed_addr constant [75 x i8] c"  group=dh_group        Diffie-Hellman group identifier (psa_dh_family_t)\0A\00", align 1
@.str.191 = private unnamed_addr constant [51 x i8] c"  type=key_type         Key type (psa_key_type_t)\0A\00", align 1
@.str.192 = private unnamed_addr constant [53 x i8] c"  usage=key_usage       Key usage (psa_key_usage_t)\0A\00", align 1
@.str.193 = private unnamed_addr constant [52 x i8] c"  error=status          Status code (psa_status_t)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @process_signed(i32 noundef %type, i64 noundef %min, i64 noundef %max, i8** noundef %argp) #0 {
entry:
  %retval = alloca i32, align 4
  %type.addr = alloca i32, align 4
  %min.addr = alloca i64, align 8
  %max.addr = alloca i64, align 8
  %argp.addr = alloca i8**, align 8
  %buffer = alloca [200 x i8], align 16
  %end = alloca i8*, align 8
  %value = alloca i64, align 8
  store i32 %type, i32* %type.addr, align 4
  store i64 %min, i64* %min.addr, align 8
  store i64 %max, i64* %max.addr, align 8
  store i8** %argp, i8*** %argp.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i8**, i8*** %argp.addr, align 8
  %1 = load i8*, i8** %0, align 8
  %cmp = icmp ne i8* %1, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i8**, i8*** %argp.addr, align 8
  %3 = load i8*, i8** %2, align 8
  %call = call i64 @strtol(i8* noundef %3, i8** noundef %end, i32 noundef 0) #5
  store i64 %call, i64* %value, align 8
  %4 = load i8*, i8** %end, align 8
  %5 = load i8, i8* %4, align 1
  %tobool = icmp ne i8 %5, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %6 = load i8**, i8*** %argp.addr, align 8
  %7 = load i8*, i8** %6, align 8
  %call1 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* noundef %7) #6
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %for.body
  %8 = load i64, i64* %value, align 8
  %9 = load i64, i64* %min.addr, align 8
  %cmp2 = icmp slt i64 %8, %9
  br i1 %cmp2, label %if.then6, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %call3 = call i32* @__errno_location() #7
  %10 = load i32, i32* %call3, align 4
  %cmp4 = icmp eq i32 %10, 34
  br i1 %cmp4, label %land.lhs.true, label %if.end8

land.lhs.true:                                    ; preds = %lor.lhs.false
  %11 = load i64, i64* %value, align 8
  %cmp5 = icmp slt i64 %11, 0
  br i1 %cmp5, label %if.then6, label %if.end8

if.then6:                                         ; preds = %land.lhs.true, %if.end
  %12 = load i8**, i8*** %argp.addr, align 8
  %13 = load i8*, i8** %12, align 8
  %call7 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* noundef %13) #6
  store i32 1, i32* %retval, align 4
  br label %return

if.end8:                                          ; preds = %land.lhs.true, %lor.lhs.false
  %14 = load i64, i64* %value, align 8
  %15 = load i64, i64* %max.addr, align 8
  %cmp9 = icmp sgt i64 %14, %15
  br i1 %cmp9, label %if.then15, label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %if.end8
  %call11 = call i32* @__errno_location() #7
  %16 = load i32, i32* %call11, align 4
  %cmp12 = icmp eq i32 %16, 34
  br i1 %cmp12, label %land.lhs.true13, label %if.end17

land.lhs.true13:                                  ; preds = %lor.lhs.false10
  %17 = load i64, i64* %value, align 8
  %cmp14 = icmp sgt i64 %17, 0
  br i1 %cmp14, label %if.then15, label %if.end17

if.then15:                                        ; preds = %land.lhs.true13, %if.end8
  %18 = load i8**, i8*** %argp.addr, align 8
  %19 = load i8*, i8** %18, align 8
  %call16 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8* noundef %19) #6
  store i32 1, i32* %retval, align 4
  br label %return

if.end17:                                         ; preds = %land.lhs.true13, %lor.lhs.false10
  %20 = load i32, i32* %type.addr, align 4
  switch i32 %20, label %sw.epilog [
    i32 0, label %sw.bb
  ]

sw.bb:                                            ; preds = %if.end17
  %arraydecay = getelementptr inbounds [200 x i8], [200 x i8]* %buffer, i64 0, i64 0
  %21 = load i64, i64* %value, align 8
  %conv = trunc i64 %21 to i32
  %call18 = call i32 @psa_snprint_status(i8* noundef %arraydecay, i64 noundef 200, i32 noundef %conv) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end17, %sw.bb
  %arraydecay19 = getelementptr inbounds [200 x i8], [200 x i8]* %buffer, i64 0, i64 0
  %call20 = call i32 @puts(i8* noundef %arraydecay19) #6
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog
  %22 = load i8**, i8*** %argp.addr, align 8
  %incdec.ptr = getelementptr inbounds i8*, i8** %22, i32 1
  store i8** %incdec.ptr, i8*** %argp.addr, align 8
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then15, %if.then6, %if.then
  %23 = load i32, i32* %retval, align 4
  ret i32 %23
}

; Function Attrs: nounwind
declare dso_local i64 @strtol(i8* noundef, i8** noundef, i32 noundef) #1

declare dso_local i32 @printf(i8* noundef, ...) #2

; Function Attrs: nounwind readnone willreturn
declare dso_local i32* @__errno_location() #3

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psa_snprint_status(i8* noundef %buffer, i64 noundef %buffer_size, i32 noundef %status) #0 {
entry:
  %retval = alloca i32, align 4
  %buffer.addr = alloca i8*, align 8
  %buffer_size.addr = alloca i64, align 8
  %status.addr = alloca i32, align 4
  %name = alloca i8*, align 8
  %length = alloca i64, align 8
  store i8* %buffer, i8** %buffer.addr, align 8
  store i64 %buffer_size, i64* %buffer_size.addr, align 8
  store i32 %status, i32* %status.addr, align 4
  %0 = load i32, i32* %status.addr, align 4
  %call = call i8* @psa_strerror(i32 noundef %0) #6
  store i8* %call, i8** %name, align 8
  %1 = load i8*, i8** %name, align 8
  %cmp = icmp eq i8* %1, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %buffer.addr, align 8
  %3 = load i64, i64* %buffer_size.addr, align 8
  %4 = load i32, i32* %status.addr, align 4
  %conv = sext i32 %4 to i64
  %call1 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %2, i64 noundef %3, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i64 0, i64 0), i64 noundef %conv) #5
  store i32 %call1, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  %5 = load i8*, i8** %name, align 8
  %call2 = call i64 @strlen(i8* noundef %5) #8
  store i64 %call2, i64* %length, align 8
  %6 = load i64, i64* %length, align 8
  %7 = load i64, i64* %buffer_size.addr, align 8
  %cmp3 = icmp ult i64 %6, %7
  br i1 %cmp3, label %if.then5, label %if.else8

if.then5:                                         ; preds = %if.else
  %8 = load i8*, i8** %buffer.addr, align 8
  %9 = load i8*, i8** %name, align 8
  %10 = load i64, i64* %length, align 8
  %add = add i64 %10, 1
  %call6 = call i8* @memcpy(i8* noundef %8, i8* noundef %9, i64 noundef %add) #5
  %11 = load i64, i64* %length, align 8
  %conv7 = trunc i64 %11 to i32
  store i32 %conv7, i32* %retval, align 4
  br label %return

if.else8:                                         ; preds = %if.else
  %12 = load i64, i64* %buffer_size.addr, align 8
  %conv9 = trunc i64 %12 to i32
  store i32 %conv9, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.else8, %if.then5, %if.then
  %13 = load i32, i32* %retval, align 4
  ret i32 %13
}

declare dso_local i32 @puts(i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @process_unsigned(i32 noundef %type, i64 noundef %max, i8** noundef %argp) #0 {
entry:
  %retval = alloca i32, align 4
  %type.addr = alloca i32, align 4
  %max.addr = alloca i64, align 8
  %argp.addr = alloca i8**, align 8
  %buffer = alloca [200 x i8], align 16
  %end = alloca i8*, align 8
  %value = alloca i64, align 8
  store i32 %type, i32* %type.addr, align 4
  store i64 %max, i64* %max.addr, align 8
  store i8** %argp, i8*** %argp.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i8**, i8*** %argp.addr, align 8
  %1 = load i8*, i8** %0, align 8
  %cmp = icmp ne i8* %1, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i8**, i8*** %argp.addr, align 8
  %3 = load i8*, i8** %2, align 8
  %call = call i64 @strtoul(i8* noundef %3, i8** noundef %end, i32 noundef 0) #5
  store i64 %call, i64* %value, align 8
  %4 = load i8*, i8** %end, align 8
  %5 = load i8, i8* %4, align 1
  %tobool = icmp ne i8 %5, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %6 = load i8**, i8*** %argp.addr, align 8
  %7 = load i8*, i8** %6, align 8
  %call1 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* noundef %7) #6
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %for.body
  %8 = load i64, i64* %value, align 8
  %9 = load i64, i64* %max.addr, align 8
  %cmp2 = icmp ugt i64 %8, %9
  br i1 %cmp2, label %if.then5, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %call3 = call i32* @__errno_location() #7
  %10 = load i32, i32* %call3, align 4
  %cmp4 = icmp eq i32 %10, 34
  br i1 %cmp4, label %if.then5, label %if.end7

if.then5:                                         ; preds = %lor.lhs.false, %if.end
  %11 = load i8**, i8*** %argp.addr, align 8
  %12 = load i8*, i8** %11, align 8
  %call6 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i8* noundef %12) #6
  store i32 1, i32* %retval, align 4
  br label %return

if.end7:                                          ; preds = %lor.lhs.false
  %13 = load i32, i32* %type.addr, align 4
  switch i32 %13, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb9
    i32 2, label %sw.bb13
    i32 3, label %sw.bb17
    i32 4, label %sw.bb21
  ]

sw.bb:                                            ; preds = %if.end7
  %arraydecay = getelementptr inbounds [200 x i8], [200 x i8]* %buffer, i64 0, i64 0
  %14 = load i64, i64* %value, align 8
  %conv = trunc i64 %14 to i32
  %call8 = call i32 @psa_snprint_algorithm(i8* noundef %arraydecay, i64 noundef 200, i32 noundef %conv) #6
  br label %sw.epilog

sw.bb9:                                           ; preds = %if.end7
  %arraydecay10 = getelementptr inbounds [200 x i8], [200 x i8]* %buffer, i64 0, i64 0
  %15 = load i64, i64* %value, align 8
  %conv11 = trunc i64 %15 to i8
  %call12 = call i32 @psa_snprint_ecc_curve(i8* noundef %arraydecay10, i64 noundef 200, i8 noundef zeroext %conv11) #6
  br label %sw.epilog

sw.bb13:                                          ; preds = %if.end7
  %arraydecay14 = getelementptr inbounds [200 x i8], [200 x i8]* %buffer, i64 0, i64 0
  %16 = load i64, i64* %value, align 8
  %conv15 = trunc i64 %16 to i8
  %call16 = call i32 @psa_snprint_dh_group(i8* noundef %arraydecay14, i64 noundef 200, i8 noundef zeroext %conv15) #6
  br label %sw.epilog

sw.bb17:                                          ; preds = %if.end7
  %arraydecay18 = getelementptr inbounds [200 x i8], [200 x i8]* %buffer, i64 0, i64 0
  %17 = load i64, i64* %value, align 8
  %conv19 = trunc i64 %17 to i16
  %call20 = call i32 @psa_snprint_key_type(i8* noundef %arraydecay18, i64 noundef 200, i16 noundef zeroext %conv19) #6
  br label %sw.epilog

sw.bb21:                                          ; preds = %if.end7
  %arraydecay22 = getelementptr inbounds [200 x i8], [200 x i8]* %buffer, i64 0, i64 0
  %18 = load i64, i64* %value, align 8
  %conv23 = trunc i64 %18 to i32
  %call24 = call i32 @psa_snprint_key_usage(i8* noundef %arraydecay22, i64 noundef 200, i32 noundef %conv23) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end7, %sw.bb21, %sw.bb17, %sw.bb13, %sw.bb9, %sw.bb
  %arraydecay25 = getelementptr inbounds [200 x i8], [200 x i8]* %buffer, i64 0, i64 0
  %call26 = call i32 @puts(i8* noundef %arraydecay25) #6
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog
  %19 = load i8**, i8*** %argp.addr, align 8
  %incdec.ptr = getelementptr inbounds i8*, i8** %19, i32 1
  store i8** %incdec.ptr, i8*** %argp.addr, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then5, %if.then
  %20 = load i32, i32* %retval, align 4
  ret i32 %20
}

; Function Attrs: nounwind
declare dso_local i64 @strtoul(i8* noundef, i8** noundef, i32 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psa_snprint_algorithm(i8* noundef %buffer, i64 noundef %buffer_size, i32 noundef %alg) #0 {
entry:
  %buffer.addr = alloca i8*, align 8
  %buffer_size.addr = alloca i64, align 8
  %alg.addr = alloca i32, align 4
  %required_size = alloca i64, align 8
  %core_alg = alloca i32, align 4
  %length_modifier = alloca i64, align 8
  store i8* %buffer, i8** %buffer.addr, align 8
  store i64 %buffer_size, i64* %buffer_size.addr, align 8
  store i32 %alg, i32* %alg.addr, align 4
  store i64 0, i64* %required_size, align 8
  %0 = load i32, i32* %alg.addr, align 4
  store i32 %0, i32* %core_alg, align 4
  store i64 4294967295, i64* %length_modifier, align 8
  %1 = load i32, i32* %alg.addr, align 4
  %and = and i32 %1, 2130706432
  %cmp = icmp eq i32 %and, 50331648
  br i1 %cmp, label %if.then, label %if.else12

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %alg.addr, align 4
  %and1 = and i32 %2, -4161537
  %or = or i32 %and1, 0
  store i32 %or, i32* %core_alg, align 4
  %3 = load i32, i32* %alg.addr, align 4
  %and2 = and i32 %3, 32768
  %tobool = icmp ne i32 %and2, 0
  br i1 %tobool, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.then
  %4 = load i64, i64* %buffer_size.addr, align 8
  call void @append(i8** noundef %buffer.addr, i64 noundef %4, i64* noundef %required_size, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.42, i64 0, i64 0), i64 noundef 33) #6
  %5 = load i32, i32* %alg.addr, align 4
  %and4 = and i32 %5, 4128768
  %shr = lshr i32 %and4, 16
  %conv = zext i32 %shr to i64
  store i64 %conv, i64* %length_modifier, align 8
  br label %if.end11

if.else:                                          ; preds = %if.then
  %6 = load i32, i32* %core_alg, align 4
  %7 = load i32, i32* %alg.addr, align 4
  %cmp5 = icmp ne i32 %6, %7
  br i1 %cmp5, label %if.then7, label %if.end

if.then7:                                         ; preds = %if.else
  %8 = load i64, i64* %buffer_size.addr, align 8
  call void @append(i8** noundef %buffer.addr, i64 noundef %8, i64* noundef %required_size, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.43, i64 0, i64 0), i64 noundef 22) #6
  %9 = load i32, i32* %alg.addr, align 4
  %and8 = and i32 %9, 4128768
  %shr9 = lshr i32 %and8, 16
  %conv10 = zext i32 %shr9 to i64
  store i64 %conv10, i64* %length_modifier, align 8
  br label %if.end

if.end:                                           ; preds = %if.then7, %if.else
  br label %if.end11

if.end11:                                         ; preds = %if.end, %if.then3
  br label %if.end73

if.else12:                                        ; preds = %entry
  %10 = load i32, i32* %alg.addr, align 4
  %and13 = and i32 %10, 2130706432
  %cmp14 = icmp eq i32 %and13, 83886080
  br i1 %cmp14, label %if.then16, label %if.else54

if.then16:                                        ; preds = %if.else12
  %11 = load i32, i32* %alg.addr, align 4
  %and17 = and i32 %11, -4161537
  %or18 = or i32 %and17, 0
  %cmp19 = icmp eq i32 %or18, 88080640
  br i1 %cmp19, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then16
  br label %cond.end32

cond.false:                                       ; preds = %if.then16
  %12 = load i32, i32* %alg.addr, align 4
  %and21 = and i32 %12, -4161537
  %or22 = or i32 %and21, 0
  %cmp23 = icmp eq i32 %or22, 88080896
  br i1 %cmp23, label %cond.true25, label %cond.false26

cond.true25:                                      ; preds = %cond.false
  br label %cond.end

cond.false26:                                     ; preds = %cond.false
  %13 = load i32, i32* %alg.addr, align 4
  %and27 = and i32 %13, -4161537
  %or28 = or i32 %and27, 0
  %cmp29 = icmp eq i32 %or28, 83887360
  %14 = zext i1 %cmp29 to i64
  %cond = select i1 %cmp29, i32 84935936, i32 0
  br label %cond.end

cond.end:                                         ; preds = %cond.false26, %cond.true25
  %cond31 = phi i32 [ 89129472, %cond.true25 ], [ %cond, %cond.false26 ]
  br label %cond.end32

cond.end32:                                       ; preds = %cond.end, %cond.true
  %cond33 = phi i32 [ 89129216, %cond.true ], [ %cond31, %cond.end ]
  store i32 %cond33, i32* %core_alg, align 4
  %15 = load i32, i32* %core_alg, align 4
  %cmp34 = icmp eq i32 %15, 0
  br i1 %cmp34, label %if.then36, label %if.else37

if.then36:                                        ; preds = %cond.end32
  %16 = load i32, i32* %alg.addr, align 4
  store i32 %16, i32* %core_alg, align 4
  br label %if.end53

if.else37:                                        ; preds = %cond.end32
  %17 = load i32, i32* %alg.addr, align 4
  %and38 = and i32 %17, 32768
  %tobool39 = icmp ne i32 %and38, 0
  br i1 %tobool39, label %if.then40, label %if.else44

if.then40:                                        ; preds = %if.else37
  %18 = load i64, i64* %buffer_size.addr, align 8
  call void @append(i8** noundef %buffer.addr, i64 noundef %18, i64* noundef %required_size, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.44, i64 0, i64 0), i64 noundef 43) #6
  %19 = load i32, i32* %alg.addr, align 4
  %and41 = and i32 %19, 4128768
  %shr42 = lshr i32 %and41, 16
  %conv43 = zext i32 %shr42 to i64
  store i64 %conv43, i64* %length_modifier, align 8
  br label %if.end52

if.else44:                                        ; preds = %if.else37
  %20 = load i32, i32* %core_alg, align 4
  %21 = load i32, i32* %alg.addr, align 4
  %cmp45 = icmp ne i32 %20, %21
  br i1 %cmp45, label %if.then47, label %if.end51

if.then47:                                        ; preds = %if.else44
  %22 = load i64, i64* %buffer_size.addr, align 8
  call void @append(i8** noundef %buffer.addr, i64 noundef %22, i64* noundef %required_size, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.45, i64 0, i64 0), i64 noundef 32) #6
  %23 = load i32, i32* %alg.addr, align 4
  %and48 = and i32 %23, 4128768
  %shr49 = lshr i32 %and48, 16
  %conv50 = zext i32 %shr49 to i64
  store i64 %conv50, i64* %length_modifier, align 8
  br label %if.end51

if.end51:                                         ; preds = %if.then47, %if.else44
  br label %if.end52

if.end52:                                         ; preds = %if.end51, %if.then40
  br label %if.end53

if.end53:                                         ; preds = %if.end52, %if.then36
  br label %if.end72

if.else54:                                        ; preds = %if.else12
  %24 = load i32, i32* %alg.addr, align 4
  %and55 = and i32 %24, 2130706432
  %cmp56 = icmp eq i32 %and55, 150994944
  br i1 %cmp56, label %land.lhs.true, label %if.end71

land.lhs.true:                                    ; preds = %if.else54
  %25 = load i32, i32* %alg.addr, align 4
  %and58 = and i32 %25, 2130706432
  %cmp59 = icmp eq i32 %and58, 150994944
  br i1 %cmp59, label %land.lhs.true61, label %if.then66

land.lhs.true61:                                  ; preds = %land.lhs.true
  %26 = load i32, i32* %alg.addr, align 4
  %and62 = and i32 %26, -33488897
  %or63 = or i32 %and62, 134217728
  %cmp64 = icmp eq i32 %or63, 134217728
  br i1 %cmp64, label %if.end71, label %if.then66

if.then66:                                        ; preds = %land.lhs.true61, %land.lhs.true
  %27 = load i32, i32* %alg.addr, align 4
  %and67 = and i32 %27, -33488897
  %or68 = or i32 %and67, 134217728
  store i32 %or68, i32* %core_alg, align 4
  %28 = load i64, i64* %buffer_size.addr, align 8
  call void @append(i8** noundef %buffer.addr, i64 noundef %28, i64* noundef %required_size, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.46, i64 0, i64 0), i64 noundef 22) #6
  %29 = load i64, i64* %buffer_size.addr, align 8
  %30 = load i32, i32* %alg.addr, align 4
  %and69 = and i32 %30, -65536
  %or70 = or i32 %and69, 150994944
  call void @append_with_alg(i8** noundef %buffer.addr, i64 noundef %29, i64* noundef %required_size, i8* (i32)* noundef @psa_ka_algorithm_name, i32 noundef %or70) #6
  %31 = load i64, i64* %buffer_size.addr, align 8
  call void @append(i8** noundef %buffer.addr, i64 noundef %31, i64* noundef %required_size, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.47, i64 0, i64 0), i64 noundef 2) #6
  br label %if.end71

if.end71:                                         ; preds = %if.then66, %land.lhs.true61, %if.else54
  br label %if.end72

if.end72:                                         ; preds = %if.end71, %if.end53
  br label %if.end73

if.end73:                                         ; preds = %if.end72, %if.end11
  %32 = load i32, i32* %core_alg, align 4
  switch i32 %32, label %sw.default [
    i32 33554687, label %sw.bb
    i32 83886080, label %sw.bb74
    i32 117440512, label %sw.bb75
    i32 67108864, label %sw.bb76
    i32 33554432, label %sw.bb77
    i32 150994944, label %sw.bb78
    i32 134217728, label %sw.bb79
    i32 50331648, label %sw.bb80
    i32 167772160, label %sw.bb81
    i32 100663296, label %sw.bb82
    i32 62914816, label %sw.bb83
    i32 71319552, label %sw.bb84
    i32 71319808, label %sw.bb85
    i32 89129216, label %sw.bb86
    i32 79696640, label %sw.bb87
    i32 79696128, label %sw.bb88
    i32 84935936, label %sw.bb89
    i32 62914560, label %sw.bb90
    i32 62915072, label %sw.bb91
    i32 79695872, label %sw.bb92
    i32 100664576, label %sw.bb93
    i32 100665088, label %sw.bb94
    i32 100664320, label %sw.bb95
    i32 71320576, label %sw.bb96
    i32 151126016, label %sw.bb97
    i32 100664832, label %sw.bb98
    i32 100665611, label %sw.bb99
    i32 100665621, label %sw.bb100
    i32 151060480, label %sw.bb101
    i32 89129472, label %sw.bb102
    i32 100665600, label %sw.bb103
    i32 134217984, label %sw.bb104
    i32 134219008, label %sw.bb105
    i32 134218752, label %sw.bb106
    i32 58720256, label %sw.bb107
    i32 167772416, label %sw.bb108
    i32 33554435, label %sw.bb109
    i32 0, label %sw.bb110
    i32 79696384, label %sw.bb111
    i32 142606848, label %sw.bb112
    i32 142606592, label %sw.bb113
    i32 100665344, label %sw.bb114
    i32 33554436, label %sw.bb115
    i32 117441280, label %sw.bb116
    i32 117441024, label %sw.bb117
    i32 100663808, label %sw.bb118
    i32 100668160, label %sw.bb119
    i32 100664064, label %sw.bb120
    i32 33554448, label %sw.bb121
    i32 33554449, label %sw.bb122
    i32 33554450, label %sw.bb123
    i32 33554451, label %sw.bb124
    i32 33554453, label %sw.bb125
    i32 33554437, label %sw.bb126
    i32 33554440, label %sw.bb127
    i32 33554441, label %sw.bb128
    i32 33554442, label %sw.bb129
    i32 33554443, label %sw.bb130
    i32 33554444, label %sw.bb131
    i32 33554445, label %sw.bb132
    i32 75497728, label %sw.bb133
    i32 134218240, label %sw.bb134
    i32 134218496, label %sw.bb135
    i32 71368448, label %sw.bb136
  ]

sw.bb:                                            ; preds = %if.end73
  %33 = load i64, i64* %buffer_size.addr, align 8
  call void @append(i8** noundef %buffer.addr, i64 noundef %33, i64* noundef %required_size, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.48, i64 0, i64 0), i64 noundef 16) #6
  br label %sw.epilog

sw.bb74:                                          ; preds = %if.end73
  %34 = load i64, i64* %buffer_size.addr, align 8
  call void @append(i8** noundef %buffer.addr, i64 noundef %34, i64* noundef %required_size, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.49, i64 0, i64 0), i64 noundef 21) #6
  br label %sw.epilog

sw.bb75:                                          ; preds = %if.end73
  %35 = load i64, i64* %buffer_size.addr, align 8
  call void @append(i8** noundef %buffer.addr, i64 noundef %35, i64* noundef %required_size, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.50, i64 0, i64 0), i64 noundef 38) #6
  br label %sw.epilog

sw.bb76:                                          ; preds = %if.end73
  %36 = load i64, i64* %buffer_size.addr, align 8
  call void @append(i8** noundef %buffer.addr, i64 noundef %36, i64* noundef %required_size, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.51, i64 0, i64 0), i64 noundef 23) #6
  br label %sw.epilog

sw.bb77:                                          ; preds = %if.end73
  %37 = load i64, i64* %buffer_size.addr, align 8
  call void @append(i8** noundef %buffer.addr, i64 noundef %37, i64* noundef %required_size, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.52, i64 0, i64 0), i64 noundef 21) #6
  br label %sw.epilog

sw.bb78:                                          ; preds = %if.end73
  %38 = load i64, i64* %buffer_size.addr, align 8
  call void @append(i8** noundef %buffer.addr, i64 noundef %38, i64* noundef %required_size, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.53, i64 0, i64 0), i64 noundef 30) #6
  br label %sw.epilog

sw.bb79:                                          ; preds = %if.end73
  %39 = load i64, i64* %buffer_size.addr, align 8
  call void @append(i8** noundef %buffer.addr, i64 noundef %39, i64* noundef %required_size, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.54, i64 0, i64 0), i64 noundef 31) #6
  br label %sw.epilog

sw.bb80:                                          ; preds = %if.end73
  %40 = load i64, i64* %buffer_size.addr, align 8
  call void @append(i8** noundef %buffer.addr, i64 noundef %40, i64* noundef %required_size, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.55, i64 0, i64 0), i64 noundef 20) #6
  br label %sw.epilog

sw.bb81:                                          ; preds = %if.end73
  %41 = load i64, i64* %buffer_size.addr, align 8
  call void @append(i8** noundef %buffer.addr, i64 noundef %41, i64* noundef %required_size, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.56, i64 0, i64 0), i64 noundef 21) #6
  br label %sw.epilog

sw.bb82:                                          ; preds = %if.end73
  %42 = load i64, i64* %buffer_size.addr, align 8
  call void @append(i8** noundef %buffer.addr, i64 noundef %42, i64* noundef %required_size, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.57, i64 0, i64 0), i64 noundef 21) #6
  br label %sw.epilog

sw.bb83:                                          ; preds = %if.end73
  %43 = load i64, i64* %buffer_size.addr, align 8
  call void @append(i8** noundef %buffer.addr, i64 noundef %43, i64* noundef %required_size, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.58, i64 0, i64 0), i64 noundef 15) #6
  br label %sw.epilog

sw.bb84:                                          ; preds = %if.end73
  %44 = load i64, i64* %buffer_size.addr, align 8
  call void @append(i8** noundef %buffer.addr, i64 noundef %44, i64* noundef %required_size, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.59, i64 0, i64 0), i64 noundef 22) #6
  br label %sw.epilog

sw.bb85:                                          ; preds = %if.end73
  %45 = load i64, i64* %buffer_size.addr, align 8
  call void @append(i8** noundef %buffer.addr, i64 noundef %45, i64* noundef %required_size, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.60, i64 0, i64 0), i64 noundef 17) #6
  br label %sw.epilog

sw.bb86:                                          ; preds = %if.end73
  %46 = load i64, i64* %buffer_size.addr, align 8
  call void @append(i8** noundef %buffer.addr, i64 noundef %46, i64* noundef %required_size, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.61, i64 0, i64 0), i64 noundef 11) #6
  br label %sw.epilog

sw.bb87:                                          ; preds = %if.end73
  %47 = load i64, i64* %buffer_size.addr, align 8
  call void @append(i8** noundef %buffer.addr, i64 noundef %47, i64* noundef %required_size, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.62, i64 0, i64 0), i64 noundef 23) #6
  br label %sw.epilog

sw.bb88:                                          ; preds = %if.end73
  %48 = load i64, i64* %buffer_size.addr, align 8
  call void @append(i8** noundef %buffer.addr, i64 noundef %48, i64* noundef %required_size, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.63, i64 0, i64 0), i64 noundef 11) #6
  br label %sw.epilog

sw.bb89:                                          ; preds = %if.end73
  %49 = load i64, i64* %buffer_size.addr, align 8
  call void @append(i8** noundef %buffer.addr, i64 noundef %49, i64* noundef %required_size, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.64, i64 0, i64 0), i64 noundef 25) #6
  br label %sw.epilog

sw.bb90:                                          ; preds = %if.end73
  %50 = load i64, i64* %buffer_size.addr, align 8
  call void @append(i8** noundef %buffer.addr, i64 noundef %50, i64* noundef %required_size, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.65, i64 0, i64 0), i64 noundef 23) #6
  br label %sw.epilog

sw.bb91:                                          ; preds = %if.end73
  %51 = load i64, i64* %buffer_size.addr, align 8
  call void @append(i8** noundef %buffer.addr, i64 noundef %51, i64* noundef %required_size, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.66, i64 0, i64 0), i64 noundef 12) #6
  br label %sw.epilog

sw.bb92:                                          ; preds = %if.end73
  %52 = load i64, i64* %buffer_size.addr, align 8
  call void @append(i8** noundef %buffer.addr, i64 noundef %52, i64* noundef %required_size, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.67, i64 0, i64 0), i64 noundef 11) #6
  br label %sw.epilog

sw.bb93:                                          ; preds = %if.end73
  %53 = load i64, i64* %buffer_size.addr, align 8
  call void @append(i8** noundef %buffer.addr, i64 noundef %53, i64* noundef %required_size, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.68, i64 0, i64 0), i64 noundef 30) #6
  br label %sw.epilog

sw.bb94:                                          ; preds = %if.end73
  %54 = load i64, i64* %buffer_size.addr, align 8
  call void @append(i8** noundef %buffer.addr, i64 noundef %54, i64* noundef %required_size, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.69, i64 0, i64 0), i64 noundef 32) #6
  br label %sw.epilog

sw.bb95:                                          ; preds = %if.end73
  %55 = load i64, i64* %buffer_size.addr, align 8
  call void @append(i8** noundef %buffer.addr, i64 noundef %55, i64* noundef %required_size, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.70, i64 0, i64 0), i64 noundef 16) #6
  br label %sw.epilog

sw.bb96:                                          ; preds = %if.end73
  %56 = load i64, i64* %buffer_size.addr, align 8
  call void @append(i8** noundef %buffer.addr, i64 noundef %56, i64* noundef %required_size, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.71, i64 0, i64 0), i64 noundef 22) #6
  br label %sw.epilog

sw.bb97:                                          ; preds = %if.end73
  %57 = load i64, i64* %buffer_size.addr, align 8
  call void @append(i8** noundef %buffer.addr, i64 noundef %57, i64* noundef %required_size, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.72, i64 0, i64 0), i64 noundef 12) #6
  br label %sw.epilog

sw.bb98:                                          ; preds = %if.end73
  %58 = load i64, i64* %buffer_size.addr, align 8
  call void @append(i8** noundef %buffer.addr, i64 noundef %58, i64* noundef %required_size, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.73, i64 0, i64 0), i64 noundef 17) #6
  br label %sw.epilog

sw.bb99:                                          ; preds = %if.end73
  %59 = load i64, i64* %buffer_size.addr, align 8
  call void @append(i8** noundef %buffer.addr, i64 noundef %59, i64* noundef %required_size, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.74, i64 0, i64 0), i64 noundef 17) #6
  br label %sw.epilog

sw.bb100:                                         ; preds = %if.end73
  %60 = load i64, i64* %buffer_size.addr, align 8
  call void @append(i8** noundef %buffer.addr, i64 noundef %60, i64* noundef %required_size, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.75, i64 0, i64 0), i64 noundef 15) #6
  br label %sw.epilog

sw.bb101:                                         ; preds = %if.end73
  %61 = load i64, i64* %buffer_size.addr, align 8
  call void @append(i8** noundef %buffer.addr, i64 noundef %61, i64* noundef %required_size, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.76, i64 0, i64 0), i64 noundef 12) #6
  br label %sw.epilog

sw.bb102:                                         ; preds = %if.end73
  %62 = load i64, i64* %buffer_size.addr, align 8
  call void @append(i8** noundef %buffer.addr, i64 noundef %62, i64* noundef %required_size, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.77, i64 0, i64 0), i64 noundef 11) #6
  br label %sw.epilog

sw.bb103:                                         ; preds = %if.end73
  %63 = load i64, i64* %buffer_size.addr, align 8
  call void @append(i8** noundef %buffer.addr, i64 noundef %63, i64* noundef %required_size, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.78, i64 0, i64 0), i64 noundef 23) #6
  br label %sw.epilog

sw.bb104:                                         ; preds = %if.end73
  %64 = load i64, i64* %buffer_size.addr, align 8
  call void @append(i8** noundef %buffer.addr, i64 noundef %64, i64* noundef %required_size, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.79, i64 0, i64 0), i64 noundef 17) #6
  br label %sw.epilog

sw.bb105:                                         ; preds = %if.end73
  %65 = load i64, i64* %buffer_size.addr, align 8
  call void @append(i8** noundef %buffer.addr, i64 noundef %65, i64* noundef %required_size, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.80, i64 0, i64 0), i64 noundef 24) #6
  br label %sw.epilog

sw.bb106:                                         ; preds = %if.end73
  %66 = load i64, i64* %buffer_size.addr, align 8
  call void @append(i8** noundef %buffer.addr, i64 noundef %66, i64* noundef %required_size, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.81, i64 0, i64 0), i64 noundef 25) #6
  br label %sw.epilog

sw.bb107:                                         ; preds = %if.end73
  %67 = load i64, i64* %buffer_size.addr, align 8
  call void @append(i8** noundef %buffer.addr, i64 noundef %67, i64* noundef %required_size, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.82, i64 0, i64 0), i64 noundef 17) #6
  br label %sw.epilog

sw.bb108:                                         ; preds = %if.end73
  %68 = load i64, i64* %buffer_size.addr, align 8
  call void @append(i8** noundef %buffer.addr, i64 noundef %68, i64* noundef %required_size, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.83, i64 0, i64 0), i64 noundef 13) #6
  br label %sw.epilog

sw.bb109:                                         ; preds = %if.end73
  %69 = load i64, i64* %buffer_size.addr, align 8
  call void @append(i8** noundef %buffer.addr, i64 noundef %69, i64* noundef %required_size, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.84, i64 0, i64 0), i64 noundef 11) #6
  br label %sw.epilog

sw.bb110:                                         ; preds = %if.end73
  %70 = load i64, i64* %buffer_size.addr, align 8
  call void @append(i8** noundef %buffer.addr, i64 noundef %70, i64* noundef %required_size, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.85, i64 0, i64 0), i64 noundef 12) #6
  br label %sw.epilog

sw.bb111:                                         ; preds = %if.end73
  %71 = load i64, i64* %buffer_size.addr, align 8
  call void @append(i8** noundef %buffer.addr, i64 noundef %71, i64* noundef %required_size, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.86, i64 0, i64 0), i64 noundef 11) #6
  br label %sw.epilog

sw.bb112:                                         ; preds = %if.end73
  %72 = load i64, i64* %buffer_size.addr, align 8
  call void @append(i8** noundef %buffer.addr, i64 noundef %72, i64* noundef %required_size, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.87, i64 0, i64 0), i64 noundef 31) #6
  br label %sw.epilog

sw.bb113:                                         ; preds = %if.end73
  %73 = load i64, i64* %buffer_size.addr, align 8
  call void @append(i8** noundef %buffer.addr, i64 noundef %73, i64* noundef %required_size, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.88, i64 0, i64 0), i64 noundef 24) #6
  br label %sw.epilog

sw.bb114:                                         ; preds = %if.end73
  %74 = load i64, i64* %buffer_size.addr, align 8
  call void @append(i8** noundef %buffer.addr, i64 noundef %74, i64* noundef %required_size, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.89, i64 0, i64 0), i64 noundef 18) #6
  br label %sw.epilog

sw.bb115:                                         ; preds = %if.end73
  %75 = load i64, i64* %buffer_size.addr, align 8
  call void @append(i8** noundef %buffer.addr, i64 noundef %75, i64* noundef %required_size, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.90, i64 0, i64 0), i64 noundef 17) #6
  br label %sw.epilog

sw.bb116:                                         ; preds = %if.end73
  %76 = load i64, i64* %buffer_size.addr, align 8
  call void @append(i8** noundef %buffer.addr, i64 noundef %76, i64* noundef %required_size, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.91, i64 0, i64 0), i64 noundef 21) #6
  br label %sw.epilog

sw.bb117:                                         ; preds = %if.end73
  %77 = load i64, i64* %buffer_size.addr, align 8
  call void @append(i8** noundef %buffer.addr, i64 noundef %77, i64* noundef %required_size, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.92, i64 0, i64 0), i64 noundef 26) #6
  br label %sw.epilog

sw.bb118:                                         ; preds = %if.end73
  %78 = load i64, i64* %buffer_size.addr, align 8
  call void @append(i8** noundef %buffer.addr, i64 noundef %78, i64* noundef %required_size, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.93, i64 0, i64 0), i64 noundef 29) #6
  br label %sw.epilog

sw.bb119:                                         ; preds = %if.end73
  %79 = load i64, i64* %buffer_size.addr, align 8
  call void @append(i8** noundef %buffer.addr, i64 noundef %79, i64* noundef %required_size, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.94, i64 0, i64 0), i64 noundef 29) #6
  br label %sw.epilog

sw.bb120:                                         ; preds = %if.end73
  %80 = load i64, i64* %buffer_size.addr, align 8
  call void @append(i8** noundef %buffer.addr, i64 noundef %80, i64* noundef %required_size, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.95, i64 0, i64 0), i64 noundef 20) #6
  br label %sw.epilog

sw.bb121:                                         ; preds = %if.end73
  %81 = load i64, i64* %buffer_size.addr, align 8
  call void @append(i8** noundef %buffer.addr, i64 noundef %81, i64* noundef %required_size, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.96, i64 0, i64 0), i64 noundef 16) #6
  br label %sw.epilog

sw.bb122:                                         ; preds = %if.end73
  %82 = load i64, i64* %buffer_size.addr, align 8
  call void @append(i8** noundef %buffer.addr, i64 noundef %82, i64* noundef %required_size, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.97, i64 0, i64 0), i64 noundef 16) #6
  br label %sw.epilog

sw.bb123:                                         ; preds = %if.end73
  %83 = load i64, i64* %buffer_size.addr, align 8
  call void @append(i8** noundef %buffer.addr, i64 noundef %83, i64* noundef %required_size, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.98, i64 0, i64 0), i64 noundef 16) #6
  br label %sw.epilog

sw.bb124:                                         ; preds = %if.end73
  %84 = load i64, i64* %buffer_size.addr, align 8
  call void @append(i8** noundef %buffer.addr, i64 noundef %84, i64* noundef %required_size, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.99, i64 0, i64 0), i64 noundef 16) #6
  br label %sw.epilog

sw.bb125:                                         ; preds = %if.end73
  %85 = load i64, i64* %buffer_size.addr, align 8
  call void @append(i8** noundef %buffer.addr, i64 noundef %85, i64* noundef %required_size, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.100, i64 0, i64 0), i64 noundef 20) #6
  br label %sw.epilog

sw.bb126:                                         ; preds = %if.end73
  %86 = load i64, i64* %buffer_size.addr, align 8
  call void @append(i8** noundef %buffer.addr, i64 noundef %86, i64* noundef %required_size, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.101, i64 0, i64 0), i64 noundef 13) #6
  br label %sw.epilog

sw.bb127:                                         ; preds = %if.end73
  %87 = load i64, i64* %buffer_size.addr, align 8
  call void @append(i8** noundef %buffer.addr, i64 noundef %87, i64* noundef %required_size, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.102, i64 0, i64 0), i64 noundef 15) #6
  br label %sw.epilog

sw.bb128:                                         ; preds = %if.end73
  %88 = load i64, i64* %buffer_size.addr, align 8
  call void @append(i8** noundef %buffer.addr, i64 noundef %88, i64* noundef %required_size, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.103, i64 0, i64 0), i64 noundef 15) #6
  br label %sw.epilog

sw.bb129:                                         ; preds = %if.end73
  %89 = load i64, i64* %buffer_size.addr, align 8
  call void @append(i8** noundef %buffer.addr, i64 noundef %89, i64* noundef %required_size, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.104, i64 0, i64 0), i64 noundef 15) #6
  br label %sw.epilog

sw.bb130:                                         ; preds = %if.end73
  %90 = load i64, i64* %buffer_size.addr, align 8
  call void @append(i8** noundef %buffer.addr, i64 noundef %90, i64* noundef %required_size, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.105, i64 0, i64 0), i64 noundef 15) #6
  br label %sw.epilog

sw.bb131:                                         ; preds = %if.end73
  %91 = load i64, i64* %buffer_size.addr, align 8
  call void @append(i8** noundef %buffer.addr, i64 noundef %91, i64* noundef %required_size, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.106, i64 0, i64 0), i64 noundef 19) #6
  br label %sw.epilog

sw.bb132:                                         ; preds = %if.end73
  %92 = load i64, i64* %buffer_size.addr, align 8
  call void @append(i8** noundef %buffer.addr, i64 noundef %92, i64* noundef %required_size, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.107, i64 0, i64 0), i64 noundef 19) #6
  br label %sw.epilog

sw.bb133:                                         ; preds = %if.end73
  %93 = load i64, i64* %buffer_size.addr, align 8
  call void @append(i8** noundef %buffer.addr, i64 noundef %93, i64* noundef %required_size, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.108, i64 0, i64 0), i64 noundef 21) #6
  br label %sw.epilog

sw.bb134:                                         ; preds = %if.end73
  %94 = load i64, i64* %buffer_size.addr, align 8
  call void @append(i8** noundef %buffer.addr, i64 noundef %94, i64* noundef %required_size, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.109, i64 0, i64 0), i64 noundef 22) #6
  br label %sw.epilog

sw.bb135:                                         ; preds = %if.end73
  %95 = load i64, i64* %buffer_size.addr, align 8
  call void @append(i8** noundef %buffer.addr, i64 noundef %95, i64* noundef %required_size, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.110, i64 0, i64 0), i64 noundef 28) #6
  br label %sw.epilog

sw.bb136:                                         ; preds = %if.end73
  %96 = load i64, i64* %buffer_size.addr, align 8
  call void @append(i8** noundef %buffer.addr, i64 noundef %96, i64* noundef %required_size, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.111, i64 0, i64 0), i64 noundef 11) #6
  br label %sw.epilog

sw.default:                                       ; preds = %if.end73
  %97 = load i32, i32* %core_alg, align 4
  %and137 = and i32 %97, -256
  %and138 = and i32 %and137, -257
  %cmp139 = icmp eq i32 %and138, 100664320
  br i1 %cmp139, label %land.lhs.true141, label %if.else155

land.lhs.true141:                                 ; preds = %sw.default
  %98 = load i32, i32* %core_alg, align 4
  %and142 = and i32 %98, 256
  %cmp143 = icmp ne i32 %and142, 0
  br i1 %cmp143, label %if.then145, label %if.else155

if.then145:                                       ; preds = %land.lhs.true141
  %99 = load i64, i64* %buffer_size.addr, align 8
  call void @append(i8** noundef %buffer.addr, i64 noundef %99, i64* noundef %required_size, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.112, i64 0, i64 0), i64 noundef 26) #6
  %100 = load i64, i64* %buffer_size.addr, align 8
  %101 = load i32, i32* %core_alg, align 4
  %and146 = and i32 %101, 255
  %cmp147 = icmp eq i32 %and146, 0
  br i1 %cmp147, label %cond.true149, label %cond.false150

cond.true149:                                     ; preds = %if.then145
  br label %cond.end153

cond.false150:                                    ; preds = %if.then145
  %102 = load i32, i32* %core_alg, align 4
  %and151 = and i32 %102, 255
  %or152 = or i32 33554432, %and151
  br label %cond.end153

cond.end153:                                      ; preds = %cond.false150, %cond.true149
  %cond154 = phi i32 [ 0, %cond.true149 ], [ %or152, %cond.false150 ]
  call void @append_with_alg(i8** noundef %buffer.addr, i64 noundef %100, i64* noundef %required_size, i8* (i32)* noundef @psa_hash_algorithm_name, i32 noundef %cond154) #6
  %103 = load i64, i64* %buffer_size.addr, align 8
  call void @append(i8** noundef %buffer.addr, i64 noundef %103, i64* noundef %required_size, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.113, i64 0, i64 0), i64 noundef 1) #6
  br label %if.end382

if.else155:                                       ; preds = %land.lhs.true141, %sw.default
  %104 = load i32, i32* %core_alg, align 4
  %and156 = and i32 %104, -256
  %and157 = and i32 %and156, -257
  %cmp158 = icmp eq i32 %and157, 100664832
  br i1 %cmp158, label %land.lhs.true160, label %if.else174

land.lhs.true160:                                 ; preds = %if.else155
  %105 = load i32, i32* %core_alg, align 4
  %and161 = and i32 %105, 256
  %cmp162 = icmp ne i32 %and161, 0
  br i1 %cmp162, label %if.then164, label %if.else174

if.then164:                                       ; preds = %land.lhs.true160
  %106 = load i64, i64* %buffer_size.addr, align 8
  call void @append(i8** noundef %buffer.addr, i64 noundef %106, i64* noundef %required_size, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.114, i64 0, i64 0), i64 noundef 28) #6
  %107 = load i64, i64* %buffer_size.addr, align 8
  %108 = load i32, i32* %core_alg, align 4
  %and165 = and i32 %108, 255
  %cmp166 = icmp eq i32 %and165, 0
  br i1 %cmp166, label %cond.true168, label %cond.false169

cond.true168:                                     ; preds = %if.then164
  br label %cond.end172

cond.false169:                                    ; preds = %if.then164
  %109 = load i32, i32* %core_alg, align 4
  %and170 = and i32 %109, 255
  %or171 = or i32 33554432, %and170
  br label %cond.end172

cond.end172:                                      ; preds = %cond.false169, %cond.true168
  %cond173 = phi i32 [ 0, %cond.true168 ], [ %or171, %cond.false169 ]
  call void @append_with_alg(i8** noundef %buffer.addr, i64 noundef %107, i64* noundef %required_size, i8* (i32)* noundef @psa_hash_algorithm_name, i32 noundef %cond173) #6
  %110 = load i64, i64* %buffer_size.addr, align 8
  call void @append(i8** noundef %buffer.addr, i64 noundef %110, i64* noundef %required_size, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.113, i64 0, i64 0), i64 noundef 1) #6
  br label %if.end381

if.else174:                                       ; preds = %land.lhs.true160, %if.else155
  %111 = load i32, i32* %core_alg, align 4
  %and175 = and i32 %111, -256
  %and176 = and i32 %and175, -257
  %cmp177 = icmp eq i32 %and176, 100664320
  br i1 %cmp177, label %land.lhs.true179, label %if.else193

land.lhs.true179:                                 ; preds = %if.else174
  %112 = load i32, i32* %core_alg, align 4
  %and180 = and i32 %112, 256
  %cmp181 = icmp ne i32 %and180, 0
  br i1 %cmp181, label %if.else193, label %if.then183

if.then183:                                       ; preds = %land.lhs.true179
  %113 = load i64, i64* %buffer_size.addr, align 8
  call void @append(i8** noundef %buffer.addr, i64 noundef %113, i64* noundef %required_size, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.115, i64 0, i64 0), i64 noundef 12) #6
  %114 = load i64, i64* %buffer_size.addr, align 8
  %115 = load i32, i32* %core_alg, align 4
  %and184 = and i32 %115, 255
  %cmp185 = icmp eq i32 %and184, 0
  br i1 %cmp185, label %cond.true187, label %cond.false188

cond.true187:                                     ; preds = %if.then183
  br label %cond.end191

cond.false188:                                    ; preds = %if.then183
  %116 = load i32, i32* %core_alg, align 4
  %and189 = and i32 %116, 255
  %or190 = or i32 33554432, %and189
  br label %cond.end191

cond.end191:                                      ; preds = %cond.false188, %cond.true187
  %cond192 = phi i32 [ 0, %cond.true187 ], [ %or190, %cond.false188 ]
  call void @append_with_alg(i8** noundef %buffer.addr, i64 noundef %114, i64* noundef %required_size, i8* (i32)* noundef @psa_hash_algorithm_name, i32 noundef %cond192) #6
  %117 = load i64, i64* %buffer_size.addr, align 8
  call void @append(i8** noundef %buffer.addr, i64 noundef %117, i64* noundef %required_size, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.113, i64 0, i64 0), i64 noundef 1) #6
  br label %if.end380

if.else193:                                       ; preds = %land.lhs.true179, %if.else174
  %118 = load i32, i32* %core_alg, align 4
  %and194 = and i32 %118, -256
  %and195 = and i32 %and194, -257
  %cmp196 = icmp eq i32 %and195, 100664832
  br i1 %cmp196, label %land.lhs.true198, label %if.else212

land.lhs.true198:                                 ; preds = %if.else193
  %119 = load i32, i32* %core_alg, align 4
  %and199 = and i32 %119, 256
  %cmp200 = icmp ne i32 %and199, 0
  br i1 %cmp200, label %if.else212, label %if.then202

if.then202:                                       ; preds = %land.lhs.true198
  %120 = load i64, i64* %buffer_size.addr, align 8
  call void @append(i8** noundef %buffer.addr, i64 noundef %120, i64* noundef %required_size, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.116, i64 0, i64 0), i64 noundef 14) #6
  %121 = load i64, i64* %buffer_size.addr, align 8
  %122 = load i32, i32* %core_alg, align 4
  %and203 = and i32 %122, 255
  %cmp204 = icmp eq i32 %and203, 0
  br i1 %cmp204, label %cond.true206, label %cond.false207

cond.true206:                                     ; preds = %if.then202
  br label %cond.end210

cond.false207:                                    ; preds = %if.then202
  %123 = load i32, i32* %core_alg, align 4
  %and208 = and i32 %123, 255
  %or209 = or i32 33554432, %and208
  br label %cond.end210

cond.end210:                                      ; preds = %cond.false207, %cond.true206
  %cond211 = phi i32 [ 0, %cond.true206 ], [ %or209, %cond.false207 ]
  call void @append_with_alg(i8** noundef %buffer.addr, i64 noundef %121, i64* noundef %required_size, i8* (i32)* noundef @psa_hash_algorithm_name, i32 noundef %cond211) #6
  %124 = load i64, i64* %buffer_size.addr, align 8
  call void @append(i8** noundef %buffer.addr, i64 noundef %124, i64* noundef %required_size, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.113, i64 0, i64 0), i64 noundef 1) #6
  br label %if.end379

if.else212:                                       ; preds = %land.lhs.true198, %if.else193
  %125 = load i32, i32* %core_alg, align 4
  %and213 = and i32 %125, -256
  %cmp214 = icmp eq i32 %and213, 134217984
  br i1 %cmp214, label %if.then216, label %if.else226

if.then216:                                       ; preds = %if.else212
  %126 = load i64, i64* %buffer_size.addr, align 8
  call void @append(i8** noundef %buffer.addr, i64 noundef %126, i64* noundef %required_size, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.117, i64 0, i64 0), i64 noundef 13) #6
  %127 = load i64, i64* %buffer_size.addr, align 8
  %128 = load i32, i32* %core_alg, align 4
  %and217 = and i32 %128, 255
  %cmp218 = icmp eq i32 %and217, 0
  br i1 %cmp218, label %cond.true220, label %cond.false221

cond.true220:                                     ; preds = %if.then216
  br label %cond.end224

cond.false221:                                    ; preds = %if.then216
  %129 = load i32, i32* %core_alg, align 4
  %and222 = and i32 %129, 255
  %or223 = or i32 33554432, %and222
  br label %cond.end224

cond.end224:                                      ; preds = %cond.false221, %cond.true220
  %cond225 = phi i32 [ 0, %cond.true220 ], [ %or223, %cond.false221 ]
  call void @append_with_alg(i8** noundef %buffer.addr, i64 noundef %127, i64* noundef %required_size, i8* (i32)* noundef @psa_hash_algorithm_name, i32 noundef %cond225) #6
  %130 = load i64, i64* %buffer_size.addr, align 8
  call void @append(i8** noundef %buffer.addr, i64 noundef %130, i64* noundef %required_size, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.113, i64 0, i64 0), i64 noundef 1) #6
  br label %if.end378

if.else226:                                       ; preds = %if.else212
  %131 = load i32, i32* %core_alg, align 4
  %and227 = and i32 %131, -256
  %cmp228 = icmp eq i32 %and227, 134219008
  br i1 %cmp228, label %if.then230, label %if.else240

if.then230:                                       ; preds = %if.else226
  %132 = load i64, i64* %buffer_size.addr, align 8
  call void @append(i8** noundef %buffer.addr, i64 noundef %132, i64* noundef %required_size, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.118, i64 0, i64 0), i64 noundef 20) #6
  %133 = load i64, i64* %buffer_size.addr, align 8
  %134 = load i32, i32* %core_alg, align 4
  %and231 = and i32 %134, 255
  %cmp232 = icmp eq i32 %and231, 0
  br i1 %cmp232, label %cond.true234, label %cond.false235

cond.true234:                                     ; preds = %if.then230
  br label %cond.end238

cond.false235:                                    ; preds = %if.then230
  %135 = load i32, i32* %core_alg, align 4
  %and236 = and i32 %135, 255
  %or237 = or i32 33554432, %and236
  br label %cond.end238

cond.end238:                                      ; preds = %cond.false235, %cond.true234
  %cond239 = phi i32 [ 0, %cond.true234 ], [ %or237, %cond.false235 ]
  call void @append_with_alg(i8** noundef %buffer.addr, i64 noundef %133, i64* noundef %required_size, i8* (i32)* noundef @psa_hash_algorithm_name, i32 noundef %cond239) #6
  %136 = load i64, i64* %buffer_size.addr, align 8
  call void @append(i8** noundef %buffer.addr, i64 noundef %136, i64* noundef %required_size, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.113, i64 0, i64 0), i64 noundef 1) #6
  br label %if.end377

if.else240:                                       ; preds = %if.else226
  %137 = load i32, i32* %core_alg, align 4
  %and241 = and i32 %137, -256
  %cmp242 = icmp eq i32 %and241, 134218752
  br i1 %cmp242, label %if.then244, label %if.else254

if.then244:                                       ; preds = %if.else240
  %138 = load i64, i64* %buffer_size.addr, align 8
  call void @append(i8** noundef %buffer.addr, i64 noundef %138, i64* noundef %required_size, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.119, i64 0, i64 0), i64 noundef 21) #6
  %139 = load i64, i64* %buffer_size.addr, align 8
  %140 = load i32, i32* %core_alg, align 4
  %and245 = and i32 %140, 255
  %cmp246 = icmp eq i32 %and245, 0
  br i1 %cmp246, label %cond.true248, label %cond.false249

cond.true248:                                     ; preds = %if.then244
  br label %cond.end252

cond.false249:                                    ; preds = %if.then244
  %141 = load i32, i32* %core_alg, align 4
  %and250 = and i32 %141, 255
  %or251 = or i32 33554432, %and250
  br label %cond.end252

cond.end252:                                      ; preds = %cond.false249, %cond.true248
  %cond253 = phi i32 [ 0, %cond.true248 ], [ %or251, %cond.false249 ]
  call void @append_with_alg(i8** noundef %buffer.addr, i64 noundef %139, i64* noundef %required_size, i8* (i32)* noundef @psa_hash_algorithm_name, i32 noundef %cond253) #6
  %142 = load i64, i64* %buffer_size.addr, align 8
  call void @append(i8** noundef %buffer.addr, i64 noundef %142, i64* noundef %required_size, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.113, i64 0, i64 0), i64 noundef 1) #6
  br label %if.end376

if.else254:                                       ; preds = %if.else240
  %143 = load i32, i32* %core_alg, align 4
  %and255 = and i32 %143, 2143289344
  %cmp256 = icmp eq i32 %and255, 58720256
  br i1 %cmp256, label %if.then258, label %if.else268

if.then258:                                       ; preds = %if.else254
  %144 = load i64, i64* %buffer_size.addr, align 8
  call void @append(i8** noundef %buffer.addr, i64 noundef %144, i64* noundef %required_size, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.120, i64 0, i64 0), i64 noundef 13) #6
  %145 = load i64, i64* %buffer_size.addr, align 8
  %146 = load i32, i32* %core_alg, align 4
  %and259 = and i32 %146, 255
  %cmp260 = icmp eq i32 %and259, 0
  br i1 %cmp260, label %cond.true262, label %cond.false263

cond.true262:                                     ; preds = %if.then258
  br label %cond.end266

cond.false263:                                    ; preds = %if.then258
  %147 = load i32, i32* %core_alg, align 4
  %and264 = and i32 %147, 255
  %or265 = or i32 33554432, %and264
  br label %cond.end266

cond.end266:                                      ; preds = %cond.false263, %cond.true262
  %cond267 = phi i32 [ 0, %cond.true262 ], [ %or265, %cond.false263 ]
  call void @append_with_alg(i8** noundef %buffer.addr, i64 noundef %145, i64* noundef %required_size, i8* (i32)* noundef @psa_hash_algorithm_name, i32 noundef %cond267) #6
  %148 = load i64, i64* %buffer_size.addr, align 8
  call void @append(i8** noundef %buffer.addr, i64 noundef %148, i64* noundef %required_size, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.113, i64 0, i64 0), i64 noundef 1) #6
  br label %if.end375

if.else268:                                       ; preds = %if.else254
  %149 = load i32, i32* %core_alg, align 4
  %and269 = and i32 %149, -256
  %cmp270 = icmp eq i32 %and269, 142606592
  br i1 %cmp270, label %if.then272, label %if.else282

if.then272:                                       ; preds = %if.else268
  %150 = load i64, i64* %buffer_size.addr, align 8
  call void @append(i8** noundef %buffer.addr, i64 noundef %150, i64* noundef %required_size, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.121, i64 0, i64 0), i64 noundef 20) #6
  %151 = load i64, i64* %buffer_size.addr, align 8
  %152 = load i32, i32* %core_alg, align 4
  %and273 = and i32 %152, 255
  %cmp274 = icmp eq i32 %and273, 0
  br i1 %cmp274, label %cond.true276, label %cond.false277

cond.true276:                                     ; preds = %if.then272
  br label %cond.end280

cond.false277:                                    ; preds = %if.then272
  %153 = load i32, i32* %core_alg, align 4
  %and278 = and i32 %153, 255
  %or279 = or i32 33554432, %and278
  br label %cond.end280

cond.end280:                                      ; preds = %cond.false277, %cond.true276
  %cond281 = phi i32 [ 0, %cond.true276 ], [ %or279, %cond.false277 ]
  call void @append_with_alg(i8** noundef %buffer.addr, i64 noundef %151, i64* noundef %required_size, i8* (i32)* noundef @psa_hash_algorithm_name, i32 noundef %cond281) #6
  %154 = load i64, i64* %buffer_size.addr, align 8
  call void @append(i8** noundef %buffer.addr, i64 noundef %154, i64* noundef %required_size, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.113, i64 0, i64 0), i64 noundef 1) #6
  br label %if.end374

if.else282:                                       ; preds = %if.else268
  %155 = load i32, i32* %core_alg, align 4
  %and283 = and i32 %155, -256
  %cmp284 = icmp eq i32 %and283, 117441280
  br i1 %cmp284, label %if.then286, label %if.else296

if.then286:                                       ; preds = %if.else282
  %156 = load i64, i64* %buffer_size.addr, align 8
  call void @append(i8** noundef %buffer.addr, i64 noundef %156, i64* noundef %required_size, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.122, i64 0, i64 0), i64 noundef 17) #6
  %157 = load i64, i64* %buffer_size.addr, align 8
  %158 = load i32, i32* %core_alg, align 4
  %and287 = and i32 %158, 255
  %cmp288 = icmp eq i32 %and287, 0
  br i1 %cmp288, label %cond.true290, label %cond.false291

cond.true290:                                     ; preds = %if.then286
  br label %cond.end294

cond.false291:                                    ; preds = %if.then286
  %159 = load i32, i32* %core_alg, align 4
  %and292 = and i32 %159, 255
  %or293 = or i32 33554432, %and292
  br label %cond.end294

cond.end294:                                      ; preds = %cond.false291, %cond.true290
  %cond295 = phi i32 [ 0, %cond.true290 ], [ %or293, %cond.false291 ]
  call void @append_with_alg(i8** noundef %buffer.addr, i64 noundef %157, i64* noundef %required_size, i8* (i32)* noundef @psa_hash_algorithm_name, i32 noundef %cond295) #6
  %160 = load i64, i64* %buffer_size.addr, align 8
  call void @append(i8** noundef %buffer.addr, i64 noundef %160, i64* noundef %required_size, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.113, i64 0, i64 0), i64 noundef 1) #6
  br label %if.end373

if.else296:                                       ; preds = %if.else282
  %161 = load i32, i32* %core_alg, align 4
  %and297 = and i32 %161, -256
  %cmp298 = icmp eq i32 %and297, 100663808
  br i1 %cmp298, label %if.then300, label %if.else310

if.then300:                                       ; preds = %if.else296
  %162 = load i64, i64* %buffer_size.addr, align 8
  call void @append(i8** noundef %buffer.addr, i64 noundef %162, i64* noundef %required_size, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.123, i64 0, i64 0), i64 noundef 26) #6
  %163 = load i64, i64* %buffer_size.addr, align 8
  %164 = load i32, i32* %core_alg, align 4
  %and301 = and i32 %164, 255
  %cmp302 = icmp eq i32 %and301, 0
  br i1 %cmp302, label %cond.true304, label %cond.false305

cond.true304:                                     ; preds = %if.then300
  br label %cond.end308

cond.false305:                                    ; preds = %if.then300
  %165 = load i32, i32* %core_alg, align 4
  %and306 = and i32 %165, 255
  %or307 = or i32 33554432, %and306
  br label %cond.end308

cond.end308:                                      ; preds = %cond.false305, %cond.true304
  %cond309 = phi i32 [ 0, %cond.true304 ], [ %or307, %cond.false305 ]
  call void @append_with_alg(i8** noundef %buffer.addr, i64 noundef %163, i64* noundef %required_size, i8* (i32)* noundef @psa_hash_algorithm_name, i32 noundef %cond309) #6
  %166 = load i64, i64* %buffer_size.addr, align 8
  call void @append(i8** noundef %buffer.addr, i64 noundef %166, i64* noundef %required_size, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.113, i64 0, i64 0), i64 noundef 1) #6
  br label %if.end372

if.else310:                                       ; preds = %if.else296
  %167 = load i32, i32* %core_alg, align 4
  %and311 = and i32 %167, -256
  %cmp312 = icmp eq i32 %and311, 100664064
  br i1 %cmp312, label %if.then314, label %if.else324

if.then314:                                       ; preds = %if.else310
  %168 = load i64, i64* %buffer_size.addr, align 8
  call void @append(i8** noundef %buffer.addr, i64 noundef %168, i64* noundef %required_size, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.124, i64 0, i64 0), i64 noundef 16) #6
  %169 = load i64, i64* %buffer_size.addr, align 8
  %170 = load i32, i32* %core_alg, align 4
  %and315 = and i32 %170, 255
  %cmp316 = icmp eq i32 %and315, 0
  br i1 %cmp316, label %cond.true318, label %cond.false319

cond.true318:                                     ; preds = %if.then314
  br label %cond.end322

cond.false319:                                    ; preds = %if.then314
  %171 = load i32, i32* %core_alg, align 4
  %and320 = and i32 %171, 255
  %or321 = or i32 33554432, %and320
  br label %cond.end322

cond.end322:                                      ; preds = %cond.false319, %cond.true318
  %cond323 = phi i32 [ 0, %cond.true318 ], [ %or321, %cond.false319 ]
  call void @append_with_alg(i8** noundef %buffer.addr, i64 noundef %169, i64* noundef %required_size, i8* (i32)* noundef @psa_hash_algorithm_name, i32 noundef %cond323) #6
  %172 = load i64, i64* %buffer_size.addr, align 8
  call void @append(i8** noundef %buffer.addr, i64 noundef %172, i64* noundef %required_size, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.113, i64 0, i64 0), i64 noundef 1) #6
  br label %if.end371

if.else324:                                       ; preds = %if.else310
  %173 = load i32, i32* %core_alg, align 4
  %and325 = and i32 %173, -256
  %cmp326 = icmp eq i32 %and325, 100668160
  br i1 %cmp326, label %if.then328, label %if.else338

if.then328:                                       ; preds = %if.else324
  %174 = load i64, i64* %buffer_size.addr, align 8
  call void @append(i8** noundef %buffer.addr, i64 noundef %174, i64* noundef %required_size, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.125, i64 0, i64 0), i64 noundef 25) #6
  %175 = load i64, i64* %buffer_size.addr, align 8
  %176 = load i32, i32* %core_alg, align 4
  %and329 = and i32 %176, 255
  %cmp330 = icmp eq i32 %and329, 0
  br i1 %cmp330, label %cond.true332, label %cond.false333

cond.true332:                                     ; preds = %if.then328
  br label %cond.end336

cond.false333:                                    ; preds = %if.then328
  %177 = load i32, i32* %core_alg, align 4
  %and334 = and i32 %177, 255
  %or335 = or i32 33554432, %and334
  br label %cond.end336

cond.end336:                                      ; preds = %cond.false333, %cond.true332
  %cond337 = phi i32 [ 0, %cond.true332 ], [ %or335, %cond.false333 ]
  call void @append_with_alg(i8** noundef %buffer.addr, i64 noundef %175, i64* noundef %required_size, i8* (i32)* noundef @psa_hash_algorithm_name, i32 noundef %cond337) #6
  %178 = load i64, i64* %buffer_size.addr, align 8
  call void @append(i8** noundef %buffer.addr, i64 noundef %178, i64* noundef %required_size, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.113, i64 0, i64 0), i64 noundef 1) #6
  br label %if.end370

if.else338:                                       ; preds = %if.else324
  %179 = load i32, i32* %core_alg, align 4
  %and339 = and i32 %179, -256
  %cmp340 = icmp eq i32 %and339, 134218240
  br i1 %cmp340, label %if.then342, label %if.else352

if.then342:                                       ; preds = %if.else338
  %180 = load i64, i64* %buffer_size.addr, align 8
  call void @append(i8** noundef %buffer.addr, i64 noundef %180, i64* noundef %required_size, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.126, i64 0, i64 0), i64 noundef 18) #6
  %181 = load i64, i64* %buffer_size.addr, align 8
  %182 = load i32, i32* %core_alg, align 4
  %and343 = and i32 %182, 255
  %cmp344 = icmp eq i32 %and343, 0
  br i1 %cmp344, label %cond.true346, label %cond.false347

cond.true346:                                     ; preds = %if.then342
  br label %cond.end350

cond.false347:                                    ; preds = %if.then342
  %183 = load i32, i32* %core_alg, align 4
  %and348 = and i32 %183, 255
  %or349 = or i32 33554432, %and348
  br label %cond.end350

cond.end350:                                      ; preds = %cond.false347, %cond.true346
  %cond351 = phi i32 [ 0, %cond.true346 ], [ %or349, %cond.false347 ]
  call void @append_with_alg(i8** noundef %buffer.addr, i64 noundef %181, i64* noundef %required_size, i8* (i32)* noundef @psa_hash_algorithm_name, i32 noundef %cond351) #6
  %184 = load i64, i64* %buffer_size.addr, align 8
  call void @append(i8** noundef %buffer.addr, i64 noundef %184, i64* noundef %required_size, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.113, i64 0, i64 0), i64 noundef 1) #6
  br label %if.end369

if.else352:                                       ; preds = %if.else338
  %185 = load i32, i32* %core_alg, align 4
  %and353 = and i32 %185, -256
  %cmp354 = icmp eq i32 %and353, 134218496
  br i1 %cmp354, label %if.then356, label %if.else366

if.then356:                                       ; preds = %if.else352
  %186 = load i64, i64* %buffer_size.addr, align 8
  call void @append(i8** noundef %buffer.addr, i64 noundef %186, i64* noundef %required_size, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.127, i64 0, i64 0), i64 noundef 24) #6
  %187 = load i64, i64* %buffer_size.addr, align 8
  %188 = load i32, i32* %core_alg, align 4
  %and357 = and i32 %188, 255
  %cmp358 = icmp eq i32 %and357, 0
  br i1 %cmp358, label %cond.true360, label %cond.false361

cond.true360:                                     ; preds = %if.then356
  br label %cond.end364

cond.false361:                                    ; preds = %if.then356
  %189 = load i32, i32* %core_alg, align 4
  %and362 = and i32 %189, 255
  %or363 = or i32 33554432, %and362
  br label %cond.end364

cond.end364:                                      ; preds = %cond.false361, %cond.true360
  %cond365 = phi i32 [ 0, %cond.true360 ], [ %or363, %cond.false361 ]
  call void @append_with_alg(i8** noundef %buffer.addr, i64 noundef %187, i64* noundef %required_size, i8* (i32)* noundef @psa_hash_algorithm_name, i32 noundef %cond365) #6
  %190 = load i64, i64* %buffer_size.addr, align 8
  call void @append(i8** noundef %buffer.addr, i64 noundef %190, i64* noundef %required_size, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.113, i64 0, i64 0), i64 noundef 1) #6
  br label %if.end368

if.else366:                                       ; preds = %if.else352
  %191 = load i64, i64* %buffer_size.addr, align 8
  %192 = load i32, i32* %core_alg, align 4
  %conv367 = zext i32 %192 to i64
  call void @append_integer(i8** noundef %buffer.addr, i64 noundef %191, i64* noundef %required_size, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.128, i64 0, i64 0), i64 noundef %conv367) #6
  br label %if.end368

if.end368:                                        ; preds = %if.else366, %cond.end364
  br label %if.end369

if.end369:                                        ; preds = %if.end368, %cond.end350
  br label %if.end370

if.end370:                                        ; preds = %if.end369, %cond.end336
  br label %if.end371

if.end371:                                        ; preds = %if.end370, %cond.end322
  br label %if.end372

if.end372:                                        ; preds = %if.end371, %cond.end308
  br label %if.end373

if.end373:                                        ; preds = %if.end372, %cond.end294
  br label %if.end374

if.end374:                                        ; preds = %if.end373, %cond.end280
  br label %if.end375

if.end375:                                        ; preds = %if.end374, %cond.end266
  br label %if.end376

if.end376:                                        ; preds = %if.end375, %cond.end252
  br label %if.end377

if.end377:                                        ; preds = %if.end376, %cond.end238
  br label %if.end378

if.end378:                                        ; preds = %if.end377, %cond.end224
  br label %if.end379

if.end379:                                        ; preds = %if.end378, %cond.end210
  br label %if.end380

if.end380:                                        ; preds = %if.end379, %cond.end191
  br label %if.end381

if.end381:                                        ; preds = %if.end380, %cond.end172
  br label %if.end382

if.end382:                                        ; preds = %if.end381, %cond.end153
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end382, %sw.bb136, %sw.bb135, %sw.bb134, %sw.bb133, %sw.bb132, %sw.bb131, %sw.bb130, %sw.bb129, %sw.bb128, %sw.bb127, %sw.bb126, %sw.bb125, %sw.bb124, %sw.bb123, %sw.bb122, %sw.bb121, %sw.bb120, %sw.bb119, %sw.bb118, %sw.bb117, %sw.bb116, %sw.bb115, %sw.bb114, %sw.bb113, %sw.bb112, %sw.bb111, %sw.bb110, %sw.bb109, %sw.bb108, %sw.bb107, %sw.bb106, %sw.bb105, %sw.bb104, %sw.bb103, %sw.bb102, %sw.bb101, %sw.bb100, %sw.bb99, %sw.bb98, %sw.bb97, %sw.bb96, %sw.bb95, %sw.bb94, %sw.bb93, %sw.bb92, %sw.bb91, %sw.bb90, %sw.bb89, %sw.bb88, %sw.bb87, %sw.bb86, %sw.bb85, %sw.bb84, %sw.bb83, %sw.bb82, %sw.bb81, %sw.bb80, %sw.bb79, %sw.bb78, %sw.bb77, %sw.bb76, %sw.bb75, %sw.bb74, %sw.bb
  %193 = load i32, i32* %core_alg, align 4
  %194 = load i32, i32* %alg.addr, align 4
  %cmp383 = icmp ne i32 %193, %194
  br i1 %cmp383, label %if.then385, label %if.end390

if.then385:                                       ; preds = %sw.epilog
  %195 = load i64, i64* %length_modifier, align 8
  %cmp386 = icmp ne i64 %195, 4294967295
  br i1 %cmp386, label %if.then388, label %if.end389

if.then388:                                       ; preds = %if.then385
  %196 = load i64, i64* %buffer_size.addr, align 8
  call void @append(i8** noundef %buffer.addr, i64 noundef %196, i64* noundef %required_size, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.47, i64 0, i64 0), i64 noundef 2) #6
  %197 = load i64, i64* %buffer_size.addr, align 8
  %198 = load i64, i64* %length_modifier, align 8
  call void @append_integer(i8** noundef %buffer.addr, i64 noundef %197, i64* noundef %required_size, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.129, i64 0, i64 0), i64 noundef %198) #6
  br label %if.end389

if.end389:                                        ; preds = %if.then388, %if.then385
  %199 = load i64, i64* %buffer_size.addr, align 8
  call void @append(i8** noundef %buffer.addr, i64 noundef %199, i64* noundef %required_size, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.113, i64 0, i64 0), i64 noundef 1) #6
  br label %if.end390

if.end390:                                        ; preds = %if.end389, %sw.epilog
  %200 = load i8*, i8** %buffer.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %200, i64 0
  store i8 0, i8* %arrayidx, align 1
  %201 = load i64, i64* %required_size, align 8
  %conv391 = trunc i64 %201 to i32
  ret i32 %conv391
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psa_snprint_ecc_curve(i8* noundef %buffer, i64 noundef %buffer_size, i8 noundef zeroext %curve) #0 {
entry:
  %retval = alloca i32, align 4
  %buffer.addr = alloca i8*, align 8
  %buffer_size.addr = alloca i64, align 8
  %curve.addr = alloca i8, align 1
  %name = alloca i8*, align 8
  %length = alloca i64, align 8
  store i8* %buffer, i8** %buffer.addr, align 8
  store i64 %buffer_size, i64* %buffer_size.addr, align 8
  store i8 %curve, i8* %curve.addr, align 1
  %0 = load i8, i8* %curve.addr, align 1
  %call = call i8* @psa_ecc_family_name(i8 noundef zeroext %0) #6
  store i8* %call, i8** %name, align 8
  %1 = load i8*, i8** %name, align 8
  %cmp = icmp eq i8* %1, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %buffer.addr, align 8
  %3 = load i64, i64* %buffer_size.addr, align 8
  %4 = load i8, i8* %curve.addr, align 1
  %conv = zext i8 %4 to i32
  %call1 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %2, i64 noundef %3, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.130, i64 0, i64 0), i32 noundef %conv) #5
  store i32 %call1, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  %5 = load i8*, i8** %name, align 8
  %call2 = call i64 @strlen(i8* noundef %5) #8
  store i64 %call2, i64* %length, align 8
  %6 = load i64, i64* %length, align 8
  %7 = load i64, i64* %buffer_size.addr, align 8
  %cmp3 = icmp ult i64 %6, %7
  br i1 %cmp3, label %if.then5, label %if.else8

if.then5:                                         ; preds = %if.else
  %8 = load i8*, i8** %buffer.addr, align 8
  %9 = load i8*, i8** %name, align 8
  %10 = load i64, i64* %length, align 8
  %add = add i64 %10, 1
  %call6 = call i8* @memcpy(i8* noundef %8, i8* noundef %9, i64 noundef %add) #5
  %11 = load i64, i64* %length, align 8
  %conv7 = trunc i64 %11 to i32
  store i32 %conv7, i32* %retval, align 4
  br label %return

if.else8:                                         ; preds = %if.else
  %12 = load i64, i64* %buffer_size.addr, align 8
  %conv9 = trunc i64 %12 to i32
  store i32 %conv9, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.else8, %if.then5, %if.then
  %13 = load i32, i32* %retval, align 4
  ret i32 %13
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psa_snprint_dh_group(i8* noundef %buffer, i64 noundef %buffer_size, i8 noundef zeroext %group) #0 {
entry:
  %retval = alloca i32, align 4
  %buffer.addr = alloca i8*, align 8
  %buffer_size.addr = alloca i64, align 8
  %group.addr = alloca i8, align 1
  %name = alloca i8*, align 8
  %length = alloca i64, align 8
  store i8* %buffer, i8** %buffer.addr, align 8
  store i64 %buffer_size, i64* %buffer_size.addr, align 8
  store i8 %group, i8* %group.addr, align 1
  %0 = load i8, i8* %group.addr, align 1
  %call = call i8* @psa_dh_family_name(i8 noundef zeroext %0) #6
  store i8* %call, i8** %name, align 8
  %1 = load i8*, i8** %name, align 8
  %cmp = icmp eq i8* %1, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %buffer.addr, align 8
  %3 = load i64, i64* %buffer_size.addr, align 8
  %4 = load i8, i8* %group.addr, align 1
  %conv = zext i8 %4 to i32
  %call1 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %2, i64 noundef %3, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.130, i64 0, i64 0), i32 noundef %conv) #5
  store i32 %call1, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  %5 = load i8*, i8** %name, align 8
  %call2 = call i64 @strlen(i8* noundef %5) #8
  store i64 %call2, i64* %length, align 8
  %6 = load i64, i64* %length, align 8
  %7 = load i64, i64* %buffer_size.addr, align 8
  %cmp3 = icmp ult i64 %6, %7
  br i1 %cmp3, label %if.then5, label %if.else8

if.then5:                                         ; preds = %if.else
  %8 = load i8*, i8** %buffer.addr, align 8
  %9 = load i8*, i8** %name, align 8
  %10 = load i64, i64* %length, align 8
  %add = add i64 %10, 1
  %call6 = call i8* @memcpy(i8* noundef %8, i8* noundef %9, i64 noundef %add) #5
  %11 = load i64, i64* %length, align 8
  %conv7 = trunc i64 %11 to i32
  store i32 %conv7, i32* %retval, align 4
  br label %return

if.else8:                                         ; preds = %if.else
  %12 = load i64, i64* %buffer_size.addr, align 8
  %conv9 = trunc i64 %12 to i32
  store i32 %conv9, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.else8, %if.then5, %if.then
  %13 = load i32, i32* %retval, align 4
  ret i32 %13
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psa_snprint_key_type(i8* noundef %buffer, i64 noundef %buffer_size, i16 noundef zeroext %type) #0 {
entry:
  %retval = alloca i32, align 4
  %buffer.addr = alloca i8*, align 8
  %buffer_size.addr = alloca i64, align 8
  %type.addr = alloca i16, align 2
  %required_size = alloca i64, align 8
  store i8* %buffer, i8** %buffer.addr, align 8
  store i64 %buffer_size, i64* %buffer_size.addr, align 8
  store i16 %type, i16* %type.addr, align 2
  store i64 0, i64* %required_size, align 8
  %0 = load i16, i16* %type.addr, align 2
  %conv = zext i16 %0 to i32
  switch i32 %conv, label %sw.default [
    i32 9216, label %sw.bb
    i32 9222, label %sw.bb1
    i32 9219, label %sw.bb2
    i32 12288, label %sw.bb3
    i32 28672, label %sw.bb4
    i32 16384, label %sw.bb5
    i32 4096, label %sw.bb6
    i32 8192, label %sw.bb7
    i32 8196, label %sw.bb8
    i32 4608, label %sw.bb9
    i32 8961, label %sw.bb10
    i32 29184, label %sw.bb11
    i32 16896, label %sw.bb12
    i32 28674, label %sw.bb13
    i32 16386, label %sw.bb14
    i32 28928, label %sw.bb15
    i32 16640, label %sw.bb16
    i32 4352, label %sw.bb17
    i32 0, label %sw.bb18
    i32 4611, label %sw.bb19
    i32 4613, label %sw.bb20
    i32 4614, label %sw.bb21
    i32 4097, label %sw.bb22
    i32 28673, label %sw.bb23
    i32 16385, label %sw.bb24
  ]

sw.bb:                                            ; preds = %entry
  %1 = load i64, i64* %buffer_size.addr, align 8
  call void @append(i8** noundef %buffer.addr, i64 noundef %1, i64* noundef %required_size, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.142, i64 0, i64 0), i64 noundef 16) #6
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %2 = load i64, i64* %buffer_size.addr, align 8
  call void @append(i8** noundef %buffer.addr, i64 noundef %2, i64* noundef %required_size, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.143, i64 0, i64 0), i64 noundef 17) #6
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %3 = load i64, i64* %buffer_size.addr, align 8
  call void @append(i8** noundef %buffer.addr, i64 noundef %3, i64* noundef %required_size, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.144, i64 0, i64 0), i64 noundef 21) #6
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  %4 = load i64, i64* %buffer_size.addr, align 8
  call void @append(i8** noundef %buffer.addr, i64 noundef %4, i64* noundef %required_size, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.145, i64 0, i64 0), i64 noundef 31) #6
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  %5 = load i64, i64* %buffer_size.addr, align 8
  call void @append(i8** noundef %buffer.addr, i64 noundef %5, i64* noundef %required_size, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.146, i64 0, i64 0), i64 noundef 30) #6
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  %6 = load i64, i64* %buffer_size.addr, align 8
  call void @append(i8** noundef %buffer.addr, i64 noundef %6, i64* noundef %required_size, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.147, i64 0, i64 0), i64 noundef 32) #6
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  %7 = load i64, i64* %buffer_size.addr, align 8
  call void @append(i8** noundef %buffer.addr, i64 noundef %7, i64* noundef %required_size, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.148, i64 0, i64 0), i64 noundef 25) #6
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  %8 = load i64, i64* %buffer_size.addr, align 8
  call void @append(i8** noundef %buffer.addr, i64 noundef %8, i64* noundef %required_size, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.149, i64 0, i64 0), i64 noundef 31) #6
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  %9 = load i64, i64* %buffer_size.addr, align 8
  call void @append(i8** noundef %buffer.addr, i64 noundef %9, i64* noundef %required_size, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.150, i64 0, i64 0), i64 noundef 21) #6
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  %10 = load i64, i64* %buffer_size.addr, align 8
  call void @append(i8** noundef %buffer.addr, i64 noundef %10, i64* noundef %required_size, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.151, i64 0, i64 0), i64 noundef 19) #6
  br label %sw.epilog

sw.bb10:                                          ; preds = %entry
  %11 = load i64, i64* %buffer_size.addr, align 8
  call void @append(i8** noundef %buffer.addr, i64 noundef %11, i64* noundef %required_size, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.152, i64 0, i64 0), i64 noundef 16) #6
  br label %sw.epilog

sw.bb11:                                          ; preds = %entry
  %12 = load i64, i64* %buffer_size.addr, align 8
  call void @append(i8** noundef %buffer.addr, i64 noundef %12, i64* noundef %required_size, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.153, i64 0, i64 0), i64 noundef 29) #6
  br label %sw.epilog

sw.bb12:                                          ; preds = %entry
  %13 = load i64, i64* %buffer_size.addr, align 8
  call void @append(i8** noundef %buffer.addr, i64 noundef %13, i64* noundef %required_size, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.154, i64 0, i64 0), i64 noundef 31) #6
  br label %sw.epilog

sw.bb13:                                          ; preds = %entry
  %14 = load i64, i64* %buffer_size.addr, align 8
  call void @append(i8** noundef %buffer.addr, i64 noundef %14, i64* noundef %required_size, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.155, i64 0, i64 0), i64 noundef 25) #6
  br label %sw.epilog

sw.bb14:                                          ; preds = %entry
  %15 = load i64, i64* %buffer_size.addr, align 8
  call void @append(i8** noundef %buffer.addr, i64 noundef %15, i64* noundef %required_size, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.156, i64 0, i64 0), i64 noundef 27) #6
  br label %sw.epilog

sw.bb15:                                          ; preds = %entry
  %16 = load i64, i64* %buffer_size.addr, align 8
  call void @append(i8** noundef %buffer.addr, i64 noundef %16, i64* noundef %required_size, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.157, i64 0, i64 0), i64 noundef 30) #6
  br label %sw.epilog

sw.bb16:                                          ; preds = %entry
  %17 = load i64, i64* %buffer_size.addr, align 8
  call void @append(i8** noundef %buffer.addr, i64 noundef %17, i64* noundef %required_size, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.158, i64 0, i64 0), i64 noundef 32) #6
  br label %sw.epilog

sw.bb17:                                          ; preds = %entry
  %18 = load i64, i64* %buffer_size.addr, align 8
  call void @append(i8** noundef %buffer.addr, i64 noundef %18, i64* noundef %required_size, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.159, i64 0, i64 0), i64 noundef 17) #6
  br label %sw.epilog

sw.bb18:                                          ; preds = %entry
  %19 = load i64, i64* %buffer_size.addr, align 8
  call void @append(i8** noundef %buffer.addr, i64 noundef %19, i64* noundef %required_size, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.160, i64 0, i64 0), i64 noundef 17) #6
  br label %sw.epilog

sw.bb19:                                          ; preds = %entry
  %20 = load i64, i64* %buffer_size.addr, align 8
  call void @append(i8** noundef %buffer.addr, i64 noundef %20, i64* noundef %required_size, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.161, i64 0, i64 0), i64 noundef 21) #6
  br label %sw.epilog

sw.bb20:                                          ; preds = %entry
  %21 = load i64, i64* %buffer_size.addr, align 8
  call void @append(i8** noundef %buffer.addr, i64 noundef %21, i64* noundef %required_size, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.162, i64 0, i64 0), i64 noundef 26) #6
  br label %sw.epilog

sw.bb21:                                          ; preds = %entry
  %22 = load i64, i64* %buffer_size.addr, align 8
  call void @append(i8** noundef %buffer.addr, i64 noundef %22, i64* noundef %required_size, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.163, i64 0, i64 0), i64 noundef 19) #6
  br label %sw.epilog

sw.bb22:                                          ; preds = %entry
  %23 = load i64, i64* %buffer_size.addr, align 8
  call void @append(i8** noundef %buffer.addr, i64 noundef %23, i64* noundef %required_size, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.164, i64 0, i64 0), i64 noundef 21) #6
  br label %sw.epilog

sw.bb23:                                          ; preds = %entry
  %24 = load i64, i64* %buffer_size.addr, align 8
  call void @append(i8** noundef %buffer.addr, i64 noundef %24, i64* noundef %required_size, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.165, i64 0, i64 0), i64 noundef 25) #6
  br label %sw.epilog

sw.bb24:                                          ; preds = %entry
  %25 = load i64, i64* %buffer_size.addr, align 8
  call void @append(i8** noundef %buffer.addr, i64 noundef %25, i64* noundef %required_size, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.166, i64 0, i64 0), i64 noundef 27) #6
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %26 = load i16, i16* %type.addr, align 2
  %conv25 = zext i16 %26 to i32
  %and = and i32 %conv25, -256
  %cmp = icmp eq i32 %and, 28928
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.default
  %27 = load i64, i64* %buffer_size.addr, align 8
  %28 = load i16, i16* %type.addr, align 2
  %conv27 = zext i16 %28 to i32
  %and28 = and i32 %conv27, -12289
  %and29 = and i32 %and28, -256
  %cmp30 = icmp eq i32 %and29, 16640
  br i1 %cmp30, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %29 = load i16, i16* %type.addr, align 2
  %conv32 = zext i16 %29 to i32
  %and33 = and i32 %conv32, 255
  br label %cond.end

cond.false:                                       ; preds = %if.then
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %and33, %cond.true ], [ 0, %cond.false ]
  %conv34 = trunc i32 %cond to i8
  call void @append_with_curve(i8** noundef %buffer.addr, i64 noundef %27, i64* noundef %required_size, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.167, i64 0, i64 0), i64 noundef 25, i8 noundef zeroext %conv34) #6
  br label %if.end92

if.else:                                          ; preds = %sw.default
  %30 = load i16, i16* %type.addr, align 2
  %conv35 = zext i16 %30 to i32
  %and36 = and i32 %conv35, -256
  %cmp37 = icmp eq i32 %and36, 16640
  br i1 %cmp37, label %if.then39, label %if.else52

if.then39:                                        ; preds = %if.else
  %31 = load i64, i64* %buffer_size.addr, align 8
  %32 = load i16, i16* %type.addr, align 2
  %conv40 = zext i16 %32 to i32
  %and41 = and i32 %conv40, -12289
  %and42 = and i32 %and41, -256
  %cmp43 = icmp eq i32 %and42, 16640
  br i1 %cmp43, label %cond.true45, label %cond.false48

cond.true45:                                      ; preds = %if.then39
  %33 = load i16, i16* %type.addr, align 2
  %conv46 = zext i16 %33 to i32
  %and47 = and i32 %conv46, 255
  br label %cond.end49

cond.false48:                                     ; preds = %if.then39
  br label %cond.end49

cond.end49:                                       ; preds = %cond.false48, %cond.true45
  %cond50 = phi i32 [ %and47, %cond.true45 ], [ 0, %cond.false48 ]
  %conv51 = trunc i32 %cond50 to i8
  call void @append_with_curve(i8** noundef %buffer.addr, i64 noundef %31, i64* noundef %required_size, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.168, i64 0, i64 0), i64 noundef 27, i8 noundef zeroext %conv51) #6
  br label %if.end91

if.else52:                                        ; preds = %if.else
  %34 = load i16, i16* %type.addr, align 2
  %conv53 = zext i16 %34 to i32
  %and54 = and i32 %conv53, -256
  %cmp55 = icmp eq i32 %and54, 29184
  br i1 %cmp55, label %if.then57, label %if.else70

if.then57:                                        ; preds = %if.else52
  %35 = load i64, i64* %buffer_size.addr, align 8
  %36 = load i16, i16* %type.addr, align 2
  %conv58 = zext i16 %36 to i32
  %and59 = and i32 %conv58, -12289
  %and60 = and i32 %and59, -256
  %cmp61 = icmp eq i32 %and60, 16896
  br i1 %cmp61, label %cond.true63, label %cond.false66

cond.true63:                                      ; preds = %if.then57
  %37 = load i16, i16* %type.addr, align 2
  %conv64 = zext i16 %37 to i32
  %and65 = and i32 %conv64, 255
  br label %cond.end67

cond.false66:                                     ; preds = %if.then57
  br label %cond.end67

cond.end67:                                       ; preds = %cond.false66, %cond.true63
  %cond68 = phi i32 [ %and65, %cond.true63 ], [ 0, %cond.false66 ]
  %conv69 = trunc i32 %cond68 to i8
  call void @append_with_group(i8** noundef %buffer.addr, i64 noundef %35, i64* noundef %required_size, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.169, i64 0, i64 0), i64 noundef 24, i8 noundef zeroext %conv69) #6
  br label %if.end90

if.else70:                                        ; preds = %if.else52
  %38 = load i16, i16* %type.addr, align 2
  %conv71 = zext i16 %38 to i32
  %and72 = and i32 %conv71, -256
  %cmp73 = icmp eq i32 %and72, 16896
  br i1 %cmp73, label %if.then75, label %if.else88

if.then75:                                        ; preds = %if.else70
  %39 = load i64, i64* %buffer_size.addr, align 8
  %40 = load i16, i16* %type.addr, align 2
  %conv76 = zext i16 %40 to i32
  %and77 = and i32 %conv76, -12289
  %and78 = and i32 %and77, -256
  %cmp79 = icmp eq i32 %and78, 16896
  br i1 %cmp79, label %cond.true81, label %cond.false84

cond.true81:                                      ; preds = %if.then75
  %41 = load i16, i16* %type.addr, align 2
  %conv82 = zext i16 %41 to i32
  %and83 = and i32 %conv82, 255
  br label %cond.end85

cond.false84:                                     ; preds = %if.then75
  br label %cond.end85

cond.end85:                                       ; preds = %cond.false84, %cond.true81
  %cond86 = phi i32 [ %and83, %cond.true81 ], [ 0, %cond.false84 ]
  %conv87 = trunc i32 %cond86 to i8
  call void @append_with_group(i8** noundef %buffer.addr, i64 noundef %39, i64* noundef %required_size, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.170, i64 0, i64 0), i64 noundef 26, i8 noundef zeroext %conv87) #6
  br label %if.end

if.else88:                                        ; preds = %if.else70
  %42 = load i8*, i8** %buffer.addr, align 8
  %43 = load i64, i64* %buffer_size.addr, align 8
  %44 = load i16, i16* %type.addr, align 2
  %conv89 = zext i16 %44 to i32
  %call = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %42, i64 noundef %43, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.171, i64 0, i64 0), i32 noundef %conv89) #5
  store i32 %call, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %cond.end85
  br label %if.end90

if.end90:                                         ; preds = %if.end, %cond.end67
  br label %if.end91

if.end91:                                         ; preds = %if.end90, %cond.end49
  br label %if.end92

if.end92:                                         ; preds = %if.end91, %cond.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end92, %sw.bb24, %sw.bb23, %sw.bb22, %sw.bb21, %sw.bb20, %sw.bb19, %sw.bb18, %sw.bb17, %sw.bb16, %sw.bb15, %sw.bb14, %sw.bb13, %sw.bb12, %sw.bb11, %sw.bb10, %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  %45 = load i8*, i8** %buffer.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %45, i64 0
  store i8 0, i8* %arrayidx, align 1
  %46 = load i64, i64* %required_size, align 8
  %conv93 = trunc i64 %46 to i32
  store i32 %conv93, i32* %retval, align 4
  br label %return

return:                                           ; preds = %sw.epilog, %if.else88
  %47 = load i32, i32* %retval, align 4
  ret i32 %47
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psa_snprint_key_usage(i8* noundef %buffer, i64 noundef %buffer_size, i32 noundef %usage) #0 {
entry:
  %retval = alloca i32, align 4
  %buffer.addr = alloca i8*, align 8
  %buffer_size.addr = alloca i64, align 8
  %usage.addr = alloca i32, align 4
  %required_size = alloca i64, align 8
  store i8* %buffer, i8** %buffer.addr, align 8
  store i64 %buffer_size, i64* %buffer_size.addr, align 8
  store i32 %usage, i32* %usage.addr, align 4
  store i64 0, i64* %required_size, align 8
  %0 = load i32, i32* %usage.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end8

if.then:                                          ; preds = %entry
  %1 = load i64, i64* %buffer_size.addr, align 8
  %cmp1 = icmp ugt i64 %1, 1
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  %2 = load i8*, i8** %buffer.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 0
  store i8 48, i8* %arrayidx, align 1
  %3 = load i8*, i8** %buffer.addr, align 8
  %arrayidx3 = getelementptr inbounds i8, i8* %3, i64 1
  store i8 0, i8* %arrayidx3, align 1
  br label %if.end7

if.else:                                          ; preds = %if.then
  %4 = load i64, i64* %buffer_size.addr, align 8
  %cmp4 = icmp eq i64 %4, 1
  br i1 %cmp4, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.else
  %5 = load i8*, i8** %buffer.addr, align 8
  %arrayidx6 = getelementptr inbounds i8, i8* %5, i64 0
  store i8 0, i8* %arrayidx6, align 1
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.else
  br label %if.end7

if.end7:                                          ; preds = %if.end, %if.then2
  store i32 1, i32* %retval, align 4
  br label %return

if.end8:                                          ; preds = %entry
  %6 = load i32, i32* %usage.addr, align 4
  %and = and i32 %6, 2
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then9, label %if.end13

if.then9:                                         ; preds = %if.end8
  %7 = load i64, i64* %required_size, align 8
  %cmp10 = icmp ne i64 %7, 0
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.then9
  %8 = load i64, i64* %buffer_size.addr, align 8
  call void @append(i8** noundef %buffer.addr, i64 noundef %8, i64* noundef %required_size, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.173, i64 0, i64 0), i64 noundef 3) #6
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.then9
  %9 = load i64, i64* %buffer_size.addr, align 8
  call void @append(i8** noundef %buffer.addr, i64 noundef %9, i64* noundef %required_size, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.174, i64 0, i64 0), i64 noundef 18) #6
  %10 = load i32, i32* %usage.addr, align 4
  %xor = xor i32 %10, 2
  store i32 %xor, i32* %usage.addr, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.end12, %if.end8
  %11 = load i32, i32* %usage.addr, align 4
  %and14 = and i32 %11, 512
  %tobool15 = icmp ne i32 %and14, 0
  br i1 %tobool15, label %if.then16, label %if.end21

if.then16:                                        ; preds = %if.end13
  %12 = load i64, i64* %required_size, align 8
  %cmp17 = icmp ne i64 %12, 0
  br i1 %cmp17, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.then16
  %13 = load i64, i64* %buffer_size.addr, align 8
  call void @append(i8** noundef %buffer.addr, i64 noundef %13, i64* noundef %required_size, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.173, i64 0, i64 0), i64 noundef 3) #6
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %if.then16
  %14 = load i64, i64* %buffer_size.addr, align 8
  call void @append(i8** noundef %buffer.addr, i64 noundef %14, i64* noundef %required_size, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.175, i64 0, i64 0), i64 noundef 21) #6
  %15 = load i32, i32* %usage.addr, align 4
  %xor20 = xor i32 %15, 512
  store i32 %xor20, i32* %usage.addr, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.end19, %if.end13
  %16 = load i32, i32* %usage.addr, align 4
  %and22 = and i32 %16, 16384
  %tobool23 = icmp ne i32 %and22, 0
  br i1 %tobool23, label %if.then24, label %if.end29

if.then24:                                        ; preds = %if.end21
  %17 = load i64, i64* %required_size, align 8
  %cmp25 = icmp ne i64 %17, 0
  br i1 %cmp25, label %if.then26, label %if.end27

if.then26:                                        ; preds = %if.then24
  %18 = load i64, i64* %buffer_size.addr, align 8
  call void @append(i8** noundef %buffer.addr, i64 noundef %18, i64* noundef %required_size, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.173, i64 0, i64 0), i64 noundef 3) #6
  br label %if.end27

if.end27:                                         ; preds = %if.then26, %if.then24
  %19 = load i64, i64* %buffer_size.addr, align 8
  call void @append(i8** noundef %buffer.addr, i64 noundef %19, i64* noundef %required_size, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.176, i64 0, i64 0), i64 noundef 20) #6
  %20 = load i32, i32* %usage.addr, align 4
  %xor28 = xor i32 %20, 16384
  store i32 %xor28, i32* %usage.addr, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.end27, %if.end21
  %21 = load i32, i32* %usage.addr, align 4
  %and30 = and i32 %21, 256
  %tobool31 = icmp ne i32 %and30, 0
  br i1 %tobool31, label %if.then32, label %if.end37

if.then32:                                        ; preds = %if.end29
  %22 = load i64, i64* %required_size, align 8
  %cmp33 = icmp ne i64 %22, 0
  br i1 %cmp33, label %if.then34, label %if.end35

if.then34:                                        ; preds = %if.then32
  %23 = load i64, i64* %buffer_size.addr, align 8
  call void @append(i8** noundef %buffer.addr, i64 noundef %23, i64* noundef %required_size, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.173, i64 0, i64 0), i64 noundef 3) #6
  br label %if.end35

if.end35:                                         ; preds = %if.then34, %if.then32
  %24 = load i64, i64* %buffer_size.addr, align 8
  call void @append(i8** noundef %buffer.addr, i64 noundef %24, i64* noundef %required_size, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.177, i64 0, i64 0), i64 noundef 21) #6
  %25 = load i32, i32* %usage.addr, align 4
  %xor36 = xor i32 %25, 256
  store i32 %xor36, i32* %usage.addr, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.end35, %if.end29
  %26 = load i32, i32* %usage.addr, align 4
  %and38 = and i32 %26, 1
  %tobool39 = icmp ne i32 %and38, 0
  br i1 %tobool39, label %if.then40, label %if.end45

if.then40:                                        ; preds = %if.end37
  %27 = load i64, i64* %required_size, align 8
  %cmp41 = icmp ne i64 %27, 0
  br i1 %cmp41, label %if.then42, label %if.end43

if.then42:                                        ; preds = %if.then40
  %28 = load i64, i64* %buffer_size.addr, align 8
  call void @append(i8** noundef %buffer.addr, i64 noundef %28, i64* noundef %required_size, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.173, i64 0, i64 0), i64 noundef 3) #6
  br label %if.end43

if.end43:                                         ; preds = %if.then42, %if.then40
  %29 = load i64, i64* %buffer_size.addr, align 8
  call void @append(i8** noundef %buffer.addr, i64 noundef %29, i64* noundef %required_size, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.178, i64 0, i64 0), i64 noundef 20) #6
  %30 = load i32, i32* %usage.addr, align 4
  %xor44 = xor i32 %30, 1
  store i32 %xor44, i32* %usage.addr, align 4
  br label %if.end45

if.end45:                                         ; preds = %if.end43, %if.end37
  %31 = load i32, i32* %usage.addr, align 4
  %and46 = and i32 %31, 4096
  %tobool47 = icmp ne i32 %and46, 0
  br i1 %tobool47, label %if.then48, label %if.end53

if.then48:                                        ; preds = %if.end45
  %32 = load i64, i64* %required_size, align 8
  %cmp49 = icmp ne i64 %32, 0
  br i1 %cmp49, label %if.then50, label %if.end51

if.then50:                                        ; preds = %if.then48
  %33 = load i64, i64* %buffer_size.addr, align 8
  call void @append(i8** noundef %buffer.addr, i64 noundef %33, i64* noundef %required_size, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.173, i64 0, i64 0), i64 noundef 3) #6
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %if.then48
  %34 = load i64, i64* %buffer_size.addr, align 8
  call void @append(i8** noundef %buffer.addr, i64 noundef %34, i64* noundef %required_size, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.179, i64 0, i64 0), i64 noundef 23) #6
  %35 = load i32, i32* %usage.addr, align 4
  %xor52 = xor i32 %35, 4096
  store i32 %xor52, i32* %usage.addr, align 4
  br label %if.end53

if.end53:                                         ; preds = %if.end51, %if.end45
  %36 = load i32, i32* %usage.addr, align 4
  %and54 = and i32 %36, 1024
  %tobool55 = icmp ne i32 %and54, 0
  br i1 %tobool55, label %if.then56, label %if.end61

if.then56:                                        ; preds = %if.end53
  %37 = load i64, i64* %required_size, align 8
  %cmp57 = icmp ne i64 %37, 0
  br i1 %cmp57, label %if.then58, label %if.end59

if.then58:                                        ; preds = %if.then56
  %38 = load i64, i64* %buffer_size.addr, align 8
  call void @append(i8** noundef %buffer.addr, i64 noundef %38, i64* noundef %required_size, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.173, i64 0, i64 0), i64 noundef 3) #6
  br label %if.end59

if.end59:                                         ; preds = %if.then58, %if.then56
  %39 = load i64, i64* %buffer_size.addr, align 8
  call void @append(i8** noundef %buffer.addr, i64 noundef %39, i64* noundef %required_size, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.180, i64 0, i64 0), i64 noundef 26) #6
  %40 = load i32, i32* %usage.addr, align 4
  %xor60 = xor i32 %40, 1024
  store i32 %xor60, i32* %usage.addr, align 4
  br label %if.end61

if.end61:                                         ; preds = %if.end59, %if.end53
  %41 = load i32, i32* %usage.addr, align 4
  %and62 = and i32 %41, 32768
  %tobool63 = icmp ne i32 %and62, 0
  br i1 %tobool63, label %if.then64, label %if.end69

if.then64:                                        ; preds = %if.end61
  %42 = load i64, i64* %required_size, align 8
  %cmp65 = icmp ne i64 %42, 0
  br i1 %cmp65, label %if.then66, label %if.end67

if.then66:                                        ; preds = %if.then64
  %43 = load i64, i64* %buffer_size.addr, align 8
  call void @append(i8** noundef %buffer.addr, i64 noundef %43, i64* noundef %required_size, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.173, i64 0, i64 0), i64 noundef 3) #6
  br label %if.end67

if.end67:                                         ; preds = %if.then66, %if.then64
  %44 = load i64, i64* %buffer_size.addr, align 8
  call void @append(i8** noundef %buffer.addr, i64 noundef %44, i64* noundef %required_size, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.181, i64 0, i64 0), i64 noundef 31) #6
  %45 = load i32, i32* %usage.addr, align 4
  %xor68 = xor i32 %45, 32768
  store i32 %xor68, i32* %usage.addr, align 4
  br label %if.end69

if.end69:                                         ; preds = %if.end67, %if.end61
  %46 = load i32, i32* %usage.addr, align 4
  %and70 = and i32 %46, 8192
  %tobool71 = icmp ne i32 %and70, 0
  br i1 %tobool71, label %if.then72, label %if.end77

if.then72:                                        ; preds = %if.end69
  %47 = load i64, i64* %required_size, align 8
  %cmp73 = icmp ne i64 %47, 0
  br i1 %cmp73, label %if.then74, label %if.end75

if.then74:                                        ; preds = %if.then72
  %48 = load i64, i64* %buffer_size.addr, align 8
  call void @append(i8** noundef %buffer.addr, i64 noundef %48, i64* noundef %required_size, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.173, i64 0, i64 0), i64 noundef 3) #6
  br label %if.end75

if.end75:                                         ; preds = %if.then74, %if.then72
  %49 = load i64, i64* %buffer_size.addr, align 8
  call void @append(i8** noundef %buffer.addr, i64 noundef %49, i64* noundef %required_size, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.182, i64 0, i64 0), i64 noundef 25) #6
  %50 = load i32, i32* %usage.addr, align 4
  %xor76 = xor i32 %50, 8192
  store i32 %xor76, i32* %usage.addr, align 4
  br label %if.end77

if.end77:                                         ; preds = %if.end75, %if.end69
  %51 = load i32, i32* %usage.addr, align 4
  %and78 = and i32 %51, 2048
  %tobool79 = icmp ne i32 %and78, 0
  br i1 %tobool79, label %if.then80, label %if.end85

if.then80:                                        ; preds = %if.end77
  %52 = load i64, i64* %required_size, align 8
  %cmp81 = icmp ne i64 %52, 0
  br i1 %cmp81, label %if.then82, label %if.end83

if.then82:                                        ; preds = %if.then80
  %53 = load i64, i64* %buffer_size.addr, align 8
  call void @append(i8** noundef %buffer.addr, i64 noundef %53, i64* noundef %required_size, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.173, i64 0, i64 0), i64 noundef 3) #6
  br label %if.end83

if.end83:                                         ; preds = %if.then82, %if.then80
  %54 = load i64, i64* %buffer_size.addr, align 8
  call void @append(i8** noundef %buffer.addr, i64 noundef %54, i64* noundef %required_size, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.183, i64 0, i64 0), i64 noundef 28) #6
  %55 = load i32, i32* %usage.addr, align 4
  %xor84 = xor i32 %55, 2048
  store i32 %xor84, i32* %usage.addr, align 4
  br label %if.end85

if.end85:                                         ; preds = %if.end83, %if.end77
  %56 = load i32, i32* %usage.addr, align 4
  %cmp86 = icmp ne i32 %56, 0
  br i1 %cmp86, label %if.then87, label %if.else91

if.then87:                                        ; preds = %if.end85
  %57 = load i64, i64* %required_size, align 8
  %cmp88 = icmp ne i64 %57, 0
  br i1 %cmp88, label %if.then89, label %if.end90

if.then89:                                        ; preds = %if.then87
  %58 = load i64, i64* %buffer_size.addr, align 8
  call void @append(i8** noundef %buffer.addr, i64 noundef %58, i64* noundef %required_size, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.173, i64 0, i64 0), i64 noundef 3) #6
  br label %if.end90

if.end90:                                         ; preds = %if.then89, %if.then87
  %59 = load i64, i64* %buffer_size.addr, align 8
  %60 = load i32, i32* %usage.addr, align 4
  %conv = zext i32 %60 to i64
  call void @append_integer(i8** noundef %buffer.addr, i64 noundef %59, i64* noundef %required_size, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.128, i64 0, i64 0), i64 noundef %conv) #6
  br label %if.end93

if.else91:                                        ; preds = %if.end85
  %61 = load i8*, i8** %buffer.addr, align 8
  %arrayidx92 = getelementptr inbounds i8, i8* %61, i64 0
  store i8 0, i8* %arrayidx92, align 1
  br label %if.end93

if.end93:                                         ; preds = %if.else91, %if.end90
  %62 = load i64, i64* %required_size, align 8
  %conv94 = trunc i64 %62 to i32
  store i32 %conv94, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end93, %if.end7
  %63 = load i32, i32* %retval, align 4
  ret i32 %63
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 noundef %argc, i8** noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %0 = load i32, i32* %argc.addr, align 4
  %cmp = icmp sle i32 %0, 1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %1, i64 1
  %2 = load i8*, i8** %arrayidx, align 8
  %call = call i32 @strcmp(i8* noundef %2, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0)) #8
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %lor.lhs.false1, label %if.then

lor.lhs.false1:                                   ; preds = %lor.lhs.false
  %3 = load i8**, i8*** %argv.addr, align 8
  %arrayidx2 = getelementptr inbounds i8*, i8** %3, i64 1
  %4 = load i8*, i8** %arrayidx2, align 8
  %call3 = call i32 @strcmp(i8* noundef %4, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0)) #8
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false1, %lor.lhs.false, %entry
  %5 = load i8**, i8*** %argv.addr, align 8
  %arrayidx5 = getelementptr inbounds i8*, i8** %5, i64 0
  %6 = load i8*, i8** %arrayidx5, align 8
  call void @usage(i8* noundef %6) #6
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false1
  %7 = load i8**, i8*** %argv.addr, align 8
  %arrayidx6 = getelementptr inbounds i8*, i8** %7, i64 1
  %8 = load i8*, i8** %arrayidx6, align 8
  %call7 = call i32 @strcmp(i8* noundef %8, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0)) #8
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %lor.lhs.false9, label %if.then13

lor.lhs.false9:                                   ; preds = %if.end
  %9 = load i8**, i8*** %argv.addr, align 8
  %arrayidx10 = getelementptr inbounds i8*, i8** %9, i64 1
  %10 = load i8*, i8** %arrayidx10, align 8
  %call11 = call i32 @strcmp(i8* noundef %10, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0)) #8
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.else, label %if.then13

if.then13:                                        ; preds = %lor.lhs.false9, %if.end
  %11 = load i8**, i8*** %argv.addr, align 8
  %add.ptr = getelementptr inbounds i8*, i8** %11, i64 2
  %call14 = call i32 @process_signed(i32 noundef 0, i64 noundef -2147483648, i64 noundef 2147483647, i8** noundef %add.ptr) #6
  store i32 %call14, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %lor.lhs.false9
  %12 = load i8**, i8*** %argv.addr, align 8
  %arrayidx15 = getelementptr inbounds i8*, i8** %12, i64 1
  %13 = load i8*, i8** %arrayidx15, align 8
  %call16 = call i32 @strcmp(i8* noundef %13, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0)) #8
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %lor.lhs.false18, label %if.then22

lor.lhs.false18:                                  ; preds = %if.else
  %14 = load i8**, i8*** %argv.addr, align 8
  %arrayidx19 = getelementptr inbounds i8*, i8** %14, i64 1
  %15 = load i8*, i8** %arrayidx19, align 8
  %call20 = call i32 @strcmp(i8* noundef %15, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0)) #8
  %tobool21 = icmp ne i32 %call20, 0
  br i1 %tobool21, label %if.else25, label %if.then22

if.then22:                                        ; preds = %lor.lhs.false18, %if.else
  %16 = load i8**, i8*** %argv.addr, align 8
  %add.ptr23 = getelementptr inbounds i8*, i8** %16, i64 2
  %call24 = call i32 @process_unsigned(i32 noundef 0, i64 noundef 4294967295, i8** noundef %add.ptr23) #6
  store i32 %call24, i32* %retval, align 4
  br label %return

if.else25:                                        ; preds = %lor.lhs.false18
  %17 = load i8**, i8*** %argv.addr, align 8
  %arrayidx26 = getelementptr inbounds i8*, i8** %17, i64 1
  %18 = load i8*, i8** %arrayidx26, align 8
  %call27 = call i32 @strcmp(i8* noundef %18, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0)) #8
  %tobool28 = icmp ne i32 %call27, 0
  br i1 %tobool28, label %lor.lhs.false29, label %if.then33

lor.lhs.false29:                                  ; preds = %if.else25
  %19 = load i8**, i8*** %argv.addr, align 8
  %arrayidx30 = getelementptr inbounds i8*, i8** %19, i64 1
  %20 = load i8*, i8** %arrayidx30, align 8
  %call31 = call i32 @strcmp(i8* noundef %20, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0)) #8
  %tobool32 = icmp ne i32 %call31, 0
  br i1 %tobool32, label %if.else36, label %if.then33

if.then33:                                        ; preds = %lor.lhs.false29, %if.else25
  %21 = load i8**, i8*** %argv.addr, align 8
  %add.ptr34 = getelementptr inbounds i8*, i8** %21, i64 2
  %call35 = call i32 @process_unsigned(i32 noundef 1, i64 noundef 255, i8** noundef %add.ptr34) #6
  store i32 %call35, i32* %retval, align 4
  br label %return

if.else36:                                        ; preds = %lor.lhs.false29
  %22 = load i8**, i8*** %argv.addr, align 8
  %arrayidx37 = getelementptr inbounds i8*, i8** %22, i64 1
  %23 = load i8*, i8** %arrayidx37, align 8
  %call38 = call i32 @strcmp(i8* noundef %23, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0)) #8
  %tobool39 = icmp ne i32 %call38, 0
  br i1 %tobool39, label %lor.lhs.false40, label %if.then44

lor.lhs.false40:                                  ; preds = %if.else36
  %24 = load i8**, i8*** %argv.addr, align 8
  %arrayidx41 = getelementptr inbounds i8*, i8** %24, i64 1
  %25 = load i8*, i8** %arrayidx41, align 8
  %call42 = call i32 @strcmp(i8* noundef %25, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0)) #8
  %tobool43 = icmp ne i32 %call42, 0
  br i1 %tobool43, label %if.else47, label %if.then44

if.then44:                                        ; preds = %lor.lhs.false40, %if.else36
  %26 = load i8**, i8*** %argv.addr, align 8
  %add.ptr45 = getelementptr inbounds i8*, i8** %26, i64 2
  %call46 = call i32 @process_unsigned(i32 noundef 2, i64 noundef 255, i8** noundef %add.ptr45) #6
  store i32 %call46, i32* %retval, align 4
  br label %return

if.else47:                                        ; preds = %lor.lhs.false40
  %27 = load i8**, i8*** %argv.addr, align 8
  %arrayidx48 = getelementptr inbounds i8*, i8** %27, i64 1
  %28 = load i8*, i8** %arrayidx48, align 8
  %call49 = call i32 @strcmp(i8* noundef %28, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0)) #8
  %tobool50 = icmp ne i32 %call49, 0
  br i1 %tobool50, label %lor.lhs.false51, label %if.then55

lor.lhs.false51:                                  ; preds = %if.else47
  %29 = load i8**, i8*** %argv.addr, align 8
  %arrayidx52 = getelementptr inbounds i8*, i8** %29, i64 1
  %30 = load i8*, i8** %arrayidx52, align 8
  %call53 = call i32 @strcmp(i8* noundef %30, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0)) #8
  %tobool54 = icmp ne i32 %call53, 0
  br i1 %tobool54, label %if.else58, label %if.then55

if.then55:                                        ; preds = %lor.lhs.false51, %if.else47
  %31 = load i8**, i8*** %argv.addr, align 8
  %add.ptr56 = getelementptr inbounds i8*, i8** %31, i64 2
  %call57 = call i32 @process_unsigned(i32 noundef 3, i64 noundef 65535, i8** noundef %add.ptr56) #6
  store i32 %call57, i32* %retval, align 4
  br label %return

if.else58:                                        ; preds = %lor.lhs.false51
  %32 = load i8**, i8*** %argv.addr, align 8
  %arrayidx59 = getelementptr inbounds i8*, i8** %32, i64 1
  %33 = load i8*, i8** %arrayidx59, align 8
  %call60 = call i32 @strcmp(i8* noundef %33, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0)) #8
  %tobool61 = icmp ne i32 %call60, 0
  br i1 %tobool61, label %lor.lhs.false62, label %if.then66

lor.lhs.false62:                                  ; preds = %if.else58
  %34 = load i8**, i8*** %argv.addr, align 8
  %arrayidx63 = getelementptr inbounds i8*, i8** %34, i64 1
  %35 = load i8*, i8** %arrayidx63, align 8
  %call64 = call i32 @strcmp(i8* noundef %35, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i64 0, i64 0)) #8
  %tobool65 = icmp ne i32 %call64, 0
  br i1 %tobool65, label %if.else69, label %if.then66

if.then66:                                        ; preds = %lor.lhs.false62, %if.else58
  %36 = load i8**, i8*** %argv.addr, align 8
  %add.ptr67 = getelementptr inbounds i8*, i8** %36, i64 2
  %call68 = call i32 @process_unsigned(i32 noundef 4, i64 noundef 4294967295, i8** noundef %add.ptr67) #6
  store i32 %call68, i32* %retval, align 4
  br label %return

if.else69:                                        ; preds = %lor.lhs.false62
  %37 = load i8**, i8*** %argv.addr, align 8
  %arrayidx70 = getelementptr inbounds i8*, i8** %37, i64 1
  %38 = load i8*, i8** %arrayidx70, align 8
  %call71 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i64 0, i64 0), i8* noundef %38) #6
  store i32 1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.else69, %if.then66, %if.then55, %if.then44, %if.then33, %if.then22, %if.then13, %if.then
  %39 = load i32, i32* %retval, align 4
  ret i32 %39
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usage(i8* noundef %program_name) #0 {
entry:
  %program_name.addr = alloca i8*, align 8
  store i8* %program_name, i8** %program_name.addr, align 8
  %0 = load i8*, i8** %program_name.addr, align 8
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %1 = load i8*, i8** %program_name.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ getelementptr inbounds ([19 x i8], [19 x i8]* @.str.185, i64 0, i64 0), %cond.true ], [ %1, %cond.false ]
  %call = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.184, i64 0, i64 0), i8* noundef %cond) #6
  %call1 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([65 x i8], [65 x i8]* @.str.186, i64 0, i64 0)) #6
  %call2 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.187, i64 0, i64 0)) #6
  %call3 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.188, i64 0, i64 0)) #6
  %call4 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([70 x i8], [70 x i8]* @.str.189, i64 0, i64 0)) #6
  %call5 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([75 x i8], [75 x i8]* @.str.190, i64 0, i64 0)) #6
  %call6 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.191, i64 0, i64 0)) #6
  %call7 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.192, i64 0, i64 0)) #6
  %call8 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.193, i64 0, i64 0)) #6
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @psa_strerror(i32 noundef %status) #0 {
entry:
  %retval = alloca i8*, align 8
  %status.addr = alloca i32, align 4
  store i32 %status, i32* %status.addr, align 4
  %0 = load i32, i32* %status.addr, align 4
  switch i32 %0, label %sw.default [
    i32 -139, label %sw.bb
    i32 -137, label %sw.bb1
    i32 -138, label %sw.bb2
    i32 -145, label %sw.bb3
    i32 -151, label %sw.bb4
    i32 -152, label %sw.bb5
    i32 -153, label %sw.bb6
    i32 -140, label %sw.bb7
    i32 -132, label %sw.bb8
    i32 -147, label %sw.bb9
    i32 -143, label %sw.bb10
    i32 -148, label %sw.bb11
    i32 -141, label %sw.bb12
    i32 -142, label %sw.bb13
    i32 -135, label %sw.bb14
    i32 -136, label %sw.bb15
    i32 -150, label %sw.bb16
    i32 -149, label %sw.bb17
    i32 -133, label %sw.bb18
    i32 -134, label %sw.bb19
    i32 -146, label %sw.bb20
    i32 0, label %sw.bb21
  ]

sw.bb:                                            ; preds = %entry
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.20, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb1:                                           ; preds = %entry
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.21, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb2:                                           ; preds = %entry
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.22, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb3:                                           ; preds = %entry
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.23, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb4:                                           ; preds = %entry
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.24, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb5:                                           ; preds = %entry
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.25, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb6:                                           ; preds = %entry
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.26, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb7:                                           ; preds = %entry
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.27, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb8:                                           ; preds = %entry
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.28, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb9:                                           ; preds = %entry
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.29, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb10:                                          ; preds = %entry
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.30, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb11:                                          ; preds = %entry
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.31, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb12:                                          ; preds = %entry
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.32, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb13:                                          ; preds = %entry
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.33, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb14:                                          ; preds = %entry
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.34, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb15:                                          ; preds = %entry
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.35, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb16:                                          ; preds = %entry
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.36, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb17:                                          ; preds = %entry
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.37, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb18:                                          ; preds = %entry
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.38, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb19:                                          ; preds = %entry
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.39, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb20:                                          ; preds = %entry
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.40, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb21:                                          ; preds = %entry
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.41, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.default:                                       ; preds = %entry
  store i8* null, i8** %retval, align 8
  br label %return

return:                                           ; preds = %sw.default, %sw.bb21, %sw.bb20, %sw.bb19, %sw.bb18, %sw.bb17, %sw.bb16, %sw.bb15, %sw.bb14, %sw.bb13, %sw.bb12, %sw.bb11, %sw.bb10, %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  %1 = load i8*, i8** %retval, align 8
  ret i8* %1
}

; Function Attrs: nounwind
declare dso_local i32 @snprintf(i8* noundef, i64 noundef, i8* noundef, ...) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #4

; Function Attrs: nounwind
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @append(i8** noundef %buffer, i64 noundef %buffer_size, i64* noundef %required_size, i8* noundef %string, i64 noundef %length) #0 {
entry:
  %buffer.addr = alloca i8**, align 8
  %buffer_size.addr = alloca i64, align 8
  %required_size.addr = alloca i64*, align 8
  %string.addr = alloca i8*, align 8
  %length.addr = alloca i64, align 8
  store i8** %buffer, i8*** %buffer.addr, align 8
  store i64 %buffer_size, i64* %buffer_size.addr, align 8
  store i64* %required_size, i64** %required_size.addr, align 8
  store i8* %string, i8** %string.addr, align 8
  store i64 %length, i64* %length.addr, align 8
  %0 = load i64, i64* %length.addr, align 8
  %1 = load i64*, i64** %required_size.addr, align 8
  %2 = load i64, i64* %1, align 8
  %add = add i64 %2, %0
  store i64 %add, i64* %1, align 8
  %3 = load i64*, i64** %required_size.addr, align 8
  %4 = load i64, i64* %3, align 8
  %5 = load i64, i64* %buffer_size.addr, align 8
  %cmp = icmp ult i64 %4, %5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load i8**, i8*** %buffer.addr, align 8
  %7 = load i8*, i8** %6, align 8
  %8 = load i8*, i8** %string.addr, align 8
  %9 = load i64, i64* %length.addr, align 8
  %call = call i8* @memcpy(i8* noundef %7, i8* noundef %8, i64 noundef %9) #5
  %10 = load i64, i64* %length.addr, align 8
  %11 = load i8**, i8*** %buffer.addr, align 8
  %12 = load i8*, i8** %11, align 8
  %add.ptr = getelementptr inbounds i8, i8* %12, i64 %10
  store i8* %add.ptr, i8** %11, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @append_with_alg(i8** noundef %buffer, i64 noundef %buffer_size, i64* noundef %required_size, i8* (i32)* noundef %get_name, i32 noundef %alg) #0 {
entry:
  %buffer.addr = alloca i8**, align 8
  %buffer_size.addr = alloca i64, align 8
  %required_size.addr = alloca i64*, align 8
  %get_name.addr = alloca i8* (i32)*, align 8
  %alg.addr = alloca i32, align 4
  %name = alloca i8*, align 8
  store i8** %buffer, i8*** %buffer.addr, align 8
  store i64 %buffer_size, i64* %buffer_size.addr, align 8
  store i64* %required_size, i64** %required_size.addr, align 8
  store i8* (i32)* %get_name, i8* (i32)** %get_name.addr, align 8
  store i32 %alg, i32* %alg.addr, align 4
  %0 = load i8* (i32)*, i8* (i32)** %get_name.addr, align 8
  %1 = load i32, i32* %alg.addr, align 4
  %call = call i8* %0(i32 noundef %1) #6
  store i8* %call, i8** %name, align 8
  %2 = load i8*, i8** %name, align 8
  %cmp = icmp ne i8* %2, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load i8**, i8*** %buffer.addr, align 8
  %4 = load i64, i64* %buffer_size.addr, align 8
  %5 = load i64*, i64** %required_size.addr, align 8
  %6 = load i8*, i8** %name, align 8
  %7 = load i8*, i8** %name, align 8
  %call1 = call i64 @strlen(i8* noundef %7) #8
  call void @append(i8** noundef %3, i64 noundef %4, i64* noundef %5, i8* noundef %6, i64 noundef %call1) #6
  br label %if.end

if.else:                                          ; preds = %entry
  %8 = load i8**, i8*** %buffer.addr, align 8
  %9 = load i64, i64* %buffer_size.addr, align 8
  %10 = load i64*, i64** %required_size.addr, align 8
  %11 = load i32, i32* %alg.addr, align 4
  %conv = zext i32 %11 to i64
  call void @append_integer(i8** noundef %8, i64 noundef %9, i64* noundef %10, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.128, i64 0, i64 0), i64 noundef %conv) #6
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @psa_ka_algorithm_name(i32 noundef %ka_alg) #0 {
entry:
  %retval = alloca i8*, align 8
  %ka_alg.addr = alloca i32, align 4
  store i32 %ka_alg, i32* %ka_alg.addr, align 4
  %0 = load i32, i32* %ka_alg.addr, align 4
  switch i32 %0, label %sw.default [
    i32 150994944, label %sw.bb
    i32 151126016, label %sw.bb1
    i32 151060480, label %sw.bb2
  ]

sw.bb:                                            ; preds = %entry
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.53, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb1:                                           ; preds = %entry
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.72, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb2:                                           ; preds = %entry
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.76, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.default:                                       ; preds = %entry
  store i8* null, i8** %retval, align 8
  br label %return

return:                                           ; preds = %sw.default, %sw.bb2, %sw.bb1, %sw.bb
  %1 = load i8*, i8** %retval, align 8
  ret i8* %1
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @psa_hash_algorithm_name(i32 noundef %hash_alg) #0 {
entry:
  %retval = alloca i8*, align 8
  %hash_alg.addr = alloca i32, align 4
  store i32 %hash_alg, i32* %hash_alg.addr, align 4
  %0 = load i32, i32* %hash_alg.addr, align 4
  switch i32 %0, label %sw.default [
    i32 33554687, label %sw.bb
    i32 33554432, label %sw.bb1
    i32 33554435, label %sw.bb2
    i32 33554436, label %sw.bb3
    i32 33554448, label %sw.bb4
    i32 33554449, label %sw.bb5
    i32 33554450, label %sw.bb6
    i32 33554451, label %sw.bb7
    i32 33554453, label %sw.bb8
    i32 33554437, label %sw.bb9
    i32 33554440, label %sw.bb10
    i32 33554441, label %sw.bb11
    i32 33554442, label %sw.bb12
    i32 33554443, label %sw.bb13
    i32 33554444, label %sw.bb14
    i32 33554445, label %sw.bb15
  ]

sw.bb:                                            ; preds = %entry
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.48, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb1:                                           ; preds = %entry
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.52, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb2:                                           ; preds = %entry
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.84, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb3:                                           ; preds = %entry
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.90, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb4:                                           ; preds = %entry
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.96, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb5:                                           ; preds = %entry
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.97, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb6:                                           ; preds = %entry
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.98, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb7:                                           ; preds = %entry
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.99, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb8:                                           ; preds = %entry
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.100, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb9:                                           ; preds = %entry
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.101, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb10:                                          ; preds = %entry
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.102, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb11:                                          ; preds = %entry
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.103, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb12:                                          ; preds = %entry
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.104, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb13:                                          ; preds = %entry
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.105, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb14:                                          ; preds = %entry
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.106, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb15:                                          ; preds = %entry
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.107, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.default:                                       ; preds = %entry
  store i8* null, i8** %retval, align 8
  br label %return

return:                                           ; preds = %sw.default, %sw.bb15, %sw.bb14, %sw.bb13, %sw.bb12, %sw.bb11, %sw.bb10, %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  %1 = load i8*, i8** %retval, align 8
  ret i8* %1
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @append_integer(i8** noundef %buffer, i64 noundef %buffer_size, i64* noundef %required_size, i8* noundef %format, i64 noundef %value) #0 {
entry:
  %buffer.addr = alloca i8**, align 8
  %buffer_size.addr = alloca i64, align 8
  %required_size.addr = alloca i64*, align 8
  %format.addr = alloca i8*, align 8
  %value.addr = alloca i64, align 8
  %n = alloca i64, align 8
  store i8** %buffer, i8*** %buffer.addr, align 8
  store i64 %buffer_size, i64* %buffer_size.addr, align 8
  store i64* %required_size, i64** %required_size.addr, align 8
  store i8* %format, i8** %format.addr, align 8
  store i64 %value, i64* %value.addr, align 8
  %0 = load i8**, i8*** %buffer.addr, align 8
  %1 = load i8*, i8** %0, align 8
  %2 = load i64, i64* %buffer_size.addr, align 8
  %3 = load i64*, i64** %required_size.addr, align 8
  %4 = load i64, i64* %3, align 8
  %sub = sub i64 %2, %4
  %5 = load i8*, i8** %format.addr, align 8
  %6 = load i64, i64* %value.addr, align 8
  %call = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %1, i64 noundef %sub, i8* noundef %5, i64 noundef %6) #5
  %conv = sext i32 %call to i64
  store i64 %conv, i64* %n, align 8
  %7 = load i64, i64* %n, align 8
  %8 = load i64, i64* %buffer_size.addr, align 8
  %9 = load i64*, i64** %required_size.addr, align 8
  %10 = load i64, i64* %9, align 8
  %sub1 = sub i64 %8, %10
  %cmp = icmp ult i64 %7, %sub1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %11 = load i64, i64* %n, align 8
  %12 = load i8**, i8*** %buffer.addr, align 8
  %13 = load i8*, i8** %12, align 8
  %add.ptr = getelementptr inbounds i8, i8* %13, i64 %11
  store i8* %add.ptr, i8** %12, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %14 = load i64, i64* %n, align 8
  %15 = load i64*, i64** %required_size.addr, align 8
  %16 = load i64, i64* %15, align 8
  %add = add i64 %16, %14
  store i64 %add, i64* %15, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @psa_ecc_family_name(i8 noundef zeroext %curve) #0 {
entry:
  %retval = alloca i8*, align 8
  %curve.addr = alloca i8, align 1
  store i8 %curve, i8* %curve.addr, align 1
  %0 = load i8, i8* %curve.addr, align 1
  %conv = zext i8 %0 to i32
  switch i32 %conv, label %sw.default [
    i32 48, label %sw.bb
    i32 65, label %sw.bb1
    i32 23, label %sw.bb2
    i32 18, label %sw.bb3
    i32 27, label %sw.bb4
    i32 39, label %sw.bb5
    i32 34, label %sw.bb6
    i32 43, label %sw.bb7
    i32 66, label %sw.bb8
  ]

sw.bb:                                            ; preds = %entry
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.131, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb1:                                           ; preds = %entry
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.132, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb2:                                           ; preds = %entry
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.133, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb3:                                           ; preds = %entry
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.134, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb4:                                           ; preds = %entry
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.135, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb5:                                           ; preds = %entry
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.136, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb6:                                           ; preds = %entry
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.137, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb7:                                           ; preds = %entry
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.138, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb8:                                           ; preds = %entry
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.139, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.default:                                       ; preds = %entry
  store i8* null, i8** %retval, align 8
  br label %return

return:                                           ; preds = %sw.default, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  %1 = load i8*, i8** %retval, align 8
  ret i8* %1
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @psa_dh_family_name(i8 noundef zeroext %group) #0 {
entry:
  %retval = alloca i8*, align 8
  %group.addr = alloca i8, align 1
  store i8 %group, i8* %group.addr, align 1
  %0 = load i8, i8* %group.addr, align 1
  %conv = zext i8 %0 to i32
  switch i32 %conv, label %sw.default [
    i32 126, label %sw.bb
    i32 3, label %sw.bb1
  ]

sw.bb:                                            ; preds = %entry
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.140, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb1:                                           ; preds = %entry
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.141, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.default:                                       ; preds = %entry
  store i8* null, i8** %retval, align 8
  br label %return

return:                                           ; preds = %sw.default, %sw.bb1, %sw.bb
  %1 = load i8*, i8** %retval, align 8
  ret i8* %1
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @append_with_curve(i8** noundef %buffer, i64 noundef %buffer_size, i64* noundef %required_size, i8* noundef %string, i64 noundef %length, i8 noundef zeroext %curve) #0 {
entry:
  %buffer.addr = alloca i8**, align 8
  %buffer_size.addr = alloca i64, align 8
  %required_size.addr = alloca i64*, align 8
  %string.addr = alloca i8*, align 8
  %length.addr = alloca i64, align 8
  %curve.addr = alloca i8, align 1
  %family_name = alloca i8*, align 8
  store i8** %buffer, i8*** %buffer.addr, align 8
  store i64 %buffer_size, i64* %buffer_size.addr, align 8
  store i64* %required_size, i64** %required_size.addr, align 8
  store i8* %string, i8** %string.addr, align 8
  store i64 %length, i64* %length.addr, align 8
  store i8 %curve, i8* %curve.addr, align 1
  %0 = load i8, i8* %curve.addr, align 1
  %call = call i8* @psa_ecc_family_name(i8 noundef zeroext %0) #6
  store i8* %call, i8** %family_name, align 8
  %1 = load i8**, i8*** %buffer.addr, align 8
  %2 = load i64, i64* %buffer_size.addr, align 8
  %3 = load i64*, i64** %required_size.addr, align 8
  %4 = load i8*, i8** %string.addr, align 8
  %5 = load i64, i64* %length.addr, align 8
  call void @append(i8** noundef %1, i64 noundef %2, i64* noundef %3, i8* noundef %4, i64 noundef %5) #6
  %6 = load i8**, i8*** %buffer.addr, align 8
  %7 = load i64, i64* %buffer_size.addr, align 8
  %8 = load i64*, i64** %required_size.addr, align 8
  call void @append(i8** noundef %6, i64 noundef %7, i64* noundef %8, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.172, i64 0, i64 0), i64 noundef 1) #6
  %9 = load i8*, i8** %family_name, align 8
  %cmp = icmp ne i8* %9, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %10 = load i8**, i8*** %buffer.addr, align 8
  %11 = load i64, i64* %buffer_size.addr, align 8
  %12 = load i64*, i64** %required_size.addr, align 8
  %13 = load i8*, i8** %family_name, align 8
  %14 = load i8*, i8** %family_name, align 8
  %call1 = call i64 @strlen(i8* noundef %14) #8
  call void @append(i8** noundef %10, i64 noundef %11, i64* noundef %12, i8* noundef %13, i64 noundef %call1) #6
  br label %if.end

if.else:                                          ; preds = %entry
  %15 = load i8**, i8*** %buffer.addr, align 8
  %16 = load i64, i64* %buffer_size.addr, align 8
  %17 = load i64*, i64** %required_size.addr, align 8
  %18 = load i8, i8* %curve.addr, align 1
  %conv = zext i8 %18 to i64
  call void @append_integer(i8** noundef %15, i64 noundef %16, i64* noundef %17, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.130, i64 0, i64 0), i64 noundef %conv) #6
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %19 = load i8**, i8*** %buffer.addr, align 8
  %20 = load i64, i64* %buffer_size.addr, align 8
  %21 = load i64*, i64** %required_size.addr, align 8
  call void @append(i8** noundef %19, i64 noundef %20, i64* noundef %21, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.113, i64 0, i64 0), i64 noundef 1) #6
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @append_with_group(i8** noundef %buffer, i64 noundef %buffer_size, i64* noundef %required_size, i8* noundef %string, i64 noundef %length, i8 noundef zeroext %group) #0 {
entry:
  %buffer.addr = alloca i8**, align 8
  %buffer_size.addr = alloca i64, align 8
  %required_size.addr = alloca i64*, align 8
  %string.addr = alloca i8*, align 8
  %length.addr = alloca i64, align 8
  %group.addr = alloca i8, align 1
  %group_name = alloca i8*, align 8
  store i8** %buffer, i8*** %buffer.addr, align 8
  store i64 %buffer_size, i64* %buffer_size.addr, align 8
  store i64* %required_size, i64** %required_size.addr, align 8
  store i8* %string, i8** %string.addr, align 8
  store i64 %length, i64* %length.addr, align 8
  store i8 %group, i8* %group.addr, align 1
  %0 = load i8, i8* %group.addr, align 1
  %call = call i8* @psa_dh_family_name(i8 noundef zeroext %0) #6
  store i8* %call, i8** %group_name, align 8
  %1 = load i8**, i8*** %buffer.addr, align 8
  %2 = load i64, i64* %buffer_size.addr, align 8
  %3 = load i64*, i64** %required_size.addr, align 8
  %4 = load i8*, i8** %string.addr, align 8
  %5 = load i64, i64* %length.addr, align 8
  call void @append(i8** noundef %1, i64 noundef %2, i64* noundef %3, i8* noundef %4, i64 noundef %5) #6
  %6 = load i8**, i8*** %buffer.addr, align 8
  %7 = load i64, i64* %buffer_size.addr, align 8
  %8 = load i64*, i64** %required_size.addr, align 8
  call void @append(i8** noundef %6, i64 noundef %7, i64* noundef %8, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.172, i64 0, i64 0), i64 noundef 1) #6
  %9 = load i8*, i8** %group_name, align 8
  %cmp = icmp ne i8* %9, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %10 = load i8**, i8*** %buffer.addr, align 8
  %11 = load i64, i64* %buffer_size.addr, align 8
  %12 = load i64*, i64** %required_size.addr, align 8
  %13 = load i8*, i8** %group_name, align 8
  %14 = load i8*, i8** %group_name, align 8
  %call1 = call i64 @strlen(i8* noundef %14) #8
  call void @append(i8** noundef %10, i64 noundef %11, i64* noundef %12, i8* noundef %13, i64 noundef %call1) #6
  br label %if.end

if.else:                                          ; preds = %entry
  %15 = load i8**, i8*** %buffer.addr, align 8
  %16 = load i64, i64* %buffer_size.addr, align 8
  %17 = load i64*, i64** %required_size.addr, align 8
  %18 = load i8, i8* %group.addr, align 1
  %conv = zext i8 %18 to i64
  call void @append_integer(i8** noundef %15, i64 noundef %16, i64* noundef %17, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.130, i64 0, i64 0), i64 noundef %conv) #6
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %19 = load i8**, i8*** %buffer.addr, align 8
  %20 = load i64, i64* %buffer_size.addr, align 8
  %21 = load i64*, i64** %required_size.addr, align 8
  call void @append(i8** noundef %19, i64 noundef %20, i64* noundef %21, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.113, i64 0, i64 0), i64 noundef 1) #6
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readnone willreturn "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind readonly willreturn "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-builtins" }
attributes #6 = { nobuiltin "no-builtins" }
attributes #7 = { nobuiltin nounwind readnone willreturn "no-builtins" }
attributes #8 = { nobuiltin nounwind readonly willreturn "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
