; ModuleID = 'crypto/err/err.c'
source_filename = "crypto/err/err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lhash_st_ERR_STRING_DATA = type { %union.lh_ERR_STRING_DATA_dummy }
%union.lh_ERR_STRING_DATA_dummy = type { i8* }
%struct.ERR_string_data_st = type { i64, i8* }
%struct.lhash_st = type opaque
%struct.err_state_st = type { [16 x i32], [16 x i32], [16 x i64], [16 x i8*], [16 x i64], [16 x i32], [16 x i8*], [16 x i32], [16 x i8*], i32, i32 }
%struct.ossl_init_settings_st = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@set_err_thread_local = internal unnamed_addr global i1 false, align 4
@err_thread_local = internal global i32 0, align 4
@err_string_lock = internal unnamed_addr global i8* null, align 8
@int_error_hash = internal unnamed_addr global %struct.lhash_st_ERR_STRING_DATA* null, align 8
@err_string_init = internal global i32 0, align 4
@do_err_strings_init_ossl_ret_ = internal unnamed_addr global i32 0, align 4
@ERR_str_libraries = internal global [44 x %struct.ERR_string_data_st] [%struct.ERR_string_data_st { i64 8388608, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 16777216, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 25165824, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 33554432, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 41943040, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 50331648, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 58720256, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 67108864, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.14, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 75497472, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 83886080, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 92274688, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.17, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 109051904, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.18, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 117440512, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.19, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 125829120, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.20, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 134217728, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.21, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 352321536, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 360710144, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.23, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 167772160, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 268435456, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.25, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 276824064, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.26, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 285212672, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.27, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 293601280, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.28, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 301989888, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.29, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 310378496, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.30, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 394264576, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.31, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 318767104, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.32, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 327155712, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.33, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 335544320, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.34, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 377487360, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.35, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 385875968, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.36, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 469762048, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.37, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 486539264, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.38, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 402653184, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.39, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 419430400, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.40, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 427819008, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.41, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 436207616, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.42, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 369098752, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.43, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 444596224, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.44, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 452984832, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.45, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 478150656, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.46, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 494927872, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.47, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 503316480, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.48, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 511705088, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.49, i32 0, i32 0) }, %struct.ERR_string_data_st zeroinitializer], align 16
@ERR_str_reasons = internal global [37 x %struct.ERR_string_data_st] [%struct.ERR_string_data_st { i64 524290, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.50, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 524291, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.51, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 524292, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.52, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 524293, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.53, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 524294, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.54, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 524295, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.55, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 524296, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.56, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 524297, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.57, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 524298, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.58, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 524299, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.59, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 524301, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.60, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 524304, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.61, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 524320, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.62, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 524321, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.63, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 524322, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.64, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 524326, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.65, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 524328, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.66, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 524332, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.67, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 524330, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.68, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 524554, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.69, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 524555, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.70, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 786432, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.71, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 786688, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.72, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 786689, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.73, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 786690, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.74, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 786691, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.75, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 786692, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.76, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 786693, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.77, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 786695, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.78, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 786696, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.79, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 524553, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.80, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 524556, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.81, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 524557, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.82, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 524558, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.83, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 786703, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.84, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 786704, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.85, i32 0, i32 0) }, %struct.ERR_string_data_st zeroinitializer], align 16
@.str = private unnamed_addr constant [9 x i8] c"lib(%lu)\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"reason(%lu)\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"error:%08lX:%s:%s:%s\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"err:%lx:%lx:%lx:%lx\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ERR_error_string.buf = internal global [256 x i8] zeroinitializer, align 16
@err_init = internal global i32 0, align 4
@err_do_init_ossl_ret_ = internal unnamed_addr global i32 0, align 4
@.str.5 = private unnamed_addr constant [17 x i8] c"crypto/err/err.c\00", align 1
@int_err_library_number = internal unnamed_addr global i32 128, align 4
@.str.6 = private unnamed_addr constant [7 x i8] c"<NULL>\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"unknown library\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"system library\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"bignum routines\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"rsa routines\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"Diffie-Hellman routines\00", align 1
@.str.12 = private unnamed_addr constant [26 x i8] c"digital envelope routines\00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c"memory buffer routines\00", align 1
@.str.14 = private unnamed_addr constant [27 x i8] c"object identifier routines\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"PEM routines\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"dsa routines\00", align 1
@.str.17 = private unnamed_addr constant [26 x i8] c"x509 certificate routines\00", align 1
@.str.18 = private unnamed_addr constant [23 x i8] c"asn1 encoding routines\00", align 1
@.str.19 = private unnamed_addr constant [28 x i8] c"configuration file routines\00", align 1
@.str.20 = private unnamed_addr constant [26 x i8] c"common libcrypto routines\00", align 1
@.str.21 = private unnamed_addr constant [24 x i8] c"elliptic curve routines\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"ECDSA routines\00", align 1
@.str.23 = private unnamed_addr constant [14 x i8] c"ECDH routines\00", align 1
@.str.24 = private unnamed_addr constant [13 x i8] c"SSL routines\00", align 1
@.str.25 = private unnamed_addr constant [13 x i8] c"BIO routines\00", align 1
@.str.26 = private unnamed_addr constant [15 x i8] c"PKCS7 routines\00", align 1
@.str.27 = private unnamed_addr constant [17 x i8] c"X509 V3 routines\00", align 1
@.str.28 = private unnamed_addr constant [16 x i8] c"PKCS12 routines\00", align 1
@.str.29 = private unnamed_addr constant [24 x i8] c"random number generator\00", align 1
@.str.30 = private unnamed_addr constant [21 x i8] c"DSO support routines\00", align 1
@.str.31 = private unnamed_addr constant [20 x i8] c"time stamp routines\00", align 1
@.str.32 = private unnamed_addr constant [16 x i8] c"engine routines\00", align 1
@.str.33 = private unnamed_addr constant [14 x i8] c"OCSP routines\00", align 1
@.str.34 = private unnamed_addr constant [12 x i8] c"UI routines\00", align 1
@.str.35 = private unnamed_addr constant [14 x i8] c"FIPS routines\00", align 1
@.str.36 = private unnamed_addr constant [13 x i8] c"CMS routines\00", align 1
@.str.37 = private unnamed_addr constant [14 x i8] c"CRMF routines\00", align 1
@.str.38 = private unnamed_addr constant [13 x i8] c"CMP routines\00", align 1
@.str.39 = private unnamed_addr constant [14 x i8] c"HMAC routines\00", align 1
@.str.40 = private unnamed_addr constant [12 x i8] c"CT routines\00", align 1
@.str.41 = private unnamed_addr constant [15 x i8] c"ASYNC routines\00", align 1
@.str.42 = private unnamed_addr constant [13 x i8] c"KDF routines\00", align 1
@.str.43 = private unnamed_addr constant [15 x i8] c"STORE routines\00", align 1
@.str.44 = private unnamed_addr constant [13 x i8] c"SM2 routines\00", align 1
@.str.45 = private unnamed_addr constant [13 x i8] c"ESS routines\00", align 1
@.str.46 = private unnamed_addr constant [18 x i8] c"Provider routines\00", align 1
@.str.47 = private unnamed_addr constant [17 x i8] c"ENCODER routines\00", align 1
@.str.48 = private unnamed_addr constant [17 x i8] c"DECODER routines\00", align 1
@.str.49 = private unnamed_addr constant [14 x i8] c"HTTP routines\00", align 1
@.str.50 = private unnamed_addr constant [11 x i8] c"system lib\00", align 1
@.str.51 = private unnamed_addr constant [7 x i8] c"BN lib\00", align 1
@.str.52 = private unnamed_addr constant [8 x i8] c"RSA lib\00", align 1
@.str.53 = private unnamed_addr constant [7 x i8] c"DH lib\00", align 1
@.str.54 = private unnamed_addr constant [8 x i8] c"EVP lib\00", align 1
@.str.55 = private unnamed_addr constant [8 x i8] c"BUF lib\00", align 1
@.str.56 = private unnamed_addr constant [8 x i8] c"OBJ lib\00", align 1
@.str.57 = private unnamed_addr constant [8 x i8] c"PEM lib\00", align 1
@.str.58 = private unnamed_addr constant [8 x i8] c"DSA lib\00", align 1
@.str.59 = private unnamed_addr constant [9 x i8] c"X509 lib\00", align 1
@.str.60 = private unnamed_addr constant [9 x i8] c"ASN1 lib\00", align 1
@.str.61 = private unnamed_addr constant [7 x i8] c"EC lib\00", align 1
@.str.62 = private unnamed_addr constant [8 x i8] c"BIO lib\00", align 1
@.str.63 = private unnamed_addr constant [10 x i8] c"PKCS7 lib\00", align 1
@.str.64 = private unnamed_addr constant [11 x i8] c"X509V3 lib\00", align 1
@.str.65 = private unnamed_addr constant [11 x i8] c"ENGINE lib\00", align 1
@.str.66 = private unnamed_addr constant [7 x i8] c"UI lib\00", align 1
@.str.67 = private unnamed_addr constant [10 x i8] c"STORE lib\00", align 1
@.str.68 = private unnamed_addr constant [10 x i8] c"ECDSA lib\00", align 1
@.str.69 = private unnamed_addr constant [18 x i8] c"nested asn1 error\00", align 1
@.str.70 = private unnamed_addr constant [17 x i8] c"missing asn1 eos\00", align 1
@.str.71 = private unnamed_addr constant [6 x i8] c"fatal\00", align 1
@.str.72 = private unnamed_addr constant [15 x i8] c"malloc failure\00", align 1
@.str.73 = private unnamed_addr constant [38 x i8] c"called a function you should not call\00", align 1
@.str.74 = private unnamed_addr constant [24 x i8] c"passed a null parameter\00", align 1
@.str.75 = private unnamed_addr constant [15 x i8] c"internal error\00", align 1
@.str.76 = private unnamed_addr constant [52 x i8] c"called a function that was disabled at compile-time\00", align 1
@.str.77 = private unnamed_addr constant [10 x i8] c"init fail\00", align 1
@.str.78 = private unnamed_addr constant [15 x i8] c"operation fail\00", align 1
@.str.79 = private unnamed_addr constant [27 x i8] c"invalid provider functions\00", align 1
@.str.80 = private unnamed_addr constant [25 x i8] c"interrupted or cancelled\00", align 1
@.str.81 = private unnamed_addr constant [12 x i8] c"unsupported\00", align 1
@.str.82 = private unnamed_addr constant [13 x i8] c"fetch failed\00", align 1
@.str.83 = private unnamed_addr constant [28 x i8] c"invalid property definition\00", align 1
@.str.84 = private unnamed_addr constant [24 x i8] c"unable to get read lock\00", align 1
@.str.85 = private unnamed_addr constant [25 x i8] c"unable to get write lock\00", align 1
@.str.86 = private unnamed_addr constant [23 x i8] c"crypto/err/err_local.h\00", align 1

