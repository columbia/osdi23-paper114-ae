; ModuleID = 'test/benchmark.c'
source_filename = "test/benchmark.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.todo_list = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.mbedtls_ecp_curve_info = type { i32, i16, i16, i8* }
%struct.mbedtls_des3_context = type { [96 x i32] }
%struct.mbedtls_des_context = type { [32 x i32] }
%struct.mbedtls_cipher_info_t = type { i32, i32, i32, i8*, i32, i32, i32, %struct.mbedtls_cipher_base_t* }
%struct.mbedtls_cipher_base_t = type opaque
%struct.mbedtls_aes_context = type { i32, i32*, [68 x i32] }
%struct.mbedtls_aes_xts_context = type { %struct.mbedtls_aes_context, %struct.mbedtls_aes_context }
%struct.mbedtls_gcm_context = type { %struct.mbedtls_cipher_context_t, [16 x i64], [16 x i64], i64, i64, [16 x i8], [16 x i8], [16 x i8], i32 }
%struct.mbedtls_cipher_context_t = type { %struct.mbedtls_cipher_info_t*, i32, i32, void (i8*, i64, i64)*, i32 (i8*, i64, i64*)*, [16 x i8], i64, [16 x i8], i64, i8*, %struct.mbedtls_cmac_context_t* }
%struct.mbedtls_cmac_context_t = type { [16 x i8], [16 x i8], i64 }
%struct.mbedtls_ccm_context = type { [16 x i8], [16 x i8], %struct.mbedtls_cipher_context_t, i64, i64, i64, i64, i8, i8, i32 }
%struct.mbedtls_chachapoly_context = type { %struct.mbedtls_chacha20_context, %struct.mbedtls_poly1305_context, i64, i64, i32, i32 }
%struct.mbedtls_chacha20_context = type { [16 x i32], [64 x i8], i64 }
%struct.mbedtls_poly1305_context = type { [4 x i32], [4 x i32], [5 x i32], [16 x i8], i64 }
%struct.mbedtls_aria_context = type { i8, [17 x [4 x i32]] }
%struct.mbedtls_camellia_context = type { i32, [68 x i32] }
%struct.mbedtls_ctr_drbg_context = type { [16 x i8], i32, i32, i64, i32, %struct.mbedtls_aes_context, i32 (i8*, i8*, i64)*, i8* }
%struct.mbedtls_hmac_drbg_context = type { %struct.mbedtls_md_context_t, [64 x i8], i32, i64, i32, i32, i32 (i8*, i8*, i64)*, i8* }
%struct.mbedtls_md_context_t = type { %struct.mbedtls_md_info_t*, i8*, i8* }
%struct.mbedtls_md_info_t = type opaque
%struct.mbedtls_rsa_context = type { i32, i64, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, i32, i32 }
%struct.mbedtls_mpi = type { i32, i64, i64* }
%struct.mbedtls_dhm_context = type { %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi }
%struct.mbedtls_ecp_keypair = type { %struct.mbedtls_ecp_group, %struct.mbedtls_mpi, %struct.mbedtls_ecp_point }
%struct.mbedtls_ecp_group = type { i32, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_ecp_point, %struct.mbedtls_mpi, i64, i64, i32, i32 (%struct.mbedtls_mpi*)*, i32 (%struct.mbedtls_ecp_point*, i8*)*, i32 (%struct.mbedtls_ecp_point*, i8*)*, i8*, %struct.mbedtls_ecp_point*, i64 }
%struct.mbedtls_ecp_point = type { %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi }
%struct.mbedtls_ecdh_context = type { i8, i32, i32, %union.anon }
%union.anon = type { %struct.mbedtls_ecdh_context_mbed }
%struct.mbedtls_ecdh_context_mbed = type { %struct.mbedtls_ecp_group, %struct.mbedtls_mpi, %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point, %struct.mbedtls_mpi }

@mbedtls_timing_alarmed = dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"md5\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"ripemd160\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"sha1\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"sha256\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"sha512\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"des3\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"des\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"aes_cbc\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"aes_xts\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"aes_gcm\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"aes_ccm\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"chachapoly\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"aes_cmac\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"des3_cmac\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"aria\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"camellia\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"chacha20\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"poly1305\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"ctr_drbg\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"hmac_drbg\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"rsa\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"dhm\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"ecdsa\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"ecdh\00", align 1
@.str.24 = private unnamed_addr constant [25 x i8] c"Unrecognized option: %s\0A\00", align 1
@.str.25 = private unnamed_addr constant [210 x i8] c"Available options: md5, ripemd160, sha1, sha256, sha512,\0Ades3, des, camellia, chacha20,\0Aaes_cbc, aes_gcm, aes_ccm, aes_xts, chachapoly,\0Aaes_cmac, des3_cmac, poly1305\0Actr_drbg, hmac_drbg\0Arsa, dhm, ecdsa, ecdh.\0A\00", align 1
@.str.26 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@buf = dso_local global [1024 x i8] zeroinitializer, align 16
@.str.27 = private unnamed_addr constant [12 x i8] c"  %-24s :  \00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"MD5\00", align 1
@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str.29 = private unnamed_addr constant [12 x i8] c"FAILED: %s\0A\00", align 1
@.str.30 = private unnamed_addr constant [31 x i8] c"%9lu KiB/s,  %9lu cycles/byte\0A\00", align 1
@.str.31 = private unnamed_addr constant [10 x i8] c"RIPEMD160\00", align 1
@.str.32 = private unnamed_addr constant [6 x i8] c"SHA-1\00", align 1
@.str.33 = private unnamed_addr constant [8 x i8] c"SHA-256\00", align 1
@.str.34 = private unnamed_addr constant [8 x i8] c"SHA-512\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"3DES\00", align 1
@.str.36 = private unnamed_addr constant [4 x i8] c"DES\00", align 1
@.str.37 = private unnamed_addr constant [10 x i8] c"3DES-CMAC\00", align 1
@.str.38 = private unnamed_addr constant [11 x i8] c"AES-CBC-%d\00", align 1
@.str.39 = private unnamed_addr constant [34 x i8] c"Feature not supported. Skipping.\0A\00", align 1
@.str.40 = private unnamed_addr constant [11 x i8] c"AES-XTS-%d\00", align 1
@.str.41 = private unnamed_addr constant [11 x i8] c"AES-GCM-%d\00", align 1
@.str.42 = private unnamed_addr constant [11 x i8] c"AES-CCM-%d\00", align 1
@.str.43 = private unnamed_addr constant [18 x i8] c"ChaCha20-Poly1305\00", align 1
@.str.44 = private unnamed_addr constant [12 x i8] c"AES-CMAC-%d\00", align 1
@.str.45 = private unnamed_addr constant [17 x i8] c"AES-CMAC-PRF-128\00", align 1
@.str.46 = private unnamed_addr constant [12 x i8] c"ARIA-CBC-%d\00", align 1
@.str.47 = private unnamed_addr constant [16 x i8] c"CAMELLIA-CBC-%d\00", align 1
@.str.48 = private unnamed_addr constant [9 x i8] c"ChaCha20\00", align 1
@.str.49 = private unnamed_addr constant [9 x i8] c"Poly1305\00", align 1
@.str.50 = private unnamed_addr constant [16 x i8] c"CTR_DRBG (NOPR)\00", align 1
@.str.51 = private unnamed_addr constant [14 x i8] c"CTR_DRBG (PR)\00", align 1
@.str.52 = private unnamed_addr constant [23 x i8] c"HMAC_DRBG SHA-1 (NOPR)\00", align 1
@.str.53 = private unnamed_addr constant [21 x i8] c"HMAC_DRBG SHA-1 (PR)\00", align 1
@.str.54 = private unnamed_addr constant [25 x i8] c"HMAC_DRBG SHA-256 (NOPR)\00", align 1
@.str.55 = private unnamed_addr constant [23 x i8] c"HMAC_DRBG SHA-256 (PR)\00", align 1
@.str.56 = private unnamed_addr constant [7 x i8] c"RSA-%d\00", align 1
@.str.57 = private unnamed_addr constant [34 x i8] c"Feature Not Supported. Skipping.\0A\00", align 1
@.str.58 = private unnamed_addr constant [15 x i8] c"%6lu  public/s\00", align 1
@.str.59 = private unnamed_addr constant [15 x i8] c"%6lu private/s\00", align 1
@__const.main.dhm_sizes = private unnamed_addr constant [2 x i32] [i32 2048, i32 3072], align 4
@main.dhm_P_2048 = internal constant [256 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\C9\0F\DA\A2!h\C24\C4\C6b\8B\80\DC\1C\D1)\02N\08\8Ag\CCt\02\0B\BE\A6;\13\9B\22QJ\08y\8E4\04\DD\EF\95\19\B3\CD:C\1B0+\0Am\F2_\147O\E15mmQ\C2E\E4\85\B5vb^~\C6\F4LB\E9\A67\EDk\0B\FF\\\B6\F4\06\B7\ED\EE8k\FBZ\89\9F\A5\AE\9F$\11|K\1F\E6I(fQ\EC\E4[=\C2\00|\B8\A1c\BF\05\98\DAH6\1CU\D3\9Ai\16?\A8\FD$\CF_\83e]#\DC\A3\AD\96\1Cb\F3V \85R\BB\9E\D5)\07p\96\96mg\0C5NJ\BC\98\04\F1tl\08\CA\18!|2\90^F.6\CE;\E3\9Ew,\18\0E\86\03\9B'\83\A2\EC\07\A2\8F\B5\C5]\F0oLR\C9\DE+\CB\F6\95X\17\189\95I|\EA\95j\E5\15\D2&\18\98\FA\05\10\15r\8EZ\8A\AC\AAh\FF\FF\FF\FF\FF\FF\FF\FF", align 16
@main.dhm_P_3072 = internal constant [384 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\C9\0F\DA\A2!h\C24\C4\C6b\8B\80\DC\1C\D1)\02N\08\8Ag\CCt\02\0B\BE\A6;\13\9B\22QJ\08y\8E4\04\DD\EF\95\19\B3\CD:C\1B0+\0Am\F2_\147O\E15mmQ\C2E\E4\85\B5vb^~\C6\F4LB\E9\A67\EDk\0B\FF\\\B6\F4\06\B7\ED\EE8k\FBZ\89\9F\A5\AE\9F$\11|K\1F\E6I(fQ\EC\E4[=\C2\00|\B8\A1c\BF\05\98\DAH6\1CU\D3\9Ai\16?\A8\FD$\CF_\83e]#\DC\A3\AD\96\1Cb\F3V \85R\BB\9E\D5)\07p\96\96mg\0C5NJ\BC\98\04\F1tl\08\CA\18!|2\90^F.6\CE;\E3\9Ew,\18\0E\86\03\9B'\83\A2\EC\07\A2\8F\B5\C5]\F0oLR\C9\DE+\CB\F6\95X\17\189\95I|\EA\95j\E5\15\D2&\18\98\FA\05\10\15r\8EZ\8A\AA\C4-\AD3\17\0D\04Pz3\A8U!\AB\DF\1C\BAd\EC\FB\85\04X\DB\EF\0A\8A\EAqW]\06\0C}\B3\97\0F\85\A6\E1\E4\C7\AB\F5\AE\8C\DB\093\D7\1E\8C\94\E0J%a\9D\CE\E3\D2&\1A\D2\EEk\F1/\FA\06\D9\8A\08d\D8v\02s>\C8jdR\1F+\18\17{ \0C\BB\E1\17Wza]lw\09\88\C0\BA\D9F\E2\08\E2O\A0t\E5\AB1C\DB[\FC\E0\FD\10\8EK\82\D1 \A9:\D2\CA\FF\FF\FF\FF\FF\FF\FF\FF", align 16
@main.dhm_G_2048 = internal constant [1 x i8] c"\02", align 1
@main.dhm_G_3072 = internal constant [1 x i8] c"\02", align 1
@__const.main.dhm_P = private unnamed_addr constant [2 x i8*] [i8* getelementptr inbounds ([256 x i8], [256 x i8]* @main.dhm_P_2048, i32 0, i32 0), i8* getelementptr inbounds ([384 x i8], [384 x i8]* @main.dhm_P_3072, i32 0, i32 0)], align 16
@__const.main.dhm_P_size = private unnamed_addr constant [2 x i64] [i64 256, i64 384], align 16
@__const.main.dhm_G = private unnamed_addr constant [2 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @main.dhm_G_2048, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @main.dhm_G_3072, i32 0, i32 0)], align 16
@__const.main.dhm_G_size = private unnamed_addr constant [2 x i64] [i64 1, i64 1], align 16
@.str.60 = private unnamed_addr constant [7 x i8] c"DHE-%d\00", align 1
@.str.61 = private unnamed_addr constant [17 x i8] c"%6lu handshake/s\00", align 1
@.str.62 = private unnamed_addr constant [6 x i8] c"DH-%d\00", align 1
@.str.63 = private unnamed_addr constant [9 x i8] c"ECDSA-%s\00", align 1
@.str.64 = private unnamed_addr constant [12 x i8] c"%6lu sign/s\00", align 1
@.str.65 = private unnamed_addr constant [14 x i8] c"%6lu verify/s\00", align 1
@.str.66 = private unnamed_addr constant [9 x i8] c"ECDHE-%s\00", align 1
@.str.67 = private unnamed_addr constant [22 x i8] c"%6lu full handshake/s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 noundef %argc, i8** noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  %tmp = alloca [200 x i8], align 16
  %title = alloca [25 x i8], align 16
  %todo = alloca %struct.todo_list, align 1
  %single_curve = alloca [2 x %struct.mbedtls_ecp_curve_info], align 16
  %curve_list = alloca %struct.mbedtls_ecp_curve_info*, align 8
  %ii = alloca i64, align 8
  %jj = alloca i64, align 8
  %tsc = alloca i64, align 8
  %ret = alloca i32, align 4
  %ii227 = alloca i64, align 8
  %jj228 = alloca i64, align 8
  %tsc229 = alloca i64, align 8
  %ret230 = alloca i32, align 4
  %ii277 = alloca i64, align 8
  %jj278 = alloca i64, align 8
  %tsc279 = alloca i64, align 8
  %ret280 = alloca i32, align 4
  %ii327 = alloca i64, align 8
  %jj328 = alloca i64, align 8
  %tsc329 = alloca i64, align 8
  %ret330 = alloca i32, align 4
  %ii377 = alloca i64, align 8
  %jj378 = alloca i64, align 8
  %tsc379 = alloca i64, align 8
  %ret380 = alloca i32, align 4
  %des3426 = alloca %struct.mbedtls_des3_context, align 4
  %ii433 = alloca i64, align 8
  %jj434 = alloca i64, align 8
  %tsc435 = alloca i64, align 8
  %ret436 = alloca i32, align 4
  %des482 = alloca %struct.mbedtls_des_context, align 4
  %ii489 = alloca i64, align 8
  %jj490 = alloca i64, align 8
  %tsc491 = alloca i64, align 8
  %ret492 = alloca i32, align 4
  %output = alloca [8 x i8], align 1
  %cipher_info = alloca %struct.mbedtls_cipher_info_t*, align 8
  %ii543 = alloca i64, align 8
  %jj544 = alloca i64, align 8
  %tsc545 = alloca i64, align 8
  %ret546 = alloca i32, align 4
  %keysize = alloca i32, align 4
  %aes = alloca %struct.mbedtls_aes_context, align 8
  %CHECK_AND_CONTINUE_ret = alloca i32, align 4
  %ii613 = alloca i64, align 8
  %jj614 = alloca i64, align 8
  %tsc615 = alloca i64, align 8
  %ret616 = alloca i32, align 4
  %keysize665 = alloca i32, align 4
  %ctx = alloca %struct.mbedtls_aes_xts_context, align 8
  %CHECK_AND_CONTINUE_ret674 = alloca i32, align 4
  %ii687 = alloca i64, align 8
  %jj688 = alloca i64, align 8
  %tsc689 = alloca i64, align 8
  %ret690 = alloca i32, align 4
  %keysize740 = alloca i32, align 4
  %gcm = alloca %struct.mbedtls_gcm_context, align 8
  %ii752 = alloca i64, align 8
  %jj753 = alloca i64, align 8
  %tsc754 = alloca i64, align 8
  %ret755 = alloca i32, align 4
  %keysize807 = alloca i32, align 4
  %ccm = alloca %struct.mbedtls_ccm_context, align 8
  %ii819 = alloca i64, align 8
  %jj820 = alloca i64, align 8
  %tsc821 = alloca i64, align 8
  %ret822 = alloca i32, align 4
  %chachapoly874 = alloca %struct.mbedtls_chachapoly_context, align 8
  %ii883 = alloca i64, align 8
  %jj884 = alloca i64, align 8
  %tsc885 = alloca i64, align 8
  %ret886 = alloca i32, align 4
  %output935 = alloca [16 x i8], align 16
  %cipher_info936 = alloca %struct.mbedtls_cipher_info_t*, align 8
  %cipher_type = alloca i32, align 4
  %keysize937 = alloca i32, align 4
  %ii948 = alloca i64, align 8
  %jj949 = alloca i64, align 8
  %tsc950 = alloca i64, align 8
  %ret951 = alloca i32, align 4
  %ii1008 = alloca i64, align 8
  %jj1009 = alloca i64, align 8
  %tsc1010 = alloca i64, align 8
  %ret1011 = alloca i32, align 4
  %keysize1063 = alloca i32, align 4
  %aria1064 = alloca %struct.mbedtls_aria_context, align 4
  %ii1077 = alloca i64, align 8
  %jj1078 = alloca i64, align 8
  %tsc1079 = alloca i64, align 8
  %ret1080 = alloca i32, align 4
  %keysize1134 = alloca i32, align 4
  %camellia1135 = alloca %struct.mbedtls_camellia_context, align 4
  %ii1148 = alloca i64, align 8
  %jj1149 = alloca i64, align 8
  %tsc1150 = alloca i64, align 8
  %ret1151 = alloca i32, align 4
  %ii1206 = alloca i64, align 8
  %jj1207 = alloca i64, align 8
  %tsc1208 = alloca i64, align 8
  %ret1209 = alloca i32, align 4
  %ii1258 = alloca i64, align 8
  %jj1259 = alloca i64, align 8
  %tsc1260 = alloca i64, align 8
  %ret1261 = alloca i32, align 4
  %ctr_drbg1309 = alloca %struct.mbedtls_ctr_drbg_context, align 8
  %ii1316 = alloca i64, align 8
  %jj1317 = alloca i64, align 8
  %tsc1318 = alloca i64, align 8
  %ret1319 = alloca i32, align 4
  %ii1369 = alloca i64, align 8
  %jj1370 = alloca i64, align 8
  %tsc1371 = alloca i64, align 8
  %ret1372 = alloca i32, align 4
  %hmac_drbg1420 = alloca %struct.mbedtls_hmac_drbg_context, align 8
  %md_info = alloca %struct.mbedtls_md_info_t*, align 8
  %ii1432 = alloca i64, align 8
  %jj1433 = alloca i64, align 8
  %tsc1434 = alloca i64, align 8
  %ret1435 = alloca i32, align 4
  %ii1485 = alloca i64, align 8
  %jj1486 = alloca i64, align 8
  %tsc1487 = alloca i64, align 8
  %ret1488 = alloca i32, align 4
  %ii1543 = alloca i64, align 8
  %jj1544 = alloca i64, align 8
  %tsc1545 = alloca i64, align 8
  %ret1546 = alloca i32, align 4
  %ii1596 = alloca i64, align 8
  %jj1597 = alloca i64, align 8
  %tsc1598 = alloca i64, align 8
  %ret1599 = alloca i32, align 4
  %keysize1647 = alloca i32, align 4
  %rsa1648 = alloca %struct.mbedtls_rsa_context, align 8
  %ii1657 = alloca i64, align 8
  %ret1658 = alloca i32, align 4
  %ii1692 = alloca i64, align 8
  %ret1693 = alloca i32, align 4
  %dhm_sizes = alloca [2 x i32], align 4
  %dhm_P = alloca [2 x i8*], align 16
  %dhm_P_size = alloca [2 x i64], align 16
  %dhm_G = alloca [2 x i8*], align 16
  %dhm_G_size = alloca [2 x i64], align 16
  %dhm1733 = alloca %struct.mbedtls_dhm_context, align 8
  %olen = alloca i64, align 8
  %n = alloca i64, align 8
  %ii1769 = alloca i64, align 8
  %ret1770 = alloca i32, align 4
  %ii1811 = alloca i64, align 8
  %ret1812 = alloca i32, align 4
  %ecdsa1853 = alloca %struct.mbedtls_ecp_keypair, align 8
  %curve_info = alloca %struct.mbedtls_ecp_curve_info*, align 8
  %sig_len = alloca i64, align 8
  %ii1873 = alloca i64, align 8
  %ret1874 = alloca i32, align 4
  %ii1938 = alloca i64, align 8
  %ret1939 = alloca i32, align 4
  %ecdh_srv = alloca %struct.mbedtls_ecdh_context, align 8
  %ecdh_cli = alloca %struct.mbedtls_ecdh_context, align 8
  %buf_srv = alloca [1024 x i8], align 16
  %buf_cli = alloca [1024 x i8], align 16
  %curve_info1982 = alloca %struct.mbedtls_ecp_curve_info*, align 8
  %olen1983 = alloca i64, align 8
  %ii1998 = alloca i64, align 8
  %ret1999 = alloca i32, align 4
  %p_srv = alloca i8*, align 8
  %CHECK_AND_CONTINUE_ret2011 = alloca i32, align 4
  %CHECK_AND_CONTINUE_ret2024 = alloca i32, align 4
  %CHECK_AND_CONTINUE_ret2037 = alloca i32, align 4
  %CHECK_AND_CONTINUE_ret2049 = alloca i32, align 4
  %CHECK_AND_CONTINUE_ret2062 = alloca i32, align 4
  %CHECK_AND_CONTINUE_ret2075 = alloca i32, align 4
  %CHECK_AND_CONTINUE_ret2088 = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %0 = bitcast [2 x %struct.mbedtls_ecp_curve_info]* %single_curve to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 32, i1 false)
  %call = call %struct.mbedtls_ecp_curve_info* @mbedtls_ecp_curve_list() #7
  store %struct.mbedtls_ecp_curve_info* %call, %struct.mbedtls_ecp_curve_info** %curve_list, align 8
  %1 = load %struct.mbedtls_ecp_curve_info*, %struct.mbedtls_ecp_curve_info** %curve_list, align 8
  %2 = load i32, i32* %argc.addr, align 4
  %cmp = icmp sle i32 %2, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = bitcast %struct.todo_list* %todo to i8*
  %call1 = call i8* @memset(i8* noundef %3, i32 noundef 1, i64 noundef 24) #8
  br label %if.end180

if.else:                                          ; preds = %entry
  %4 = bitcast %struct.todo_list* %todo to i8*
  %call2 = call i8* @memset(i8* noundef %4, i32 noundef 0, i64 noundef 24) #8
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %5 = load i32, i32* %i, align 4
  %6 = load i32, i32* %argc.addr, align 4
  %cmp3 = icmp slt i32 %5, %6
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i8**, i8*** %argv.addr, align 8
  %8 = load i32, i32* %i, align 4
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds i8*, i8** %7, i64 %idxprom
  %9 = load i8*, i8** %arrayidx, align 8
  %call4 = call i32 @strcmp(i8* noundef %9, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #9
  %cmp5 = icmp eq i32 %call4, 0
  br i1 %cmp5, label %if.then6, label %if.else7

if.then6:                                         ; preds = %for.body
  %md5 = getelementptr inbounds %struct.todo_list, %struct.todo_list* %todo, i32 0, i32 0
  store i8 1, i8* %md5, align 1
  br label %if.end179

if.else7:                                         ; preds = %for.body
  %10 = load i8**, i8*** %argv.addr, align 8
  %11 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %11 to i64
  %arrayidx9 = getelementptr inbounds i8*, i8** %10, i64 %idxprom8
  %12 = load i8*, i8** %arrayidx9, align 8
  %call10 = call i32 @strcmp(i8* noundef %12, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0)) #9
  %cmp11 = icmp eq i32 %call10, 0
  br i1 %cmp11, label %if.then12, label %if.else13

if.then12:                                        ; preds = %if.else7
  %ripemd160 = getelementptr inbounds %struct.todo_list, %struct.todo_list* %todo, i32 0, i32 1
  store i8 1, i8* %ripemd160, align 1
  br label %if.end178

if.else13:                                        ; preds = %if.else7
  %13 = load i8**, i8*** %argv.addr, align 8
  %14 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %14 to i64
  %arrayidx15 = getelementptr inbounds i8*, i8** %13, i64 %idxprom14
  %15 = load i8*, i8** %arrayidx15, align 8
  %call16 = call i32 @strcmp(i8* noundef %15, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #9
  %cmp17 = icmp eq i32 %call16, 0
  br i1 %cmp17, label %if.then18, label %if.else19

if.then18:                                        ; preds = %if.else13
  %sha1 = getelementptr inbounds %struct.todo_list, %struct.todo_list* %todo, i32 0, i32 2
  store i8 1, i8* %sha1, align 1
  br label %if.end177

if.else19:                                        ; preds = %if.else13
  %16 = load i8**, i8*** %argv.addr, align 8
  %17 = load i32, i32* %i, align 4
  %idxprom20 = sext i32 %17 to i64
  %arrayidx21 = getelementptr inbounds i8*, i8** %16, i64 %idxprom20
  %18 = load i8*, i8** %arrayidx21, align 8
  %call22 = call i32 @strcmp(i8* noundef %18, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0)) #9
  %cmp23 = icmp eq i32 %call22, 0
  br i1 %cmp23, label %if.then24, label %if.else25

if.then24:                                        ; preds = %if.else19
  %sha256 = getelementptr inbounds %struct.todo_list, %struct.todo_list* %todo, i32 0, i32 3
  store i8 1, i8* %sha256, align 1
  br label %if.end176

if.else25:                                        ; preds = %if.else19
  %19 = load i8**, i8*** %argv.addr, align 8
  %20 = load i32, i32* %i, align 4
  %idxprom26 = sext i32 %20 to i64
  %arrayidx27 = getelementptr inbounds i8*, i8** %19, i64 %idxprom26
  %21 = load i8*, i8** %arrayidx27, align 8
  %call28 = call i32 @strcmp(i8* noundef %21, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0)) #9
  %cmp29 = icmp eq i32 %call28, 0
  br i1 %cmp29, label %if.then30, label %if.else31

if.then30:                                        ; preds = %if.else25
  %sha512 = getelementptr inbounds %struct.todo_list, %struct.todo_list* %todo, i32 0, i32 4
  store i8 1, i8* %sha512, align 1
  br label %if.end175

if.else31:                                        ; preds = %if.else25
  %22 = load i8**, i8*** %argv.addr, align 8
  %23 = load i32, i32* %i, align 4
  %idxprom32 = sext i32 %23 to i64
  %arrayidx33 = getelementptr inbounds i8*, i8** %22, i64 %idxprom32
  %24 = load i8*, i8** %arrayidx33, align 8
  %call34 = call i32 @strcmp(i8* noundef %24, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0)) #9
  %cmp35 = icmp eq i32 %call34, 0
  br i1 %cmp35, label %if.then36, label %if.else37

if.then36:                                        ; preds = %if.else31
  %des3 = getelementptr inbounds %struct.todo_list, %struct.todo_list* %todo, i32 0, i32 5
  store i8 1, i8* %des3, align 1
  br label %if.end174

if.else37:                                        ; preds = %if.else31
  %25 = load i8**, i8*** %argv.addr, align 8
  %26 = load i32, i32* %i, align 4
  %idxprom38 = sext i32 %26 to i64
  %arrayidx39 = getelementptr inbounds i8*, i8** %25, i64 %idxprom38
  %27 = load i8*, i8** %arrayidx39, align 8
  %call40 = call i32 @strcmp(i8* noundef %27, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0)) #9
  %cmp41 = icmp eq i32 %call40, 0
  br i1 %cmp41, label %if.then42, label %if.else43

if.then42:                                        ; preds = %if.else37
  %des = getelementptr inbounds %struct.todo_list, %struct.todo_list* %todo, i32 0, i32 6
  store i8 1, i8* %des, align 1
  br label %if.end173

if.else43:                                        ; preds = %if.else37
  %28 = load i8**, i8*** %argv.addr, align 8
  %29 = load i32, i32* %i, align 4
  %idxprom44 = sext i32 %29 to i64
  %arrayidx45 = getelementptr inbounds i8*, i8** %28, i64 %idxprom44
  %30 = load i8*, i8** %arrayidx45, align 8
  %call46 = call i32 @strcmp(i8* noundef %30, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0)) #9
  %cmp47 = icmp eq i32 %call46, 0
  br i1 %cmp47, label %if.then48, label %if.else49

if.then48:                                        ; preds = %if.else43
  %aes_cbc = getelementptr inbounds %struct.todo_list, %struct.todo_list* %todo, i32 0, i32 7
  store i8 1, i8* %aes_cbc, align 1
  br label %if.end172

if.else49:                                        ; preds = %if.else43
  %31 = load i8**, i8*** %argv.addr, align 8
  %32 = load i32, i32* %i, align 4
  %idxprom50 = sext i32 %32 to i64
  %arrayidx51 = getelementptr inbounds i8*, i8** %31, i64 %idxprom50
  %33 = load i8*, i8** %arrayidx51, align 8
  %call52 = call i32 @strcmp(i8* noundef %33, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0)) #9
  %cmp53 = icmp eq i32 %call52, 0
  br i1 %cmp53, label %if.then54, label %if.else55

if.then54:                                        ; preds = %if.else49
  %aes_xts = getelementptr inbounds %struct.todo_list, %struct.todo_list* %todo, i32 0, i32 10
  store i8 1, i8* %aes_xts, align 1
  br label %if.end171

if.else55:                                        ; preds = %if.else49
  %34 = load i8**, i8*** %argv.addr, align 8
  %35 = load i32, i32* %i, align 4
  %idxprom56 = sext i32 %35 to i64
  %arrayidx57 = getelementptr inbounds i8*, i8** %34, i64 %idxprom56
  %36 = load i8*, i8** %arrayidx57, align 8
  %call58 = call i32 @strcmp(i8* noundef %36, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0)) #9
  %cmp59 = icmp eq i32 %call58, 0
  br i1 %cmp59, label %if.then60, label %if.else61

if.then60:                                        ; preds = %if.else55
  %aes_gcm = getelementptr inbounds %struct.todo_list, %struct.todo_list* %todo, i32 0, i32 8
  store i8 1, i8* %aes_gcm, align 1
  br label %if.end170

if.else61:                                        ; preds = %if.else55
  %37 = load i8**, i8*** %argv.addr, align 8
  %38 = load i32, i32* %i, align 4
  %idxprom62 = sext i32 %38 to i64
  %arrayidx63 = getelementptr inbounds i8*, i8** %37, i64 %idxprom62
  %39 = load i8*, i8** %arrayidx63, align 8
  %call64 = call i32 @strcmp(i8* noundef %39, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0)) #9
  %cmp65 = icmp eq i32 %call64, 0
  br i1 %cmp65, label %if.then66, label %if.else67

if.then66:                                        ; preds = %if.else61
  %aes_ccm = getelementptr inbounds %struct.todo_list, %struct.todo_list* %todo, i32 0, i32 9
  store i8 1, i8* %aes_ccm, align 1
  br label %if.end169

if.else67:                                        ; preds = %if.else61
  %40 = load i8**, i8*** %argv.addr, align 8
  %41 = load i32, i32* %i, align 4
  %idxprom68 = sext i32 %41 to i64
  %arrayidx69 = getelementptr inbounds i8*, i8** %40, i64 %idxprom68
  %42 = load i8*, i8** %arrayidx69, align 8
  %call70 = call i32 @strcmp(i8* noundef %42, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0)) #9
  %cmp71 = icmp eq i32 %call70, 0
  br i1 %cmp71, label %if.then72, label %if.else73

if.then72:                                        ; preds = %if.else67
  %chachapoly = getelementptr inbounds %struct.todo_list, %struct.todo_list* %todo, i32 0, i32 11
  store i8 1, i8* %chachapoly, align 1
  br label %if.end168

if.else73:                                        ; preds = %if.else67
  %43 = load i8**, i8*** %argv.addr, align 8
  %44 = load i32, i32* %i, align 4
  %idxprom74 = sext i32 %44 to i64
  %arrayidx75 = getelementptr inbounds i8*, i8** %43, i64 %idxprom74
  %45 = load i8*, i8** %arrayidx75, align 8
  %call76 = call i32 @strcmp(i8* noundef %45, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0)) #9
  %cmp77 = icmp eq i32 %call76, 0
  br i1 %cmp77, label %if.then78, label %if.else79

if.then78:                                        ; preds = %if.else73
  %aes_cmac = getelementptr inbounds %struct.todo_list, %struct.todo_list* %todo, i32 0, i32 12
  store i8 1, i8* %aes_cmac, align 1
  br label %if.end167

if.else79:                                        ; preds = %if.else73
  %46 = load i8**, i8*** %argv.addr, align 8
  %47 = load i32, i32* %i, align 4
  %idxprom80 = sext i32 %47 to i64
  %arrayidx81 = getelementptr inbounds i8*, i8** %46, i64 %idxprom80
  %48 = load i8*, i8** %arrayidx81, align 8
  %call82 = call i32 @strcmp(i8* noundef %48, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0)) #9
  %cmp83 = icmp eq i32 %call82, 0
  br i1 %cmp83, label %if.then84, label %if.else85

if.then84:                                        ; preds = %if.else79
  %des3_cmac = getelementptr inbounds %struct.todo_list, %struct.todo_list* %todo, i32 0, i32 13
  store i8 1, i8* %des3_cmac, align 1
  br label %if.end166

if.else85:                                        ; preds = %if.else79
  %49 = load i8**, i8*** %argv.addr, align 8
  %50 = load i32, i32* %i, align 4
  %idxprom86 = sext i32 %50 to i64
  %arrayidx87 = getelementptr inbounds i8*, i8** %49, i64 %idxprom86
  %51 = load i8*, i8** %arrayidx87, align 8
  %call88 = call i32 @strcmp(i8* noundef %51, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0)) #9
  %cmp89 = icmp eq i32 %call88, 0
  br i1 %cmp89, label %if.then90, label %if.else91

if.then90:                                        ; preds = %if.else85
  %aria = getelementptr inbounds %struct.todo_list, %struct.todo_list* %todo, i32 0, i32 14
  store i8 1, i8* %aria, align 1
  br label %if.end165

if.else91:                                        ; preds = %if.else85
  %52 = load i8**, i8*** %argv.addr, align 8
  %53 = load i32, i32* %i, align 4
  %idxprom92 = sext i32 %53 to i64
  %arrayidx93 = getelementptr inbounds i8*, i8** %52, i64 %idxprom92
  %54 = load i8*, i8** %arrayidx93, align 8
  %call94 = call i32 @strcmp(i8* noundef %54, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0)) #9
  %cmp95 = icmp eq i32 %call94, 0
  br i1 %cmp95, label %if.then96, label %if.else97

if.then96:                                        ; preds = %if.else91
  %camellia = getelementptr inbounds %struct.todo_list, %struct.todo_list* %todo, i32 0, i32 15
  store i8 1, i8* %camellia, align 1
  br label %if.end164

if.else97:                                        ; preds = %if.else91
  %55 = load i8**, i8*** %argv.addr, align 8
  %56 = load i32, i32* %i, align 4
  %idxprom98 = sext i32 %56 to i64
  %arrayidx99 = getelementptr inbounds i8*, i8** %55, i64 %idxprom98
  %57 = load i8*, i8** %arrayidx99, align 8
  %call100 = call i32 @strcmp(i8* noundef %57, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0)) #9
  %cmp101 = icmp eq i32 %call100, 0
  br i1 %cmp101, label %if.then102, label %if.else103

if.then102:                                       ; preds = %if.else97
  %chacha20 = getelementptr inbounds %struct.todo_list, %struct.todo_list* %todo, i32 0, i32 16
  store i8 1, i8* %chacha20, align 1
  br label %if.end163

if.else103:                                       ; preds = %if.else97
  %58 = load i8**, i8*** %argv.addr, align 8
  %59 = load i32, i32* %i, align 4
  %idxprom104 = sext i32 %59 to i64
  %arrayidx105 = getelementptr inbounds i8*, i8** %58, i64 %idxprom104
  %60 = load i8*, i8** %arrayidx105, align 8
  %call106 = call i32 @strcmp(i8* noundef %60, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i64 0, i64 0)) #9
  %cmp107 = icmp eq i32 %call106, 0
  br i1 %cmp107, label %if.then108, label %if.else109

