; ModuleID = 'cipher_wrap.c'
source_filename = "cipher_wrap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbedtls_cipher_info_t = type { i32, i32, i32, i8*, i32, i32, i32, %struct.mbedtls_cipher_base_t* }
%struct.mbedtls_cipher_base_t = type { i32, i32 (i8*, i32, i8*, i8*)*, i32 (i8*, i32, i64, i8*, i8*, i8*)*, i32 (i8*, i32, i64, i64*, i8*, i8*, i8*)*, i32 (i8*, i64, i64*, i8*, i8*, i8*)*, i32 (i8*, i64, i64*, i8*, i8*, i8*, i8*)*, i32 (i8*, i32, i64, i8*, i8*, i8*)*, i32 (i8*, i64, i8*, i8*)*, i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)*, i8* ()*, void (i8*)* }
%struct.mbedtls_cipher_definition_t = type { i32, %struct.mbedtls_cipher_info_t* }
%struct.mbedtls_aes_context = type { i32, i32*, [68 x i32] }
%struct.mbedtls_aes_xts_context = type { %struct.mbedtls_aes_context, %struct.mbedtls_aes_context }
%struct.mbedtls_gcm_context = type { %struct.mbedtls_cipher_context_t, [16 x i64], [16 x i64], i64, i64, [16 x i8], [16 x i8], [16 x i8], i32 }
%struct.mbedtls_cipher_context_t = type { %struct.mbedtls_cipher_info_t*, i32, i32, void (i8*, i64, i64)*, i32 (i8*, i64, i64*)*, [16 x i8], i64, [16 x i8], i64, i8*, %struct.mbedtls_cmac_context_t* }
%struct.mbedtls_cmac_context_t = type opaque
%struct.mbedtls_ccm_context = type { [16 x i8], [16 x i8], %struct.mbedtls_cipher_context_t, i64, i64, i64, i64, i8, i8, i32 }
%struct.mbedtls_camellia_context = type { i32, [68 x i32] }
%struct.mbedtls_aria_context = type { i8, [17 x [4 x i32]] }
%struct.mbedtls_des_context = type { [32 x i32] }
%struct.mbedtls_des3_context = type { [96 x i32] }
%struct.mbedtls_chacha20_context = type { [16 x i32], [64 x i8], i64 }
%struct.mbedtls_chachapoly_context = type { %struct.mbedtls_chacha20_context, %struct.mbedtls_poly1305_context, i64, i64, i32, i32 }
%struct.mbedtls_poly1305_context = type { [4 x i32], [4 x i32], [5 x i32], [16 x i8], i64 }
%struct.mbedtls_nist_kw_context = type { %struct.mbedtls_cipher_context_t }