; Function Attrs: noinline nounwind uwtable
define void @err_cleanup() local_unnamed_addr #0 {
entry:
  %.b = load i1, i1* @set_err_thread_local, align 4
  br i1 %.b, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = tail call i32 @CRYPTO_THREAD_cleanup_local(i32* noundef nonnull @err_thread_local) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %0 = load i8*, i8** @err_string_lock, align 8, !tbaa !4
  tail call void @CRYPTO_THREAD_lock_free(i8* noundef %0) #10
  store i8* null, i8** @err_string_lock, align 8, !tbaa !4
  %1 = load %struct.lhash_st_ERR_STRING_DATA*, %struct.lhash_st_ERR_STRING_DATA** @int_error_hash, align 8, !tbaa !4
  %call1 = tail call fastcc %struct.lhash_st* @ossl_check_ERR_STRING_DATA_lh_type(%struct.lhash_st_ERR_STRING_DATA* noundef %1) #11
  tail call void @OPENSSL_LH_free(%struct.lhash_st* noundef %call1) #10
  store %struct.lhash_st_ERR_STRING_DATA* null, %struct.lhash_st_ERR_STRING_DATA** @int_error_hash, align 8, !tbaa !4
  ret void
}

declare i32 @CRYPTO_THREAD_cleanup_local(i32* noundef) local_unnamed_addr #1

declare void @CRYPTO_THREAD_lock_free(i8* noundef) local_unnamed_addr #1

declare void @OPENSSL_LH_free(%struct.lhash_st* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.lhash_st* @ossl_check_ERR_STRING_DATA_lh_type(%struct.lhash_st_ERR_STRING_DATA* noundef readnone %lh) unnamed_addr #2 {
entry:
  %0 = bitcast %struct.lhash_st_ERR_STRING_DATA* %lh to %struct.lhash_st*
  ret %struct.lhash_st* %0
}

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_err_load_ERR_strings() local_unnamed_addr #0 {
entry:
  %call = tail call i32 @CRYPTO_THREAD_run_once(i32* noundef nonnull @err_string_init, void ()* noundef nonnull @do_err_strings_init_ossl_) #10
  %tobool = icmp ne i32 %call, 0
  %0 = load i32, i32* @do_err_strings_init_ossl_ret_, align 4
  %tobool1 = icmp ne i32 %0, 0
  %or.cond = select i1 %tobool, i1 %tobool1, i1 false
  br i1 %or.cond, label %if.end, label %return

if.end:                                           ; preds = %entry
  tail call fastcc void @err_load_strings(%struct.ERR_string_data_st* noundef getelementptr inbounds ([44 x %struct.ERR_string_data_st], [44 x %struct.ERR_string_data_st]* @ERR_str_libraries, i64 0, i64 0)) #11
  tail call fastcc void @err_load_strings(%struct.ERR_string_data_st* noundef getelementptr inbounds ([37 x %struct.ERR_string_data_st], [37 x %struct.ERR_string_data_st]* @ERR_str_reasons, i64 0, i64 0)) #11
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

declare i32 @CRYPTO_THREAD_run_once(i32* noundef, void ()* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal void @do_err_strings_init_ossl_() #0 {
entry:
  %call = tail call fastcc i32 @do_err_strings_init() #11
  store i32 %call, i32* @do_err_strings_init_ossl_ret_, align 4, !tbaa !8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @err_load_strings(%struct.ERR_string_data_st* noundef %str) unnamed_addr #0 {
entry:
  %0 = load i8*, i8** @err_string_lock, align 8, !tbaa !4
  %call = tail call i32 @CRYPTO_THREAD_write_lock(i8* noundef %0) #10
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %error1 = getelementptr inbounds %struct.ERR_string_data_st, %struct.ERR_string_data_st* %str, i64 0, i32 0
  %1 = load i64, i64* %error1, align 8, !tbaa !10
  %tobool1.not2 = icmp eq i64 %1, 0
  br i1 %tobool1.not2, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %str.addr.03 = phi %struct.ERR_string_data_st* [ %incdec.ptr, %for.body ], [ %str, %for.cond.preheader ]
  %2 = load %struct.lhash_st_ERR_STRING_DATA*, %struct.lhash_st_ERR_STRING_DATA** @int_error_hash, align 8, !tbaa !4
  %call2 = tail call fastcc %struct.lhash_st* @ossl_check_ERR_STRING_DATA_lh_type(%struct.lhash_st_ERR_STRING_DATA* noundef %2) #11
  %3 = bitcast %struct.ERR_string_data_st* %str.addr.03 to i8*
  %call4 = tail call i8* @OPENSSL_LH_insert(%struct.lhash_st* noundef %call2, i8* noundef %3) #10
  %incdec.ptr = getelementptr inbounds %struct.ERR_string_data_st, %struct.ERR_string_data_st* %str.addr.03, i64 1
  %error = getelementptr inbounds %struct.ERR_string_data_st, %struct.ERR_string_data_st* %incdec.ptr, i64 0, i32 0
  %4 = load i64, i64* %error, align 8, !tbaa !10
  %tobool1.not = icmp eq i64 %4, 0
  br i1 %tobool1.not, label %for.end, label %for.body, !llvm.loop !13

for.end:                                          ; preds = %for.body, %for.cond.preheader
  %5 = load i8*, i8** @err_string_lock, align 8, !tbaa !4
  %call5 = tail call i32 @CRYPTO_THREAD_unlock(i8* noundef %5) #10
  br label %return

return:                                           ; preds = %entry, %for.end
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @ERR_load_strings(i32 noundef %lib, %struct.ERR_string_data_st* noundef %str) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @ossl_err_load_ERR_strings() #11
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  tail call fastcc void @err_patch(i32 noundef %lib, %struct.ERR_string_data_st* noundef %str) #11
  tail call fastcc void @err_load_strings(%struct.ERR_string_data_st* noundef %str) #11
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal fastcc void @err_patch(i32 noundef %lib, %struct.ERR_string_data_st* nocapture noundef %str) unnamed_addr #3 {
entry:
  %0 = shl i32 %lib, 23
  %1 = and i32 %0, 2139095040
  %shl = zext i32 %1 to i64
  %error8 = getelementptr inbounds %struct.ERR_string_data_st, %struct.ERR_string_data_st* %str, i64 0, i32 0
  %2 = load i64, i64* %error8, align 8, !tbaa !10
  %cmp.not9 = icmp eq i64 %2, 0
  br i1 %cmp.not9, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.body
  %3 = phi i64 [ %4, %for.body ], [ %2, %entry ]
  %error11 = phi i64* [ %incdec.ptr, %for.body ], [ %error8, %entry ]
  %or3 = or i64 %3, %shl
  store i64 %or3, i64* %error11, align 8, !tbaa !10
  %incdec.ptr = getelementptr inbounds i64, i64* %error11, i64 2
  %4 = load i64, i64* %incdec.ptr, align 8, !tbaa !10
  %cmp.not = icmp eq i64 %4, 0
  br i1 %cmp.not, label %for.end, label %for.body, !llvm.loop !15

for.end:                                          ; preds = %for.body, %entry
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @ERR_load_strings_const(%struct.ERR_string_data_st* noundef %str) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @ossl_err_load_ERR_strings() #11
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  tail call fastcc void @err_load_strings(%struct.ERR_string_data_st* noundef %str) #11
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @ERR_unload_strings(i32 noundef %lib, %struct.ERR_string_data_st* noundef %str) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @CRYPTO_THREAD_run_once(i32* noundef nonnull @err_string_init, void ()* noundef nonnull @do_err_strings_init_ossl_) #10
  %tobool = icmp ne i32 %call, 0
  %0 = load i32, i32* @do_err_strings_init_ossl_ret_, align 4
  %tobool1 = icmp ne i32 %0, 0
  %or.cond = select i1 %tobool, i1 %tobool1, i1 false
  br i1 %or.cond, label %if.end, label %return

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** @err_string_lock, align 8, !tbaa !4
  %call2 = tail call i32 @CRYPTO_THREAD_write_lock(i8* noundef %1) #10
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %return, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end
  %error13 = getelementptr inbounds %struct.ERR_string_data_st, %struct.ERR_string_data_st* %str, i64 0, i32 0
  %2 = load i64, i64* %error13, align 8, !tbaa !10
  %tobool6.not14 = icmp eq i64 %2, 0
  br i1 %tobool6.not14, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %str.addr.015 = phi %struct.ERR_string_data_st* [ %incdec.ptr, %for.body ], [ %str, %for.cond.preheader ]
  %3 = load %struct.lhash_st_ERR_STRING_DATA*, %struct.lhash_st_ERR_STRING_DATA** @int_error_hash, align 8, !tbaa !4
  %call7 = tail call fastcc %struct.lhash_st* @ossl_check_ERR_STRING_DATA_lh_type(%struct.lhash_st_ERR_STRING_DATA* noundef %3) #11
  %4 = bitcast %struct.ERR_string_data_st* %str.addr.015 to i8*
  %call9 = tail call i8* @OPENSSL_LH_delete(%struct.lhash_st* noundef %call7, i8* noundef %4) #10
  %incdec.ptr = getelementptr inbounds %struct.ERR_string_data_st, %struct.ERR_string_data_st* %str.addr.015, i64 1
  %error = getelementptr inbounds %struct.ERR_string_data_st, %struct.ERR_string_data_st* %incdec.ptr, i64 0, i32 0
  %5 = load i64, i64* %error, align 8, !tbaa !10
  %tobool6.not = icmp eq i64 %5, 0
  br i1 %tobool6.not, label %for.end, label %for.body, !llvm.loop !16

for.end:                                          ; preds = %for.body, %for.cond.preheader
  %6 = load i8*, i8** @err_string_lock, align 8, !tbaa !4
  %call10 = tail call i32 @CRYPTO_THREAD_unlock(i8* noundef %6) #10
  br label %return

return:                                           ; preds = %if.end, %entry, %for.end
  %retval.0 = phi i32 [ 1, %for.end ], [ 0, %entry ], [ 0, %if.end ]
  ret i32 %retval.0
}

declare i32 @CRYPTO_THREAD_write_lock(i8* noundef) local_unnamed_addr #1

declare i8* @OPENSSL_LH_delete(%struct.lhash_st* noundef, i8* noundef) local_unnamed_addr #1

