; ModuleID = 'ssl_debug_helpers_generated.c'
source_filename = "ssl_debug_helpers_generated.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"secp192k1\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"secp192r1\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"secp224k1\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"secp224r1\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"secp256k1\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"secp256r1\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"secp384r1\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"secp521r1\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"bp256r1\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"bp384r1\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"bp512r1\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"x25519\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"x448\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"ffdhe2048\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"ffdhe3072\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"ffdhe4096\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"ffdhe6144\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"ffdhe8192\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"UNKOWN\00", align 1
@.str.19 = private unnamed_addr constant [17 x i8] c"rsa_pkcs1_sha256\00", align 1
@.str.20 = private unnamed_addr constant [17 x i8] c"rsa_pkcs1_sha384\00", align 1
@.str.21 = private unnamed_addr constant [17 x i8] c"rsa_pkcs1_sha512\00", align 1
@.str.22 = private unnamed_addr constant [23 x i8] c"ecdsa_secp256r1_sha256\00", align 1
@.str.23 = private unnamed_addr constant [23 x i8] c"ecdsa_secp384r1_sha384\00", align 1
@.str.24 = private unnamed_addr constant [23 x i8] c"ecdsa_secp521r1_sha512\00", align 1
@.str.25 = private unnamed_addr constant [20 x i8] c"rsa_pss_rsae_sha256\00", align 1
@.str.26 = private unnamed_addr constant [20 x i8] c"rsa_pss_rsae_sha384\00", align 1
@.str.27 = private unnamed_addr constant [20 x i8] c"rsa_pss_rsae_sha512\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"ed25519\00", align 1
@.str.29 = private unnamed_addr constant [6 x i8] c"ed448\00", align 1
@.str.30 = private unnamed_addr constant [19 x i8] c"rsa_pss_pss_sha256\00", align 1
@.str.31 = private unnamed_addr constant [19 x i8] c"rsa_pss_pss_sha384\00", align 1
@.str.32 = private unnamed_addr constant [19 x i8] c"rsa_pss_pss_sha512\00", align 1
@.str.33 = private unnamed_addr constant [15 x i8] c"rsa_pkcs1_sha1\00", align 1
@.str.34 = private unnamed_addr constant [11 x i8] c"ecdsa_sha1\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.36 = private unnamed_addr constant [8 x i8] c"UNKNOWN\00", align 1
@.str.37 = private unnamed_addr constant [26 x i8] c"MBEDTLS_SSL_HELLO_REQUEST\00", align 1
@.str.38 = private unnamed_addr constant [25 x i8] c"MBEDTLS_SSL_CLIENT_HELLO\00", align 1
@.str.39 = private unnamed_addr constant [25 x i8] c"MBEDTLS_SSL_SERVER_HELLO\00", align 1
@.str.40 = private unnamed_addr constant [31 x i8] c"MBEDTLS_SSL_SERVER_CERTIFICATE\00", align 1
@.str.41 = private unnamed_addr constant [32 x i8] c"MBEDTLS_SSL_SERVER_KEY_EXCHANGE\00", align 1
@.str.42 = private unnamed_addr constant [32 x i8] c"MBEDTLS_SSL_CERTIFICATE_REQUEST\00", align 1
@.str.43 = private unnamed_addr constant [30 x i8] c"MBEDTLS_SSL_SERVER_HELLO_DONE\00", align 1
@.str.44 = private unnamed_addr constant [31 x i8] c"MBEDTLS_SSL_CLIENT_CERTIFICATE\00", align 1
@.str.45 = private unnamed_addr constant [32 x i8] c"MBEDTLS_SSL_CLIENT_KEY_EXCHANGE\00", align 1
@.str.46 = private unnamed_addr constant [31 x i8] c"MBEDTLS_SSL_CERTIFICATE_VERIFY\00", align 1
@.str.47 = private unnamed_addr constant [38 x i8] c"MBEDTLS_SSL_CLIENT_CHANGE_CIPHER_SPEC\00", align 1
@.str.48 = private unnamed_addr constant [28 x i8] c"MBEDTLS_SSL_CLIENT_FINISHED\00", align 1
@.str.49 = private unnamed_addr constant [38 x i8] c"MBEDTLS_SSL_SERVER_CHANGE_CIPHER_SPEC\00", align 1
@.str.50 = private unnamed_addr constant [28 x i8] c"MBEDTLS_SSL_SERVER_FINISHED\00", align 1
@.str.51 = private unnamed_addr constant [26 x i8] c"MBEDTLS_SSL_FLUSH_BUFFERS\00", align 1
@.str.52 = private unnamed_addr constant [29 x i8] c"MBEDTLS_SSL_HANDSHAKE_WRAPUP\00", align 1
@.str.53 = private unnamed_addr constant [27 x i8] c"MBEDTLS_SSL_HANDSHAKE_OVER\00", align 1
@.str.54 = private unnamed_addr constant [38 x i8] c"MBEDTLS_SSL_SERVER_NEW_SESSION_TICKET\00", align 1
@.str.55 = private unnamed_addr constant [45 x i8] c"MBEDTLS_SSL_SERVER_HELLO_VERIFY_REQUEST_SENT\00", align 1
@.str.56 = private unnamed_addr constant [32 x i8] c"MBEDTLS_SSL_HELLO_RETRY_REQUEST\00", align 1
@.str.57 = private unnamed_addr constant [33 x i8] c"MBEDTLS_SSL_ENCRYPTED_EXTENSIONS\00", align 1
@.str.58 = private unnamed_addr constant [38 x i8] c"MBEDTLS_SSL_CLIENT_CERTIFICATE_VERIFY\00", align 1
@.str.59 = private unnamed_addr constant [45 x i8] c"MBEDTLS_SSL_CLIENT_CCS_AFTER_SERVER_FINISHED\00", align 1
@.str.60 = private unnamed_addr constant [47 x i8] c"MBEDTLS_SSL_CLIENT_CCS_BEFORE_2ND_CLIENT_HELLO\00", align 1
@.str.61 = private unnamed_addr constant [42 x i8] c"MBEDTLS_SSL_SERVER_CCS_AFTER_SERVER_HELLO\00", align 1
@.str.62 = private unnamed_addr constant [49 x i8] c"MBEDTLS_SSL_SERVER_CCS_AFTER_HELLO_RETRY_REQUEST\00", align 1
@__const.mbedtls_ssl_states_str.in_to_str = private unnamed_addr constant [26 x i8*] [i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.54, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.55, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.56, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.57, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.59, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.60, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.61, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.62, i32 0, i32 0)], align 16
@.str.63 = private unnamed_addr constant [14 x i8] c"UNKNOWN_VALUE\00", align 1
@.str.64 = private unnamed_addr constant [28 x i8] c"MBEDTLS_SSL_VERSION_UNKNOWN\00", align 1
@.str.65 = private unnamed_addr constant [27 x i8] c"MBEDTLS_SSL_VERSION_TLS1_2\00", align 1
@.str.66 = private unnamed_addr constant [27 x i8] c"MBEDTLS_SSL_VERSION_TLS1_3\00", align 1
@.str.67 = private unnamed_addr constant [25 x i8] c"MBEDTLS_SSL_TLS_PRF_NONE\00", align 1
@.str.68 = private unnamed_addr constant [27 x i8] c"MBEDTLS_SSL_TLS_PRF_SHA384\00", align 1
@.str.69 = private unnamed_addr constant [27 x i8] c"MBEDTLS_SSL_TLS_PRF_SHA256\00", align 1
@.str.70 = private unnamed_addr constant [31 x i8] c"MBEDTLS_SSL_HKDF_EXPAND_SHA384\00", align 1
@.str.71 = private unnamed_addr constant [31 x i8] c"MBEDTLS_SSL_HKDF_EXPAND_SHA256\00", align 1
@.str.72 = private unnamed_addr constant [43 x i8] c"MBEDTLS_SSL_KEY_EXPORT_TLS12_MASTER_SECRET\00", align 1
@__const.mbedtls_ssl_key_export_type_str.in_to_str = private unnamed_addr constant [1 x i8*] [i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.72, i32 0, i32 0)], align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @mbedtls_ssl_named_group_to_str(i16 noundef zeroext %in) #0 {
entry:
  %retval = alloca i8*, align 8
  %in.addr = alloca i16, align 2
  store i16 %in, i16* %in.addr, align 2
  %0 = load i16, i16* %in.addr, align 2
  %conv = zext i16 %0 to i32
  switch i32 %conv, label %sw.epilog [
    i32 18, label %sw.bb
    i32 19, label %sw.bb1
    i32 20, label %sw.bb2
    i32 21, label %sw.bb3
    i32 22, label %sw.bb4
    i32 23, label %sw.bb5
    i32 24, label %sw.bb6
    i32 25, label %sw.bb7
    i32 26, label %sw.bb8
    i32 27, label %sw.bb9
    i32 28, label %sw.bb10
    i32 29, label %sw.bb11
    i32 30, label %sw.bb12
    i32 256, label %sw.bb13
    i32 257, label %sw.bb14
    i32 258, label %sw.bb15
    i32 259, label %sw.bb16
    i32 260, label %sw.bb17
  ]