@aes_128_ecb_info = internal constant %struct.mbedtls_cipher_info_t { i32 2, i32 1, i32 128, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i32 16, %struct.mbedtls_cipher_base_t* @aes_info }, align 8
@aes_192_ecb_info = internal constant %struct.mbedtls_cipher_info_t { i32 3, i32 1, i32 192, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 0, i32 0, i32 16, %struct.mbedtls_cipher_base_t* @aes_info }, align 8
@aes_256_ecb_info = internal constant %struct.mbedtls_cipher_info_t { i32 4, i32 1, i32 256, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i32 0, i32 0, i32 16, %struct.mbedtls_cipher_base_t* @aes_info }, align 8
@aes_128_cbc_info = internal constant %struct.mbedtls_cipher_info_t { i32 5, i32 2, i32 128, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0), i32 16, i32 0, i32 16, %struct.mbedtls_cipher_base_t* @aes_info }, align 8
@aes_192_cbc_info = internal constant %struct.mbedtls_cipher_info_t { i32 6, i32 2, i32 192, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0), i32 16, i32 0, i32 16, %struct.mbedtls_cipher_base_t* @aes_info }, align 8
@aes_256_cbc_info = internal constant %struct.mbedtls_cipher_info_t { i32 7, i32 2, i32 256, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i32 0, i32 0), i32 16, i32 0, i32 16, %struct.mbedtls_cipher_base_t* @aes_info }, align 8
@aes_128_cfb128_info = internal constant %struct.mbedtls_cipher_info_t { i32 8, i32 3, i32 128, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0), i32 16, i32 0, i32 16, %struct.mbedtls_cipher_base_t* @aes_info }, align 8
@aes_192_cfb128_info = internal constant %struct.mbedtls_cipher_info_t { i32 9, i32 3, i32 192, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0), i32 16, i32 0, i32 16, %struct.mbedtls_cipher_base_t* @aes_info }, align 8
@aes_256_cfb128_info = internal constant %struct.mbedtls_cipher_info_t { i32 10, i32 3, i32 256, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i32 0, i32 0), i32 16, i32 0, i32 16, %struct.mbedtls_cipher_base_t* @aes_info }, align 8
@aes_128_ofb_info = internal constant %struct.mbedtls_cipher_info_t { i32 71, i32 4, i32 128, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i32 0, i32 0), i32 16, i32 0, i32 16, %struct.mbedtls_cipher_base_t* @aes_info }, align 8
@aes_192_ofb_info = internal constant %struct.mbedtls_cipher_info_t { i32 72, i32 4, i32 192, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i32 0, i32 0), i32 16, i32 0, i32 16, %struct.mbedtls_cipher_base_t* @aes_info }, align 8
@aes_256_ofb_info = internal constant %struct.mbedtls_cipher_info_t { i32 73, i32 4, i32 256, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i32 0, i32 0), i32 16, i32 0, i32 16, %struct.mbedtls_cipher_base_t* @aes_info }, align 8
@aes_128_ctr_info = internal constant %struct.mbedtls_cipher_info_t { i32 11, i32 5, i32 128, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i32 0, i32 0), i32 16, i32 0, i32 16, %struct.mbedtls_cipher_base_t* @aes_info }, align 8
@aes_192_ctr_info = internal constant %struct.mbedtls_cipher_info_t { i32 12, i32 5, i32 192, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i32 0, i32 0), i32 16, i32 0, i32 16, %struct.mbedtls_cipher_base_t* @aes_info }, align 8
@aes_256_ctr_info = internal constant %struct.mbedtls_cipher_info_t { i32 13, i32 5, i32 256, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i32 0, i32 0), i32 16, i32 0, i32 16, %struct.mbedtls_cipher_base_t* @aes_info }, align 8
@aes_128_xts_info = internal constant %struct.mbedtls_cipher_info_t { i32 74, i32 10, i32 256, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i32 0, i32 0), i32 16, i32 0, i32 16, %struct.mbedtls_cipher_base_t* @xts_aes_info }, align 8
@aes_256_xts_info = internal constant %struct.mbedtls_cipher_info_t { i32 75, i32 10, i32 512, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i32 0, i32 0), i32 16, i32 0, i32 16, %struct.mbedtls_cipher_base_t* @xts_aes_info }, align 8
@aes_128_gcm_info = internal constant %struct.mbedtls_cipher_info_t { i32 14, i32 6, i32 128, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i32 0, i32 0), i32 12, i32 1, i32 16, %struct.mbedtls_cipher_base_t* @gcm_aes_info }, align 8
@aes_192_gcm_info = internal constant %struct.mbedtls_cipher_info_t { i32 15, i32 6, i32 192, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i32 0, i32 0), i32 12, i32 1, i32 16, %struct.mbedtls_cipher_base_t* @gcm_aes_info }, align 8
@aes_256_gcm_info = internal constant %struct.mbedtls_cipher_info_t { i32 16, i32 6, i32 256, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.19, i32 0, i32 0), i32 12, i32 1, i32 16, %struct.mbedtls_cipher_base_t* @gcm_aes_info }, align 8
@aes_128_ccm_info = internal constant %struct.mbedtls_cipher_info_t { i32 38, i32 8, i32 128, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i32 0, i32 0), i32 12, i32 1, i32 16, %struct.mbedtls_cipher_base_t* @ccm_aes_info }, align 8
@aes_192_ccm_info = internal constant %struct.mbedtls_cipher_info_t { i32 39, i32 8, i32 192, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i32 0, i32 0), i32 12, i32 1, i32 16, %struct.mbedtls_cipher_base_t* @ccm_aes_info }, align 8
@aes_256_ccm_info = internal constant %struct.mbedtls_cipher_info_t { i32 40, i32 8, i32 256, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i32 0, i32 0), i32 12, i32 1, i32 16, %struct.mbedtls_cipher_base_t* @ccm_aes_info }, align 8
@aes_128_ccm_star_no_tag_info = internal constant %struct.mbedtls_cipher_info_t { i32 41, i32 9, i32 128, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.23, i32 0, i32 0), i32 12, i32 1, i32 16, %struct.mbedtls_cipher_base_t* @ccm_aes_info }, align 8
@aes_192_ccm_star_no_tag_info = internal constant %struct.mbedtls_cipher_info_t { i32 42, i32 9, i32 192, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.24, i32 0, i32 0), i32 12, i32 1, i32 16, %struct.mbedtls_cipher_base_t* @ccm_aes_info }, align 8
@aes_256_ccm_star_no_tag_info = internal constant %struct.mbedtls_cipher_info_t { i32 43, i32 9, i32 256, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.25, i32 0, i32 0), i32 12, i32 1, i32 16, %struct.mbedtls_cipher_base_t* @ccm_aes_info }, align 8
@camellia_128_ecb_info = internal constant %struct.mbedtls_cipher_info_t { i32 17, i32 1, i32 128, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.26, i32 0, i32 0), i32 0, i32 0, i32 16, %struct.mbedtls_cipher_base_t* @camellia_info }, align 8
@camellia_192_ecb_info = internal constant %struct.mbedtls_cipher_info_t { i32 18, i32 1, i32 192, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.27, i32 0, i32 0), i32 0, i32 0, i32 16, %struct.mbedtls_cipher_base_t* @camellia_info }, align 8
@camellia_256_ecb_info = internal constant %struct.mbedtls_cipher_info_t { i32 19, i32 1, i32 256, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.28, i32 0, i32 0), i32 0, i32 0, i32 16, %struct.mbedtls_cipher_base_t* @camellia_info }, align 8
@camellia_128_cbc_info = internal constant %struct.mbedtls_cipher_info_t { i32 20, i32 2, i32 128, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.29, i32 0, i32 0), i32 16, i32 0, i32 16, %struct.mbedtls_cipher_base_t* @camellia_info }, align 8
@camellia_192_cbc_info = internal constant %struct.mbedtls_cipher_info_t { i32 21, i32 2, i32 192, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.30, i32 0, i32 0), i32 16, i32 0, i32 16, %struct.mbedtls_cipher_base_t* @camellia_info }, align 8
@camellia_256_cbc_info = internal constant %struct.mbedtls_cipher_info_t { i32 22, i32 2, i32 256, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.31, i32 0, i32 0), i32 16, i32 0, i32 16, %struct.mbedtls_cipher_base_t* @camellia_info }, align 8
@camellia_128_cfb128_info = internal constant %struct.mbedtls_cipher_info_t { i32 23, i32 3, i32 128, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.32, i32 0, i32 0), i32 16, i32 0, i32 16, %struct.mbedtls_cipher_base_t* @camellia_info }, align 8
@camellia_192_cfb128_info = internal constant %struct.mbedtls_cipher_info_t { i32 24, i32 3, i32 192, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.33, i32 0, i32 0), i32 16, i32 0, i32 16, %struct.mbedtls_cipher_base_t* @camellia_info }, align 8
@camellia_256_cfb128_info = internal constant %struct.mbedtls_cipher_info_t { i32 25, i32 3, i32 256, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.34, i32 0, i32 0), i32 16, i32 0, i32 16, %struct.mbedtls_cipher_base_t* @camellia_info }, align 8
@camellia_128_ctr_info = internal constant %struct.mbedtls_cipher_info_t { i32 26, i32 5, i32 128, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.35, i32 0, i32 0), i32 16, i32 0, i32 16, %struct.mbedtls_cipher_base_t* @camellia_info }, align 8
@camellia_192_ctr_info = internal constant %struct.mbedtls_cipher_info_t { i32 27, i32 5, i32 192, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.36, i32 0, i32 0), i32 16, i32 0, i32 16, %struct.mbedtls_cipher_base_t* @camellia_info }, align 8
@camellia_256_ctr_info = internal constant %struct.mbedtls_cipher_info_t { i32 28, i32 5, i32 256, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.37, i32 0, i32 0), i32 16, i32 0, i32 16, %struct.mbedtls_cipher_base_t* @camellia_info }, align 8
@camellia_128_gcm_info = internal constant %struct.mbedtls_cipher_info_t { i32 29, i32 6, i32 128, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.38, i32 0, i32 0), i32 12, i32 1, i32 16, %struct.mbedtls_cipher_base_t* @gcm_camellia_info }, align 8
@camellia_192_gcm_info = internal constant %struct.mbedtls_cipher_info_t { i32 30, i32 6, i32 192, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.39, i32 0, i32 0), i32 12, i32 1, i32 16, %struct.mbedtls_cipher_base_t* @gcm_camellia_info }, align 8
@camellia_256_gcm_info = internal constant %struct.mbedtls_cipher_info_t { i32 31, i32 6, i32 256, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.40, i32 0, i32 0), i32 12, i32 1, i32 16, %struct.mbedtls_cipher_base_t* @gcm_camellia_info }, align 8
@camellia_128_ccm_info = internal constant %struct.mbedtls_cipher_info_t { i32 44, i32 8, i32 128, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.41, i32 0, i32 0), i32 12, i32 1, i32 16, %struct.mbedtls_cipher_base_t* @ccm_camellia_info }, align 8
@camellia_192_ccm_info = internal constant %struct.mbedtls_cipher_info_t { i32 45, i32 8, i32 192, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.42, i32 0, i32 0), i32 12, i32 1, i32 16, %struct.mbedtls_cipher_base_t* @ccm_camellia_info }, align 8
@camellia_256_ccm_info = internal constant %struct.mbedtls_cipher_info_t { i32 46, i32 8, i32 256, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.43, i32 0, i32 0), i32 12, i32 1, i32 16, %struct.mbedtls_cipher_base_t* @ccm_camellia_info }, align 8
@camellia_128_ccm_star_no_tag_info = internal constant %struct.mbedtls_cipher_info_t { i32 47, i32 9, i32 128, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.44, i32 0, i32 0), i32 12, i32 1, i32 16, %struct.mbedtls_cipher_base_t* @ccm_camellia_info }, align 8
@camellia_192_ccm_star_no_tag_info = internal constant %struct.mbedtls_cipher_info_t { i32 48, i32 9, i32 192, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.45, i32 0, i32 0), i32 12, i32 1, i32 16, %struct.mbedtls_cipher_base_t* @ccm_camellia_info }, align 8
@camellia_256_ccm_star_no_tag_info = internal constant %struct.mbedtls_cipher_info_t { i32 49, i32 9, i32 256, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.46, i32 0, i32 0), i32 12, i32 1, i32 16, %struct.mbedtls_cipher_base_t* @ccm_camellia_info }, align 8
@aria_128_ecb_info = internal constant %struct.mbedtls_cipher_info_t { i32 50, i32 1, i32 128, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.47, i32 0, i32 0), i32 0, i32 0, i32 16, %struct.mbedtls_cipher_base_t* @aria_info }, align 8
@aria_192_ecb_info = internal constant %struct.mbedtls_cipher_info_t { i32 51, i32 1, i32 192, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.48, i32 0, i32 0), i32 0, i32 0, i32 16, %struct.mbedtls_cipher_base_t* @aria_info }, align 8
@aria_256_ecb_info = internal constant %struct.mbedtls_cipher_info_t { i32 52, i32 1, i32 256, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.49, i32 0, i32 0), i32 0, i32 0, i32 16, %struct.mbedtls_cipher_base_t* @aria_info }, align 8
@aria_128_cbc_info = internal constant %struct.mbedtls_cipher_info_t { i32 53, i32 2, i32 128, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.50, i32 0, i32 0), i32 16, i32 0, i32 16, %struct.mbedtls_cipher_base_t* @aria_info }, align 8
@aria_192_cbc_info = internal constant %struct.mbedtls_cipher_info_t { i32 54, i32 2, i32 192, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.51, i32 0, i32 0), i32 16, i32 0, i32 16, %struct.mbedtls_cipher_base_t* @aria_info }, align 8
@aria_256_cbc_info = internal constant %struct.mbedtls_cipher_info_t { i32 55, i32 2, i32 256, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.52, i32 0, i32 0), i32 16, i32 0, i32 16, %struct.mbedtls_cipher_base_t* @aria_info }, align 8
@aria_128_cfb128_info = internal constant %struct.mbedtls_cipher_info_t { i32 56, i32 3, i32 128, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.53, i32 0, i32 0), i32 16, i32 0, i32 16, %struct.mbedtls_cipher_base_t* @aria_info }, align 8
@aria_192_cfb128_info = internal constant %struct.mbedtls_cipher_info_t { i32 57, i32 3, i32 192, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.54, i32 0, i32 0), i32 16, i32 0, i32 16, %struct.mbedtls_cipher_base_t* @aria_info }, align 8
@aria_256_cfb128_info = internal constant %struct.mbedtls_cipher_info_t { i32 58, i32 3, i32 256, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.55, i32 0, i32 0), i32 16, i32 0, i32 16, %struct.mbedtls_cipher_base_t* @aria_info }, align 8
@aria_128_ctr_info = internal constant %struct.mbedtls_cipher_info_t { i32 59, i32 5, i32 128, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.56, i32 0, i32 0), i32 16, i32 0, i32 16, %struct.mbedtls_cipher_base_t* @aria_info }, align 8
@aria_192_ctr_info = internal constant %struct.mbedtls_cipher_info_t { i32 60, i32 5, i32 192, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.57, i32 0, i32 0), i32 16, i32 0, i32 16, %struct.mbedtls_cipher_base_t* @aria_info }, align 8
@aria_256_ctr_info = internal constant %struct.mbedtls_cipher_info_t { i32 61, i32 5, i32 256, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.58, i32 0, i32 0), i32 16, i32 0, i32 16, %struct.mbedtls_cipher_base_t* @aria_info }, align 8
@aria_128_gcm_info = internal constant %struct.mbedtls_cipher_info_t { i32 62, i32 6, i32 128, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.59, i32 0, i32 0), i32 12, i32 1, i32 16, %struct.mbedtls_cipher_base_t* @gcm_aria_info }, align 8
@aria_192_gcm_info = internal constant %struct.mbedtls_cipher_info_t { i32 63, i32 6, i32 192, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.60, i32 0, i32 0), i32 12, i32 1, i32 16, %struct.mbedtls_cipher_base_t* @gcm_aria_info }, align 8
@aria_256_gcm_info = internal constant %struct.mbedtls_cipher_info_t { i32 64, i32 6, i32 256, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.61, i32 0, i32 0), i32 12, i32 1, i32 16, %struct.mbedtls_cipher_base_t* @gcm_aria_info }, align 8
@aria_128_ccm_info = internal constant %struct.mbedtls_cipher_info_t { i32 65, i32 8, i32 128, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.62, i32 0, i32 0), i32 12, i32 1, i32 16, %struct.mbedtls_cipher_base_t* @ccm_aria_info }, align 8
@aria_192_ccm_info = internal constant %struct.mbedtls_cipher_info_t { i32 66, i32 8, i32 192, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.63, i32 0, i32 0), i32 12, i32 1, i32 16, %struct.mbedtls_cipher_base_t* @ccm_aria_info }, align 8
@aria_256_ccm_info = internal constant %struct.mbedtls_cipher_info_t { i32 67, i32 8, i32 256, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.64, i32 0, i32 0), i32 12, i32 1, i32 16, %struct.mbedtls_cipher_base_t* @ccm_aria_info }, align 8
@aria_128_ccm_star_no_tag_info = internal constant %struct.mbedtls_cipher_info_t { i32 68, i32 9, i32 128, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.65, i32 0, i32 0), i32 12, i32 1, i32 16, %struct.mbedtls_cipher_base_t* @ccm_aria_info }, align 8
@aria_192_ccm_star_no_tag_info = internal constant %struct.mbedtls_cipher_info_t { i32 69, i32 9, i32 192, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.66, i32 0, i32 0), i32 12, i32 1, i32 16, %struct.mbedtls_cipher_base_t* @ccm_aria_info }, align 8
@aria_256_ccm_star_no_tag_info = internal constant %struct.mbedtls_cipher_info_t { i32 70, i32 9, i32 256, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.67, i32 0, i32 0), i32 12, i32 1, i32 16, %struct.mbedtls_cipher_base_t* @ccm_aria_info }, align 8
@des_ecb_info = internal constant %struct.mbedtls_cipher_info_t { i32 32, i32 1, i32 64, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.68, i32 0, i32 0), i32 0, i32 0, i32 8, %struct.mbedtls_cipher_base_t* @des_info }, align 8
@des_ede_ecb_info = internal constant %struct.mbedtls_cipher_info_t { i32 34, i32 1, i32 128, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.69, i32 0, i32 0), i32 0, i32 0, i32 8, %struct.mbedtls_cipher_base_t* @des_ede_info }, align 8
@des_ede3_ecb_info = internal constant %struct.mbedtls_cipher_info_t { i32 36, i32 1, i32 192, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.70, i32 0, i32 0), i32 0, i32 0, i32 8, %struct.mbedtls_cipher_base_t* @des_ede3_info }, align 8
@des_cbc_info = internal constant %struct.mbedtls_cipher_info_t { i32 33, i32 2, i32 64, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.71, i32 0, i32 0), i32 8, i32 0, i32 8, %struct.mbedtls_cipher_base_t* @des_info }, align 8
@des_ede_cbc_info = internal constant %struct.mbedtls_cipher_info_t { i32 35, i32 2, i32 128, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.72, i32 0, i32 0), i32 8, i32 0, i32 8, %struct.mbedtls_cipher_base_t* @des_ede_info }, align 8
@des_ede3_cbc_info = internal constant %struct.mbedtls_cipher_info_t { i32 37, i32 2, i32 192, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.73, i32 0, i32 0), i32 8, i32 0, i32 8, %struct.mbedtls_cipher_base_t* @des_ede3_info }, align 8
@chacha20_info = internal constant %struct.mbedtls_cipher_info_t { i32 76, i32 7, i32 256, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.74, i32 0, i32 0), i32 12, i32 0, i32 1, %struct.mbedtls_cipher_base_t* @chacha20_base_info }, align 8
@chachapoly_info = internal constant %struct.mbedtls_cipher_info_t { i32 77, i32 11, i32 256, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.75, i32 0, i32 0), i32 12, i32 0, i32 1, %struct.mbedtls_cipher_base_t* @chachapoly_base_info }, align 8
@aes_128_nist_kw_info = internal constant %struct.mbedtls_cipher_info_t { i32 78, i32 12, i32 128, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.76, i32 0, i32 0), i32 0, i32 0, i32 16, %struct.mbedtls_cipher_base_t* @kw_aes_info }, align 8
@aes_192_nist_kw_info = internal constant %struct.mbedtls_cipher_info_t { i32 79, i32 12, i32 192, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.77, i32 0, i32 0), i32 0, i32 0, i32 16, %struct.mbedtls_cipher_base_t* @kw_aes_info }, align 8
@aes_256_nist_kw_info = internal constant %struct.mbedtls_cipher_info_t { i32 80, i32 12, i32 256, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.78, i32 0, i32 0), i32 0, i32 0, i32 16, %struct.mbedtls_cipher_base_t* @kw_aes_info }, align 8
@aes_128_nist_kwp_info = internal constant %struct.mbedtls_cipher_info_t { i32 81, i32 13, i32 128, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.79, i32 0, i32 0), i32 0, i32 0, i32 16, %struct.mbedtls_cipher_base_t* @kw_aes_info }, align 8
@aes_192_nist_kwp_info = internal constant %struct.mbedtls_cipher_info_t { i32 82, i32 13, i32 192, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.80, i32 0, i32 0), i32 0, i32 0, i32 16, %struct.mbedtls_cipher_base_t* @kw_aes_info }, align 8
@aes_256_nist_kwp_info = internal constant %struct.mbedtls_cipher_info_t { i32 83, i32 13, i32 256, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.81, i32 0, i32 0), i32 0, i32 0, i32 16, %struct.mbedtls_cipher_base_t* @kw_aes_info }, align 8
@mbedtls_cipher_definitions = dso_local constant [83 x %struct.mbedtls_cipher_definition_t] [%struct.mbedtls_cipher_definition_t { i32 2, %struct.mbedtls_cipher_info_t* @aes_128_ecb_info }, %struct.mbedtls_cipher_definition_t { i32 3, %struct.mbedtls_cipher_info_t* @aes_192_ecb_info }, %struct.mbedtls_cipher_definition_t { i32 4, %struct.mbedtls_cipher_info_t* @aes_256_ecb_info }, %struct.mbedtls_cipher_definition_t { i32 5, %struct.mbedtls_cipher_info_t* @aes_128_cbc_info }, %struct.mbedtls_cipher_definition_t { i32 6, %struct.mbedtls_cipher_info_t* @aes_192_cbc_info }, %struct.mbedtls_cipher_definition_t { i32 7, %struct.mbedtls_cipher_info_t* @aes_256_cbc_info }, %struct.mbedtls_cipher_definition_t { i32 8, %struct.mbedtls_cipher_info_t* @aes_128_cfb128_info }, %struct.mbedtls_cipher_definition_t { i32 9, %struct.mbedtls_cipher_info_t* @aes_192_cfb128_info }, %struct.mbedtls_cipher_definition_t { i32 10, %struct.mbedtls_cipher_info_t* @aes_256_cfb128_info }, %struct.mbedtls_cipher_definition_t { i32 71, %struct.mbedtls_cipher_info_t* @aes_128_ofb_info }, %struct.mbedtls_cipher_definition_t { i32 72, %struct.mbedtls_cipher_info_t* @aes_192_ofb_info }, %struct.mbedtls_cipher_definition_t { i32 73, %struct.mbedtls_cipher_info_t* @aes_256_ofb_info }, %struct.mbedtls_cipher_definition_t { i32 11, %struct.mbedtls_cipher_info_t* @aes_128_ctr_info }, %struct.mbedtls_cipher_definition_t { i32 12, %struct.mbedtls_cipher_info_t* @aes_192_ctr_info }, %struct.mbedtls_cipher_definition_t { i32 13, %struct.mbedtls_cipher_info_t* @aes_256_ctr_info }, %struct.mbedtls_cipher_definition_t { i32 74, %struct.mbedtls_cipher_info_t* @aes_128_xts_info }, %struct.mbedtls_cipher_definition_t { i32 75, %struct.mbedtls_cipher_info_t* @aes_256_xts_info }, %struct.mbedtls_cipher_definition_t { i32 14, %struct.mbedtls_cipher_info_t* @aes_128_gcm_info }, %struct.mbedtls_cipher_definition_t { i32 15, %struct.mbedtls_cipher_info_t* @aes_192_gcm_info }, %struct.mbedtls_cipher_definition_t { i32 16, %struct.mbedtls_cipher_info_t* @aes_256_gcm_info }, %struct.mbedtls_cipher_definition_t { i32 38, %struct.mbedtls_cipher_info_t* @aes_128_ccm_info }, %struct.mbedtls_cipher_definition_t { i32 39, %struct.mbedtls_cipher_info_t* @aes_192_ccm_info }, %struct.mbedtls_cipher_definition_t { i32 40, %struct.mbedtls_cipher_info_t* @aes_256_ccm_info }, %struct.mbedtls_cipher_definition_t { i32 41, %struct.mbedtls_cipher_info_t* @aes_128_ccm_star_no_tag_info }, %struct.mbedtls_cipher_definition_t { i32 42, %struct.mbedtls_cipher_info_t* @aes_192_ccm_star_no_tag_info }, %struct.mbedtls_cipher_definition_t { i32 43, %struct.mbedtls_cipher_info_t* @aes_256_ccm_star_no_tag_info }, %struct.mbedtls_cipher_definition_t { i32 17, %struct.mbedtls_cipher_info_t* @camellia_128_ecb_info }, %struct.mbedtls_cipher_definition_t { i32 18, %struct.mbedtls_cipher_info_t* @camellia_192_ecb_info }, %struct.mbedtls_cipher_definition_t { i32 19, %struct.mbedtls_cipher_info_t* @camellia_256_ecb_info }, %struct.mbedtls_cipher_definition_t { i32 20, %struct.mbedtls_cipher_info_t* @camellia_128_cbc_info }, %struct.mbedtls_cipher_definition_t { i32 21, %struct.mbedtls_cipher_info_t* @camellia_192_cbc_info }, %struct.mbedtls_cipher_definition_t { i32 22, %struct.mbedtls_cipher_info_t* @camellia_256_cbc_info }, %struct.mbedtls_cipher_definition_t { i32 23, %struct.mbedtls_cipher_info_t* @camellia_128_cfb128_info }, %struct.mbedtls_cipher_definition_t { i32 24, %struct.mbedtls_cipher_info_t* @camellia_192_cfb128_info }, %struct.mbedtls_cipher_definition_t { i32 25, %struct.mbedtls_cipher_info_t* @camellia_256_cfb128_info }, %struct.mbedtls_cipher_definition_t { i32 26, %struct.mbedtls_cipher_info_t* @camellia_128_ctr_info }, %struct.mbedtls_cipher_definition_t { i32 27, %struct.mbedtls_cipher_info_t* @camellia_192_ctr_info }, %struct.mbedtls_cipher_definition_t { i32 28, %struct.mbedtls_cipher_info_t* @camellia_256_ctr_info }, %struct.mbedtls_cipher_definition_t { i32 29, %struct.mbedtls_cipher_info_t* @camellia_128_gcm_info }, %struct.mbedtls_cipher_definition_t { i32 30, %struct.mbedtls_cipher_info_t* @camellia_192_gcm_info }, %struct.mbedtls_cipher_definition_t { i32 31, %struct.mbedtls_cipher_info_t* @camellia_256_gcm_info }, %struct.mbedtls_cipher_definition_t { i32 44, %struct.mbedtls_cipher_info_t* @camellia_128_ccm_info }, %struct.mbedtls_cipher_definition_t { i32 45, %struct.mbedtls_cipher_info_t* @camellia_192_ccm_info }, %struct.mbedtls_cipher_definition_t { i32 46, %struct.mbedtls_cipher_info_t* @camellia_256_ccm_info }, %struct.mbedtls_cipher_definition_t { i32 47, %struct.mbedtls_cipher_info_t* @camellia_128_ccm_star_no_tag_info }, %struct.mbedtls_cipher_definition_t { i32 48, %struct.mbedtls_cipher_info_t* @camellia_192_ccm_star_no_tag_info }, %struct.mbedtls_cipher_definition_t { i32 49, %struct.mbedtls_cipher_info_t* @camellia_256_ccm_star_no_tag_info }, %struct.mbedtls_cipher_definition_t { i32 50, %struct.mbedtls_cipher_info_t* @aria_128_ecb_info }, %struct.mbedtls_cipher_definition_t { i32 51, %struct.mbedtls_cipher_info_t* @aria_192_ecb_info }, %struct.mbedtls_cipher_definition_t { i32 52, %struct.mbedtls_cipher_info_t* @aria_256_ecb_info }, %struct.mbedtls_cipher_definition_t { i32 53, %struct.mbedtls_cipher_info_t* @aria_128_cbc_info }, %struct.mbedtls_cipher_definition_t { i32 54, %struct.mbedtls_cipher_info_t* @aria_192_cbc_info }, %struct.mbedtls_cipher_definition_t { i32 55, %struct.mbedtls_cipher_info_t* @aria_256_cbc_info }, %struct.mbedtls_cipher_definition_t { i32 56, %struct.mbedtls_cipher_info_t* @aria_128_cfb128_info }, %struct.mbedtls_cipher_definition_t { i32 57, %struct.mbedtls_cipher_info_t* @aria_192_cfb128_info }, %struct.mbedtls_cipher_definition_t { i32 58, %struct.mbedtls_cipher_info_t* @aria_256_cfb128_info }, %struct.mbedtls_cipher_definition_t { i32 59, %struct.mbedtls_cipher_info_t* @aria_128_ctr_info }, %struct.mbedtls_cipher_definition_t { i32 60, %struct.mbedtls_cipher_info_t* @aria_192_ctr_info }, %struct.mbedtls_cipher_definition_t { i32 61, %struct.mbedtls_cipher_info_t* @aria_256_ctr_info }, %struct.mbedtls_cipher_definition_t { i32 62, %struct.mbedtls_cipher_info_t* @aria_128_gcm_info }, %struct.mbedtls_cipher_definition_t { i32 63, %struct.mbedtls_cipher_info_t* @aria_192_gcm_info }, %struct.mbedtls_cipher_definition_t { i32 64, %struct.mbedtls_cipher_info_t* @aria_256_gcm_info }, %struct.mbedtls_cipher_definition_t { i32 65, %struct.mbedtls_cipher_info_t* @aria_128_ccm_info }, %struct.mbedtls_cipher_definition_t { i32 66, %struct.mbedtls_cipher_info_t* @aria_192_ccm_info }, %struct.mbedtls_cipher_definition_t { i32 67, %struct.mbedtls_cipher_info_t* @aria_256_ccm_info }, %struct.mbedtls_cipher_definition_t { i32 68, %struct.mbedtls_cipher_info_t* @aria_128_ccm_star_no_tag_info }, %struct.mbedtls_cipher_definition_t { i32 69, %struct.mbedtls_cipher_info_t* @aria_192_ccm_star_no_tag_info }, %struct.mbedtls_cipher_definition_t { i32 70, %struct.mbedtls_cipher_info_t* @aria_256_ccm_star_no_tag_info }, %struct.mbedtls_cipher_definition_t { i32 32, %struct.mbedtls_cipher_info_t* @des_ecb_info }, %struct.mbedtls_cipher_definition_t { i32 34, %struct.mbedtls_cipher_info_t* @des_ede_ecb_info }, %struct.mbedtls_cipher_definition_t { i32 36, %struct.mbedtls_cipher_info_t* @des_ede3_ecb_info }, %struct.mbedtls_cipher_definition_t { i32 33, %struct.mbedtls_cipher_info_t* @des_cbc_info }, %struct.mbedtls_cipher_definition_t { i32 35, %struct.mbedtls_cipher_info_t* @des_ede_cbc_info }, %struct.mbedtls_cipher_definition_t { i32 37, %struct.mbedtls_cipher_info_t* @des_ede3_cbc_info }, %struct.mbedtls_cipher_definition_t { i32 76, %struct.mbedtls_cipher_info_t* @chacha20_info }, %struct.mbedtls_cipher_definition_t { i32 77, %struct.mbedtls_cipher_info_t* @chachapoly_info }, %struct.mbedtls_cipher_definition_t { i32 78, %struct.mbedtls_cipher_info_t* @aes_128_nist_kw_info }, %struct.mbedtls_cipher_definition_t { i32 79, %struct.mbedtls_cipher_info_t* @aes_192_nist_kw_info }, %struct.mbedtls_cipher_definition_t { i32 80, %struct.mbedtls_cipher_info_t* @aes_256_nist_kw_info }, %struct.mbedtls_cipher_definition_t { i32 81, %struct.mbedtls_cipher_info_t* @aes_128_nist_kwp_info }, %struct.mbedtls_cipher_definition_t { i32 82, %struct.mbedtls_cipher_info_t* @aes_192_nist_kwp_info }, %struct.mbedtls_cipher_definition_t { i32 83, %struct.mbedtls_cipher_info_t* @aes_256_nist_kwp_info }, %struct.mbedtls_cipher_definition_t zeroinitializer], align 16
@mbedtls_cipher_supported = dso_local global [83 x i32] zeroinitializer, align 16
@.str = private unnamed_addr constant [12 x i8] c"AES-128-ECB\00", align 1
@aes_info = internal constant %struct.mbedtls_cipher_base_t { i32 2, i32 (i8*, i32, i8*, i8*)* @aes_crypt_ecb_wrap, i32 (i8*, i32, i64, i8*, i8*, i8*)* @aes_crypt_cbc_wrap, i32 (i8*, i32, i64, i64*, i8*, i8*, i8*)* @aes_crypt_cfb128_wrap, i32 (i8*, i64, i64*, i8*, i8*, i8*)* @aes_crypt_ofb_wrap, i32 (i8*, i64, i64*, i8*, i8*, i8*, i8*)* @aes_crypt_ctr_wrap, i32 (i8*, i32, i64, i8*, i8*, i8*)* null, i32 (i8*, i64, i8*, i8*)* null, i32 (i8*, i8*, i32)* @aes_setkey_enc_wrap, i32 (i8*, i8*, i32)* @aes_setkey_dec_wrap, i8* ()* @aes_ctx_alloc, void (i8*)* @aes_ctx_free }, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"AES-192-ECB\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"AES-256-ECB\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"AES-128-CBC\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"AES-192-CBC\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"AES-256-CBC\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"AES-128-CFB128\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"AES-192-CFB128\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"AES-256-CFB128\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"AES-128-OFB\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"AES-192-OFB\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"AES-256-OFB\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"AES-128-CTR\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"AES-192-CTR\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"AES-256-CTR\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"AES-128-XTS\00", align 1
@xts_aes_info = internal constant %struct.mbedtls_cipher_base_t { i32 2, i32 (i8*, i32, i8*, i8*)* null, i32 (i8*, i32, i64, i8*, i8*, i8*)* null, i32 (i8*, i32, i64, i64*, i8*, i8*, i8*)* null, i32 (i8*, i64, i64*, i8*, i8*, i8*)* null, i32 (i8*, i64, i64*, i8*, i8*, i8*, i8*)* null, i32 (i8*, i32, i64, i8*, i8*, i8*)* @aes_crypt_xts_wrap, i32 (i8*, i64, i8*, i8*)* null, i32 (i8*, i8*, i32)* @xts_aes_setkey_enc_wrap, i32 (i8*, i8*, i32)* @xts_aes_setkey_dec_wrap, i8* ()* @xts_aes_ctx_alloc, void (i8*)* @xts_aes_ctx_free }, align 8
@.str.16 = private unnamed_addr constant [12 x i8] c"AES-256-XTS\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"AES-128-GCM\00", align 1
@gcm_aes_info = internal constant %struct.mbedtls_cipher_base_t { i32 2, i32 (i8*, i32, i8*, i8*)* null, i32 (i8*, i32, i64, i8*, i8*, i8*)* null, i32 (i8*, i32, i64, i64*, i8*, i8*, i8*)* null, i32 (i8*, i64, i64*, i8*, i8*, i8*)* null, i32 (i8*, i64, i64*, i8*, i8*, i8*, i8*)* null, i32 (i8*, i32, i64, i8*, i8*, i8*)* null, i32 (i8*, i64, i8*, i8*)* null, i32 (i8*, i8*, i32)* @gcm_aes_setkey_wrap, i32 (i8*, i8*, i32)* @gcm_aes_setkey_wrap, i8* ()* @gcm_ctx_alloc, void (i8*)* @gcm_ctx_free }, align 8
@.str.18 = private unnamed_addr constant [12 x i8] c"AES-192-GCM\00", align 1
@.str.19 = private unnamed_addr constant [12 x i8] c"AES-256-GCM\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"AES-128-CCM\00", align 1
@ccm_aes_info = internal constant %struct.mbedtls_cipher_base_t { i32 2, i32 (i8*, i32, i8*, i8*)* null, i32 (i8*, i32, i64, i8*, i8*, i8*)* null, i32 (i8*, i32, i64, i64*, i8*, i8*, i8*)* null, i32 (i8*, i64, i64*, i8*, i8*, i8*)* null, i32 (i8*, i64, i64*, i8*, i8*, i8*, i8*)* null, i32 (i8*, i32, i64, i8*, i8*, i8*)* null, i32 (i8*, i64, i8*, i8*)* null, i32 (i8*, i8*, i32)* @ccm_aes_setkey_wrap, i32 (i8*, i8*, i32)* @ccm_aes_setkey_wrap, i8* ()* @ccm_ctx_alloc, void (i8*)* @ccm_ctx_free }, align 8
@.str.21 = private unnamed_addr constant [12 x i8] c"AES-192-CCM\00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"AES-256-CCM\00", align 1
@.str.23 = private unnamed_addr constant [20 x i8] c"AES-128-CCM*-NO-TAG\00", align 1
@.str.24 = private unnamed_addr constant [20 x i8] c"AES-192-CCM*-NO-TAG\00", align 1
@.str.25 = private unnamed_addr constant [20 x i8] c"AES-256-CCM*-NO-TAG\00", align 1
@.str.26 = private unnamed_addr constant [17 x i8] c"CAMELLIA-128-ECB\00", align 1
@camellia_info = internal constant %struct.mbedtls_cipher_base_t { i32 5, i32 (i8*, i32, i8*, i8*)* @camellia_crypt_ecb_wrap, i32 (i8*, i32, i64, i8*, i8*, i8*)* @camellia_crypt_cbc_wrap, i32 (i8*, i32, i64, i64*, i8*, i8*, i8*)* @camellia_crypt_cfb128_wrap, i32 (i8*, i64, i64*, i8*, i8*, i8*)* null, i32 (i8*, i64, i64*, i8*, i8*, i8*, i8*)* @camellia_crypt_ctr_wrap, i32 (i8*, i32, i64, i8*, i8*, i8*)* null, i32 (i8*, i64, i8*, i8*)* null, i32 (i8*, i8*, i32)* @camellia_setkey_enc_wrap, i32 (i8*, i8*, i32)* @camellia_setkey_dec_wrap, i8* ()* @camellia_ctx_alloc, void (i8*)* @camellia_ctx_free }, align 8
@.str.27 = private unnamed_addr constant [17 x i8] c"CAMELLIA-192-ECB\00", align 1
@.str.28 = private unnamed_addr constant [17 x i8] c"CAMELLIA-256-ECB\00", align 1
@.str.29 = private unnamed_addr constant [17 x i8] c"CAMELLIA-128-CBC\00", align 1
@.str.30 = private unnamed_addr constant [17 x i8] c"CAMELLIA-192-CBC\00", align 1
@.str.31 = private unnamed_addr constant [17 x i8] c"CAMELLIA-256-CBC\00", align 1
@.str.32 = private unnamed_addr constant [20 x i8] c"CAMELLIA-128-CFB128\00", align 1
@.str.33 = private unnamed_addr constant [20 x i8] c"CAMELLIA-192-CFB128\00", align 1
@.str.34 = private unnamed_addr constant [20 x i8] c"CAMELLIA-256-CFB128\00", align 1
@.str.35 = private unnamed_addr constant [17 x i8] c"CAMELLIA-128-CTR\00", align 1
@.str.36 = private unnamed_addr constant [17 x i8] c"CAMELLIA-192-CTR\00", align 1
@.str.37 = private unnamed_addr constant [17 x i8] c"CAMELLIA-256-CTR\00", align 1
@.str.38 = private unnamed_addr constant [17 x i8] c"CAMELLIA-128-GCM\00", align 1
@gcm_camellia_info = internal constant %struct.mbedtls_cipher_base_t { i32 5, i32 (i8*, i32, i8*, i8*)* null, i32 (i8*, i32, i64, i8*, i8*, i8*)* null, i32 (i8*, i32, i64, i64*, i8*, i8*, i8*)* null, i32 (i8*, i64, i64*, i8*, i8*, i8*)* null, i32 (i8*, i64, i64*, i8*, i8*, i8*, i8*)* null, i32 (i8*, i32, i64, i8*, i8*, i8*)* null, i32 (i8*, i64, i8*, i8*)* null, i32 (i8*, i8*, i32)* @gcm_camellia_setkey_wrap, i32 (i8*, i8*, i32)* @gcm_camellia_setkey_wrap, i8* ()* @gcm_ctx_alloc, void (i8*)* @gcm_ctx_free }, align 8
@.str.39 = private unnamed_addr constant [17 x i8] c"CAMELLIA-192-GCM\00", align 1
@.str.40 = private unnamed_addr constant [17 x i8] c"CAMELLIA-256-GCM\00", align 1
@.str.41 = private unnamed_addr constant [17 x i8] c"CAMELLIA-128-CCM\00", align 1
@ccm_camellia_info = internal constant %struct.mbedtls_cipher_base_t { i32 5, i32 (i8*, i32, i8*, i8*)* null, i32 (i8*, i32, i64, i8*, i8*, i8*)* null, i32 (i8*, i32, i64, i64*, i8*, i8*, i8*)* null, i32 (i8*, i64, i64*, i8*, i8*, i8*)* null, i32 (i8*, i64, i64*, i8*, i8*, i8*, i8*)* null, i32 (i8*, i32, i64, i8*, i8*, i8*)* null, i32 (i8*, i64, i8*, i8*)* null, i32 (i8*, i8*, i32)* @ccm_camellia_setkey_wrap, i32 (i8*, i8*, i32)* @ccm_camellia_setkey_wrap, i8* ()* @ccm_ctx_alloc, void (i8*)* @ccm_ctx_free }, align 8
@.str.42 = private unnamed_addr constant [17 x i8] c"CAMELLIA-192-CCM\00", align 1
@.str.43 = private unnamed_addr constant [17 x i8] c"CAMELLIA-256-CCM\00", align 1
@.str.44 = private unnamed_addr constant [25 x i8] c"CAMELLIA-128-CCM*-NO-TAG\00", align 1
@.str.45 = private unnamed_addr constant [25 x i8] c"CAMELLIA-192-CCM*-NO-TAG\00", align 1
@.str.46 = private unnamed_addr constant [25 x i8] c"CAMELLIA-256-CCM*-NO-TAG\00", align 1
@.str.47 = private unnamed_addr constant [13 x i8] c"ARIA-128-ECB\00", align 1
@aria_info = internal constant %struct.mbedtls_cipher_base_t { i32 6, i32 (i8*, i32, i8*, i8*)* @aria_crypt_ecb_wrap, i32 (i8*, i32, i64, i8*, i8*, i8*)* @aria_crypt_cbc_wrap, i32 (i8*, i32, i64, i64*, i8*, i8*, i8*)* @aria_crypt_cfb128_wrap, i32 (i8*, i64, i64*, i8*, i8*, i8*)* null, i32 (i8*, i64, i64*, i8*, i8*, i8*, i8*)* @aria_crypt_ctr_wrap, i32 (i8*, i32, i64, i8*, i8*, i8*)* null, i32 (i8*, i64, i8*, i8*)* null, i32 (i8*, i8*, i32)* @aria_setkey_enc_wrap, i32 (i8*, i8*, i32)* @aria_setkey_dec_wrap, i8* ()* @aria_ctx_alloc, void (i8*)* @aria_ctx_free }, align 8
@.str.48 = private unnamed_addr constant [13 x i8] c"ARIA-192-ECB\00", align 1
@.str.49 = private unnamed_addr constant [13 x i8] c"ARIA-256-ECB\00", align 1
@.str.50 = private unnamed_addr constant [13 x i8] c"ARIA-128-CBC\00", align 1
@.str.51 = private unnamed_addr constant [13 x i8] c"ARIA-192-CBC\00", align 1
@.str.52 = private unnamed_addr constant [13 x i8] c"ARIA-256-CBC\00", align 1
@.str.53 = private unnamed_addr constant [16 x i8] c"ARIA-128-CFB128\00", align 1
@.str.54 = private unnamed_addr constant [16 x i8] c"ARIA-192-CFB128\00", align 1
@.str.55 = private unnamed_addr constant [16 x i8] c"ARIA-256-CFB128\00", align 1
@.str.56 = private unnamed_addr constant [13 x i8] c"ARIA-128-CTR\00", align 1
@.str.57 = private unnamed_addr constant [13 x i8] c"ARIA-192-CTR\00", align 1
@.str.58 = private unnamed_addr constant [13 x i8] c"ARIA-256-CTR\00", align 1
@.str.59 = private unnamed_addr constant [13 x i8] c"ARIA-128-GCM\00", align 1
@gcm_aria_info = internal constant %struct.mbedtls_cipher_base_t { i32 6, i32 (i8*, i32, i8*, i8*)* null, i32 (i8*, i32, i64, i8*, i8*, i8*)* null, i32 (i8*, i32, i64, i64*, i8*, i8*, i8*)* null, i32 (i8*, i64, i64*, i8*, i8*, i8*)* null, i32 (i8*, i64, i64*, i8*, i8*, i8*, i8*)* null, i32 (i8*, i32, i64, i8*, i8*, i8*)* null, i32 (i8*, i64, i8*, i8*)* null, i32 (i8*, i8*, i32)* @gcm_aria_setkey_wrap, i32 (i8*, i8*, i32)* @gcm_aria_setkey_wrap, i8* ()* @gcm_ctx_alloc, void (i8*)* @gcm_ctx_free }, align 8
@.str.60 = private unnamed_addr constant [13 x i8] c"ARIA-192-GCM\00", align 1
@.str.61 = private unnamed_addr constant [13 x i8] c"ARIA-256-GCM\00", align 1
@.str.62 = private unnamed_addr constant [13 x i8] c"ARIA-128-CCM\00", align 1
@ccm_aria_info = internal constant %struct.mbedtls_cipher_base_t { i32 6, i32 (i8*, i32, i8*, i8*)* null, i32 (i8*, i32, i64, i8*, i8*, i8*)* null, i32 (i8*, i32, i64, i64*, i8*, i8*, i8*)* null, i32 (i8*, i64, i64*, i8*, i8*, i8*)* null, i32 (i8*, i64, i64*, i8*, i8*, i8*, i8*)* null, i32 (i8*, i32, i64, i8*, i8*, i8*)* null, i32 (i8*, i64, i8*, i8*)* null, i32 (i8*, i8*, i32)* @ccm_aria_setkey_wrap, i32 (i8*, i8*, i32)* @ccm_aria_setkey_wrap, i8* ()* @ccm_ctx_alloc, void (i8*)* @ccm_ctx_free }, align 8
@.str.63 = private unnamed_addr constant [13 x i8] c"ARIA-192-CCM\00", align 1
@.str.64 = private unnamed_addr constant [13 x i8] c"ARIA-256-CCM\00", align 1
@.str.65 = private unnamed_addr constant [21 x i8] c"ARIA-128-CCM*-NO-TAG\00", align 1
@.str.66 = private unnamed_addr constant [21 x i8] c"ARIA-192-CCM*-NO-TAG\00", align 1
@.str.67 = private unnamed_addr constant [21 x i8] c"ARIA-256-CCM*-NO-TAG\00", align 1
@.str.68 = private unnamed_addr constant [8 x i8] c"DES-ECB\00", align 1
@des_info = internal constant %struct.mbedtls_cipher_base_t { i32 3, i32 (i8*, i32, i8*, i8*)* @des_crypt_ecb_wrap, i32 (i8*, i32, i64, i8*, i8*, i8*)* @des_crypt_cbc_wrap, i32 (i8*, i32, i64, i64*, i8*, i8*, i8*)* null, i32 (i8*, i64, i64*, i8*, i8*, i8*)* null, i32 (i8*, i64, i64*, i8*, i8*, i8*, i8*)* null, i32 (i8*, i32, i64, i8*, i8*, i8*)* null, i32 (i8*, i64, i8*, i8*)* null, i32 (i8*, i8*, i32)* @des_setkey_enc_wrap, i32 (i8*, i8*, i32)* @des_setkey_dec_wrap, i8* ()* @des_ctx_alloc, void (i8*)* @des_ctx_free }, align 8
@.str.69 = private unnamed_addr constant [12 x i8] c"DES-EDE-ECB\00", align 1
@des_ede_info = internal constant %struct.mbedtls_cipher_base_t { i32 3, i32 (i8*, i32, i8*, i8*)* @des3_crypt_ecb_wrap, i32 (i8*, i32, i64, i8*, i8*, i8*)* @des3_crypt_cbc_wrap, i32 (i8*, i32, i64, i64*, i8*, i8*, i8*)* null, i32 (i8*, i64, i64*, i8*, i8*, i8*)* null, i32 (i8*, i64, i64*, i8*, i8*, i8*, i8*)* null, i32 (i8*, i32, i64, i8*, i8*, i8*)* null, i32 (i8*, i64, i8*, i8*)* null, i32 (i8*, i8*, i32)* @des3_set2key_enc_wrap, i32 (i8*, i8*, i32)* @des3_set2key_dec_wrap, i8* ()* @des3_ctx_alloc, void (i8*)* @des3_ctx_free }, align 8
@.str.70 = private unnamed_addr constant [13 x i8] c"DES-EDE3-ECB\00", align 1
@des_ede3_info = internal constant %struct.mbedtls_cipher_base_t { i32 4, i32 (i8*, i32, i8*, i8*)* @des3_crypt_ecb_wrap, i32 (i8*, i32, i64, i8*, i8*, i8*)* @des3_crypt_cbc_wrap, i32 (i8*, i32, i64, i64*, i8*, i8*, i8*)* null, i32 (i8*, i64, i64*, i8*, i8*, i8*)* null, i32 (i8*, i64, i64*, i8*, i8*, i8*, i8*)* null, i32 (i8*, i32, i64, i8*, i8*, i8*)* null, i32 (i8*, i64, i8*, i8*)* null, i32 (i8*, i8*, i32)* @des3_set3key_enc_wrap, i32 (i8*, i8*, i32)* @des3_set3key_dec_wrap, i8* ()* @des3_ctx_alloc, void (i8*)* @des3_ctx_free }, align 8
@.str.71 = private unnamed_addr constant [8 x i8] c"DES-CBC\00", align 1
@.str.72 = private unnamed_addr constant [12 x i8] c"DES-EDE-CBC\00", align 1
@.str.73 = private unnamed_addr constant [13 x i8] c"DES-EDE3-CBC\00", align 1
@.str.74 = private unnamed_addr constant [9 x i8] c"CHACHA20\00", align 1
@chacha20_base_info = internal constant %struct.mbedtls_cipher_base_t { i32 7, i32 (i8*, i32, i8*, i8*)* null, i32 (i8*, i32, i64, i8*, i8*, i8*)* null, i32 (i8*, i32, i64, i64*, i8*, i8*, i8*)* null, i32 (i8*, i64, i64*, i8*, i8*, i8*)* null, i32 (i8*, i64, i64*, i8*, i8*, i8*, i8*)* null, i32 (i8*, i32, i64, i8*, i8*, i8*)* null, i32 (i8*, i64, i8*, i8*)* @chacha20_stream_wrap, i32 (i8*, i8*, i32)* @chacha20_setkey_wrap, i32 (i8*, i8*, i32)* @chacha20_setkey_wrap, i8* ()* @chacha20_ctx_alloc, void (i8*)* @chacha20_ctx_free }, align 8
@.str.75 = private unnamed_addr constant [18 x i8] c"CHACHA20-POLY1305\00", align 1
@chachapoly_base_info = internal constant %struct.mbedtls_cipher_base_t { i32 7, i32 (i8*, i32, i8*, i8*)* null, i32 (i8*, i32, i64, i8*, i8*, i8*)* null, i32 (i8*, i32, i64, i64*, i8*, i8*, i8*)* null, i32 (i8*, i64, i64*, i8*, i8*, i8*)* null, i32 (i8*, i64, i64*, i8*, i8*, i8*, i8*)* null, i32 (i8*, i32, i64, i8*, i8*, i8*)* null, i32 (i8*, i64, i8*, i8*)* null, i32 (i8*, i8*, i32)* @chachapoly_setkey_wrap, i32 (i8*, i8*, i32)* @chachapoly_setkey_wrap, i8* ()* @chachapoly_ctx_alloc, void (i8*)* @chachapoly_ctx_free }, align 8
@.str.76 = private unnamed_addr constant [11 x i8] c"AES-128-KW\00", align 1
@kw_aes_info = internal constant %struct.mbedtls_cipher_base_t { i32 2, i32 (i8*, i32, i8*, i8*)* null, i32 (i8*, i32, i64, i8*, i8*, i8*)* null, i32 (i8*, i32, i64, i64*, i8*, i8*, i8*)* null, i32 (i8*, i64, i64*, i8*, i8*, i8*)* null, i32 (i8*, i64, i64*, i8*, i8*, i8*, i8*)* null, i32 (i8*, i32, i64, i8*, i8*, i8*)* null, i32 (i8*, i64, i8*, i8*)* null, i32 (i8*, i8*, i32)* @kw_aes_setkey_wrap, i32 (i8*, i8*, i32)* @kw_aes_setkey_unwrap, i8* ()* @kw_ctx_alloc, void (i8*)* @kw_ctx_free }, align 8
@.str.77 = private unnamed_addr constant [11 x i8] c"AES-192-KW\00", align 1
@.str.78 = private unnamed_addr constant [11 x i8] c"AES-256-KW\00", align 1
@.str.79 = private unnamed_addr constant [12 x i8] c"AES-128-KWP\00", align 1
@.str.80 = private unnamed_addr constant [12 x i8] c"AES-192-KWP\00", align 1
@.str.81 = private unnamed_addr constant [12 x i8] c"AES-256-KWP\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aes_crypt_ecb_wrap(i8* noundef %ctx, i32 noundef %operation, i8* noundef %input, i8* noundef %output) #0 {
entry:
  %ctx.addr = alloca i8*, align 8
  %operation.addr = alloca i32, align 4
  %input.addr = alloca i8*, align 8
  %output.addr = alloca i8*, align 8
  store i8* %ctx, i8** %ctx.addr, align 8
  store i32 %operation, i32* %operation.addr, align 4
  store i8* %input, i8** %input.addr, align 8
  store i8* %output, i8** %output.addr, align 8
  %0 = load i8*, i8** %ctx.addr, align 8
  %1 = bitcast i8* %0 to %struct.mbedtls_aes_context*
  %2 = load i32, i32* %operation.addr, align 4
  %3 = load i8*, i8** %input.addr, align 8
  %4 = load i8*, i8** %output.addr, align 8
  %call = call i32 @mbedtls_aes_crypt_ecb(%struct.mbedtls_aes_context* noundef %1, i32 noundef %2, i8* noundef %3, i8* noundef %4) #3
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aes_crypt_cbc_wrap(i8* noundef %ctx, i32 noundef %operation, i64 noundef %length, i8* noundef %iv, i8* noundef %input, i8* noundef %output) #0 {
entry:
  %ctx.addr = alloca i8*, align 8
  %operation.addr = alloca i32, align 4
  %length.addr = alloca i64, align 8
  %iv.addr = alloca i8*, align 8
  %input.addr = alloca i8*, align 8
  %output.addr = alloca i8*, align 8
  store i8* %ctx, i8** %ctx.addr, align 8
  store i32 %operation, i32* %operation.addr, align 4
  store i64 %length, i64* %length.addr, align 8
  store i8* %iv, i8** %iv.addr, align 8
  store i8* %input, i8** %input.addr, align 8
  store i8* %output, i8** %output.addr, align 8
  %0 = load i8*, i8** %ctx.addr, align 8
  %1 = bitcast i8* %0 to %struct.mbedtls_aes_context*
  %2 = load i32, i32* %operation.addr, align 4
  %3 = load i64, i64* %length.addr, align 8
  %4 = load i8*, i8** %iv.addr, align 8
  %5 = load i8*, i8** %input.addr, align 8
  %6 = load i8*, i8** %output.addr, align 8
  %call = call i32 @mbedtls_aes_crypt_cbc(%struct.mbedtls_aes_context* noundef %1, i32 noundef %2, i64 noundef %3, i8* noundef %4, i8* noundef %5, i8* noundef %6) #3
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aes_crypt_cfb128_wrap(i8* noundef %ctx, i32 noundef %operation, i64 noundef %length, i64* noundef %iv_off, i8* noundef %iv, i8* noundef %input, i8* noundef %output) #0 {
entry:
  %ctx.addr = alloca i8*, align 8
  %operation.addr = alloca i32, align 4
  %length.addr = alloca i64, align 8
  %iv_off.addr = alloca i64*, align 8
  %iv.addr = alloca i8*, align 8
  %input.addr = alloca i8*, align 8
  %output.addr = alloca i8*, align 8
  store i8* %ctx, i8** %ctx.addr, align 8
  store i32 %operation, i32* %operation.addr, align 4
  store i64 %length, i64* %length.addr, align 8
  store i64* %iv_off, i64** %iv_off.addr, align 8
  store i8* %iv, i8** %iv.addr, align 8
  store i8* %input, i8** %input.addr, align 8
  store i8* %output, i8** %output.addr, align 8
  %0 = load i8*, i8** %ctx.addr, align 8
  %1 = bitcast i8* %0 to %struct.mbedtls_aes_context*
  %2 = load i32, i32* %operation.addr, align 4
  %3 = load i64, i64* %length.addr, align 8
  %4 = load i64*, i64** %iv_off.addr, align 8
  %5 = load i8*, i8** %iv.addr, align 8
  %6 = load i8*, i8** %input.addr, align 8
  %7 = load i8*, i8** %output.addr, align 8
  %call = call i32 @mbedtls_aes_crypt_cfb128(%struct.mbedtls_aes_context* noundef %1, i32 noundef %2, i64 noundef %3, i64* noundef %4, i8* noundef %5, i8* noundef %6, i8* noundef %7) #3
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aes_crypt_ofb_wrap(i8* noundef %ctx, i64 noundef %length, i64* noundef %iv_off, i8* noundef %iv, i8* noundef %input, i8* noundef %output) #0 {
entry:
  %ctx.addr = alloca i8*, align 8
  %length.addr = alloca i64, align 8
  %iv_off.addr = alloca i64*, align 8
  %iv.addr = alloca i8*, align 8
  %input.addr = alloca i8*, align 8
  %output.addr = alloca i8*, align 8
  store i8* %ctx, i8** %ctx.addr, align 8
  store i64 %length, i64* %length.addr, align 8
  store i64* %iv_off, i64** %iv_off.addr, align 8
  store i8* %iv, i8** %iv.addr, align 8
  store i8* %input, i8** %input.addr, align 8
  store i8* %output, i8** %output.addr, align 8
  %0 = load i8*, i8** %ctx.addr, align 8
  %1 = bitcast i8* %0 to %struct.mbedtls_aes_context*
  %2 = load i64, i64* %length.addr, align 8
  %3 = load i64*, i64** %iv_off.addr, align 8
  %4 = load i8*, i8** %iv.addr, align 8
  %5 = load i8*, i8** %input.addr, align 8
  %6 = load i8*, i8** %output.addr, align 8
  %call = call i32 @mbedtls_aes_crypt_ofb(%struct.mbedtls_aes_context* noundef %1, i64 noundef %2, i64* noundef %3, i8* noundef %4, i8* noundef %5, i8* noundef %6) #3
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aes_crypt_ctr_wrap(i8* noundef %ctx, i64 noundef %length, i64* noundef %nc_off, i8* noundef %nonce_counter, i8* noundef %stream_block, i8* noundef %input, i8* noundef %output) #0 {
entry:
  %ctx.addr = alloca i8*, align 8
  %length.addr = alloca i64, align 8
  %nc_off.addr = alloca i64*, align 8
  %nonce_counter.addr = alloca i8*, align 8
  %stream_block.addr = alloca i8*, align 8
  %input.addr = alloca i8*, align 8
  %output.addr = alloca i8*, align 8
  store i8* %ctx, i8** %ctx.addr, align 8
  store i64 %length, i64* %length.addr, align 8
  store i64* %nc_off, i64** %nc_off.addr, align 8
  store i8* %nonce_counter, i8** %nonce_counter.addr, align 8
  store i8* %stream_block, i8** %stream_block.addr, align 8
  store i8* %input, i8** %input.addr, align 8
  store i8* %output, i8** %output.addr, align 8
  %0 = load i8*, i8** %ctx.addr, align 8
  %1 = bitcast i8* %0 to %struct.mbedtls_aes_context*
  %2 = load i64, i64* %length.addr, align 8
  %3 = load i64*, i64** %nc_off.addr, align 8
  %4 = load i8*, i8** %nonce_counter.addr, align 8
  %5 = load i8*, i8** %stream_block.addr, align 8
  %6 = load i8*, i8** %input.addr, align 8
  %7 = load i8*, i8** %output.addr, align 8
  %call = call i32 @mbedtls_aes_crypt_ctr(%struct.mbedtls_aes_context* noundef %1, i64 noundef %2, i64* noundef %3, i8* noundef %4, i8* noundef %5, i8* noundef %6, i8* noundef %7) #3
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aes_setkey_enc_wrap(i8* noundef %ctx, i8* noundef %key, i32 noundef %key_bitlen) #0 {
entry:
  %ctx.addr = alloca i8*, align 8
  %key.addr = alloca i8*, align 8
  %key_bitlen.addr = alloca i32, align 4
  store i8* %ctx, i8** %ctx.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  store i32 %key_bitlen, i32* %key_bitlen.addr, align 4
  %0 = load i8*, i8** %ctx.addr, align 8
  %1 = bitcast i8* %0 to %struct.mbedtls_aes_context*
  %2 = load i8*, i8** %key.addr, align 8
  %3 = load i32, i32* %key_bitlen.addr, align 4
  %call = call i32 @mbedtls_aes_setkey_enc(%struct.mbedtls_aes_context* noundef %1, i8* noundef %2, i32 noundef %3) #3
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aes_setkey_dec_wrap(i8* noundef %ctx, i8* noundef %key, i32 noundef %key_bitlen) #0 {
entry:
  %ctx.addr = alloca i8*, align 8
  %key.addr = alloca i8*, align 8
  %key_bitlen.addr = alloca i32, align 4
  store i8* %ctx, i8** %ctx.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  store i32 %key_bitlen, i32* %key_bitlen.addr, align 4
  %0 = load i8*, i8** %ctx.addr, align 8
  %1 = bitcast i8* %0 to %struct.mbedtls_aes_context*
  %2 = load i8*, i8** %key.addr, align 8
  %3 = load i32, i32* %key_bitlen.addr, align 4
  %call = call i32 @mbedtls_aes_setkey_dec(%struct.mbedtls_aes_context* noundef %1, i8* noundef %2, i32 noundef %3) #3
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @aes_ctx_alloc() #0 {
entry:
  %retval = alloca i8*, align 8
  %aes = alloca %struct.mbedtls_aes_context*, align 8
  %call = call noalias i8* @calloc(i64 noundef 1, i64 noundef 288) #4
  %0 = bitcast i8* %call to %struct.mbedtls_aes_context*
  store %struct.mbedtls_aes_context* %0, %struct.mbedtls_aes_context** %aes, align 8
  %1 = load %struct.mbedtls_aes_context*, %struct.mbedtls_aes_context** %aes, align 8
  %cmp = icmp eq %struct.mbedtls_aes_context* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.mbedtls_aes_context*, %struct.mbedtls_aes_context** %aes, align 8
  call void @mbedtls_aes_init(%struct.mbedtls_aes_context* noundef %2) #3
  %3 = load %struct.mbedtls_aes_context*, %struct.mbedtls_aes_context** %aes, align 8
  %4 = bitcast %struct.mbedtls_aes_context* %3 to i8*
  store i8* %4, i8** %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load i8*, i8** %retval, align 8
  ret i8* %5
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aes_ctx_free(i8* noundef %ctx) #0 {
entry:
  %ctx.addr = alloca i8*, align 8
  store i8* %ctx, i8** %ctx.addr, align 8
  %0 = load i8*, i8** %ctx.addr, align 8
  %1 = bitcast i8* %0 to %struct.mbedtls_aes_context*
  call void @mbedtls_aes_free(%struct.mbedtls_aes_context* noundef %1) #3
  %2 = load i8*, i8** %ctx.addr, align 8
  call void @free(i8* noundef %2) #4
  ret void
}