if.then108:                                       ; preds = %if.else103
  %poly1305 = getelementptr inbounds %struct.todo_list, %struct.todo_list* %todo, i32 0, i32 17
  store i8 1, i8* %poly1305, align 1
  br label %if.end162

if.else109:                                       ; preds = %if.else103
  %61 = load i8**, i8*** %argv.addr, align 8
  %62 = load i32, i32* %i, align 4
  %idxprom110 = sext i32 %62 to i64
  %arrayidx111 = getelementptr inbounds i8*, i8** %61, i64 %idxprom110
  %63 = load i8*, i8** %arrayidx111, align 8
  %call112 = call i32 @strcmp(i8* noundef %63, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i64 0, i64 0)) #9
  %cmp113 = icmp eq i32 %call112, 0
  br i1 %cmp113, label %if.then114, label %if.else115

if.then114:                                       ; preds = %if.else109
  %ctr_drbg = getelementptr inbounds %struct.todo_list, %struct.todo_list* %todo, i32 0, i32 18
  store i8 1, i8* %ctr_drbg, align 1
  br label %if.end161

if.else115:                                       ; preds = %if.else109
  %64 = load i8**, i8*** %argv.addr, align 8
  %65 = load i32, i32* %i, align 4
  %idxprom116 = sext i32 %65 to i64
  %arrayidx117 = getelementptr inbounds i8*, i8** %64, i64 %idxprom116
  %66 = load i8*, i8** %arrayidx117, align 8
  %call118 = call i32 @strcmp(i8* noundef %66, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i64 0, i64 0)) #9
  %cmp119 = icmp eq i32 %call118, 0
  br i1 %cmp119, label %if.then120, label %if.else121

if.then120:                                       ; preds = %if.else115
  %hmac_drbg = getelementptr inbounds %struct.todo_list, %struct.todo_list* %todo, i32 0, i32 19
  store i8 1, i8* %hmac_drbg, align 1
  br label %if.end160

if.else121:                                       ; preds = %if.else115
  %67 = load i8**, i8*** %argv.addr, align 8
  %68 = load i32, i32* %i, align 4
  %idxprom122 = sext i32 %68 to i64
  %arrayidx123 = getelementptr inbounds i8*, i8** %67, i64 %idxprom122
  %69 = load i8*, i8** %arrayidx123, align 8
  %call124 = call i32 @strcmp(i8* noundef %69, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i64 0, i64 0)) #9
  %cmp125 = icmp eq i32 %call124, 0
  br i1 %cmp125, label %if.then126, label %if.else127

if.then126:                                       ; preds = %if.else121
  %rsa = getelementptr inbounds %struct.todo_list, %struct.todo_list* %todo, i32 0, i32 20
  store i8 1, i8* %rsa, align 1
  br label %if.end159

if.else127:                                       ; preds = %if.else121
  %70 = load i8**, i8*** %argv.addr, align 8
  %71 = load i32, i32* %i, align 4
  %idxprom128 = sext i32 %71 to i64
  %arrayidx129 = getelementptr inbounds i8*, i8** %70, i64 %idxprom128
  %72 = load i8*, i8** %arrayidx129, align 8
  %call130 = call i32 @strcmp(i8* noundef %72, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i64 0, i64 0)) #9
  %cmp131 = icmp eq i32 %call130, 0
  br i1 %cmp131, label %if.then132, label %if.else133

if.then132:                                       ; preds = %if.else127
  %dhm = getelementptr inbounds %struct.todo_list, %struct.todo_list* %todo, i32 0, i32 21
  store i8 1, i8* %dhm, align 1
  br label %if.end158

if.else133:                                       ; preds = %if.else127
  %73 = load i8**, i8*** %argv.addr, align 8
  %74 = load i32, i32* %i, align 4
  %idxprom134 = sext i32 %74 to i64
  %arrayidx135 = getelementptr inbounds i8*, i8** %73, i64 %idxprom134
  %75 = load i8*, i8** %arrayidx135, align 8
  %call136 = call i32 @strcmp(i8* noundef %75, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i64 0, i64 0)) #9
  %cmp137 = icmp eq i32 %call136, 0
  br i1 %cmp137, label %if.then138, label %if.else139

if.then138:                                       ; preds = %if.else133
  %ecdsa = getelementptr inbounds %struct.todo_list, %struct.todo_list* %todo, i32 0, i32 22
  store i8 1, i8* %ecdsa, align 1
  br label %if.end157

if.else139:                                       ; preds = %if.else133
  %76 = load i8**, i8*** %argv.addr, align 8
  %77 = load i32, i32* %i, align 4
  %idxprom140 = sext i32 %77 to i64
  %arrayidx141 = getelementptr inbounds i8*, i8** %76, i64 %idxprom140
  %78 = load i8*, i8** %arrayidx141, align 8
  %call142 = call i32 @strcmp(i8* noundef %78, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i64 0, i64 0)) #9
  %cmp143 = icmp eq i32 %call142, 0
  br i1 %cmp143, label %if.then144, label %if.else145

if.then144:                                       ; preds = %if.else139
  %ecdh = getelementptr inbounds %struct.todo_list, %struct.todo_list* %todo, i32 0, i32 23
  store i8 1, i8* %ecdh, align 1
  br label %if.end156

if.else145:                                       ; preds = %if.else139
  %79 = load i8**, i8*** %argv.addr, align 8
  %80 = load i32, i32* %i, align 4
  %idxprom146 = sext i32 %80 to i64
  %arrayidx147 = getelementptr inbounds i8*, i8** %79, i64 %idxprom146
  %81 = load i8*, i8** %arrayidx147, align 8
  %arraydecay = getelementptr inbounds [2 x %struct.mbedtls_ecp_curve_info], [2 x %struct.mbedtls_ecp_curve_info]* %single_curve, i64 0, i64 0
  %call148 = call i32 @set_ecp_curve(i8* noundef %81, %struct.mbedtls_ecp_curve_info* noundef %arraydecay) #7
  %tobool = icmp ne i32 %call148, 0
  br i1 %tobool, label %if.then149, label %if.else151

if.then149:                                       ; preds = %if.else145
  %arraydecay150 = getelementptr inbounds [2 x %struct.mbedtls_ecp_curve_info], [2 x %struct.mbedtls_ecp_curve_info]* %single_curve, i64 0, i64 0
  store %struct.mbedtls_ecp_curve_info* %arraydecay150, %struct.mbedtls_ecp_curve_info** %curve_list, align 8
  br label %if.end

if.else151:                                       ; preds = %if.else145
  %82 = load i8**, i8*** %argv.addr, align 8
  %83 = load i32, i32* %i, align 4
  %idxprom152 = sext i32 %83 to i64
  %arrayidx153 = getelementptr inbounds i8*, i8** %82, i64 %idxprom152
  %84 = load i8*, i8** %arrayidx153, align 8
  %call154 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.24, i64 0, i64 0), i8* noundef %84) #7
  %call155 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([210 x i8], [210 x i8]* @.str.25, i64 0, i64 0)) #7
  br label %if.end

if.end:                                           ; preds = %if.else151, %if.then149
  br label %if.end156

if.end156:                                        ; preds = %if.end, %if.then144
  br label %if.end157

if.end157:                                        ; preds = %if.end156, %if.then138
  br label %if.end158

if.end158:                                        ; preds = %if.end157, %if.then132
  br label %if.end159

if.end159:                                        ; preds = %if.end158, %if.then126
  br label %if.end160

if.end160:                                        ; preds = %if.end159, %if.then120
  br label %if.end161

if.end161:                                        ; preds = %if.end160, %if.then114
  br label %if.end162

if.end162:                                        ; preds = %if.end161, %if.then108
  br label %if.end163

if.end163:                                        ; preds = %if.end162, %if.then102
  br label %if.end164

if.end164:                                        ; preds = %if.end163, %if.then96
  br label %if.end165

if.end165:                                        ; preds = %if.end164, %if.then90
  br label %if.end166

if.end166:                                        ; preds = %if.end165, %if.then84
  br label %if.end167

if.end167:                                        ; preds = %if.end166, %if.then78
  br label %if.end168

if.end168:                                        ; preds = %if.end167, %if.then72
  br label %if.end169

if.end169:                                        ; preds = %if.end168, %if.then66
  br label %if.end170

if.end170:                                        ; preds = %if.end169, %if.then60
  br label %if.end171

if.end171:                                        ; preds = %if.end170, %if.then54
  br label %if.end172

if.end172:                                        ; preds = %if.end171, %if.then48
  br label %if.end173

if.end173:                                        ; preds = %if.end172, %if.then42
  br label %if.end174

if.end174:                                        ; preds = %if.end173, %if.then36
  br label %if.end175

if.end175:                                        ; preds = %if.end174, %if.then30
  br label %if.end176

if.end176:                                        ; preds = %if.end175, %if.then24
  br label %if.end177

if.end177:                                        ; preds = %if.end176, %if.then18
  br label %if.end178

if.end178:                                        ; preds = %if.end177, %if.then12
  br label %if.end179

if.end179:                                        ; preds = %if.end178, %if.then6
  br label %for.inc

for.inc:                                          ; preds = %if.end179
  %85 = load i32, i32* %i, align 4
  %inc = add nsw i32 %85, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  br label %if.end180

if.end180:                                        ; preds = %for.end, %if.then
  %call181 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i64 0, i64 0)) #7
  %call182 = call i8* @memset(i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @buf, i64 0, i64 0), i32 noundef 170, i64 noundef 1024) #8
  %arraydecay183 = getelementptr inbounds [200 x i8], [200 x i8]* %tmp, i64 0, i64 0
  %call184 = call i8* @memset(i8* noundef %arraydecay183, i32 noundef 187, i64 noundef 200) #8
  %md5185 = getelementptr inbounds %struct.todo_list, %struct.todo_list* %todo, i32 0, i32 0
  %86 = load i8, i8* %md5185, align 1
  %tobool186 = icmp ne i8 %86, 0
  br i1 %tobool186, label %if.then187, label %if.end222

if.then187:                                       ; preds = %if.end180
  br label %do.body

do.body:                                          ; preds = %if.then187
  store i32 0, i32* %ret, align 4
  %call188 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.27, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28, i64 0, i64 0)) #7
  %87 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call189 = call i32 @fflush(%struct._IO_FILE* noundef %87) #7
  call void @mbedtls_set_alarm(i32 noundef 1) #7
  store i64 1, i64* %ii, align 8
  br label %for.cond190

for.cond190:                                      ; preds = %for.inc196, %do.body
  %88 = load i32, i32* %ret, align 4
  %cmp191 = icmp eq i32 %88, 0
  br i1 %cmp191, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond190
  %89 = load volatile i32, i32* @mbedtls_timing_alarmed, align 4
  %tobool192 = icmp ne i32 %89, 0
  %lnot = xor i1 %tobool192, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond190
  %90 = phi i1 [ false, %for.cond190 ], [ %lnot, %land.rhs ]
  br i1 %90, label %for.body193, label %for.end198

for.body193:                                      ; preds = %land.end
  %arraydecay194 = getelementptr inbounds [200 x i8], [200 x i8]* %tmp, i64 0, i64 0
  %call195 = call i32 @mbedtls_md5(i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @buf, i64 0, i64 0), i64 noundef 1024, i8* noundef %arraydecay194) #7
  store i32 %call195, i32* %ret, align 4
  br label %for.inc196

for.inc196:                                       ; preds = %for.body193
  %91 = load i64, i64* %ii, align 8
  %inc197 = add i64 %91, 1
  store i64 %inc197, i64* %ii, align 8
  br label %for.cond190, !llvm.loop !6

for.end198:                                       ; preds = %land.end
  %call199 = call i64 @mbedtls_timing_hardclock() #7
  store i64 %call199, i64* %tsc, align 8
  store i64 0, i64* %jj, align 8
  br label %for.cond200

for.cond200:                                      ; preds = %for.inc208, %for.end198
  %92 = load i32, i32* %ret, align 4
  %cmp201 = icmp eq i32 %92, 0
  br i1 %cmp201, label %land.rhs202, label %land.end204

land.rhs202:                                      ; preds = %for.cond200
  %93 = load i64, i64* %jj, align 8
  %cmp203 = icmp ult i64 %93, 1024
  br label %land.end204

land.end204:                                      ; preds = %land.rhs202, %for.cond200
  %94 = phi i1 [ false, %for.cond200 ], [ %cmp203, %land.rhs202 ]
  br i1 %94, label %for.body205, label %for.end210

for.body205:                                      ; preds = %land.end204
  %arraydecay206 = getelementptr inbounds [200 x i8], [200 x i8]* %tmp, i64 0, i64 0
  %call207 = call i32 @mbedtls_md5(i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @buf, i64 0, i64 0), i64 noundef 1024, i8* noundef %arraydecay206) #7
  store i32 %call207, i32* %ret, align 4
  br label %for.inc208

for.inc208:                                       ; preds = %for.body205
  %95 = load i64, i64* %jj, align 8
  %inc209 = add i64 %95, 1
  store i64 %inc209, i64* %jj, align 8
  br label %for.cond200, !llvm.loop !7

for.end210:                                       ; preds = %land.end204
  %96 = load i32, i32* %ret, align 4
  %cmp211 = icmp ne i32 %96, 0
  br i1 %cmp211, label %if.then212, label %if.else216

if.then212:                                       ; preds = %for.end210
  %97 = load i32, i32* %ret, align 4
  %arraydecay213 = getelementptr inbounds [200 x i8], [200 x i8]* %tmp, i64 0, i64 0
  call void @mbedtls_strerror(i32 noundef %97, i8* noundef %arraydecay213, i64 noundef 200) #7
  %arraydecay214 = getelementptr inbounds [200 x i8], [200 x i8]* %tmp, i64 0, i64 0
  %call215 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i64 0, i64 0), i8* noundef %arraydecay214) #7
  br label %if.end221

if.else216:                                       ; preds = %for.end210
  %98 = load i64, i64* %ii, align 8
  %mul = mul i64 %98, 1024
  %div = udiv i64 %mul, 1024
  %call217 = call i64 @mbedtls_timing_hardclock() #7
  %99 = load i64, i64* %tsc, align 8
  %sub = sub i64 %call217, %99
  %100 = load i64, i64* %jj, align 8
  %mul218 = mul i64 %100, 1024
  %div219 = udiv i64 %sub, %mul218
  %call220 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.30, i64 0, i64 0), i64 noundef %div, i64 noundef %div219) #7
  br label %if.end221

if.end221:                                        ; preds = %if.else216, %if.then212
  br label %do.end

do.end:                                           ; preds = %if.end221
  br label %if.end222

if.end222:                                        ; preds = %do.end, %if.end180
  %ripemd160223 = getelementptr inbounds %struct.todo_list, %struct.todo_list* %todo, i32 0, i32 1
  %101 = load i8, i8* %ripemd160223, align 1
  %tobool224 = icmp ne i8 %101, 0
  br i1 %tobool224, label %if.then225, label %if.end272

if.then225:                                       ; preds = %if.end222
  br label %do.body226

do.body226:                                       ; preds = %if.then225
  store i32 0, i32* %ret230, align 4
  %call231 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.27, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.31, i64 0, i64 0)) #7
  %102 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call232 = call i32 @fflush(%struct._IO_FILE* noundef %102) #7
  call void @mbedtls_set_alarm(i32 noundef 1) #7
  store i64 1, i64* %ii227, align 8
  br label %for.cond233

for.cond233:                                      ; preds = %for.inc242, %do.body226
  %103 = load i32, i32* %ret230, align 4
  %cmp234 = icmp eq i32 %103, 0
  br i1 %cmp234, label %land.rhs235, label %land.end238

land.rhs235:                                      ; preds = %for.cond233
  %104 = load volatile i32, i32* @mbedtls_timing_alarmed, align 4
  %tobool236 = icmp ne i32 %104, 0
  %lnot237 = xor i1 %tobool236, true
  br label %land.end238

land.end238:                                      ; preds = %land.rhs235, %for.cond233
  %105 = phi i1 [ false, %for.cond233 ], [ %lnot237, %land.rhs235 ]
  br i1 %105, label %for.body239, label %for.end244

for.body239:                                      ; preds = %land.end238
  %arraydecay240 = getelementptr inbounds [200 x i8], [200 x i8]* %tmp, i64 0, i64 0
  %call241 = call i32 @mbedtls_ripemd160(i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @buf, i64 0, i64 0), i64 noundef 1024, i8* noundef %arraydecay240) #7
  store i32 %call241, i32* %ret230, align 4
  br label %for.inc242

for.inc242:                                       ; preds = %for.body239
  %106 = load i64, i64* %ii227, align 8
  %inc243 = add i64 %106, 1
  store i64 %inc243, i64* %ii227, align 8
  br label %for.cond233, !llvm.loop !8

for.end244:                                       ; preds = %land.end238
  %call245 = call i64 @mbedtls_timing_hardclock() #7
  store i64 %call245, i64* %tsc229, align 8
  store i64 0, i64* %jj228, align 8
  br label %for.cond246

for.cond246:                                      ; preds = %for.inc254, %for.end244
  %107 = load i32, i32* %ret230, align 4
  %cmp247 = icmp eq i32 %107, 0
  br i1 %cmp247, label %land.rhs248, label %land.end250

land.rhs248:                                      ; preds = %for.cond246
  %108 = load i64, i64* %jj228, align 8
  %cmp249 = icmp ult i64 %108, 1024
  br label %land.end250

land.end250:                                      ; preds = %land.rhs248, %for.cond246
  %109 = phi i1 [ false, %for.cond246 ], [ %cmp249, %land.rhs248 ]
  br i1 %109, label %for.body251, label %for.end256

for.body251:                                      ; preds = %land.end250
  %arraydecay252 = getelementptr inbounds [200 x i8], [200 x i8]* %tmp, i64 0, i64 0
  %call253 = call i32 @mbedtls_ripemd160(i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @buf, i64 0, i64 0), i64 noundef 1024, i8* noundef %arraydecay252) #7
  store i32 %call253, i32* %ret230, align 4
  br label %for.inc254

for.inc254:                                       ; preds = %for.body251
  %110 = load i64, i64* %jj228, align 8
  %inc255 = add i64 %110, 1
  store i64 %inc255, i64* %jj228, align 8
  br label %for.cond246, !llvm.loop !9

for.end256:                                       ; preds = %land.end250
  %111 = load i32, i32* %ret230, align 4
  %cmp257 = icmp ne i32 %111, 0
  br i1 %cmp257, label %if.then258, label %if.else262

if.then258:                                       ; preds = %for.end256
  %112 = load i32, i32* %ret230, align 4
  %arraydecay259 = getelementptr inbounds [200 x i8], [200 x i8]* %tmp, i64 0, i64 0
  call void @mbedtls_strerror(i32 noundef %112, i8* noundef %arraydecay259, i64 noundef 200) #7
  %arraydecay260 = getelementptr inbounds [200 x i8], [200 x i8]* %tmp, i64 0, i64 0
  %call261 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i64 0, i64 0), i8* noundef %arraydecay260) #7
  br label %if.end270

if.else262:                                       ; preds = %for.end256
  %113 = load i64, i64* %ii227, align 8
  %mul263 = mul i64 %113, 1024
  %div264 = udiv i64 %mul263, 1024
  %call265 = call i64 @mbedtls_timing_hardclock() #7
  %114 = load i64, i64* %tsc229, align 8
  %sub266 = sub i64 %call265, %114
  %115 = load i64, i64* %jj228, align 8
  %mul267 = mul i64 %115, 1024
  %div268 = udiv i64 %sub266, %mul267
  %call269 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.30, i64 0, i64 0), i64 noundef %div264, i64 noundef %div268) #7
  br label %if.end270

if.end270:                                        ; preds = %if.else262, %if.then258
  br label %do.end271

do.end271:                                        ; preds = %if.end270
  br label %if.end272

if.end272:                                        ; preds = %do.end271, %if.end222
  %sha1273 = getelementptr inbounds %struct.todo_list, %struct.todo_list* %todo, i32 0, i32 2
  %116 = load i8, i8* %sha1273, align 1
  %tobool274 = icmp ne i8 %116, 0
  br i1 %tobool274, label %if.then275, label %if.end322

if.then275:                                       ; preds = %if.end272
  br label %do.body276

do.body276:                                       ; preds = %if.then275
  store i32 0, i32* %ret280, align 4
  %call281 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.27, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i64 0, i64 0)) #7
  %117 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call282 = call i32 @fflush(%struct._IO_FILE* noundef %117) #7
  call void @mbedtls_set_alarm(i32 noundef 1) #7
  store i64 1, i64* %ii277, align 8
  br label %for.cond283

for.cond283:                                      ; preds = %for.inc292, %do.body276
  %118 = load i32, i32* %ret280, align 4
  %cmp284 = icmp eq i32 %118, 0
  br i1 %cmp284, label %land.rhs285, label %land.end288

land.rhs285:                                      ; preds = %for.cond283
  %119 = load volatile i32, i32* @mbedtls_timing_alarmed, align 4
  %tobool286 = icmp ne i32 %119, 0
  %lnot287 = xor i1 %tobool286, true
  br label %land.end288

land.end288:                                      ; preds = %land.rhs285, %for.cond283
  %120 = phi i1 [ false, %for.cond283 ], [ %lnot287, %land.rhs285 ]
  br i1 %120, label %for.body289, label %for.end294

for.body289:                                      ; preds = %land.end288
  %arraydecay290 = getelementptr inbounds [200 x i8], [200 x i8]* %tmp, i64 0, i64 0
  %call291 = call i32 @mbedtls_sha1(i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @buf, i64 0, i64 0), i64 noundef 1024, i8* noundef %arraydecay290) #7
  store i32 %call291, i32* %ret280, align 4
  br label %for.inc292

for.inc292:                                       ; preds = %for.body289
  %121 = load i64, i64* %ii277, align 8
  %inc293 = add i64 %121, 1
  store i64 %inc293, i64* %ii277, align 8
  br label %for.cond283, !llvm.loop !10

for.end294:                                       ; preds = %land.end288
  %call295 = call i64 @mbedtls_timing_hardclock() #7
  store i64 %call295, i64* %tsc279, align 8
  store i64 0, i64* %jj278, align 8
  br label %for.cond296

for.cond296:                                      ; preds = %for.inc304, %for.end294
  %122 = load i32, i32* %ret280, align 4
  %cmp297 = icmp eq i32 %122, 0
  br i1 %cmp297, label %land.rhs298, label %land.end300

land.rhs298:                                      ; preds = %for.cond296
  %123 = load i64, i64* %jj278, align 8
  %cmp299 = icmp ult i64 %123, 1024
  br label %land.end300

land.end300:                                      ; preds = %land.rhs298, %for.cond296
  %124 = phi i1 [ false, %for.cond296 ], [ %cmp299, %land.rhs298 ]
  br i1 %124, label %for.body301, label %for.end306

for.body301:                                      ; preds = %land.end300
  %arraydecay302 = getelementptr inbounds [200 x i8], [200 x i8]* %tmp, i64 0, i64 0
  %call303 = call i32 @mbedtls_sha1(i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @buf, i64 0, i64 0), i64 noundef 1024, i8* noundef %arraydecay302) #7
  store i32 %call303, i32* %ret280, align 4
  br label %for.inc304

for.inc304:                                       ; preds = %for.body301
  %125 = load i64, i64* %jj278, align 8
  %inc305 = add i64 %125, 1
  store i64 %inc305, i64* %jj278, align 8
  br label %for.cond296, !llvm.loop !11

for.end306:                                       ; preds = %land.end300
  %126 = load i32, i32* %ret280, align 4
  %cmp307 = icmp ne i32 %126, 0
  br i1 %cmp307, label %if.then308, label %if.else312

if.then308:                                       ; preds = %for.end306
  %127 = load i32, i32* %ret280, align 4
  %arraydecay309 = getelementptr inbounds [200 x i8], [200 x i8]* %tmp, i64 0, i64 0
  call void @mbedtls_strerror(i32 noundef %127, i8* noundef %arraydecay309, i64 noundef 200) #7
  %arraydecay310 = getelementptr inbounds [200 x i8], [200 x i8]* %tmp, i64 0, i64 0
  %call311 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i64 0, i64 0), i8* noundef %arraydecay310) #7
  br label %if.end320

if.else312:                                       ; preds = %for.end306
  %128 = load i64, i64* %ii277, align 8
  %mul313 = mul i64 %128, 1024
  %div314 = udiv i64 %mul313, 1024
  %call315 = call i64 @mbedtls_timing_hardclock() #7
  %129 = load i64, i64* %tsc279, align 8
  %sub316 = sub i64 %call315, %129
  %130 = load i64, i64* %jj278, align 8
  %mul317 = mul i64 %130, 1024
  %div318 = udiv i64 %sub316, %mul317
  %call319 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.30, i64 0, i64 0), i64 noundef %div314, i64 noundef %div318) #7
  br label %if.end320

if.end320:                                        ; preds = %if.else312, %if.then308
  br label %do.end321

do.end321:                                        ; preds = %if.end320
  br label %if.end322

if.end322:                                        ; preds = %do.end321, %if.end272
  %sha256323 = getelementptr inbounds %struct.todo_list, %struct.todo_list* %todo, i32 0, i32 3
  %131 = load i8, i8* %sha256323, align 1
  %tobool324 = icmp ne i8 %131, 0
  br i1 %tobool324, label %if.then325, label %if.end372

if.then325:                                       ; preds = %if.end322
  br label %do.body326

do.body326:                                       ; preds = %if.then325
  store i32 0, i32* %ret330, align 4
  %call331 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.27, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.33, i64 0, i64 0)) #7
  %132 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call332 = call i32 @fflush(%struct._IO_FILE* noundef %132) #7
  call void @mbedtls_set_alarm(i32 noundef 1) #7
  store i64 1, i64* %ii327, align 8
  br label %for.cond333

for.cond333:                                      ; preds = %for.inc342, %do.body326
  %133 = load i32, i32* %ret330, align 4
  %cmp334 = icmp eq i32 %133, 0
  br i1 %cmp334, label %land.rhs335, label %land.end338

land.rhs335:                                      ; preds = %for.cond333
  %134 = load volatile i32, i32* @mbedtls_timing_alarmed, align 4
  %tobool336 = icmp ne i32 %134, 0
  %lnot337 = xor i1 %tobool336, true
  br label %land.end338

land.end338:                                      ; preds = %land.rhs335, %for.cond333
  %135 = phi i1 [ false, %for.cond333 ], [ %lnot337, %land.rhs335 ]
  br i1 %135, label %for.body339, label %for.end344

for.body339:                                      ; preds = %land.end338
  %arraydecay340 = getelementptr inbounds [200 x i8], [200 x i8]* %tmp, i64 0, i64 0
  %call341 = call i32 @mbedtls_sha256(i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @buf, i64 0, i64 0), i64 noundef 1024, i8* noundef %arraydecay340, i32 noundef 0) #7
  store i32 %call341, i32* %ret330, align 4
  br label %for.inc342

for.inc342:                                       ; preds = %for.body339
  %136 = load i64, i64* %ii327, align 8
  %inc343 = add i64 %136, 1
  store i64 %inc343, i64* %ii327, align 8
  br label %for.cond333, !llvm.loop !12

for.end344:                                       ; preds = %land.end338
  %call345 = call i64 @mbedtls_timing_hardclock() #7
  store i64 %call345, i64* %tsc329, align 8
  store i64 0, i64* %jj328, align 8
  br label %for.cond346

for.cond346:                                      ; preds = %for.inc354, %for.end344
  %137 = load i32, i32* %ret330, align 4
  %cmp347 = icmp eq i32 %137, 0
  br i1 %cmp347, label %land.rhs348, label %land.end350

land.rhs348:                                      ; preds = %for.cond346
  %138 = load i64, i64* %jj328, align 8
  %cmp349 = icmp ult i64 %138, 1024
  br label %land.end350

land.end350:                                      ; preds = %land.rhs348, %for.cond346
  %139 = phi i1 [ false, %for.cond346 ], [ %cmp349, %land.rhs348 ]
  br i1 %139, label %for.body351, label %for.end356

for.body351:                                      ; preds = %land.end350
  %arraydecay352 = getelementptr inbounds [200 x i8], [200 x i8]* %tmp, i64 0, i64 0
  %call353 = call i32 @mbedtls_sha256(i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @buf, i64 0, i64 0), i64 noundef 1024, i8* noundef %arraydecay352, i32 noundef 0) #7
  store i32 %call353, i32* %ret330, align 4
  br label %for.inc354

for.inc354:                                       ; preds = %for.body351
  %140 = load i64, i64* %jj328, align 8
  %inc355 = add i64 %140, 1
  store i64 %inc355, i64* %jj328, align 8
  br label %for.cond346, !llvm.loop !13

for.end356:                                       ; preds = %land.end350
  %141 = load i32, i32* %ret330, align 4
  %cmp357 = icmp ne i32 %141, 0
  br i1 %cmp357, label %if.then358, label %if.else362

if.then358:                                       ; preds = %for.end356
  %142 = load i32, i32* %ret330, align 4
  %arraydecay359 = getelementptr inbounds [200 x i8], [200 x i8]* %tmp, i64 0, i64 0
  call void @mbedtls_strerror(i32 noundef %142, i8* noundef %arraydecay359, i64 noundef 200) #7
  %arraydecay360 = getelementptr inbounds [200 x i8], [200 x i8]* %tmp, i64 0, i64 0
  %call361 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i64 0, i64 0), i8* noundef %arraydecay360) #7
  br label %if.end370

if.else362:                                       ; preds = %for.end356
  %143 = load i64, i64* %ii327, align 8
  %mul363 = mul i64 %143, 1024
  %div364 = udiv i64 %mul363, 1024
  %call365 = call i64 @mbedtls_timing_hardclock() #7
  %144 = load i64, i64* %tsc329, align 8
  %sub366 = sub i64 %call365, %144
  %145 = load i64, i64* %jj328, align 8
  %mul367 = mul i64 %145, 1024
  %div368 = udiv i64 %sub366, %mul367
  %call369 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.30, i64 0, i64 0), i64 noundef %div364, i64 noundef %div368) #7
  br label %if.end370

if.end370:                                        ; preds = %if.else362, %if.then358
  br label %do.end371

do.end371:                                        ; preds = %if.end370
  br label %if.end372

if.end372:                                        ; preds = %do.end371, %if.end322
  %sha512373 = getelementptr inbounds %struct.todo_list, %struct.todo_list* %todo, i32 0, i32 4
  %146 = load i8, i8* %sha512373, align 1
  %tobool374 = icmp ne i8 %146, 0
  br i1 %tobool374, label %if.then375, label %if.end422

if.then375:                                       ; preds = %if.end372
  br label %do.body376

do.body376:                                       ; preds = %if.then375
  store i32 0, i32* %ret380, align 4
  %call381 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.27, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.34, i64 0, i64 0)) #7
  %147 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call382 = call i32 @fflush(%struct._IO_FILE* noundef %147) #7
  call void @mbedtls_set_alarm(i32 noundef 1) #7
  store i64 1, i64* %ii377, align 8
  br label %for.cond383

for.cond383:                                      ; preds = %for.inc392, %do.body376
  %148 = load i32, i32* %ret380, align 4
  %cmp384 = icmp eq i32 %148, 0
  br i1 %cmp384, label %land.rhs385, label %land.end388

land.rhs385:                                      ; preds = %for.cond383
  %149 = load volatile i32, i32* @mbedtls_timing_alarmed, align 4
  %tobool386 = icmp ne i32 %149, 0
  %lnot387 = xor i1 %tobool386, true
  br label %land.end388

land.end388:                                      ; preds = %land.rhs385, %for.cond383
  %150 = phi i1 [ false, %for.cond383 ], [ %lnot387, %land.rhs385 ]
  br i1 %150, label %for.body389, label %for.end394

for.body389:                                      ; preds = %land.end388
  %arraydecay390 = getelementptr inbounds [200 x i8], [200 x i8]* %tmp, i64 0, i64 0
  %call391 = call i32 @mbedtls_sha512(i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @buf, i64 0, i64 0), i64 noundef 1024, i8* noundef %arraydecay390, i32 noundef 0) #7
  store i32 %call391, i32* %ret380, align 4
  br label %for.inc392

for.inc392:                                       ; preds = %for.body389
  %151 = load i64, i64* %ii377, align 8
  %inc393 = add i64 %151, 1
  store i64 %inc393, i64* %ii377, align 8
  br label %for.cond383, !llvm.loop !14

for.end394:                                       ; preds = %land.end388
  %call395 = call i64 @mbedtls_timing_hardclock() #7
  store i64 %call395, i64* %tsc379, align 8
  store i64 0, i64* %jj378, align 8
  br label %for.cond396

for.cond396:                                      ; preds = %for.inc404, %for.end394
  %152 = load i32, i32* %ret380, align 4
  %cmp397 = icmp eq i32 %152, 0
  br i1 %cmp397, label %land.rhs398, label %land.end400

land.rhs398:                                      ; preds = %for.cond396
  %153 = load i64, i64* %jj378, align 8
  %cmp399 = icmp ult i64 %153, 1024
  br label %land.end400

land.end400:                                      ; preds = %land.rhs398, %for.cond396
  %154 = phi i1 [ false, %for.cond396 ], [ %cmp399, %land.rhs398 ]
  br i1 %154, label %for.body401, label %for.end406

for.body401:                                      ; preds = %land.end400
  %arraydecay402 = getelementptr inbounds [200 x i8], [200 x i8]* %tmp, i64 0, i64 0
  %call403 = call i32 @mbedtls_sha512(i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @buf, i64 0, i64 0), i64 noundef 1024, i8* noundef %arraydecay402, i32 noundef 0) #7
  store i32 %call403, i32* %ret380, align 4
  br label %for.inc404

for.inc404:                                       ; preds = %for.body401
  %155 = load i64, i64* %jj378, align 8
  %inc405 = add i64 %155, 1
  store i64 %inc405, i64* %jj378, align 8
  br label %for.cond396, !llvm.loop !15

for.end406:                                       ; preds = %land.end400
  %156 = load i32, i32* %ret380, align 4
  %cmp407 = icmp ne i32 %156, 0
  br i1 %cmp407, label %if.then408, label %if.else412

if.then408:                                       ; preds = %for.end406
  %157 = load i32, i32* %ret380, align 4
  %arraydecay409 = getelementptr inbounds [200 x i8], [200 x i8]* %tmp, i64 0, i64 0
  call void @mbedtls_strerror(i32 noundef %157, i8* noundef %arraydecay409, i64 noundef 200) #7
  %arraydecay410 = getelementptr inbounds [200 x i8], [200 x i8]* %tmp, i64 0, i64 0
  %call411 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i64 0, i64 0), i8* noundef %arraydecay410) #7
  br label %if.end420

if.else412:                                       ; preds = %for.end406
  %158 = load i64, i64* %ii377, align 8
  %mul413 = mul i64 %158, 1024
  %div414 = udiv i64 %mul413, 1024
  %call415 = call i64 @mbedtls_timing_hardclock() #7
  %159 = load i64, i64* %tsc379, align 8
  %sub416 = sub i64 %call415, %159
  %160 = load i64, i64* %jj378, align 8
  %mul417 = mul i64 %160, 1024
  %div418 = udiv i64 %sub416, %mul417
  %call419 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.30, i64 0, i64 0), i64 noundef %div414, i64 noundef %div418) #7
  br label %if.end420

if.end420:                                        ; preds = %if.else412, %if.then408
  br label %do.end421

do.end421:                                        ; preds = %if.end420
  br label %if.end422

if.end422:                                        ; preds = %do.end421, %if.end372
  %des3423 = getelementptr inbounds %struct.todo_list, %struct.todo_list* %todo, i32 0, i32 5
  %161 = load i8, i8* %des3423, align 1
  %tobool424 = icmp ne i8 %161, 0
  br i1 %tobool424, label %if.then425, label %if.end478

if.then425:                                       ; preds = %if.end422
  call void @mbedtls_des3_init(%struct.mbedtls_des3_context* noundef %des3426) #7
  %arraydecay427 = getelementptr inbounds [200 x i8], [200 x i8]* %tmp, i64 0, i64 0
  %call428 = call i32 @mbedtls_des3_set3key_enc(%struct.mbedtls_des3_context* noundef %des3426, i8* noundef %arraydecay427) #7
  %cmp429 = icmp ne i32 %call428, 0
  br i1 %cmp429, label %if.then430, label %if.end431