declare i32 @CRYPTO_THREAD_unlock(i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define void @err_free_strings_int() local_unnamed_addr #0 {
entry:
  %call = tail call i32 @CRYPTO_THREAD_run_once(i32* noundef nonnull @err_string_init, void ()* noundef nonnull @do_err_strings_init_ossl_) #10
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @ERR_clear_error() local_unnamed_addr #0 {
entry:
  %call = tail call %struct.err_state_st* @ossl_err_get_state_int() #11
  %cmp = icmp eq %struct.err_state_st* %call, null
  br i1 %cmp, label %cleanup, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  tail call fastcc void @err_clear(%struct.err_state_st* noundef nonnull %call, i64 noundef 0, i32 noundef 0) #11
  tail call fastcc void @err_clear(%struct.err_state_st* noundef nonnull %call, i64 noundef 1, i32 noundef 0) #11
  tail call fastcc void @err_clear(%struct.err_state_st* noundef nonnull %call, i64 noundef 2, i32 noundef 0) #11
  tail call fastcc void @err_clear(%struct.err_state_st* noundef nonnull %call, i64 noundef 3, i32 noundef 0) #11
  tail call fastcc void @err_clear(%struct.err_state_st* noundef nonnull %call, i64 noundef 4, i32 noundef 0) #11
  tail call fastcc void @err_clear(%struct.err_state_st* noundef nonnull %call, i64 noundef 5, i32 noundef 0) #11
  tail call fastcc void @err_clear(%struct.err_state_st* noundef nonnull %call, i64 noundef 6, i32 noundef 0) #11
  tail call fastcc void @err_clear(%struct.err_state_st* noundef nonnull %call, i64 noundef 7, i32 noundef 0) #11
  tail call fastcc void @err_clear(%struct.err_state_st* noundef nonnull %call, i64 noundef 8, i32 noundef 0) #11
  tail call fastcc void @err_clear(%struct.err_state_st* noundef nonnull %call, i64 noundef 9, i32 noundef 0) #11
  tail call fastcc void @err_clear(%struct.err_state_st* noundef nonnull %call, i64 noundef 10, i32 noundef 0) #11
  tail call fastcc void @err_clear(%struct.err_state_st* noundef nonnull %call, i64 noundef 11, i32 noundef 0) #11
  tail call fastcc void @err_clear(%struct.err_state_st* noundef nonnull %call, i64 noundef 12, i32 noundef 0) #11
  tail call fastcc void @err_clear(%struct.err_state_st* noundef nonnull %call, i64 noundef 13, i32 noundef 0) #11
  tail call fastcc void @err_clear(%struct.err_state_st* noundef nonnull %call, i64 noundef 14, i32 noundef 0) #11
  tail call fastcc void @err_clear(%struct.err_state_st* noundef nonnull %call, i64 noundef 15, i32 noundef 0) #11
  %bottom = getelementptr inbounds %struct.err_state_st, %struct.err_state_st* %call, i64 0, i32 10
  store i32 0, i32* %bottom, align 4, !tbaa !17
  %top = getelementptr inbounds %struct.err_state_st, %struct.err_state_st* %call, i64 0, i32 9
  store i32 0, i32* %top, align 8, !tbaa !19
  br label %cleanup

cleanup:                                          ; preds = %entry, %for.body.preheader
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: noinline nounwind uwtable
define %struct.err_state_st* @ossl_err_get_state_int() local_unnamed_addr #0 {
entry:
  %call = tail call i32* @__errno_location() #12
  %0 = load i32, i32* %call, align 4, !tbaa !8
  %call1 = tail call i32 @OPENSSL_init_crypto(i64 noundef 262144, %struct.ossl_init_settings_st* noundef null) #10
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @CRYPTO_THREAD_run_once(i32* noundef nonnull @err_init, void ()* noundef nonnull @err_do_init_ossl_) #10
  %tobool3 = icmp ne i32 %call2, 0
  %1 = load i32, i32* @err_do_init_ossl_ret_, align 4
  %tobool4 = icmp ne i32 %1, 0
  %or.cond = select i1 %tobool3, i1 %tobool4, i1 false
  br i1 %or.cond, label %if.end6, label %cleanup

if.end6:                                          ; preds = %if.end
  %call7 = tail call i8* @CRYPTO_THREAD_get_local(i32* noundef nonnull @err_thread_local) #10
  %cmp = icmp eq i8* %call7, inttoptr (i64 -1 to i8*)
  br i1 %cmp, label %cleanup, label %if.end9

if.end9:                                          ; preds = %if.end6
  %2 = bitcast i8* %call7 to %struct.err_state_st*
  %cmp10 = icmp eq i8* %call7, null
  br i1 %cmp10, label %if.then11, label %if.end29

if.then11:                                        ; preds = %if.end9
  %call12 = tail call i32 @CRYPTO_THREAD_set_local(i32* noundef nonnull @err_thread_local, i8* noundef nonnull inttoptr (i64 -1 to i8*)) #10
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %cleanup, label %if.end15

if.end15:                                         ; preds = %if.then11
  %call16 = tail call i8* @CRYPTO_zalloc(i64 noundef 904, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32 noundef 658) #10
  %3 = bitcast i8* %call16 to %struct.err_state_st*
  %cmp17 = icmp eq i8* %call16, null
  br i1 %cmp17, label %if.then18, label %if.end20

if.then18:                                        ; preds = %if.end15
  %call19 = tail call i32 @CRYPTO_THREAD_set_local(i32* noundef nonnull @err_thread_local, i8* noundef null) #10
  br label %cleanup

if.end20:                                         ; preds = %if.end15
  %call21 = tail call i32 @ossl_init_thread_start(i8* noundef null, i8* noundef null, void (i8*)* noundef nonnull @err_delete_thread_state) #10
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.then25, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end20
  %call23 = tail call i32 @CRYPTO_THREAD_set_local(i32* noundef nonnull @err_thread_local, i8* noundef nonnull %call16) #10
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.then25, label %if.end27

if.then25:                                        ; preds = %lor.lhs.false, %if.end20
  tail call fastcc void @ERR_STATE_free(%struct.err_state_st* noundef nonnull %3) #11
  %call26 = tail call i32 @CRYPTO_THREAD_set_local(i32* noundef nonnull @err_thread_local, i8* noundef null) #10
  br label %cleanup

if.end27:                                         ; preds = %lor.lhs.false
  %call28 = tail call i32 @OPENSSL_init_crypto(i64 noundef 2, %struct.ossl_init_settings_st* noundef null) #10
  br label %if.end29

if.end29:                                         ; preds = %if.end27, %if.end9
  %state.0 = phi %struct.err_state_st* [ %3, %if.end27 ], [ %2, %if.end9 ]
  store i32 %0, i32* %call, align 4, !tbaa !8
  br label %cleanup

cleanup:                                          ; preds = %if.then11, %if.end6, %if.end, %entry, %if.end29, %if.then25, %if.then18
  %retval.0 = phi %struct.err_state_st* [ null, %if.then18 ], [ %state.0, %if.end29 ], [ null, %if.then25 ], [ null, %entry ], [ null, %if.end ], [ null, %if.end6 ], [ null, %if.then11 ]
  ret %struct.err_state_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @err_clear(%struct.err_state_st* nocapture noundef %es, i64 noundef %i, i32 noundef %deall) unnamed_addr #0 {
entry:
  tail call fastcc void @err_clear_data(%struct.err_state_st* noundef %es, i64 noundef %i, i32 noundef %deall) #11
  %arrayidx = getelementptr inbounds %struct.err_state_st, %struct.err_state_st* %es, i64 0, i32 1, i64 %i
  store i32 0, i32* %arrayidx, align 4, !tbaa !8
  %arrayidx1 = getelementptr inbounds %struct.err_state_st, %struct.err_state_st* %es, i64 0, i32 0, i64 %i
  store i32 0, i32* %arrayidx1, align 4, !tbaa !8
  %arrayidx2 = getelementptr inbounds %struct.err_state_st, %struct.err_state_st* %es, i64 0, i32 2, i64 %i
  store i64 0, i64* %arrayidx2, align 8, !tbaa !20
  %arrayidx3 = getelementptr inbounds %struct.err_state_st, %struct.err_state_st* %es, i64 0, i32 7, i64 %i
  store i32 -1, i32* %arrayidx3, align 4, !tbaa !8
  %arrayidx4 = getelementptr inbounds %struct.err_state_st, %struct.err_state_st* %es, i64 0, i32 6, i64 %i
  %0 = load i8*, i8** %arrayidx4, align 8, !tbaa !4
  tail call void @CRYPTO_free(i8* noundef %0, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.86, i64 0, i64 0), i32 noundef 86) #10
  store i8* null, i8** %arrayidx4, align 8, !tbaa !4
  %arrayidx7 = getelementptr inbounds %struct.err_state_st, %struct.err_state_st* %es, i64 0, i32 8, i64 %i
  %1 = load i8*, i8** %arrayidx7, align 8, !tbaa !4
  tail call void @CRYPTO_free(i8* noundef %1, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.86, i64 0, i64 0), i32 noundef 88) #10
  store i8* null, i8** %arrayidx7, align 8, !tbaa !4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: noinline nounwind uwtable
define i64 @ERR_get_error() local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i64 @get_error_values(i32 noundef 0, i8** noundef null, i32* noundef null, i8** noundef null, i8** noundef null, i32* noundef null) #11
  ret i64 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i64 @get_error_values(i32 noundef %g, i8** noundef writeonly %file, i32* noundef writeonly %line, i8** noundef writeonly %func, i8** noundef writeonly %data, i32* noundef writeonly %flags) unnamed_addr #0 {
entry:
  %call = tail call %struct.err_state_st* @ossl_err_get_state_int() #11
  %cmp = icmp eq %struct.err_state_st* %call, null
  br i1 %cmp, label %cleanup, label %while.cond.preheader

while.cond.preheader:                             ; preds = %entry
  %bottom = getelementptr inbounds %struct.err_state_st, %struct.err_state_st* %call, i64 0, i32 10
  %top = getelementptr inbounds %struct.err_state_st, %struct.err_state_st* %call, i64 0, i32 9
  %0 = load i32, i32* %bottom, align 4, !tbaa !17
  %1 = load i32, i32* %top, align 8, !tbaa !19
  %cmp1.not170 = icmp eq i32 %0, %1
  br i1 %cmp1.not170, label %cleanup, label %while.body

while.body:                                       ; preds = %while.cond.preheader, %while.cond.backedge
  %2 = phi i32 [ %6, %while.cond.backedge ], [ %1, %while.cond.preheader ]
  %3 = phi i32 [ %7, %while.cond.backedge ], [ %0, %while.cond.preheader ]
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds %struct.err_state_st, %struct.err_state_st* %call, i64 0, i32 0, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4, !tbaa !8
  %and = and i32 %4, 2
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end10, label %if.then3

if.then3:                                         ; preds = %while.body
  tail call fastcc void @err_clear(%struct.err_state_st* noundef nonnull %call, i64 noundef %idxprom, i32 noundef 0) #11
  %5 = load i32, i32* %top, align 8, !tbaa !19
  %cmp6 = icmp sgt i32 %5, 0
  %sub = add nsw i32 %5, -1
  %spec.select = select i1 %cmp6, i32 %sub, i32 15
  store i32 %spec.select, i32* %top, align 8, !tbaa !19
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.then3, %if.then17
  %6 = phi i32 [ %spec.select, %if.then3 ], [ %.pre, %if.then17 ]
  %7 = load i32, i32* %bottom, align 4, !tbaa !17
  %cmp1.not = icmp eq i32 %7, %6
  br i1 %cmp1.not, label %cleanup, label %while.body, !llvm.loop !21

if.end10:                                         ; preds = %while.body
  %add = add nsw i32 %3, 1
  %rem = srem i32 %add, 16
  %idxprom13 = sext i32 %rem to i64
  %arrayidx14 = getelementptr inbounds %struct.err_state_st, %struct.err_state_st* %call, i64 0, i32 0, i64 %idxprom13
  %8 = load i32, i32* %arrayidx14, align 4, !tbaa !8
  %and15 = and i32 %8, 2
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.end27, label %if.then17

if.then17:                                        ; preds = %if.end10
  store i32 %rem, i32* %bottom, align 4, !tbaa !17
  tail call fastcc void @err_clear(%struct.err_state_st* noundef nonnull %call, i64 noundef %idxprom13, i32 noundef 0) #11
  %.pre = load i32, i32* %top, align 8, !tbaa !19
  br label %while.cond.backedge

if.end27:                                         ; preds = %if.end10
  %cmp28 = icmp eq i32 %g, 2
  br i1 %cmp28, label %if.end35.thread, label %if.end35