declare dso_local i32 @mbedtls_aes_crypt_ecb(%struct.mbedtls_aes_context* noundef, i32 noundef, i8* noundef, i8* noundef) #1

declare dso_local i32 @mbedtls_aes_crypt_cbc(%struct.mbedtls_aes_context* noundef, i32 noundef, i64 noundef, i8* noundef, i8* noundef, i8* noundef) #1

declare dso_local i32 @mbedtls_aes_crypt_cfb128(%struct.mbedtls_aes_context* noundef, i32 noundef, i64 noundef, i64* noundef, i8* noundef, i8* noundef, i8* noundef) #1

declare dso_local i32 @mbedtls_aes_crypt_ofb(%struct.mbedtls_aes_context* noundef, i64 noundef, i64* noundef, i8* noundef, i8* noundef, i8* noundef) #1

declare dso_local i32 @mbedtls_aes_crypt_ctr(%struct.mbedtls_aes_context* noundef, i64 noundef, i64* noundef, i8* noundef, i8* noundef, i8* noundef, i8* noundef) #1

declare dso_local i32 @mbedtls_aes_setkey_enc(%struct.mbedtls_aes_context* noundef, i8* noundef, i32 noundef) #1

declare dso_local i32 @mbedtls_aes_setkey_dec(%struct.mbedtls_aes_context* noundef, i8* noundef, i32 noundef) #1