if.then430:                                       ; preds = %if.then425
  call void @exit(i32 noundef 1) #10
  unreachable

if.end431:                                        ; preds = %if.then425
  br label %do.body432

do.body432:                                       ; preds = %if.end431
  store i32 0, i32* %ret436, align 4
  %call437 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.27, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.35, i64 0, i64 0)) #7
  %162 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call438 = call i32 @fflush(%struct._IO_FILE* noundef %162) #7
  call void @mbedtls_set_alarm(i32 noundef 1) #7
  store i64 1, i64* %ii433, align 8
  br label %for.cond439

for.cond439:                                      ; preds = %for.inc448, %do.body432
  %163 = load i32, i32* %ret436, align 4
  %cmp440 = icmp eq i32 %163, 0
  br i1 %cmp440, label %land.rhs441, label %land.end444

land.rhs441:                                      ; preds = %for.cond439
  %164 = load volatile i32, i32* @mbedtls_timing_alarmed, align 4
  %tobool442 = icmp ne i32 %164, 0
  %lnot443 = xor i1 %tobool442, true
  br label %land.end444

land.end444:                                      ; preds = %land.rhs441, %for.cond439
  %165 = phi i1 [ false, %for.cond439 ], [ %lnot443, %land.rhs441 ]
  br i1 %165, label %for.body445, label %for.end450

for.body445:                                      ; preds = %land.end444
  %arraydecay446 = getelementptr inbounds [200 x i8], [200 x i8]* %tmp, i64 0, i64 0
  %call447 = call i32 @mbedtls_des3_crypt_cbc(%struct.mbedtls_des3_context* noundef %des3426, i32 noundef 1, i64 noundef 1024, i8* noundef %arraydecay446, i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @buf, i64 0, i64 0), i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @buf, i64 0, i64 0)) #7
  store i32 %call447, i32* %ret436, align 4
  br label %for.inc448

for.inc448:                                       ; preds = %for.body445
  %166 = load i64, i64* %ii433, align 8
  %inc449 = add i64 %166, 1
  store i64 %inc449, i64* %ii433, align 8
  br label %for.cond439, !llvm.loop !16

for.end450:                                       ; preds = %land.end444
  %call451 = call i64 @mbedtls_timing_hardclock() #7
  store i64 %call451, i64* %tsc435, align 8
  store i64 0, i64* %jj434, align 8
  br label %for.cond452

for.cond452:                                      ; preds = %for.inc460, %for.end450
  %167 = load i32, i32* %ret436, align 4
  %cmp453 = icmp eq i32 %167, 0
  br i1 %cmp453, label %land.rhs454, label %land.end456

land.rhs454:                                      ; preds = %for.cond452
  %168 = load i64, i64* %jj434, align 8
  %cmp455 = icmp ult i64 %168, 1024
  br label %land.end456

land.end456:                                      ; preds = %land.rhs454, %for.cond452
  %169 = phi i1 [ false, %for.cond452 ], [ %cmp455, %land.rhs454 ]
  br i1 %169, label %for.body457, label %for.end462

for.body457:                                      ; preds = %land.end456
  %arraydecay458 = getelementptr inbounds [200 x i8], [200 x i8]* %tmp, i64 0, i64 0
  %call459 = call i32 @mbedtls_des3_crypt_cbc(%struct.mbedtls_des3_context* noundef %des3426, i32 noundef 1, i64 noundef 1024, i8* noundef %arraydecay458, i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @buf, i64 0, i64 0), i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @buf, i64 0, i64 0)) #7
  store i32 %call459, i32* %ret436, align 4
  br label %for.inc460

for.inc460:                                       ; preds = %for.body457
  %170 = load i64, i64* %jj434, align 8
  %inc461 = add i64 %170, 1
  store i64 %inc461, i64* %jj434, align 8
  br label %for.cond452, !llvm.loop !17

for.end462:                                       ; preds = %land.end456
  %171 = load i32, i32* %ret436, align 4
  %cmp463 = icmp ne i32 %171, 0
  br i1 %cmp463, label %if.then464, label %if.else468

if.then464:                                       ; preds = %for.end462
  %172 = load i32, i32* %ret436, align 4
  %arraydecay465 = getelementptr inbounds [200 x i8], [200 x i8]* %tmp, i64 0, i64 0
  call void @mbedtls_strerror(i32 noundef %172, i8* noundef %arraydecay465, i64 noundef 200) #7
  %arraydecay466 = getelementptr inbounds [200 x i8], [200 x i8]* %tmp, i64 0, i64 0
  %call467 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i64 0, i64 0), i8* noundef %arraydecay466) #7
  br label %if.end476

if.else468:                                       ; preds = %for.end462
  %173 = load i64, i64* %ii433, align 8
  %mul469 = mul i64 %173, 1024
  %div470 = udiv i64 %mul469, 1024
  %call471 = call i64 @mbedtls_timing_hardclock() #7
  %174 = load i64, i64* %tsc435, align 8
  %sub472 = sub i64 %call471, %174
  %175 = load i64, i64* %jj434, align 8
  %mul473 = mul i64 %175, 1024
  %div474 = udiv i64 %sub472, %mul473
  %call475 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.30, i64 0, i64 0), i64 noundef %div470, i64 noundef %div474) #7
  br label %if.end476

if.end476:                                        ; preds = %if.else468, %if.then464
  br label %do.end477

do.end477:                                        ; preds = %if.end476
  call void @mbedtls_des3_free(%struct.mbedtls_des3_context* noundef %des3426) #7
  br label %if.end478

if.end478:                                        ; preds = %do.end477, %if.end422
  %des479 = getelementptr inbounds %struct.todo_list, %struct.todo_list* %todo, i32 0, i32 6
  %176 = load i8, i8* %des479, align 1
  %tobool480 = icmp ne i8 %176, 0
  br i1 %tobool480, label %if.then481, label %if.end534

if.then481:                                       ; preds = %if.end478
  call void @mbedtls_des_init(%struct.mbedtls_des_context* noundef %des482) #7
  %arraydecay483 = getelementptr inbounds [200 x i8], [200 x i8]* %tmp, i64 0, i64 0
  %call484 = call i32 @mbedtls_des_setkey_enc(%struct.mbedtls_des_context* noundef %des482, i8* noundef %arraydecay483) #7
  %cmp485 = icmp ne i32 %call484, 0
  br i1 %cmp485, label %if.then486, label %if.end487

if.then486:                                       ; preds = %if.then481
  call void @exit(i32 noundef 1) #10
  unreachable

if.end487:                                        ; preds = %if.then481
  br label %do.body488

do.body488:                                       ; preds = %if.end487
  store i32 0, i32* %ret492, align 4
  %call493 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.27, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.36, i64 0, i64 0)) #7
  %177 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call494 = call i32 @fflush(%struct._IO_FILE* noundef %177) #7
  call void @mbedtls_set_alarm(i32 noundef 1) #7
  store i64 1, i64* %ii489, align 8
  br label %for.cond495

for.cond495:                                      ; preds = %for.inc504, %do.body488
  %178 = load i32, i32* %ret492, align 4
  %cmp496 = icmp eq i32 %178, 0
  br i1 %cmp496, label %land.rhs497, label %land.end500

land.rhs497:                                      ; preds = %for.cond495
  %179 = load volatile i32, i32* @mbedtls_timing_alarmed, align 4
  %tobool498 = icmp ne i32 %179, 0
  %lnot499 = xor i1 %tobool498, true
  br label %land.end500

land.end500:                                      ; preds = %land.rhs497, %for.cond495
  %180 = phi i1 [ false, %for.cond495 ], [ %lnot499, %land.rhs497 ]
  br i1 %180, label %for.body501, label %for.end506

for.body501:                                      ; preds = %land.end500
  %arraydecay502 = getelementptr inbounds [200 x i8], [200 x i8]* %tmp, i64 0, i64 0
  %call503 = call i32 @mbedtls_des_crypt_cbc(%struct.mbedtls_des_context* noundef %des482, i32 noundef 1, i64 noundef 1024, i8* noundef %arraydecay502, i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @buf, i64 0, i64 0), i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @buf, i64 0, i64 0)) #7
  store i32 %call503, i32* %ret492, align 4
  br label %for.inc504

for.inc504:                                       ; preds = %for.body501
  %181 = load i64, i64* %ii489, align 8
  %inc505 = add i64 %181, 1
  store i64 %inc505, i64* %ii489, align 8
  br label %for.cond495, !llvm.loop !18

for.end506:                                       ; preds = %land.end500
  %call507 = call i64 @mbedtls_timing_hardclock() #7
  store i64 %call507, i64* %tsc491, align 8
  store i64 0, i64* %jj490, align 8
  br label %for.cond508

for.cond508:                                      ; preds = %for.inc516, %for.end506
  %182 = load i32, i32* %ret492, align 4
  %cmp509 = icmp eq i32 %182, 0
  br i1 %cmp509, label %land.rhs510, label %land.end512

land.rhs510:                                      ; preds = %for.cond508
  %183 = load i64, i64* %jj490, align 8
  %cmp511 = icmp ult i64 %183, 1024
  br label %land.end512

land.end512:                                      ; preds = %land.rhs510, %for.cond508
  %184 = phi i1 [ false, %for.cond508 ], [ %cmp511, %land.rhs510 ]
  br i1 %184, label %for.body513, label %for.end518

for.body513:                                      ; preds = %land.end512
  %arraydecay514 = getelementptr inbounds [200 x i8], [200 x i8]* %tmp, i64 0, i64 0
  %call515 = call i32 @mbedtls_des_crypt_cbc(%struct.mbedtls_des_context* noundef %des482, i32 noundef 1, i64 noundef 1024, i8* noundef %arraydecay514, i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @buf, i64 0, i64 0), i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @buf, i64 0, i64 0)) #7
  store i32 %call515, i32* %ret492, align 4
  br label %for.inc516

for.inc516:                                       ; preds = %for.body513
  %185 = load i64, i64* %jj490, align 8
  %inc517 = add i64 %185, 1
  store i64 %inc517, i64* %jj490, align 8
  br label %for.cond508, !llvm.loop !19

for.end518:                                       ; preds = %land.end512
  %186 = load i32, i32* %ret492, align 4
  %cmp519 = icmp ne i32 %186, 0
  br i1 %cmp519, label %if.then520, label %if.else524

if.then520:                                       ; preds = %for.end518
  %187 = load i32, i32* %ret492, align 4
  %arraydecay521 = getelementptr inbounds [200 x i8], [200 x i8]* %tmp, i64 0, i64 0
  call void @mbedtls_strerror(i32 noundef %187, i8* noundef %arraydecay521, i64 noundef 200) #7
  %arraydecay522 = getelementptr inbounds [200 x i8], [200 x i8]* %tmp, i64 0, i64 0
  %call523 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i64 0, i64 0), i8* noundef %arraydecay522) #7
  br label %if.end532

if.else524:                                       ; preds = %for.end518
  %188 = load i64, i64* %ii489, align 8
  %mul525 = mul i64 %188, 1024
  %div526 = udiv i64 %mul525, 1024
  %call527 = call i64 @mbedtls_timing_hardclock() #7
  %189 = load i64, i64* %tsc491, align 8
  %sub528 = sub i64 %call527, %189
  %190 = load i64, i64* %jj490, align 8
  %mul529 = mul i64 %190, 1024
  %div530 = udiv i64 %sub528, %mul529
  %call531 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.30, i64 0, i64 0), i64 noundef %div526, i64 noundef %div530) #7
  br label %if.end532

if.end532:                                        ; preds = %if.else524, %if.then520
  br label %do.end533

do.end533:                                        ; preds = %if.end532
  call void @mbedtls_des_free(%struct.mbedtls_des_context* noundef %des482) #7
  br label %if.end534

if.end534:                                        ; preds = %do.end533, %if.end478
  %des3_cmac535 = getelementptr inbounds %struct.todo_list, %struct.todo_list* %todo, i32 0, i32 13
  %191 = load i8, i8* %des3_cmac535, align 1
  %tobool536 = icmp ne i8 %191, 0
  br i1 %tobool536, label %if.then537, label %if.end590

if.then537:                                       ; preds = %if.end534
  %call538 = call i8* @memset(i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @buf, i64 0, i64 0), i32 noundef 0, i64 noundef 1024) #8
  %arraydecay539 = getelementptr inbounds [200 x i8], [200 x i8]* %tmp, i64 0, i64 0
  %call540 = call i8* @memset(i8* noundef %arraydecay539, i32 noundef 0, i64 noundef 200) #8
  %call541 = call %struct.mbedtls_cipher_info_t* @mbedtls_cipher_info_from_type(i32 noundef 36) #7
  store %struct.mbedtls_cipher_info_t* %call541, %struct.mbedtls_cipher_info_t** %cipher_info, align 8
  br label %do.body542

do.body542:                                       ; preds = %if.then537
  store i32 0, i32* %ret546, align 4
  %call547 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.27, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.37, i64 0, i64 0)) #7
  %192 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call548 = call i32 @fflush(%struct._IO_FILE* noundef %192) #7
  call void @mbedtls_set_alarm(i32 noundef 1) #7
  store i64 1, i64* %ii543, align 8
  br label %for.cond549

for.cond549:                                      ; preds = %for.inc559, %do.body542
  %193 = load i32, i32* %ret546, align 4
  %cmp550 = icmp eq i32 %193, 0
  br i1 %cmp550, label %land.rhs551, label %land.end554

land.rhs551:                                      ; preds = %for.cond549
  %194 = load volatile i32, i32* @mbedtls_timing_alarmed, align 4
  %tobool552 = icmp ne i32 %194, 0
  %lnot553 = xor i1 %tobool552, true
  br label %land.end554

land.end554:                                      ; preds = %land.rhs551, %for.cond549
  %195 = phi i1 [ false, %for.cond549 ], [ %lnot553, %land.rhs551 ]
  br i1 %195, label %for.body555, label %for.end561

for.body555:                                      ; preds = %land.end554
  %196 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %cipher_info, align 8
  %arraydecay556 = getelementptr inbounds [200 x i8], [200 x i8]* %tmp, i64 0, i64 0
  %arraydecay557 = getelementptr inbounds [8 x i8], [8 x i8]* %output, i64 0, i64 0
  %call558 = call i32 @mbedtls_cipher_cmac(%struct.mbedtls_cipher_info_t* noundef %196, i8* noundef %arraydecay556, i64 noundef 192, i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @buf, i64 0, i64 0), i64 noundef 1024, i8* noundef %arraydecay557) #7
  store i32 %call558, i32* %ret546, align 4
  br label %for.inc559

for.inc559:                                       ; preds = %for.body555
  %197 = load i64, i64* %ii543, align 8
  %inc560 = add i64 %197, 1
  store i64 %inc560, i64* %ii543, align 8
  br label %for.cond549, !llvm.loop !20

for.end561:                                       ; preds = %land.end554
  %call562 = call i64 @mbedtls_timing_hardclock() #7
  store i64 %call562, i64* %tsc545, align 8
  store i64 0, i64* %jj544, align 8
  br label %for.cond563

for.cond563:                                      ; preds = %for.inc572, %for.end561
  %198 = load i32, i32* %ret546, align 4
  %cmp564 = icmp eq i32 %198, 0
  br i1 %cmp564, label %land.rhs565, label %land.end567

land.rhs565:                                      ; preds = %for.cond563
  %199 = load i64, i64* %jj544, align 8
  %cmp566 = icmp ult i64 %199, 1024
  br label %land.end567

land.end567:                                      ; preds = %land.rhs565, %for.cond563
  %200 = phi i1 [ false, %for.cond563 ], [ %cmp566, %land.rhs565 ]
  br i1 %200, label %for.body568, label %for.end574

for.body568:                                      ; preds = %land.end567
  %201 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %cipher_info, align 8
  %arraydecay569 = getelementptr inbounds [200 x i8], [200 x i8]* %tmp, i64 0, i64 0
  %arraydecay570 = getelementptr inbounds [8 x i8], [8 x i8]* %output, i64 0, i64 0
  %call571 = call i32 @mbedtls_cipher_cmac(%struct.mbedtls_cipher_info_t* noundef %201, i8* noundef %arraydecay569, i64 noundef 192, i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @buf, i64 0, i64 0), i64 noundef 1024, i8* noundef %arraydecay570) #7
  store i32 %call571, i32* %ret546, align 4
  br label %for.inc572

for.inc572:                                       ; preds = %for.body568
  %202 = load i64, i64* %jj544, align 8
  %inc573 = add i64 %202, 1
  store i64 %inc573, i64* %jj544, align 8
  br label %for.cond563, !llvm.loop !21

for.end574:                                       ; preds = %land.end567
  %203 = load i32, i32* %ret546, align 4
  %cmp575 = icmp ne i32 %203, 0
  br i1 %cmp575, label %if.then576, label %if.else580

if.then576:                                       ; preds = %for.end574
  %204 = load i32, i32* %ret546, align 4
  %arraydecay577 = getelementptr inbounds [200 x i8], [200 x i8]* %tmp, i64 0, i64 0
  call void @mbedtls_strerror(i32 noundef %204, i8* noundef %arraydecay577, i64 noundef 200) #7
  %arraydecay578 = getelementptr inbounds [200 x i8], [200 x i8]* %tmp, i64 0, i64 0
  %call579 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i64 0, i64 0), i8* noundef %arraydecay578) #7
  br label %if.end588

if.else580:                                       ; preds = %for.end574
  %205 = load i64, i64* %ii543, align 8
  %mul581 = mul i64 %205, 1024
  %div582 = udiv i64 %mul581, 1024
  %call583 = call i64 @mbedtls_timing_hardclock() #7
  %206 = load i64, i64* %tsc545, align 8
  %sub584 = sub i64 %call583, %206
  %207 = load i64, i64* %jj544, align 8
  %mul585 = mul i64 %207, 1024
  %div586 = udiv i64 %sub584, %mul585
  %call587 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.30, i64 0, i64 0), i64 noundef %div582, i64 noundef %div586) #7
  br label %if.end588

if.end588:                                        ; preds = %if.else580, %if.then576
  br label %do.end589

do.end589:                                        ; preds = %if.end588
  br label %if.end590

if.end590:                                        ; preds = %do.end589, %if.end534
  %aes_cbc591 = getelementptr inbounds %struct.todo_list, %struct.todo_list* %todo, i32 0, i32 7
  %208 = load i8, i8* %aes_cbc591, align 1
  %tobool592 = icmp ne i8 %208, 0
  br i1 %tobool592, label %if.then593, label %if.end661

if.then593:                                       ; preds = %if.end590
  call void @mbedtls_aes_init(%struct.mbedtls_aes_context* noundef %aes) #7
  store i32 128, i32* %keysize, align 4
  br label %for.cond594

for.cond594:                                      ; preds = %for.inc659, %if.then593
  %209 = load i32, i32* %keysize, align 4
  %cmp595 = icmp sle i32 %209, 256
  br i1 %cmp595, label %for.body596, label %for.end660

for.body596:                                      ; preds = %for.cond594
  %arraydecay597 = getelementptr inbounds [25 x i8], [25 x i8]* %title, i64 0, i64 0
  %210 = load i32, i32* %keysize, align 4
  %call598 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %arraydecay597, i64 noundef 25, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.38, i64 0, i64 0), i32 noundef %210) #8
  %call599 = call i8* @memset(i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @buf, i64 0, i64 0), i32 noundef 0, i64 noundef 1024) #8
  %arraydecay600 = getelementptr inbounds [200 x i8], [200 x i8]* %tmp, i64 0, i64 0
  %call601 = call i8* @memset(i8* noundef %arraydecay600, i32 noundef 0, i64 noundef 200) #8
  %arraydecay602 = getelementptr inbounds [200 x i8], [200 x i8]* %tmp, i64 0, i64 0
  %211 = load i32, i32* %keysize, align 4
  %call603 = call i32 @mbedtls_aes_setkey_enc(%struct.mbedtls_aes_context* noundef %aes, i8* noundef %arraydecay602, i32 noundef %211) #7
  store i32 %call603, i32* %CHECK_AND_CONTINUE_ret, align 4
  %212 = load i32, i32* %CHECK_AND_CONTINUE_ret, align 4
  %cmp604 = icmp eq i32 %212, -114
  br i1 %cmp604, label %if.then605, label %if.else607

if.then605:                                       ; preds = %for.body596
  %call606 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.39, i64 0, i64 0)) #7
  br label %for.inc659

if.else607:                                       ; preds = %for.body596
  %213 = load i32, i32* %CHECK_AND_CONTINUE_ret, align 4
  %cmp608 = icmp ne i32 %213, 0
  br i1 %cmp608, label %if.then609, label %if.end610

if.then609:                                       ; preds = %if.else607
  call void @exit(i32 noundef 1) #10
  unreachable

if.end610:                                        ; preds = %if.else607
  br label %if.end611

if.end611:                                        ; preds = %if.end610
  br label %do.body612

do.body612:                                       ; preds = %if.end611
  store i32 0, i32* %ret616, align 4
  %arraydecay617 = getelementptr inbounds [25 x i8], [25 x i8]* %title, i64 0, i64 0
  %call618 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.27, i64 0, i64 0), i8* noundef %arraydecay617) #7
  %214 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call619 = call i32 @fflush(%struct._IO_FILE* noundef %214) #7
  call void @mbedtls_set_alarm(i32 noundef 1) #7
  store i64 1, i64* %ii613, align 8
  br label %for.cond620

for.cond620:                                      ; preds = %for.inc629, %do.body612
  %215 = load i32, i32* %ret616, align 4
  %cmp621 = icmp eq i32 %215, 0
  br i1 %cmp621, label %land.rhs622, label %land.end625

land.rhs622:                                      ; preds = %for.cond620
  %216 = load volatile i32, i32* @mbedtls_timing_alarmed, align 4
  %tobool623 = icmp ne i32 %216, 0
  %lnot624 = xor i1 %tobool623, true
  br label %land.end625

land.end625:                                      ; preds = %land.rhs622, %for.cond620
  %217 = phi i1 [ false, %for.cond620 ], [ %lnot624, %land.rhs622 ]
  br i1 %217, label %for.body626, label %for.end631

for.body626:                                      ; preds = %land.end625
  %arraydecay627 = getelementptr inbounds [200 x i8], [200 x i8]* %tmp, i64 0, i64 0
  %call628 = call i32 @mbedtls_aes_crypt_cbc(%struct.mbedtls_aes_context* noundef %aes, i32 noundef 1, i64 noundef 1024, i8* noundef %arraydecay627, i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @buf, i64 0, i64 0), i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @buf, i64 0, i64 0)) #7
  store i32 %call628, i32* %ret616, align 4
  br label %for.inc629

for.inc629:                                       ; preds = %for.body626
  %218 = load i64, i64* %ii613, align 8
  %inc630 = add i64 %218, 1
  store i64 %inc630, i64* %ii613, align 8
  br label %for.cond620, !llvm.loop !22

for.end631:                                       ; preds = %land.end625
  %call632 = call i64 @mbedtls_timing_hardclock() #7
  store i64 %call632, i64* %tsc615, align 8
  store i64 0, i64* %jj614, align 8
  br label %for.cond633

for.cond633:                                      ; preds = %for.inc641, %for.end631
  %219 = load i32, i32* %ret616, align 4
  %cmp634 = icmp eq i32 %219, 0
  br i1 %cmp634, label %land.rhs635, label %land.end637

land.rhs635:                                      ; preds = %for.cond633
  %220 = load i64, i64* %jj614, align 8
  %cmp636 = icmp ult i64 %220, 1024
  br label %land.end637

land.end637:                                      ; preds = %land.rhs635, %for.cond633
  %221 = phi i1 [ false, %for.cond633 ], [ %cmp636, %land.rhs635 ]
  br i1 %221, label %for.body638, label %for.end643

for.body638:                                      ; preds = %land.end637
  %arraydecay639 = getelementptr inbounds [200 x i8], [200 x i8]* %tmp, i64 0, i64 0
  %call640 = call i32 @mbedtls_aes_crypt_cbc(%struct.mbedtls_aes_context* noundef %aes, i32 noundef 1, i64 noundef 1024, i8* noundef %arraydecay639, i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @buf, i64 0, i64 0), i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @buf, i64 0, i64 0)) #7
  store i32 %call640, i32* %ret616, align 4
  br label %for.inc641

for.inc641:                                       ; preds = %for.body638
  %222 = load i64, i64* %jj614, align 8
  %inc642 = add i64 %222, 1
  store i64 %inc642, i64* %jj614, align 8
  br label %for.cond633, !llvm.loop !23

for.end643:                                       ; preds = %land.end637
  %223 = load i32, i32* %ret616, align 4
  %cmp644 = icmp ne i32 %223, 0
  br i1 %cmp644, label %if.then645, label %if.else649

if.then645:                                       ; preds = %for.end643
  %224 = load i32, i32* %ret616, align 4
  %arraydecay646 = getelementptr inbounds [200 x i8], [200 x i8]* %tmp, i64 0, i64 0
  call void @mbedtls_strerror(i32 noundef %224, i8* noundef %arraydecay646, i64 noundef 200) #7
  %arraydecay647 = getelementptr inbounds [200 x i8], [200 x i8]* %tmp, i64 0, i64 0
  %call648 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i64 0, i64 0), i8* noundef %arraydecay647) #7
  br label %if.end657

if.else649:                                       ; preds = %for.end643
  %225 = load i64, i64* %ii613, align 8
  %mul650 = mul i64 %225, 1024
  %div651 = udiv i64 %mul650, 1024
  %call652 = call i64 @mbedtls_timing_hardclock() #7
  %226 = load i64, i64* %tsc615, align 8
  %sub653 = sub i64 %call652, %226
  %227 = load i64, i64* %jj614, align 8
  %mul654 = mul i64 %227, 1024
  %div655 = udiv i64 %sub653, %mul654
  %call656 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.30, i64 0, i64 0), i64 noundef %div651, i64 noundef %div655) #7
  br label %if.end657

if.end657:                                        ; preds = %if.else649, %if.then645
  br label %do.end658

do.end658:                                        ; preds = %if.end657
  br label %for.inc659

for.inc659:                                       ; preds = %do.end658, %if.then605
  %228 = load i32, i32* %keysize, align 4
  %add = add nsw i32 %228, 64
  store i32 %add, i32* %keysize, align 4
  br label %for.cond594, !llvm.loop !24

for.end660:                                       ; preds = %for.cond594
  call void @mbedtls_aes_free(%struct.mbedtls_aes_context* noundef %aes) #7
  br label %if.end661

if.end661:                                        ; preds = %for.end660, %if.end590
  %aes_xts662 = getelementptr inbounds %struct.todo_list, %struct.todo_list* %todo, i32 0, i32 10
  %229 = load i8, i8* %aes_xts662, align 1
  %tobool663 = icmp ne i8 %229, 0
  br i1 %tobool663, label %if.then664, label %if.end736

if.then664:                                       ; preds = %if.end661
  call void @mbedtls_aes_xts_init(%struct.mbedtls_aes_xts_context* noundef %ctx) #7
  store i32 128, i32* %keysize665, align 4
  br label %for.cond666

for.cond666:                                      ; preds = %for.inc733, %if.then664
  %230 = load i32, i32* %keysize665, align 4
  %cmp667 = icmp sle i32 %230, 256
  br i1 %cmp667, label %for.body668, label %for.end735

for.body668:                                      ; preds = %for.cond666
  %arraydecay669 = getelementptr inbounds [25 x i8], [25 x i8]* %title, i64 0, i64 0
  %231 = load i32, i32* %keysize665, align 4
  %call670 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %arraydecay669, i64 noundef 25, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.40, i64 0, i64 0), i32 noundef %231) #8
  %call671 = call i8* @memset(i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @buf, i64 0, i64 0), i32 noundef 0, i64 noundef 1024) #8
  %arraydecay672 = getelementptr inbounds [200 x i8], [200 x i8]* %tmp, i64 0, i64 0
  %call673 = call i8* @memset(i8* noundef %arraydecay672, i32 noundef 0, i64 noundef 200) #8
  %arraydecay675 = getelementptr inbounds [200 x i8], [200 x i8]* %tmp, i64 0, i64 0
  %232 = load i32, i32* %keysize665, align 4
  %mul676 = mul nsw i32 %232, 2
  %call677 = call i32 @mbedtls_aes_xts_setkey_enc(%struct.mbedtls_aes_xts_context* noundef %ctx, i8* noundef %arraydecay675, i32 noundef %mul676) #7
  store i32 %call677, i32* %CHECK_AND_CONTINUE_ret674, align 4
  %233 = load i32, i32* %CHECK_AND_CONTINUE_ret674, align 4
  %cmp678 = icmp eq i32 %233, -114
  br i1 %cmp678, label %if.then679, label %if.else681

if.then679:                                       ; preds = %for.body668
  %call680 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.39, i64 0, i64 0)) #7
  br label %for.inc733

if.else681:                                       ; preds = %for.body668
  %234 = load i32, i32* %CHECK_AND_CONTINUE_ret674, align 4
  %cmp682 = icmp ne i32 %234, 0
  br i1 %cmp682, label %if.then683, label %if.end684

if.then683:                                       ; preds = %if.else681
  call void @exit(i32 noundef 1) #10
  unreachable

if.end684:                                        ; preds = %if.else681
  br label %if.end685

if.end685:                                        ; preds = %if.end684
  br label %do.body686

do.body686:                                       ; preds = %if.end685
  store i32 0, i32* %ret690, align 4
  %arraydecay691 = getelementptr inbounds [25 x i8], [25 x i8]* %title, i64 0, i64 0
  %call692 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.27, i64 0, i64 0), i8* noundef %arraydecay691) #7
  %235 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call693 = call i32 @fflush(%struct._IO_FILE* noundef %235) #7
  call void @mbedtls_set_alarm(i32 noundef 1) #7
  store i64 1, i64* %ii687, align 8
  br label %for.cond694

for.cond694:                                      ; preds = %for.inc703, %do.body686
  %236 = load i32, i32* %ret690, align 4
  %cmp695 = icmp eq i32 %236, 0
  br i1 %cmp695, label %land.rhs696, label %land.end699

land.rhs696:                                      ; preds = %for.cond694
  %237 = load volatile i32, i32* @mbedtls_timing_alarmed, align 4
  %tobool697 = icmp ne i32 %237, 0
  %lnot698 = xor i1 %tobool697, true
  br label %land.end699

land.end699:                                      ; preds = %land.rhs696, %for.cond694
  %238 = phi i1 [ false, %for.cond694 ], [ %lnot698, %land.rhs696 ]
  br i1 %238, label %for.body700, label %for.end705

for.body700:                                      ; preds = %land.end699
  %arraydecay701 = getelementptr inbounds [200 x i8], [200 x i8]* %tmp, i64 0, i64 0
  %call702 = call i32 @mbedtls_aes_crypt_xts(%struct.mbedtls_aes_xts_context* noundef %ctx, i32 noundef 1, i64 noundef 1024, i8* noundef %arraydecay701, i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @buf, i64 0, i64 0), i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @buf, i64 0, i64 0)) #7
  store i32 %call702, i32* %ret690, align 4
  br label %for.inc703

for.inc703:                                       ; preds = %for.body700
  %239 = load i64, i64* %ii687, align 8
  %inc704 = add i64 %239, 1
  store i64 %inc704, i64* %ii687, align 8
  br label %for.cond694, !llvm.loop !25

for.end705:                                       ; preds = %land.end699
  %call706 = call i64 @mbedtls_timing_hardclock() #7
  store i64 %call706, i64* %tsc689, align 8
  store i64 0, i64* %jj688, align 8
  br label %for.cond707

for.cond707:                                      ; preds = %for.inc715, %for.end705
  %240 = load i32, i32* %ret690, align 4
  %cmp708 = icmp eq i32 %240, 0
  br i1 %cmp708, label %land.rhs709, label %land.end711

land.rhs709:                                      ; preds = %for.cond707
  %241 = load i64, i64* %jj688, align 8
  %cmp710 = icmp ult i64 %241, 1024
  br label %land.end711

land.end711:                                      ; preds = %land.rhs709, %for.cond707
  %242 = phi i1 [ false, %for.cond707 ], [ %cmp710, %land.rhs709 ]
  br i1 %242, label %for.body712, label %for.end717

for.body712:                                      ; preds = %land.end711
  %arraydecay713 = getelementptr inbounds [200 x i8], [200 x i8]* %tmp, i64 0, i64 0
  %call714 = call i32 @mbedtls_aes_crypt_xts(%struct.mbedtls_aes_xts_context* noundef %ctx, i32 noundef 1, i64 noundef 1024, i8* noundef %arraydecay713, i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @buf, i64 0, i64 0), i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @buf, i64 0, i64 0)) #7
  store i32 %call714, i32* %ret690, align 4
  br label %for.inc715

for.inc715:                                       ; preds = %for.body712
  %243 = load i64, i64* %jj688, align 8
  %inc716 = add i64 %243, 1
  store i64 %inc716, i64* %jj688, align 8
  br label %for.cond707, !llvm.loop !26

for.end717:                                       ; preds = %land.end711
  %244 = load i32, i32* %ret690, align 4
  %cmp718 = icmp ne i32 %244, 0
  br i1 %cmp718, label %if.then719, label %if.else723

if.then719:                                       ; preds = %for.end717
  %245 = load i32, i32* %ret690, align 4
  %arraydecay720 = getelementptr inbounds [200 x i8], [200 x i8]* %tmp, i64 0, i64 0
  call void @mbedtls_strerror(i32 noundef %245, i8* noundef %arraydecay720, i64 noundef 200) #7
  %arraydecay721 = getelementptr inbounds [200 x i8], [200 x i8]* %tmp, i64 0, i64 0
  %call722 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i64 0, i64 0), i8* noundef %arraydecay721) #7
  br label %if.end731

if.else723:                                       ; preds = %for.end717
  %246 = load i64, i64* %ii687, align 8
  %mul724 = mul i64 %246, 1024
  %div725 = udiv i64 %mul724, 1024
  %call726 = call i64 @mbedtls_timing_hardclock() #7
  %247 = load i64, i64* %tsc689, align 8
  %sub727 = sub i64 %call726, %247
  %248 = load i64, i64* %jj688, align 8
  %mul728 = mul i64 %248, 1024
  %div729 = udiv i64 %sub727, %mul728
  %call730 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.30, i64 0, i64 0), i64 noundef %div725, i64 noundef %div729) #7
  br label %if.end731

if.end731:                                        ; preds = %if.else723, %if.then719
  br label %do.end732

do.end732:                                        ; preds = %if.end731
  call void @mbedtls_aes_xts_free(%struct.mbedtls_aes_xts_context* noundef %ctx) #7
  br label %for.inc733

for.inc733:                                       ; preds = %do.end732, %if.then679
  %249 = load i32, i32* %keysize665, align 4
  %add734 = add nsw i32 %249, 128
  store i32 %add734, i32* %keysize665, align 4
  br label %for.cond666, !llvm.loop !27

for.end735:                                       ; preds = %for.cond666
  br label %if.end736

if.end736:                                        ; preds = %for.end735, %if.end661
  %aes_gcm737 = getelementptr inbounds %struct.todo_list, %struct.todo_list* %todo, i32 0, i32 8
  %250 = load i8, i8* %aes_gcm737, align 1
  %tobool738 = icmp ne i8 %250, 0
  br i1 %tobool738, label %if.then739, label %if.end803

if.then739:                                       ; preds = %if.end736
  call void @mbedtls_gcm_init(%struct.mbedtls_gcm_context* noundef %gcm) #7
  store i32 128, i32* %keysize740, align 4
  br label %for.cond741

for.cond741:                                      ; preds = %for.inc800, %if.then739
  %251 = load i32, i32* %keysize740, align 4
  %cmp742 = icmp sle i32 %251, 256
  br i1 %cmp742, label %for.body743, label %for.end802

for.body743:                                      ; preds = %for.cond741
  %arraydecay744 = getelementptr inbounds [25 x i8], [25 x i8]* %title, i64 0, i64 0
  %252 = load i32, i32* %keysize740, align 4
  %call745 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %arraydecay744, i64 noundef 25, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.41, i64 0, i64 0), i32 noundef %252) #8
  %call746 = call i8* @memset(i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @buf, i64 0, i64 0), i32 noundef 0, i64 noundef 1024) #8
  %arraydecay747 = getelementptr inbounds [200 x i8], [200 x i8]* %tmp, i64 0, i64 0
  %call748 = call i8* @memset(i8* noundef %arraydecay747, i32 noundef 0, i64 noundef 200) #8
  %arraydecay749 = getelementptr inbounds [200 x i8], [200 x i8]* %tmp, i64 0, i64 0
  %253 = load i32, i32* %keysize740, align 4
  %call750 = call i32 @mbedtls_gcm_setkey(%struct.mbedtls_gcm_context* noundef %gcm, i32 noundef 2, i8* noundef %arraydecay749, i32 noundef %253) #7
  br label %do.body751