sw.bb:                                            ; preds = %entry
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb1:                                           ; preds = %entry
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb2:                                           ; preds = %entry
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb3:                                           ; preds = %entry
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb4:                                           ; preds = %entry
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb5:                                           ; preds = %entry
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb6:                                           ; preds = %entry
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb7:                                           ; preds = %entry
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb8:                                           ; preds = %entry
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb9:                                           ; preds = %entry
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb10:                                          ; preds = %entry
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb11:                                          ; preds = %entry
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb12:                                          ; preds = %entry
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb13:                                          ; preds = %entry
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb14:                                          ; preds = %entry
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb15:                                          ; preds = %entry
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb16:                                          ; preds = %entry
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb17:                                          ; preds = %entry
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.epilog:                                        ; preds = %entry
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i64 0, i64 0), i8** %retval, align 8
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb17, %sw.bb16, %sw.bb15, %sw.bb14, %sw.bb13, %sw.bb12, %sw.bb11, %sw.bb10, %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  %1 = load i8*, i8** %retval, align 8
  ret i8* %1
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @mbedtls_ssl_sig_alg_to_str(i16 noundef zeroext %in) #0 {
entry:
  %retval = alloca i8*, align 8
  %in.addr = alloca i16, align 2
  store i16 %in, i16* %in.addr, align 2
  %0 = load i16, i16* %in.addr, align 2
  %conv = zext i16 %0 to i32
  switch i32 %conv, label %sw.epilog [
    i32 1025, label %sw.bb
    i32 1281, label %sw.bb1
    i32 1537, label %sw.bb2
    i32 1027, label %sw.bb3
    i32 1283, label %sw.bb4
    i32 1539, label %sw.bb5
    i32 2052, label %sw.bb6
    i32 2053, label %sw.bb7
    i32 2054, label %sw.bb8
    i32 2055, label %sw.bb9
    i32 2056, label %sw.bb10
    i32 2057, label %sw.bb11
    i32 2058, label %sw.bb12
    i32 2059, label %sw.bb13
    i32 513, label %sw.bb14
    i32 515, label %sw.bb15
    i32 0, label %sw.bb16
  ]