; Function Attrs: nounwind
declare dso_local noalias i8* @calloc(i64 noundef, i64 noundef) #2

declare dso_local void @mbedtls_aes_init(%struct.mbedtls_aes_context* noundef) #1

declare dso_local void @mbedtls_aes_free(%struct.mbedtls_aes_context* noundef) #1

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aes_crypt_xts_wrap(i8* noundef %ctx, i32 noundef %operation, i64 noundef %length, i8* noundef %data_unit, i8* noundef %input, i8* noundef %output) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca i8*, align 8
  %operation.addr = alloca i32, align 4
  %length.addr = alloca i64, align 8
  %data_unit.addr = alloca i8*, align 8
  %input.addr = alloca i8*, align 8
  %output.addr = alloca i8*, align 8
  %xts_ctx = alloca %struct.mbedtls_aes_xts_context*, align 8
  %mode = alloca i32, align 4
  store i8* %ctx, i8** %ctx.addr, align 8
  store i32 %operation, i32* %operation.addr, align 4
  store i64 %length, i64* %length.addr, align 8
  store i8* %data_unit, i8** %data_unit.addr, align 8
  store i8* %input, i8** %input.addr, align 8
  store i8* %output, i8** %output.addr, align 8
  %0 = load i8*, i8** %ctx.addr, align 8
  %1 = bitcast i8* %0 to %struct.mbedtls_aes_xts_context*
  store %struct.mbedtls_aes_xts_context* %1, %struct.mbedtls_aes_xts_context** %xts_ctx, align 8
  %2 = load i32, i32* %operation.addr, align 4
  switch i32 %2, label %sw.default [
    i32 1, label %sw.bb
    i32 0, label %sw.bb1
  ]