do.body751:                                       ; preds = %for.body743
  store i32 0, i32* %ret755, align 4
  %arraydecay756 = getelementptr inbounds [25 x i8], [25 x i8]* %title, i64 0, i64 0
  %call757 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.27, i64 0, i64 0), i8* noundef %arraydecay756) #7
  %254 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call758 = call i32 @fflush(%struct._IO_FILE* noundef %254) #7
  call void @mbedtls_set_alarm(i32 noundef 1) #7
  store i64 1, i64* %ii752, align 8
  br label %for.cond759

for.cond759:                                      ; preds = %for.inc769, %do.body751
  %255 = load i32, i32* %ret755, align 4
  %cmp760 = icmp eq i32 %255, 0
  br i1 %cmp760, label %land.rhs761, label %land.end764

land.rhs761:                                      ; preds = %for.cond759
  %256 = load volatile i32, i32* @mbedtls_timing_alarmed, align 4
  %tobool762 = icmp ne i32 %256, 0
  %lnot763 = xor i1 %tobool762, true
  br label %land.end764

land.end764:                                      ; preds = %land.rhs761, %for.cond759
  %257 = phi i1 [ false, %for.cond759 ], [ %lnot763, %land.rhs761 ]
  br i1 %257, label %for.body765, label %for.end771

for.body765:                                      ; preds = %land.end764
  %arraydecay766 = getelementptr inbounds [200 x i8], [200 x i8]* %tmp, i64 0, i64 0
  %arraydecay767 = getelementptr inbounds [200 x i8], [200 x i8]* %tmp, i64 0, i64 0
  %call768 = call i32 @mbedtls_gcm_crypt_and_tag(%struct.mbedtls_gcm_context* noundef %gcm, i32 noundef 1, i64 noundef 1024, i8* noundef %arraydecay766, i64 noundef 12, i8* noundef null, i64 noundef 0, i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @buf, i64 0, i64 0), i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @buf, i64 0, i64 0), i64 noundef 16, i8* noundef %arraydecay767) #7
  store i32 %call768, i32* %ret755, align 4
  br label %for.inc769

for.inc769:                                       ; preds = %for.body765
  %258 = load i64, i64* %ii752, align 8
  %inc770 = add i64 %258, 1
  store i64 %inc770, i64* %ii752, align 8
  br label %for.cond759, !llvm.loop !28

for.end771:                                       ; preds = %land.end764
  %call772 = call i64 @mbedtls_timing_hardclock() #7
  store i64 %call772, i64* %tsc754, align 8
  store i64 0, i64* %jj753, align 8
  br label %for.cond773

for.cond773:                                      ; preds = %for.inc782, %for.end771
  %259 = load i32, i32* %ret755, align 4
  %cmp774 = icmp eq i32 %259, 0
  br i1 %cmp774, label %land.rhs775, label %land.end777

land.rhs775:                                      ; preds = %for.cond773
  %260 = load i64, i64* %jj753, align 8
  %cmp776 = icmp ult i64 %260, 1024
  br label %land.end777

land.end777:                                      ; preds = %land.rhs775, %for.cond773
  %261 = phi i1 [ false, %for.cond773 ], [ %cmp776, %land.rhs775 ]
  br i1 %261, label %for.body778, label %for.end784

for.body778:                                      ; preds = %land.end777
  %arraydecay779 = getelementptr inbounds [200 x i8], [200 x i8]* %tmp, i64 0, i64 0
  %arraydecay780 = getelementptr inbounds [200 x i8], [200 x i8]* %tmp, i64 0, i64 0
  %call781 = call i32 @mbedtls_gcm_crypt_and_tag(%struct.mbedtls_gcm_context* noundef %gcm, i32 noundef 1, i64 noundef 1024, i8* noundef %arraydecay779, i64 noundef 12, i8* noundef null, i64 noundef 0, i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @buf, i64 0, i64 0), i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @buf, i64 0, i64 0), i64 noundef 16, i8* noundef %arraydecay780) #7
  store i32 %call781, i32* %ret755, align 4
  br label %for.inc782

for.inc782:                                       ; preds = %for.body778
  %262 = load i64, i64* %jj753, align 8
  %inc783 = add i64 %262, 1
  store i64 %inc783, i64* %jj753, align 8
  br label %for.cond773, !llvm.loop !29

for.end784:                                       ; preds = %land.end777
  %263 = load i32, i32* %ret755, align 4
  %cmp785 = icmp ne i32 %263, 0
  br i1 %cmp785, label %if.then786, label %if.else790

if.then786:                                       ; preds = %for.end784
  %264 = load i32, i32* %ret755, align 4
  %arraydecay787 = getelementptr inbounds [200 x i8], [200 x i8]* %tmp, i64 0, i64 0
  call void @mbedtls_strerror(i32 noundef %264, i8* noundef %arraydecay787, i64 noundef 200) #7
  %arraydecay788 = getelementptr inbounds [200 x i8], [200 x i8]* %tmp, i64 0, i64 0
  %call789 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i64 0, i64 0), i8* noundef %arraydecay788) #7
  br label %if.end798

if.else790:                                       ; preds = %for.end784
  %265 = load i64, i64* %ii752, align 8
  %mul791 = mul i64 %265, 1024
  %div792 = udiv i64 %mul791, 1024
  %call793 = call i64 @mbedtls_timing_hardclock() #7
  %266 = load i64, i64* %tsc754, align 8
  %sub794 = sub i64 %call793, %266
  %267 = load i64, i64* %jj753, align 8
  %mul795 = mul i64 %267, 1024
  %div796 = udiv i64 %sub794, %mul795
  %call797 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.30, i64 0, i64 0), i64 noundef %div792, i64 noundef %div796) #7
  br label %if.end798

if.end798:                                        ; preds = %if.else790, %if.then786
  br label %do.end799

do.end799:                                        ; preds = %if.end798
  call void @mbedtls_gcm_free(%struct.mbedtls_gcm_context* noundef %gcm) #7
  br label %for.inc800

for.inc800:                                       ; preds = %do.end799
  %268 = load i32, i32* %keysize740, align 4
  %add801 = add nsw i32 %268, 64
  store i32 %add801, i32* %keysize740, align 4
  br label %for.cond741, !llvm.loop !30

for.end802:                                       ; preds = %for.cond741
  br label %if.end803

if.end803:                                        ; preds = %for.end802, %if.end736
  %aes_ccm804 = getelementptr inbounds %struct.todo_list, %struct.todo_list* %todo, i32 0, i32 9
  %269 = load i8, i8* %aes_ccm804, align 1
  %tobool805 = icmp ne i8 %269, 0
  br i1 %tobool805, label %if.then806, label %if.end870

if.then806:                                       ; preds = %if.end803
  call void @mbedtls_ccm_init(%struct.mbedtls_ccm_context* noundef %ccm) #7
  store i32 128, i32* %keysize807, align 4
  br label %for.cond808

for.cond808:                                      ; preds = %for.inc867, %if.then806
  %270 = load i32, i32* %keysize807, align 4
  %cmp809 = icmp sle i32 %270, 256
  br i1 %cmp809, label %for.body810, label %for.end869

for.body810:                                      ; preds = %for.cond808
  %arraydecay811 = getelementptr inbounds [25 x i8], [25 x i8]* %title, i64 0, i64 0
  %271 = load i32, i32* %keysize807, align 4
  %call812 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %arraydecay811, i64 noundef 25, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.42, i64 0, i64 0), i32 noundef %271) #8
  %call813 = call i8* @memset(i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @buf, i64 0, i64 0), i32 noundef 0, i64 noundef 1024) #8
  %arraydecay814 = getelementptr inbounds [200 x i8], [200 x i8]* %tmp, i64 0, i64 0
  %call815 = call i8* @memset(i8* noundef %arraydecay814, i32 noundef 0, i64 noundef 200) #8
  %arraydecay816 = getelementptr inbounds [200 x i8], [200 x i8]* %tmp, i64 0, i64 0
  %272 = load i32, i32* %keysize807, align 4
  %call817 = call i32 @mbedtls_ccm_setkey(%struct.mbedtls_ccm_context* noundef %ccm, i32 noundef 2, i8* noundef %arraydecay816, i32 noundef %272) #7
  br label %do.body818

do.body818:                                       ; preds = %for.body810
  store i32 0, i32* %ret822, align 4
  %arraydecay823 = getelementptr inbounds [25 x i8], [25 x i8]* %title, i64 0, i64 0
  %call824 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.27, i64 0, i64 0), i8* noundef %arraydecay823) #7
  %273 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call825 = call i32 @fflush(%struct._IO_FILE* noundef %273) #7
  call void @mbedtls_set_alarm(i32 noundef 1) #7
  store i64 1, i64* %ii819, align 8
  br label %for.cond826

for.cond826:                                      ; preds = %for.inc836, %do.body818
  %274 = load i32, i32* %ret822, align 4
  %cmp827 = icmp eq i32 %274, 0
  br i1 %cmp827, label %land.rhs828, label %land.end831

land.rhs828:                                      ; preds = %for.cond826
  %275 = load volatile i32, i32* @mbedtls_timing_alarmed, align 4
  %tobool829 = icmp ne i32 %275, 0
  %lnot830 = xor i1 %tobool829, true
  br label %land.end831

land.end831:                                      ; preds = %land.rhs828, %for.cond826
  %276 = phi i1 [ false, %for.cond826 ], [ %lnot830, %land.rhs828 ]
  br i1 %276, label %for.body832, label %for.end838

for.body832:                                      ; preds = %land.end831
  %arraydecay833 = getelementptr inbounds [200 x i8], [200 x i8]* %tmp, i64 0, i64 0
  %arraydecay834 = getelementptr inbounds [200 x i8], [200 x i8]* %tmp, i64 0, i64 0
  %call835 = call i32 @mbedtls_ccm_encrypt_and_tag(%struct.mbedtls_ccm_context* noundef %ccm, i64 noundef 1024, i8* noundef %arraydecay833, i64 noundef 12, i8* noundef null, i64 noundef 0, i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @buf, i64 0, i64 0), i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @buf, i64 0, i64 0), i8* noundef %arraydecay834, i64 noundef 16) #7
  store i32 %call835, i32* %ret822, align 4
  br label %for.inc836

for.inc836:                                       ; preds = %for.body832
  %277 = load i64, i64* %ii819, align 8
  %inc837 = add i64 %277, 1
  store i64 %inc837, i64* %ii819, align 8
  br label %for.cond826, !llvm.loop !31

for.end838:                                       ; preds = %land.end831
  %call839 = call i64 @mbedtls_timing_hardclock() #7
  store i64 %call839, i64* %tsc821, align 8
  store i64 0, i64* %jj820, align 8
  br label %for.cond840

for.cond840:                                      ; preds = %for.inc849, %for.end838
  %278 = load i32, i32* %ret822, align 4
  %cmp841 = icmp eq i32 %278, 0
  br i1 %cmp841, label %land.rhs842, label %land.end844

land.rhs842:                                      ; preds = %for.cond840
  %279 = load i64, i64* %jj820, align 8
  %cmp843 = icmp ult i64 %279, 1024
  br label %land.end844

land.end844:                                      ; preds = %land.rhs842, %for.cond840
  %280 = phi i1 [ false, %for.cond840 ], [ %cmp843, %land.rhs842 ]
  br i1 %280, label %for.body845, label %for.end851

for.body845:                                      ; preds = %land.end844
  %arraydecay846 = getelementptr inbounds [200 x i8], [200 x i8]* %tmp, i64 0, i64 0
  %arraydecay847 = getelementptr inbounds [200 x i8], [200 x i8]* %tmp, i64 0, i64 0
  %call848 = call i32 @mbedtls_ccm_encrypt_and_tag(%struct.mbedtls_ccm_context* noundef %ccm, i64 noundef 1024, i8* noundef %arraydecay846, i64 noundef 12, i8* noundef null, i64 noundef 0, i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @buf, i64 0, i64 0), i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @buf, i64 0, i64 0), i8* noundef %arraydecay847, i64 noundef 16) #7
  store i32 %call848, i32* %ret822, align 4
  br label %for.inc849

for.inc849:                                       ; preds = %for.body845
  %281 = load i64, i64* %jj820, align 8
  %inc850 = add i64 %281, 1
  store i64 %inc850, i64* %jj820, align 8
  br label %for.cond840, !llvm.loop !32

for.end851:                                       ; preds = %land.end844
  %282 = load i32, i32* %ret822, align 4
  %cmp852 = icmp ne i32 %282, 0
  br i1 %cmp852, label %if.then853, label %if.else857

if.then853:                                       ; preds = %for.end851
  %283 = load i32, i32* %ret822, align 4
  %arraydecay854 = getelementptr inbounds [200 x i8], [200 x i8]* %tmp, i64 0, i64 0
  call void @mbedtls_strerror(i32 noundef %283, i8* noundef %arraydecay854, i64 noundef 200) #7
  %arraydecay855 = getelementptr inbounds [200 x i8], [200 x i8]* %tmp, i64 0, i64 0
  %call856 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i64 0, i64 0), i8* noundef %arraydecay855) #7
  br label %if.end865

if.else857:                                       ; preds = %for.end851
  %284 = load i64, i64* %ii819, align 8
  %mul858 = mul i64 %284, 1024
  %div859 = udiv i64 %mul858, 1024
  %call860 = call i64 @mbedtls_timing_hardclock() #7
  %285 = load i64, i64* %tsc821, align 8
  %sub861 = sub i64 %call860, %285
  %286 = load i64, i64* %jj820, align 8
  %mul862 = mul i64 %286, 1024
  %div863 = udiv i64 %sub861, %mul862
  %call864 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.30, i64 0, i64 0), i64 noundef %div859, i64 noundef %div863) #7
  br label %if.end865

if.end865:                                        ; preds = %if.else857, %if.then853
  br label %do.end866

do.end866:                                        ; preds = %if.end865
  call void @mbedtls_ccm_free(%struct.mbedtls_ccm_context* noundef %ccm) #7
  br label %for.inc867

for.inc867:                                       ; preds = %do.end866
  %287 = load i32, i32* %keysize807, align 4
  %add868 = add nsw i32 %287, 64
  store i32 %add868, i32* %keysize807, align 4
  br label %for.cond808, !llvm.loop !33

for.end869:                                       ; preds = %for.cond808
  br label %if.end870

if.end870:                                        ; preds = %for.end869, %if.end803
  %chachapoly871 = getelementptr inbounds %struct.todo_list, %struct.todo_list* %todo, i32 0, i32 11
  %288 = load i8, i8* %chachapoly871, align 1
  %tobool872 = icmp ne i8 %288, 0
  br i1 %tobool872, label %if.then873, label %if.end931

if.then873:                                       ; preds = %if.end870
  call void @mbedtls_chachapoly_init(%struct.mbedtls_chachapoly_context* noundef %chachapoly874) #7
  %call875 = call i8* @memset(i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @buf, i64 0, i64 0), i32 noundef 0, i64 noundef 1024) #8
  %arraydecay876 = getelementptr inbounds [200 x i8], [200 x i8]* %tmp, i64 0, i64 0
  %call877 = call i8* @memset(i8* noundef %arraydecay876, i32 noundef 0, i64 noundef 200) #8
  %arraydecay878 = getelementptr inbounds [25 x i8], [25 x i8]* %title, i64 0, i64 0
  %call879 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %arraydecay878, i64 noundef 25, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.43, i64 0, i64 0)) #8
  %arraydecay880 = getelementptr inbounds [200 x i8], [200 x i8]* %tmp, i64 0, i64 0
  %call881 = call i32 @mbedtls_chachapoly_setkey(%struct.mbedtls_chachapoly_context* noundef %chachapoly874, i8* noundef %arraydecay880) #7
  br label %do.body882

do.body882:                                       ; preds = %if.then873
  store i32 0, i32* %ret886, align 4
  %arraydecay887 = getelementptr inbounds [25 x i8], [25 x i8]* %title, i64 0, i64 0
  %call888 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.27, i64 0, i64 0), i8* noundef %arraydecay887) #7
  %289 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call889 = call i32 @fflush(%struct._IO_FILE* noundef %289) #7
  call void @mbedtls_set_alarm(i32 noundef 1) #7
  store i64 1, i64* %ii883, align 8
  br label %for.cond890

for.cond890:                                      ; preds = %for.inc900, %do.body882
  %290 = load i32, i32* %ret886, align 4
  %cmp891 = icmp eq i32 %290, 0
  br i1 %cmp891, label %land.rhs892, label %land.end895

land.rhs892:                                      ; preds = %for.cond890
  %291 = load volatile i32, i32* @mbedtls_timing_alarmed, align 4
  %tobool893 = icmp ne i32 %291, 0
  %lnot894 = xor i1 %tobool893, true
  br label %land.end895

land.end895:                                      ; preds = %land.rhs892, %for.cond890
  %292 = phi i1 [ false, %for.cond890 ], [ %lnot894, %land.rhs892 ]
  br i1 %292, label %for.body896, label %for.end902

for.body896:                                      ; preds = %land.end895
  %arraydecay897 = getelementptr inbounds [200 x i8], [200 x i8]* %tmp, i64 0, i64 0
  %arraydecay898 = getelementptr inbounds [200 x i8], [200 x i8]* %tmp, i64 0, i64 0
  %call899 = call i32 @mbedtls_chachapoly_encrypt_and_tag(%struct.mbedtls_chachapoly_context* noundef %chachapoly874, i64 noundef 1024, i8* noundef %arraydecay897, i8* noundef null, i64 noundef 0, i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @buf, i64 0, i64 0), i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @buf, i64 0, i64 0), i8* noundef %arraydecay898) #7
  store i32 %call899, i32* %ret886, align 4
  br label %for.inc900

for.inc900:                                       ; preds = %for.body896
  %293 = load i64, i64* %ii883, align 8
  %inc901 = add i64 %293, 1
  store i64 %inc901, i64* %ii883, align 8
  br label %for.cond890, !llvm.loop !34

for.end902:                                       ; preds = %land.end895
  %call903 = call i64 @mbedtls_timing_hardclock() #7
  store i64 %call903, i64* %tsc885, align 8
  store i64 0, i64* %jj884, align 8
  br label %for.cond904

for.cond904:                                      ; preds = %for.inc913, %for.end902
  %294 = load i32, i32* %ret886, align 4
  %cmp905 = icmp eq i32 %294, 0
  br i1 %cmp905, label %land.rhs906, label %land.end908

land.rhs906:                                      ; preds = %for.cond904
  %295 = load i64, i64* %jj884, align 8
  %cmp907 = icmp ult i64 %295, 1024
  br label %land.end908

land.end908:                                      ; preds = %land.rhs906, %for.cond904
  %296 = phi i1 [ false, %for.cond904 ], [ %cmp907, %land.rhs906 ]
  br i1 %296, label %for.body909, label %for.end915

for.body909:                                      ; preds = %land.end908
  %arraydecay910 = getelementptr inbounds [200 x i8], [200 x i8]* %tmp, i64 0, i64 0
  %arraydecay911 = getelementptr inbounds [200 x i8], [200 x i8]* %tmp, i64 0, i64 0
  %call912 = call i32 @mbedtls_chachapoly_encrypt_and_tag(%struct.mbedtls_chachapoly_context* noundef %chachapoly874, i64 noundef 1024, i8* noundef %arraydecay910, i8* noundef null, i64 noundef 0, i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @buf, i64 0, i64 0), i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @buf, i64 0, i64 0), i8* noundef %arraydecay911) #7
  store i32 %call912, i32* %ret886, align 4
  br label %for.inc913

for.inc913:                                       ; preds = %for.body909
  %297 = load i64, i64* %jj884, align 8
  %inc914 = add i64 %297, 1
  store i64 %inc914, i64* %jj884, align 8
  br label %for.cond904, !llvm.loop !35

for.end915:                                       ; preds = %land.end908
  %298 = load i32, i32* %ret886, align 4
  %cmp916 = icmp ne i32 %298, 0
  br i1 %cmp916, label %if.then917, label %if.else921

if.then917:                                       ; preds = %for.end915
  %299 = load i32, i32* %ret886, align 4
  %arraydecay918 = getelementptr inbounds [200 x i8], [200 x i8]* %tmp, i64 0, i64 0
  call void @mbedtls_strerror(i32 noundef %299, i8* noundef %arraydecay918, i64 noundef 200) #7
  %arraydecay919 = getelementptr inbounds [200 x i8], [200 x i8]* %tmp, i64 0, i64 0
  %call920 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i64 0, i64 0), i8* noundef %arraydecay919) #7
  br label %if.end929

if.else921:                                       ; preds = %for.end915
  %300 = load i64, i64* %ii883, align 8
  %mul922 = mul i64 %300, 1024
  %div923 = udiv i64 %mul922, 1024
  %call924 = call i64 @mbedtls_timing_hardclock() #7
  %301 = load i64, i64* %tsc885, align 8
  %sub925 = sub i64 %call924, %301
  %302 = load i64, i64* %jj884, align 8
  %mul926 = mul i64 %302, 1024
  %div927 = udiv i64 %sub925, %mul926
  %call928 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.30, i64 0, i64 0), i64 noundef %div923, i64 noundef %div927) #7
  br label %if.end929

if.end929:                                        ; preds = %if.else921, %if.then917
  br label %do.end930

do.end930:                                        ; preds = %if.end929
  call void @mbedtls_chachapoly_free(%struct.mbedtls_chachapoly_context* noundef %chachapoly874) #7
  br label %if.end931

if.end931:                                        ; preds = %do.end930, %if.end870
  %aes_cmac932 = getelementptr inbounds %struct.todo_list, %struct.todo_list* %todo, i32 0, i32 12
  %303 = load i8, i8* %aes_cmac932, align 1
  %tobool933 = icmp ne i8 %303, 0
  br i1 %tobool933, label %if.then934, label %if.end1059

if.then934:                                       ; preds = %if.end931
  store i32 128, i32* %keysize937, align 4
  store i32 2, i32* %cipher_type, align 4
  br label %for.cond938

for.cond938:                                      ; preds = %for.inc1000, %if.then934
  %304 = load i32, i32* %keysize937, align 4
  %cmp939 = icmp sle i32 %304, 256
  br i1 %cmp939, label %for.body940, label %for.end1003

for.body940:                                      ; preds = %for.cond938
  %arraydecay941 = getelementptr inbounds [25 x i8], [25 x i8]* %title, i64 0, i64 0
  %305 = load i32, i32* %keysize937, align 4
  %call942 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %arraydecay941, i64 noundef 25, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.44, i64 0, i64 0), i32 noundef %305) #8
  %call943 = call i8* @memset(i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @buf, i64 0, i64 0), i32 noundef 0, i64 noundef 1024) #8
  %arraydecay944 = getelementptr inbounds [200 x i8], [200 x i8]* %tmp, i64 0, i64 0
  %call945 = call i8* @memset(i8* noundef %arraydecay944, i32 noundef 0, i64 noundef 200) #8
  %306 = load i32, i32* %cipher_type, align 4
  %call946 = call %struct.mbedtls_cipher_info_t* @mbedtls_cipher_info_from_type(i32 noundef %306) #7
  store %struct.mbedtls_cipher_info_t* %call946, %struct.mbedtls_cipher_info_t** %cipher_info936, align 8
  br label %do.body947

do.body947:                                       ; preds = %for.body940
  store i32 0, i32* %ret951, align 4
  %arraydecay952 = getelementptr inbounds [25 x i8], [25 x i8]* %title, i64 0, i64 0
  %call953 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.27, i64 0, i64 0), i8* noundef %arraydecay952) #7
  %307 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call954 = call i32 @fflush(%struct._IO_FILE* noundef %307) #7
  call void @mbedtls_set_alarm(i32 noundef 1) #7
  store i64 1, i64* %ii948, align 8
  br label %for.cond955

for.cond955:                                      ; preds = %for.inc965, %do.body947
  %308 = load i32, i32* %ret951, align 4
  %cmp956 = icmp eq i32 %308, 0
  br i1 %cmp956, label %land.rhs957, label %land.end960

land.rhs957:                                      ; preds = %for.cond955
  %309 = load volatile i32, i32* @mbedtls_timing_alarmed, align 4
  %tobool958 = icmp ne i32 %309, 0
  %lnot959 = xor i1 %tobool958, true
  br label %land.end960

land.end960:                                      ; preds = %land.rhs957, %for.cond955
  %310 = phi i1 [ false, %for.cond955 ], [ %lnot959, %land.rhs957 ]
  br i1 %310, label %for.body961, label %for.end967

for.body961:                                      ; preds = %land.end960
  %311 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %cipher_info936, align 8
  %arraydecay962 = getelementptr inbounds [200 x i8], [200 x i8]* %tmp, i64 0, i64 0
  %312 = load i32, i32* %keysize937, align 4
  %conv = sext i32 %312 to i64
  %arraydecay963 = getelementptr inbounds [16 x i8], [16 x i8]* %output935, i64 0, i64 0
  %call964 = call i32 @mbedtls_cipher_cmac(%struct.mbedtls_cipher_info_t* noundef %311, i8* noundef %arraydecay962, i64 noundef %conv, i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @buf, i64 0, i64 0), i64 noundef 1024, i8* noundef %arraydecay963) #7
  store i32 %call964, i32* %ret951, align 4
  br label %for.inc965

for.inc965:                                       ; preds = %for.body961
  %313 = load i64, i64* %ii948, align 8
  %inc966 = add i64 %313, 1
  store i64 %inc966, i64* %ii948, align 8
  br label %for.cond955, !llvm.loop !36

for.end967:                                       ; preds = %land.end960
  %call968 = call i64 @mbedtls_timing_hardclock() #7
  store i64 %call968, i64* %tsc950, align 8
  store i64 0, i64* %jj949, align 8
  br label %for.cond969

for.cond969:                                      ; preds = %for.inc981, %for.end967
  %314 = load i32, i32* %ret951, align 4
  %cmp970 = icmp eq i32 %314, 0
  br i1 %cmp970, label %land.rhs972, label %land.end975

land.rhs972:                                      ; preds = %for.cond969
  %315 = load i64, i64* %jj949, align 8
  %cmp973 = icmp ult i64 %315, 1024
  br label %land.end975

land.end975:                                      ; preds = %land.rhs972, %for.cond969
  %316 = phi i1 [ false, %for.cond969 ], [ %cmp973, %land.rhs972 ]
  br i1 %316, label %for.body976, label %for.end983

for.body976:                                      ; preds = %land.end975
  %317 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %cipher_info936, align 8
  %arraydecay977 = getelementptr inbounds [200 x i8], [200 x i8]* %tmp, i64 0, i64 0
  %318 = load i32, i32* %keysize937, align 4
  %conv978 = sext i32 %318 to i64
  %arraydecay979 = getelementptr inbounds [16 x i8], [16 x i8]* %output935, i64 0, i64 0
  %call980 = call i32 @mbedtls_cipher_cmac(%struct.mbedtls_cipher_info_t* noundef %317, i8* noundef %arraydecay977, i64 noundef %conv978, i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @buf, i64 0, i64 0), i64 noundef 1024, i8* noundef %arraydecay979) #7
  store i32 %call980, i32* %ret951, align 4
  br label %for.inc981

for.inc981:                                       ; preds = %for.body976
  %319 = load i64, i64* %jj949, align 8
  %inc982 = add i64 %319, 1
  store i64 %inc982, i64* %jj949, align 8
  br label %for.cond969, !llvm.loop !37

for.end983:                                       ; preds = %land.end975
  %320 = load i32, i32* %ret951, align 4
  %cmp984 = icmp ne i32 %320, 0
  br i1 %cmp984, label %if.then986, label %if.else990

if.then986:                                       ; preds = %for.end983
  %321 = load i32, i32* %ret951, align 4
  %arraydecay987 = getelementptr inbounds [200 x i8], [200 x i8]* %tmp, i64 0, i64 0
  call void @mbedtls_strerror(i32 noundef %321, i8* noundef %arraydecay987, i64 noundef 200) #7
  %arraydecay988 = getelementptr inbounds [200 x i8], [200 x i8]* %tmp, i64 0, i64 0
  %call989 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i64 0, i64 0), i8* noundef %arraydecay988) #7
  br label %if.end998

if.else990:                                       ; preds = %for.end983
  %322 = load i64, i64* %ii948, align 8
  %mul991 = mul i64 %322, 1024
  %div992 = udiv i64 %mul991, 1024
  %call993 = call i64 @mbedtls_timing_hardclock() #7
  %323 = load i64, i64* %tsc950, align 8
  %sub994 = sub i64 %call993, %323
  %324 = load i64, i64* %jj949, align 8
  %mul995 = mul i64 %324, 1024
  %div996 = udiv i64 %sub994, %mul995
  %call997 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.30, i64 0, i64 0), i64 noundef %div992, i64 noundef %div996) #7
  br label %if.end998

if.end998:                                        ; preds = %if.else990, %if.then986
  br label %do.end999

do.end999:                                        ; preds = %if.end998
  br label %for.inc1000

for.inc1000:                                      ; preds = %do.end999
  %325 = load i32, i32* %keysize937, align 4
  %add1001 = add nsw i32 %325, 64
  store i32 %add1001, i32* %keysize937, align 4
  %326 = load i32, i32* %cipher_type, align 4
  %inc1002 = add i32 %326, 1
  store i32 %inc1002, i32* %cipher_type, align 4
  br label %for.cond938, !llvm.loop !38

for.end1003:                                      ; preds = %for.cond938
  %call1004 = call i8* @memset(i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @buf, i64 0, i64 0), i32 noundef 0, i64 noundef 1024) #8
  %arraydecay1005 = getelementptr inbounds [200 x i8], [200 x i8]* %tmp, i64 0, i64 0
  %call1006 = call i8* @memset(i8* noundef %arraydecay1005, i32 noundef 0, i64 noundef 200) #8
  br label %do.body1007

do.body1007:                                      ; preds = %for.end1003
  store i32 0, i32* %ret1011, align 4
  %call1012 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.27, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.45, i64 0, i64 0)) #7
  %327 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call1013 = call i32 @fflush(%struct._IO_FILE* noundef %327) #7
  call void @mbedtls_set_alarm(i32 noundef 1) #7
  store i64 1, i64* %ii1008, align 8
  br label %for.cond1014

for.cond1014:                                     ; preds = %for.inc1025, %do.body1007
  %328 = load i32, i32* %ret1011, align 4
  %cmp1015 = icmp eq i32 %328, 0
  br i1 %cmp1015, label %land.rhs1017, label %land.end1020

land.rhs1017:                                     ; preds = %for.cond1014
  %329 = load volatile i32, i32* @mbedtls_timing_alarmed, align 4
  %tobool1018 = icmp ne i32 %329, 0
  %lnot1019 = xor i1 %tobool1018, true
  br label %land.end1020

land.end1020:                                     ; preds = %land.rhs1017, %for.cond1014
  %330 = phi i1 [ false, %for.cond1014 ], [ %lnot1019, %land.rhs1017 ]
  br i1 %330, label %for.body1021, label %for.end1027

for.body1021:                                     ; preds = %land.end1020
  %arraydecay1022 = getelementptr inbounds [200 x i8], [200 x i8]* %tmp, i64 0, i64 0
  %arraydecay1023 = getelementptr inbounds [16 x i8], [16 x i8]* %output935, i64 0, i64 0
  %call1024 = call i32 @mbedtls_aes_cmac_prf_128(i8* noundef %arraydecay1022, i64 noundef 16, i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @buf, i64 0, i64 0), i64 noundef 1024, i8* noundef %arraydecay1023) #7
  store i32 %call1024, i32* %ret1011, align 4
  br label %for.inc1025

for.inc1025:                                      ; preds = %for.body1021
  %331 = load i64, i64* %ii1008, align 8
  %inc1026 = add i64 %331, 1
  store i64 %inc1026, i64* %ii1008, align 8
  br label %for.cond1014, !llvm.loop !39

for.end1027:                                      ; preds = %land.end1020
  %call1028 = call i64 @mbedtls_timing_hardclock() #7
  store i64 %call1028, i64* %tsc1010, align 8
  store i64 0, i64* %jj1009, align 8
  br label %for.cond1029

for.cond1029:                                     ; preds = %for.inc1040, %for.end1027
  %332 = load i32, i32* %ret1011, align 4
  %cmp1030 = icmp eq i32 %332, 0
  br i1 %cmp1030, label %land.rhs1032, label %land.end1035

land.rhs1032:                                     ; preds = %for.cond1029
  %333 = load i64, i64* %jj1009, align 8
  %cmp1033 = icmp ult i64 %333, 1024
  br label %land.end1035

land.end1035:                                     ; preds = %land.rhs1032, %for.cond1029
  %334 = phi i1 [ false, %for.cond1029 ], [ %cmp1033, %land.rhs1032 ]
  br i1 %334, label %for.body1036, label %for.end1042

for.body1036:                                     ; preds = %land.end1035
  %arraydecay1037 = getelementptr inbounds [200 x i8], [200 x i8]* %tmp, i64 0, i64 0
  %arraydecay1038 = getelementptr inbounds [16 x i8], [16 x i8]* %output935, i64 0, i64 0
  %call1039 = call i32 @mbedtls_aes_cmac_prf_128(i8* noundef %arraydecay1037, i64 noundef 16, i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @buf, i64 0, i64 0), i64 noundef 1024, i8* noundef %arraydecay1038) #7
  store i32 %call1039, i32* %ret1011, align 4
  br label %for.inc1040

for.inc1040:                                      ; preds = %for.body1036
  %335 = load i64, i64* %jj1009, align 8
  %inc1041 = add i64 %335, 1
  store i64 %inc1041, i64* %jj1009, align 8
  br label %for.cond1029, !llvm.loop !40

for.end1042:                                      ; preds = %land.end1035
  %336 = load i32, i32* %ret1011, align 4
  %cmp1043 = icmp ne i32 %336, 0
  br i1 %cmp1043, label %if.then1045, label %if.else1049

if.then1045:                                      ; preds = %for.end1042
  %337 = load i32, i32* %ret1011, align 4
  %arraydecay1046 = getelementptr inbounds [200 x i8], [200 x i8]* %tmp, i64 0, i64 0
  call void @mbedtls_strerror(i32 noundef %337, i8* noundef %arraydecay1046, i64 noundef 200) #7
  %arraydecay1047 = getelementptr inbounds [200 x i8], [200 x i8]* %tmp, i64 0, i64 0
  %call1048 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i64 0, i64 0), i8* noundef %arraydecay1047) #7
  br label %if.end1057

if.else1049:                                      ; preds = %for.end1042
  %338 = load i64, i64* %ii1008, align 8
  %mul1050 = mul i64 %338, 1024
  %div1051 = udiv i64 %mul1050, 1024
  %call1052 = call i64 @mbedtls_timing_hardclock() #7
  %339 = load i64, i64* %tsc1010, align 8
  %sub1053 = sub i64 %call1052, %339
  %340 = load i64, i64* %jj1009, align 8
  %mul1054 = mul i64 %340, 1024
  %div1055 = udiv i64 %sub1053, %mul1054
  %call1056 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.30, i64 0, i64 0), i64 noundef %div1051, i64 noundef %div1055) #7
  br label %if.end1057

if.end1057:                                       ; preds = %if.else1049, %if.then1045
  br label %do.end1058

do.end1058:                                       ; preds = %if.end1057
  br label %if.end1059

if.end1059:                                       ; preds = %do.end1058, %if.end931
  %aria1060 = getelementptr inbounds %struct.todo_list, %struct.todo_list* %todo, i32 0, i32 14
  %341 = load i8, i8* %aria1060, align 1
  %tobool1061 = icmp ne i8 %341, 0
  br i1 %tobool1061, label %if.then1062, label %if.end1130

if.then1062:                                      ; preds = %if.end1059
  call void @mbedtls_aria_init(%struct.mbedtls_aria_context* noundef %aria1064) #7
  store i32 128, i32* %keysize1063, align 4
  br label %for.cond1065

for.cond1065:                                     ; preds = %for.inc1127, %if.then1062
  %342 = load i32, i32* %keysize1063, align 4
  %cmp1066 = icmp sle i32 %342, 256
  br i1 %cmp1066, label %for.body1068, label %for.end1129