sw.bb:                                            ; preds = %entry
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb1:                                           ; preds = %entry
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.20, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb2:                                           ; preds = %entry
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.21, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb3:                                           ; preds = %entry
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb4:                                           ; preds = %entry
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.23, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb5:                                           ; preds = %entry
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.24, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb6:                                           ; preds = %entry
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.25, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb7:                                           ; preds = %entry
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.26, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb8:                                           ; preds = %entry
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.27, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb9:                                           ; preds = %entry
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb10:                                          ; preds = %entry
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb11:                                          ; preds = %entry
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.30, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb12:                                          ; preds = %entry
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.31, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb13:                                          ; preds = %entry
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.32, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb14:                                          ; preds = %entry
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.33, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb15:                                          ; preds = %entry
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.34, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb16:                                          ; preds = %entry
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.35, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.epilog:                                        ; preds = %entry
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.36, i64 0, i64 0), i8** %retval, align 8
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb16, %sw.bb15, %sw.bb14, %sw.bb13, %sw.bb12, %sw.bb11, %sw.bb10, %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  %1 = load i8*, i8** %retval, align 8
  ret i8* %1
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @mbedtls_ssl_states_str(i32 noundef %in) #0 {
entry:
  %retval = alloca i8*, align 8
  %in.addr = alloca i32, align 4
  %in_to_str = alloca [26 x i8*], align 16
  store i32 %in, i32* %in.addr, align 4
  %0 = bitcast [26 x i8*]* %in_to_str to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 bitcast ([26 x i8*]* @__const.mbedtls_ssl_states_str.in_to_str to i8*), i64 208, i1 false)
  %1 = load i32, i32* %in.addr, align 4
  %conv = zext i32 %1 to i64
  %cmp = icmp ugt i64 %conv, 25
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i32, i32* %in.addr, align 4
  %idxprom = zext i32 %2 to i64
  %arrayidx = getelementptr inbounds [26 x i8*], [26 x i8*]* %in_to_str, i64 0, i64 %idxprom
  %3 = load i8*, i8** %arrayidx, align 8
  %cmp2 = icmp eq i8* %3, null
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.63, i64 0, i64 0), i8** %retval, align 8
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %4 = load i32, i32* %in.addr, align 4
  %idxprom4 = zext i32 %4 to i64
  %arrayidx5 = getelementptr inbounds [26 x i8*], [26 x i8*]* %in_to_str, i64 0, i64 %idxprom4
  %5 = load i8*, i8** %arrayidx5, align 8
  store i8* %5, i8** %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load i8*, i8** %retval, align 8
  ret i8* %6
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @mbedtls_ssl_protocol_version_str(i32 noundef %in) #0 {
entry:
  %retval = alloca i8*, align 8
  %in.addr = alloca i32, align 4
  %in_to_str = alloca [773 x i8*], align 16
  store i32 %in, i32* %in.addr, align 4
  %0 = bitcast [773 x i8*]* %in_to_str to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 6184, i1 false)
  %1 = bitcast i8* %0 to [773 x i8*]*
  %2 = getelementptr inbounds [773 x i8*], [773 x i8*]* %1, i32 0, i32 0
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.64, i32 0, i32 0), i8** %2, align 16
  %3 = getelementptr inbounds [773 x i8*], [773 x i8*]* %1, i32 0, i32 771
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.65, i32 0, i32 0), i8** %3, align 8
  %4 = getelementptr inbounds [773 x i8*], [773 x i8*]* %1, i32 0, i32 772
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.66, i32 0, i32 0), i8** %4, align 16
  %5 = load i32, i32* %in.addr, align 4
  %conv = zext i32 %5 to i64
  %cmp = icmp ugt i64 %conv, 772
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %6 = load i32, i32* %in.addr, align 4
  %idxprom = zext i32 %6 to i64
  %arrayidx = getelementptr inbounds [773 x i8*], [773 x i8*]* %in_to_str, i64 0, i64 %idxprom
  %7 = load i8*, i8** %arrayidx, align 8
  %cmp2 = icmp eq i8* %7, null
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.63, i64 0, i64 0), i8** %retval, align 8
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %8 = load i32, i32* %in.addr, align 4
  %idxprom4 = zext i32 %8 to i64
  %arrayidx5 = getelementptr inbounds [773 x i8*], [773 x i8*]* %in_to_str, i64 0, i64 %idxprom4
  %9 = load i8*, i8** %arrayidx5, align 8
  store i8* %9, i8** %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %10 = load i8*, i8** %retval, align 8
  ret i8* %10
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @mbedtls_tls_prf_types_str(i32 noundef %in) #0 {
entry:
  %retval = alloca i8*, align 8
  %in.addr = alloca i32, align 4
  %in_to_str = alloca [5 x i8*], align 16
  store i32 %in, i32* %in.addr, align 4
  %0 = bitcast [5 x i8*]* %in_to_str to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 40, i1 false)
  %1 = bitcast i8* %0 to [5 x i8*]*
  %2 = getelementptr inbounds [5 x i8*], [5 x i8*]* %1, i32 0, i32 0
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.67, i32 0, i32 0), i8** %2, align 16
  %3 = getelementptr inbounds [5 x i8*], [5 x i8*]* %1, i32 0, i32 1
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.68, i32 0, i32 0), i8** %3, align 8
  %4 = getelementptr inbounds [5 x i8*], [5 x i8*]* %1, i32 0, i32 2
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.69, i32 0, i32 0), i8** %4, align 16
  %5 = getelementptr inbounds [5 x i8*], [5 x i8*]* %1, i32 0, i32 3
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.70, i32 0, i32 0), i8** %5, align 8
  %6 = getelementptr inbounds [5 x i8*], [5 x i8*]* %1, i32 0, i32 4
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.71, i32 0, i32 0), i8** %6, align 16
  %7 = load i32, i32* %in.addr, align 4
  %conv = zext i32 %7 to i64
  %cmp = icmp ugt i64 %conv, 4
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %8 = load i32, i32* %in.addr, align 4
  %idxprom = zext i32 %8 to i64
  %arrayidx = getelementptr inbounds [5 x i8*], [5 x i8*]* %in_to_str, i64 0, i64 %idxprom
  %9 = load i8*, i8** %arrayidx, align 8
  %cmp2 = icmp eq i8* %9, null
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.63, i64 0, i64 0), i8** %retval, align 8
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %10 = load i32, i32* %in.addr, align 4
  %idxprom4 = zext i32 %10 to i64
  %arrayidx5 = getelementptr inbounds [5 x i8*], [5 x i8*]* %in_to_str, i64 0, i64 %idxprom4
  %11 = load i8*, i8** %arrayidx5, align 8
  store i8* %11, i8** %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %12 = load i8*, i8** %retval, align 8
  ret i8* %12
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @mbedtls_ssl_key_export_type_str(i32 noundef %in) #0 {
entry:
  %retval = alloca i8*, align 8
  %in.addr = alloca i32, align 4
  %in_to_str = alloca [1 x i8*], align 8
  store i32 %in, i32* %in.addr, align 4
  %0 = bitcast [1 x i8*]* %in_to_str to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 bitcast ([1 x i8*]* @__const.mbedtls_ssl_key_export_type_str.in_to_str to i8*), i64 8, i1 false)
  %1 = load i32, i32* %in.addr, align 4
  %conv = zext i32 %1 to i64
  %cmp = icmp ugt i64 %conv, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i32, i32* %in.addr, align 4
  %idxprom = zext i32 %2 to i64
  %arrayidx = getelementptr inbounds [1 x i8*], [1 x i8*]* %in_to_str, i64 0, i64 %idxprom
  %3 = load i8*, i8** %arrayidx, align 8
  %cmp2 = icmp eq i8* %3, null
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.63, i64 0, i64 0), i8** %retval, align 8
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %4 = load i32, i32* %in.addr, align 4
  %idxprom4 = zext i32 %4 to i64
  %arrayidx5 = getelementptr inbounds [1 x i8*], [1 x i8*]* %in_to_str, i64 0, i64 %idxprom4
  %5 = load i8*, i8** %arrayidx5, align 8
  store i8* %5, i8** %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load i8*, i8** %retval, align 8
  ret i8* %6
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.0"}