sw.bb:                                            ; preds = %entry
  store i32 1, i32* %mode, align 4
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  store i32 0, i32* %mode, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  store i32 -24832, i32* %retval, align 4
  br label %return

sw.epilog:                                        ; preds = %sw.bb1, %sw.bb
  %3 = load %struct.mbedtls_aes_xts_context*, %struct.mbedtls_aes_xts_context** %xts_ctx, align 8
  %4 = load i32, i32* %mode, align 4
  %5 = load i64, i64* %length.addr, align 8
  %6 = load i8*, i8** %data_unit.addr, align 8
  %7 = load i8*, i8** %input.addr, align 8
  %8 = load i8*, i8** %output.addr, align 8
  %call = call i32 @mbedtls_aes_crypt_xts(%struct.mbedtls_aes_xts_context* noundef %3, i32 noundef %4, i64 noundef %5, i8* noundef %6, i8* noundef %7, i8* noundef %8) #3
  store i32 %call, i32* %retval, align 4
  br label %return

return:                                           ; preds = %sw.epilog, %sw.default
  %9 = load i32, i32* %retval, align 4
  ret i32 %9
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xts_aes_setkey_enc_wrap(i8* noundef %ctx, i8* noundef %key, i32 noundef %key_bitlen) #0 {
entry:
  %ctx.addr = alloca i8*, align 8
  %key.addr = alloca i8*, align 8
  %key_bitlen.addr = alloca i32, align 4
  %xts_ctx = alloca %struct.mbedtls_aes_xts_context*, align 8
  store i8* %ctx, i8** %ctx.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  store i32 %key_bitlen, i32* %key_bitlen.addr, align 4
  %0 = load i8*, i8** %ctx.addr, align 8
  %1 = bitcast i8* %0 to %struct.mbedtls_aes_xts_context*
  store %struct.mbedtls_aes_xts_context* %1, %struct.mbedtls_aes_xts_context** %xts_ctx, align 8
  %2 = load %struct.mbedtls_aes_xts_context*, %struct.mbedtls_aes_xts_context** %xts_ctx, align 8
  %3 = load i8*, i8** %key.addr, align 8
  %4 = load i32, i32* %key_bitlen.addr, align 4
  %call = call i32 @mbedtls_aes_xts_setkey_enc(%struct.mbedtls_aes_xts_context* noundef %2, i8* noundef %3, i32 noundef %4) #3
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xts_aes_setkey_dec_wrap(i8* noundef %ctx, i8* noundef %key, i32 noundef %key_bitlen) #0 {
entry:
  %ctx.addr = alloca i8*, align 8
  %key.addr = alloca i8*, align 8
  %key_bitlen.addr = alloca i32, align 4
  %xts_ctx = alloca %struct.mbedtls_aes_xts_context*, align 8
  store i8* %ctx, i8** %ctx.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  store i32 %key_bitlen, i32* %key_bitlen.addr, align 4
  %0 = load i8*, i8** %ctx.addr, align 8
  %1 = bitcast i8* %0 to %struct.mbedtls_aes_xts_context*
  store %struct.mbedtls_aes_xts_context* %1, %struct.mbedtls_aes_xts_context** %xts_ctx, align 8
  %2 = load %struct.mbedtls_aes_xts_context*, %struct.mbedtls_aes_xts_context** %xts_ctx, align 8
  %3 = load i8*, i8** %key.addr, align 8
  %4 = load i32, i32* %key_bitlen.addr, align 4
  %call = call i32 @mbedtls_aes_xts_setkey_dec(%struct.mbedtls_aes_xts_context* noundef %2, i8* noundef %3, i32 noundef %4) #3
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @xts_aes_ctx_alloc() #0 {
entry:
  %xts_ctx = alloca %struct.mbedtls_aes_xts_context*, align 8
  %call = call noalias i8* @calloc(i64 noundef 1, i64 noundef 576) #4
  %0 = bitcast i8* %call to %struct.mbedtls_aes_xts_context*
  store %struct.mbedtls_aes_xts_context* %0, %struct.mbedtls_aes_xts_context** %xts_ctx, align 8
  %1 = load %struct.mbedtls_aes_xts_context*, %struct.mbedtls_aes_xts_context** %xts_ctx, align 8
  %cmp = icmp ne %struct.mbedtls_aes_xts_context* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.mbedtls_aes_xts_context*, %struct.mbedtls_aes_xts_context** %xts_ctx, align 8
  call void @mbedtls_aes_xts_init(%struct.mbedtls_aes_xts_context* noundef %2) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct.mbedtls_aes_xts_context*, %struct.mbedtls_aes_xts_context** %xts_ctx, align 8
  %4 = bitcast %struct.mbedtls_aes_xts_context* %3 to i8*
  ret i8* %4
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xts_aes_ctx_free(i8* noundef %ctx) #0 {
entry:
  %ctx.addr = alloca i8*, align 8
  %xts_ctx = alloca %struct.mbedtls_aes_xts_context*, align 8
  store i8* %ctx, i8** %ctx.addr, align 8
  %0 = load i8*, i8** %ctx.addr, align 8
  %1 = bitcast i8* %0 to %struct.mbedtls_aes_xts_context*
  store %struct.mbedtls_aes_xts_context* %1, %struct.mbedtls_aes_xts_context** %xts_ctx, align 8
  %2 = load %struct.mbedtls_aes_xts_context*, %struct.mbedtls_aes_xts_context** %xts_ctx, align 8
  %cmp = icmp eq %struct.mbedtls_aes_xts_context* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.mbedtls_aes_xts_context*, %struct.mbedtls_aes_xts_context** %xts_ctx, align 8
  call void @mbedtls_aes_xts_free(%struct.mbedtls_aes_xts_context* noundef %3) #3
  %4 = load %struct.mbedtls_aes_xts_context*, %struct.mbedtls_aes_xts_context** %xts_ctx, align 8
  %5 = bitcast %struct.mbedtls_aes_xts_context* %4 to i8*
  call void @free(i8* noundef %5) #4
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

declare dso_local i32 @mbedtls_aes_crypt_xts(%struct.mbedtls_aes_xts_context* noundef, i32 noundef, i64 noundef, i8* noundef, i8* noundef, i8* noundef) #1

declare dso_local i32 @mbedtls_aes_xts_setkey_enc(%struct.mbedtls_aes_xts_context* noundef, i8* noundef, i32 noundef) #1

declare dso_local i32 @mbedtls_aes_xts_setkey_dec(%struct.mbedtls_aes_xts_context* noundef, i8* noundef, i32 noundef) #1

declare dso_local void @mbedtls_aes_xts_init(%struct.mbedtls_aes_xts_context* noundef) #1

declare dso_local void @mbedtls_aes_xts_free(%struct.mbedtls_aes_xts_context* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gcm_aes_setkey_wrap(i8* noundef %ctx, i8* noundef %key, i32 noundef %key_bitlen) #0 {
entry:
  %ctx.addr = alloca i8*, align 8
  %key.addr = alloca i8*, align 8
  %key_bitlen.addr = alloca i32, align 4
  store i8* %ctx, i8** %ctx.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  store i32 %key_bitlen, i32* %key_bitlen.addr, align 4
  %0 = load i8*, i8** %ctx.addr, align 8
  %1 = bitcast i8* %0 to %struct.mbedtls_gcm_context*
  %2 = load i8*, i8** %key.addr, align 8
  %3 = load i32, i32* %key_bitlen.addr, align 4
  %call = call i32 @mbedtls_gcm_setkey(%struct.mbedtls_gcm_context* noundef %1, i32 noundef 2, i8* noundef %2, i32 noundef %3) #3
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @gcm_ctx_alloc() #0 {
entry:
  %ctx = alloca i8*, align 8
  %call = call noalias i8* @calloc(i64 noundef 1, i64 noundef 424) #4
  store i8* %call, i8** %ctx, align 8
  %0 = load i8*, i8** %ctx, align 8
  %cmp = icmp ne i8* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %ctx, align 8
  %2 = bitcast i8* %1 to %struct.mbedtls_gcm_context*
  call void @mbedtls_gcm_init(%struct.mbedtls_gcm_context* noundef %2) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %ctx, align 8
  ret i8* %3
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gcm_ctx_free(i8* noundef %ctx) #0 {
entry:
  %ctx.addr = alloca i8*, align 8
  store i8* %ctx, i8** %ctx.addr, align 8
  %0 = load i8*, i8** %ctx.addr, align 8
  %1 = bitcast i8* %0 to %struct.mbedtls_gcm_context*
  call void @mbedtls_gcm_free(%struct.mbedtls_gcm_context* noundef %1) #3
  %2 = load i8*, i8** %ctx.addr, align 8
  call void @free(i8* noundef %2) #4
  ret void
}

declare dso_local i32 @mbedtls_gcm_setkey(%struct.mbedtls_gcm_context* noundef, i32 noundef, i8* noundef, i32 noundef) #1

declare dso_local void @mbedtls_gcm_init(%struct.mbedtls_gcm_context* noundef) #1

declare dso_local void @mbedtls_gcm_free(%struct.mbedtls_gcm_context* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ccm_aes_setkey_wrap(i8* noundef %ctx, i8* noundef %key, i32 noundef %key_bitlen) #0 {
entry:
  %ctx.addr = alloca i8*, align 8
  %key.addr = alloca i8*, align 8
  %key_bitlen.addr = alloca i32, align 4
  store i8* %ctx, i8** %ctx.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  store i32 %key_bitlen, i32* %key_bitlen.addr, align 4
  %0 = load i8*, i8** %ctx.addr, align 8
  %1 = bitcast i8* %0 to %struct.mbedtls_ccm_context*
  %2 = load i8*, i8** %key.addr, align 8
  %3 = load i32, i32* %key_bitlen.addr, align 4
  %call = call i32 @mbedtls_ccm_setkey(%struct.mbedtls_ccm_context* noundef %1, i32 noundef 2, i8* noundef %2, i32 noundef %3) #3
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ccm_ctx_alloc() #0 {
entry:
  %ctx = alloca i8*, align 8
  %call = call noalias i8* @calloc(i64 noundef 1, i64 noundef 168) #4
  store i8* %call, i8** %ctx, align 8
  %0 = load i8*, i8** %ctx, align 8
  %cmp = icmp ne i8* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %ctx, align 8
  %2 = bitcast i8* %1 to %struct.mbedtls_ccm_context*
  call void @mbedtls_ccm_init(%struct.mbedtls_ccm_context* noundef %2) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %ctx, align 8
  ret i8* %3
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ccm_ctx_free(i8* noundef %ctx) #0 {
entry:
  %ctx.addr = alloca i8*, align 8
  store i8* %ctx, i8** %ctx.addr, align 8
  %0 = load i8*, i8** %ctx.addr, align 8
  %1 = bitcast i8* %0 to %struct.mbedtls_ccm_context*
  call void @mbedtls_ccm_free(%struct.mbedtls_ccm_context* noundef %1) #3
  %2 = load i8*, i8** %ctx.addr, align 8
  call void @free(i8* noundef %2) #4
  ret void
}

declare dso_local i32 @mbedtls_ccm_setkey(%struct.mbedtls_ccm_context* noundef, i32 noundef, i8* noundef, i32 noundef) #1

declare dso_local void @mbedtls_ccm_init(%struct.mbedtls_ccm_context* noundef) #1