for.body1068:                                     ; preds = %for.cond1065
  %arraydecay1069 = getelementptr inbounds [25 x i8], [25 x i8]* %title, i64 0, i64 0
  %343 = load i32, i32* %keysize1063, align 4
  %call1070 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %arraydecay1069, i64 noundef 25, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.46, i64 0, i64 0), i32 noundef %343) #8
  %call1071 = call i8* @memset(i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @buf, i64 0, i64 0), i32 noundef 0, i64 noundef 1024) #8
  %arraydecay1072 = getelementptr inbounds [200 x i8], [200 x i8]* %tmp, i64 0, i64 0
  %call1073 = call i8* @memset(i8* noundef %arraydecay1072, i32 noundef 0, i64 noundef 200) #8
  %arraydecay1074 = getelementptr inbounds [200 x i8], [200 x i8]* %tmp, i64 0, i64 0
  %344 = load i32, i32* %keysize1063, align 4
  %call1075 = call i32 @mbedtls_aria_setkey_enc(%struct.mbedtls_aria_context* noundef %aria1064, i8* noundef %arraydecay1074, i32 noundef %344) #7
  br label %do.body1076

do.body1076:                                      ; preds = %for.body1068
  store i32 0, i32* %ret1080, align 4
  %arraydecay1081 = getelementptr inbounds [25 x i8], [25 x i8]* %title, i64 0, i64 0
  %call1082 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.27, i64 0, i64 0), i8* noundef %arraydecay1081) #7
  %345 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call1083 = call i32 @fflush(%struct._IO_FILE* noundef %345) #7
  call void @mbedtls_set_alarm(i32 noundef 1) #7
  store i64 1, i64* %ii1077, align 8
  br label %for.cond1084

for.cond1084:                                     ; preds = %for.inc1094, %do.body1076
  %346 = load i32, i32* %ret1080, align 4
  %cmp1085 = icmp eq i32 %346, 0
  br i1 %cmp1085, label %land.rhs1087, label %land.end1090

land.rhs1087:                                     ; preds = %for.cond1084
  %347 = load volatile i32, i32* @mbedtls_timing_alarmed, align 4
  %tobool1088 = icmp ne i32 %347, 0
  %lnot1089 = xor i1 %tobool1088, true
  br label %land.end1090

land.end1090:                                     ; preds = %land.rhs1087, %for.cond1084
  %348 = phi i1 [ false, %for.cond1084 ], [ %lnot1089, %land.rhs1087 ]
  br i1 %348, label %for.body1091, label %for.end1096

for.body1091:                                     ; preds = %land.end1090
  %arraydecay1092 = getelementptr inbounds [200 x i8], [200 x i8]* %tmp, i64 0, i64 0
  %call1093 = call i32 @mbedtls_aria_crypt_cbc(%struct.mbedtls_aria_context* noundef %aria1064, i32 noundef 1, i64 noundef 1024, i8* noundef %arraydecay1092, i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @buf, i64 0, i64 0), i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @buf, i64 0, i64 0)) #7
  store i32 %call1093, i32* %ret1080, align 4
  br label %for.inc1094

for.inc1094:                                      ; preds = %for.body1091
  %349 = load i64, i64* %ii1077, align 8
  %inc1095 = add i64 %349, 1
  store i64 %inc1095, i64* %ii1077, align 8
  br label %for.cond1084, !llvm.loop !41

for.end1096:                                      ; preds = %land.end1090
  %call1097 = call i64 @mbedtls_timing_hardclock() #7
  store i64 %call1097, i64* %tsc1079, align 8
  store i64 0, i64* %jj1078, align 8
  br label %for.cond1098

for.cond1098:                                     ; preds = %for.inc1108, %for.end1096
  %350 = load i32, i32* %ret1080, align 4
  %cmp1099 = icmp eq i32 %350, 0
  br i1 %cmp1099, label %land.rhs1101, label %land.end1104

land.rhs1101:                                     ; preds = %for.cond1098
  %351 = load i64, i64* %jj1078, align 8
  %cmp1102 = icmp ult i64 %351, 1024
  br label %land.end1104

land.end1104:                                     ; preds = %land.rhs1101, %for.cond1098
  %352 = phi i1 [ false, %for.cond1098 ], [ %cmp1102, %land.rhs1101 ]
  br i1 %352, label %for.body1105, label %for.end1110

for.body1105:                                     ; preds = %land.end1104
  %arraydecay1106 = getelementptr inbounds [200 x i8], [200 x i8]* %tmp, i64 0, i64 0
  %call1107 = call i32 @mbedtls_aria_crypt_cbc(%struct.mbedtls_aria_context* noundef %aria1064, i32 noundef 1, i64 noundef 1024, i8* noundef %arraydecay1106, i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @buf, i64 0, i64 0), i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @buf, i64 0, i64 0)) #7
  store i32 %call1107, i32* %ret1080, align 4
  br label %for.inc1108

for.inc1108:                                      ; preds = %for.body1105
  %353 = load i64, i64* %jj1078, align 8
  %inc1109 = add i64 %353, 1
  store i64 %inc1109, i64* %jj1078, align 8
  br label %for.cond1098, !llvm.loop !42

for.end1110:                                      ; preds = %land.end1104
  %354 = load i32, i32* %ret1080, align 4
  %cmp1111 = icmp ne i32 %354, 0
  br i1 %cmp1111, label %if.then1113, label %if.else1117

if.then1113:                                      ; preds = %for.end1110
  %355 = load i32, i32* %ret1080, align 4
  %arraydecay1114 = getelementptr inbounds [200 x i8], [200 x i8]* %tmp, i64 0, i64 0
  call void @mbedtls_strerror(i32 noundef %355, i8* noundef %arraydecay1114, i64 noundef 200) #7
  %arraydecay1115 = getelementptr inbounds [200 x i8], [200 x i8]* %tmp, i64 0, i64 0
  %call1116 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i64 0, i64 0), i8* noundef %arraydecay1115) #7
  br label %if.end1125

if.else1117:                                      ; preds = %for.end1110
  %356 = load i64, i64* %ii1077, align 8
  %mul1118 = mul i64 %356, 1024
  %div1119 = udiv i64 %mul1118, 1024
  %call1120 = call i64 @mbedtls_timing_hardclock() #7
  %357 = load i64, i64* %tsc1079, align 8
  %sub1121 = sub i64 %call1120, %357
  %358 = load i64, i64* %jj1078, align 8
  %mul1122 = mul i64 %358, 1024
  %div1123 = udiv i64 %sub1121, %mul1122
  %call1124 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.30, i64 0, i64 0), i64 noundef %div1119, i64 noundef %div1123) #7
  br label %if.end1125

if.end1125:                                       ; preds = %if.else1117, %if.then1113
  br label %do.end1126

do.end1126:                                       ; preds = %if.end1125
  br label %for.inc1127

for.inc1127:                                      ; preds = %do.end1126
  %359 = load i32, i32* %keysize1063, align 4
  %add1128 = add nsw i32 %359, 64
  store i32 %add1128, i32* %keysize1063, align 4
  br label %for.cond1065, !llvm.loop !43

for.end1129:                                      ; preds = %for.cond1065
  call void @mbedtls_aria_free(%struct.mbedtls_aria_context* noundef %aria1064) #7
  br label %if.end1130

if.end1130:                                       ; preds = %for.end1129, %if.end1059
  %camellia1131 = getelementptr inbounds %struct.todo_list, %struct.todo_list* %todo, i32 0, i32 15
  %360 = load i8, i8* %camellia1131, align 1
  %tobool1132 = icmp ne i8 %360, 0
  br i1 %tobool1132, label %if.then1133, label %if.end1201

if.then1133:                                      ; preds = %if.end1130
  call void @mbedtls_camellia_init(%struct.mbedtls_camellia_context* noundef %camellia1135) #7
  store i32 128, i32* %keysize1134, align 4
  br label %for.cond1136

for.cond1136:                                     ; preds = %for.inc1198, %if.then1133
  %361 = load i32, i32* %keysize1134, align 4
  %cmp1137 = icmp sle i32 %361, 256
  br i1 %cmp1137, label %for.body1139, label %for.end1200

for.body1139:                                     ; preds = %for.cond1136
  %arraydecay1140 = getelementptr inbounds [25 x i8], [25 x i8]* %title, i64 0, i64 0
  %362 = load i32, i32* %keysize1134, align 4
  %call1141 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %arraydecay1140, i64 noundef 25, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.47, i64 0, i64 0), i32 noundef %362) #8
  %call1142 = call i8* @memset(i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @buf, i64 0, i64 0), i32 noundef 0, i64 noundef 1024) #8
  %arraydecay1143 = getelementptr inbounds [200 x i8], [200 x i8]* %tmp, i64 0, i64 0
  %call1144 = call i8* @memset(i8* noundef %arraydecay1143, i32 noundef 0, i64 noundef 200) #8
  %arraydecay1145 = getelementptr inbounds [200 x i8], [200 x i8]* %tmp, i64 0, i64 0
  %363 = load i32, i32* %keysize1134, align 4
  %call1146 = call i32 @mbedtls_camellia_setkey_enc(%struct.mbedtls_camellia_context* noundef %camellia1135, i8* noundef %arraydecay1145, i32 noundef %363) #7
  br label %do.body1147

do.body1147:                                      ; preds = %for.body1139
  store i32 0, i32* %ret1151, align 4
  %arraydecay1152 = getelementptr inbounds [25 x i8], [25 x i8]* %title, i64 0, i64 0
  %call1153 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.27, i64 0, i64 0), i8* noundef %arraydecay1152) #7
  %364 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call1154 = call i32 @fflush(%struct._IO_FILE* noundef %364) #7
  call void @mbedtls_set_alarm(i32 noundef 1) #7
  store i64 1, i64* %ii1148, align 8
  br label %for.cond1155

for.cond1155:                                     ; preds = %for.inc1165, %do.body1147
  %365 = load i32, i32* %ret1151, align 4
  %cmp1156 = icmp eq i32 %365, 0
  br i1 %cmp1156, label %land.rhs1158, label %land.end1161

land.rhs1158:                                     ; preds = %for.cond1155
  %366 = load volatile i32, i32* @mbedtls_timing_alarmed, align 4
  %tobool1159 = icmp ne i32 %366, 0
  %lnot1160 = xor i1 %tobool1159, true
  br label %land.end1161

land.end1161:                                     ; preds = %land.rhs1158, %for.cond1155
  %367 = phi i1 [ false, %for.cond1155 ], [ %lnot1160, %land.rhs1158 ]
  br i1 %367, label %for.body1162, label %for.end1167

for.body1162:                                     ; preds = %land.end1161
  %arraydecay1163 = getelementptr inbounds [200 x i8], [200 x i8]* %tmp, i64 0, i64 0
  %call1164 = call i32 @mbedtls_camellia_crypt_cbc(%struct.mbedtls_camellia_context* noundef %camellia1135, i32 noundef 1, i64 noundef 1024, i8* noundef %arraydecay1163, i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @buf, i64 0, i64 0), i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @buf, i64 0, i64 0)) #7
  store i32 %call1164, i32* %ret1151, align 4
  br label %for.inc1165

for.inc1165:                                      ; preds = %for.body1162
  %368 = load i64, i64* %ii1148, align 8
  %inc1166 = add i64 %368, 1
  store i64 %inc1166, i64* %ii1148, align 8
  br label %for.cond1155, !llvm.loop !44

for.end1167:                                      ; preds = %land.end1161
  %call1168 = call i64 @mbedtls_timing_hardclock() #7
  store i64 %call1168, i64* %tsc1150, align 8
  store i64 0, i64* %jj1149, align 8
  br label %for.cond1169

for.cond1169:                                     ; preds = %for.inc1179, %for.end1167
  %369 = load i32, i32* %ret1151, align 4
  %cmp1170 = icmp eq i32 %369, 0
  br i1 %cmp1170, label %land.rhs1172, label %land.end1175

land.rhs1172:                                     ; preds = %for.cond1169
  %370 = load i64, i64* %jj1149, align 8
  %cmp1173 = icmp ult i64 %370, 1024
  br label %land.end1175

land.end1175:                                     ; preds = %land.rhs1172, %for.cond1169
  %371 = phi i1 [ false, %for.cond1169 ], [ %cmp1173, %land.rhs1172 ]
  br i1 %371, label %for.body1176, label %for.end1181

for.body1176:                                     ; preds = %land.end1175
  %arraydecay1177 = getelementptr inbounds [200 x i8], [200 x i8]* %tmp, i64 0, i64 0
  %call1178 = call i32 @mbedtls_camellia_crypt_cbc(%struct.mbedtls_camellia_context* noundef %camellia1135, i32 noundef 1, i64 noundef 1024, i8* noundef %arraydecay1177, i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @buf, i64 0, i64 0), i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @buf, i64 0, i64 0)) #7
  store i32 %call1178, i32* %ret1151, align 4
  br label %for.inc1179

for.inc1179:                                      ; preds = %for.body1176
  %372 = load i64, i64* %jj1149, align 8
  %inc1180 = add i64 %372, 1
  store i64 %inc1180, i64* %jj1149, align 8
  br label %for.cond1169, !llvm.loop !45

for.end1181:                                      ; preds = %land.end1175
  %373 = load i32, i32* %ret1151, align 4
  %cmp1182 = icmp ne i32 %373, 0
  br i1 %cmp1182, label %if.then1184, label %if.else1188

if.then1184:                                      ; preds = %for.end1181
  %374 = load i32, i32* %ret1151, align 4
  %arraydecay1185 = getelementptr inbounds [200 x i8], [200 x i8]* %tmp, i64 0, i64 0
  call void @mbedtls_strerror(i32 noundef %374, i8* noundef %arraydecay1185, i64 noundef 200) #7
  %arraydecay1186 = getelementptr inbounds [200 x i8], [200 x i8]* %tmp, i64 0, i64 0
  %call1187 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i64 0, i64 0), i8* noundef %arraydecay1186) #7
  br label %if.end1196

if.else1188:                                      ; preds = %for.end1181
  %375 = load i64, i64* %ii1148, align 8
  %mul1189 = mul i64 %375, 1024
  %div1190 = udiv i64 %mul1189, 1024
  %call1191 = call i64 @mbedtls_timing_hardclock() #7
  %376 = load i64, i64* %tsc1150, align 8
  %sub1192 = sub i64 %call1191, %376
  %377 = load i64, i64* %jj1149, align 8
  %mul1193 = mul i64 %377, 1024
  %div1194 = udiv i64 %sub1192, %mul1193
  %call1195 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.30, i64 0, i64 0), i64 noundef %div1190, i64 noundef %div1194) #7
  br label %if.end1196

if.end1196:                                       ; preds = %if.else1188, %if.then1184
  br label %do.end1197

do.end1197:                                       ; preds = %if.end1196
  br label %for.inc1198

for.inc1198:                                      ; preds = %do.end1197
  %378 = load i32, i32* %keysize1134, align 4
  %add1199 = add nsw i32 %378, 64
  store i32 %add1199, i32* %keysize1134, align 4
  br label %for.cond1136, !llvm.loop !46

for.end1200:                                      ; preds = %for.cond1136
  call void @mbedtls_camellia_free(%struct.mbedtls_camellia_context* noundef %camellia1135) #7
  br label %if.end1201

if.end1201:                                       ; preds = %for.end1200, %if.end1130
  %chacha201202 = getelementptr inbounds %struct.todo_list, %struct.todo_list* %todo, i32 0, i32 16
  %379 = load i8, i8* %chacha201202, align 1
  %tobool1203 = icmp ne i8 %379, 0
  br i1 %tobool1203, label %if.then1204, label %if.end1253

if.then1204:                                      ; preds = %if.end1201
  br label %do.body1205

do.body1205:                                      ; preds = %if.then1204
  store i32 0, i32* %ret1209, align 4
  %call1210 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.27, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.48, i64 0, i64 0)) #7
  %380 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call1211 = call i32 @fflush(%struct._IO_FILE* noundef %380) #7
  call void @mbedtls_set_alarm(i32 noundef 1) #7
  store i64 1, i64* %ii1206, align 8
  br label %for.cond1212

for.cond1212:                                     ; preds = %for.inc1221, %do.body1205
  %381 = load i32, i32* %ret1209, align 4
  %cmp1213 = icmp eq i32 %381, 0
  br i1 %cmp1213, label %land.rhs1215, label %land.end1218

land.rhs1215:                                     ; preds = %for.cond1212
  %382 = load volatile i32, i32* @mbedtls_timing_alarmed, align 4
  %tobool1216 = icmp ne i32 %382, 0
  %lnot1217 = xor i1 %tobool1216, true
  br label %land.end1218

land.end1218:                                     ; preds = %land.rhs1215, %for.cond1212
  %383 = phi i1 [ false, %for.cond1212 ], [ %lnot1217, %land.rhs1215 ]
  br i1 %383, label %for.body1219, label %for.end1223

for.body1219:                                     ; preds = %land.end1218
  %call1220 = call i32 @mbedtls_chacha20_crypt(i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @buf, i64 0, i64 0), i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @buf, i64 0, i64 0), i32 noundef 0, i64 noundef 1024, i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @buf, i64 0, i64 0), i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @buf, i64 0, i64 0)) #7
  store i32 %call1220, i32* %ret1209, align 4
  br label %for.inc1221

for.inc1221:                                      ; preds = %for.body1219
  %384 = load i64, i64* %ii1206, align 8
  %inc1222 = add i64 %384, 1
  store i64 %inc1222, i64* %ii1206, align 8
  br label %for.cond1212, !llvm.loop !47

for.end1223:                                      ; preds = %land.end1218
  %call1224 = call i64 @mbedtls_timing_hardclock() #7
  store i64 %call1224, i64* %tsc1208, align 8
  store i64 0, i64* %jj1207, align 8
  br label %for.cond1225

for.cond1225:                                     ; preds = %for.inc1234, %for.end1223
  %385 = load i32, i32* %ret1209, align 4
  %cmp1226 = icmp eq i32 %385, 0
  br i1 %cmp1226, label %land.rhs1228, label %land.end1231

land.rhs1228:                                     ; preds = %for.cond1225
  %386 = load i64, i64* %jj1207, align 8
  %cmp1229 = icmp ult i64 %386, 1024
  br label %land.end1231

land.end1231:                                     ; preds = %land.rhs1228, %for.cond1225
  %387 = phi i1 [ false, %for.cond1225 ], [ %cmp1229, %land.rhs1228 ]
  br i1 %387, label %for.body1232, label %for.end1236

for.body1232:                                     ; preds = %land.end1231
  %call1233 = call i32 @mbedtls_chacha20_crypt(i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @buf, i64 0, i64 0), i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @buf, i64 0, i64 0), i32 noundef 0, i64 noundef 1024, i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @buf, i64 0, i64 0), i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @buf, i64 0, i64 0)) #7
  store i32 %call1233, i32* %ret1209, align 4
  br label %for.inc1234

for.inc1234:                                      ; preds = %for.body1232
  %388 = load i64, i64* %jj1207, align 8
  %inc1235 = add i64 %388, 1
  store i64 %inc1235, i64* %jj1207, align 8
  br label %for.cond1225, !llvm.loop !48

for.end1236:                                      ; preds = %land.end1231
  %389 = load i32, i32* %ret1209, align 4
  %cmp1237 = icmp ne i32 %389, 0
  br i1 %cmp1237, label %if.then1239, label %if.else1243

if.then1239:                                      ; preds = %for.end1236
  %390 = load i32, i32* %ret1209, align 4
  %arraydecay1240 = getelementptr inbounds [200 x i8], [200 x i8]* %tmp, i64 0, i64 0
  call void @mbedtls_strerror(i32 noundef %390, i8* noundef %arraydecay1240, i64 noundef 200) #7
  %arraydecay1241 = getelementptr inbounds [200 x i8], [200 x i8]* %tmp, i64 0, i64 0
  %call1242 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i64 0, i64 0), i8* noundef %arraydecay1241) #7
  br label %if.end1251

if.else1243:                                      ; preds = %for.end1236
  %391 = load i64, i64* %ii1206, align 8
  %mul1244 = mul i64 %391, 1024
  %div1245 = udiv i64 %mul1244, 1024
  %call1246 = call i64 @mbedtls_timing_hardclock() #7
  %392 = load i64, i64* %tsc1208, align 8
  %sub1247 = sub i64 %call1246, %392
  %393 = load i64, i64* %jj1207, align 8
  %mul1248 = mul i64 %393, 1024
  %div1249 = udiv i64 %sub1247, %mul1248
  %call1250 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.30, i64 0, i64 0), i64 noundef %div1245, i64 noundef %div1249) #7
  br label %if.end1251

if.end1251:                                       ; preds = %if.else1243, %if.then1239
  br label %do.end1252

do.end1252:                                       ; preds = %if.end1251
  br label %if.end1253

if.end1253:                                       ; preds = %do.end1252, %if.end1201
  %poly13051254 = getelementptr inbounds %struct.todo_list, %struct.todo_list* %todo, i32 0, i32 17
  %394 = load i8, i8* %poly13051254, align 1
  %tobool1255 = icmp ne i8 %394, 0
  br i1 %tobool1255, label %if.then1256, label %if.end1305

if.then1256:                                      ; preds = %if.end1253
  br label %do.body1257

do.body1257:                                      ; preds = %if.then1256
  store i32 0, i32* %ret1261, align 4
  %call1262 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.27, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.49, i64 0, i64 0)) #7
  %395 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call1263 = call i32 @fflush(%struct._IO_FILE* noundef %395) #7
  call void @mbedtls_set_alarm(i32 noundef 1) #7
  store i64 1, i64* %ii1258, align 8
  br label %for.cond1264

for.cond1264:                                     ; preds = %for.inc1273, %do.body1257
  %396 = load i32, i32* %ret1261, align 4
  %cmp1265 = icmp eq i32 %396, 0
  br i1 %cmp1265, label %land.rhs1267, label %land.end1270

land.rhs1267:                                     ; preds = %for.cond1264
  %397 = load volatile i32, i32* @mbedtls_timing_alarmed, align 4
  %tobool1268 = icmp ne i32 %397, 0
  %lnot1269 = xor i1 %tobool1268, true
  br label %land.end1270

land.end1270:                                     ; preds = %land.rhs1267, %for.cond1264
  %398 = phi i1 [ false, %for.cond1264 ], [ %lnot1269, %land.rhs1267 ]
  br i1 %398, label %for.body1271, label %for.end1275

for.body1271:                                     ; preds = %land.end1270
  %call1272 = call i32 @mbedtls_poly1305_mac(i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @buf, i64 0, i64 0), i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @buf, i64 0, i64 0), i64 noundef 1024, i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @buf, i64 0, i64 0)) #7
  store i32 %call1272, i32* %ret1261, align 4
  br label %for.inc1273

for.inc1273:                                      ; preds = %for.body1271
  %399 = load i64, i64* %ii1258, align 8
  %inc1274 = add i64 %399, 1
  store i64 %inc1274, i64* %ii1258, align 8
  br label %for.cond1264, !llvm.loop !49

for.end1275:                                      ; preds = %land.end1270
  %call1276 = call i64 @mbedtls_timing_hardclock() #7
  store i64 %call1276, i64* %tsc1260, align 8
  store i64 0, i64* %jj1259, align 8
  br label %for.cond1277

for.cond1277:                                     ; preds = %for.inc1286, %for.end1275
  %400 = load i32, i32* %ret1261, align 4
  %cmp1278 = icmp eq i32 %400, 0
  br i1 %cmp1278, label %land.rhs1280, label %land.end1283

land.rhs1280:                                     ; preds = %for.cond1277
  %401 = load i64, i64* %jj1259, align 8
  %cmp1281 = icmp ult i64 %401, 1024
  br label %land.end1283

land.end1283:                                     ; preds = %land.rhs1280, %for.cond1277
  %402 = phi i1 [ false, %for.cond1277 ], [ %cmp1281, %land.rhs1280 ]
  br i1 %402, label %for.body1284, label %for.end1288

for.body1284:                                     ; preds = %land.end1283
  %call1285 = call i32 @mbedtls_poly1305_mac(i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @buf, i64 0, i64 0), i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @buf, i64 0, i64 0), i64 noundef 1024, i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @buf, i64 0, i64 0)) #7
  store i32 %call1285, i32* %ret1261, align 4
  br label %for.inc1286

for.inc1286:                                      ; preds = %for.body1284
  %403 = load i64, i64* %jj1259, align 8
  %inc1287 = add i64 %403, 1
  store i64 %inc1287, i64* %jj1259, align 8
  br label %for.cond1277, !llvm.loop !50

for.end1288:                                      ; preds = %land.end1283
  %404 = load i32, i32* %ret1261, align 4
  %cmp1289 = icmp ne i32 %404, 0
  br i1 %cmp1289, label %if.then1291, label %if.else1295

if.then1291:                                      ; preds = %for.end1288
  %405 = load i32, i32* %ret1261, align 4
  %arraydecay1292 = getelementptr inbounds [200 x i8], [200 x i8]* %tmp, i64 0, i64 0
  call void @mbedtls_strerror(i32 noundef %405, i8* noundef %arraydecay1292, i64 noundef 200) #7
  %arraydecay1293 = getelementptr inbounds [200 x i8], [200 x i8]* %tmp, i64 0, i64 0
  %call1294 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i64 0, i64 0), i8* noundef %arraydecay1293) #7
  br label %if.end1303

if.else1295:                                      ; preds = %for.end1288
  %406 = load i64, i64* %ii1258, align 8
  %mul1296 = mul i64 %406, 1024
  %div1297 = udiv i64 %mul1296, 1024
  %call1298 = call i64 @mbedtls_timing_hardclock() #7
  %407 = load i64, i64* %tsc1260, align 8
  %sub1299 = sub i64 %call1298, %407
  %408 = load i64, i64* %jj1259, align 8
  %mul1300 = mul i64 %408, 1024
  %div1301 = udiv i64 %sub1299, %mul1300
  %call1302 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.30, i64 0, i64 0), i64 noundef %div1297, i64 noundef %div1301) #7
  br label %if.end1303

if.end1303:                                       ; preds = %if.else1295, %if.then1291
  br label %do.end1304

do.end1304:                                       ; preds = %if.end1303
  br label %if.end1305

if.end1305:                                       ; preds = %do.end1304, %if.end1253
  %ctr_drbg1306 = getelementptr inbounds %struct.todo_list, %struct.todo_list* %todo, i32 0, i32 18
  %409 = load i8, i8* %ctr_drbg1306, align 1
  %tobool1307 = icmp ne i8 %409, 0
  br i1 %tobool1307, label %if.then1308, label %if.end1416

if.then1308:                                      ; preds = %if.end1305
  call void @mbedtls_ctr_drbg_init(%struct.mbedtls_ctr_drbg_context* noundef %ctr_drbg1309) #7
  %call1310 = call i32 @mbedtls_ctr_drbg_seed(%struct.mbedtls_ctr_drbg_context* noundef %ctr_drbg1309, i32 (i8*, i8*, i64)* noundef @myrand, i8* noundef null, i8* noundef null, i64 noundef 0) #7
  %cmp1311 = icmp ne i32 %call1310, 0
  br i1 %cmp1311, label %if.then1313, label %if.end1314

if.then1313:                                      ; preds = %if.then1308
  call void @exit(i32 noundef 1) #10
  unreachable

if.end1314:                                       ; preds = %if.then1308
  br label %do.body1315

do.body1315:                                      ; preds = %if.end1314
  store i32 0, i32* %ret1319, align 4
  %call1320 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.27, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.50, i64 0, i64 0)) #7
  %410 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call1321 = call i32 @fflush(%struct._IO_FILE* noundef %410) #7
  call void @mbedtls_set_alarm(i32 noundef 1) #7
  store i64 1, i64* %ii1316, align 8
  br label %for.cond1322

for.cond1322:                                     ; preds = %for.inc1331, %do.body1315
  %411 = load i32, i32* %ret1319, align 4
  %cmp1323 = icmp eq i32 %411, 0
  br i1 %cmp1323, label %land.rhs1325, label %land.end1328

land.rhs1325:                                     ; preds = %for.cond1322
  %412 = load volatile i32, i32* @mbedtls_timing_alarmed, align 4
  %tobool1326 = icmp ne i32 %412, 0
  %lnot1327 = xor i1 %tobool1326, true
  br label %land.end1328

land.end1328:                                     ; preds = %land.rhs1325, %for.cond1322
  %413 = phi i1 [ false, %for.cond1322 ], [ %lnot1327, %land.rhs1325 ]
  br i1 %413, label %for.body1329, label %for.end1333

for.body1329:                                     ; preds = %land.end1328
  %414 = bitcast %struct.mbedtls_ctr_drbg_context* %ctr_drbg1309 to i8*
  %call1330 = call i32 @mbedtls_ctr_drbg_random(i8* noundef %414, i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @buf, i64 0, i64 0), i64 noundef 1024) #7
  store i32 %call1330, i32* %ret1319, align 4
  br label %for.inc1331

for.inc1331:                                      ; preds = %for.body1329
  %415 = load i64, i64* %ii1316, align 8
  %inc1332 = add i64 %415, 1
  store i64 %inc1332, i64* %ii1316, align 8
  br label %for.cond1322, !llvm.loop !51

for.end1333:                                      ; preds = %land.end1328
  %call1334 = call i64 @mbedtls_timing_hardclock() #7
  store i64 %call1334, i64* %tsc1318, align 8
  store i64 0, i64* %jj1317, align 8
  br label %for.cond1335

for.cond1335:                                     ; preds = %for.inc1344, %for.end1333
  %416 = load i32, i32* %ret1319, align 4
  %cmp1336 = icmp eq i32 %416, 0
  br i1 %cmp1336, label %land.rhs1338, label %land.end1341

land.rhs1338:                                     ; preds = %for.cond1335
  %417 = load i64, i64* %jj1317, align 8
  %cmp1339 = icmp ult i64 %417, 1024
  br label %land.end1341

land.end1341:                                     ; preds = %land.rhs1338, %for.cond1335
  %418 = phi i1 [ false, %for.cond1335 ], [ %cmp1339, %land.rhs1338 ]
  br i1 %418, label %for.body1342, label %for.end1346

for.body1342:                                     ; preds = %land.end1341
  %419 = bitcast %struct.mbedtls_ctr_drbg_context* %ctr_drbg1309 to i8*
  %call1343 = call i32 @mbedtls_ctr_drbg_random(i8* noundef %419, i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @buf, i64 0, i64 0), i64 noundef 1024) #7
  store i32 %call1343, i32* %ret1319, align 4
  br label %for.inc1344

for.inc1344:                                      ; preds = %for.body1342
  %420 = load i64, i64* %jj1317, align 8
  %inc1345 = add i64 %420, 1
  store i64 %inc1345, i64* %jj1317, align 8
  br label %for.cond1335, !llvm.loop !52

for.end1346:                                      ; preds = %land.end1341
  %421 = load i32, i32* %ret1319, align 4
  %cmp1347 = icmp ne i32 %421, 0
  br i1 %cmp1347, label %if.then1349, label %if.else1353

if.then1349:                                      ; preds = %for.end1346
  %422 = load i32, i32* %ret1319, align 4
  %arraydecay1350 = getelementptr inbounds [200 x i8], [200 x i8]* %tmp, i64 0, i64 0
  call void @mbedtls_strerror(i32 noundef %422, i8* noundef %arraydecay1350, i64 noundef 200) #7
  %arraydecay1351 = getelementptr inbounds [200 x i8], [200 x i8]* %tmp, i64 0, i64 0
  %call1352 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i64 0, i64 0), i8* noundef %arraydecay1351) #7
  br label %if.end1361

if.else1353:                                      ; preds = %for.end1346
  %423 = load i64, i64* %ii1316, align 8
  %mul1354 = mul i64 %423, 1024
  %div1355 = udiv i64 %mul1354, 1024
  %call1356 = call i64 @mbedtls_timing_hardclock() #7
  %424 = load i64, i64* %tsc1318, align 8
  %sub1357 = sub i64 %call1356, %424
  %425 = load i64, i64* %jj1317, align 8
  %mul1358 = mul i64 %425, 1024
  %div1359 = udiv i64 %sub1357, %mul1358
  %call1360 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.30, i64 0, i64 0), i64 noundef %div1355, i64 noundef %div1359) #7
  br label %if.end1361

if.end1361:                                       ; preds = %if.else1353, %if.then1349
  br label %do.end1362

do.end1362:                                       ; preds = %if.end1361
  call void @mbedtls_ctr_drbg_free(%struct.mbedtls_ctr_drbg_context* noundef %ctr_drbg1309) #7
  call void @mbedtls_ctr_drbg_init(%struct.mbedtls_ctr_drbg_context* noundef %ctr_drbg1309) #7
  %call1363 = call i32 @mbedtls_ctr_drbg_seed(%struct.mbedtls_ctr_drbg_context* noundef %ctr_drbg1309, i32 (i8*, i8*, i64)* noundef @myrand, i8* noundef null, i8* noundef null, i64 noundef 0) #7
  %cmp1364 = icmp ne i32 %call1363, 0
  br i1 %cmp1364, label %if.then1366, label %if.end1367

if.then1366:                                      ; preds = %do.end1362
  call void @exit(i32 noundef 1) #10
  unreachable

if.end1367:                                       ; preds = %do.end1362
  call void @mbedtls_ctr_drbg_set_prediction_resistance(%struct.mbedtls_ctr_drbg_context* noundef %ctr_drbg1309, i32 noundef 1) #7
  br label %do.body1368

do.body1368:                                      ; preds = %if.end1367
  store i32 0, i32* %ret1372, align 4
  %call1373 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.27, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.51, i64 0, i64 0)) #7
  %426 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call1374 = call i32 @fflush(%struct._IO_FILE* noundef %426) #7
  call void @mbedtls_set_alarm(i32 noundef 1) #7
  store i64 1, i64* %ii1369, align 8
  br label %for.cond1375

for.cond1375:                                     ; preds = %for.inc1384, %do.body1368
  %427 = load i32, i32* %ret1372, align 4
  %cmp1376 = icmp eq i32 %427, 0
  br i1 %cmp1376, label %land.rhs1378, label %land.end1381

land.rhs1378:                                     ; preds = %for.cond1375
  %428 = load volatile i32, i32* @mbedtls_timing_alarmed, align 4
  %tobool1379 = icmp ne i32 %428, 0
  %lnot1380 = xor i1 %tobool1379, true
  br label %land.end1381

land.end1381:                                     ; preds = %land.rhs1378, %for.cond1375
  %429 = phi i1 [ false, %for.cond1375 ], [ %lnot1380, %land.rhs1378 ]
  br i1 %429, label %for.body1382, label %for.end1386

for.body1382:                                     ; preds = %land.end1381
  %430 = bitcast %struct.mbedtls_ctr_drbg_context* %ctr_drbg1309 to i8*
  %call1383 = call i32 @mbedtls_ctr_drbg_random(i8* noundef %430, i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @buf, i64 0, i64 0), i64 noundef 1024) #7
  store i32 %call1383, i32* %ret1372, align 4
  br label %for.inc1384

for.inc1384:                                      ; preds = %for.body1382
  %431 = load i64, i64* %ii1369, align 8
  %inc1385 = add i64 %431, 1
  store i64 %inc1385, i64* %ii1369, align 8
  br label %for.cond1375, !llvm.loop !53

for.end1386:                                      ; preds = %land.end1381
  %call1387 = call i64 @mbedtls_timing_hardclock() #7
  store i64 %call1387, i64* %tsc1371, align 8
  store i64 0, i64* %jj1370, align 8
  br label %for.cond1388

for.cond1388:                                     ; preds = %for.inc1397, %for.end1386
  %432 = load i32, i32* %ret1372, align 4
  %cmp1389 = icmp eq i32 %432, 0
  br i1 %cmp1389, label %land.rhs1391, label %land.end1394

land.rhs1391:                                     ; preds = %for.cond1388
  %433 = load i64, i64* %jj1370, align 8
  %cmp1392 = icmp ult i64 %433, 1024
  br label %land.end1394

land.end1394:                                     ; preds = %land.rhs1391, %for.cond1388
  %434 = phi i1 [ false, %for.cond1388 ], [ %cmp1392, %land.rhs1391 ]
  br i1 %434, label %for.body1395, label %for.end1399

for.body1395:                                     ; preds = %land.end1394
  %435 = bitcast %struct.mbedtls_ctr_drbg_context* %ctr_drbg1309 to i8*
  %call1396 = call i32 @mbedtls_ctr_drbg_random(i8* noundef %435, i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @buf, i64 0, i64 0), i64 noundef 1024) #7
  store i32 %call1396, i32* %ret1372, align 4
  br label %for.inc1397