if.end35.thread:                                  ; preds = %if.end27
  %arrayidx37162 = getelementptr inbounds %struct.err_state_st, %struct.err_state_st* %call, i64 0, i32 2, i64 %idxprom
  %9 = load i64, i64* %arrayidx37162, align 8, !tbaa !20
  br label %if.end45

if.end35:                                         ; preds = %if.end27
  %arrayidx37 = getelementptr inbounds %struct.err_state_st, %struct.err_state_st* %call, i64 0, i32 2, i64 %idxprom13
  %10 = load i64, i64* %arrayidx37, align 8, !tbaa !20
  %cmp38 = icmp eq i32 %g, 0
  br i1 %cmp38, label %if.then40, label %if.end45

if.then40:                                        ; preds = %if.end35
  store i32 %rem, i32* %bottom, align 4, !tbaa !17
  store i64 0, i64* %arrayidx37, align 8, !tbaa !20
  br label %if.end45

if.end45:                                         ; preds = %if.end35.thread, %if.then40, %if.end35
  %cmp38165 = phi i1 [ false, %if.end35.thread ], [ true, %if.then40 ], [ false, %if.end35 ]
  %11 = phi i64 [ %9, %if.end35.thread ], [ %10, %if.then40 ], [ %10, %if.end35 ]
  %idxprom36164 = phi i64 [ %idxprom, %if.end35.thread ], [ %idxprom13, %if.then40 ], [ %idxprom13, %if.end35 ]
  %cmp46.not = icmp eq i8** %file, null
  br i1 %cmp46.not, label %if.end55, label %if.then48

if.then48:                                        ; preds = %if.end45
  %arrayidx50 = getelementptr inbounds %struct.err_state_st, %struct.err_state_st* %call, i64 0, i32 6, i64 %idxprom36164
  %12 = load i8*, i8** %arrayidx50, align 8, !tbaa !4
  %cmp51 = icmp eq i8* %12, null
  %spec.store.select = select i1 %cmp51, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), i8* %12
  store i8* %spec.store.select, i8** %file, align 8
  br label %if.end55

if.end55:                                         ; preds = %if.then48, %if.end45
  %cmp56.not = icmp eq i32* %line, null
  br i1 %cmp56.not, label %if.end61, label %if.then58

if.then58:                                        ; preds = %if.end55
  %arrayidx60 = getelementptr inbounds %struct.err_state_st, %struct.err_state_st* %call, i64 0, i32 7, i64 %idxprom36164
  %13 = load i32, i32* %arrayidx60, align 4, !tbaa !8
  store i32 %13, i32* %line, align 4, !tbaa !8
  br label %if.end61

if.end61:                                         ; preds = %if.then58, %if.end55
  %cmp62.not = icmp eq i8** %func, null
  br i1 %cmp62.not, label %if.end71, label %if.then64

if.then64:                                        ; preds = %if.end61
  %arrayidx66 = getelementptr inbounds %struct.err_state_st, %struct.err_state_st* %call, i64 0, i32 8, i64 %idxprom36164
  %14 = load i8*, i8** %arrayidx66, align 8, !tbaa !4
  %cmp67 = icmp eq i8* %14, null
  %spec.store.select159 = select i1 %cmp67, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), i8* %14
  store i8* %spec.store.select159, i8** %func, align 8
  br label %if.end71

if.end71:                                         ; preds = %if.then64, %if.end61
  %cmp72.not = icmp eq i32* %flags, null
  br i1 %cmp72.not, label %if.end77, label %if.then74

if.then74:                                        ; preds = %if.end71
  %arrayidx76 = getelementptr inbounds %struct.err_state_st, %struct.err_state_st* %call, i64 0, i32 5, i64 %idxprom36164
  %15 = load i32, i32* %arrayidx76, align 4, !tbaa !8
  store i32 %15, i32* %flags, align 4, !tbaa !8
  br label %if.end77

if.end77:                                         ; preds = %if.then74, %if.end71
  %cmp78 = icmp eq i8** %data, null
  br i1 %cmp78, label %if.then80, label %if.else86

if.then80:                                        ; preds = %if.end77
  br i1 %cmp38165, label %if.then83, label %cleanup

if.then83:                                        ; preds = %if.then80
  tail call fastcc void @err_clear_data(%struct.err_state_st* noundef nonnull %call, i64 noundef %idxprom36164, i32 noundef 0) #11
  br label %cleanup

if.else86:                                        ; preds = %if.end77
  %arrayidx88 = getelementptr inbounds %struct.err_state_st, %struct.err_state_st* %call, i64 0, i32 3, i64 %idxprom36164
  %16 = load i8*, i8** %arrayidx88, align 8, !tbaa !4
  store i8* %16, i8** %data, align 8, !tbaa !4
  %cmp89 = icmp eq i8* %16, null
  br i1 %cmp89, label %if.then91, label %cleanup

if.then91:                                        ; preds = %if.else86
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), i8** %data, align 8, !tbaa !4
  br i1 %cmp72.not, label %cleanup, label %if.then94

if.then94:                                        ; preds = %if.then91
  store i32 0, i32* %flags, align 4, !tbaa !8
  br label %cleanup

cleanup:                                          ; preds = %while.cond.backedge, %while.cond.preheader, %if.then83, %if.then80, %if.then91, %if.then94, %if.else86, %entry
  %retval.0 = phi i64 [ 0, %entry ], [ %11, %if.else86 ], [ %11, %if.then94 ], [ %11, %if.then91 ], [ %11, %if.then80 ], [ %11, %if.then83 ], [ 0, %while.cond.preheader ], [ 0, %while.cond.backedge ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i64 @ERR_get_error_all(i8** noundef %file, i32* noundef %line, i8** noundef %func, i8** noundef %data, i32* noundef %flags) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i64 @get_error_values(i32 noundef 0, i8** noundef %file, i32* noundef %line, i8** noundef %func, i8** noundef %data, i32* noundef %flags) #11
  ret i64 %call
}

; Function Attrs: noinline nounwind uwtable
define i64 @ERR_get_error_line(i8** noundef %file, i32* noundef %line) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i64 @get_error_values(i32 noundef 0, i8** noundef %file, i32* noundef %line, i8** noundef null, i8** noundef null, i32* noundef null) #11
  ret i64 %call
}

; Function Attrs: noinline nounwind uwtable
define i64 @ERR_get_error_line_data(i8** noundef %file, i32* noundef %line, i8** noundef %data, i32* noundef %flags) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i64 @get_error_values(i32 noundef 0, i8** noundef %file, i32* noundef %line, i8** noundef null, i8** noundef %data, i32* noundef %flags) #11
  ret i64 %call
}

; Function Attrs: noinline nounwind uwtable
define i64 @ERR_peek_error() local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i64 @get_error_values(i32 noundef 1, i8** noundef null, i32* noundef null, i8** noundef null, i8** noundef null, i32* noundef null) #11
  ret i64 %call
}

; Function Attrs: noinline nounwind uwtable
define i64 @ERR_peek_error_line(i8** noundef %file, i32* noundef %line) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i64 @get_error_values(i32 noundef 1, i8** noundef %file, i32* noundef %line, i8** noundef null, i8** noundef null, i32* noundef null) #11
  ret i64 %call
}

; Function Attrs: noinline nounwind uwtable
define i64 @ERR_peek_error_func(i8** noundef %func) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i64 @get_error_values(i32 noundef 1, i8** noundef null, i32* noundef null, i8** noundef %func, i8** noundef null, i32* noundef null) #11
  ret i64 %call
}

; Function Attrs: noinline nounwind uwtable
define i64 @ERR_peek_error_data(i8** noundef %data, i32* noundef %flags) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i64 @get_error_values(i32 noundef 1, i8** noundef null, i32* noundef null, i8** noundef null, i8** noundef %data, i32* noundef %flags) #11
  ret i64 %call
}

; Function Attrs: noinline nounwind uwtable
define i64 @ERR_peek_error_all(i8** noundef %file, i32* noundef %line, i8** noundef %func, i8** noundef %data, i32* noundef %flags) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i64 @get_error_values(i32 noundef 1, i8** noundef %file, i32* noundef %line, i8** noundef %func, i8** noundef %data, i32* noundef %flags) #11
  ret i64 %call
}

; Function Attrs: noinline nounwind uwtable
define i64 @ERR_peek_error_line_data(i8** noundef %file, i32* noundef %line, i8** noundef %data, i32* noundef %flags) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i64 @get_error_values(i32 noundef 1, i8** noundef %file, i32* noundef %line, i8** noundef null, i8** noundef %data, i32* noundef %flags) #11
  ret i64 %call
}

; Function Attrs: noinline nounwind uwtable
define i64 @ERR_peek_last_error() local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i64 @get_error_values(i32 noundef 2, i8** noundef null, i32* noundef null, i8** noundef null, i8** noundef null, i32* noundef null) #11
  ret i64 %call
}

; Function Attrs: noinline nounwind uwtable
define i64 @ERR_peek_last_error_line(i8** noundef %file, i32* noundef %line) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i64 @get_error_values(i32 noundef 2, i8** noundef %file, i32* noundef %line, i8** noundef null, i8** noundef null, i32* noundef null) #11
  ret i64 %call
}

; Function Attrs: noinline nounwind uwtable
define i64 @ERR_peek_last_error_func(i8** noundef %func) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i64 @get_error_values(i32 noundef 2, i8** noundef null, i32* noundef null, i8** noundef %func, i8** noundef null, i32* noundef null) #11
  ret i64 %call
}

; Function Attrs: noinline nounwind uwtable
define i64 @ERR_peek_last_error_data(i8** noundef %data, i32* noundef %flags) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i64 @get_error_values(i32 noundef 2, i8** noundef null, i32* noundef null, i8** noundef null, i8** noundef %data, i32* noundef %flags) #11
  ret i64 %call
}

; Function Attrs: noinline nounwind uwtable
define i64 @ERR_peek_last_error_all(i8** noundef %file, i32* noundef %line, i8** noundef %func, i8** noundef %data, i32* noundef %flags) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i64 @get_error_values(i32 noundef 2, i8** noundef %file, i32* noundef %line, i8** noundef %func, i8** noundef %data, i32* noundef %flags) #11
  ret i64 %call
}

; Function Attrs: noinline nounwind uwtable
define i64 @ERR_peek_last_error_line_data(i8** noundef %file, i32* noundef %line, i8** noundef %data, i32* noundef %flags) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i64 @get_error_values(i32 noundef 2, i8** noundef %file, i32* noundef %line, i8** noundef null, i8** noundef %data, i32* noundef %flags) #11
  ret i64 %call
}

; Function Attrs: noinline nounwind uwtable
define void @ossl_err_string_int(i64 noundef %e, i8* noundef %func, i8* noundef %buf, i64 noundef %len) local_unnamed_addr #0 {
entry:
  %lsbuf = alloca [64 x i8], align 16
  %rsbuf = alloca [256 x i8], align 16
  %0 = getelementptr inbounds [64 x i8], [64 x i8]* %lsbuf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %0) #13
  %1 = getelementptr inbounds [256 x i8], [256 x i8]* %rsbuf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %1) #13
  %cmp = icmp eq i64 %len, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call fastcc i32 @ERR_GET_LIB(i64 noundef %e) #11
  %2 = zext i32 %call to i64
  %call1 = tail call i8* @ERR_lib_error_string(i64 noundef %e) #11
  %cmp2 = icmp eq i8* %call1, null
  br i1 %cmp2, label %if.then4, label %if.end7