declare dso_local void @mbedtls_ccm_free(%struct.mbedtls_ccm_context* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @camellia_crypt_ecb_wrap(i8* noundef %ctx, i32 noundef %operation, i8* noundef %input, i8* noundef %output) #0 {
entry:
  %ctx.addr = alloca i8*, align 8
  %operation.addr = alloca i32, align 4
  %input.addr = alloca i8*, align 8
  %output.addr = alloca i8*, align 8
  store i8* %ctx, i8** %ctx.addr, align 8
  store i32 %operation, i32* %operation.addr, align 4
  store i8* %input, i8** %input.addr, align 8
  store i8* %output, i8** %output.addr, align 8
  %0 = load i8*, i8** %ctx.addr, align 8
  %1 = bitcast i8* %0 to %struct.mbedtls_camellia_context*
  %2 = load i32, i32* %operation.addr, align 4
  %3 = load i8*, i8** %input.addr, align 8
  %4 = load i8*, i8** %output.addr, align 8
  %call = call i32 @mbedtls_camellia_crypt_ecb(%struct.mbedtls_camellia_context* noundef %1, i32 noundef %2, i8* noundef %3, i8* noundef %4) #3
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @camellia_crypt_cbc_wrap(i8* noundef %ctx, i32 noundef %operation, i64 noundef %length, i8* noundef %iv, i8* noundef %input, i8* noundef %output) #0 {
entry:
  %ctx.addr = alloca i8*, align 8
  %operation.addr = alloca i32, align 4
  %length.addr = alloca i64, align 8
  %iv.addr = alloca i8*, align 8
  %input.addr = alloca i8*, align 8
  %output.addr = alloca i8*, align 8
  store i8* %ctx, i8** %ctx.addr, align 8
  store i32 %operation, i32* %operation.addr, align 4
  store i64 %length, i64* %length.addr, align 8
  store i8* %iv, i8** %iv.addr, align 8
  store i8* %input, i8** %input.addr, align 8
  store i8* %output, i8** %output.addr, align 8
  %0 = load i8*, i8** %ctx.addr, align 8
  %1 = bitcast i8* %0 to %struct.mbedtls_camellia_context*
  %2 = load i32, i32* %operation.addr, align 4
  %3 = load i64, i64* %length.addr, align 8
  %4 = load i8*, i8** %iv.addr, align 8
  %5 = load i8*, i8** %input.addr, align 8
  %6 = load i8*, i8** %output.addr, align 8
  %call = call i32 @mbedtls_camellia_crypt_cbc(%struct.mbedtls_camellia_context* noundef %1, i32 noundef %2, i64 noundef %3, i8* noundef %4, i8* noundef %5, i8* noundef %6) #3
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @camellia_crypt_cfb128_wrap(i8* noundef %ctx, i32 noundef %operation, i64 noundef %length, i64* noundef %iv_off, i8* noundef %iv, i8* noundef %input, i8* noundef %output) #0 {
entry:
  %ctx.addr = alloca i8*, align 8
  %operation.addr = alloca i32, align 4
  %length.addr = alloca i64, align 8
  %iv_off.addr = alloca i64*, align 8
  %iv.addr = alloca i8*, align 8
  %input.addr = alloca i8*, align 8
  %output.addr = alloca i8*, align 8
  store i8* %ctx, i8** %ctx.addr, align 8
  store i32 %operation, i32* %operation.addr, align 4
  store i64 %length, i64* %length.addr, align 8
  store i64* %iv_off, i64** %iv_off.addr, align 8
  store i8* %iv, i8** %iv.addr, align 8
  store i8* %input, i8** %input.addr, align 8
  store i8* %output, i8** %output.addr, align 8
  %0 = load i8*, i8** %ctx.addr, align 8
  %1 = bitcast i8* %0 to %struct.mbedtls_camellia_context*
  %2 = load i32, i32* %operation.addr, align 4
  %3 = load i64, i64* %length.addr, align 8
  %4 = load i64*, i64** %iv_off.addr, align 8
  %5 = load i8*, i8** %iv.addr, align 8
  %6 = load i8*, i8** %input.addr, align 8
  %7 = load i8*, i8** %output.addr, align 8
  %call = call i32 @mbedtls_camellia_crypt_cfb128(%struct.mbedtls_camellia_context* noundef %1, i32 noundef %2, i64 noundef %3, i64* noundef %4, i8* noundef %5, i8* noundef %6, i8* noundef %7) #3
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @camellia_crypt_ctr_wrap(i8* noundef %ctx, i64 noundef %length, i64* noundef %nc_off, i8* noundef %nonce_counter, i8* noundef %stream_block, i8* noundef %input, i8* noundef %output) #0 {
entry:
  %ctx.addr = alloca i8*, align 8
  %length.addr = alloca i64, align 8
  %nc_off.addr = alloca i64*, align 8
  %nonce_counter.addr = alloca i8*, align 8
  %stream_block.addr = alloca i8*, align 8
  %input.addr = alloca i8*, align 8
  %output.addr = alloca i8*, align 8
  store i8* %ctx, i8** %ctx.addr, align 8
  store i64 %length, i64* %length.addr, align 8
  store i64* %nc_off, i64** %nc_off.addr, align 8
  store i8* %nonce_counter, i8** %nonce_counter.addr, align 8
  store i8* %stream_block, i8** %stream_block.addr, align 8
  store i8* %input, i8** %input.addr, align 8
  store i8* %output, i8** %output.addr, align 8
  %0 = load i8*, i8** %ctx.addr, align 8
  %1 = bitcast i8* %0 to %struct.mbedtls_camellia_context*
  %2 = load i64, i64* %length.addr, align 8
  %3 = load i64*, i64** %nc_off.addr, align 8
  %4 = load i8*, i8** %nonce_counter.addr, align 8
  %5 = load i8*, i8** %stream_block.addr, align 8
  %6 = load i8*, i8** %input.addr, align 8
  %7 = load i8*, i8** %output.addr, align 8
  %call = call i32 @mbedtls_camellia_crypt_ctr(%struct.mbedtls_camellia_context* noundef %1, i64 noundef %2, i64* noundef %3, i8* noundef %4, i8* noundef %5, i8* noundef %6, i8* noundef %7) #3
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @camellia_setkey_enc_wrap(i8* noundef %ctx, i8* noundef %key, i32 noundef %key_bitlen) #0 {
entry:
  %ctx.addr = alloca i8*, align 8
  %key.addr = alloca i8*, align 8
  %key_bitlen.addr = alloca i32, align 4
  store i8* %ctx, i8** %ctx.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  store i32 %key_bitlen, i32* %key_bitlen.addr, align 4
  %0 = load i8*, i8** %ctx.addr, align 8
  %1 = bitcast i8* %0 to %struct.mbedtls_camellia_context*
  %2 = load i8*, i8** %key.addr, align 8
  %3 = load i32, i32* %key_bitlen.addr, align 4
  %call = call i32 @mbedtls_camellia_setkey_enc(%struct.mbedtls_camellia_context* noundef %1, i8* noundef %2, i32 noundef %3) #3
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @camellia_setkey_dec_wrap(i8* noundef %ctx, i8* noundef %key, i32 noundef %key_bitlen) #0 {
entry:
  %ctx.addr = alloca i8*, align 8
  %key.addr = alloca i8*, align 8
  %key_bitlen.addr = alloca i32, align 4
  store i8* %ctx, i8** %ctx.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  store i32 %key_bitlen, i32* %key_bitlen.addr, align 4
  %0 = load i8*, i8** %ctx.addr, align 8
  %1 = bitcast i8* %0 to %struct.mbedtls_camellia_context*
  %2 = load i8*, i8** %key.addr, align 8
  %3 = load i32, i32* %key_bitlen.addr, align 4
  %call = call i32 @mbedtls_camellia_setkey_dec(%struct.mbedtls_camellia_context* noundef %1, i8* noundef %2, i32 noundef %3) #3
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @camellia_ctx_alloc() #0 {
entry:
  %retval = alloca i8*, align 8
  %ctx = alloca %struct.mbedtls_camellia_context*, align 8
  %call = call noalias i8* @calloc(i64 noundef 1, i64 noundef 276) #4
  %0 = bitcast i8* %call to %struct.mbedtls_camellia_context*
  store %struct.mbedtls_camellia_context* %0, %struct.mbedtls_camellia_context** %ctx, align 8
  %1 = load %struct.mbedtls_camellia_context*, %struct.mbedtls_camellia_context** %ctx, align 8
  %cmp = icmp eq %struct.mbedtls_camellia_context* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.mbedtls_camellia_context*, %struct.mbedtls_camellia_context** %ctx, align 8
  call void @mbedtls_camellia_init(%struct.mbedtls_camellia_context* noundef %2) #3
  %3 = load %struct.mbedtls_camellia_context*, %struct.mbedtls_camellia_context** %ctx, align 8
  %4 = bitcast %struct.mbedtls_camellia_context* %3 to i8*
  store i8* %4, i8** %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load i8*, i8** %retval, align 8
  ret i8* %5
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @camellia_ctx_free(i8* noundef %ctx) #0 {
entry:
  %ctx.addr = alloca i8*, align 8
  store i8* %ctx, i8** %ctx.addr, align 8
  %0 = load i8*, i8** %ctx.addr, align 8
  %1 = bitcast i8* %0 to %struct.mbedtls_camellia_context*
  call void @mbedtls_camellia_free(%struct.mbedtls_camellia_context* noundef %1) #3
  %2 = load i8*, i8** %ctx.addr, align 8
  call void @free(i8* noundef %2) #4
  ret void
}

declare dso_local i32 @mbedtls_camellia_crypt_ecb(%struct.mbedtls_camellia_context* noundef, i32 noundef, i8* noundef, i8* noundef) #1

declare dso_local i32 @mbedtls_camellia_crypt_cbc(%struct.mbedtls_camellia_context* noundef, i32 noundef, i64 noundef, i8* noundef, i8* noundef, i8* noundef) #1

declare dso_local i32 @mbedtls_camellia_crypt_cfb128(%struct.mbedtls_camellia_context* noundef, i32 noundef, i64 noundef, i64* noundef, i8* noundef, i8* noundef, i8* noundef) #1

declare dso_local i32 @mbedtls_camellia_crypt_ctr(%struct.mbedtls_camellia_context* noundef, i64 noundef, i64* noundef, i8* noundef, i8* noundef, i8* noundef, i8* noundef) #1

declare dso_local i32 @mbedtls_camellia_setkey_enc(%struct.mbedtls_camellia_context* noundef, i8* noundef, i32 noundef) #1

declare dso_local i32 @mbedtls_camellia_setkey_dec(%struct.mbedtls_camellia_context* noundef, i8* noundef, i32 noundef) #1

declare dso_local void @mbedtls_camellia_init(%struct.mbedtls_camellia_context* noundef) #1

declare dso_local void @mbedtls_camellia_free(%struct.mbedtls_camellia_context* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gcm_camellia_setkey_wrap(i8* noundef %ctx, i8* noundef %key, i32 noundef %key_bitlen) #0 {
entry:
  %ctx.addr = alloca i8*, align 8
  %key.addr = alloca i8*, align 8
  %key_bitlen.addr = alloca i32, align 4
  store i8* %ctx, i8** %ctx.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  store i32 %key_bitlen, i32* %key_bitlen.addr, align 4
  %0 = load i8*, i8** %ctx.addr, align 8
  %1 = bitcast i8* %0 to %struct.mbedtls_gcm_context*
  %2 = load i8*, i8** %key.addr, align 8
  %3 = load i32, i32* %key_bitlen.addr, align 4
  %call = call i32 @mbedtls_gcm_setkey(%struct.mbedtls_gcm_context* noundef %1, i32 noundef 5, i8* noundef %2, i32 noundef %3) #3
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ccm_camellia_setkey_wrap(i8* noundef %ctx, i8* noundef %key, i32 noundef %key_bitlen) #0 {
entry:
  %ctx.addr = alloca i8*, align 8
  %key.addr = alloca i8*, align 8
  %key_bitlen.addr = alloca i32, align 4
  store i8* %ctx, i8** %ctx.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  store i32 %key_bitlen, i32* %key_bitlen.addr, align 4
  %0 = load i8*, i8** %ctx.addr, align 8
  %1 = bitcast i8* %0 to %struct.mbedtls_ccm_context*
  %2 = load i8*, i8** %key.addr, align 8
  %3 = load i32, i32* %key_bitlen.addr, align 4
  %call = call i32 @mbedtls_ccm_setkey(%struct.mbedtls_ccm_context* noundef %1, i32 noundef 5, i8* noundef %2, i32 noundef %3) #3
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aria_crypt_ecb_wrap(i8* noundef %ctx, i32 noundef %operation, i8* noundef %input, i8* noundef %output) #0 {
entry:
  %ctx.addr = alloca i8*, align 8
  %operation.addr = alloca i32, align 4
  %input.addr = alloca i8*, align 8
  %output.addr = alloca i8*, align 8
  store i8* %ctx, i8** %ctx.addr, align 8
  store i32 %operation, i32* %operation.addr, align 4
  store i8* %input, i8** %input.addr, align 8
  store i8* %output, i8** %output.addr, align 8
  %0 = load i32, i32* %operation.addr, align 4
  %1 = load i8*, i8** %ctx.addr, align 8
  %2 = bitcast i8* %1 to %struct.mbedtls_aria_context*
  %3 = load i8*, i8** %input.addr, align 8
  %4 = load i8*, i8** %output.addr, align 8
  %call = call i32 @mbedtls_aria_crypt_ecb(%struct.mbedtls_aria_context* noundef %2, i8* noundef %3, i8* noundef %4) #3
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aria_crypt_cbc_wrap(i8* noundef %ctx, i32 noundef %operation, i64 noundef %length, i8* noundef %iv, i8* noundef %input, i8* noundef %output) #0 {
entry:
  %ctx.addr = alloca i8*, align 8
  %operation.addr = alloca i32, align 4
  %length.addr = alloca i64, align 8
  %iv.addr = alloca i8*, align 8
  %input.addr = alloca i8*, align 8
  %output.addr = alloca i8*, align 8
  store i8* %ctx, i8** %ctx.addr, align 8
  store i32 %operation, i32* %operation.addr, align 4
  store i64 %length, i64* %length.addr, align 8
  store i8* %iv, i8** %iv.addr, align 8
  store i8* %input, i8** %input.addr, align 8
  store i8* %output, i8** %output.addr, align 8
  %0 = load i8*, i8** %ctx.addr, align 8
  %1 = bitcast i8* %0 to %struct.mbedtls_aria_context*
  %2 = load i32, i32* %operation.addr, align 4
  %3 = load i64, i64* %length.addr, align 8
  %4 = load i8*, i8** %iv.addr, align 8
  %5 = load i8*, i8** %input.addr, align 8
  %6 = load i8*, i8** %output.addr, align 8
  %call = call i32 @mbedtls_aria_crypt_cbc(%struct.mbedtls_aria_context* noundef %1, i32 noundef %2, i64 noundef %3, i8* noundef %4, i8* noundef %5, i8* noundef %6) #3
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aria_crypt_cfb128_wrap(i8* noundef %ctx, i32 noundef %operation, i64 noundef %length, i64* noundef %iv_off, i8* noundef %iv, i8* noundef %input, i8* noundef %output) #0 {
entry:
  %ctx.addr = alloca i8*, align 8
  %operation.addr = alloca i32, align 4
  %length.addr = alloca i64, align 8
  %iv_off.addr = alloca i64*, align 8
  %iv.addr = alloca i8*, align 8
  %input.addr = alloca i8*, align 8
  %output.addr = alloca i8*, align 8
  store i8* %ctx, i8** %ctx.addr, align 8
  store i32 %operation, i32* %operation.addr, align 4
  store i64 %length, i64* %length.addr, align 8
  store i64* %iv_off, i64** %iv_off.addr, align 8
  store i8* %iv, i8** %iv.addr, align 8
  store i8* %input, i8** %input.addr, align 8
  store i8* %output, i8** %output.addr, align 8
  %0 = load i8*, i8** %ctx.addr, align 8
  %1 = bitcast i8* %0 to %struct.mbedtls_aria_context*
  %2 = load i32, i32* %operation.addr, align 4
  %3 = load i64, i64* %length.addr, align 8
  %4 = load i64*, i64** %iv_off.addr, align 8
  %5 = load i8*, i8** %iv.addr, align 8
  %6 = load i8*, i8** %input.addr, align 8
  %7 = load i8*, i8** %output.addr, align 8
  %call = call i32 @mbedtls_aria_crypt_cfb128(%struct.mbedtls_aria_context* noundef %1, i32 noundef %2, i64 noundef %3, i64* noundef %4, i8* noundef %5, i8* noundef %6, i8* noundef %7) #3
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aria_crypt_ctr_wrap(i8* noundef %ctx, i64 noundef %length, i64* noundef %nc_off, i8* noundef %nonce_counter, i8* noundef %stream_block, i8* noundef %input, i8* noundef %output) #0 {
entry:
  %ctx.addr = alloca i8*, align 8
  %length.addr = alloca i64, align 8
  %nc_off.addr = alloca i64*, align 8
  %nonce_counter.addr = alloca i8*, align 8
  %stream_block.addr = alloca i8*, align 8
  %input.addr = alloca i8*, align 8
  %output.addr = alloca i8*, align 8
  store i8* %ctx, i8** %ctx.addr, align 8
  store i64 %length, i64* %length.addr, align 8
  store i64* %nc_off, i64** %nc_off.addr, align 8
  store i8* %nonce_counter, i8** %nonce_counter.addr, align 8
  store i8* %stream_block, i8** %stream_block.addr, align 8
  store i8* %input, i8** %input.addr, align 8
  store i8* %output, i8** %output.addr, align 8
  %0 = load i8*, i8** %ctx.addr, align 8
  %1 = bitcast i8* %0 to %struct.mbedtls_aria_context*
  %2 = load i64, i64* %length.addr, align 8
  %3 = load i64*, i64** %nc_off.addr, align 8
  %4 = load i8*, i8** %nonce_counter.addr, align 8
  %5 = load i8*, i8** %stream_block.addr, align 8
  %6 = load i8*, i8** %input.addr, align 8
  %7 = load i8*, i8** %output.addr, align 8
  %call = call i32 @mbedtls_aria_crypt_ctr(%struct.mbedtls_aria_context* noundef %1, i64 noundef %2, i64* noundef %3, i8* noundef %4, i8* noundef %5, i8* noundef %6, i8* noundef %7) #3
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aria_setkey_enc_wrap(i8* noundef %ctx, i8* noundef %key, i32 noundef %key_bitlen) #0 {
entry:
  %ctx.addr = alloca i8*, align 8
  %key.addr = alloca i8*, align 8
  %key_bitlen.addr = alloca i32, align 4
  store i8* %ctx, i8** %ctx.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  store i32 %key_bitlen, i32* %key_bitlen.addr, align 4
  %0 = load i8*, i8** %ctx.addr, align 8
  %1 = bitcast i8* %0 to %struct.mbedtls_aria_context*
  %2 = load i8*, i8** %key.addr, align 8
  %3 = load i32, i32* %key_bitlen.addr, align 4
  %call = call i32 @mbedtls_aria_setkey_enc(%struct.mbedtls_aria_context* noundef %1, i8* noundef %2, i32 noundef %3) #3
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aria_setkey_dec_wrap(i8* noundef %ctx, i8* noundef %key, i32 noundef %key_bitlen) #0 {
entry:
  %ctx.addr = alloca i8*, align 8
  %key.addr = alloca i8*, align 8
  %key_bitlen.addr = alloca i32, align 4
  store i8* %ctx, i8** %ctx.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  store i32 %key_bitlen, i32* %key_bitlen.addr, align 4
  %0 = load i8*, i8** %ctx.addr, align 8
  %1 = bitcast i8* %0 to %struct.mbedtls_aria_context*
  %2 = load i8*, i8** %key.addr, align 8
  %3 = load i32, i32* %key_bitlen.addr, align 4
  %call = call i32 @mbedtls_aria_setkey_dec(%struct.mbedtls_aria_context* noundef %1, i8* noundef %2, i32 noundef %3) #3
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @aria_ctx_alloc() #0 {
entry:
  %retval = alloca i8*, align 8
  %ctx = alloca %struct.mbedtls_aria_context*, align 8
  %call = call noalias i8* @calloc(i64 noundef 1, i64 noundef 276) #4
  %0 = bitcast i8* %call to %struct.mbedtls_aria_context*
  store %struct.mbedtls_aria_context* %0, %struct.mbedtls_aria_context** %ctx, align 8
  %1 = load %struct.mbedtls_aria_context*, %struct.mbedtls_aria_context** %ctx, align 8
  %cmp = icmp eq %struct.mbedtls_aria_context* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.mbedtls_aria_context*, %struct.mbedtls_aria_context** %ctx, align 8
  call void @mbedtls_aria_init(%struct.mbedtls_aria_context* noundef %2) #3
  %3 = load %struct.mbedtls_aria_context*, %struct.mbedtls_aria_context** %ctx, align 8
  %4 = bitcast %struct.mbedtls_aria_context* %3 to i8*
  store i8* %4, i8** %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load i8*, i8** %retval, align 8
  ret i8* %5
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aria_ctx_free(i8* noundef %ctx) #0 {
entry:
  %ctx.addr = alloca i8*, align 8
  store i8* %ctx, i8** %ctx.addr, align 8
  %0 = load i8*, i8** %ctx.addr, align 8
  %1 = bitcast i8* %0 to %struct.mbedtls_aria_context*
  call void @mbedtls_aria_free(%struct.mbedtls_aria_context* noundef %1) #3
  %2 = load i8*, i8** %ctx.addr, align 8
  call void @free(i8* noundef %2) #4
  ret void
}