for.inc1397:                                      ; preds = %for.body1395
  %436 = load i64, i64* %jj1370, align 8
  %inc1398 = add i64 %436, 1
  store i64 %inc1398, i64* %jj1370, align 8
  br label %for.cond1388, !llvm.loop !54

for.end1399:                                      ; preds = %land.end1394
  %437 = load i32, i32* %ret1372, align 4
  %cmp1400 = icmp ne i32 %437, 0
  br i1 %cmp1400, label %if.then1402, label %if.else1406

if.then1402:                                      ; preds = %for.end1399
  %438 = load i32, i32* %ret1372, align 4
  %arraydecay1403 = getelementptr inbounds [200 x i8], [200 x i8]* %tmp, i64 0, i64 0
  call void @mbedtls_strerror(i32 noundef %438, i8* noundef %arraydecay1403, i64 noundef 200) #7
  %arraydecay1404 = getelementptr inbounds [200 x i8], [200 x i8]* %tmp, i64 0, i64 0
  %call1405 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i64 0, i64 0), i8* noundef %arraydecay1404) #7
  br label %if.end1414

if.else1406:                                      ; preds = %for.end1399
  %439 = load i64, i64* %ii1369, align 8
  %mul1407 = mul i64 %439, 1024
  %div1408 = udiv i64 %mul1407, 1024
  %call1409 = call i64 @mbedtls_timing_hardclock() #7
  %440 = load i64, i64* %tsc1371, align 8
  %sub1410 = sub i64 %call1409, %440
  %441 = load i64, i64* %jj1370, align 8
  %mul1411 = mul i64 %441, 1024
  %div1412 = udiv i64 %sub1410, %mul1411
  %call1413 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.30, i64 0, i64 0), i64 noundef %div1408, i64 noundef %div1412) #7
  br label %if.end1414

if.end1414:                                       ; preds = %if.else1406, %if.then1402
  br label %do.end1415

do.end1415:                                       ; preds = %if.end1414
  call void @mbedtls_ctr_drbg_free(%struct.mbedtls_ctr_drbg_context* noundef %ctr_drbg1309) #7
  br label %if.end1416

if.end1416:                                       ; preds = %do.end1415, %if.end1305
  %hmac_drbg1417 = getelementptr inbounds %struct.todo_list, %struct.todo_list* %todo, i32 0, i32 19
  %442 = load i8, i8* %hmac_drbg1417, align 1
  %tobool1418 = icmp ne i8 %442, 0
  br i1 %tobool1418, label %if.then1419, label %if.end1643

if.then1419:                                      ; preds = %if.end1416
  call void @mbedtls_hmac_drbg_init(%struct.mbedtls_hmac_drbg_context* noundef %hmac_drbg1420) #7
  %call1421 = call %struct.mbedtls_md_info_t* @mbedtls_md_info_from_type(i32 noundef 2) #7
  store %struct.mbedtls_md_info_t* %call1421, %struct.mbedtls_md_info_t** %md_info, align 8
  %cmp1422 = icmp eq %struct.mbedtls_md_info_t* %call1421, null
  br i1 %cmp1422, label %if.then1424, label %if.end1425

if.then1424:                                      ; preds = %if.then1419
  call void @exit(i32 noundef 1) #10
  unreachable

if.end1425:                                       ; preds = %if.then1419
  %443 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %md_info, align 8
  %call1426 = call i32 @mbedtls_hmac_drbg_seed(%struct.mbedtls_hmac_drbg_context* noundef %hmac_drbg1420, %struct.mbedtls_md_info_t* noundef %443, i32 (i8*, i8*, i64)* noundef @myrand, i8* noundef null, i8* noundef null, i64 noundef 0) #7
  %cmp1427 = icmp ne i32 %call1426, 0
  br i1 %cmp1427, label %if.then1429, label %if.end1430

if.then1429:                                      ; preds = %if.end1425
  call void @exit(i32 noundef 1) #10
  unreachable

if.end1430:                                       ; preds = %if.end1425
  br label %do.body1431

do.body1431:                                      ; preds = %if.end1430
  store i32 0, i32* %ret1435, align 4
  %call1436 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.27, i64 0, i64 0), i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.52, i64 0, i64 0)) #7
  %444 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call1437 = call i32 @fflush(%struct._IO_FILE* noundef %444) #7
  call void @mbedtls_set_alarm(i32 noundef 1) #7
  store i64 1, i64* %ii1432, align 8
  br label %for.cond1438

for.cond1438:                                     ; preds = %for.inc1447, %do.body1431
  %445 = load i32, i32* %ret1435, align 4
  %cmp1439 = icmp eq i32 %445, 0
  br i1 %cmp1439, label %land.rhs1441, label %land.end1444

land.rhs1441:                                     ; preds = %for.cond1438
  %446 = load volatile i32, i32* @mbedtls_timing_alarmed, align 4
  %tobool1442 = icmp ne i32 %446, 0
  %lnot1443 = xor i1 %tobool1442, true
  br label %land.end1444

land.end1444:                                     ; preds = %land.rhs1441, %for.cond1438
  %447 = phi i1 [ false, %for.cond1438 ], [ %lnot1443, %land.rhs1441 ]
  br i1 %447, label %for.body1445, label %for.end1449

for.body1445:                                     ; preds = %land.end1444
  %448 = bitcast %struct.mbedtls_hmac_drbg_context* %hmac_drbg1420 to i8*
  %call1446 = call i32 @mbedtls_hmac_drbg_random(i8* noundef %448, i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @buf, i64 0, i64 0), i64 noundef 1024) #7
  store i32 %call1446, i32* %ret1435, align 4
  br label %for.inc1447

for.inc1447:                                      ; preds = %for.body1445
  %449 = load i64, i64* %ii1432, align 8
  %inc1448 = add i64 %449, 1
  store i64 %inc1448, i64* %ii1432, align 8
  br label %for.cond1438, !llvm.loop !55

for.end1449:                                      ; preds = %land.end1444
  %call1450 = call i64 @mbedtls_timing_hardclock() #7
  store i64 %call1450, i64* %tsc1434, align 8
  store i64 0, i64* %jj1433, align 8
  br label %for.cond1451

for.cond1451:                                     ; preds = %for.inc1460, %for.end1449
  %450 = load i32, i32* %ret1435, align 4
  %cmp1452 = icmp eq i32 %450, 0
  br i1 %cmp1452, label %land.rhs1454, label %land.end1457

land.rhs1454:                                     ; preds = %for.cond1451
  %451 = load i64, i64* %jj1433, align 8
  %cmp1455 = icmp ult i64 %451, 1024
  br label %land.end1457

land.end1457:                                     ; preds = %land.rhs1454, %for.cond1451
  %452 = phi i1 [ false, %for.cond1451 ], [ %cmp1455, %land.rhs1454 ]
  br i1 %452, label %for.body1458, label %for.end1462

for.body1458:                                     ; preds = %land.end1457
  %453 = bitcast %struct.mbedtls_hmac_drbg_context* %hmac_drbg1420 to i8*
  %call1459 = call i32 @mbedtls_hmac_drbg_random(i8* noundef %453, i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @buf, i64 0, i64 0), i64 noundef 1024) #7
  store i32 %call1459, i32* %ret1435, align 4
  br label %for.inc1460

for.inc1460:                                      ; preds = %for.body1458
  %454 = load i64, i64* %jj1433, align 8
  %inc1461 = add i64 %454, 1
  store i64 %inc1461, i64* %jj1433, align 8
  br label %for.cond1451, !llvm.loop !56

for.end1462:                                      ; preds = %land.end1457
  %455 = load i32, i32* %ret1435, align 4
  %cmp1463 = icmp ne i32 %455, 0
  br i1 %cmp1463, label %if.then1465, label %if.else1469

if.then1465:                                      ; preds = %for.end1462
  %456 = load i32, i32* %ret1435, align 4
  %arraydecay1466 = getelementptr inbounds [200 x i8], [200 x i8]* %tmp, i64 0, i64 0
  call void @mbedtls_strerror(i32 noundef %456, i8* noundef %arraydecay1466, i64 noundef 200) #7
  %arraydecay1467 = getelementptr inbounds [200 x i8], [200 x i8]* %tmp, i64 0, i64 0
  %call1468 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i64 0, i64 0), i8* noundef %arraydecay1467) #7
  br label %if.end1477

if.else1469:                                      ; preds = %for.end1462
  %457 = load i64, i64* %ii1432, align 8
  %mul1470 = mul i64 %457, 1024
  %div1471 = udiv i64 %mul1470, 1024
  %call1472 = call i64 @mbedtls_timing_hardclock() #7
  %458 = load i64, i64* %tsc1434, align 8
  %sub1473 = sub i64 %call1472, %458
  %459 = load i64, i64* %jj1433, align 8
  %mul1474 = mul i64 %459, 1024
  %div1475 = udiv i64 %sub1473, %mul1474
  %call1476 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.30, i64 0, i64 0), i64 noundef %div1471, i64 noundef %div1475) #7
  br label %if.end1477

if.end1477:                                       ; preds = %if.else1469, %if.then1465
  br label %do.end1478

do.end1478:                                       ; preds = %if.end1477
  %460 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %md_info, align 8
  %call1479 = call i32 @mbedtls_hmac_drbg_seed(%struct.mbedtls_hmac_drbg_context* noundef %hmac_drbg1420, %struct.mbedtls_md_info_t* noundef %460, i32 (i8*, i8*, i64)* noundef @myrand, i8* noundef null, i8* noundef null, i64 noundef 0) #7
  %cmp1480 = icmp ne i32 %call1479, 0
  br i1 %cmp1480, label %if.then1482, label %if.end1483

if.then1482:                                      ; preds = %do.end1478
  call void @exit(i32 noundef 1) #10
  unreachable

if.end1483:                                       ; preds = %do.end1478
  call void @mbedtls_hmac_drbg_set_prediction_resistance(%struct.mbedtls_hmac_drbg_context* noundef %hmac_drbg1420, i32 noundef 1) #7
  br label %do.body1484

do.body1484:                                      ; preds = %if.end1483
  store i32 0, i32* %ret1488, align 4
  %call1489 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.27, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.53, i64 0, i64 0)) #7
  %461 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call1490 = call i32 @fflush(%struct._IO_FILE* noundef %461) #7
  call void @mbedtls_set_alarm(i32 noundef 1) #7
  store i64 1, i64* %ii1485, align 8
  br label %for.cond1491

for.cond1491:                                     ; preds = %for.inc1500, %do.body1484
  %462 = load i32, i32* %ret1488, align 4
  %cmp1492 = icmp eq i32 %462, 0
  br i1 %cmp1492, label %land.rhs1494, label %land.end1497

land.rhs1494:                                     ; preds = %for.cond1491
  %463 = load volatile i32, i32* @mbedtls_timing_alarmed, align 4
  %tobool1495 = icmp ne i32 %463, 0
  %lnot1496 = xor i1 %tobool1495, true
  br label %land.end1497

land.end1497:                                     ; preds = %land.rhs1494, %for.cond1491
  %464 = phi i1 [ false, %for.cond1491 ], [ %lnot1496, %land.rhs1494 ]
  br i1 %464, label %for.body1498, label %for.end1502

for.body1498:                                     ; preds = %land.end1497
  %465 = bitcast %struct.mbedtls_hmac_drbg_context* %hmac_drbg1420 to i8*
  %call1499 = call i32 @mbedtls_hmac_drbg_random(i8* noundef %465, i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @buf, i64 0, i64 0), i64 noundef 1024) #7
  store i32 %call1499, i32* %ret1488, align 4
  br label %for.inc1500

for.inc1500:                                      ; preds = %for.body1498
  %466 = load i64, i64* %ii1485, align 8
  %inc1501 = add i64 %466, 1
  store i64 %inc1501, i64* %ii1485, align 8
  br label %for.cond1491, !llvm.loop !57

for.end1502:                                      ; preds = %land.end1497
  %call1503 = call i64 @mbedtls_timing_hardclock() #7
  store i64 %call1503, i64* %tsc1487, align 8
  store i64 0, i64* %jj1486, align 8
  br label %for.cond1504

for.cond1504:                                     ; preds = %for.inc1513, %for.end1502
  %467 = load i32, i32* %ret1488, align 4
  %cmp1505 = icmp eq i32 %467, 0
  br i1 %cmp1505, label %land.rhs1507, label %land.end1510

land.rhs1507:                                     ; preds = %for.cond1504
  %468 = load i64, i64* %jj1486, align 8
  %cmp1508 = icmp ult i64 %468, 1024
  br label %land.end1510

land.end1510:                                     ; preds = %land.rhs1507, %for.cond1504
  %469 = phi i1 [ false, %for.cond1504 ], [ %cmp1508, %land.rhs1507 ]
  br i1 %469, label %for.body1511, label %for.end1515

for.body1511:                                     ; preds = %land.end1510
  %470 = bitcast %struct.mbedtls_hmac_drbg_context* %hmac_drbg1420 to i8*
  %call1512 = call i32 @mbedtls_hmac_drbg_random(i8* noundef %470, i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @buf, i64 0, i64 0), i64 noundef 1024) #7
  store i32 %call1512, i32* %ret1488, align 4
  br label %for.inc1513

for.inc1513:                                      ; preds = %for.body1511
  %471 = load i64, i64* %jj1486, align 8
  %inc1514 = add i64 %471, 1
  store i64 %inc1514, i64* %jj1486, align 8
  br label %for.cond1504, !llvm.loop !58

for.end1515:                                      ; preds = %land.end1510
  %472 = load i32, i32* %ret1488, align 4
  %cmp1516 = icmp ne i32 %472, 0
  br i1 %cmp1516, label %if.then1518, label %if.else1522

if.then1518:                                      ; preds = %for.end1515
  %473 = load i32, i32* %ret1488, align 4
  %arraydecay1519 = getelementptr inbounds [200 x i8], [200 x i8]* %tmp, i64 0, i64 0
  call void @mbedtls_strerror(i32 noundef %473, i8* noundef %arraydecay1519, i64 noundef 200) #7
  %arraydecay1520 = getelementptr inbounds [200 x i8], [200 x i8]* %tmp, i64 0, i64 0
  %call1521 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i64 0, i64 0), i8* noundef %arraydecay1520) #7
  br label %if.end1530

if.else1522:                                      ; preds = %for.end1515
  %474 = load i64, i64* %ii1485, align 8
  %mul1523 = mul i64 %474, 1024
  %div1524 = udiv i64 %mul1523, 1024
  %call1525 = call i64 @mbedtls_timing_hardclock() #7
  %475 = load i64, i64* %tsc1487, align 8
  %sub1526 = sub i64 %call1525, %475
  %476 = load i64, i64* %jj1486, align 8
  %mul1527 = mul i64 %476, 1024
  %div1528 = udiv i64 %sub1526, %mul1527
  %call1529 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.30, i64 0, i64 0), i64 noundef %div1524, i64 noundef %div1528) #7
  br label %if.end1530

if.end1530:                                       ; preds = %if.else1522, %if.then1518
  br label %do.end1531

do.end1531:                                       ; preds = %if.end1530
  %call1532 = call %struct.mbedtls_md_info_t* @mbedtls_md_info_from_type(i32 noundef 4) #7
  store %struct.mbedtls_md_info_t* %call1532, %struct.mbedtls_md_info_t** %md_info, align 8
  %cmp1533 = icmp eq %struct.mbedtls_md_info_t* %call1532, null
  br i1 %cmp1533, label %if.then1535, label %if.end1536

if.then1535:                                      ; preds = %do.end1531
  call void @exit(i32 noundef 1) #10
  unreachable

if.end1536:                                       ; preds = %do.end1531
  %477 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %md_info, align 8
  %call1537 = call i32 @mbedtls_hmac_drbg_seed(%struct.mbedtls_hmac_drbg_context* noundef %hmac_drbg1420, %struct.mbedtls_md_info_t* noundef %477, i32 (i8*, i8*, i64)* noundef @myrand, i8* noundef null, i8* noundef null, i64 noundef 0) #7
  %cmp1538 = icmp ne i32 %call1537, 0
  br i1 %cmp1538, label %if.then1540, label %if.end1541

if.then1540:                                      ; preds = %if.end1536
  call void @exit(i32 noundef 1) #10
  unreachable

if.end1541:                                       ; preds = %if.end1536
  br label %do.body1542

do.body1542:                                      ; preds = %if.end1541
  store i32 0, i32* %ret1546, align 4
  %call1547 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.27, i64 0, i64 0), i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.54, i64 0, i64 0)) #7
  %478 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call1548 = call i32 @fflush(%struct._IO_FILE* noundef %478) #7
  call void @mbedtls_set_alarm(i32 noundef 1) #7
  store i64 1, i64* %ii1543, align 8
  br label %for.cond1549

for.cond1549:                                     ; preds = %for.inc1558, %do.body1542
  %479 = load i32, i32* %ret1546, align 4
  %cmp1550 = icmp eq i32 %479, 0
  br i1 %cmp1550, label %land.rhs1552, label %land.end1555

land.rhs1552:                                     ; preds = %for.cond1549
  %480 = load volatile i32, i32* @mbedtls_timing_alarmed, align 4
  %tobool1553 = icmp ne i32 %480, 0
  %lnot1554 = xor i1 %tobool1553, true
  br label %land.end1555

land.end1555:                                     ; preds = %land.rhs1552, %for.cond1549
  %481 = phi i1 [ false, %for.cond1549 ], [ %lnot1554, %land.rhs1552 ]
  br i1 %481, label %for.body1556, label %for.end1560

for.body1556:                                     ; preds = %land.end1555
  %482 = bitcast %struct.mbedtls_hmac_drbg_context* %hmac_drbg1420 to i8*
  %call1557 = call i32 @mbedtls_hmac_drbg_random(i8* noundef %482, i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @buf, i64 0, i64 0), i64 noundef 1024) #7
  store i32 %call1557, i32* %ret1546, align 4
  br label %for.inc1558

for.inc1558:                                      ; preds = %for.body1556
  %483 = load i64, i64* %ii1543, align 8
  %inc1559 = add i64 %483, 1
  store i64 %inc1559, i64* %ii1543, align 8
  br label %for.cond1549, !llvm.loop !59

for.end1560:                                      ; preds = %land.end1555
  %call1561 = call i64 @mbedtls_timing_hardclock() #7
  store i64 %call1561, i64* %tsc1545, align 8
  store i64 0, i64* %jj1544, align 8
  br label %for.cond1562

for.cond1562:                                     ; preds = %for.inc1571, %for.end1560
  %484 = load i32, i32* %ret1546, align 4
  %cmp1563 = icmp eq i32 %484, 0
  br i1 %cmp1563, label %land.rhs1565, label %land.end1568

land.rhs1565:                                     ; preds = %for.cond1562
  %485 = load i64, i64* %jj1544, align 8
  %cmp1566 = icmp ult i64 %485, 1024
  br label %land.end1568

land.end1568:                                     ; preds = %land.rhs1565, %for.cond1562
  %486 = phi i1 [ false, %for.cond1562 ], [ %cmp1566, %land.rhs1565 ]
  br i1 %486, label %for.body1569, label %for.end1573

for.body1569:                                     ; preds = %land.end1568
  %487 = bitcast %struct.mbedtls_hmac_drbg_context* %hmac_drbg1420 to i8*
  %call1570 = call i32 @mbedtls_hmac_drbg_random(i8* noundef %487, i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @buf, i64 0, i64 0), i64 noundef 1024) #7
  store i32 %call1570, i32* %ret1546, align 4
  br label %for.inc1571

for.inc1571:                                      ; preds = %for.body1569
  %488 = load i64, i64* %jj1544, align 8
  %inc1572 = add i64 %488, 1
  store i64 %inc1572, i64* %jj1544, align 8
  br label %for.cond1562, !llvm.loop !60

for.end1573:                                      ; preds = %land.end1568
  %489 = load i32, i32* %ret1546, align 4
  %cmp1574 = icmp ne i32 %489, 0
  br i1 %cmp1574, label %if.then1576, label %if.else1580

if.then1576:                                      ; preds = %for.end1573
  %490 = load i32, i32* %ret1546, align 4
  %arraydecay1577 = getelementptr inbounds [200 x i8], [200 x i8]* %tmp, i64 0, i64 0
  call void @mbedtls_strerror(i32 noundef %490, i8* noundef %arraydecay1577, i64 noundef 200) #7
  %arraydecay1578 = getelementptr inbounds [200 x i8], [200 x i8]* %tmp, i64 0, i64 0
  %call1579 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i64 0, i64 0), i8* noundef %arraydecay1578) #7
  br label %if.end1588

if.else1580:                                      ; preds = %for.end1573
  %491 = load i64, i64* %ii1543, align 8
  %mul1581 = mul i64 %491, 1024
  %div1582 = udiv i64 %mul1581, 1024
  %call1583 = call i64 @mbedtls_timing_hardclock() #7
  %492 = load i64, i64* %tsc1545, align 8
  %sub1584 = sub i64 %call1583, %492
  %493 = load i64, i64* %jj1544, align 8
  %mul1585 = mul i64 %493, 1024
  %div1586 = udiv i64 %sub1584, %mul1585
  %call1587 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.30, i64 0, i64 0), i64 noundef %div1582, i64 noundef %div1586) #7
  br label %if.end1588

if.end1588:                                       ; preds = %if.else1580, %if.then1576
  br label %do.end1589

do.end1589:                                       ; preds = %if.end1588
  %494 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %md_info, align 8
  %call1590 = call i32 @mbedtls_hmac_drbg_seed(%struct.mbedtls_hmac_drbg_context* noundef %hmac_drbg1420, %struct.mbedtls_md_info_t* noundef %494, i32 (i8*, i8*, i64)* noundef @myrand, i8* noundef null, i8* noundef null, i64 noundef 0) #7
  %cmp1591 = icmp ne i32 %call1590, 0
  br i1 %cmp1591, label %if.then1593, label %if.end1594

if.then1593:                                      ; preds = %do.end1589
  call void @exit(i32 noundef 1) #10
  unreachable

if.end1594:                                       ; preds = %do.end1589
  call void @mbedtls_hmac_drbg_set_prediction_resistance(%struct.mbedtls_hmac_drbg_context* noundef %hmac_drbg1420, i32 noundef 1) #7
  br label %do.body1595

do.body1595:                                      ; preds = %if.end1594
  store i32 0, i32* %ret1599, align 4
  %call1600 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.27, i64 0, i64 0), i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.55, i64 0, i64 0)) #7
  %495 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call1601 = call i32 @fflush(%struct._IO_FILE* noundef %495) #7
  call void @mbedtls_set_alarm(i32 noundef 1) #7
  store i64 1, i64* %ii1596, align 8
  br label %for.cond1602

for.cond1602:                                     ; preds = %for.inc1611, %do.body1595
  %496 = load i32, i32* %ret1599, align 4
  %cmp1603 = icmp eq i32 %496, 0
  br i1 %cmp1603, label %land.rhs1605, label %land.end1608

land.rhs1605:                                     ; preds = %for.cond1602
  %497 = load volatile i32, i32* @mbedtls_timing_alarmed, align 4
  %tobool1606 = icmp ne i32 %497, 0
  %lnot1607 = xor i1 %tobool1606, true
  br label %land.end1608

land.end1608:                                     ; preds = %land.rhs1605, %for.cond1602
  %498 = phi i1 [ false, %for.cond1602 ], [ %lnot1607, %land.rhs1605 ]
  br i1 %498, label %for.body1609, label %for.end1613

for.body1609:                                     ; preds = %land.end1608
  %499 = bitcast %struct.mbedtls_hmac_drbg_context* %hmac_drbg1420 to i8*
  %call1610 = call i32 @mbedtls_hmac_drbg_random(i8* noundef %499, i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @buf, i64 0, i64 0), i64 noundef 1024) #7
  store i32 %call1610, i32* %ret1599, align 4
  br label %for.inc1611

for.inc1611:                                      ; preds = %for.body1609
  %500 = load i64, i64* %ii1596, align 8
  %inc1612 = add i64 %500, 1
  store i64 %inc1612, i64* %ii1596, align 8
  br label %for.cond1602, !llvm.loop !61

for.end1613:                                      ; preds = %land.end1608
  %call1614 = call i64 @mbedtls_timing_hardclock() #7
  store i64 %call1614, i64* %tsc1598, align 8
  store i64 0, i64* %jj1597, align 8
  br label %for.cond1615

for.cond1615:                                     ; preds = %for.inc1624, %for.end1613
  %501 = load i32, i32* %ret1599, align 4
  %cmp1616 = icmp eq i32 %501, 0
  br i1 %cmp1616, label %land.rhs1618, label %land.end1621

land.rhs1618:                                     ; preds = %for.cond1615
  %502 = load i64, i64* %jj1597, align 8
  %cmp1619 = icmp ult i64 %502, 1024
  br label %land.end1621

land.end1621:                                     ; preds = %land.rhs1618, %for.cond1615
  %503 = phi i1 [ false, %for.cond1615 ], [ %cmp1619, %land.rhs1618 ]
  br i1 %503, label %for.body1622, label %for.end1626

for.body1622:                                     ; preds = %land.end1621
  %504 = bitcast %struct.mbedtls_hmac_drbg_context* %hmac_drbg1420 to i8*
  %call1623 = call i32 @mbedtls_hmac_drbg_random(i8* noundef %504, i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @buf, i64 0, i64 0), i64 noundef 1024) #7
  store i32 %call1623, i32* %ret1599, align 4
  br label %for.inc1624

for.inc1624:                                      ; preds = %for.body1622
  %505 = load i64, i64* %jj1597, align 8
  %inc1625 = add i64 %505, 1
  store i64 %inc1625, i64* %jj1597, align 8
  br label %for.cond1615, !llvm.loop !62

for.end1626:                                      ; preds = %land.end1621
  %506 = load i32, i32* %ret1599, align 4
  %cmp1627 = icmp ne i32 %506, 0
  br i1 %cmp1627, label %if.then1629, label %if.else1633

if.then1629:                                      ; preds = %for.end1626
  %507 = load i32, i32* %ret1599, align 4
  %arraydecay1630 = getelementptr inbounds [200 x i8], [200 x i8]* %tmp, i64 0, i64 0
  call void @mbedtls_strerror(i32 noundef %507, i8* noundef %arraydecay1630, i64 noundef 200) #7
  %arraydecay1631 = getelementptr inbounds [200 x i8], [200 x i8]* %tmp, i64 0, i64 0
  %call1632 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i64 0, i64 0), i8* noundef %arraydecay1631) #7
  br label %if.end1641

if.else1633:                                      ; preds = %for.end1626
  %508 = load i64, i64* %ii1596, align 8
  %mul1634 = mul i64 %508, 1024
  %div1635 = udiv i64 %mul1634, 1024
  %call1636 = call i64 @mbedtls_timing_hardclock() #7
  %509 = load i64, i64* %tsc1598, align 8
  %sub1637 = sub i64 %call1636, %509
  %510 = load i64, i64* %jj1597, align 8
  %mul1638 = mul i64 %510, 1024
  %div1639 = udiv i64 %sub1637, %mul1638
  %call1640 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.30, i64 0, i64 0), i64 noundef %div1635, i64 noundef %div1639) #7
  br label %if.end1641

if.end1641:                                       ; preds = %if.else1633, %if.then1629
  br label %do.end1642

do.end1642:                                       ; preds = %if.end1641
  call void @mbedtls_hmac_drbg_free(%struct.mbedtls_hmac_drbg_context* noundef %hmac_drbg1420) #7
  br label %if.end1643

if.end1643:                                       ; preds = %do.end1642, %if.end1416
  %rsa1644 = getelementptr inbounds %struct.todo_list, %struct.todo_list* %todo, i32 0, i32 20
  %511 = load i8, i8* %rsa1644, align 1
  %tobool1645 = icmp ne i8 %511, 0
  br i1 %tobool1645, label %if.then1646, label %if.end1729

if.then1646:                                      ; preds = %if.end1643
  store i32 2048, i32* %keysize1647, align 4
  br label %for.cond1649

for.cond1649:                                     ; preds = %for.inc1726, %if.then1646
  %512 = load i32, i32* %keysize1647, align 4
  %cmp1650 = icmp sle i32 %512, 4096
  br i1 %cmp1650, label %for.body1652, label %for.end1728

for.body1652:                                     ; preds = %for.cond1649
  %arraydecay1653 = getelementptr inbounds [25 x i8], [25 x i8]* %title, i64 0, i64 0
  %513 = load i32, i32* %keysize1647, align 4
  %call1654 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %arraydecay1653, i64 noundef 25, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.56, i64 0, i64 0), i32 noundef %513) #8
  call void @mbedtls_rsa_init(%struct.mbedtls_rsa_context* noundef %rsa1648) #7
  %514 = load i32, i32* %keysize1647, align 4
  %call1655 = call i32 @mbedtls_rsa_gen_key(%struct.mbedtls_rsa_context* noundef %rsa1648, i32 (i8*, i8*, i64)* noundef @myrand, i8* noundef null, i32 noundef %514, i32 noundef 65537) #7
  br label %do.body1656

do.body1656:                                      ; preds = %for.body1652
  %arraydecay1659 = getelementptr inbounds [25 x i8], [25 x i8]* %title, i64 0, i64 0
  %call1660 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.27, i64 0, i64 0), i8* noundef %arraydecay1659) #7
  %515 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call1661 = call i32 @fflush(%struct._IO_FILE* noundef %515) #7
  call void @mbedtls_set_alarm(i32 noundef 3) #7
  store i32 0, i32* %ret1658, align 4
  store i64 1, i64* %ii1657, align 8
  br label %for.cond1662

for.cond1662:                                     ; preds = %for.inc1670, %do.body1656
  %516 = load volatile i32, i32* @mbedtls_timing_alarmed, align 4
  %tobool1663 = icmp ne i32 %516, 0
  br i1 %tobool1663, label %land.end1667, label %land.rhs1664

land.rhs1664:                                     ; preds = %for.cond1662
  %517 = load i32, i32* %ret1658, align 4
  %tobool1665 = icmp ne i32 %517, 0
  %lnot1666 = xor i1 %tobool1665, true
  br label %land.end1667

land.end1667:                                     ; preds = %land.rhs1664, %for.cond1662
  %518 = phi i1 [ false, %for.cond1662 ], [ %lnot1666, %land.rhs1664 ]
  br i1 %518, label %for.body1668, label %for.end1672

for.body1668:                                     ; preds = %land.end1667
  store i8 0, i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @buf, i64 0, i64 0), align 16
  %call1669 = call i32 @mbedtls_rsa_public(%struct.mbedtls_rsa_context* noundef %rsa1648, i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @buf, i64 0, i64 0), i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @buf, i64 0, i64 0)) #7
  store i32 %call1669, i32* %ret1658, align 4
  br label %for.inc1670

for.inc1670:                                      ; preds = %for.body1668
  %519 = load i64, i64* %ii1657, align 8
  %inc1671 = add i64 %519, 1
  store i64 %inc1671, i64* %ii1657, align 8
  br label %for.cond1662, !llvm.loop !63

for.end1672:                                      ; preds = %land.end1667
  %520 = load i32, i32* %ret1658, align 4
  %cmp1673 = icmp eq i32 %520, -114
  br i1 %cmp1673, label %if.then1675, label %if.else1677

if.then1675:                                      ; preds = %for.end1672
  %call1676 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.57, i64 0, i64 0)) #7
  store i32 0, i32* %ret1658, align 4
  br label %if.end1689

if.else1677:                                      ; preds = %for.end1672
  %521 = load i32, i32* %ret1658, align 4
  %cmp1678 = icmp ne i32 %521, 0
  br i1 %cmp1678, label %if.then1680, label %if.else1684

if.then1680:                                      ; preds = %if.else1677
  %522 = load i32, i32* %ret1658, align 4
  %arraydecay1681 = getelementptr inbounds [200 x i8], [200 x i8]* %tmp, i64 0, i64 0
  call void @mbedtls_strerror(i32 noundef %522, i8* noundef %arraydecay1681, i64 noundef 200) #7
  %arraydecay1682 = getelementptr inbounds [200 x i8], [200 x i8]* %tmp, i64 0, i64 0
  %call1683 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i64 0, i64 0), i8* noundef %arraydecay1682) #7
  br label %if.end1688

if.else1684:                                      ; preds = %if.else1677
  %523 = load i64, i64* %ii1657, align 8
  %div1685 = udiv i64 %523, 3
  %call1686 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.58, i64 0, i64 0), i64 noundef %div1685) #7
  %call1687 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i64 0, i64 0)) #7
  br label %if.end1688

if.end1688:                                       ; preds = %if.else1684, %if.then1680
  br label %if.end1689

if.end1689:                                       ; preds = %if.end1688, %if.then1675
  br label %do.end1690

do.end1690:                                       ; preds = %if.end1689
  br label %do.body1691

do.body1691:                                      ; preds = %do.end1690
  %arraydecay1694 = getelementptr inbounds [25 x i8], [25 x i8]* %title, i64 0, i64 0
  %call1695 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.27, i64 0, i64 0), i8* noundef %arraydecay1694) #7
  %524 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call1696 = call i32 @fflush(%struct._IO_FILE* noundef %524) #7
  call void @mbedtls_set_alarm(i32 noundef 3) #7
  store i32 0, i32* %ret1693, align 4
  store i64 1, i64* %ii1692, align 8
  br label %for.cond1697

for.cond1697:                                     ; preds = %for.inc1705, %do.body1691
  %525 = load volatile i32, i32* @mbedtls_timing_alarmed, align 4
  %tobool1698 = icmp ne i32 %525, 0
  br i1 %tobool1698, label %land.end1702, label %land.rhs1699

land.rhs1699:                                     ; preds = %for.cond1697
  %526 = load i32, i32* %ret1693, align 4
  %tobool1700 = icmp ne i32 %526, 0
  %lnot1701 = xor i1 %tobool1700, true
  br label %land.end1702

land.end1702:                                     ; preds = %land.rhs1699, %for.cond1697
  %527 = phi i1 [ false, %for.cond1697 ], [ %lnot1701, %land.rhs1699 ]
  br i1 %527, label %for.body1703, label %for.end1707

for.body1703:                                     ; preds = %land.end1702
  store i8 0, i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @buf, i64 0, i64 0), align 16
  %call1704 = call i32 @mbedtls_rsa_private(%struct.mbedtls_rsa_context* noundef %rsa1648, i32 (i8*, i8*, i64)* noundef @myrand, i8* noundef null, i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @buf, i64 0, i64 0), i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @buf, i64 0, i64 0)) #7
  store i32 %call1704, i32* %ret1693, align 4
  br label %for.inc1705

for.inc1705:                                      ; preds = %for.body1703
  %528 = load i64, i64* %ii1692, align 8
  %inc1706 = add i64 %528, 1
  store i64 %inc1706, i64* %ii1692, align 8
  br label %for.cond1697, !llvm.loop !64

for.end1707:                                      ; preds = %land.end1702
  %529 = load i32, i32* %ret1693, align 4
  %cmp1708 = icmp eq i32 %529, -114
  br i1 %cmp1708, label %if.then1710, label %if.else1712

if.then1710:                                      ; preds = %for.end1707
  %call1711 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.57, i64 0, i64 0)) #7
  store i32 0, i32* %ret1693, align 4
  br label %if.end1724

if.else1712:                                      ; preds = %for.end1707
  %530 = load i32, i32* %ret1693, align 4
  %cmp1713 = icmp ne i32 %530, 0
  br i1 %cmp1713, label %if.then1715, label %if.else1719

if.then1715:                                      ; preds = %if.else1712
  %531 = load i32, i32* %ret1693, align 4
  %arraydecay1716 = getelementptr inbounds [200 x i8], [200 x i8]* %tmp, i64 0, i64 0
  call void @mbedtls_strerror(i32 noundef %531, i8* noundef %arraydecay1716, i64 noundef 200) #7
  %arraydecay1717 = getelementptr inbounds [200 x i8], [200 x i8]* %tmp, i64 0, i64 0
  %call1718 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i64 0, i64 0), i8* noundef %arraydecay1717) #7
  br label %if.end1723

if.else1719:                                      ; preds = %if.else1712
  %532 = load i64, i64* %ii1692, align 8
  %div1720 = udiv i64 %532, 3
  %call1721 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.59, i64 0, i64 0), i64 noundef %div1720) #7
  %call1722 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i64 0, i64 0)) #7
  br label %if.end1723

if.end1723:                                       ; preds = %if.else1719, %if.then1715
  br label %if.end1724