if.then4:                                         ; preds = %if.end
  %call5 = call i32 (i8*, i64, i8*, ...) @BIO_snprintf(i8* noundef nonnull %0, i64 noundef 64, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i64 noundef %2) #10
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.end
  %ls.0 = phi i8* [ %0, %if.then4 ], [ %call1, %if.end ]
  %call8 = call fastcc i32 @ERR_GET_REASON(i64 noundef %e) #11
  %3 = zext i32 %call8 to i64
  %and = and i64 %e, 2147483648
  %cmp10.not = icmp eq i64 %and, 0
  br i1 %cmp10.not, label %if.end20, label %if.then12

if.then12:                                        ; preds = %if.end7
  %call15 = call i32 @openssl_strerror_r(i32 noundef %call8, i8* noundef nonnull %1, i64 noundef 256) #10
  %tobool.not = icmp eq i32 %call15, 0
  br i1 %tobool.not, label %if.then23, label %if.end27

if.end20:                                         ; preds = %if.end7
  %call19 = call i8* @ERR_reason_error_string(i64 noundef %e) #11
  %cmp21 = icmp eq i8* %call19, null
  br i1 %cmp21, label %if.then23, label %if.end27

if.then23:                                        ; preds = %if.then12, %if.end20
  %call25 = call i32 (i8*, i64, i8*, ...) @BIO_snprintf(i8* noundef nonnull %1, i64 noundef 256, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i64 noundef %3) #10
  br label %if.end27

if.end27:                                         ; preds = %if.then12, %if.then23, %if.end20
  %rs.1 = phi i8* [ %1, %if.then23 ], [ %call19, %if.end20 ], [ %1, %if.then12 ]
  %call28 = call i32 (i8*, i64, i8*, ...) @BIO_snprintf(i8* noundef %buf, i64 noundef %len, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i64 noundef %e, i8* noundef nonnull %ls.0, i8* noundef %func, i8* noundef nonnull %rs.1) #10
  %call29 = call i64 @strlen(i8* noundef %buf) #14
  %sub = add i64 %len, -1
  %cmp30 = icmp eq i64 %call29, %sub
  br i1 %cmp30, label %if.then32, label %cleanup

if.then32:                                        ; preds = %if.end27
  %call33 = call i32 (i8*, i64, i8*, ...) @BIO_snprintf(i8* noundef %buf, i64 noundef %len, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i64 noundef %e, i64 noundef %2, i64 noundef 0, i64 noundef %3) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %if.then32, %entry
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %1) #13
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %0) #13
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc i32 @ERR_GET_LIB(i64 noundef %errcode) unnamed_addr #2 {
entry:
  %and = and i64 %errcode, 2147483648
  %cmp.not = icmp eq i64 %and, 0
  %0 = trunc i64 %errcode to i32
  %1 = lshr i32 %0, 23
  %conv = and i32 %1, 255
  %retval.0 = select i1 %cmp.not, i32 %conv, i32 2
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i8* @ERR_lib_error_string(i64 noundef %e) local_unnamed_addr #0 {
entry:
  %d = alloca %struct.ERR_string_data_st, align 8
  %0 = bitcast %struct.ERR_string_data_st* %d to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #13
  %call = tail call i32 @CRYPTO_THREAD_run_once(i32* noundef nonnull @err_string_init, void ()* noundef nonnull @do_err_strings_init_ossl_) #10
  %tobool = icmp ne i32 %call, 0
  %1 = load i32, i32* @do_err_strings_init_ossl_ret_, align 4
  %tobool1 = icmp ne i32 %1, 0
  %or.cond = select i1 %tobool, i1 %tobool1, i1 false
  br i1 %or.cond, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call fastcc i32 @ERR_GET_LIB(i64 noundef %e) #11
  %2 = shl i32 %call2, 23
  %3 = and i32 %2, 2139095040
  %shl = zext i32 %3 to i64
  %error = getelementptr inbounds %struct.ERR_string_data_st, %struct.ERR_string_data_st* %d, i64 0, i32 0
  store i64 %shl, i64* %error, align 8, !tbaa !10
  %call3 = call fastcc %struct.ERR_string_data_st* @int_err_get_item(%struct.ERR_string_data_st* noundef nonnull %d) #11
  %cmp = icmp eq %struct.ERR_string_data_st* %call3, null
  br i1 %cmp, label %cleanup, label %cond.false6

cond.false6:                                      ; preds = %if.end
  %string = getelementptr inbounds %struct.ERR_string_data_st, %struct.ERR_string_data_st* %call3, i64 0, i32 1
  %4 = load i8*, i8** %string, align 8, !tbaa !22
  br label %cleanup

cleanup:                                          ; preds = %cond.false6, %if.end, %entry
  %retval.0 = phi i8* [ null, %entry ], [ %4, %cond.false6 ], [ null, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #13
  ret i8* %retval.0
}

declare i32 @BIO_snprintf(i8* noundef, i64 noundef, i8* noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc i32 @ERR_GET_REASON(i64 noundef %errcode) unnamed_addr #2 {
entry:
  %and = and i64 %errcode, 2147483648
  %cmp.not = icmp eq i64 %and, 0
  %0 = trunc i64 %errcode to i32
  %retval.0.v = select i1 %cmp.not, i32 8388607, i32 2147483647
  %retval.0 = and i32 %retval.0.v, %0
  ret i32 %retval.0
}

declare i32 @openssl_strerror_r(i32 noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i8* @ERR_reason_error_string(i64 noundef %e) local_unnamed_addr #0 {
entry:
  %d = alloca %struct.ERR_string_data_st, align 8
  %0 = bitcast %struct.ERR_string_data_st* %d to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #13
  %call = tail call i32 @CRYPTO_THREAD_run_once(i32* noundef nonnull @err_string_init, void ()* noundef nonnull @do_err_strings_init_ossl_) #10
  %tobool = icmp ne i32 %call, 0
  %1 = load i32, i32* @do_err_strings_init_ossl_ret_, align 4
  %tobool1 = icmp ne i32 %1, 0
  %or.cond = select i1 %tobool, i1 %tobool1, i1 false
  %and = and i64 %e, 2147483648
  %cmp.not = icmp eq i64 %and, 0
  %or.cond34 = and i1 %cmp.not, %or.cond
  br i1 %or.cond34, label %if.end3, label %cleanup

if.end3:                                          ; preds = %entry
  %call4 = tail call fastcc i32 @ERR_GET_LIB(i64 noundef %e) #11
  %call5 = tail call fastcc i32 @ERR_GET_REASON(i64 noundef %e) #11
  %2 = shl i32 %call4, 23
  %3 = and i32 %2, 2139095040
  %4 = and i32 %call5, 8388607
  %or33 = or i32 %3, %4
  %or = zext i32 %or33 to i64
  %error = getelementptr inbounds %struct.ERR_string_data_st, %struct.ERR_string_data_st* %d, i64 0, i32 0
  store i64 %or, i64* %error, align 8, !tbaa !10
  %call9 = call fastcc %struct.ERR_string_data_st* @int_err_get_item(%struct.ERR_string_data_st* noundef nonnull %d) #11
  %cmp10 = icmp eq %struct.ERR_string_data_st* %call9, null
  br i1 %cmp10, label %if.end17, label %cond.false21

if.end17:                                         ; preds = %if.end3
  %and8 = zext i32 %4 to i64
  store i64 %and8, i64* %error, align 8, !tbaa !10
  %call16 = call fastcc %struct.ERR_string_data_st* @int_err_get_item(%struct.ERR_string_data_st* noundef nonnull %d) #11
  %cmp18 = icmp eq %struct.ERR_string_data_st* %call16, null
  br i1 %cmp18, label %cleanup, label %cond.false21

cond.false21:                                     ; preds = %if.end3, %if.end17
  %p.037 = phi %struct.ERR_string_data_st* [ %call16, %if.end17 ], [ %call9, %if.end3 ]
  %string = getelementptr inbounds %struct.ERR_string_data_st, %struct.ERR_string_data_st* %p.037, i64 0, i32 1
  %5 = load i8*, i8** %string, align 8, !tbaa !22
  br label %cleanup

cleanup:                                          ; preds = %cond.false21, %if.end17, %entry
  %retval.0 = phi i8* [ null, %entry ], [ %5, %cond.false21 ], [ null, %if.end17 ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #13
  ret i8* %retval.0
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind uwtable
define void @ERR_error_string_n(i64 noundef %e, i8* noundef %buf, i64 noundef %len) local_unnamed_addr #0 {
entry:
  tail call void @ossl_err_string_int(i64 noundef %e, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), i8* noundef %buf, i64 noundef %len) #11
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i8* @ERR_error_string(i64 noundef %e, i8* noundef %ret) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq i8* %ret, null
  %spec.store.select = select i1 %cmp, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @ERR_error_string.buf, i64 0, i64 0), i8* %ret
  tail call void @ERR_error_string_n(i64 noundef %e, i8* noundef %spec.store.select, i64 noundef 256) #11
  ret i8* %spec.store.select
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.ERR_string_data_st* @int_err_get_item(%struct.ERR_string_data_st* noundef %d) unnamed_addr #0 {
entry:
  %0 = load i8*, i8** @err_string_lock, align 8, !tbaa !4
  %call = tail call i32 @CRYPTO_THREAD_read_lock(i8* noundef %0) #10
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %1 = load %struct.lhash_st_ERR_STRING_DATA*, %struct.lhash_st_ERR_STRING_DATA** @int_error_hash, align 8, !tbaa !4
  %call1 = tail call fastcc %struct.lhash_st* @ossl_check_ERR_STRING_DATA_lh_type(%struct.lhash_st_ERR_STRING_DATA* noundef %1) #11
  %2 = bitcast %struct.ERR_string_data_st* %d to i8*
  %call3 = tail call i8* @OPENSSL_LH_retrieve(%struct.lhash_st* noundef %call1, i8* noundef %2) #10
  %3 = bitcast i8* %call3 to %struct.ERR_string_data_st*
  %4 = load i8*, i8** @err_string_lock, align 8, !tbaa !4
  %call4 = tail call i32 @CRYPTO_THREAD_unlock(i8* noundef %4) #10
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi %struct.ERR_string_data_st* [ %3, %if.end ], [ null, %entry ]
  ret %struct.ERR_string_data_st* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define noalias i8* @ERR_func_error_string(i64 noundef %e) local_unnamed_addr #2 {
entry:
  ret i8* null
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define void @ERR_remove_thread_state(i8* nocapture noundef %dummy) local_unnamed_addr #2 {
entry:
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define void @ERR_remove_state(i64 noundef %pid) local_unnamed_addr #2 {
entry:
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare i32* @__errno_location() local_unnamed_addr #6

declare i32 @OPENSSL_init_crypto(i64 noundef, %struct.ossl_init_settings_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal void @err_do_init_ossl_() #0 {
entry:
  %call = tail call fastcc i32 @err_do_init() #11
  store i32 %call, i32* @err_do_init_ossl_ret_, align 4, !tbaa !8
  ret void
}

declare i8* @CRYPTO_THREAD_get_local(i32* noundef) local_unnamed_addr #1

declare i32 @CRYPTO_THREAD_set_local(i32* noundef, i8* noundef) local_unnamed_addr #1