declare dso_local i32 @mbedtls_aria_crypt_ecb(%struct.mbedtls_aria_context* noundef, i8* noundef, i8* noundef) #1

declare dso_local i32 @mbedtls_aria_crypt_cbc(%struct.mbedtls_aria_context* noundef, i32 noundef, i64 noundef, i8* noundef, i8* noundef, i8* noundef) #1

declare dso_local i32 @mbedtls_aria_crypt_cfb128(%struct.mbedtls_aria_context* noundef, i32 noundef, i64 noundef, i64* noundef, i8* noundef, i8* noundef, i8* noundef) #1

declare dso_local i32 @mbedtls_aria_crypt_ctr(%struct.mbedtls_aria_context* noundef, i64 noundef, i64* noundef, i8* noundef, i8* noundef, i8* noundef, i8* noundef) #1

declare dso_local i32 @mbedtls_aria_setkey_enc(%struct.mbedtls_aria_context* noundef, i8* noundef, i32 noundef) #1

declare dso_local i32 @mbedtls_aria_setkey_dec(%struct.mbedtls_aria_context* noundef, i8* noundef, i32 noundef) #1

declare dso_local void @mbedtls_aria_init(%struct.mbedtls_aria_context* noundef) #1

declare dso_local void @mbedtls_aria_free(%struct.mbedtls_aria_context* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gcm_aria_setkey_wrap(i8* noundef %ctx, i8* noundef %key, i32 noundef %key_bitlen) #0 {
entry:
  %ctx.addr = alloca i8*, align 8
  %key.addr = alloca i8*, align 8
  %key_bitlen.addr = alloca i32, align 4
  store i8* %ctx, i8** %ctx.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  store i32 %key_bitlen, i32* %key_bitlen.addr, align 4
  %0 = load i8*, i8** %ctx.addr, align 8
  %1 = bitcast i8* %0 to %struct.mbedtls_gcm_context*
  %2 = load i8*, i8** %key.addr, align 8
  %3 = load i32, i32* %key_bitlen.addr, align 4
  %call = call i32 @mbedtls_gcm_setkey(%struct.mbedtls_gcm_context* noundef %1, i32 noundef 6, i8* noundef %2, i32 noundef %3) #3
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ccm_aria_setkey_wrap(i8* noundef %ctx, i8* noundef %key, i32 noundef %key_bitlen) #0 {
entry:
  %ctx.addr = alloca i8*, align 8
  %key.addr = alloca i8*, align 8
  %key_bitlen.addr = alloca i32, align 4
  store i8* %ctx, i8** %ctx.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  store i32 %key_bitlen, i32* %key_bitlen.addr, align 4
  %0 = load i8*, i8** %ctx.addr, align 8
  %1 = bitcast i8* %0 to %struct.mbedtls_ccm_context*
  %2 = load i8*, i8** %key.addr, align 8
  %3 = load i32, i32* %key_bitlen.addr, align 4
  %call = call i32 @mbedtls_ccm_setkey(%struct.mbedtls_ccm_context* noundef %1, i32 noundef 6, i8* noundef %2, i32 noundef %3) #3
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @des_crypt_ecb_wrap(i8* noundef %ctx, i32 noundef %operation, i8* noundef %input, i8* noundef %output) #0 {
entry:
  %ctx.addr = alloca i8*, align 8
  %operation.addr = alloca i32, align 4
  %input.addr = alloca i8*, align 8
  %output.addr = alloca i8*, align 8
  store i8* %ctx, i8** %ctx.addr, align 8
  store i32 %operation, i32* %operation.addr, align 4
  store i8* %input, i8** %input.addr, align 8
  store i8* %output, i8** %output.addr, align 8
  %0 = load i32, i32* %operation.addr, align 4
  %1 = load i8*, i8** %ctx.addr, align 8
  %2 = bitcast i8* %1 to %struct.mbedtls_des_context*
  %3 = load i8*, i8** %input.addr, align 8
  %4 = load i8*, i8** %output.addr, align 8
  %call = call i32 @mbedtls_des_crypt_ecb(%struct.mbedtls_des_context* noundef %2, i8* noundef %3, i8* noundef %4) #3
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @des_crypt_cbc_wrap(i8* noundef %ctx, i32 noundef %operation, i64 noundef %length, i8* noundef %iv, i8* noundef %input, i8* noundef %output) #0 {
entry:
  %ctx.addr = alloca i8*, align 8
  %operation.addr = alloca i32, align 4
  %length.addr = alloca i64, align 8
  %iv.addr = alloca i8*, align 8
  %input.addr = alloca i8*, align 8
  %output.addr = alloca i8*, align 8
  store i8* %ctx, i8** %ctx.addr, align 8
  store i32 %operation, i32* %operation.addr, align 4
  store i64 %length, i64* %length.addr, align 8
  store i8* %iv, i8** %iv.addr, align 8
  store i8* %input, i8** %input.addr, align 8
  store i8* %output, i8** %output.addr, align 8
  %0 = load i8*, i8** %ctx.addr, align 8
  %1 = bitcast i8* %0 to %struct.mbedtls_des_context*
  %2 = load i32, i32* %operation.addr, align 4
  %3 = load i64, i64* %length.addr, align 8
  %4 = load i8*, i8** %iv.addr, align 8
  %5 = load i8*, i8** %input.addr, align 8
  %6 = load i8*, i8** %output.addr, align 8
  %call = call i32 @mbedtls_des_crypt_cbc(%struct.mbedtls_des_context* noundef %1, i32 noundef %2, i64 noundef %3, i8* noundef %4, i8* noundef %5, i8* noundef %6) #3
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @des_setkey_enc_wrap(i8* noundef %ctx, i8* noundef %key, i32 noundef %key_bitlen) #0 {
entry:
  %ctx.addr = alloca i8*, align 8
  %key.addr = alloca i8*, align 8
  %key_bitlen.addr = alloca i32, align 4
  store i8* %ctx, i8** %ctx.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  store i32 %key_bitlen, i32* %key_bitlen.addr, align 4
  %0 = load i32, i32* %key_bitlen.addr, align 4
  %1 = load i8*, i8** %ctx.addr, align 8
  %2 = bitcast i8* %1 to %struct.mbedtls_des_context*
  %3 = load i8*, i8** %key.addr, align 8
  %call = call i32 @mbedtls_des_setkey_enc(%struct.mbedtls_des_context* noundef %2, i8* noundef %3) #3
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @des_setkey_dec_wrap(i8* noundef %ctx, i8* noundef %key, i32 noundef %key_bitlen) #0 {
entry:
  %ctx.addr = alloca i8*, align 8
  %key.addr = alloca i8*, align 8
  %key_bitlen.addr = alloca i32, align 4
  store i8* %ctx, i8** %ctx.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  store i32 %key_bitlen, i32* %key_bitlen.addr, align 4
  %0 = load i32, i32* %key_bitlen.addr, align 4
  %1 = load i8*, i8** %ctx.addr, align 8
  %2 = bitcast i8* %1 to %struct.mbedtls_des_context*
  %3 = load i8*, i8** %key.addr, align 8
  %call = call i32 @mbedtls_des_setkey_dec(%struct.mbedtls_des_context* noundef %2, i8* noundef %3) #3
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @des_ctx_alloc() #0 {
entry:
  %retval = alloca i8*, align 8
  %des = alloca %struct.mbedtls_des_context*, align 8
  %call = call noalias i8* @calloc(i64 noundef 1, i64 noundef 128) #4
  %0 = bitcast i8* %call to %struct.mbedtls_des_context*
  store %struct.mbedtls_des_context* %0, %struct.mbedtls_des_context** %des, align 8
  %1 = load %struct.mbedtls_des_context*, %struct.mbedtls_des_context** %des, align 8
  %cmp = icmp eq %struct.mbedtls_des_context* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.mbedtls_des_context*, %struct.mbedtls_des_context** %des, align 8
  call void @mbedtls_des_init(%struct.mbedtls_des_context* noundef %2) #3
  %3 = load %struct.mbedtls_des_context*, %struct.mbedtls_des_context** %des, align 8
  %4 = bitcast %struct.mbedtls_des_context* %3 to i8*
  store i8* %4, i8** %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load i8*, i8** %retval, align 8
  ret i8* %5
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @des_ctx_free(i8* noundef %ctx) #0 {
entry:
  %ctx.addr = alloca i8*, align 8
  store i8* %ctx, i8** %ctx.addr, align 8
  %0 = load i8*, i8** %ctx.addr, align 8
  %1 = bitcast i8* %0 to %struct.mbedtls_des_context*
  call void @mbedtls_des_free(%struct.mbedtls_des_context* noundef %1) #3
  %2 = load i8*, i8** %ctx.addr, align 8
  call void @free(i8* noundef %2) #4
  ret void
}

declare dso_local i32 @mbedtls_des_crypt_ecb(%struct.mbedtls_des_context* noundef, i8* noundef, i8* noundef) #1

declare dso_local i32 @mbedtls_des_crypt_cbc(%struct.mbedtls_des_context* noundef, i32 noundef, i64 noundef, i8* noundef, i8* noundef, i8* noundef) #1

declare dso_local i32 @mbedtls_des_setkey_enc(%struct.mbedtls_des_context* noundef, i8* noundef) #1

declare dso_local i32 @mbedtls_des_setkey_dec(%struct.mbedtls_des_context* noundef, i8* noundef) #1

declare dso_local void @mbedtls_des_init(%struct.mbedtls_des_context* noundef) #1

declare dso_local void @mbedtls_des_free(%struct.mbedtls_des_context* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @des3_crypt_ecb_wrap(i8* noundef %ctx, i32 noundef %operation, i8* noundef %input, i8* noundef %output) #0 {
entry:
  %ctx.addr = alloca i8*, align 8
  %operation.addr = alloca i32, align 4
  %input.addr = alloca i8*, align 8
  %output.addr = alloca i8*, align 8
  store i8* %ctx, i8** %ctx.addr, align 8
  store i32 %operation, i32* %operation.addr, align 4
  store i8* %input, i8** %input.addr, align 8
  store i8* %output, i8** %output.addr, align 8
  %0 = load i32, i32* %operation.addr, align 4
  %1 = load i8*, i8** %ctx.addr, align 8
  %2 = bitcast i8* %1 to %struct.mbedtls_des3_context*
  %3 = load i8*, i8** %input.addr, align 8
  %4 = load i8*, i8** %output.addr, align 8
  %call = call i32 @mbedtls_des3_crypt_ecb(%struct.mbedtls_des3_context* noundef %2, i8* noundef %3, i8* noundef %4) #3
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @des3_crypt_cbc_wrap(i8* noundef %ctx, i32 noundef %operation, i64 noundef %length, i8* noundef %iv, i8* noundef %input, i8* noundef %output) #0 {
entry:
  %ctx.addr = alloca i8*, align 8
  %operation.addr = alloca i32, align 4
  %length.addr = alloca i64, align 8
  %iv.addr = alloca i8*, align 8
  %input.addr = alloca i8*, align 8
  %output.addr = alloca i8*, align 8
  store i8* %ctx, i8** %ctx.addr, align 8
  store i32 %operation, i32* %operation.addr, align 4
  store i64 %length, i64* %length.addr, align 8
  store i8* %iv, i8** %iv.addr, align 8
  store i8* %input, i8** %input.addr, align 8
  store i8* %output, i8** %output.addr, align 8
  %0 = load i8*, i8** %ctx.addr, align 8
  %1 = bitcast i8* %0 to %struct.mbedtls_des3_context*
  %2 = load i32, i32* %operation.addr, align 4
  %3 = load i64, i64* %length.addr, align 8
  %4 = load i8*, i8** %iv.addr, align 8
  %5 = load i8*, i8** %input.addr, align 8
  %6 = load i8*, i8** %output.addr, align 8
  %call = call i32 @mbedtls_des3_crypt_cbc(%struct.mbedtls_des3_context* noundef %1, i32 noundef %2, i64 noundef %3, i8* noundef %4, i8* noundef %5, i8* noundef %6) #3
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @des3_set2key_enc_wrap(i8* noundef %ctx, i8* noundef %key, i32 noundef %key_bitlen) #0 {
entry:
  %ctx.addr = alloca i8*, align 8
  %key.addr = alloca i8*, align 8
  %key_bitlen.addr = alloca i32, align 4
  store i8* %ctx, i8** %ctx.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  store i32 %key_bitlen, i32* %key_bitlen.addr, align 4
  %0 = load i32, i32* %key_bitlen.addr, align 4
  %1 = load i8*, i8** %ctx.addr, align 8
  %2 = bitcast i8* %1 to %struct.mbedtls_des3_context*
  %3 = load i8*, i8** %key.addr, align 8
  %call = call i32 @mbedtls_des3_set2key_enc(%struct.mbedtls_des3_context* noundef %2, i8* noundef %3) #3
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @des3_set2key_dec_wrap(i8* noundef %ctx, i8* noundef %key, i32 noundef %key_bitlen) #0 {
entry:
  %ctx.addr = alloca i8*, align 8
  %key.addr = alloca i8*, align 8
  %key_bitlen.addr = alloca i32, align 4
  store i8* %ctx, i8** %ctx.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  store i32 %key_bitlen, i32* %key_bitlen.addr, align 4
  %0 = load i32, i32* %key_bitlen.addr, align 4
  %1 = load i8*, i8** %ctx.addr, align 8
  %2 = bitcast i8* %1 to %struct.mbedtls_des3_context*
  %3 = load i8*, i8** %key.addr, align 8
  %call = call i32 @mbedtls_des3_set2key_dec(%struct.mbedtls_des3_context* noundef %2, i8* noundef %3) #3
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @des3_ctx_alloc() #0 {
entry:
  %retval = alloca i8*, align 8
  %des3 = alloca %struct.mbedtls_des3_context*, align 8
  %call = call noalias i8* @calloc(i64 noundef 1, i64 noundef 384) #4
  %0 = bitcast i8* %call to %struct.mbedtls_des3_context*
  store %struct.mbedtls_des3_context* %0, %struct.mbedtls_des3_context** %des3, align 8
  %1 = load %struct.mbedtls_des3_context*, %struct.mbedtls_des3_context** %des3, align 8
  %cmp = icmp eq %struct.mbedtls_des3_context* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.mbedtls_des3_context*, %struct.mbedtls_des3_context** %des3, align 8
  call void @mbedtls_des3_init(%struct.mbedtls_des3_context* noundef %2) #3
  %3 = load %struct.mbedtls_des3_context*, %struct.mbedtls_des3_context** %des3, align 8
  %4 = bitcast %struct.mbedtls_des3_context* %3 to i8*
  store i8* %4, i8** %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load i8*, i8** %retval, align 8
  ret i8* %5
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @des3_ctx_free(i8* noundef %ctx) #0 {
entry:
  %ctx.addr = alloca i8*, align 8
  store i8* %ctx, i8** %ctx.addr, align 8
  %0 = load i8*, i8** %ctx.addr, align 8
  %1 = bitcast i8* %0 to %struct.mbedtls_des3_context*
  call void @mbedtls_des3_free(%struct.mbedtls_des3_context* noundef %1) #3
  %2 = load i8*, i8** %ctx.addr, align 8
  call void @free(i8* noundef %2) #4
  ret void
}