if.end1724:                                       ; preds = %if.end1723, %if.then1710
  br label %do.end1725

do.end1725:                                       ; preds = %if.end1724
  call void @mbedtls_rsa_free(%struct.mbedtls_rsa_context* noundef %rsa1648) #7
  br label %for.inc1726

for.inc1726:                                      ; preds = %do.end1725
  %533 = load i32, i32* %keysize1647, align 4
  %mul1727 = mul nsw i32 %533, 2
  store i32 %mul1727, i32* %keysize1647, align 4
  br label %for.cond1649, !llvm.loop !65

for.end1728:                                      ; preds = %for.cond1649
  br label %if.end1729

if.end1729:                                       ; preds = %for.end1728, %if.end1643
  %dhm1730 = getelementptr inbounds %struct.todo_list, %struct.todo_list* %todo, i32 0, i32 21
  %534 = load i8, i8* %dhm1730, align 1
  %tobool1731 = icmp ne i8 %534, 0
  br i1 %tobool1731, label %if.then1732, label %if.end1849

if.then1732:                                      ; preds = %if.end1729
  %535 = bitcast [2 x i32]* %dhm_sizes to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %535, i8* align 4 bitcast ([2 x i32]* @__const.main.dhm_sizes to i8*), i64 8, i1 false)
  %536 = bitcast [2 x i8*]* %dhm_P to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %536, i8* align 16 bitcast ([2 x i8*]* @__const.main.dhm_P to i8*), i64 16, i1 false)
  %537 = bitcast [2 x i64]* %dhm_P_size to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %537, i8* align 16 bitcast ([2 x i64]* @__const.main.dhm_P_size to i8*), i64 16, i1 false)
  %538 = bitcast [2 x i8*]* %dhm_G to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %538, i8* align 16 bitcast ([2 x i8*]* @__const.main.dhm_G to i8*), i64 16, i1 false)
  %539 = bitcast [2 x i64]* %dhm_G_size to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %539, i8* align 16 bitcast ([2 x i64]* @__const.main.dhm_G_size to i8*), i64 16, i1 false)
  store i32 0, i32* %i, align 4
  br label %for.cond1734

for.cond1734:                                     ; preds = %for.inc1846, %if.then1732
  %540 = load i32, i32* %i, align 4
  %conv1735 = sext i32 %540 to i64
  %cmp1736 = icmp ult i64 %conv1735, 2
  br i1 %cmp1736, label %for.body1738, label %for.end1848

for.body1738:                                     ; preds = %for.cond1734
  call void @mbedtls_dhm_init(%struct.mbedtls_dhm_context* noundef %dhm1733) #7
  %P = getelementptr inbounds %struct.mbedtls_dhm_context, %struct.mbedtls_dhm_context* %dhm1733, i32 0, i32 0
  %541 = load i32, i32* %i, align 4
  %idxprom1739 = sext i32 %541 to i64
  %arrayidx1740 = getelementptr inbounds [2 x i8*], [2 x i8*]* %dhm_P, i64 0, i64 %idxprom1739
  %542 = load i8*, i8** %arrayidx1740, align 8
  %543 = load i32, i32* %i, align 4
  %idxprom1741 = sext i32 %543 to i64
  %arrayidx1742 = getelementptr inbounds [2 x i64], [2 x i64]* %dhm_P_size, i64 0, i64 %idxprom1741
  %544 = load i64, i64* %arrayidx1742, align 8
  %call1743 = call i32 @mbedtls_mpi_read_binary(%struct.mbedtls_mpi* noundef %P, i8* noundef %542, i64 noundef %544) #7
  %cmp1744 = icmp ne i32 %call1743, 0
  br i1 %cmp1744, label %if.then1753, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body1738
  %G = getelementptr inbounds %struct.mbedtls_dhm_context, %struct.mbedtls_dhm_context* %dhm1733, i32 0, i32 1
  %545 = load i32, i32* %i, align 4
  %idxprom1746 = sext i32 %545 to i64
  %arrayidx1747 = getelementptr inbounds [2 x i8*], [2 x i8*]* %dhm_G, i64 0, i64 %idxprom1746
  %546 = load i8*, i8** %arrayidx1747, align 8
  %547 = load i32, i32* %i, align 4
  %idxprom1748 = sext i32 %547 to i64
  %arrayidx1749 = getelementptr inbounds [2 x i64], [2 x i64]* %dhm_G_size, i64 0, i64 %idxprom1748
  %548 = load i64, i64* %arrayidx1749, align 8
  %call1750 = call i32 @mbedtls_mpi_read_binary(%struct.mbedtls_mpi* noundef %G, i8* noundef %546, i64 noundef %548) #7
  %cmp1751 = icmp ne i32 %call1750, 0
  br i1 %cmp1751, label %if.then1753, label %if.end1754

if.then1753:                                      ; preds = %lor.lhs.false, %for.body1738
  call void @exit(i32 noundef 1) #10
  unreachable

if.end1754:                                       ; preds = %lor.lhs.false
  %P1755 = getelementptr inbounds %struct.mbedtls_dhm_context, %struct.mbedtls_dhm_context* %dhm1733, i32 0, i32 0
  %call1756 = call i64 @mbedtls_mpi_size(%struct.mbedtls_mpi* noundef %P1755) #7
  store i64 %call1756, i64* %n, align 8
  %549 = load i64, i64* %n, align 8
  %conv1757 = trunc i64 %549 to i32
  %550 = load i64, i64* %n, align 8
  %call1758 = call i32 @mbedtls_dhm_make_public(%struct.mbedtls_dhm_context* noundef %dhm1733, i32 noundef %conv1757, i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @buf, i64 0, i64 0), i64 noundef %550, i32 (i8*, i8*, i64)* noundef @myrand, i8* noundef null) #7
  %GY = getelementptr inbounds %struct.mbedtls_dhm_context, %struct.mbedtls_dhm_context* %dhm1733, i32 0, i32 4
  %GX = getelementptr inbounds %struct.mbedtls_dhm_context, %struct.mbedtls_dhm_context* %dhm1733, i32 0, i32 3
  %call1759 = call i32 @mbedtls_mpi_copy(%struct.mbedtls_mpi* noundef %GY, %struct.mbedtls_mpi* noundef %GX) #7
  %cmp1760 = icmp ne i32 %call1759, 0
  br i1 %cmp1760, label %if.then1762, label %if.end1763

if.then1762:                                      ; preds = %if.end1754
  call void @exit(i32 noundef 1) #10
  unreachable

if.end1763:                                       ; preds = %if.end1754
  %arraydecay1764 = getelementptr inbounds [25 x i8], [25 x i8]* %title, i64 0, i64 0
  %551 = load i32, i32* %i, align 4
  %idxprom1765 = sext i32 %551 to i64
  %arrayidx1766 = getelementptr inbounds [2 x i32], [2 x i32]* %dhm_sizes, i64 0, i64 %idxprom1765
  %552 = load i32, i32* %arrayidx1766, align 4
  %call1767 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %arraydecay1764, i64 noundef 25, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.60, i64 0, i64 0), i32 noundef %552) #8
  br label %do.body1768

do.body1768:                                      ; preds = %if.end1763
  %arraydecay1771 = getelementptr inbounds [25 x i8], [25 x i8]* %title, i64 0, i64 0
  %call1772 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.27, i64 0, i64 0), i8* noundef %arraydecay1771) #7
  %553 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call1773 = call i32 @fflush(%struct._IO_FILE* noundef %553) #7
  call void @mbedtls_set_alarm(i32 noundef 3) #7
  store i32 0, i32* %ret1770, align 4
  store i64 1, i64* %ii1769, align 8
  br label %for.cond1774

for.cond1774:                                     ; preds = %for.inc1785, %do.body1768
  %554 = load volatile i32, i32* @mbedtls_timing_alarmed, align 4
  %tobool1775 = icmp ne i32 %554, 0
  br i1 %tobool1775, label %land.end1779, label %land.rhs1776

land.rhs1776:                                     ; preds = %for.cond1774
  %555 = load i32, i32* %ret1770, align 4
  %tobool1777 = icmp ne i32 %555, 0
  %lnot1778 = xor i1 %tobool1777, true
  br label %land.end1779

land.end1779:                                     ; preds = %land.rhs1776, %for.cond1774
  %556 = phi i1 [ false, %for.cond1774 ], [ %lnot1778, %land.rhs1776 ]
  br i1 %556, label %for.body1780, label %for.end1787

for.body1780:                                     ; preds = %land.end1779
  %557 = load i64, i64* %n, align 8
  %conv1781 = trunc i64 %557 to i32
  %558 = load i64, i64* %n, align 8
  %call1782 = call i32 @mbedtls_dhm_make_public(%struct.mbedtls_dhm_context* noundef %dhm1733, i32 noundef %conv1781, i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @buf, i64 0, i64 0), i64 noundef %558, i32 (i8*, i8*, i64)* noundef @myrand, i8* noundef null) #7
  %559 = load i32, i32* %ret1770, align 4
  %or = or i32 %559, %call1782
  store i32 %or, i32* %ret1770, align 4
  %call1783 = call i32 @mbedtls_dhm_calc_secret(%struct.mbedtls_dhm_context* noundef %dhm1733, i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @buf, i64 0, i64 0), i64 noundef 1024, i64* noundef %olen, i32 (i8*, i8*, i64)* noundef @myrand, i8* noundef null) #7
  %560 = load i32, i32* %ret1770, align 4
  %or1784 = or i32 %560, %call1783
  store i32 %or1784, i32* %ret1770, align 4
  br label %for.inc1785

for.inc1785:                                      ; preds = %for.body1780
  %561 = load i64, i64* %ii1769, align 8
  %inc1786 = add i64 %561, 1
  store i64 %inc1786, i64* %ii1769, align 8
  br label %for.cond1774, !llvm.loop !66

for.end1787:                                      ; preds = %land.end1779
  %562 = load i32, i32* %ret1770, align 4
  %cmp1788 = icmp eq i32 %562, -114
  br i1 %cmp1788, label %if.then1790, label %if.else1792

if.then1790:                                      ; preds = %for.end1787
  %call1791 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.57, i64 0, i64 0)) #7
  store i32 0, i32* %ret1770, align 4
  br label %if.end1804

if.else1792:                                      ; preds = %for.end1787
  %563 = load i32, i32* %ret1770, align 4
  %cmp1793 = icmp ne i32 %563, 0
  br i1 %cmp1793, label %if.then1795, label %if.else1799

if.then1795:                                      ; preds = %if.else1792
  %564 = load i32, i32* %ret1770, align 4
  %arraydecay1796 = getelementptr inbounds [200 x i8], [200 x i8]* %tmp, i64 0, i64 0
  call void @mbedtls_strerror(i32 noundef %564, i8* noundef %arraydecay1796, i64 noundef 200) #7
  %arraydecay1797 = getelementptr inbounds [200 x i8], [200 x i8]* %tmp, i64 0, i64 0
  %call1798 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i64 0, i64 0), i8* noundef %arraydecay1797) #7
  br label %if.end1803

if.else1799:                                      ; preds = %if.else1792
  %565 = load i64, i64* %ii1769, align 8
  %div1800 = udiv i64 %565, 3
  %call1801 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.61, i64 0, i64 0), i64 noundef %div1800) #7
  %call1802 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i64 0, i64 0)) #7
  br label %if.end1803

if.end1803:                                       ; preds = %if.else1799, %if.then1795
  br label %if.end1804

if.end1804:                                       ; preds = %if.end1803, %if.then1790
  br label %do.end1805

do.end1805:                                       ; preds = %if.end1804
  %arraydecay1806 = getelementptr inbounds [25 x i8], [25 x i8]* %title, i64 0, i64 0
  %566 = load i32, i32* %i, align 4
  %idxprom1807 = sext i32 %566 to i64
  %arrayidx1808 = getelementptr inbounds [2 x i32], [2 x i32]* %dhm_sizes, i64 0, i64 %idxprom1807
  %567 = load i32, i32* %arrayidx1808, align 4
  %call1809 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %arraydecay1806, i64 noundef 25, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.62, i64 0, i64 0), i32 noundef %567) #8
  br label %do.body1810

do.body1810:                                      ; preds = %do.end1805
  %arraydecay1813 = getelementptr inbounds [25 x i8], [25 x i8]* %title, i64 0, i64 0
  %call1814 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.27, i64 0, i64 0), i8* noundef %arraydecay1813) #7
  %568 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call1815 = call i32 @fflush(%struct._IO_FILE* noundef %568) #7
  call void @mbedtls_set_alarm(i32 noundef 3) #7
  store i32 0, i32* %ret1812, align 4
  store i64 1, i64* %ii1811, align 8
  br label %for.cond1816

for.cond1816:                                     ; preds = %for.inc1825, %do.body1810
  %569 = load volatile i32, i32* @mbedtls_timing_alarmed, align 4
  %tobool1817 = icmp ne i32 %569, 0
  br i1 %tobool1817, label %land.end1821, label %land.rhs1818

land.rhs1818:                                     ; preds = %for.cond1816
  %570 = load i32, i32* %ret1812, align 4
  %tobool1819 = icmp ne i32 %570, 0
  %lnot1820 = xor i1 %tobool1819, true
  br label %land.end1821

land.end1821:                                     ; preds = %land.rhs1818, %for.cond1816
  %571 = phi i1 [ false, %for.cond1816 ], [ %lnot1820, %land.rhs1818 ]
  br i1 %571, label %for.body1822, label %for.end1827

for.body1822:                                     ; preds = %land.end1821
  %call1823 = call i32 @mbedtls_dhm_calc_secret(%struct.mbedtls_dhm_context* noundef %dhm1733, i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @buf, i64 0, i64 0), i64 noundef 1024, i64* noundef %olen, i32 (i8*, i8*, i64)* noundef @myrand, i8* noundef null) #7
  %572 = load i32, i32* %ret1812, align 4
  %or1824 = or i32 %572, %call1823
  store i32 %or1824, i32* %ret1812, align 4
  br label %for.inc1825

for.inc1825:                                      ; preds = %for.body1822
  %573 = load i64, i64* %ii1811, align 8
  %inc1826 = add i64 %573, 1
  store i64 %inc1826, i64* %ii1811, align 8
  br label %for.cond1816, !llvm.loop !67

for.end1827:                                      ; preds = %land.end1821
  %574 = load i32, i32* %ret1812, align 4
  %cmp1828 = icmp eq i32 %574, -114
  br i1 %cmp1828, label %if.then1830, label %if.else1832

if.then1830:                                      ; preds = %for.end1827
  %call1831 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.57, i64 0, i64 0)) #7
  store i32 0, i32* %ret1812, align 4
  br label %if.end1844

if.else1832:                                      ; preds = %for.end1827
  %575 = load i32, i32* %ret1812, align 4
  %cmp1833 = icmp ne i32 %575, 0
  br i1 %cmp1833, label %if.then1835, label %if.else1839

if.then1835:                                      ; preds = %if.else1832
  %576 = load i32, i32* %ret1812, align 4
  %arraydecay1836 = getelementptr inbounds [200 x i8], [200 x i8]* %tmp, i64 0, i64 0
  call void @mbedtls_strerror(i32 noundef %576, i8* noundef %arraydecay1836, i64 noundef 200) #7
  %arraydecay1837 = getelementptr inbounds [200 x i8], [200 x i8]* %tmp, i64 0, i64 0
  %call1838 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i64 0, i64 0), i8* noundef %arraydecay1837) #7
  br label %if.end1843

if.else1839:                                      ; preds = %if.else1832
  %577 = load i64, i64* %ii1811, align 8
  %div1840 = udiv i64 %577, 3
  %call1841 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.61, i64 0, i64 0), i64 noundef %div1840) #7
  %call1842 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i64 0, i64 0)) #7
  br label %if.end1843

if.end1843:                                       ; preds = %if.else1839, %if.then1835
  br label %if.end1844

if.end1844:                                       ; preds = %if.end1843, %if.then1830
  br label %do.end1845

do.end1845:                                       ; preds = %if.end1844
  call void @mbedtls_dhm_free(%struct.mbedtls_dhm_context* noundef %dhm1733) #7
  br label %for.inc1846

for.inc1846:                                      ; preds = %do.end1845
  %578 = load i32, i32* %i, align 4
  %inc1847 = add nsw i32 %578, 1
  store i32 %inc1847, i32* %i, align 4
  br label %for.cond1734, !llvm.loop !68

for.end1848:                                      ; preds = %for.cond1734
  br label %if.end1849

if.end1849:                                       ; preds = %for.end1848, %if.end1729
  %ecdsa1850 = getelementptr inbounds %struct.todo_list, %struct.todo_list* %todo, i32 0, i32 22
  %579 = load i8, i8* %ecdsa1850, align 1
  %tobool1851 = icmp ne i8 %579, 0
  br i1 %tobool1851, label %if.then1852, label %if.end1978

if.then1852:                                      ; preds = %if.end1849
  %call1854 = call i8* @memset(i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @buf, i64 0, i64 0), i32 noundef 42, i64 noundef 1024) #8
  %580 = load %struct.mbedtls_ecp_curve_info*, %struct.mbedtls_ecp_curve_info** %curve_list, align 8
  store %struct.mbedtls_ecp_curve_info* %580, %struct.mbedtls_ecp_curve_info** %curve_info, align 8
  br label %for.cond1855

for.cond1855:                                     ; preds = %for.inc1909, %if.then1852
  %581 = load %struct.mbedtls_ecp_curve_info*, %struct.mbedtls_ecp_curve_info** %curve_info, align 8
  %grp_id = getelementptr inbounds %struct.mbedtls_ecp_curve_info, %struct.mbedtls_ecp_curve_info* %581, i32 0, i32 0
  %582 = load i32, i32* %grp_id, align 8
  %cmp1856 = icmp ne i32 %582, 0
  br i1 %cmp1856, label %for.body1858, label %for.end1910

for.body1858:                                     ; preds = %for.cond1855
  %583 = load %struct.mbedtls_ecp_curve_info*, %struct.mbedtls_ecp_curve_info** %curve_info, align 8
  %grp_id1859 = getelementptr inbounds %struct.mbedtls_ecp_curve_info, %struct.mbedtls_ecp_curve_info* %583, i32 0, i32 0
  %584 = load i32, i32* %grp_id1859, align 8
  %call1860 = call i32 @mbedtls_ecdsa_can_do(i32 noundef %584) #7
  %tobool1861 = icmp ne i32 %call1860, 0
  br i1 %tobool1861, label %if.end1863, label %if.then1862

if.then1862:                                      ; preds = %for.body1858
  br label %for.inc1909

if.end1863:                                       ; preds = %for.body1858
  call void @mbedtls_ecdsa_init(%struct.mbedtls_ecp_keypair* noundef %ecdsa1853) #7
  %585 = load %struct.mbedtls_ecp_curve_info*, %struct.mbedtls_ecp_curve_info** %curve_info, align 8
  %grp_id1864 = getelementptr inbounds %struct.mbedtls_ecp_curve_info, %struct.mbedtls_ecp_curve_info* %585, i32 0, i32 0
  %586 = load i32, i32* %grp_id1864, align 8
  %call1865 = call i32 @mbedtls_ecdsa_genkey(%struct.mbedtls_ecp_keypair* noundef %ecdsa1853, i32 noundef %586, i32 (i8*, i8*, i64)* noundef @myrand, i8* noundef null) #7
  %cmp1866 = icmp ne i32 %call1865, 0
  br i1 %cmp1866, label %if.then1868, label %if.end1869

if.then1868:                                      ; preds = %if.end1863
  call void @exit(i32 noundef 1) #10
  unreachable

if.end1869:                                       ; preds = %if.end1863
  %arraydecay1870 = getelementptr inbounds [25 x i8], [25 x i8]* %title, i64 0, i64 0
  %587 = load %struct.mbedtls_ecp_curve_info*, %struct.mbedtls_ecp_curve_info** %curve_info, align 8
  %name = getelementptr inbounds %struct.mbedtls_ecp_curve_info, %struct.mbedtls_ecp_curve_info* %587, i32 0, i32 3
  %588 = load i8*, i8** %name, align 8
  %call1871 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %arraydecay1870, i64 noundef 25, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.63, i64 0, i64 0), i8* noundef %588) #8
  br label %do.body1872

do.body1872:                                      ; preds = %if.end1869
  %arraydecay1875 = getelementptr inbounds [25 x i8], [25 x i8]* %title, i64 0, i64 0
  %call1876 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.27, i64 0, i64 0), i8* noundef %arraydecay1875) #7
  %589 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call1877 = call i32 @fflush(%struct._IO_FILE* noundef %589) #7
  call void @mbedtls_set_alarm(i32 noundef 3) #7
  store i32 0, i32* %ret1874, align 4
  store i64 1, i64* %ii1873, align 8
  br label %for.cond1878

for.cond1878:                                     ; preds = %for.inc1888, %do.body1872
  %590 = load volatile i32, i32* @mbedtls_timing_alarmed, align 4
  %tobool1879 = icmp ne i32 %590, 0
  br i1 %tobool1879, label %land.end1883, label %land.rhs1880

land.rhs1880:                                     ; preds = %for.cond1878
  %591 = load i32, i32* %ret1874, align 4
  %tobool1881 = icmp ne i32 %591, 0
  %lnot1882 = xor i1 %tobool1881, true
  br label %land.end1883

land.end1883:                                     ; preds = %land.rhs1880, %for.cond1878
  %592 = phi i1 [ false, %for.cond1878 ], [ %lnot1882, %land.rhs1880 ]
  br i1 %592, label %for.body1884, label %for.end1890

for.body1884:                                     ; preds = %land.end1883
  %593 = load %struct.mbedtls_ecp_curve_info*, %struct.mbedtls_ecp_curve_info** %curve_info, align 8
  %bit_size = getelementptr inbounds %struct.mbedtls_ecp_curve_info, %struct.mbedtls_ecp_curve_info* %593, i32 0, i32 2
  %594 = load i16, i16* %bit_size, align 2
  %conv1885 = zext i16 %594 to i64
  %arraydecay1886 = getelementptr inbounds [200 x i8], [200 x i8]* %tmp, i64 0, i64 0
  %call1887 = call i32 @mbedtls_ecdsa_write_signature(%struct.mbedtls_ecp_keypair* noundef %ecdsa1853, i32 noundef 4, i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @buf, i64 0, i64 0), i64 noundef %conv1885, i8* noundef %arraydecay1886, i64 noundef 200, i64* noundef %sig_len, i32 (i8*, i8*, i64)* noundef @myrand, i8* noundef null) #7
  store i32 %call1887, i32* %ret1874, align 4
  br label %for.inc1888

for.inc1888:                                      ; preds = %for.body1884
  %595 = load i64, i64* %ii1873, align 8
  %inc1889 = add i64 %595, 1
  store i64 %inc1889, i64* %ii1873, align 8
  br label %for.cond1878, !llvm.loop !69

for.end1890:                                      ; preds = %land.end1883
  %596 = load i32, i32* %ret1874, align 4
  %cmp1891 = icmp eq i32 %596, -114
  br i1 %cmp1891, label %if.then1893, label %if.else1895

if.then1893:                                      ; preds = %for.end1890
  %call1894 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.57, i64 0, i64 0)) #7
  store i32 0, i32* %ret1874, align 4
  br label %if.end1907

if.else1895:                                      ; preds = %for.end1890
  %597 = load i32, i32* %ret1874, align 4
  %cmp1896 = icmp ne i32 %597, 0
  br i1 %cmp1896, label %if.then1898, label %if.else1902

if.then1898:                                      ; preds = %if.else1895
  %598 = load i32, i32* %ret1874, align 4
  %arraydecay1899 = getelementptr inbounds [200 x i8], [200 x i8]* %tmp, i64 0, i64 0
  call void @mbedtls_strerror(i32 noundef %598, i8* noundef %arraydecay1899, i64 noundef 200) #7
  %arraydecay1900 = getelementptr inbounds [200 x i8], [200 x i8]* %tmp, i64 0, i64 0
  %call1901 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i64 0, i64 0), i8* noundef %arraydecay1900) #7
  br label %if.end1906

if.else1902:                                      ; preds = %if.else1895
  %599 = load i64, i64* %ii1873, align 8
  %div1903 = udiv i64 %599, 3
  %call1904 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.64, i64 0, i64 0), i64 noundef %div1903) #7
  %call1905 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i64 0, i64 0)) #7
  br label %if.end1906

if.end1906:                                       ; preds = %if.else1902, %if.then1898
  br label %if.end1907

if.end1907:                                       ; preds = %if.end1906, %if.then1893
  br label %do.end1908

do.end1908:                                       ; preds = %if.end1907
  call void @mbedtls_ecdsa_free(%struct.mbedtls_ecp_keypair* noundef %ecdsa1853) #7
  br label %for.inc1909

for.inc1909:                                      ; preds = %do.end1908, %if.then1862
  %600 = load %struct.mbedtls_ecp_curve_info*, %struct.mbedtls_ecp_curve_info** %curve_info, align 8
  %incdec.ptr = getelementptr inbounds %struct.mbedtls_ecp_curve_info, %struct.mbedtls_ecp_curve_info* %600, i32 1
  store %struct.mbedtls_ecp_curve_info* %incdec.ptr, %struct.mbedtls_ecp_curve_info** %curve_info, align 8
  br label %for.cond1855, !llvm.loop !70

for.end1910:                                      ; preds = %for.cond1855
  %601 = load %struct.mbedtls_ecp_curve_info*, %struct.mbedtls_ecp_curve_info** %curve_list, align 8
  store %struct.mbedtls_ecp_curve_info* %601, %struct.mbedtls_ecp_curve_info** %curve_info, align 8
  br label %for.cond1911

for.cond1911:                                     ; preds = %for.inc1975, %for.end1910
  %602 = load %struct.mbedtls_ecp_curve_info*, %struct.mbedtls_ecp_curve_info** %curve_info, align 8
  %grp_id1912 = getelementptr inbounds %struct.mbedtls_ecp_curve_info, %struct.mbedtls_ecp_curve_info* %602, i32 0, i32 0
  %603 = load i32, i32* %grp_id1912, align 8
  %cmp1913 = icmp ne i32 %603, 0
  br i1 %cmp1913, label %for.body1915, label %for.end1977

for.body1915:                                     ; preds = %for.cond1911
  %604 = load %struct.mbedtls_ecp_curve_info*, %struct.mbedtls_ecp_curve_info** %curve_info, align 8
  %grp_id1916 = getelementptr inbounds %struct.mbedtls_ecp_curve_info, %struct.mbedtls_ecp_curve_info* %604, i32 0, i32 0
  %605 = load i32, i32* %grp_id1916, align 8
  %call1917 = call i32 @mbedtls_ecdsa_can_do(i32 noundef %605) #7
  %tobool1918 = icmp ne i32 %call1917, 0
  br i1 %tobool1918, label %if.end1920, label %if.then1919

if.then1919:                                      ; preds = %for.body1915
  br label %for.inc1975

if.end1920:                                       ; preds = %for.body1915
  call void @mbedtls_ecdsa_init(%struct.mbedtls_ecp_keypair* noundef %ecdsa1853) #7
  %606 = load %struct.mbedtls_ecp_curve_info*, %struct.mbedtls_ecp_curve_info** %curve_info, align 8
  %grp_id1921 = getelementptr inbounds %struct.mbedtls_ecp_curve_info, %struct.mbedtls_ecp_curve_info* %606, i32 0, i32 0
  %607 = load i32, i32* %grp_id1921, align 8
  %call1922 = call i32 @mbedtls_ecdsa_genkey(%struct.mbedtls_ecp_keypair* noundef %ecdsa1853, i32 noundef %607, i32 (i8*, i8*, i64)* noundef @myrand, i8* noundef null) #7
  %cmp1923 = icmp ne i32 %call1922, 0
  br i1 %cmp1923, label %if.then1932, label %lor.lhs.false1925

lor.lhs.false1925:                                ; preds = %if.end1920
  %608 = load %struct.mbedtls_ecp_curve_info*, %struct.mbedtls_ecp_curve_info** %curve_info, align 8
  %bit_size1926 = getelementptr inbounds %struct.mbedtls_ecp_curve_info, %struct.mbedtls_ecp_curve_info* %608, i32 0, i32 2
  %609 = load i16, i16* %bit_size1926, align 2
  %conv1927 = zext i16 %609 to i64
  %arraydecay1928 = getelementptr inbounds [200 x i8], [200 x i8]* %tmp, i64 0, i64 0
  %call1929 = call i32 @mbedtls_ecdsa_write_signature(%struct.mbedtls_ecp_keypair* noundef %ecdsa1853, i32 noundef 4, i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @buf, i64 0, i64 0), i64 noundef %conv1927, i8* noundef %arraydecay1928, i64 noundef 200, i64* noundef %sig_len, i32 (i8*, i8*, i64)* noundef @myrand, i8* noundef null) #7
  %cmp1930 = icmp ne i32 %call1929, 0
  br i1 %cmp1930, label %if.then1932, label %if.end1933

if.then1932:                                      ; preds = %lor.lhs.false1925, %if.end1920
  call void @exit(i32 noundef 1) #10
  unreachable

if.end1933:                                       ; preds = %lor.lhs.false1925
  %arraydecay1934 = getelementptr inbounds [25 x i8], [25 x i8]* %title, i64 0, i64 0
  %610 = load %struct.mbedtls_ecp_curve_info*, %struct.mbedtls_ecp_curve_info** %curve_info, align 8
  %name1935 = getelementptr inbounds %struct.mbedtls_ecp_curve_info, %struct.mbedtls_ecp_curve_info* %610, i32 0, i32 3
  %611 = load i8*, i8** %name1935, align 8
  %call1936 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %arraydecay1934, i64 noundef 25, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.63, i64 0, i64 0), i8* noundef %611) #8
  br label %do.body1937

do.body1937:                                      ; preds = %if.end1933
  %arraydecay1940 = getelementptr inbounds [25 x i8], [25 x i8]* %title, i64 0, i64 0
  %call1941 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.27, i64 0, i64 0), i8* noundef %arraydecay1940) #7
  %612 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call1942 = call i32 @fflush(%struct._IO_FILE* noundef %612) #7
  call void @mbedtls_set_alarm(i32 noundef 3) #7
  store i32 0, i32* %ret1939, align 4
  store i64 1, i64* %ii1938, align 8
  br label %for.cond1943

for.cond1943:                                     ; preds = %for.inc1954, %do.body1937
  %613 = load volatile i32, i32* @mbedtls_timing_alarmed, align 4
  %tobool1944 = icmp ne i32 %613, 0
  br i1 %tobool1944, label %land.end1948, label %land.rhs1945

land.rhs1945:                                     ; preds = %for.cond1943
  %614 = load i32, i32* %ret1939, align 4
  %tobool1946 = icmp ne i32 %614, 0
  %lnot1947 = xor i1 %tobool1946, true
  br label %land.end1948

land.end1948:                                     ; preds = %land.rhs1945, %for.cond1943
  %615 = phi i1 [ false, %for.cond1943 ], [ %lnot1947, %land.rhs1945 ]
  br i1 %615, label %for.body1949, label %for.end1956

for.body1949:                                     ; preds = %land.end1948
  %616 = load %struct.mbedtls_ecp_curve_info*, %struct.mbedtls_ecp_curve_info** %curve_info, align 8
  %bit_size1950 = getelementptr inbounds %struct.mbedtls_ecp_curve_info, %struct.mbedtls_ecp_curve_info* %616, i32 0, i32 2
  %617 = load i16, i16* %bit_size1950, align 2
  %conv1951 = zext i16 %617 to i64
  %arraydecay1952 = getelementptr inbounds [200 x i8], [200 x i8]* %tmp, i64 0, i64 0
  %618 = load i64, i64* %sig_len, align 8
  %call1953 = call i32 @mbedtls_ecdsa_read_signature(%struct.mbedtls_ecp_keypair* noundef %ecdsa1853, i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @buf, i64 0, i64 0), i64 noundef %conv1951, i8* noundef %arraydecay1952, i64 noundef %618) #7
  store i32 %call1953, i32* %ret1939, align 4
  br label %for.inc1954

for.inc1954:                                      ; preds = %for.body1949
  %619 = load i64, i64* %ii1938, align 8
  %inc1955 = add i64 %619, 1
  store i64 %inc1955, i64* %ii1938, align 8
  br label %for.cond1943, !llvm.loop !71

for.end1956:                                      ; preds = %land.end1948
  %620 = load i32, i32* %ret1939, align 4
  %cmp1957 = icmp eq i32 %620, -114
  br i1 %cmp1957, label %if.then1959, label %if.else1961

if.then1959:                                      ; preds = %for.end1956
  %call1960 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.57, i64 0, i64 0)) #7
  store i32 0, i32* %ret1939, align 4
  br label %if.end1973

if.else1961:                                      ; preds = %for.end1956
  %621 = load i32, i32* %ret1939, align 4
  %cmp1962 = icmp ne i32 %621, 0
  br i1 %cmp1962, label %if.then1964, label %if.else1968

if.then1964:                                      ; preds = %if.else1961
  %622 = load i32, i32* %ret1939, align 4
  %arraydecay1965 = getelementptr inbounds [200 x i8], [200 x i8]* %tmp, i64 0, i64 0
  call void @mbedtls_strerror(i32 noundef %622, i8* noundef %arraydecay1965, i64 noundef 200) #7
  %arraydecay1966 = getelementptr inbounds [200 x i8], [200 x i8]* %tmp, i64 0, i64 0
  %call1967 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i64 0, i64 0), i8* noundef %arraydecay1966) #7
  br label %if.end1972

if.else1968:                                      ; preds = %if.else1961
  %623 = load i64, i64* %ii1938, align 8
  %div1969 = udiv i64 %623, 3
  %call1970 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.65, i64 0, i64 0), i64 noundef %div1969) #7
  %call1971 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i64 0, i64 0)) #7
  br label %if.end1972

if.end1972:                                       ; preds = %if.else1968, %if.then1964
  br label %if.end1973

if.end1973:                                       ; preds = %if.end1972, %if.then1959
  br label %do.end1974

do.end1974:                                       ; preds = %if.end1973
  call void @mbedtls_ecdsa_free(%struct.mbedtls_ecp_keypair* noundef %ecdsa1853) #7
  br label %for.inc1975

for.inc1975:                                      ; preds = %do.end1974, %if.then1919
  %624 = load %struct.mbedtls_ecp_curve_info*, %struct.mbedtls_ecp_curve_info** %curve_info, align 8
  %incdec.ptr1976 = getelementptr inbounds %struct.mbedtls_ecp_curve_info, %struct.mbedtls_ecp_curve_info* %624, i32 1
  store %struct.mbedtls_ecp_curve_info* %incdec.ptr1976, %struct.mbedtls_ecp_curve_info** %curve_info, align 8
  br label %for.cond1911, !llvm.loop !72

for.end1977:                                      ; preds = %for.cond1911
  br label %if.end1978

if.end1978:                                       ; preds = %for.end1977, %if.end1849
  %ecdh1979 = getelementptr inbounds %struct.todo_list, %struct.todo_list* %todo, i32 0, i32 23
  %625 = load i8, i8* %ecdh1979, align 1
  %tobool1980 = icmp ne i8 %625, 0
  br i1 %tobool1980, label %if.then1981, label %if.end2125

if.then1981:                                      ; preds = %if.end1978
  %626 = load %struct.mbedtls_ecp_curve_info*, %struct.mbedtls_ecp_curve_info** %curve_list, align 8
  store %struct.mbedtls_ecp_curve_info* %626, %struct.mbedtls_ecp_curve_info** %curve_info1982, align 8
  br label %for.cond1984

for.cond1984:                                     ; preds = %for.inc2122, %if.then1981
  %627 = load %struct.mbedtls_ecp_curve_info*, %struct.mbedtls_ecp_curve_info** %curve_info1982, align 8
  %grp_id1985 = getelementptr inbounds %struct.mbedtls_ecp_curve_info, %struct.mbedtls_ecp_curve_info* %627, i32 0, i32 0
  %628 = load i32, i32* %grp_id1985, align 8
  %cmp1986 = icmp ne i32 %628, 0
  br i1 %cmp1986, label %for.body1988, label %for.end2124

for.body1988:                                     ; preds = %for.cond1984
  %629 = load %struct.mbedtls_ecp_curve_info*, %struct.mbedtls_ecp_curve_info** %curve_info1982, align 8
  %grp_id1989 = getelementptr inbounds %struct.mbedtls_ecp_curve_info, %struct.mbedtls_ecp_curve_info* %629, i32 0, i32 0
  %630 = load i32, i32* %grp_id1989, align 8
  %call1990 = call i32 @mbedtls_ecdh_can_do(i32 noundef %630) #7
  %tobool1991 = icmp ne i32 %call1990, 0
  br i1 %tobool1991, label %if.end1993, label %if.then1992