declare i8* @CRYPTO_zalloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare i32 @ossl_init_thread_start(i8* noundef, i8* noundef, void (i8*)* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal void @err_delete_thread_state(i8* nocapture noundef readnone %unused) #0 {
entry:
  %call = tail call i8* @CRYPTO_THREAD_get_local(i32* noundef nonnull @err_thread_local) #10
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %0 = bitcast i8* %call to %struct.err_state_st*
  %call1 = tail call i32 @CRYPTO_THREAD_set_local(i32* noundef nonnull @err_thread_local, i8* noundef null) #10
  tail call fastcc void @ERR_STATE_free(%struct.err_state_st* noundef nonnull %0) #11
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @ERR_STATE_free(%struct.err_state_st* noundef %s) unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.err_state_st* %s, null
  br i1 %cmp, label %cleanup, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  tail call fastcc void @err_clear(%struct.err_state_st* noundef nonnull %s, i64 noundef 0, i32 noundef 1) #11
  tail call fastcc void @err_clear(%struct.err_state_st* noundef nonnull %s, i64 noundef 1, i32 noundef 1) #11
  tail call fastcc void @err_clear(%struct.err_state_st* noundef nonnull %s, i64 noundef 2, i32 noundef 1) #11
  tail call fastcc void @err_clear(%struct.err_state_st* noundef nonnull %s, i64 noundef 3, i32 noundef 1) #11
  tail call fastcc void @err_clear(%struct.err_state_st* noundef nonnull %s, i64 noundef 4, i32 noundef 1) #11
  tail call fastcc void @err_clear(%struct.err_state_st* noundef nonnull %s, i64 noundef 5, i32 noundef 1) #11
  tail call fastcc void @err_clear(%struct.err_state_st* noundef nonnull %s, i64 noundef 6, i32 noundef 1) #11
  tail call fastcc void @err_clear(%struct.err_state_st* noundef nonnull %s, i64 noundef 7, i32 noundef 1) #11
  tail call fastcc void @err_clear(%struct.err_state_st* noundef nonnull %s, i64 noundef 8, i32 noundef 1) #11
  tail call fastcc void @err_clear(%struct.err_state_st* noundef nonnull %s, i64 noundef 9, i32 noundef 1) #11
  tail call fastcc void @err_clear(%struct.err_state_st* noundef nonnull %s, i64 noundef 10, i32 noundef 1) #11
  tail call fastcc void @err_clear(%struct.err_state_st* noundef nonnull %s, i64 noundef 11, i32 noundef 1) #11
  tail call fastcc void @err_clear(%struct.err_state_st* noundef nonnull %s, i64 noundef 12, i32 noundef 1) #11
  tail call fastcc void @err_clear(%struct.err_state_st* noundef nonnull %s, i64 noundef 13, i32 noundef 1) #11
  tail call fastcc void @err_clear(%struct.err_state_st* noundef nonnull %s, i64 noundef 14, i32 noundef 1) #11
  tail call fastcc void @err_clear(%struct.err_state_st* noundef nonnull %s, i64 noundef 15, i32 noundef 1) #11
  %0 = bitcast %struct.err_state_st* %s to i8*
  tail call void @CRYPTO_free(i8* noundef nonnull %0, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32 noundef 199) #10
  br label %cleanup

cleanup:                                          ; preds = %entry, %for.body.preheader
  ret void
}

; Function Attrs: noinline nounwind uwtable
define %struct.err_state_st* @ERR_get_state() local_unnamed_addr #0 {
entry:
  %call = tail call %struct.err_state_st* @ossl_err_get_state_int() #11
  ret %struct.err_state_st* %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @err_shelve_state(i8** nocapture noundef writeonly %state) local_unnamed_addr #0 {
entry:
  %call = tail call i32* @__errno_location() #12
  %0 = load i32, i32* %call, align 4, !tbaa !8
  %call1 = tail call i32 @OPENSSL_init_crypto(i64 noundef 262144, %struct.ossl_init_settings_st* noundef null) #10
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @CRYPTO_THREAD_run_once(i32* noundef nonnull @err_init, void ()* noundef nonnull @err_do_init_ossl_) #10
  %tobool3 = icmp ne i32 %call2, 0
  %1 = load i32, i32* @err_do_init_ossl_ret_, align 4
  %tobool4 = icmp ne i32 %1, 0
  %or.cond = select i1 %tobool3, i1 %tobool4, i1 false
  br i1 %or.cond, label %if.end6, label %cleanup

if.end6:                                          ; preds = %if.end
  %call7 = tail call i8* @CRYPTO_THREAD_get_local(i32* noundef nonnull @err_thread_local) #10
  store i8* %call7, i8** %state, align 8, !tbaa !4
  %call8 = tail call i32 @CRYPTO_THREAD_set_local(i32* noundef nonnull @err_thread_local, i8* noundef nonnull inttoptr (i64 -1 to i8*)) #10
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %cleanup, label %if.end11