declare dso_local i32 @mbedtls_des3_crypt_ecb(%struct.mbedtls_des3_context* noundef, i8* noundef, i8* noundef) #1

declare dso_local i32 @mbedtls_des3_crypt_cbc(%struct.mbedtls_des3_context* noundef, i32 noundef, i64 noundef, i8* noundef, i8* noundef, i8* noundef) #1

declare dso_local i32 @mbedtls_des3_set2key_enc(%struct.mbedtls_des3_context* noundef, i8* noundef) #1

declare dso_local i32 @mbedtls_des3_set2key_dec(%struct.mbedtls_des3_context* noundef, i8* noundef) #1

declare dso_local void @mbedtls_des3_init(%struct.mbedtls_des3_context* noundef) #1

declare dso_local void @mbedtls_des3_free(%struct.mbedtls_des3_context* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @des3_set3key_enc_wrap(i8* noundef %ctx, i8* noundef %key, i32 noundef %key_bitlen) #0 {
entry:
  %ctx.addr = alloca i8*, align 8
  %key.addr = alloca i8*, align 8
  %key_bitlen.addr = alloca i32, align 4
  store i8* %ctx, i8** %ctx.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  store i32 %key_bitlen, i32* %key_bitlen.addr, align 4
  %0 = load i32, i32* %key_bitlen.addr, align 4
  %1 = load i8*, i8** %ctx.addr, align 8
  %2 = bitcast i8* %1 to %struct.mbedtls_des3_context*
  %3 = load i8*, i8** %key.addr, align 8
  %call = call i32 @mbedtls_des3_set3key_enc(%struct.mbedtls_des3_context* noundef %2, i8* noundef %3) #3
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @des3_set3key_dec_wrap(i8* noundef %ctx, i8* noundef %key, i32 noundef %key_bitlen) #0 {
entry:
  %ctx.addr = alloca i8*, align 8
  %key.addr = alloca i8*, align 8
  %key_bitlen.addr = alloca i32, align 4
  store i8* %ctx, i8** %ctx.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  store i32 %key_bitlen, i32* %key_bitlen.addr, align 4
  %0 = load i32, i32* %key_bitlen.addr, align 4
  %1 = load i8*, i8** %ctx.addr, align 8
  %2 = bitcast i8* %1 to %struct.mbedtls_des3_context*
  %3 = load i8*, i8** %key.addr, align 8
  %call = call i32 @mbedtls_des3_set3key_dec(%struct.mbedtls_des3_context* noundef %2, i8* noundef %3) #3
  ret i32 %call
}

declare dso_local i32 @mbedtls_des3_set3key_enc(%struct.mbedtls_des3_context* noundef, i8* noundef) #1

declare dso_local i32 @mbedtls_des3_set3key_dec(%struct.mbedtls_des3_context* noundef, i8* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chacha20_stream_wrap(i8* noundef %ctx, i64 noundef %length, i8* noundef %input, i8* noundef %output) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca i8*, align 8
  %length.addr = alloca i64, align 8
  %input.addr = alloca i8*, align 8
  %output.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  store i8* %ctx, i8** %ctx.addr, align 8
  store i64 %length, i64* %length.addr, align 8
  store i8* %input, i8** %input.addr, align 8
  store i8* %output, i8** %output.addr, align 8
  store i32 -110, i32* %ret, align 4
  %0 = load i8*, i8** %ctx.addr, align 8
  %1 = bitcast i8* %0 to %struct.mbedtls_chacha20_context*
  %2 = load i64, i64* %length.addr, align 8
  %3 = load i8*, i8** %input.addr, align 8
  %4 = load i8*, i8** %output.addr, align 8
  %call = call i32 @mbedtls_chacha20_update(%struct.mbedtls_chacha20_context* noundef %1, i64 noundef %2, i8* noundef %3, i8* noundef %4) #3
  store i32 %call, i32* %ret, align 4
  %5 = load i32, i32* %ret, align 4
  %cmp = icmp eq i32 %5, -81
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -24832, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %6 = load i32, i32* %ret, align 4
  store i32 %6, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %7 = load i32, i32* %retval, align 4
  ret i32 %7
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chacha20_setkey_wrap(i8* noundef %ctx, i8* noundef %key, i32 noundef %key_bitlen) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca i8*, align 8
  %key.addr = alloca i8*, align 8
  %key_bitlen.addr = alloca i32, align 4
  store i8* %ctx, i8** %ctx.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  store i32 %key_bitlen, i32* %key_bitlen.addr, align 4
  %0 = load i32, i32* %key_bitlen.addr, align 4
  %cmp = icmp ne i32 %0, 256
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -24832, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %ctx.addr, align 8
  %2 = bitcast i8* %1 to %struct.mbedtls_chacha20_context*
  %3 = load i8*, i8** %key.addr, align 8
  %call = call i32 @mbedtls_chacha20_setkey(%struct.mbedtls_chacha20_context* noundef %2, i8* noundef %3) #3
  %cmp1 = icmp ne i32 0, %call
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store i32 -24832, i32* %retval, align 4
  br label %return

if.end3:                                          ; preds = %if.end
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end3, %if.then2, %if.then
  %4 = load i32, i32* %retval, align 4
  ret i32 %4
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @chacha20_ctx_alloc() #0 {
entry:
  %retval = alloca i8*, align 8
  %ctx = alloca %struct.mbedtls_chacha20_context*, align 8
  %call = call noalias i8* @calloc(i64 noundef 1, i64 noundef 136) #4
  %0 = bitcast i8* %call to %struct.mbedtls_chacha20_context*
  store %struct.mbedtls_chacha20_context* %0, %struct.mbedtls_chacha20_context** %ctx, align 8
  %1 = load %struct.mbedtls_chacha20_context*, %struct.mbedtls_chacha20_context** %ctx, align 8
  %cmp = icmp eq %struct.mbedtls_chacha20_context* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.mbedtls_chacha20_context*, %struct.mbedtls_chacha20_context** %ctx, align 8
  call void @mbedtls_chacha20_init(%struct.mbedtls_chacha20_context* noundef %2) #3
  %3 = load %struct.mbedtls_chacha20_context*, %struct.mbedtls_chacha20_context** %ctx, align 8
  %4 = bitcast %struct.mbedtls_chacha20_context* %3 to i8*
  store i8* %4, i8** %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load i8*, i8** %retval, align 8
  ret i8* %5
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @chacha20_ctx_free(i8* noundef %ctx) #0 {
entry:
  %ctx.addr = alloca i8*, align 8
  store i8* %ctx, i8** %ctx.addr, align 8
  %0 = load i8*, i8** %ctx.addr, align 8
  %1 = bitcast i8* %0 to %struct.mbedtls_chacha20_context*
  call void @mbedtls_chacha20_free(%struct.mbedtls_chacha20_context* noundef %1) #3
  %2 = load i8*, i8** %ctx.addr, align 8
  call void @free(i8* noundef %2) #4
  ret void
}

declare dso_local i32 @mbedtls_chacha20_update(%struct.mbedtls_chacha20_context* noundef, i64 noundef, i8* noundef, i8* noundef) #1

declare dso_local i32 @mbedtls_chacha20_setkey(%struct.mbedtls_chacha20_context* noundef, i8* noundef) #1

declare dso_local void @mbedtls_chacha20_init(%struct.mbedtls_chacha20_context* noundef) #1

declare dso_local void @mbedtls_chacha20_free(%struct.mbedtls_chacha20_context* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chachapoly_setkey_wrap(i8* noundef %ctx, i8* noundef %key, i32 noundef %key_bitlen) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca i8*, align 8
  %key.addr = alloca i8*, align 8
  %key_bitlen.addr = alloca i32, align 4
  store i8* %ctx, i8** %ctx.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  store i32 %key_bitlen, i32* %key_bitlen.addr, align 4
  %0 = load i32, i32* %key_bitlen.addr, align 4
  %cmp = icmp ne i32 %0, 256
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -24832, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %ctx.addr, align 8
  %2 = bitcast i8* %1 to %struct.mbedtls_chachapoly_context*
  %3 = load i8*, i8** %key.addr, align 8
  %call = call i32 @mbedtls_chachapoly_setkey(%struct.mbedtls_chachapoly_context* noundef %2, i8* noundef %3) #3
  %cmp1 = icmp ne i32 0, %call
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store i32 -24832, i32* %retval, align 4
  br label %return

if.end3:                                          ; preds = %if.end
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end3, %if.then2, %if.then
  %4 = load i32, i32* %retval, align 4
  ret i32 %4
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @chachapoly_ctx_alloc() #0 {
entry:
  %retval = alloca i8*, align 8
  %ctx = alloca %struct.mbedtls_chachapoly_context*, align 8
  %call = call noalias i8* @calloc(i64 noundef 1, i64 noundef 240) #4
  %0 = bitcast i8* %call to %struct.mbedtls_chachapoly_context*
  store %struct.mbedtls_chachapoly_context* %0, %struct.mbedtls_chachapoly_context** %ctx, align 8
  %1 = load %struct.mbedtls_chachapoly_context*, %struct.mbedtls_chachapoly_context** %ctx, align 8
  %cmp = icmp eq %struct.mbedtls_chachapoly_context* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.mbedtls_chachapoly_context*, %struct.mbedtls_chachapoly_context** %ctx, align 8
  call void @mbedtls_chachapoly_init(%struct.mbedtls_chachapoly_context* noundef %2) #3
  %3 = load %struct.mbedtls_chachapoly_context*, %struct.mbedtls_chachapoly_context** %ctx, align 8
  %4 = bitcast %struct.mbedtls_chachapoly_context* %3 to i8*
  store i8* %4, i8** %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load i8*, i8** %retval, align 8
  ret i8* %5
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @chachapoly_ctx_free(i8* noundef %ctx) #0 {
entry:
  %ctx.addr = alloca i8*, align 8
  store i8* %ctx, i8** %ctx.addr, align 8
  %0 = load i8*, i8** %ctx.addr, align 8
  %1 = bitcast i8* %0 to %struct.mbedtls_chachapoly_context*
  call void @mbedtls_chachapoly_free(%struct.mbedtls_chachapoly_context* noundef %1) #3
  %2 = load i8*, i8** %ctx.addr, align 8
  call void @free(i8* noundef %2) #4
  ret void
}

declare dso_local i32 @mbedtls_chachapoly_setkey(%struct.mbedtls_chachapoly_context* noundef, i8* noundef) #1

declare dso_local void @mbedtls_chachapoly_init(%struct.mbedtls_chachapoly_context* noundef) #1

declare dso_local void @mbedtls_chachapoly_free(%struct.mbedtls_chachapoly_context* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kw_aes_setkey_wrap(i8* noundef %ctx, i8* noundef %key, i32 noundef %key_bitlen) #0 {
entry:
  %ctx.addr = alloca i8*, align 8
  %key.addr = alloca i8*, align 8
  %key_bitlen.addr = alloca i32, align 4
  store i8* %ctx, i8** %ctx.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  store i32 %key_bitlen, i32* %key_bitlen.addr, align 4
  %0 = load i8*, i8** %ctx.addr, align 8
  %1 = bitcast i8* %0 to %struct.mbedtls_nist_kw_context*
  %2 = load i8*, i8** %key.addr, align 8
  %3 = load i32, i32* %key_bitlen.addr, align 4
  %call = call i32 @mbedtls_nist_kw_setkey(%struct.mbedtls_nist_kw_context* noundef %1, i32 noundef 2, i8* noundef %2, i32 noundef %3, i32 noundef 1) #3
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kw_aes_setkey_unwrap(i8* noundef %ctx, i8* noundef %key, i32 noundef %key_bitlen) #0 {
entry:
  %ctx.addr = alloca i8*, align 8
  %key.addr = alloca i8*, align 8
  %key_bitlen.addr = alloca i32, align 4
  store i8* %ctx, i8** %ctx.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  store i32 %key_bitlen, i32* %key_bitlen.addr, align 4
  %0 = load i8*, i8** %ctx.addr, align 8
  %1 = bitcast i8* %0 to %struct.mbedtls_nist_kw_context*
  %2 = load i8*, i8** %key.addr, align 8
  %3 = load i32, i32* %key_bitlen.addr, align 4
  %call = call i32 @mbedtls_nist_kw_setkey(%struct.mbedtls_nist_kw_context* noundef %1, i32 noundef 2, i8* noundef %2, i32 noundef %3, i32 noundef 0) #3
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @kw_ctx_alloc() #0 {
entry:
  %ctx = alloca i8*, align 8
  %call = call noalias i8* @calloc(i64 noundef 1, i64 noundef 96) #4
  store i8* %call, i8** %ctx, align 8
  %0 = load i8*, i8** %ctx, align 8
  %cmp = icmp ne i8* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %ctx, align 8
  %2 = bitcast i8* %1 to %struct.mbedtls_nist_kw_context*
  call void @mbedtls_nist_kw_init(%struct.mbedtls_nist_kw_context* noundef %2) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %ctx, align 8
  ret i8* %3
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kw_ctx_free(i8* noundef %ctx) #0 {
entry:
  %ctx.addr = alloca i8*, align 8
  store i8* %ctx, i8** %ctx.addr, align 8
  %0 = load i8*, i8** %ctx.addr, align 8
  %1 = bitcast i8* %0 to %struct.mbedtls_nist_kw_context*
  call void @mbedtls_nist_kw_free(%struct.mbedtls_nist_kw_context* noundef %1) #3
  %2 = load i8*, i8** %ctx.addr, align 8
  call void @free(i8* noundef %2) #4
  ret void
}

declare dso_local i32 @mbedtls_nist_kw_setkey(%struct.mbedtls_nist_kw_context* noundef, i32 noundef, i8* noundef, i32 noundef, i32 noundef) #1

declare dso_local void @mbedtls_nist_kw_init(%struct.mbedtls_nist_kw_context* noundef) #1

declare dso_local void @mbedtls_nist_kw_free(%struct.mbedtls_nist_kw_context* noundef) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin "no-builtins" }
attributes #4 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.0"}