if.then1992:                                      ; preds = %for.body1988
  br label %for.inc2122

if.end1993:                                       ; preds = %for.body1988
  call void @mbedtls_ecdh_init(%struct.mbedtls_ecdh_context* noundef %ecdh_srv) #7
  call void @mbedtls_ecdh_init(%struct.mbedtls_ecdh_context* noundef %ecdh_cli) #7
  %arraydecay1994 = getelementptr inbounds [25 x i8], [25 x i8]* %title, i64 0, i64 0
  %631 = load %struct.mbedtls_ecp_curve_info*, %struct.mbedtls_ecp_curve_info** %curve_info1982, align 8
  %name1995 = getelementptr inbounds %struct.mbedtls_ecp_curve_info, %struct.mbedtls_ecp_curve_info* %631, i32 0, i32 3
  %632 = load i8*, i8** %name1995, align 8
  %call1996 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %arraydecay1994, i64 noundef 25, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.66, i64 0, i64 0), i8* noundef %632) #8
  br label %do.body1997

do.body1997:                                      ; preds = %if.end1993
  %arraydecay2000 = getelementptr inbounds [25 x i8], [25 x i8]* %title, i64 0, i64 0
  %call2001 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.27, i64 0, i64 0), i8* noundef %arraydecay2000) #7
  %633 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call2002 = call i32 @fflush(%struct._IO_FILE* noundef %633) #7
  call void @mbedtls_set_alarm(i32 noundef 3) #7
  store i32 0, i32* %ret1999, align 4
  store i64 1, i64* %ii1998, align 8
  br label %for.cond2003

for.cond2003:                                     ; preds = %for.inc2101, %do.body1997
  %634 = load volatile i32, i32* @mbedtls_timing_alarmed, align 4
  %tobool2004 = icmp ne i32 %634, 0
  br i1 %tobool2004, label %land.end2008, label %land.rhs2005

land.rhs2005:                                     ; preds = %for.cond2003
  %635 = load i32, i32* %ret1999, align 4
  %tobool2006 = icmp ne i32 %635, 0
  %lnot2007 = xor i1 %tobool2006, true
  br label %land.end2008

land.end2008:                                     ; preds = %land.rhs2005, %for.cond2003
  %636 = phi i1 [ false, %for.cond2003 ], [ %lnot2007, %land.rhs2005 ]
  br i1 %636, label %for.body2009, label %for.end2103

for.body2009:                                     ; preds = %land.end2008
  %arraydecay2010 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf_srv, i64 0, i64 0
  store i8* %arraydecay2010, i8** %p_srv, align 8
  %637 = load %struct.mbedtls_ecp_curve_info*, %struct.mbedtls_ecp_curve_info** %curve_info1982, align 8
  %grp_id2012 = getelementptr inbounds %struct.mbedtls_ecp_curve_info, %struct.mbedtls_ecp_curve_info* %637, i32 0, i32 0
  %638 = load i32, i32* %grp_id2012, align 8
  %call2013 = call i32 @mbedtls_ecdh_setup(%struct.mbedtls_ecdh_context* noundef %ecdh_srv, i32 noundef %638) #7
  store i32 %call2013, i32* %CHECK_AND_CONTINUE_ret2011, align 4
  %639 = load i32, i32* %CHECK_AND_CONTINUE_ret2011, align 4
  %cmp2014 = icmp eq i32 %639, -114
  br i1 %cmp2014, label %if.then2016, label %if.else2018

if.then2016:                                      ; preds = %for.body2009
  %call2017 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.39, i64 0, i64 0)) #7
  br label %for.inc2101

if.else2018:                                      ; preds = %for.body2009
  %640 = load i32, i32* %CHECK_AND_CONTINUE_ret2011, align 4
  %cmp2019 = icmp ne i32 %640, 0
  br i1 %cmp2019, label %if.then2021, label %if.end2022

if.then2021:                                      ; preds = %if.else2018
  call void @exit(i32 noundef 1) #10
  unreachable

if.end2022:                                       ; preds = %if.else2018
  br label %if.end2023

if.end2023:                                       ; preds = %if.end2022
  %arraydecay2025 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf_srv, i64 0, i64 0
  %call2026 = call i32 @mbedtls_ecdh_make_params(%struct.mbedtls_ecdh_context* noundef %ecdh_srv, i64* noundef %olen1983, i8* noundef %arraydecay2025, i64 noundef 1024, i32 (i8*, i8*, i64)* noundef @myrand, i8* noundef null) #7
  store i32 %call2026, i32* %CHECK_AND_CONTINUE_ret2024, align 4
  %641 = load i32, i32* %CHECK_AND_CONTINUE_ret2024, align 4
  %cmp2027 = icmp eq i32 %641, -114
  br i1 %cmp2027, label %if.then2029, label %if.else2031

if.then2029:                                      ; preds = %if.end2023
  %call2030 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.39, i64 0, i64 0)) #7
  br label %for.inc2101

if.else2031:                                      ; preds = %if.end2023
  %642 = load i32, i32* %CHECK_AND_CONTINUE_ret2024, align 4
  %cmp2032 = icmp ne i32 %642, 0
  br i1 %cmp2032, label %if.then2034, label %if.end2035

if.then2034:                                      ; preds = %if.else2031
  call void @exit(i32 noundef 1) #10
  unreachable

if.end2035:                                       ; preds = %if.else2031
  br label %if.end2036

if.end2036:                                       ; preds = %if.end2035
  %643 = load i8*, i8** %p_srv, align 8
  %644 = load i64, i64* %olen1983, align 8
  %add.ptr = getelementptr inbounds i8, i8* %643, i64 %644
  %call2038 = call i32 @mbedtls_ecdh_read_params(%struct.mbedtls_ecdh_context* noundef %ecdh_cli, i8** noundef %p_srv, i8* noundef %add.ptr) #7
  store i32 %call2038, i32* %CHECK_AND_CONTINUE_ret2037, align 4
  %645 = load i32, i32* %CHECK_AND_CONTINUE_ret2037, align 4
  %cmp2039 = icmp eq i32 %645, -114
  br i1 %cmp2039, label %if.then2041, label %if.else2043

if.then2041:                                      ; preds = %if.end2036
  %call2042 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.39, i64 0, i64 0)) #7
  br label %for.inc2101

if.else2043:                                      ; preds = %if.end2036
  %646 = load i32, i32* %CHECK_AND_CONTINUE_ret2037, align 4
  %cmp2044 = icmp ne i32 %646, 0
  br i1 %cmp2044, label %if.then2046, label %if.end2047

if.then2046:                                      ; preds = %if.else2043
  call void @exit(i32 noundef 1) #10
  unreachable

if.end2047:                                       ; preds = %if.else2043
  br label %if.end2048

if.end2048:                                       ; preds = %if.end2047
  %arraydecay2050 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf_cli, i64 0, i64 0
  %call2051 = call i32 @mbedtls_ecdh_make_public(%struct.mbedtls_ecdh_context* noundef %ecdh_cli, i64* noundef %olen1983, i8* noundef %arraydecay2050, i64 noundef 1024, i32 (i8*, i8*, i64)* noundef @myrand, i8* noundef null) #7
  store i32 %call2051, i32* %CHECK_AND_CONTINUE_ret2049, align 4
  %647 = load i32, i32* %CHECK_AND_CONTINUE_ret2049, align 4
  %cmp2052 = icmp eq i32 %647, -114
  br i1 %cmp2052, label %if.then2054, label %if.else2056

if.then2054:                                      ; preds = %if.end2048
  %call2055 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.39, i64 0, i64 0)) #7
  br label %for.inc2101

if.else2056:                                      ; preds = %if.end2048
  %648 = load i32, i32* %CHECK_AND_CONTINUE_ret2049, align 4
  %cmp2057 = icmp ne i32 %648, 0
  br i1 %cmp2057, label %if.then2059, label %if.end2060

if.then2059:                                      ; preds = %if.else2056
  call void @exit(i32 noundef 1) #10
  unreachable

if.end2060:                                       ; preds = %if.else2056
  br label %if.end2061

if.end2061:                                       ; preds = %if.end2060
  %arraydecay2063 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf_cli, i64 0, i64 0
  %649 = load i64, i64* %olen1983, align 8
  %call2064 = call i32 @mbedtls_ecdh_read_public(%struct.mbedtls_ecdh_context* noundef %ecdh_srv, i8* noundef %arraydecay2063, i64 noundef %649) #7
  store i32 %call2064, i32* %CHECK_AND_CONTINUE_ret2062, align 4
  %650 = load i32, i32* %CHECK_AND_CONTINUE_ret2062, align 4
  %cmp2065 = icmp eq i32 %650, -114
  br i1 %cmp2065, label %if.then2067, label %if.else2069

if.then2067:                                      ; preds = %if.end2061
  %call2068 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.39, i64 0, i64 0)) #7
  br label %for.inc2101

if.else2069:                                      ; preds = %if.end2061
  %651 = load i32, i32* %CHECK_AND_CONTINUE_ret2062, align 4
  %cmp2070 = icmp ne i32 %651, 0
  br i1 %cmp2070, label %if.then2072, label %if.end2073

if.then2072:                                      ; preds = %if.else2069
  call void @exit(i32 noundef 1) #10
  unreachable

if.end2073:                                       ; preds = %if.else2069
  br label %if.end2074

if.end2074:                                       ; preds = %if.end2073
  %arraydecay2076 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf_srv, i64 0, i64 0
  %call2077 = call i32 @mbedtls_ecdh_calc_secret(%struct.mbedtls_ecdh_context* noundef %ecdh_srv, i64* noundef %olen1983, i8* noundef %arraydecay2076, i64 noundef 1024, i32 (i8*, i8*, i64)* noundef @myrand, i8* noundef null) #7
  store i32 %call2077, i32* %CHECK_AND_CONTINUE_ret2075, align 4
  %652 = load i32, i32* %CHECK_AND_CONTINUE_ret2075, align 4
  %cmp2078 = icmp eq i32 %652, -114
  br i1 %cmp2078, label %if.then2080, label %if.else2082

if.then2080:                                      ; preds = %if.end2074
  %call2081 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.39, i64 0, i64 0)) #7
  br label %for.inc2101

if.else2082:                                      ; preds = %if.end2074
  %653 = load i32, i32* %CHECK_AND_CONTINUE_ret2075, align 4
  %cmp2083 = icmp ne i32 %653, 0
  br i1 %cmp2083, label %if.then2085, label %if.end2086

if.then2085:                                      ; preds = %if.else2082
  call void @exit(i32 noundef 1) #10
  unreachable

if.end2086:                                       ; preds = %if.else2082
  br label %if.end2087

if.end2087:                                       ; preds = %if.end2086
  %arraydecay2089 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf_cli, i64 0, i64 0
  %call2090 = call i32 @mbedtls_ecdh_calc_secret(%struct.mbedtls_ecdh_context* noundef %ecdh_cli, i64* noundef %olen1983, i8* noundef %arraydecay2089, i64 noundef 1024, i32 (i8*, i8*, i64)* noundef @myrand, i8* noundef null) #7
  store i32 %call2090, i32* %CHECK_AND_CONTINUE_ret2088, align 4
  %654 = load i32, i32* %CHECK_AND_CONTINUE_ret2088, align 4
  %cmp2091 = icmp eq i32 %654, -114
  br i1 %cmp2091, label %if.then2093, label %if.else2095

if.then2093:                                      ; preds = %if.end2087
  %call2094 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.39, i64 0, i64 0)) #7
  br label %for.inc2101

if.else2095:                                      ; preds = %if.end2087
  %655 = load i32, i32* %CHECK_AND_CONTINUE_ret2088, align 4
  %cmp2096 = icmp ne i32 %655, 0
  br i1 %cmp2096, label %if.then2098, label %if.end2099

if.then2098:                                      ; preds = %if.else2095
  call void @exit(i32 noundef 1) #10
  unreachable

if.end2099:                                       ; preds = %if.else2095
  br label %if.end2100

if.end2100:                                       ; preds = %if.end2099
  call void @mbedtls_ecdh_free(%struct.mbedtls_ecdh_context* noundef %ecdh_cli) #7
  call void @mbedtls_ecdh_free(%struct.mbedtls_ecdh_context* noundef %ecdh_srv) #7
  br label %for.inc2101

for.inc2101:                                      ; preds = %if.end2100, %if.then2093, %if.then2080, %if.then2067, %if.then2054, %if.then2041, %if.then2029, %if.then2016
  %656 = load i64, i64* %ii1998, align 8
  %inc2102 = add i64 %656, 1
  store i64 %inc2102, i64* %ii1998, align 8
  br label %for.cond2003, !llvm.loop !73

for.end2103:                                      ; preds = %land.end2008
  %657 = load i32, i32* %ret1999, align 4
  %cmp2104 = icmp eq i32 %657, -114
  br i1 %cmp2104, label %if.then2106, label %if.else2108

if.then2106:                                      ; preds = %for.end2103
  %call2107 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.57, i64 0, i64 0)) #7
  store i32 0, i32* %ret1999, align 4
  br label %if.end2120

if.else2108:                                      ; preds = %for.end2103
  %658 = load i32, i32* %ret1999, align 4
  %cmp2109 = icmp ne i32 %658, 0
  br i1 %cmp2109, label %if.then2111, label %if.else2115

if.then2111:                                      ; preds = %if.else2108
  %659 = load i32, i32* %ret1999, align 4
  %arraydecay2112 = getelementptr inbounds [200 x i8], [200 x i8]* %tmp, i64 0, i64 0
  call void @mbedtls_strerror(i32 noundef %659, i8* noundef %arraydecay2112, i64 noundef 200) #7
  %arraydecay2113 = getelementptr inbounds [200 x i8], [200 x i8]* %tmp, i64 0, i64 0
  %call2114 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i64 0, i64 0), i8* noundef %arraydecay2113) #7
  br label %if.end2119

if.else2115:                                      ; preds = %if.else2108
  %660 = load i64, i64* %ii1998, align 8
  %div2116 = udiv i64 %660, 3
  %call2117 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.67, i64 0, i64 0), i64 noundef %div2116) #7
  %call2118 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i64 0, i64 0)) #7
  br label %if.end2119

if.end2119:                                       ; preds = %if.else2115, %if.then2111
  br label %if.end2120

if.end2120:                                       ; preds = %if.end2119, %if.then2106
  br label %do.end2121

do.end2121:                                       ; preds = %if.end2120
  br label %for.inc2122

for.inc2122:                                      ; preds = %do.end2121, %if.then1992
  %661 = load %struct.mbedtls_ecp_curve_info*, %struct.mbedtls_ecp_curve_info** %curve_info1982, align 8
  %incdec.ptr2123 = getelementptr inbounds %struct.mbedtls_ecp_curve_info, %struct.mbedtls_ecp_curve_info* %661, i32 1
  store %struct.mbedtls_ecp_curve_info* %incdec.ptr2123, %struct.mbedtls_ecp_curve_info** %curve_info1982, align 8
  br label %for.cond1984, !llvm.loop !74

for.end2124:                                      ; preds = %for.cond1984
  br label %if.end2125

if.end2125:                                       ; preds = %for.end2124, %if.end1978
  %call2126 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i64 0, i64 0)) #7
  call void @exit(i32 noundef 0) #10
  unreachable
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.mbedtls_ecp_curve_info* @mbedtls_ecp_curve_list() #2

; Function Attrs: nounwind
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) #3

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_ecp_curve(i8* noundef %string, %struct.mbedtls_ecp_curve_info* noundef %curve) #0 {
entry:
  %retval = alloca i32, align 4
  %string.addr = alloca i8*, align 8
  %curve.addr = alloca %struct.mbedtls_ecp_curve_info*, align 8
  %found = alloca %struct.mbedtls_ecp_curve_info*, align 8
  store i8* %string, i8** %string.addr, align 8
  store %struct.mbedtls_ecp_curve_info* %curve, %struct.mbedtls_ecp_curve_info** %curve.addr, align 8
  %0 = load i8*, i8** %string.addr, align 8
  %call = call %struct.mbedtls_ecp_curve_info* @mbedtls_ecp_curve_info_from_name(i8* noundef %0) #7
  store %struct.mbedtls_ecp_curve_info* %call, %struct.mbedtls_ecp_curve_info** %found, align 8
  %1 = load %struct.mbedtls_ecp_curve_info*, %struct.mbedtls_ecp_curve_info** %found, align 8
  %cmp = icmp ne %struct.mbedtls_ecp_curve_info* %1, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.mbedtls_ecp_curve_info*, %struct.mbedtls_ecp_curve_info** %curve.addr, align 8
  %3 = load %struct.mbedtls_ecp_curve_info*, %struct.mbedtls_ecp_curve_info** %found, align 8
  %4 = bitcast %struct.mbedtls_ecp_curve_info* %2 to i8*
  %5 = bitcast %struct.mbedtls_ecp_curve_info* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %4, i8* align 8 %5, i64 16, i1 false)
  store i32 1, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.else, %if.then
  %6 = load i32, i32* %retval, align 4
  ret i32 %6
}

declare dso_local i32 @printf(i8* noundef, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mbedtls_timing_hardclock() #0 {
entry:
  %lo = alloca i64, align 8
  %hi = alloca i64, align 8
  %0 = call { i64, i64 } asm sideeffect "rdtsc", "={ax},={dx},~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !75
  %asmresult = extractvalue { i64, i64 } %0, 0
  %asmresult1 = extractvalue { i64, i64 } %0, 1
  store i64 %asmresult, i64* %lo, align 8
  store i64 %asmresult1, i64* %hi, align 8
  %1 = load i64, i64* %lo, align 8
  %2 = load i64, i64* %hi, align 8
  %shl = shl i64 %2, 32
  %or = or i64 %1, %shl
  ret i64 %or
}

declare dso_local i32 @fflush(%struct._IO_FILE* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mbedtls_set_alarm(i32 noundef %seconds) #0 {
entry:
  %seconds.addr = alloca i32, align 4
  store i32 %seconds, i32* %seconds.addr, align 4
  store volatile i32 0, i32* @mbedtls_timing_alarmed, align 4
  %call = call void (i32)* @signal(i32 noundef 14, void (i32)* noundef @sighandler) #8
  %0 = load i32, i32* %seconds.addr, align 4
  %call1 = call i32 @alarm(i32 noundef %0) #8
  %1 = load i32, i32* %seconds.addr, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store volatile i32 1, i32* @mbedtls_timing_alarmed, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare dso_local i32 @mbedtls_md5(i8* noundef, i64 noundef, i8* noundef) #2

declare dso_local void @mbedtls_strerror(i32 noundef, i8* noundef, i64 noundef) #2

declare dso_local i32 @mbedtls_ripemd160(i8* noundef, i64 noundef, i8* noundef) #2

declare dso_local i32 @mbedtls_sha1(i8* noundef, i64 noundef, i8* noundef) #2

declare dso_local i32 @mbedtls_sha256(i8* noundef, i64 noundef, i8* noundef, i32 noundef) #2

declare dso_local i32 @mbedtls_sha512(i8* noundef, i64 noundef, i8* noundef, i32 noundef) #2

declare dso_local void @mbedtls_des3_init(%struct.mbedtls_des3_context* noundef) #2

declare dso_local i32 @mbedtls_des3_set3key_enc(%struct.mbedtls_des3_context* noundef, i8* noundef) #2

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #5

declare dso_local i32 @mbedtls_des3_crypt_cbc(%struct.mbedtls_des3_context* noundef, i32 noundef, i64 noundef, i8* noundef, i8* noundef, i8* noundef) #2

declare dso_local void @mbedtls_des3_free(%struct.mbedtls_des3_context* noundef) #2

declare dso_local void @mbedtls_des_init(%struct.mbedtls_des_context* noundef) #2

declare dso_local i32 @mbedtls_des_setkey_enc(%struct.mbedtls_des_context* noundef, i8* noundef) #2

declare dso_local i32 @mbedtls_des_crypt_cbc(%struct.mbedtls_des_context* noundef, i32 noundef, i64 noundef, i8* noundef, i8* noundef, i8* noundef) #2

declare dso_local void @mbedtls_des_free(%struct.mbedtls_des_context* noundef) #2

declare dso_local %struct.mbedtls_cipher_info_t* @mbedtls_cipher_info_from_type(i32 noundef) #2

declare dso_local i32 @mbedtls_cipher_cmac(%struct.mbedtls_cipher_info_t* noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef, i8* noundef) #2

declare dso_local void @mbedtls_aes_init(%struct.mbedtls_aes_context* noundef) #2

; Function Attrs: nounwind
declare dso_local i32 @snprintf(i8* noundef, i64 noundef, i8* noundef, ...) #3

declare dso_local i32 @mbedtls_aes_setkey_enc(%struct.mbedtls_aes_context* noundef, i8* noundef, i32 noundef) #2

declare dso_local i32 @mbedtls_aes_crypt_cbc(%struct.mbedtls_aes_context* noundef, i32 noundef, i64 noundef, i8* noundef, i8* noundef, i8* noundef) #2

declare dso_local void @mbedtls_aes_free(%struct.mbedtls_aes_context* noundef) #2

declare dso_local void @mbedtls_aes_xts_init(%struct.mbedtls_aes_xts_context* noundef) #2

declare dso_local i32 @mbedtls_aes_xts_setkey_enc(%struct.mbedtls_aes_xts_context* noundef, i8* noundef, i32 noundef) #2

declare dso_local i32 @mbedtls_aes_crypt_xts(%struct.mbedtls_aes_xts_context* noundef, i32 noundef, i64 noundef, i8* noundef, i8* noundef, i8* noundef) #2

declare dso_local void @mbedtls_aes_xts_free(%struct.mbedtls_aes_xts_context* noundef) #2

declare dso_local void @mbedtls_gcm_init(%struct.mbedtls_gcm_context* noundef) #2

declare dso_local i32 @mbedtls_gcm_setkey(%struct.mbedtls_gcm_context* noundef, i32 noundef, i8* noundef, i32 noundef) #2

declare dso_local i32 @mbedtls_gcm_crypt_and_tag(%struct.mbedtls_gcm_context* noundef, i32 noundef, i64 noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef, i8* noundef, i8* noundef, i64 noundef, i8* noundef) #2

declare dso_local void @mbedtls_gcm_free(%struct.mbedtls_gcm_context* noundef) #2

declare dso_local void @mbedtls_ccm_init(%struct.mbedtls_ccm_context* noundef) #2

declare dso_local i32 @mbedtls_ccm_setkey(%struct.mbedtls_ccm_context* noundef, i32 noundef, i8* noundef, i32 noundef) #2

declare dso_local i32 @mbedtls_ccm_encrypt_and_tag(%struct.mbedtls_ccm_context* noundef, i64 noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef, i8* noundef, i8* noundef, i8* noundef, i64 noundef) #2

declare dso_local void @mbedtls_ccm_free(%struct.mbedtls_ccm_context* noundef) #2

declare dso_local void @mbedtls_chachapoly_init(%struct.mbedtls_chachapoly_context* noundef) #2

declare dso_local i32 @mbedtls_chachapoly_setkey(%struct.mbedtls_chachapoly_context* noundef, i8* noundef) #2

declare dso_local i32 @mbedtls_chachapoly_encrypt_and_tag(%struct.mbedtls_chachapoly_context* noundef, i64 noundef, i8* noundef, i8* noundef, i64 noundef, i8* noundef, i8* noundef, i8* noundef) #2

declare dso_local void @mbedtls_chachapoly_free(%struct.mbedtls_chachapoly_context* noundef) #2

declare dso_local i32 @mbedtls_aes_cmac_prf_128(i8* noundef, i64 noundef, i8* noundef, i64 noundef, i8* noundef) #2

declare dso_local void @mbedtls_aria_init(%struct.mbedtls_aria_context* noundef) #2

declare dso_local i32 @mbedtls_aria_setkey_enc(%struct.mbedtls_aria_context* noundef, i8* noundef, i32 noundef) #2

declare dso_local i32 @mbedtls_aria_crypt_cbc(%struct.mbedtls_aria_context* noundef, i32 noundef, i64 noundef, i8* noundef, i8* noundef, i8* noundef) #2

declare dso_local void @mbedtls_aria_free(%struct.mbedtls_aria_context* noundef) #2

declare dso_local void @mbedtls_camellia_init(%struct.mbedtls_camellia_context* noundef) #2

declare dso_local i32 @mbedtls_camellia_setkey_enc(%struct.mbedtls_camellia_context* noundef, i8* noundef, i32 noundef) #2

declare dso_local i32 @mbedtls_camellia_crypt_cbc(%struct.mbedtls_camellia_context* noundef, i32 noundef, i64 noundef, i8* noundef, i8* noundef, i8* noundef) #2

declare dso_local void @mbedtls_camellia_free(%struct.mbedtls_camellia_context* noundef) #2

declare dso_local i32 @mbedtls_chacha20_crypt(i8* noundef, i8* noundef, i32 noundef, i64 noundef, i8* noundef, i8* noundef) #2

declare dso_local i32 @mbedtls_poly1305_mac(i8* noundef, i8* noundef, i64 noundef, i8* noundef) #2

declare dso_local void @mbedtls_ctr_drbg_init(%struct.mbedtls_ctr_drbg_context* noundef) #2

declare dso_local i32 @mbedtls_ctr_drbg_seed(%struct.mbedtls_ctr_drbg_context* noundef, i32 (i8*, i8*, i64)* noundef, i8* noundef, i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @myrand(i8* noundef %rng_state, i8* noundef %output, i64 noundef %len) #0 {
entry:
  %rng_state.addr = alloca i8*, align 8
  %output.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %use_len = alloca i64, align 8
  %rnd = alloca i32, align 4
  store i8* %rng_state, i8** %rng_state.addr, align 8
  store i8* %output, i8** %output.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  %0 = load i8*, i8** %rng_state.addr, align 8
  %cmp = icmp ne i8* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* null, i8** %rng_state.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end4, %if.end
  %1 = load i64, i64* %len.addr, align 8
  %cmp1 = icmp ugt i64 %1, 0
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i64, i64* %len.addr, align 8
  store i64 %2, i64* %use_len, align 8
  %3 = load i64, i64* %use_len, align 8
  %cmp2 = icmp ugt i64 %3, 4
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %while.body
  store i64 4, i64* %use_len, align 8
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %while.body
  %call = call i32 @rand() #8
  store i32 %call, i32* %rnd, align 4
  %4 = load i8*, i8** %output.addr, align 8
  %5 = bitcast i32* %rnd to i8*
  %6 = load i64, i64* %use_len, align 8
  %call5 = call i8* @memcpy(i8* noundef %4, i8* noundef %5, i64 noundef %6) #8
  %7 = load i64, i64* %use_len, align 8
  %8 = load i8*, i8** %output.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %8, i64 %7
  store i8* %add.ptr, i8** %output.addr, align 8
  %9 = load i64, i64* %use_len, align 8
  %10 = load i64, i64* %len.addr, align 8
  %sub = sub i64 %10, %9
  store i64 %sub, i64* %len.addr, align 8
  br label %while.cond, !llvm.loop !76

while.end:                                        ; preds = %while.cond
  ret i32 0
}

declare dso_local i32 @mbedtls_ctr_drbg_random(i8* noundef, i8* noundef, i64 noundef) #2

declare dso_local void @mbedtls_ctr_drbg_free(%struct.mbedtls_ctr_drbg_context* noundef) #2

declare dso_local void @mbedtls_ctr_drbg_set_prediction_resistance(%struct.mbedtls_ctr_drbg_context* noundef, i32 noundef) #2

declare dso_local void @mbedtls_hmac_drbg_init(%struct.mbedtls_hmac_drbg_context* noundef) #2

declare dso_local %struct.mbedtls_md_info_t* @mbedtls_md_info_from_type(i32 noundef) #2

declare dso_local i32 @mbedtls_hmac_drbg_seed(%struct.mbedtls_hmac_drbg_context* noundef, %struct.mbedtls_md_info_t* noundef, i32 (i8*, i8*, i64)* noundef, i8* noundef, i8* noundef, i64 noundef) #2

declare dso_local i32 @mbedtls_hmac_drbg_random(i8* noundef, i8* noundef, i64 noundef) #2

declare dso_local void @mbedtls_hmac_drbg_set_prediction_resistance(%struct.mbedtls_hmac_drbg_context* noundef, i32 noundef) #2

declare dso_local void @mbedtls_hmac_drbg_free(%struct.mbedtls_hmac_drbg_context* noundef) #2

declare dso_local void @mbedtls_rsa_init(%struct.mbedtls_rsa_context* noundef) #2

declare dso_local i32 @mbedtls_rsa_gen_key(%struct.mbedtls_rsa_context* noundef, i32 (i8*, i8*, i64)* noundef, i8* noundef, i32 noundef, i32 noundef) #2

declare dso_local i32 @mbedtls_rsa_public(%struct.mbedtls_rsa_context* noundef, i8* noundef, i8* noundef) #2

declare dso_local i32 @mbedtls_rsa_private(%struct.mbedtls_rsa_context* noundef, i32 (i8*, i8*, i64)* noundef, i8* noundef, i8* noundef, i8* noundef) #2

declare dso_local void @mbedtls_rsa_free(%struct.mbedtls_rsa_context* noundef) #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #6

declare dso_local void @mbedtls_dhm_init(%struct.mbedtls_dhm_context* noundef) #2

declare dso_local i32 @mbedtls_mpi_read_binary(%struct.mbedtls_mpi* noundef, i8* noundef, i64 noundef) #2

declare dso_local i64 @mbedtls_mpi_size(%struct.mbedtls_mpi* noundef) #2

declare dso_local i32 @mbedtls_dhm_make_public(%struct.mbedtls_dhm_context* noundef, i32 noundef, i8* noundef, i64 noundef, i32 (i8*, i8*, i64)* noundef, i8* noundef) #2

declare dso_local i32 @mbedtls_mpi_copy(%struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef) #2

declare dso_local i32 @mbedtls_dhm_calc_secret(%struct.mbedtls_dhm_context* noundef, i8* noundef, i64 noundef, i64* noundef, i32 (i8*, i8*, i64)* noundef, i8* noundef) #2

declare dso_local void @mbedtls_dhm_free(%struct.mbedtls_dhm_context* noundef) #2

declare dso_local i32 @mbedtls_ecdsa_can_do(i32 noundef) #2

declare dso_local void @mbedtls_ecdsa_init(%struct.mbedtls_ecp_keypair* noundef) #2

declare dso_local i32 @mbedtls_ecdsa_genkey(%struct.mbedtls_ecp_keypair* noundef, i32 noundef, i32 (i8*, i8*, i64)* noundef, i8* noundef) #2

declare dso_local i32 @mbedtls_ecdsa_write_signature(%struct.mbedtls_ecp_keypair* noundef, i32 noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef, i64* noundef, i32 (i8*, i8*, i64)* noundef, i8* noundef) #2

declare dso_local void @mbedtls_ecdsa_free(%struct.mbedtls_ecp_keypair* noundef) #2

declare dso_local i32 @mbedtls_ecdsa_read_signature(%struct.mbedtls_ecp_keypair* noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef) #2

declare dso_local i32 @mbedtls_ecdh_can_do(i32 noundef) #2

declare dso_local void @mbedtls_ecdh_init(%struct.mbedtls_ecdh_context* noundef) #2

declare dso_local i32 @mbedtls_ecdh_setup(%struct.mbedtls_ecdh_context* noundef, i32 noundef) #2

declare dso_local i32 @mbedtls_ecdh_make_params(%struct.mbedtls_ecdh_context* noundef, i64* noundef, i8* noundef, i64 noundef, i32 (i8*, i8*, i64)* noundef, i8* noundef) #2

declare dso_local i32 @mbedtls_ecdh_read_params(%struct.mbedtls_ecdh_context* noundef, i8** noundef, i8* noundef) #2

declare dso_local i32 @mbedtls_ecdh_make_public(%struct.mbedtls_ecdh_context* noundef, i64* noundef, i8* noundef, i64 noundef, i32 (i8*, i8*, i64)* noundef, i8* noundef) #2

declare dso_local i32 @mbedtls_ecdh_read_public(%struct.mbedtls_ecdh_context* noundef, i8* noundef, i64 noundef) #2

declare dso_local i32 @mbedtls_ecdh_calc_secret(%struct.mbedtls_ecdh_context* noundef, i64* noundef, i8* noundef, i64 noundef, i32 (i8*, i8*, i64)* noundef, i8* noundef) #2

declare dso_local void @mbedtls_ecdh_free(%struct.mbedtls_ecdh_context* noundef) #2

declare dso_local %struct.mbedtls_ecp_curve_info* @mbedtls_ecp_curve_info_from_name(i8* noundef) #2

; Function Attrs: nounwind
declare dso_local void (i32)* @signal(i32 noundef, void (i32)* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sighandler(i32 noundef %signum) #0 {
entry:
  %signum.addr = alloca i32, align 4
  store i32 %signum, i32* %signum.addr, align 4
  store volatile i32 1, i32* @mbedtls_timing_alarmed, align 4
  %0 = load i32, i32* %signum.addr, align 4
  %call = call void (i32)* @signal(i32 noundef %0, void (i32)* noundef @sighandler) #8
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @alarm(i32 noundef) #3

; Function Attrs: nounwind
declare dso_local i32 @rand() #3

; Function Attrs: nounwind
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn writeonly }
attributes #2 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind readonly willreturn "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { nobuiltin "no-builtins" }
attributes #8 = { nobuiltin nounwind "no-builtins" }
attributes #9 = { nobuiltin nounwind readonly willreturn "no-builtins" }
attributes #10 = { nobuiltin noreturn nounwind "no-builtins" }
attributes #11 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
!8 = distinct !{!8, !5}
!9 = distinct !{!9, !5}
!10 = distinct !{!10, !5}
!11 = distinct !{!11, !5}
!12 = distinct !{!12, !5}
!13 = distinct !{!13, !5}
!14 = distinct !{!14, !5}
!15 = distinct !{!15, !5}
!16 = distinct !{!16, !5}
!17 = distinct !{!17, !5}
!18 = distinct !{!18, !5}
!19 = distinct !{!19, !5}
!20 = distinct !{!20, !5}
!21 = distinct !{!21, !5}
!22 = distinct !{!22, !5}
!23 = distinct !{!23, !5}
!24 = distinct !{!24, !5}
!25 = distinct !{!25, !5}
!26 = distinct !{!26, !5}
!27 = distinct !{!27, !5}
!28 = distinct !{!28, !5}
!29 = distinct !{!29, !5}
!30 = distinct !{!30, !5}
!31 = distinct !{!31, !5}
!32 = distinct !{!32, !5}
!33 = distinct !{!33, !5}
!34 = distinct !{!34, !5}
!35 = distinct !{!35, !5}
!36 = distinct !{!36, !5}
!37 = distinct !{!37, !5}
!38 = distinct !{!38, !5}
!39 = distinct !{!39, !5}
!40 = distinct !{!40, !5}
!41 = distinct !{!41, !5}
!42 = distinct !{!42, !5}
!43 = distinct !{!43, !5}
!44 = distinct !{!44, !5}
!45 = distinct !{!45, !5}
!46 = distinct !{!46, !5}
!47 = distinct !{!47, !5}
!48 = distinct !{!48, !5}
!49 = distinct !{!49, !5}
!50 = distinct !{!50, !5}
!51 = distinct !{!51, !5}
!52 = distinct !{!52, !5}
!53 = distinct !{!53, !5}
!54 = distinct !{!54, !5}
!55 = distinct !{!55, !5}
!56 = distinct !{!56, !5}
!57 = distinct !{!57, !5}
!58 = distinct !{!58, !5}
!59 = distinct !{!59, !5}
!60 = distinct !{!60, !5}
!61 = distinct !{!61, !5}
!62 = distinct !{!62, !5}
!63 = distinct !{!63, !5}
!64 = distinct !{!64, !5}
!65 = distinct !{!65, !5}
!66 = distinct !{!66, !5}
!67 = distinct !{!67, !5}
!68 = distinct !{!68, !5}
!69 = distinct !{!69, !5}
!70 = distinct !{!70, !5}
!71 = distinct !{!71, !5}
!72 = distinct !{!72, !5}
!73 = distinct !{!73, !5}
!74 = distinct !{!74, !5}
!75 = !{i64 11516}
!76 = distinct !{!76, !5}