if.end11:                                         ; preds = %if.end6
  store i32 %0, i32* %call, align 4, !tbaa !8
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end, %entry, %if.end11
  %retval.0 = phi i32 [ 1, %if.end11 ], [ 0, %entry ], [ 0, %if.end ], [ 0, %if.end6 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define void @err_unshelve_state(i8* noundef %state) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq i8* %state, inttoptr (i64 -1 to i8*)
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i32 @CRYPTO_THREAD_set_local(i32* noundef nonnull @err_thread_local, i8* noundef %state) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @ERR_get_next_error_library() local_unnamed_addr #0 {
entry:
  %call = tail call i32 @CRYPTO_THREAD_run_once(i32* noundef nonnull @err_string_init, void ()* noundef nonnull @do_err_strings_init_ossl_) #10
  %tobool = icmp ne i32 %call, 0
  %0 = load i32, i32* @do_err_strings_init_ossl_ret_, align 4
  %tobool1 = icmp ne i32 %0, 0
  %or.cond = select i1 %tobool, i1 %tobool1, i1 false
  br i1 %or.cond, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** @err_string_lock, align 8, !tbaa !4
  %call2 = tail call i32 @CRYPTO_THREAD_write_lock(i8* noundef %1) #10
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %cleanup, label %if.end5

if.end5:                                          ; preds = %if.end
  %2 = load i32, i32* @int_err_library_number, align 4, !tbaa !8
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* @int_err_library_number, align 4, !tbaa !8
  %3 = load i8*, i8** @err_string_lock, align 8, !tbaa !4
  %call6 = tail call i32 @CRYPTO_THREAD_unlock(i8* noundef %3) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end5
  %retval.0 = phi i32 [ %2, %if.end5 ], [ 0, %entry ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define void @ERR_set_error_data(i8* noundef %data, i32 noundef %flags) local_unnamed_addr #0 {
entry:
  %call = tail call i64 @strlen(i8* noundef %data) #14
  %add = add i64 %call, 1
  %call1 = tail call fastcc i32 @err_set_error_data_int(i8* noundef %data, i64 noundef %add, i32 noundef %flags, i32 noundef 1) #11
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @err_set_error_data_int(i8* noundef %data, i64 noundef %size, i32 noundef %flags, i32 noundef %deallocate) unnamed_addr #0 {
entry:
  %call = tail call %struct.err_state_st* @ossl_err_get_state_int() #11
  %cmp = icmp eq %struct.err_state_st* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %top = getelementptr inbounds %struct.err_state_st, %struct.err_state_st* %call, i64 0, i32 9
  %0 = load i32, i32* %top, align 8, !tbaa !19
  %conv = sext i32 %0 to i64
  tail call fastcc void @err_clear_data(%struct.err_state_st* noundef nonnull %call, i64 noundef %conv, i32 noundef %deallocate) #11
  %1 = load i32, i32* %top, align 8, !tbaa !19
  %conv2 = sext i32 %1 to i64
  tail call fastcc void @err_set_data(%struct.err_state_st* noundef nonnull %call, i64 noundef %conv2, i8* noundef %data, i64 noundef %size, i32 noundef %flags) #11
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define void @ERR_add_error_data(i32 noundef %num, ...) local_unnamed_addr #0 {
entry:
  %args = alloca [1 x %struct.__va_list_tag], align 16
  %0 = bitcast [1 x %struct.__va_list_tag]* %args to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #13
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0
  call void @llvm.va_start(i8* nonnull %0)
  call void @ERR_add_error_vdata(i32 noundef %num, %struct.__va_list_tag* noundef nonnull %arraydecay) #11
  call void @llvm.va_end(i8* nonnull %0)
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #13
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #7

; Function Attrs: noinline nounwind uwtable
define void @ERR_add_error_vdata(i32 noundef %num, %struct.__va_list_tag* nocapture noundef %args) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.err_state_st* @ossl_err_get_state_int() #11
  %cmp = icmp eq %struct.err_state_st* %call, null
  br i1 %cmp, label %cleanup49, label %if.end

if.end:                                           ; preds = %entry
  %top = getelementptr inbounds %struct.err_state_st, %struct.err_state_st* %call, i64 0, i32 9
  %0 = load i32, i32* %top, align 8, !tbaa !19
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds %struct.err_state_st, %struct.err_state_st* %call, i64 0, i32 5, i64 %idxprom
  %1 = load i32, i32* %arrayidx, align 4, !tbaa !8
  %and = and i32 %1, 3
  %cmp1 = icmp eq i32 %and, 3
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  %arrayidx4 = getelementptr inbounds %struct.err_state_st, %struct.err_state_st* %call, i64 0, i32 3, i64 %idxprom
  %2 = load i8*, i8** %arrayidx4, align 8, !tbaa !4
  %arrayidx6 = getelementptr inbounds %struct.err_state_st, %struct.err_state_st* %call, i64 0, i32 4, i64 %idxprom
  %3 = load i64, i64* %arrayidx6, align 8, !tbaa !20
  %conv = trunc i64 %3 to i32
  store i8* null, i8** %arrayidx4, align 8, !tbaa !4
  store i32 0, i32* %arrayidx, align 4, !tbaa !8
  br label %if.end20

if.else:                                          ; preds = %if.end
  %call13 = tail call i8* @CRYPTO_malloc(i64 noundef 81, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32 noundef 816) #10
  %cmp14 = icmp eq i8* %call13, null
  br i1 %cmp14, label %cleanup49, label %if.else17

if.else17:                                        ; preds = %if.else
  store i8 0, i8* %call13, align 1, !tbaa !23
  br label %if.end20

if.end20:                                         ; preds = %if.else17, %if.then2
  %size.0 = phi i32 [ %conv, %if.then2 ], [ 81, %if.else17 ]
  %str.0 = phi i8* [ %2, %if.then2 ], [ %call13, %if.else17 ]
  %cmp2396 = icmp sgt i32 %num, 0
  br i1 %cmp2396, label %while.body.lr.ph, label %if.end20.while.end_crit_edge

if.end20.while.end_crit_edge:                     ; preds = %if.end20
  %.pre103 = sext i32 %size.0 to i64
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end20
  %call21 = tail call i64 @strlen(i8* noundef %str.0) #14
  %gp_offset_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %args, i64 0, i32 0
  %overflow_arg_area_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %args, i64 0, i32 2
  %4 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %args, i64 0, i32 3
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %if.end42
  %dec100.in = phi i32 [ %num, %while.body.lr.ph ], [ %dec100, %if.end42 ]
  %len.099 = phi i64 [ %call21, %while.body.lr.ph ], [ %add, %if.end42 ]
  %str.198 = phi i8* [ %str.0, %while.body.lr.ph ], [ %str.3, %if.end42 ]
  %size.197 = phi i32 [ %size.0, %while.body.lr.ph ], [ %size.2, %if.end42 ]
  %dec100 = add nsw i32 %dec100.in, -1
  %gp_offset = load i32, i32* %gp_offset_p, align 8
  %fits_in_gp = icmp ult i32 %gp_offset, 41
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem

vaarg.in_reg:                                     ; preds = %while.body
  %reg_save_area = load i8*, i8** %4, align 8
  %5 = zext i32 %gp_offset to i64
  %6 = getelementptr i8, i8* %reg_save_area, i64 %5
  %7 = add nuw nsw i32 %gp_offset, 8
  store i32 %7, i32* %gp_offset_p, align 8
  br label %vaarg.end

vaarg.in_mem:                                     ; preds = %while.body
  %overflow_arg_area = load i8*, i8** %overflow_arg_area_p, align 8
  %overflow_arg_area.next = getelementptr i8, i8* %overflow_arg_area, i64 8
  store i8* %overflow_arg_area.next, i8** %overflow_arg_area_p, align 8
  br label %vaarg.end

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %vaarg.addr.in = phi i8* [ %6, %vaarg.in_reg ], [ %overflow_arg_area, %vaarg.in_mem ]
  %vaarg.addr = bitcast i8* %vaarg.addr.in to i8**
  %8 = load i8*, i8** %vaarg.addr, align 8
  %cmp25 = icmp eq i8* %8, null
  %spec.store.select = select i1 %cmp25, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* %8
  %call29 = tail call i64 @strlen(i8* noundef %spec.store.select) #14
  %sext = shl i64 %len.099, 32
  %conv30 = ashr exact i64 %sext, 32
  %add = add i64 %call29, %conv30
  %conv31 = trunc i64 %add to i32
  %cmp32.not = icmp sgt i32 %size.197, %conv31
  br i1 %cmp32.not, label %vaarg.end.if.end42_crit_edge, label %if.then34

vaarg.end.if.end42_crit_edge:                     ; preds = %vaarg.end
  %.pre = sext i32 %size.197 to i64
  br label %if.end42

if.then34:                                        ; preds = %vaarg.end
  %add35 = add nsw i32 %conv31, 20
  %conv36 = sext i32 %add35 to i64
  %call37 = tail call i8* @CRYPTO_realloc(i8* noundef %str.198, i64 noundef %conv36, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32 noundef 832) #10
  %cmp38 = icmp eq i8* %call37, null
  br i1 %cmp38, label %cleanup.thread, label %if.end42

cleanup.thread:                                   ; preds = %if.then34
  tail call void @CRYPTO_free(i8* noundef %str.198, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32 noundef 834) #10
  br label %cleanup49

if.end42:                                         ; preds = %vaarg.end.if.end42_crit_edge, %if.then34
  %conv43.pre-phi = phi i64 [ %.pre, %vaarg.end.if.end42_crit_edge ], [ %conv36, %if.then34 ]
  %size.2 = phi i32 [ %size.197, %vaarg.end.if.end42_crit_edge ], [ %add35, %if.then34 ]
  %str.3 = phi i8* [ %str.198, %vaarg.end.if.end42_crit_edge ], [ %call37, %if.then34 ]
  %call44 = tail call i64 @OPENSSL_strlcat(i8* noundef %str.3, i8* noundef %spec.store.select, i64 noundef %conv43.pre-phi) #10
  %cmp23 = icmp ugt i32 %dec100.in, 1
  br i1 %cmp23, label %while.body, label %while.end, !llvm.loop !24

while.end:                                        ; preds = %if.end42, %if.end20.while.end_crit_edge
  %conv45.pre-phi = phi i64 [ %.pre103, %if.end20.while.end_crit_edge ], [ %conv43.pre-phi, %if.end42 ]
  %str.1.lcssa = phi i8* [ %str.0, %if.end20.while.end_crit_edge ], [ %str.3, %if.end42 ]
  %call46 = tail call fastcc i32 @err_set_error_data_int(i8* noundef %str.1.lcssa, i64 noundef %conv45.pre-phi, i32 noundef 3, i32 noundef 0) #11
  %tobool.not = icmp eq i32 %call46, 0
  br i1 %tobool.not, label %if.then47, label %cleanup49

if.then47:                                        ; preds = %while.end
  tail call void @CRYPTO_free(i8* noundef %str.1.lcssa, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32 noundef 842) #10
  br label %cleanup49

cleanup49:                                        ; preds = %cleanup.thread, %while.end, %if.then47, %if.else, %entry
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #7

declare i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare i8* @CRYPTO_realloc(i8* noundef, i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare i64 @OPENSSL_strlcat(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @ERR_set_mark() local_unnamed_addr #0 {
entry:
  %call = tail call %struct.err_state_st* @ossl_err_get_state_int() #11
  %cmp = icmp eq %struct.err_state_st* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %bottom = getelementptr inbounds %struct.err_state_st, %struct.err_state_st* %call, i64 0, i32 10
  %0 = load i32, i32* %bottom, align 4, !tbaa !17
  %top = getelementptr inbounds %struct.err_state_st, %struct.err_state_st* %call, i64 0, i32 9
  %1 = load i32, i32* %top, align 8, !tbaa !19
  %cmp1 = icmp eq i32 %0, %1
  br i1 %cmp1, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.end
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds %struct.err_state_st, %struct.err_state_st* %call, i64 0, i32 1, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4, !tbaa !8
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %arrayidx, align 4, !tbaa !8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end3
  %retval.0 = phi i32 [ 1, %if.end3 ], [ 0, %entry ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @ERR_pop_to_mark() local_unnamed_addr #0 {
entry:
  %call = tail call %struct.err_state_st* @ossl_err_get_state_int() #11
  %cmp = icmp eq %struct.err_state_st* %call, null
  br i1 %cmp, label %cleanup, label %while.cond.preheader

while.cond.preheader:                             ; preds = %entry
  %bottom = getelementptr inbounds %struct.err_state_st, %struct.err_state_st* %call, i64 0, i32 10
  %top = getelementptr inbounds %struct.err_state_st, %struct.err_state_st* %call, i64 0, i32 9
  %0 = load i32, i32* %bottom, align 4, !tbaa !17
  %1 = load i32, i32* %top, align 8, !tbaa !19
  %cmp1.not37 = icmp eq i32 %0, %1
  br i1 %cmp1.not37, label %cleanup, label %land.rhs

land.rhs:                                         ; preds = %while.cond.preheader, %while.body
  %2 = phi i32 [ %spec.select, %while.body ], [ %1, %while.cond.preheader ]
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds %struct.err_state_st, %struct.err_state_st* %call, i64 0, i32 1, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4, !tbaa !8
  %cmp3 = icmp eq i32 %3, 0
  br i1 %cmp3, label %while.body, label %if.end15

while.body:                                       ; preds = %land.rhs
  tail call fastcc void @err_clear(%struct.err_state_st* noundef nonnull %call, i64 noundef %idxprom, i32 noundef 0) #11
  %4 = load i32, i32* %top, align 8, !tbaa !19
  %cmp6 = icmp sgt i32 %4, 0
  %sub = add nsw i32 %4, -1
  %spec.select = select i1 %cmp6, i32 %sub, i32 15
  store i32 %spec.select, i32* %top, align 8, !tbaa !19
  %5 = load i32, i32* %bottom, align 4, !tbaa !17
  %cmp1.not = icmp eq i32 %5, %spec.select
  br i1 %cmp1.not, label %cleanup, label %land.rhs, !llvm.loop !25

if.end15:                                         ; preds = %land.rhs
  %arrayidx.le = getelementptr inbounds %struct.err_state_st, %struct.err_state_st* %call, i64 0, i32 1, i64 %idxprom
  %dec = add nsw i32 %3, -1
  store i32 %dec, i32* %arrayidx.le, align 4, !tbaa !8
  br label %cleanup

cleanup:                                          ; preds = %while.body, %while.cond.preheader, %entry, %if.end15
  %retval.0 = phi i32 [ 1, %if.end15 ], [ 0, %entry ], [ 0, %while.cond.preheader ], [ 0, %while.body ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @ERR_clear_last_mark() local_unnamed_addr #0 {
entry:
  %call = tail call %struct.err_state_st* @ossl_err_get_state_int() #11
  %cmp = icmp eq %struct.err_state_st* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %top1 = getelementptr inbounds %struct.err_state_st, %struct.err_state_st* %call, i64 0, i32 9
  %0 = load i32, i32* %top1, align 8, !tbaa !19
  %bottom = getelementptr inbounds %struct.err_state_st, %struct.err_state_st* %call, i64 0, i32 10
  %1 = load i32, i32* %bottom, align 4, !tbaa !17
  %cmp2.not26 = icmp eq i32 %1, %0
  br i1 %cmp2.not26, label %cleanup, label %land.rhs

land.rhs:                                         ; preds = %if.end, %while.body
  %top.027 = phi i32 [ %cond, %while.body ], [ %0, %if.end ]
  %idxprom = sext i32 %top.027 to i64
  %arrayidx = getelementptr inbounds %struct.err_state_st, %struct.err_state_st* %call, i64 0, i32 1, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4, !tbaa !8
  %cmp3 = icmp eq i32 %2, 0
  br i1 %cmp3, label %while.body, label %if.end8

while.body:                                       ; preds = %land.rhs
  %cmp4 = icmp sgt i32 %top.027, 0
  %sub = add nsw i32 %top.027, -1
  %cond = select i1 %cmp4, i32 %sub, i32 15
  %cmp2.not = icmp eq i32 %1, %cond
  br i1 %cmp2.not, label %cleanup, label %land.rhs, !llvm.loop !26

if.end8:                                          ; preds = %land.rhs
  %arrayidx.le = getelementptr inbounds %struct.err_state_st, %struct.err_state_st* %call, i64 0, i32 1, i64 %idxprom
  %dec = add nsw i32 %2, -1
  store i32 %dec, i32* %arrayidx.le, align 4, !tbaa !8
  br label %cleanup

cleanup:                                          ; preds = %while.body, %if.end, %entry, %if.end8
  %retval.0 = phi i32 [ 1, %if.end8 ], [ 0, %entry ], [ 0, %if.end ], [ 0, %while.body ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define void @err_clear_last_constant_time(i32 noundef %clear) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.err_state_st* @ossl_err_get_state_int() #11
  %cmp = icmp eq %struct.err_state_st* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %top1 = getelementptr inbounds %struct.err_state_st, %struct.err_state_st* %call, i64 0, i32 9
  %0 = load i32, i32* %top1, align 8, !tbaa !19
  %call2 = tail call fastcc i32 @constant_time_eq_int(i32 noundef %clear) #11
  %call3 = tail call fastcc i32 @constant_time_select_int(i32 noundef %call2) #11
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds %struct.err_state_st, %struct.err_state_st* %call, i64 0, i32 0, i64 %idxprom
  %1 = load i32, i32* %arrayidx, align 4, !tbaa !8
  %or = or i32 %1, %call3
  store i32 %or, i32* %arrayidx, align 4, !tbaa !8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  ret void
}

; Function Attrs: nofree noinline nosync nounwind readnone uwtable
define internal fastcc i32 @constant_time_select_int(i32 noundef %mask) unnamed_addr #8 {
entry:
  %call = tail call fastcc i32 @constant_time_select(i32 noundef %mask) #11
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc i32 @constant_time_eq_int(i32 noundef %a) unnamed_addr #2 {
entry:
  %call = tail call fastcc i32 @constant_time_eq(i32 noundef %a) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @do_err_strings_init() unnamed_addr #0 {
entry:
  %call = tail call i32 @OPENSSL_init_crypto(i64 noundef 262144, %struct.ossl_init_settings_st* noundef null) #10
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call i8* @CRYPTO_THREAD_lock_new() #10
  store i8* %call1, i8** @err_string_lock, align 8, !tbaa !4
  %cmp = icmp eq i8* %call1, null
  br i1 %cmp, label %return, label %if.end3

if.end3:                                          ; preds = %if.end
  %call6 = tail call %struct.lhash_st* @OPENSSL_LH_new(i64 (i8*)* noundef bitcast (i64 (%struct.ERR_string_data_st*)* @err_string_data_hash to i64 (i8*)*), i32 (i8*, i8*)* noundef bitcast (i32 (%struct.ERR_string_data_st*, %struct.ERR_string_data_st*)* @err_string_data_cmp to i32 (i8*, i8*)*)) #10
  store %struct.lhash_st* %call6, %struct.lhash_st** bitcast (%struct.lhash_st_ERR_STRING_DATA** @int_error_hash to %struct.lhash_st**), align 8, !tbaa !4
  %cmp7 = icmp eq %struct.lhash_st* %call6, null
  br i1 %cmp7, label %if.then8, label %return

if.then8:                                         ; preds = %if.end3
  %0 = load i8*, i8** @err_string_lock, align 8, !tbaa !4
  tail call void @CRYPTO_THREAD_lock_free(i8* noundef %0) #10
  store i8* null, i8** @err_string_lock, align 8, !tbaa !4
  br label %return

return:                                           ; preds = %if.end3, %if.end, %entry, %if.then8
  %retval.0 = phi i32 [ 0, %if.then8 ], [ 0, %entry ], [ 0, %if.end ], [ 1, %if.end3 ]
  ret i32 %retval.0
}

declare i8* @CRYPTO_THREAD_lock_new() local_unnamed_addr #1

declare %struct.lhash_st* @OPENSSL_LH_new(i64 (i8*)* noundef, i32 (i8*, i8*)* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal i64 @err_string_data_hash(%struct.ERR_string_data_st* nocapture noundef readonly %a) #9 {
entry:
  %error = getelementptr inbounds %struct.ERR_string_data_st, %struct.ERR_string_data_st* %a, i64 0, i32 0
  %0 = load i64, i64* %error, align 8, !tbaa !10
  %call = tail call fastcc i32 @ERR_GET_LIB(i64 noundef %0) #11
  %1 = zext i32 %call to i64
  %xor = xor i64 %0, %1
  %rem = urem i64 %xor, 19
  %mul = mul nuw nsw i64 %rem, 13
  %xor1 = xor i64 %mul, %xor
  ret i64 %xor1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal i32 @err_string_data_cmp(%struct.ERR_string_data_st* nocapture noundef readonly %a, %struct.ERR_string_data_st* nocapture noundef readonly %b) #9 {
entry:
  %error = getelementptr inbounds %struct.ERR_string_data_st, %struct.ERR_string_data_st* %a, i64 0, i32 0
  %0 = load i64, i64* %error, align 8, !tbaa !10
  %error1 = getelementptr inbounds %struct.ERR_string_data_st, %struct.ERR_string_data_st* %b, i64 0, i32 0
  %1 = load i64, i64* %error1, align 8, !tbaa !10
  %cmp = icmp eq i64 %0, %1
  %cmp4 = icmp ugt i64 %0, %1
  %cond = select i1 %cmp4, i32 1, i32 -1
  %retval.0 = select i1 %cmp, i32 0, i32 %cond
  ret i32 %retval.0
}

declare i8* @OPENSSL_LH_insert(%struct.lhash_st* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @err_clear_data(%struct.err_state_st* nocapture noundef %es, i64 noundef %i, i32 noundef %deall) unnamed_addr #0 {
entry:
  %arrayidx = getelementptr inbounds %struct.err_state_st, %struct.err_state_st* %es, i64 0, i32 5, i64 %i
  %0 = load i32, i32* %arrayidx, align 4, !tbaa !8
  %and = and i32 %0, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else18, label %if.then

if.then:                                          ; preds = %entry
  %tobool1.not = icmp eq i32 %deall, 0
  %arrayidx10 = getelementptr inbounds %struct.err_state_st, %struct.err_state_st* %es, i64 0, i32 3, i64 %i
  %1 = load i8*, i8** %arrayidx10, align 8, !tbaa !4
  br i1 %tobool1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.then
  tail call void @CRYPTO_free(i8* noundef %1, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.86, i64 0, i64 0), i32 noundef 24) #10
  store i8* null, i8** %arrayidx10, align 8, !tbaa !4
  %arrayidx6 = getelementptr inbounds %struct.err_state_st, %struct.err_state_st* %es, i64 0, i32 4, i64 %i
  store i64 0, i64* %arrayidx6, align 8, !tbaa !20
  br label %if.end25.sink.split

if.else:                                          ; preds = %if.then
  %cmp.not = icmp eq i8* %1, null
  br i1 %cmp.not, label %if.end25, label %if.then11

if.then11:                                        ; preds = %if.else
  store i8 0, i8* %1, align 1, !tbaa !23
  br label %if.end25.sink.split

if.else18:                                        ; preds = %entry
  %arrayidx20 = getelementptr inbounds %struct.err_state_st, %struct.err_state_st* %es, i64 0, i32 3, i64 %i
  store i8* null, i8** %arrayidx20, align 8, !tbaa !4
  %arrayidx22 = getelementptr inbounds %struct.err_state_st, %struct.err_state_st* %es, i64 0, i32 4, i64 %i
  store i64 0, i64* %arrayidx22, align 8, !tbaa !20
  br label %if.end25.sink.split

if.end25.sink.split:                              ; preds = %if.else18, %if.then11, %if.then2
  %.sink = phi i32 [ 0, %if.then2 ], [ 1, %if.then11 ], [ 0, %if.else18 ]
  store i32 %.sink, i32* %arrayidx, align 4, !tbaa !8
  br label %if.end25

if.end25:                                         ; preds = %if.end25.sink.split, %if.else
  ret void
}

declare i32 @CRYPTO_THREAD_read_lock(i8* noundef) local_unnamed_addr #1

declare i8* @OPENSSL_LH_retrieve(%struct.lhash_st* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @err_do_init() unnamed_addr #0 {
entry:
  store i1 true, i1* @set_err_thread_local, align 4
  %call = tail call i32 @CRYPTO_THREAD_init_local(i32* noundef nonnull @err_thread_local, void (i8*)* noundef null) #10
  ret i32 %call
}

declare i32 @CRYPTO_THREAD_init_local(i32* noundef, void (i8*)* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @err_set_data(%struct.err_state_st* nocapture noundef %es, i64 noundef %i, i8* noundef %data, i64 noundef %datasz, i32 noundef %flags) unnamed_addr #0 {
entry:
  %arrayidx = getelementptr inbounds %struct.err_state_st, %struct.err_state_st* %es, i64 0, i32 5, i64 %i
  %0 = load i32, i32* %arrayidx, align 4, !tbaa !8
  %and = and i32 %0, 1
  %cmp.not = icmp eq i32 %and, 0
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %arrayidx1 = getelementptr inbounds %struct.err_state_st, %struct.err_state_st* %es, i64 0, i32 3, i64 %i
  %1 = load i8*, i8** %arrayidx1, align 8, !tbaa !4
  tail call void @CRYPTO_free(i8* noundef %1, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.86, i64 0, i64 0), i32 noundef 73) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %arrayidx3 = getelementptr inbounds %struct.err_state_st, %struct.err_state_st* %es, i64 0, i32 3, i64 %i
  store i8* %data, i8** %arrayidx3, align 8, !tbaa !4
  %arrayidx4 = getelementptr inbounds %struct.err_state_st, %struct.err_state_st* %es, i64 0, i32 4, i64 %i
  store i64 %datasz, i64* %arrayidx4, align 8, !tbaa !20
  store i32 %flags, i32* %arrayidx, align 4, !tbaa !8
  ret void
}

; Function Attrs: nofree noinline nosync nounwind readnone uwtable
define internal fastcc i32 @constant_time_select(i32 noundef %mask) unnamed_addr #8 {
entry:
  %call = tail call fastcc i32 @value_barrier(i32 noundef %mask) #11
  %neg = xor i32 %mask, -1
  %call1 = tail call fastcc i32 @value_barrier(i32 noundef %neg) #11
  %and2 = and i32 %call1, 2
  ret i32 %and2
}

; Function Attrs: nofree noinline nosync nounwind readnone uwtable
define internal fastcc i32 @value_barrier(i32 noundef %a) unnamed_addr #8 {
entry:
  %0 = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %a) #15, !srcloc !27
  ret i32 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc i32 @constant_time_eq(i32 noundef %a) unnamed_addr #2 {
entry:
  %call = tail call fastcc i32 @constant_time_is_zero(i32 noundef %a) #11
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc i32 @constant_time_is_zero(i32 noundef %a) unnamed_addr #2 {
entry:
  %neg = xor i32 %a, -1
  %sub = add i32 %a, -1
  %and = and i32 %sub, %neg
  %call = tail call fastcc i32 @constant_time_msb(i32 noundef %and) #11
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc i32 @constant_time_msb(i32 noundef %a) unnamed_addr #2 {
entry:
  %shr.neg = ashr i32 %a, 31
  ret i32 %shr.neg
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #5 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nosync nounwind willreturn }
attributes #8 = { nofree noinline nosync nounwind readnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin nounwind "no-builtins" }
attributes #11 = { nobuiltin "no-builtins" }
attributes #12 = { nobuiltin nounwind readnone willreturn "no-builtins" }
attributes #13 = { nounwind }
attributes #14 = { nobuiltin nounwind readonly willreturn "no-builtins" }
attributes #15 = { nounwind readnone }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !5, i64 0}
!5 = !{!"any pointer", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !6, i64 0}
!10 = !{!11, !12, i64 0}
!11 = !{!"ERR_string_data_st", !12, i64 0, !5, i64 8}
!12 = !{!"long", !6, i64 0}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.mustprogress"}
!15 = distinct !{!15, !14}
!16 = distinct !{!16, !14}
!17 = !{!18, !9, i64 900}
!18 = !{!"err_state_st", !6, i64 0, !6, i64 64, !6, i64 128, !6, i64 256, !6, i64 384, !6, i64 512, !6, i64 576, !6, i64 704, !6, i64 768, !9, i64 896, !9, i64 900}
!19 = !{!18, !9, i64 896}
!20 = !{!12, !12, i64 0}
!21 = distinct !{!21, !14}
!22 = !{!11, !5, i64 8}
!23 = !{!6, !6, i64 0}
!24 = distinct !{!24, !14}
!25 = distinct !{!25, !14}
!26 = distinct !{!26, !14}
!27 = !{i64 984955}
