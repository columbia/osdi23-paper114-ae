; ModuleID = 'crypto/ec/ec_curve.c'
source_filename = "crypto/ec/ec_curve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._ec_list_element_st = type { i32, %struct.EC_CURVE_DATA*, %struct.ec_method_st* ()*, i8* }
%struct.EC_CURVE_DATA = type { i32, i32, i32, i32 }
%struct.ec_method_st = type { i32, i32, i32 (%struct.ec_group_st*)*, void (%struct.ec_group_st*)*, void (%struct.ec_group_st*)*, i32 (%struct.ec_group_st*, %struct.ec_group_st*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*)*, i32 (%struct.ec_group_st*)*, i32 (%struct.ec_group_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_point_st*)*, void (%struct.ec_point_st*)*, void (%struct.ec_point_st*)*, i32 (%struct.ec_point_st*, %struct.ec_point_st*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_st*, i32, %struct.bignum_ctx*)*, i64 (%struct.ec_group_st*, %struct.ec_point_st*, i32, i8*, i64, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, i8*, i64, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, i64, %struct.ec_point_st**, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_st*, i64, %struct.ec_point_st**, %struct.bignum_st**, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i64 (%struct.ec_key_st*, i8*, i64)*, i32 (%struct.ec_key_st*, i8*, i64)*, i32 (%struct.ec_key_st*, %struct.bignum_st*)*, i32 (%struct.ec_key_st*)*, i32 (%struct.ec_key_st*)*, i32 (%struct.ec_key_st*)*, i32 (%struct.ec_key_st*, %struct.ec_key_st*)*, void (%struct.ec_key_st*)*, i32 (i8**, i64*, %struct.ec_point_st*, %struct.ec_key_st*)*, i32 (%struct.ec_key_st*, %struct.bignum_ctx*, %struct.bignum_st**, %struct.bignum_st**)*, %struct.ECDSA_SIG_st* (i8*, i32, %struct.bignum_st*, %struct.bignum_st*, %struct.ec_key_st*)*, i32 (i8*, i32, %struct.ECDSA_SIG_st*, %struct.ec_key_st*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*)* }
%struct.ec_group_st = type { %struct.ec_method_st*, %struct.ec_point_st*, %struct.bignum_st*, %struct.bignum_st*, i32, i32, i32, i32, i8*, i64, %struct.bignum_st*, [6 x i32], %struct.bignum_st*, %struct.bignum_st*, i32, i8*, i8*, i32 (%struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, %struct.bn_mont_ctx_st*, i32, %union.anon, %struct.ossl_lib_ctx_st*, i8* }
%struct.ec_point_st = type { %struct.ec_method_st*, i32, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, i32 }
%struct.bignum_st = type opaque
%struct.bignum_ctx = type opaque
%struct.bn_mont_ctx_st = type opaque
%union.anon = type { %struct.nistp224_pre_comp_st* }
%struct.nistp224_pre_comp_st = type opaque
%struct.ossl_lib_ctx_st = type opaque
%struct.ec_key_st = type { %struct.ec_key_method_st*, %struct.engine_st*, i32, %struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_st*, i32, i32, i32, i32, %struct.crypto_ex_data_st, i8*, %struct.ossl_lib_ctx_st*, i8*, i64 }
%struct.ec_key_method_st = type { i8*, i32, i32 (%struct.ec_key_st*)*, void (%struct.ec_key_st*)*, i32 (%struct.ec_key_st*, %struct.ec_key_st*)*, i32 (%struct.ec_key_st*, %struct.ec_group_st*)*, i32 (%struct.ec_key_st*, %struct.bignum_st*)*, i32 (%struct.ec_key_st*, %struct.ec_point_st*)*, i32 (%struct.ec_key_st*)*, i32 (i8**, i64*, %struct.ec_point_st*, %struct.ec_key_st*)*, i32 (i32, i8*, i32, i8*, i32*, %struct.bignum_st*, %struct.bignum_st*, %struct.ec_key_st*)*, i32 (%struct.ec_key_st*, %struct.bignum_ctx*, %struct.bignum_st**, %struct.bignum_st**)*, %struct.ECDSA_SIG_st* (i8*, i32, %struct.bignum_st*, %struct.bignum_st*, %struct.ec_key_st*)*, i32 (i32, i8*, i32, i8*, i32, %struct.ec_key_st*)*, i32 (i8*, i32, %struct.ECDSA_SIG_st*, %struct.ec_key_st*)* }
%struct.engine_st = type opaque
%struct.crypto_ex_data_st = type { %struct.ossl_lib_ctx_st*, %struct.stack_st_void* }
%struct.stack_st_void = type opaque
%struct.ECDSA_SIG_st = type { %struct.bignum_st*, %struct.bignum_st* }
%struct.anon = type { %struct.EC_CURVE_DATA, [104 x i8] }
%struct.anon.0 = type { %struct.EC_CURVE_DATA, [104 x i8] }
%struct.anon.1 = type { %struct.EC_CURVE_DATA, [116 x i8] }
%struct.anon.2 = type { %struct.EC_CURVE_DATA, [116 x i8] }
%struct.anon.3 = type { %struct.EC_CURVE_DATA, [126 x i8] }
%struct.anon.4 = type { %struct.EC_CURVE_DATA, [146 x i8] }
%struct.anon.5 = type { %struct.EC_CURVE_DATA, [146 x i8] }
%struct.anon.6 = type { %struct.EC_CURVE_DATA, [144 x i8] }
%struct.anon.7 = type { %struct.EC_CURVE_DATA, [174 x i8] }
%struct.anon.8 = type { %struct.EC_CURVE_DATA, [188 x i8] }
%struct.anon.9 = type { %struct.EC_CURVE_DATA, [192 x i8] }
%struct.anon.10 = type { %struct.EC_CURVE_DATA, [308 x i8] }
%struct.anon.11 = type { %struct.EC_CURVE_DATA, [416 x i8] }
%struct.anon.12 = type { %struct.EC_CURVE_DATA, [164 x i8] }
%struct.anon.13 = type { %struct.EC_CURVE_DATA, [164 x i8] }
%struct.anon.14 = type { %struct.EC_CURVE_DATA, [164 x i8] }
%struct.anon.15 = type { %struct.EC_CURVE_DATA, [200 x i8] }
%struct.anon.16 = type { %struct.EC_CURVE_DATA, [200 x i8] }
%struct.anon.17 = type { %struct.EC_CURVE_DATA, [200 x i8] }
%struct.anon.18 = type { %struct.EC_CURVE_DATA, [212 x i8] }
%struct.anon.19 = type { %struct.EC_CURVE_DATA, [110 x i8] }
%struct.anon.20 = type { %struct.EC_CURVE_DATA, [110 x i8] }
%struct.anon.21 = type { %struct.EC_CURVE_DATA, [122 x i8] }
%struct.anon.22 = type { %struct.EC_CURVE_DATA, [122 x i8] }
%struct.anon.23 = type { %struct.EC_CURVE_DATA, [126 x i8] }
%struct.anon.24 = type { %struct.EC_CURVE_DATA, [126 x i8] }
%struct.anon.25 = type { %struct.EC_CURVE_DATA, [126 x i8] }
%struct.anon.26 = type { %struct.EC_CURVE_DATA, [170 x i8] }
%struct.anon.27 = type { %struct.EC_CURVE_DATA, [170 x i8] }
%struct.anon.28 = type { %struct.EC_CURVE_DATA, [180 x i8] }
%struct.anon.29 = type { %struct.EC_CURVE_DATA, [200 x i8] }
%struct.anon.30 = type { %struct.EC_CURVE_DATA, [180 x i8] }
%struct.anon.31 = type { %struct.EC_CURVE_DATA, [216 x i8] }
%struct.anon.32 = type { %struct.EC_CURVE_DATA, [236 x i8] }
%struct.anon.33 = type { %struct.EC_CURVE_DATA, [312 x i8] }
%struct.anon.34 = type { %struct.EC_CURVE_DATA, [332 x i8] }
%struct.anon.35 = type { %struct.EC_CURVE_DATA, [432 x i8] }
%struct.anon.36 = type { %struct.EC_CURVE_DATA, [452 x i8] }
%struct.anon.37 = type { %struct.EC_CURVE_DATA, [146 x i8] }
%struct.anon.38 = type { %struct.EC_CURVE_DATA, [146 x i8] }
%struct.anon.39 = type { %struct.EC_CURVE_DATA, [146 x i8] }
%struct.anon.40 = type { %struct.EC_CURVE_DATA, [138 x i8] }
%struct.anon.41 = type { %struct.EC_CURVE_DATA, [164 x i8] }
%struct.anon.42 = type { %struct.EC_CURVE_DATA, [164 x i8] }
%struct.anon.43 = type { %struct.EC_CURVE_DATA, [164 x i8] }
%struct.anon.44 = type { %struct.EC_CURVE_DATA, [162 x i8] }
%struct.anon.45 = type { %struct.EC_CURVE_DATA, [200 x i8] }
%struct.anon.46 = type { %struct.EC_CURVE_DATA, [200 x i8] }
%struct.anon.47 = type { %struct.EC_CURVE_DATA, [200 x i8] }
%struct.anon.48 = type { %struct.EC_CURVE_DATA, [210 x i8] }
%struct.anon.49 = type { %struct.EC_CURVE_DATA, [234 x i8] }
%struct.anon.50 = type { %struct.EC_CURVE_DATA, [290 x i8] }
%struct.anon.51 = type { %struct.EC_CURVE_DATA, [282 x i8] }
%struct.anon.52 = type { %struct.EC_CURVE_DATA, [324 x i8] }
%struct.anon.53 = type { %struct.EC_CURVE_DATA, [90 x i8] }
%struct.anon.54 = type { %struct.EC_CURVE_DATA, [90 x i8] }
%struct.anon.55 = type { %struct.EC_CURVE_DATA, [126 x i8] }
%struct.anon.56 = type { %struct.EC_CURVE_DATA, [168 x i8] }
%struct.anon.57 = type { %struct.EC_CURVE_DATA, [120 x i8] }
%struct.anon.58 = type { %struct.EC_CURVE_DATA, [144 x i8] }
%struct.anon.59 = type { %struct.EC_CURVE_DATA, [120 x i8] }
%struct.anon.60 = type { %struct.EC_CURVE_DATA, [120 x i8] }
%struct.anon.61 = type { %struct.EC_CURVE_DATA, [144 x i8] }
%struct.anon.62 = type { %struct.EC_CURVE_DATA, [144 x i8] }
%struct.anon.63 = type { %struct.EC_CURVE_DATA, [168 x i8] }
%struct.anon.64 = type { %struct.EC_CURVE_DATA, [168 x i8] }
%struct.anon.65 = type { %struct.EC_CURVE_DATA, [192 x i8] }
%struct.anon.66 = type { %struct.EC_CURVE_DATA, [192 x i8] }
%struct.anon.67 = type { %struct.EC_CURVE_DATA, [240 x i8] }
%struct.anon.68 = type { %struct.EC_CURVE_DATA, [240 x i8] }
%struct.anon.69 = type { %struct.EC_CURVE_DATA, [288 x i8] }
%struct.anon.70 = type { %struct.EC_CURVE_DATA, [288 x i8] }
%struct.anon.71 = type { %struct.EC_CURVE_DATA, [384 x i8] }
%struct.anon.72 = type { %struct.EC_CURVE_DATA, [384 x i8] }
%struct.anon.73 = type { %struct.EC_CURVE_DATA, [192 x i8] }
%struct.asn1_object_st = type opaque
%struct.EC_builtin_curve = type { i32, i8* }

@.str = private unnamed_addr constant [21 x i8] c"crypto/ec/ec_curve.c\00", align 1
@__func__.EC_GROUP_new_by_curve_name_ex = private unnamed_addr constant [30 x i8] c"EC_GROUP_new_by_curve_name_ex\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"name=%s\00", align 1
@curve_list = internal constant [82 x %struct._ec_list_element_st] [%struct._ec_list_element_st { i32 704, %struct.EC_CURVE_DATA* getelementptr inbounds (%struct.anon, %struct.anon* @_EC_SECG_PRIME_112R1, i32 0, i32 0), %struct.ec_method_st* ()* null, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i32 0, i32 0) }, %struct._ec_list_element_st { i32 705, %struct.EC_CURVE_DATA* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @_EC_SECG_PRIME_112R2, i32 0, i32 0), %struct.ec_method_st* ()* null, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i32 0, i32 0) }, %struct._ec_list_element_st { i32 706, %struct.EC_CURVE_DATA* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @_EC_SECG_PRIME_128R1, i32 0, i32 0), %struct.ec_method_st* ()* null, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i32 0, i32 0) }, %struct._ec_list_element_st { i32 707, %struct.EC_CURVE_DATA* getelementptr inbounds (%struct.anon.2, %struct.anon.2* @_EC_SECG_PRIME_128R2, i32 0, i32 0), %struct.ec_method_st* ()* null, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i32 0, i32 0) }, %struct._ec_list_element_st { i32 708, %struct.EC_CURVE_DATA* getelementptr inbounds (%struct.anon.3, %struct.anon.3* @_EC_SECG_PRIME_160K1, i32 0, i32 0), %struct.ec_method_st* ()* null, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i32 0, i32 0) }, %struct._ec_list_element_st { i32 709, %struct.EC_CURVE_DATA* getelementptr inbounds (%struct.anon.4, %struct.anon.4* @_EC_SECG_PRIME_160R1, i32 0, i32 0), %struct.ec_method_st* ()* null, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i32 0, i32 0) }, %struct._ec_list_element_st { i32 710, %struct.EC_CURVE_DATA* getelementptr inbounds (%struct.anon.5, %struct.anon.5* @_EC_SECG_PRIME_160R2, i32 0, i32 0), %struct.ec_method_st* ()* null, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i32 0, i32 0) }, %struct._ec_list_element_st { i32 711, %struct.EC_CURVE_DATA* getelementptr inbounds (%struct.anon.6, %struct.anon.6* @_EC_SECG_PRIME_192K1, i32 0, i32 0), %struct.ec_method_st* ()* null, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i32 0, i32 0) }, %struct._ec_list_element_st { i32 712, %struct.EC_CURVE_DATA* getelementptr inbounds (%struct.anon.7, %struct.anon.7* @_EC_SECG_PRIME_224K1, i32 0, i32 0), %struct.ec_method_st* ()* null, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i32 0, i32 0) }, %struct._ec_list_element_st { i32 713, %struct.EC_CURVE_DATA* getelementptr inbounds (%struct.anon.8, %struct.anon.8* @_EC_NIST_PRIME_224, i32 0, i32 0), %struct.ec_method_st* ()* null, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.9, i32 0, i32 0) }, %struct._ec_list_element_st { i32 714, %struct.EC_CURVE_DATA* getelementptr inbounds (%struct.anon.9, %struct.anon.9* @_EC_SECG_PRIME_256K1, i32 0, i32 0), %struct.ec_method_st* ()* null, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.10, i32 0, i32 0) }, %struct._ec_list_element_st { i32 715, %struct.EC_CURVE_DATA* getelementptr inbounds (%struct.anon.10, %struct.anon.10* @_EC_NIST_PRIME_384, i32 0, i32 0), %struct.ec_method_st* ()* null, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.11, i32 0, i32 0) }, %struct._ec_list_element_st { i32 716, %struct.EC_CURVE_DATA* getelementptr inbounds (%struct.anon.11, %struct.anon.11* @_EC_NIST_PRIME_521, i32 0, i32 0), %struct.ec_method_st* ()* null, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.12, i32 0, i32 0) }, %struct._ec_list_element_st { i32 409, %struct.EC_CURVE_DATA* getelementptr inbounds (%struct.anon.12, %struct.anon.12* @_EC_NIST_PRIME_192, i32 0, i32 0), %struct.ec_method_st* ()* null, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.13, i32 0, i32 0) }, %struct._ec_list_element_st { i32 410, %struct.EC_CURVE_DATA* getelementptr inbounds (%struct.anon.13, %struct.anon.13* @_EC_X9_62_PRIME_192V2, i32 0, i32 0), %struct.ec_method_st* ()* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.14, i32 0, i32 0) }, %struct._ec_list_element_st { i32 411, %struct.EC_CURVE_DATA* getelementptr inbounds (%struct.anon.14, %struct.anon.14* @_EC_X9_62_PRIME_192V3, i32 0, i32 0), %struct.ec_method_st* ()* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.14, i32 0, i32 0) }, %struct._ec_list_element_st { i32 412, %struct.EC_CURVE_DATA* getelementptr inbounds (%struct.anon.15, %struct.anon.15* @_EC_X9_62_PRIME_239V1, i32 0, i32 0), %struct.ec_method_st* ()* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.15, i32 0, i32 0) }, %struct._ec_list_element_st { i32 413, %struct.EC_CURVE_DATA* getelementptr inbounds (%struct.anon.16, %struct.anon.16* @_EC_X9_62_PRIME_239V2, i32 0, i32 0), %struct.ec_method_st* ()* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.15, i32 0, i32 0) }, %struct._ec_list_element_st { i32 414, %struct.EC_CURVE_DATA* getelementptr inbounds (%struct.anon.17, %struct.anon.17* @_EC_X9_62_PRIME_239V3, i32 0, i32 0), %struct.ec_method_st* ()* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.15, i32 0, i32 0) }, %struct._ec_list_element_st { i32 415, %struct.EC_CURVE_DATA* getelementptr inbounds (%struct.anon.18, %struct.anon.18* @_EC_X9_62_PRIME_256V1, i32 0, i32 0), %struct.ec_method_st* ()* @EC_GFp_nistz256_method, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.16, i32 0, i32 0) }, %struct._ec_list_element_st { i32 717, %struct.EC_CURVE_DATA* getelementptr inbounds (%struct.anon.19, %struct.anon.19* @_EC_SECG_CHAR2_113R1, i32 0, i32 0), %struct.ec_method_st* ()* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.17, i32 0, i32 0) }, %struct._ec_list_element_st { i32 718, %struct.EC_CURVE_DATA* getelementptr inbounds (%struct.anon.20, %struct.anon.20* @_EC_SECG_CHAR2_113R2, i32 0, i32 0), %struct.ec_method_st* ()* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.17, i32 0, i32 0) }, %struct._ec_list_element_st { i32 719, %struct.EC_CURVE_DATA* getelementptr inbounds (%struct.anon.21, %struct.anon.21* @_EC_SECG_CHAR2_131R1, i32 0, i32 0), %struct.ec_method_st* ()* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.18, i32 0, i32 0) }, %struct._ec_list_element_st { i32 720, %struct.EC_CURVE_DATA* getelementptr inbounds (%struct.anon.22, %struct.anon.22* @_EC_SECG_CHAR2_131R2, i32 0, i32 0), %struct.ec_method_st* ()* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.19, i32 0, i32 0) }, %struct._ec_list_element_st { i32 721, %struct.EC_CURVE_DATA* getelementptr inbounds (%struct.anon.23, %struct.anon.23* @_EC_NIST_CHAR2_163K, i32 0, i32 0), %struct.ec_method_st* ()* null, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.20, i32 0, i32 0) }, %struct._ec_list_element_st { i32 722, %struct.EC_CURVE_DATA* getelementptr inbounds (%struct.anon.24, %struct.anon.24* @_EC_SECG_CHAR2_163R1, i32 0, i32 0), %struct.ec_method_st* ()* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.21, i32 0, i32 0) }, %struct._ec_list_element_st { i32 723, %struct.EC_CURVE_DATA* getelementptr inbounds (%struct.anon.25, %struct.anon.25* @_EC_NIST_CHAR2_163B, i32 0, i32 0), %struct.ec_method_st* ()* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.22, i32 0, i32 0) }, %struct._ec_list_element_st { i32 724, %struct.EC_CURVE_DATA* getelementptr inbounds (%struct.anon.26, %struct.anon.26* @_EC_SECG_CHAR2_193R1, i32 0, i32 0), %struct.ec_method_st* ()* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.23, i32 0, i32 0) }, %struct._ec_list_element_st { i32 725, %struct.EC_CURVE_DATA* getelementptr inbounds (%struct.anon.27, %struct.anon.27* @_EC_SECG_CHAR2_193R2, i32 0, i32 0), %struct.ec_method_st* ()* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.23, i32 0, i32 0) }, %struct._ec_list_element_st { i32 726, %struct.EC_CURVE_DATA* getelementptr inbounds (%struct.anon.28, %struct.anon.28* @_EC_NIST_CHAR2_233K, i32 0, i32 0), %struct.ec_method_st* ()* null, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.24, i32 0, i32 0) }, %struct._ec_list_element_st { i32 727, %struct.EC_CURVE_DATA* getelementptr inbounds (%struct.anon.29, %struct.anon.29* @_EC_NIST_CHAR2_233B, i32 0, i32 0), %struct.ec_method_st* ()* null, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.24, i32 0, i32 0) }, %struct._ec_list_element_st { i32 728, %struct.EC_CURVE_DATA* getelementptr inbounds (%struct.anon.30, %struct.anon.30* @_EC_SECG_CHAR2_239K1, i32 0, i32 0), %struct.ec_method_st* ()* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.25, i32 0, i32 0) }, %struct._ec_list_element_st { i32 729, %struct.EC_CURVE_DATA* getelementptr inbounds (%struct.anon.31, %struct.anon.31* @_EC_NIST_CHAR2_283K, i32 0, i32 0), %struct.ec_method_st* ()* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.26, i32 0, i32 0) }, %struct._ec_list_element_st { i32 730, %struct.EC_CURVE_DATA* getelementptr inbounds (%struct.anon.32, %struct.anon.32* @_EC_NIST_CHAR2_283B, i32 0, i32 0), %struct.ec_method_st* ()* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.26, i32 0, i32 0) }, %struct._ec_list_element_st { i32 731, %struct.EC_CURVE_DATA* getelementptr inbounds (%struct.anon.33, %struct.anon.33* @_EC_NIST_CHAR2_409K, i32 0, i32 0), %struct.ec_method_st* ()* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.27, i32 0, i32 0) }, %struct._ec_list_element_st { i32 732, %struct.EC_CURVE_DATA* getelementptr inbounds (%struct.anon.34, %struct.anon.34* @_EC_NIST_CHAR2_409B, i32 0, i32 0), %struct.ec_method_st* ()* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.27, i32 0, i32 0) }, %struct._ec_list_element_st { i32 733, %struct.EC_CURVE_DATA* getelementptr inbounds (%struct.anon.35, %struct.anon.35* @_EC_NIST_CHAR2_571K, i32 0, i32 0), %struct.ec_method_st* ()* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.28, i32 0, i32 0) }, %struct._ec_list_element_st { i32 734, %struct.EC_CURVE_DATA* getelementptr inbounds (%struct.anon.36, %struct.anon.36* @_EC_NIST_CHAR2_571B, i32 0, i32 0), %struct.ec_method_st* ()* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.28, i32 0, i32 0) }, %struct._ec_list_element_st { i32 684, %struct.EC_CURVE_DATA* getelementptr inbounds (%struct.anon.37, %struct.anon.37* @_EC_X9_62_CHAR2_163V1, i32 0, i32 0), %struct.ec_method_st* ()* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.29, i32 0, i32 0) }, %struct._ec_list_element_st { i32 685, %struct.EC_CURVE_DATA* getelementptr inbounds (%struct.anon.38, %struct.anon.38* @_EC_X9_62_CHAR2_163V2, i32 0, i32 0), %struct.ec_method_st* ()* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.29, i32 0, i32 0) }, %struct._ec_list_element_st { i32 686, %struct.EC_CURVE_DATA* getelementptr inbounds (%struct.anon.39, %struct.anon.39* @_EC_X9_62_CHAR2_163V3, i32 0, i32 0), %struct.ec_method_st* ()* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.29, i32 0, i32 0) }, %struct._ec_list_element_st { i32 687, %struct.EC_CURVE_DATA* getelementptr inbounds (%struct.anon.40, %struct.anon.40* @_EC_X9_62_CHAR2_176V1, i32 0, i32 0), %struct.ec_method_st* ()* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.30, i32 0, i32 0) }, %struct._ec_list_element_st { i32 688, %struct.EC_CURVE_DATA* getelementptr inbounds (%struct.anon.41, %struct.anon.41* @_EC_X9_62_CHAR2_191V1, i32 0, i32 0), %struct.ec_method_st* ()* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.31, i32 0, i32 0) }, %struct._ec_list_element_st { i32 689, %struct.EC_CURVE_DATA* getelementptr inbounds (%struct.anon.42, %struct.anon.42* @_EC_X9_62_CHAR2_191V2, i32 0, i32 0), %struct.ec_method_st* ()* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.31, i32 0, i32 0) }, %struct._ec_list_element_st { i32 690, %struct.EC_CURVE_DATA* getelementptr inbounds (%struct.anon.43, %struct.anon.43* @_EC_X9_62_CHAR2_191V3, i32 0, i32 0), %struct.ec_method_st* ()* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.31, i32 0, i32 0) }, %struct._ec_list_element_st { i32 693, %struct.EC_CURVE_DATA* getelementptr inbounds (%struct.anon.44, %struct.anon.44* @_EC_X9_62_CHAR2_208W1, i32 0, i32 0), %struct.ec_method_st* ()* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.32, i32 0, i32 0) }, %struct._ec_list_element_st { i32 694, %struct.EC_CURVE_DATA* getelementptr inbounds (%struct.anon.45, %struct.anon.45* @_EC_X9_62_CHAR2_239V1, i32 0, i32 0), %struct.ec_method_st* ()* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.33, i32 0, i32 0) }, %struct._ec_list_element_st { i32 695, %struct.EC_CURVE_DATA* getelementptr inbounds (%struct.anon.46, %struct.anon.46* @_EC_X9_62_CHAR2_239V2, i32 0, i32 0), %struct.ec_method_st* ()* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.33, i32 0, i32 0) }, %struct._ec_list_element_st { i32 696, %struct.EC_CURVE_DATA* getelementptr inbounds (%struct.anon.47, %struct.anon.47* @_EC_X9_62_CHAR2_239V3, i32 0, i32 0), %struct.ec_method_st* ()* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.33, i32 0, i32 0) }, %struct._ec_list_element_st { i32 699, %struct.EC_CURVE_DATA* getelementptr inbounds (%struct.anon.48, %struct.anon.48* @_EC_X9_62_CHAR2_272W1, i32 0, i32 0), %struct.ec_method_st* ()* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.34, i32 0, i32 0) }, %struct._ec_list_element_st { i32 700, %struct.EC_CURVE_DATA* getelementptr inbounds (%struct.anon.49, %struct.anon.49* @_EC_X9_62_CHAR2_304W1, i32 0, i32 0), %struct.ec_method_st* ()* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.35, i32 0, i32 0) }, %struct._ec_list_element_st { i32 701, %struct.EC_CURVE_DATA* getelementptr inbounds (%struct.anon.50, %struct.anon.50* @_EC_X9_62_CHAR2_359V1, i32 0, i32 0), %struct.ec_method_st* ()* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.36, i32 0, i32 0) }, %struct._ec_list_element_st { i32 702, %struct.EC_CURVE_DATA* getelementptr inbounds (%struct.anon.51, %struct.anon.51* @_EC_X9_62_CHAR2_368W1, i32 0, i32 0), %struct.ec_method_st* ()* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.37, i32 0, i32 0) }, %struct._ec_list_element_st { i32 703, %struct.EC_CURVE_DATA* getelementptr inbounds (%struct.anon.52, %struct.anon.52* @_EC_X9_62_CHAR2_431R1, i32 0, i32 0), %struct.ec_method_st* ()* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.38, i32 0, i32 0) }, %struct._ec_list_element_st { i32 735, %struct.EC_CURVE_DATA* getelementptr inbounds (%struct.anon.53, %struct.anon.53* @_EC_WTLS_1, i32 0, i32 0), %struct.ec_method_st* ()* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.39, i32 0, i32 0) }, %struct._ec_list_element_st { i32 736, %struct.EC_CURVE_DATA* getelementptr inbounds (%struct.anon.23, %struct.anon.23* @_EC_NIST_CHAR2_163K, i32 0, i32 0), %struct.ec_method_st* ()* null, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.20, i32 0, i32 0) }, %struct._ec_list_element_st { i32 737, %struct.EC_CURVE_DATA* getelementptr inbounds (%struct.anon.19, %struct.anon.19* @_EC_SECG_CHAR2_113R1, i32 0, i32 0), %struct.ec_method_st* ()* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.17, i32 0, i32 0) }, %struct._ec_list_element_st { i32 738, %struct.EC_CURVE_DATA* getelementptr inbounds (%struct.anon.37, %struct.anon.37* @_EC_X9_62_CHAR2_163V1, i32 0, i32 0), %struct.ec_method_st* ()* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.29, i32 0, i32 0) }, %struct._ec_list_element_st { i32 739, %struct.EC_CURVE_DATA* getelementptr inbounds (%struct.anon, %struct.anon* @_EC_SECG_PRIME_112R1, i32 0, i32 0), %struct.ec_method_st* ()* null, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i32 0, i32 0) }, %struct._ec_list_element_st { i32 740, %struct.EC_CURVE_DATA* getelementptr inbounds (%struct.anon.5, %struct.anon.5* @_EC_SECG_PRIME_160R2, i32 0, i32 0), %struct.ec_method_st* ()* null, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i32 0, i32 0) }, %struct._ec_list_element_st { i32 741, %struct.EC_CURVE_DATA* getelementptr inbounds (%struct.anon.54, %struct.anon.54* @_EC_WTLS_8, i32 0, i32 0), %struct.ec_method_st* ()* null, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.40, i32 0, i32 0) }, %struct._ec_list_element_st { i32 742, %struct.EC_CURVE_DATA* getelementptr inbounds (%struct.anon.55, %struct.anon.55* @_EC_WTLS_9, i32 0, i32 0), %struct.ec_method_st* ()* null, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.41, i32 0, i32 0) }, %struct._ec_list_element_st { i32 743, %struct.EC_CURVE_DATA* getelementptr inbounds (%struct.anon.28, %struct.anon.28* @_EC_NIST_CHAR2_233K, i32 0, i32 0), %struct.ec_method_st* ()* null, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.24, i32 0, i32 0) }, %struct._ec_list_element_st { i32 744, %struct.EC_CURVE_DATA* getelementptr inbounds (%struct.anon.29, %struct.anon.29* @_EC_NIST_CHAR2_233B, i32 0, i32 0), %struct.ec_method_st* ()* null, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.24, i32 0, i32 0) }, %struct._ec_list_element_st { i32 745, %struct.EC_CURVE_DATA* getelementptr inbounds (%struct.anon.56, %struct.anon.56* @_EC_WTLS_12, i32 0, i32 0), %struct.ec_method_st* ()* null, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.42, i32 0, i32 0) }, %struct._ec_list_element_st { i32 749, %struct.EC_CURVE_DATA* getelementptr inbounds (%struct.anon.57, %struct.anon.57* @_EC_IPSEC_155_ID3, i32 0, i32 0), %struct.ec_method_st* ()* null, i8* getelementptr inbounds ([113 x i8], [113 x i8]* @.str.43, i32 0, i32 0) }, %struct._ec_list_element_st { i32 750, %struct.EC_CURVE_DATA* getelementptr inbounds (%struct.anon.58, %struct.anon.58* @_EC_IPSEC_185_ID4, i32 0, i32 0), %struct.ec_method_st* ()* null, i8* getelementptr inbounds ([113 x i8], [113 x i8]* @.str.44, i32 0, i32 0) }, %struct._ec_list_element_st { i32 921, %struct.EC_CURVE_DATA* getelementptr inbounds (%struct.anon.59, %struct.anon.59* @_EC_brainpoolP160r1, i32 0, i32 0), %struct.ec_method_st* ()* null, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.45, i32 0, i32 0) }, %struct._ec_list_element_st { i32 922, %struct.EC_CURVE_DATA* getelementptr inbounds (%struct.anon.60, %struct.anon.60* @_EC_brainpoolP160t1, i32 0, i32 0), %struct.ec_method_st* ()* null, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.45, i32 0, i32 0) }, %struct._ec_list_element_st { i32 923, %struct.EC_CURVE_DATA* getelementptr inbounds (%struct.anon.61, %struct.anon.61* @_EC_brainpoolP192r1, i32 0, i32 0), %struct.ec_method_st* ()* null, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.46, i32 0, i32 0) }, %struct._ec_list_element_st { i32 924, %struct.EC_CURVE_DATA* getelementptr inbounds (%struct.anon.62, %struct.anon.62* @_EC_brainpoolP192t1, i32 0, i32 0), %struct.ec_method_st* ()* null, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.46, i32 0, i32 0) }, %struct._ec_list_element_st { i32 925, %struct.EC_CURVE_DATA* getelementptr inbounds (%struct.anon.63, %struct.anon.63* @_EC_brainpoolP224r1, i32 0, i32 0), %struct.ec_method_st* ()* null, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.47, i32 0, i32 0) }, %struct._ec_list_element_st { i32 926, %struct.EC_CURVE_DATA* getelementptr inbounds (%struct.anon.64, %struct.anon.64* @_EC_brainpoolP224t1, i32 0, i32 0), %struct.ec_method_st* ()* null, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.47, i32 0, i32 0) }, %struct._ec_list_element_st { i32 927, %struct.EC_CURVE_DATA* getelementptr inbounds (%struct.anon.65, %struct.anon.65* @_EC_brainpoolP256r1, i32 0, i32 0), %struct.ec_method_st* ()* null, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.48, i32 0, i32 0) }, %struct._ec_list_element_st { i32 928, %struct.EC_CURVE_DATA* getelementptr inbounds (%struct.anon.66, %struct.anon.66* @_EC_brainpoolP256t1, i32 0, i32 0), %struct.ec_method_st* ()* null, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.48, i32 0, i32 0) }, %struct._ec_list_element_st { i32 929, %struct.EC_CURVE_DATA* getelementptr inbounds (%struct.anon.67, %struct.anon.67* @_EC_brainpoolP320r1, i32 0, i32 0), %struct.ec_method_st* ()* null, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.49, i32 0, i32 0) }, %struct._ec_list_element_st { i32 930, %struct.EC_CURVE_DATA* getelementptr inbounds (%struct.anon.68, %struct.anon.68* @_EC_brainpoolP320t1, i32 0, i32 0), %struct.ec_method_st* ()* null, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.49, i32 0, i32 0) }, %struct._ec_list_element_st { i32 931, %struct.EC_CURVE_DATA* getelementptr inbounds (%struct.anon.69, %struct.anon.69* @_EC_brainpoolP384r1, i32 0, i32 0), %struct.ec_method_st* ()* null, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.50, i32 0, i32 0) }, %struct._ec_list_element_st { i32 932, %struct.EC_CURVE_DATA* getelementptr inbounds (%struct.anon.70, %struct.anon.70* @_EC_brainpoolP384t1, i32 0, i32 0), %struct.ec_method_st* ()* null, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.50, i32 0, i32 0) }, %struct._ec_list_element_st { i32 933, %struct.EC_CURVE_DATA* getelementptr inbounds (%struct.anon.71, %struct.anon.71* @_EC_brainpoolP512r1, i32 0, i32 0), %struct.ec_method_st* ()* null, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.51, i32 0, i32 0) }, %struct._ec_list_element_st { i32 934, %struct.EC_CURVE_DATA* getelementptr inbounds (%struct.anon.72, %struct.anon.72* @_EC_brainpoolP512t1, i32 0, i32 0), %struct.ec_method_st* ()* null, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.51, i32 0, i32 0) }, %struct._ec_list_element_st { i32 1172, %struct.EC_CURVE_DATA* getelementptr inbounds (%struct.anon.73, %struct.anon.73* @_EC_sm2p256v1, i32 0, i32 0), %struct.ec_method_st* ()* null, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.52, i32 0, i32 0) }], align 16
@__func__.ec_group_new_from_data = private unnamed_addr constant [23 x i8] c"ec_group_new_from_data\00", align 1
@_EC_SECG_PRIME_112R1 = internal constant %struct.anon { %struct.EC_CURVE_DATA { i32 406, i32 20, i32 14, i32 1 }, [104 x i8] c"\00\F5\0B\02\8EMinghuaQu)\04rx?\B1\DB|*\BFb\E3^f\80v\BE\AD \8B\DB|*\BFb\E3^f\80v\BE\AD \88e\9E\F8\BA\049\16\EE\DE\89\11p+\22\09Hr9\99Z^\E7kU\F9\C2\F0\98\A8\9C\E5\AF\87$\C0\A2>\0E\0F\F7u\00\DB|*\BFb\E3^v(\DF\ACea\C5" }, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"SECG/WTLS curve over a 112 bit prime field\00", align 1
@_EC_SECG_PRIME_112R2 = internal constant %struct.anon.0 { %struct.EC_CURVE_DATA { i32 406, i32 20, i32 14, i32 4 }, [104 x i8] c"\00'W\A1\11MinghuaQuS\16\C0^\0B\D4\DB|*\BFb\E3^f\80v\BE\AD \8Ba'\C2L\05\F3\8A\0A\AA\F6\\\0E\F0,Q\DE\F1\81]\B5\EDt\FC\C3L\85\D7\09K\A3\0A\B5\E8\92\B4\E1d\9D\D0\92\86C\AD\CDF\F5\88.7G\DE\F3n\95n\976\DF\0A\AF\D8\B8\D7Y|\A1\05 \D0K" }, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"SECG curve over a 112 bit prime field\00", align 1
@_EC_SECG_PRIME_128R1 = internal constant %struct.anon.1 { %struct.EC_CURVE_DATA { i32 406, i32 20, i32 16, i32 1 }, [116 x i8] c"\00\0E\0DMinghuaQu\0C\C0:Ds\D06y\FF\FF\FF\FD\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FD\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FC\E8uy\C1\10y\F4=\D8$\99<,\EE^\D3\16\1F\F7R\8B\89\9B-\0C(`|\A5,[\86\CFZ\C89[\AF\EB\13\C0-\A2\92\DD\EDz\83\FF\FF\FF\FE\00\00\00\00u\A3\0D\1B\908\A1\15" }, align 4
@.str.4 = private unnamed_addr constant [38 x i8] c"SECG curve over a 128 bit prime field\00", align 1
@_EC_SECG_PRIME_128R2 = internal constant %struct.anon.2 { %struct.EC_CURVE_DATA { i32 406, i32 20, i32 16, i32 4 }, [116 x i8] c"\00MinghuaQu\12\D8\F041\FC\E6;\88\F4\FF\FF\FF\FD\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\D6\03\19\98\D1\B3\BB\FE\BFY\CC\9B\BF\F9\AE\E1^\EE\FC\A3\80\D0)\19\DC,eX\BBm\8A]{j\A5\D8^W)\83\E6\FB2\A7\CD\EB\C1@'\B6\91j\89M:\EEq\06\FE\80_\C3KD?\FF\FF\FF\7F\FF\FF\FF\BE\00$r\06\13\B5\A3" }, align 4
@_EC_SECG_PRIME_160K1 = internal constant %struct.anon.3 { %struct.EC_CURVE_DATA { i32 406, i32 0, i32 21, i32 1 }, [126 x i8] c"\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FE\FF\FF\ACs\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\07\00;L8,\E3z\A1\92\A4\01\9Ev06\F4\F5\DDM~\BB\00\93\8C\F951\8F\DC\EDk\C2\82\86S\173\C3\F0<O\EE\01\00\00\00\00\00\00\00\00\00\01\B8\FA\16\DF\AB\9A\CA\16\B6\B3" }, align 4
@.str.5 = private unnamed_addr constant [38 x i8] c"SECG curve over a 160 bit prime field\00", align 1
@_EC_SECG_PRIME_160R1 = internal constant %struct.anon.4 { %struct.EC_CURVE_DATA { i32 406, i32 20, i32 21, i32 1 }, [146 x i8] c"\10S\CD\E4,\14\D6\96\E6v\87V\15\17S;\F3\F83E\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\7F\FF\FF\FF\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\7F\FF\FF\FC\00\1C\97\BE\FCT\BDz\8Be\AC\F8\9F\81\D4\D4\AD\C5e\FAE\00J\96\B5h\8E\F5s(Fdi\89h\C3\8B\B9\13\CB\FC\82\00#\A6(U1h\94}Y\DC\C9\12\04#Q7z\C5\FB2\01\00\00\00\00\00\00\00\00\00\01\F4\C8\F9'\AE\D3\CAu\22W" }, align 4
@_EC_SECG_PRIME_160R2 = internal constant %struct.anon.5 { %struct.EC_CURVE_DATA { i32 406, i32 20, i32 21, i32 1 }, [146 x i8] c"\B9\9B\99\B0\99\B3#\E0'\09\A4\D6\96\E6v\87V\15\17Q\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FE\FF\FF\ACs\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FE\FF\FF\ACp\00\B4\E14\D3\FBY\EB\8B\ABW'I\04fMZ\F5\03\88\BA\00R\DC\B04):\11~\1FO\F1\1B0\F7\19\9D1D\CEm\00\FE\AF\FE\F2\E31\F2\96\E0q\FA\0D\F9\98,\FE\A7\D4?.\01\00\00\00\00\00\00\00\00\00\005\1E\E7\86\A8\18\F3\A1\A1k" }, align 4
@.str.6 = private unnamed_addr constant [43 x i8] c"SECG/WTLS curve over a 160 bit prime field\00", align 1
@_EC_SECG_PRIME_192K1 = internal constant %struct.anon.6 { %struct.EC_CURVE_DATA { i32 406, i32 0, i32 24, i32 1 }, [144 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FE\FF\FF\EE7\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\03\DBO\F1\0E\C0W\E9\AE&\B0}\02\80\B7\F44\1D\A5\D1\B1\EA\E0l}\9B//m\9CV(\A7\84Ac\D0\15\BE\864@\82\AA\88\D9^/\9D\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FE&\F2\FC\17\0FiFjt\DE\FD\8D" }, align 4
@.str.7 = private unnamed_addr constant [38 x i8] c"SECG curve over a 192 bit prime field\00", align 1
@_EC_SECG_PRIME_224K1 = internal constant %struct.anon.7 { %struct.EC_CURVE_DATA { i32 406, i32 0, i32 29, i32 1 }, [174 x i8] c"\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FE\FF\FF\E5m\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\05\00\A1E[3M\F0\99\DF0\FC(\A1i\A4g\E9\E4pu\A9\0F~e\0E\B6\B7\A4\\\00~\08\9F\ED\7F\BA4B\82\CA\FB\D6\F7\E3\19\F7\C0\B0\BDY\E2\CAK\DBUma\A5\01\00\00\00\00\00\00\00\00\00\00\00\00\00\01\DC\E8\D2\ECa\84\CA\F0\A9qv\9F\B1\F7" }, align 4
@.str.8 = private unnamed_addr constant [38 x i8] c"SECG curve over a 224 bit prime field\00", align 1
@_EC_NIST_PRIME_224 = internal constant %struct.anon.8 { %struct.EC_CURVE_DATA { i32 406, i32 20, i32 28, i32 1 }, [188 x i8] c"\BDq4G\99\D5\C7\FC\DCE\B5\9F\A3\B9\AB\8Fj\94\8B\C5\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\00\00\00\00\00\00\00\01\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FE\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FE\B4\05\0A\85\0C\04\B3\AB\F5A2VPD\B0\B7\D7\BF\D8\BA'\0B9C#U\FF\B4\B7\0E\0C\BDk\B4\BF\7F2\13\90\B9J\03\C1\D3V\C2\11\2242\80\D6\11\\\1D!\BD7c\88\B5\F7#\FBL\22\DF\E6\CDCu\A0Z\07GdD\D5\81\99\85\00~4\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\16\A2\E0\B8\F0>\13\DD)E\\\\*=" }, align 4
@.str.9 = private unnamed_addr constant [43 x i8] c"NIST/SECG curve over a 224 bit prime field\00", align 1
@_EC_SECG_PRIME_256K1 = internal constant %struct.anon.9 { %struct.EC_CURVE_DATA { i32 406, i32 0, i32 32, i32 1 }, [192 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FE\FF\FF\FC/\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\07y\BEf~\F9\DC\BB\ACU\A0b\95\CE\87\0B\07\02\9B\FC\DB-\CE(\D9Y\F2\81[\16\F8\17\98H:\DAw&\A3\C4e]\A4\FB\FC\0E\11\08\A8\FD\17\B4H\A6\85T\19\9CG\D0\8F\FB\10\D4\B8\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FE\BA\AE\DC\E6\AFH\A0;\BF\D2^\8C\D06AA" }, align 4
@.str.10 = private unnamed_addr constant [38 x i8] c"SECG curve over a 256 bit prime field\00", align 1
@_EC_NIST_PRIME_384 = internal constant %struct.anon.10 { %struct.EC_CURVE_DATA { i32 406, i32 20, i32 48, i32 1 }, [308 x i8] c"\A35\92j\A3\19\A2z\1D\00\89jgs\A4\82z\CD\ACs\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FE\FF\FF\FF\FF\00\00\00\00\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FE\FF\FF\FF\FF\00\00\00\00\00\00\00\00\FF\FF\FF\FC\B31/\A7\E2>\E7\E4\98\8E\05k\E3\F8-\19\18\1D\9Cn\FE\81A\12\03\14\08\8FP\13\87Z\C6V9\8D\8A.\D1\9D*\85\C8\ED\D3\EC*\EF\AA\87\CA\22\BE\8B\057\8E\B1\C7\1E\F3 \ADtn\1D;b\8B\A7\9B\98Y\F7A\E0\82T*8U\02\F2]\BFU)l:T^8rv\0A\B76\17\DEJ\96&,o]\9E\98\BF\92\92\DC)\F8\F4\1D\BD(\9A\14|\E9\DA1\13\B5\F0\B8\C0\0A`\B1\CE\1D~\81\9DzC\1D|\90\EA\0E_\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\C7cM\81\F47-\DFX\1A\0D\B2H\B0\A7z\EC\EC\19j\CC\C5)s" }, align 4
@.str.11 = private unnamed_addr constant [43 x i8] c"NIST/SECG curve over a 384 bit prime field\00", align 1
@_EC_NIST_PRIME_521 = internal constant %struct.anon.11 { %struct.EC_CURVE_DATA { i32 406, i32 20, i32 66, i32 1 }, [416 x i8] c"\D0\9E\88\00)\1C\B8S\96\CCg\1792\84\AA\A0\DAd\BA\01\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\01\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FC\00Q\95>\B9a\8E\1C\9A\1F\92\9A!\A0\B6\85@\EE\A2\DAr[\99\B3\15\F3\B8\B4\89\91\8E\F1\09\E1V\199Q\EC~\93{\16R\C0\BD;\B1\BF\075s\DF\88=,4\F1\EFE\1F\D4kP?\00\00\C6\85\8E\06\B7\04\04\E9\CD\9E>\CBf#\95\B4B\9Cd\819\05?\B5!\F8(\AF`kM=\BA\A1K^w\EF\E7Y(\FE\1D\C1'\A2\FF\A8\DE3H\B3\C1\85jB\9B\F9~~1\C2\E5\BDf\01\189)jx\9A;\C0\04\\\8A_\B4,}\1B\D9\98\F5DIW\9BDh\17\AF\BD\17'>f,\97\EEr\99^\F4&@\C5P\B9\01?\AD\07a5<p\86\A2r\C2@\88\BE\94v\9F\D1fP\01\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FAQ\86\87\83\BF/\96k\7F\CC\01H\F7\09\A5\D0;\B5\C9\B8\89\9CG\AE\BBo\B7\1E\918d\09" }, align 4
@.str.12 = private unnamed_addr constant [43 x i8] c"NIST/SECG curve over a 521 bit prime field\00", align 1
@_EC_NIST_PRIME_192 = internal constant %struct.anon.12 { %struct.EC_CURVE_DATA { i32 406, i32 20, i32 24, i32 1 }, [164 x i8] c"0E\AEo\C8B/d\EDW\95(\D3\81 \EA\E1!\96\D5\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FE\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FE\FF\FF\FF\FF\FF\FF\FF\FCd!\05\19\E5\9C\80\E7\0F\A7\E9\ABr$0I\FE\B8\DE\EC\C1F\B9\B1\18\8D\A8\0E\B00\90\F6|\BF \EBC\A1\88\00\F4\FF\0A\FD\82\FF\10\12\07\19+\95\FF\C8\DAxc\10\11\EDk$\CD\D5s\F9w\A1\1EyH\11\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\99\DE\F86\14k\C9\B1\B4\D2(1" }, align 4
@.str.13 = private unnamed_addr constant [49 x i8] c"NIST/X9.62/SECG curve over a 192 bit prime field\00", align 1
@_EC_X9_62_PRIME_192V2 = internal constant %struct.anon.13 { %struct.EC_CURVE_DATA { i32 406, i32 20, i32 24, i32 1 }, [164 x i8] c"1\A9.\E2\02\9F\D1\0D\90\1B\11>\99\07\10\F0\D2\1A\C6\B6\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FE\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FE\FF\FF\FF\FF\FF\FF\FF\FC\CC\22\D6\DF\B9\\k%\E4\9C\0Dcd\A4\E5\98\0C9:\A2\16h\D9S\EE\A2\BA\E7\E1IxB\F2\DEwi\CF\E9\C9\89\C0r\ADioH\03Jet\D1\1Di\B6\ECzg+\B8*\08=\F2\F2\B0\84}\E9p\B2\DE\15\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FE_\B1\A7$\DC\80A\86H\D8\DD1" }, align 4
@.str.14 = private unnamed_addr constant [39 x i8] c"X9.62 curve over a 192 bit prime field\00", align 1
@_EC_X9_62_PRIME_192V3 = internal constant %struct.anon.14 { %struct.EC_CURVE_DATA { i32 406, i32 20, i32 24, i32 1 }, [164 x i8] c"\C4ihD5\DE\B3x\C4\B6\\\A9Y\1E*Wc\05\9A.\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FE\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FE\FF\FF\FF\FF\FF\FF\FF\FC\22\12=\C29Z\05\CA\A7B=\AE\CC\C9G`\A7\D4b%k\D5i\16})w\81\00\C6Z\1D\A1x7\16X\8D\CE+\8BJ\EE\8E\22\8F\18\968\A9\0F\22cs73KI\DC\B6jm\C8\F9\97\8A\CAvH\A9C\B0\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FFzb\D01\C8?B\94\F6@\EC\13" }, align 4
@_EC_X9_62_PRIME_239V1 = internal constant %struct.anon.15 { %struct.EC_CURVE_DATA { i32 406, i32 20, i32 30, i32 1 }, [200 x i8] c"\E4;\B4`\F0\B8\0C\C0\C0\B0uy\8E\94\80`\F82\1B}\7F\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\7F\FF\FF\FF\FF\FF\80\00\00\00\00\00\7F\FF\FF\FF\FF\FF\7F\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\7F\FF\FF\FF\FF\FF\80\00\00\00\00\00\7F\FF\FF\FF\FF\FCk\01l;\DC\F1\89A\D0\D6T\92\14u\CAq\A9\DB/\B2}\1D7ya\85\C2\94,\0A\0F\FA\96<\DC\A8\81l\CC3\B8d+\ED\F9\05\C3\D3XW=?'\FB\BD;<\B9\AA\AF}\EB\E8\E4\E9\0A]\AEn@T\CAS\0B\A0FT\B3h\18\CE\22k9\FC\CB{\02\F1\AE\7F\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\7F\FF\FF\9E^\9A\9F]\90q\FB\D1R&\88\90\9D\0B" }, align 4
@.str.15 = private unnamed_addr constant [39 x i8] c"X9.62 curve over a 239 bit prime field\00", align 1
@_EC_X9_62_PRIME_239V2 = internal constant %struct.anon.16 { %struct.EC_CURVE_DATA { i32 406, i32 20, i32 30, i32 1 }, [200 x i8] c"\E8\B4\01\16\04\09S\03\CA;\80\99\98+\E0\9F\CB\9A\E6\16\7F\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\7F\FF\FF\FF\FF\FF\80\00\00\00\00\00\7F\FF\FF\FF\FF\FF\7F\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\7F\FF\FF\FF\FF\FF\80\00\00\00\00\00\7F\FF\FF\FF\FF\FCa\7F\ABh2Wl\BB\FE\D5\0D\99\F0$\9C?\EEX\B9K\A0\03\8Cz\E8L\8C\83/,8\AF\09\D9\87'pQ \C9!\BB^\9E&)j<\DC\F2\F3WW\A0\EA\FD\87\B80\E7[\01%\E4\DB\EA\0E\C7 m\A0\FC\01\D9\B0\812\9F\B5U\DEn\F4`#}\FF\8B\E4\BA\7F\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\80\00\00\CF\A7\E8YCw\D4\14\C08!\BCX c" }, align 4
@_EC_X9_62_PRIME_239V3 = internal constant %struct.anon.17 { %struct.EC_CURVE_DATA { i32 406, i32 20, i32 30, i32 1 }, [200 x i8] c"}st\16\8F\FE4q\B6\0A\85v\86\A1\94u\D3\BF\A2\FF\7F\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\7F\FF\FF\FF\FF\FF\80\00\00\00\00\00\7F\FF\FF\FF\FF\FF\7F\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\7F\FF\FF\FF\FF\FF\80\00\00\00\00\00\7F\FF\FF\FF\FF\FC%W\05\FA*0fT\B1\F4\CB\03\D6\A7P\A3\0C%\01\02\D4\98\87\17\D9\BA\15\ABm>gh\AE\8E\18\BB\92\CF\CF\00\\\94\9A\A2\C6\D9HS\D0\E6`\BB\F8T\B1\C9P_\E9Z\16\07\E6\89\8F9\0C\06\BC\1DU+\AD\22o;o\CF\E4\8Bn\81\84\99\AF\18\E3\EDl\F3\7F\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\7F\FF\FF\97]\EBA\B3\A6\05|<C!FReQ" }, align 4
@_EC_X9_62_PRIME_256V1 = internal constant %struct.anon.18 { %struct.EC_CURVE_DATA { i32 406, i32 20, i32 32, i32 1 }, [212 x i8] c"\C4\9D6\08\86\E7\04\93jfx\E1\13\9D&\B7\81\9F~\90\FF\FF\FF\FF\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FCZ\C65\D8\AA:\93\E7\B3\EB\BDUv\98\86\BCe\1D\06\B0\CCS\B0\F6;\CE<>'\D2`Kk\17\D1\F2\E1,BG\F8\BC\E6\E5c\A4@\F2w\03}\81-\EB3\A0\F4\A19E\D8\98\C2\96O\E3B\E2\FE\1A\7F\9B\8E\E7\EBJ|\0F\9E\16+\CE3Wk1^\CE\CB\B6@h7\BFQ\F5\FF\FF\FF\FF\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\BC\E6\FA\AD\A7\17\9E\84\F3\B9\CA\C2\FCc%Q" }, align 4
@.str.16 = private unnamed_addr constant [44 x i8] c"X9.62/SECG curve over a 256 bit prime field\00", align 1
@_EC_SECG_CHAR2_113R1 = internal constant %struct.anon.19 { %struct.EC_CURVE_DATA { i32 407, i32 20, i32 15, i32 2 }, [110 x i8] c"\10\E7#\AB\14\D6\96\E6v\87V\15\17V\FE\BF\8F\CBI\A9\02\00\00\00\00\00\00\00\00\00\00\00\00\02\01\000\88%\0C\A6\E7\C7\FEd\9C\E8X \F7\00\E8\BE\E4\D3\E2&\07D\18\8B\E0\E9\C7#\00\9Dsao5\F4\AB\14\07\D75b\C1\0F\00\A5(0'yX\EE\84\D11^\D3\18\86\01\00\00\00\00\00\00\00\D9\CC\EC\8A9\E5o" }, align 4
@.str.17 = private unnamed_addr constant [39 x i8] c"SECG curve over a 113 bit binary field\00", align 1
@_EC_SECG_CHAR2_113R2 = internal constant %struct.anon.20 { %struct.EC_CURVE_DATA { i32 407, i32 20, i32 15, i32 2 }, [110 x i8] c"\10\C0\FB\15v\08`\DE\F1\EE\F4\D6\96\E6v\87V\15\17]\02\00\00\00\00\00\00\00\00\00\00\00\00\02\01\00h\99\18\DB\EC~Z\0D\D6\DF\C0\AAU\C7\00\95\E9\A9\EC\9B){\D4\BF6\E0Y\18O\01\A5zj{&\CA^\F5/\CD\B8\16G\97\00\B3\AD\C9N\D1\FEgL\06\E6\95\BA\BA\1D\01\00\00\00\00\00\00\01\08x\9B$\96\AF\93" }, align 4
@_EC_SECG_CHAR2_131R1 = internal constant %struct.anon.21 { %struct.EC_CURVE_DATA { i32 407, i32 20, i32 17, i32 2 }, [122 x i8] c"MinghuaQu\98[\D3\AD\BA\DA!\B4:\97\E2\08\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\0D\07\A1\1B\09\A7kV!DA\8F\F3\FF\8C%p\B8\02\17\C0V\10\88Kc\B9\C6\C7)\16x\F9\D3A\00\81\BA\F9\1F\DF\983\C4\0F\9C\18\13Cc\83\99\07\8Cn~\A3\8C\00\1Fs\C8\13K\1BN\F9\E1P\04\00\00\00\00\00\00\00\021#\95:\94d\B5M" }, align 4
@.str.18 = private unnamed_addr constant [44 x i8] c"SECG/WTLS curve over a 131 bit binary field\00", align 1
@_EC_SECG_CHAR2_131R2 = internal constant %struct.anon.22 { %struct.EC_CURVE_DATA { i32 407, i32 20, i32 17, i32 2 }, [122 x i8] c"\98[\D3\AD\BA\D4\D6\96\E6v\87V\15\17Z!\B4:\97\E3\08\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\0D\03\E5\A8\89\19\D7\CA\FC\BFA_\07\C2\17es\B2\04\B8&jF\C5VW\ACsL\E3\8F\01\8F!\92\03V\DC\D8\F2\F9P1\ADe-#\95\1B\B3f\A8\06H\F0m\86y@\A56m\9E&]\E9\EB$\0F\04\00\00\00\00\00\00\00\01iT\A23\04\9B\A9\8F" }, align 4
@.str.19 = private unnamed_addr constant [39 x i8] c"SECG curve over a 131 bit binary field\00", align 1
@_EC_NIST_CHAR2_163K = internal constant %struct.anon.23 { %struct.EC_CURVE_DATA { i32 407, i32 0, i32 21, i32 2 }, [126 x i8] c"\08\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\C9\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\02\FE\13\C0S{\BC\11\AC\AA\07\D7\93\DENm^\\\94\EE\E8\02\89\07\0F\B0]8\FFX2\1F.\80\056\D58\CC\DA\A3\D9\04\00\00\00\00\00\00\00\00\00\02\01\08\A2\E0\CC\0D\99\F8\A5\EF" }, align 4
@.str.20 = private unnamed_addr constant [49 x i8] c"NIST/SECG/WTLS curve over a 163 bit binary field\00", align 1
@_EC_SECG_CHAR2_163R1 = internal constant %struct.anon.24 { %struct.EC_CURVE_DATA { i32 407, i32 0, i32 21, i32 2 }, [126 x i8] c"\08\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\C9\07\B6\88,\AA\EF\A8O\95T\FF\84(\BD\88\E2F\D2x*\E2\07\13a-\CD\DC\B4\0A\AB\94k\DA)\CA\91\F7:\F9X\AF\D9\03i\97\96\97\ABC\89w\89Vg\89V\7Fxzxv\A6T\00C^\DBB\EF\AF\B2\98\9DQ\FE\FC\E3\C8\09\88\F4\1F\F8\83\03\FF\FF\FF\FF\FF\FF\FF\FF\FF\FFH\AA\B6\89\C2\9C\A7\10'\9B" }, align 4
@.str.21 = private unnamed_addr constant [39 x i8] c"SECG curve over a 163 bit binary field\00", align 1
@_EC_NIST_CHAR2_163B = internal constant %struct.anon.25 { %struct.EC_CURVE_DATA { i32 407, i32 0, i32 21, i32 2 }, [126 x i8] c"\08\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\C9\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\02\0A`\19\07\B8\C9S\CA\14\81\EB\10Q/xtJ2\05\FD\03\F0\EB\A1b\86\A2\D5~\A0\99\11h\D4\99F7\E84>6\00\D5\1F\BClq\A0\09O\A2\CD\D5E\B1\1C\\\0Cys$\F1\04\00\00\00\00\00\00\00\00\00\02\92\FEw\E7\0C\12\A4#L3" }, align 4
@.str.22 = private unnamed_addr constant [44 x i8] c"NIST/SECG curve over a 163 bit binary field\00", align 1
@_EC_SECG_CHAR2_193R1 = internal constant %struct.anon.26 { %struct.EC_CURVE_DATA { i32 407, i32 20, i32 25, i32 2 }, [170 x i8] c"\10?\AE\C7MinghuaQuw\7F\C5\B1\91\EF0\02\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\80\01\00\17\85\8F\EBz\98\97Qi\E1q\F7{@\87\DE\09\8A\C8\A9\11\DF{\01\00\FD\FBI\BF\E6\C3\A8\9F\AC\AD\AAz\1E[\BC|\C1\C2\E5\D81G\88\14\01\F4\81\BC_\0F\F8Jt\ADl\DFo\DE\F4\BFaybSr\D8\C0\C5\E1\00%\E3\99\F2\907\12\CC\F3\EA\9E:\1A\D1\7F\B0\B3 \1Bj\F7\CE\1B\05\01\00\00\00\00\00\00\00\00\00\00\00\00\C7\F3Jw\8FD:\CC\92\0E\BAI" }, align 4
@.str.23 = private unnamed_addr constant [39 x i8] c"SECG curve over a 193 bit binary field\00", align 1
@_EC_SECG_CHAR2_193R2 = internal constant %struct.anon.27 { %struct.EC_CURVE_DATA { i32 407, i32 20, i32 25, i32 2 }, [170 x i8] c"\10\B7\B4\D6\96\E6v\87V\15\17Q7\C8\A1o\D0\DA\22\11\02\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\80\01\01c\F3ZQ7\C2\CE>\A6\ED\86g\19\0B\0B\C4>\CDi\97w\02p\9B\00\C9\BB\9E\89'\D4\D6L7~*\B2\85j[\16\E3\EF\B7\F6\1DC\16\AE\00\D9\B6}\19.\03g\C8\03\F3\9E\1A~\82\CA\14\A6Q5\0A\AEa~\8F\01\CE\943V\07\C3\04\AC)\E7\DE\FB\D9\CA\01\F5\96\F9'\22L\DE\CFl\01\00\00\00\00\00\00\00\00\00\00\00\01Z\ABV\1B\00T\13\CC\D4\EE\99\D5" }, align 4
@_EC_NIST_CHAR2_233K = internal constant %struct.anon.28 { %struct.EC_CURVE_DATA { i32 407, i32 0, i32 30, i32 4 }, [180 x i8] c"\02\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01r2\BA\85:~s\1A\F1)\F2/\F4\14\95c\A4\19\C2k\F5\0AL\9Dn\EF\ADa&\01\DBS}\EC\E8\19\B7\F7\0FUZg\C4'\A8\CD\9B\F1\8A\EB\9BV\E0\C1\10V\FA\E6\A3\00\80\00\00\00\00\00\00\00\00\00\00\00\00\00\06\9D[\B9\15\BC\D4n\FB\1A\D5\F1s\AB\DF" }, align 4
@.str.24 = private unnamed_addr constant [49 x i8] c"NIST/SECG/WTLS curve over a 233 bit binary field\00", align 1
@_EC_NIST_CHAR2_233B = internal constant %struct.anon.29 { %struct.EC_CURVE_DATA { i32 407, i32 20, i32 30, i32 2 }, [200 x i8] c"t\D5\9F\F0\7FkA=\0E\A1K4K \A2\DB\04\9BP\C3\02\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00fd~\DEl3,\7F\8C\09#\BBX!;3; \E9\CEB\81\FE\11_}\8F\90\AD\00\FA\C9\DF\CB\AC\83\13\BB!9\F1\BBu_\EFe\BC9\1F\8B6\F8\F8\EBsq\FDU\8B\01\00j\08\A4\19\035\06x\E5\85(\BE\BF\8A\0B\EF\F8g\A7\CA6qo~\01\F8\10R\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\13\E9t\E7/\8Ai\22\03\1D&\03\CF\E0\D7" }, align 4
@_EC_SECG_CHAR2_239K1 = internal constant %struct.anon.30 { %struct.EC_CURVE_DATA { i32 407, i32 0, i32 30, i32 4 }, [180 x i8] c"\80\00\00\00\00\00\00\00\00\00@\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01)\A0\B6\A8\87\A9\83\E9s\09\88\A6\87'\A8\B2\D1&\C4L\C2\CC{*eU\1905\DCv1\08\04\F1.T\9B\DB\01\1C\100\89\E75\10\AC\B2u\FC1*]\C6\B7eS\F0\CA \00\00\00\00\00\00\00\00\00\00\00\00\00\00Zy\FE\C6|\B6\E9\1F\1C\1D\A8\00\E4x\A5" }, align 4
@.str.25 = private unnamed_addr constant [39 x i8] c"SECG curve over a 239 bit binary field\00", align 1
@_EC_NIST_CHAR2_283K = internal constant %struct.anon.31 { %struct.EC_CURVE_DATA { i32 407, i32 0, i32 36, i32 4 }, [216 x i8] c"\08\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\10\A1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\05\03!?x\CAD\88?\1A;\81b\F1\88\E5S\CD&_#\C1Vz\16\87i\13\B0\C2\AC$XI(6\01\CC\DA8\0F\1C\9E1\8D\90\F9]\07\E5Bo\E8~E\C0\E8\18F\98\E4Yb6N4\11aw\DD\22Y\01\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\E9\AE.\D0uw&]\FF\7F\94E\1E\06\1E\16<a" }, align 4
@.str.26 = private unnamed_addr constant [44 x i8] c"NIST/SECG curve over a 283 bit binary field\00", align 1
@_EC_NIST_CHAR2_283B = internal constant %struct.anon.32 { %struct.EC_CURVE_DATA { i32 407, i32 20, i32 36, i32 2 }, [236 x i8] c"w\E2\B0sp\EB\0F\83*m\D5\B6-\FC\88\CD\06\BB\84\BE\08\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\10\A1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\02{h\0A\C8\B8Ym\A5\A4\AF\8A\19\A00?\CA\97\FDvE0\9F\A2\A5\81HZ\F6&>1;y\A2\F5\05\F99%\8D\B7\DD\90\E1\93O\8Cp\B0\DF\EC.\ED%\B8U~\AC\9C\80\E2\E1\98\F8\CD\BE\CD\86\B1 S\03ghT\FE$\14\1C\B9\8F\E6\D4\B2\0D\02\B4Qo\F7\025\0E\DD\B0\82gy\C8\13\F0\DFE\BE\81\12\F4\03\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\EF\909\96`\FC\93\8A\90\16[\04*|\EF\AD\B3\07" }, align 4
@_EC_NIST_CHAR2_409K = internal constant %struct.anon.33 { %struct.EC_CURVE_DATA { i32 407, i32 0, i32 52, i32 4 }, [312 x i8] c"\02\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\80\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00`\F0_e\8FI\C1\AD:\B1\89\0Fq\84!\0E\FD\09\87\E3\07\C8L'\AC\CF\B8\F9\F6|\C2\C4`\18\9E\B5\AA\AAb\EE\22.\B1\B3U@\CF\E9\027F\01\E3i\05\0B|NB\AC\BA\1D\AC\BF\04)\9C4`x/\91\8E\A4'\E62Qe\E9\EA\10\E3\DA_lB\E9\C5R\15\AA\9C\A2zXc\ECH\D8\E0(k\00\7F\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FE_\83\B2\D4\EA @\0E\C4U}^\D3\E3\E7\CA[K\\\83\B8\E0\1E_\CF" }, align 4
@.str.27 = private unnamed_addr constant [44 x i8] c"NIST/SECG curve over a 409 bit binary field\00", align 1
@_EC_NIST_CHAR2_409B = internal constant %struct.anon.34 { %struct.EC_CURVE_DATA { i32 407, i32 20, i32 52, i32 2 }, [332 x i8] c"@\99\B5\A4W\F9\D6\9Fy!=\09LK\CDMBb!\0B\02\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\80\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00!\A5\C2\C8\EE\9F\EB\\K\9Au;{Gk\7F\D6B.\F1\F3\DDgGa\FA\99\D6\AC'\C8\A9\A1\97\B2r\82/l\D5zU\AAOP\AE1{\13T_\01]H`\D0\88\DD\B3Ik\0C`dub`D\1C\DEJ\F1w\1DM\B0\1F\FE[4\E5\97\03\DC%Z\86\8A\11\80QV\03\AE\AB`yNT\BBy\96\A7\00a\B1\CF\ABk\E5\F3+\BF\A7\83$\ED\10jv6\B9\C5\A7\BD\19\8D\01X\AAOT\88\D0\8F8QO\1F\DFKO@\D2\18\1B6\81\C3d\BA\02s\C7\06\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\E2\AA\D6\A6\12\F33\07\BE_\A4|<\9E\05/\83\81d\CD7\D9\A2\11s" }, align 4
@_EC_NIST_CHAR2_571K = internal constant %struct.anon.35 { %struct.EC_CURVE_DATA { i32 407, i32 0, i32 72, i32 4 }, [432 x i8] c"\08\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\04%\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\02n\B7\A8Y\92?\BC\82\18\961\F8\10?\E4\AC\9C\A2\97\00\12\D5\D4`$\80H\01\84\1C\A4Cp\95\84\93\B2\05\E6G\DA0M\B4\CE\B0\8C\BB\D1\BA9IGv\FB\98\8BG\17M\CA\88\C7\E2\94R\83\A0\1C\89r\03I\DC\80\7FO\BF7OJ\EA\DE;\CA\951M\D5\8C\EC\9F0zT\FF\C6\1E\FC\00m\8A,\9DIy\C0\ACD\AE\A7O\BE\BB\B9\F7r\AE\DC\B6 \B0\1A{\A7\AF\1B2\040\C8Y\19\84\F6\01\CDL\14>\F1\C7\A3\02\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\13\18P\E1\F1\9Ac\E4\B3\91\A8\DB\91\7FA8\B60\D8K\E5\D698\1E\91\DE\B4\\\FEw\8Fc|\10\01" }, align 4
@.str.28 = private unnamed_addr constant [44 x i8] c"NIST/SECG curve over a 571 bit binary field\00", align 1
@_EC_NIST_CHAR2_571B = internal constant %struct.anon.36 { %struct.EC_CURVE_DATA { i32 407, i32 20, i32 72, i32 2 }, [452 x i8] c"*\A0X\F7:\0E3\ABHk\0Fa\04\10\C5:\7F\13#\10\08\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\04%\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\02\F4\0E~\22!\F2\95\DE)q\17\B7\F3\D6/\\j\97\FF\CB\8C\EF\F1\CDk\A8\CEJ\9A\18\AD\84\FF\AB\BD\8E\FAY3+\E7\ADgV\A6n)J\FD\18Zx\FF\12\AAR\0EM\E79\BA\CA\0C\7F\FE\FF\7F)Urz\03\03\00\1D4\B8V)l\16\C0\D4\0D<\D7u\0A\93\D1\D2\95_\A8\0A\A5\F4\0F\C8\DB{*\BD\BD\E59P\F4\C0\D2\93\CD\D7\11\A3[g\FB\14\99\AE`\03\86\14\F19J\BF\A3\B4\C8P\D9'\E1\E7v\9C\8E\EC-\19\03{\F2sB\DAc\9Bm\CC\FF\FE\B7=i\D7\8Cl'\A6\00\9C\BB\CA\19\80\F8S9!\E8\A6\84B>C\BA\B0\8AWb\91\AF\8FF\1B\B2\A8\B3S\1D/\04\85\C1\9B\16\E2\F1Qn#\DD<\1AH'\AF\1B\8A\C1[\03\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\E6a\CE\18\FFU\98s\08\05\9B\18h#\85\1E\C7\DD\9C\A1\16\1D\E9=Qt\D6n\83\82\E9\BB/\E8NG" }, align 4
@_EC_X9_62_CHAR2_163V1 = internal constant %struct.anon.37 { %struct.EC_CURVE_DATA { i32 407, i32 20, i32 21, i32 2 }, [146 x i8] c"\D2\C0\FB\15v\08`\DE\F1\EE\F4\D6\96\E6v\87V\15\17T\08\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\07\07%F\B5CR4\A4\22\E0x\96u\F42\C8\945\DERB\00\C9Q}\06\D5$\0D<\FF8\C7K \B6\CDMo\9D\D4\D9\07\AFi\98\95F\10=y2\9F\CC=t\88\0F3\BB\E8\03\CB\01\EC#!\1BYf\AD\EA\1D?\87\F7\EAXH\AE\F0\B7\CA\9F\04\00\00\00\00\00\00\00\00\00\01\E6\0F\C8\82\1C\C7M\AE\AF\C1" }, align 4
@.str.29 = private unnamed_addr constant [40 x i8] c"X9.62 curve over a 163 bit binary field\00", align 1
@_EC_X9_62_CHAR2_163V2 = internal constant %struct.anon.38 { %struct.EC_CURVE_DATA { i32 407, i32 20, i32 21, i32 2 }, [146 x i8] c"S\81L\05\0DD\D6\96\E6v\87V\15\17X\0C\A4\E2\9F\FD\08\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\07\01\08\B3\9Ew\C4\B1\08\BE\D9\81\ED\0E\89\0E\11|Q\1C\F0r\06g\AC\EB8\AFNH\8C@t3\FF\AEO\1C\81\168\DF \00$&nN\B5\10m\0A\96M\92\C4\86\0E&q\DB\9Bl\C5\07\9FhM\DFf\84\C5\CD%\8B8\90\02\1B#\86\DF\D1\9F\C5\03\FF\FF\FF\FF\FF\FF\FF\FF\FF\FD\F6M\E1\15\1A\DB\B7\8F\10\A7" }, align 4
@_EC_X9_62_CHAR2_163V3 = internal constant %struct.anon.39 { %struct.EC_CURVE_DATA { i32 407, i32 20, i32 21, i32 2 }, [146 x i8] c"P\CB\F1\D9\\\A9MinghuaQu\F1j6\A3\B8\08\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\07\07\A5&\C6=>%\A2V\A0\07i\9FTG\E3*\E4V\B5\0E\03\F7\06\17\98\EB\99\E28\FDo\1B\F9[H\FE\EBHT%+\02\F9\F8{|WM\0B\DE\CF\8A\22\E6RGu\F9\8C\DE\BD\CB\05\B95Y\0C\15^\17\EAH\EB?\F3q\8B\89=\F5\9A\05\D0\03\FF\FF\FF\FF\FF\FF\FF\FF\FF\FE\1A\EE\14\0F\11\0A\FF\96\13\09" }, align 4
@_EC_X9_62_CHAR2_176V1 = internal constant %struct.anon.40 { %struct.EC_CURVE_DATA { i32 407, i32 0, i32 23, i32 65390 }, [138 x i8] c"\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\08\00\00\00\00\07\00\E4\E6\DB)\95\06\\@}\9D9\B8\D0\96{\96pK\A8\E9\C9\0B\00]\DAG\0A\BEd\14\DE\8E\C13\AE(\E9\BB\D7\FC\EC\0A\E0\FF\F2\00\8D\16\C2\86g\98\B6\00\F9\F0\8B\B4\A8\E8`\F3)\8C\E0JW\98\00o\A4S\9C-\AD\DD\D6\BA\B5\16}a\B46\E1\D9+\B1jV,\00\00\01\00\92Ss\97\EC\A4\F6\14W\99\D6+\0A\19\CE\06\FE&\AD" }, align 4
@.str.30 = private unnamed_addr constant [40 x i8] c"X9.62 curve over a 176 bit binary field\00", align 1
@_EC_X9_62_CHAR2_191V1 = internal constant %struct.anon.41 { %struct.EC_CURVE_DATA { i32 407, i32 20, i32 24, i32 2 }, [164 x i8] c"N\13\CAT'D\D6\96\E6v\87V\15\17U/'\9A\8C\84\80\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02\01(fS{ggRcjh\F5eT\E1&@'kd\9E\F7Rbg.E\EFW\1F\00xog\B0\08\1B\94\95\A3\D9Tb\F5\DE\0A\A1\85\EC6\B3\DA\F8\A22\06\F9\C4\F2\99\D7\B2\1A\9C6\917\F2\C8J\E1\AA\0Dv[\E743\B3\F9^3)2\E7\0E\A2E\CA$\18\EA\0E\F9\80\18\FB@\00\00\00\00\00\00\00\00\00\00\00\04\A2\0E\90\C3\90g\C8\93\BB\B9\A5" }, align 4
@.str.31 = private unnamed_addr constant [40 x i8] c"X9.62 curve over a 191 bit binary field\00", align 1
@_EC_X9_62_CHAR2_191V2 = internal constant %struct.anon.42 { %struct.EC_CURVE_DATA { i32 407, i32 20, i32 24, i32 4 }, [164 x i8] c"\08q\EF/\EF$\D6\96\E6v\87V\15\17X\BE\E0\D9\\\15\80\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02\01@\10(wMww\C7\B7fm\13f\EAC q'O\89\FF\01\E7\18\06 \04\8D(\BC\BD\03\B6$\9C\99\18+|\8C\D1\97\00\C3b\C4j\018\09\B2\B7\CC\1B(\CCZ\87\92j\AD\83\FD(x\9E\81\E2\C9\E3\BF\10\17CC\86bm\14\F3\DB\F0\17`\D9!:>\1C\F3z\ECC}f\8A \00\00\00\00\00\00\00\00\00\00\00PP\8C\B8\9Fe($\E0k\81s" }, align 4
@_EC_X9_62_CHAR2_191V3 = internal constant %struct.anon.43 { %struct.EC_CURVE_DATA { i32 407, i32 20, i32 24, i32 6 }, [164 x i8] c"\E0SQ-\C6\84\D6\96\E6v\87V\15\17Pg\AExm\1F\80\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02\01l\01\07GV\09\91\22\22\10V\91\1Cw\D7~w\A7w\E7\E7\E7\7F\CBq\FE\1A\F9&\CF\84y\89\EF\EF\8D\B4Y\F6c\94\D9\0F2\AD?\15\E87]L\E2O\DECD\89\DE\87F\E7\17\86\01P\09\E6n8\A9&\DDTZ9\17a\96W]\98Y\996nj\D3L\E0\A7|\D7\12{\06\BE\15UUUUUUUUUUUa\0C\0B\19h\12\BF\B6(\8A>\A3" }, align 4
@_EC_X9_62_CHAR2_208W1 = internal constant %struct.anon.44 { %struct.EC_CURVE_DATA { i32 407, i32 0, i32 27, i32 65096 }, [162 x i8] c"\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\00\00\07\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\C8a\9E\D4Zb\E6!.\11`4\9E+\FA\84D9\FA\FC*?\D1c\8F\9E\00\89\FD\FB\E4\AB\E1\93\DF\95Y\EC\F0z\C0\CExUN'\84\EB\8C\1E\D1\A5z\00\0FU\B5\1A\06\E7\8E\9A\C3\8A\03_\F5 \D8\B0\17\81\BE\B1\A6\BB\08a}\E3\00\00\01\01\BA\F9\\\97#\C5{l!\DA.\FF-^\D5\88\BD\D5q~!/\9D" }, align 4
@.str.32 = private unnamed_addr constant [40 x i8] c"X9.62 curve over a 208 bit binary field\00", align 1
@_EC_X9_62_CHAR2_239V1 = internal constant %struct.anon.45 { %struct.EC_CURVE_DATA { i32 407, i32 20, i32 30, i32 4 }, [200 x i8] c"\D3K\9AMinghuaQu\CAq\B9 \BF\EF\B0]\80\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\10\00\00\00\012\01\08W\07|T1\12:F\B8\08\90gV\F5CB>\8D'\87ux\12Wx\ACvy\04\08\F2\EE\DA\F3\92\B0\12\ED\EF\B39/0\F42|\0C\A3\F3\1F\C3\83\C4\22\AA\8C\16W\92p\98\FA\93.|\0A\96\D3\FD[pn\F7\E5\F5\C1V\E1k~|\86\03\85R\E9\1Da\D8\EEPw\C3?\EC\F6\F1\A1k&\8D\E4i\C3\C7tN\A9\A9qd\9F\C7\A9ac\05 \00\00\00\00\00\00\00\00\00\00\00\00\00\00\0FMB\FF\E1I*I\93\F1\CA\D6f\E4G" }, align 4
@.str.33 = private unnamed_addr constant [40 x i8] c"X9.62 curve over a 239 bit binary field\00", align 1
@_EC_X9_62_CHAR2_239V2 = internal constant %struct.anon.46 { %struct.EC_CURVE_DATA { i32 407, i32 20, i32 30, i32 6 }, [200 x i8] c"*\A6\98/\DF\A4\D6\96\E6v\87V\15\17]&g''}\80\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\10\00\00\00\01B0\01wW\A7g\FA\E4#\98V\9Btc%\D4S\13\AF\07f&dy\B7VT\E6_P7\EAeA\96\CF\F0\CD\82\B2\C1J/\CF.?\F8wR\85\B5Er/\03\EA\CD\B7K(\F9\D0N\90\00i\C8\DCG\A0\854\FEv\D2\B9\00\B7\D7\EF1\F5p\9F \0CL\A2\05Vg3LE\AF\F3\B5\A0;\AD\9D\D7^,q\A9\93bV}TS\F7\FAn\22~\C83\15UUUUUUUUUUUUUU<o(\85%\9C1\E3\FC\DF\15F$R-" }, align 4
@_EC_X9_62_CHAR2_239V3 = internal constant %struct.anon.47 { %struct.EC_CURVE_DATA { i32 407, i32 20, i32 30, i32 10 }, [200 x i8] c"\9E\07oMinghuaQu\E1\1E\9F\DDw\F9 A\80\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\10\00\00\00\01\01#\87tfjgvmfv\F7x\E6v\B6i\99\17ff\E6\87fm\87f\C6j\9Fj\94\19w\BA\9FjCQ\99\AC\FCQ\06~\D5\87\F5\19\C5\EC\B5A\B8\E4A\11\DE\1D@p\F6\E9\D0M(\9CN\89\91<\E3S\0B\FD\E9\03\97}B\B1F\D59\BF\1B\DEN\9C\92.Z\0E\AFn^\13\05\B9\00M\CE\\\0E\D7\FEY\A3V\08\F387\C8\16\D8\0By\F4a\0C\CC\CC\CC\CC\CC\CC\CC\CC\CC\CC\CC\CC\CC\CC\ACI\12\D2\D9\DF\90>\F9\88\8B\8A\0EL\FF" }, align 4
@_EC_X9_62_CHAR2_272W1 = internal constant %struct.anon.48 { %struct.EC_CURVE_DATA { i32 407, i32 0, i32 35, i32 65286 }, [210 x i8] c"\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\0B\00\91\A0\91\F0;_\BAJ\B2\CC\F4\9CN\DD\22\0F\B0(q-B\BEu+,@\09M\BA\CD\B5\86\FB \00qg\EF\C9+\B2\E3\CE|\8A\AA\FF4\E1*\9CUp\03\D7\C7:o\AF\00?\99\F6\CC\84\82\E5@\F7\00a\08\BA\BB,\EE\BC\F7\87\05\8A\05l\BE\0C\FEb-w#\A2\89\E0\8A\07\AE\13\EF\0D\10\D1q\DD\8D\00\10\C7iW\16\85\1E\EFk\A7\F6\87.aB\FB\D2A\B80\FF^\FC\AC\EC\CA\B0^\02\00]\DE\9D#\00\00\01\00\FA\F5\13T\E0\E3\9EH\92\DFn1\9Cr\C8\16\16\03\FAE\AA{\99\8A\16{\8F\1Eb\95!" }, align 4
@.str.34 = private unnamed_addr constant [40 x i8] c"X9.62 curve over a 272 bit binary field\00", align 1
@_EC_X9_62_CHAR2_304W1 = internal constant %struct.anon.49 { %struct.EC_CURVE_DATA { i32 407, i32 0, i32 39, i32 65070 }, [234 x i8] c"\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\08\07\00\FD\0Di1I\A1\18\F6Q\E6\DC\E6\80 \857~_\88-\1BQ\0BD\16\00t\C1(\80x6Z\03\96\C8\E6\81\00\BD\DB\97\E5U\A5\0A\90\8EC\B0\1Cy\8E\A5\DA\A6x\8F\1E\A2yN\FC\F5qf\B8\C1@9`\1EU\82s@\BE\00\19{\07\84^\9B\E2\D9j\DB\0F_<\7F,\FF\BDz>\B8\B6\FE\C3\\\7F\D6\7F&\DD\F6(ZdOt\0A&\14\00\E1\9F\BE\B7n\0D\A1qQ~\CF@\1BP(\9B\F0\14\102\88Rz\9BAj\10^\80&\0BT\9F\DC\1B\92\C0;\00\00\01\01\D5VW*\AB\AC\80\01\01\D5VW*\AB\AC\80\01\02-\\\91\DD\17?\8F\B5a\DAh\99\16DC\05\1D" }, align 4
@.str.35 = private unnamed_addr constant [40 x i8] c"X9.62 curve over a 304 bit binary field\00", align 1
@_EC_X9_62_CHAR2_359V1 = internal constant %struct.anon.50 { %struct.EC_CURVE_DATA { i32 407, i32 20, i32 45, i32 76 }, [290 x i8] c"+5I \B7$\D6\96\E6v\87V\15\17X[\A13-\C6\80\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\01VggjeK uO5n\A9 \17\D9FV|FgUV\F1\95V\A0F\16\B5g\D2#\A5\E0VV\FBT\90\16\A9fV\A5W$r\E2\D0\19|I6?\1F\E7\F5\B6\DB\07]R\B6\94}\13]\8C\A4E\80]9\BC4V&\08\96\87t+c)\E7\06\80#\19\88<%\8E\F3\04wg\E7\ED\E0\F1\FD\AAy\DA\EE8A6j\13.\16:\CE\D4\ED$\01\DF\9Ck\DC\DE\98\E8\E7\07\C0z\229\B1\B0\97S\D7\E0\85)TpH\12\1E\9C\95\F3y\1D\D8\04\969H\F3O\AE{\F4N\A8#e\DCxh\FEW\E4\AE-\E2\110Z@q\04\BD\01\AF(k\CA\1A\F2\86\BC\A1\AF(k\CA\1A\F2\86\BC\A1\AF(k\C9\FB\8Fk\85\C5V\89, \A7\EB\96O\E7q\9Et\F4\90u\8D;" }, align 4
@.str.36 = private unnamed_addr constant [40 x i8] c"X9.62 curve over a 359 bit binary field\00", align 1
@_EC_X9_62_CHAR2_368W1 = internal constant %struct.anon.51 { %struct.EC_CURVE_DATA { i32 407, i32 0, i32 47, i32 65392 }, [282 x i8] c"\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00 \00\00\00\00\00\00\00\00\00\07\00\E0\D2\EE%\09R\06\F5\E2\A4\F9\ED\22\9F\1F%ny\A0\E2\B4U\97\0D\8D\0D\86[\D9Gx\C5v\D6/\0A\B7Q\9C\CD*\1A\90j\E3\0D\00\FC\12\17\D42\0A\90E,v\0AX\ED\CD0\C8\DD\06\9B<4E87\A3N\D5\0C\B5I\17\E1\C2\11-\84\D1d\F4D\F8\F7G\86\04j\00\10\85\E2uS\81\DC\CC\E3\C1Uz\FA\10\C2\F0\C0\C2\82VF\C5\B3J9L\BC\FA\8B\C1k\22\E7\E7\89\E9'\BE!o\02\E1\FB\13j_\00{>\B1\BD\DC\BAb\D5\D8\B2\05\9BRW\97\FCs\82,Y\05\9Cb:E\FF8C\CE\E8\F8|\D1\85Z\DA\A8\1E*\07P\B8\0F\DA#\10\00\00\01\00\90Q-\A9\AFr\B0\83I\D9\8A]\D4\C7\B0S.\CAQ\CE\03\E2\D1\0F;z\C5y\BD\87\E9\09\AE@\A6\F11\E9\CF\CE[\D9g" }, align 4
@.str.37 = private unnamed_addr constant [40 x i8] c"X9.62 curve over a 368 bit binary field\00", align 1
@_EC_X9_62_CHAR2_431R1 = internal constant %struct.anon.52 { %struct.EC_CURVE_DATA { i32 407, i32 0, i32 54, i32 10080 }, [324 x i8] c"\80\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\1A\82~\F0\0D\D6\FC\0E#L\AF\04lj]\8A\859[#l\C4\AD,\F3*\0C\AD\BD\C9\DD\F6 \B0\EB\99\06\D0\95\7Flo\EA\CDaTh\DF\10M\E2\96\CD\8F\10\D9\B4\A3\D9\04}\8B\15CY\AB\FB\1B\7FT\85\B0L\EB\86\827\DD\C9\DE\DA\98*g\9AZ\91\9BbmNP\A8\DDs\1B\10z\99b8\1F\B5\D8\07\BF&\18\12\0F\C0]<g\A9\9D\E1a\D2\F4\09&\22\FE\CAp\1B\E4\F5\0FGXqN\8A\87\BB\F2\A6X\EF\8C!\E7\C5\EF\E9e6\1Fl)\99\C0\C2G\B0\DB\D7\0C\E6\B7 \D0\AF\89\03\A9o\8D_\A2\C2Ut]<E\1B0,\93F\D9\B7\E4\85\E7\BC\E4\1FkY\1F>\8Fj\DD\CB\B0\BCL/\94z}\E1\A8\9Bb]jY\8B7`\00\03@4\03@4\03@4\03@4\03@4\03@4\03@4\03@4\03@4\03#\C3\13\FA\B5\05\89p;^\C6\8D5\87\FE\C6\0D\16\1C\C1I\C1\ADJ\91" }, align 4
@.str.38 = private unnamed_addr constant [40 x i8] c"X9.62 curve over a 431 bit binary field\00", align 1
@_EC_WTLS_1 = internal constant %struct.anon.53 { %struct.EC_CURVE_DATA { i32 407, i32 0, i32 15, i32 2 }, [90 x i8] c"\02\00\00\00\00\00\00\00\00\00\00\00\00\02\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01fyy\A4\0B\A4\97\E5\D5\C2px\06\17\00\F4KJ\F1\EC\C2c\0E\08x\\\EB\CC\15\00\FF\FF\FF\FF\FF\FF\FF\FD\BF\91\AFm\EAs" }, align 4
@.str.39 = private unnamed_addr constant [39 x i8] c"WTLS curve over a 113 bit binary field\00", align 1
@_EC_WTLS_8 = internal constant %struct.anon.54 { %struct.EC_CURVE_DATA { i32 406, i32 0, i32 15, i32 1 }, [90 x i8] c"\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FD\E7\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\03\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02\01\00\00\00\00\00\00\01\EC\EAU\1A\D87\E9" }, align 4
@.str.40 = private unnamed_addr constant [38 x i8] c"WTLS curve over a 112 bit prime field\00", align 1
@_EC_WTLS_9 = internal constant %struct.anon.55 { %struct.EC_CURVE_DATA { i32 406, i32 0, i32 21, i32 1 }, [126 x i8] c"\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FC\80\8F\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\03\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02\01\00\00\00\00\00\00\00\00\00\01\CD\C9\8A\E0\E2\DEWJ\BF3" }, align 4
@.str.41 = private unnamed_addr constant [38 x i8] c"WTLS curve over a 160 bit prime field\00", align 1
@_EC_WTLS_12 = internal constant %struct.anon.56 { %struct.EC_CURVE_DATA { i32 406, i32 0, i32 28, i32 1 }, [168 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\00\00\00\00\00\00\00\01\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FE\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FE\B4\05\0A\85\0C\04\B3\AB\F5A2VPD\B0\B7\D7\BF\D8\BA'\0B9C#U\FF\B4\B7\0E\0C\BDk\B4\BF\7F2\13\90\B9J\03\C1\D3V\C2\11\2242\80\D6\11\\\1D!\BD7c\88\B5\F7#\FBL\22\DF\E6\CDCu\A0Z\07GdD\D5\81\99\85\00~4\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\16\A2\E0\B8\F0>\13\DD)E\\\\*=" }, align 4
@.str.42 = private unnamed_addr constant [38 x i8] c"WTLS curve over a 224 bit prime field\00", align 1
@_EC_IPSEC_155_ID3 = internal constant %struct.anon.57 { %struct.EC_CURVE_DATA { i32 407, i32 0, i32 20, i32 3 }, [120 x i8] c"\08\00\00\00\00\00\00\00\00\00\00\00@\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\073\8F\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00{\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\C8\02\AA\AA\AA\AA\AA\AA\AA\AA\AA\C7\F3\C7\88\1B\D0\86\8F\A8l" }, align 4
@.str.43 = private unnamed_addr constant [113 x i8] c"\0A\09IPSec/IKE/Oakley curve #3 over a 155 bit binary field.\0A\09Not suitable for ECDSA.\0A\09Questionable extension field!\00", align 1
@_EC_IPSEC_185_ID4 = internal constant %struct.anon.58 { %struct.EC_CURVE_DATA { i32 407, i32 0, i32 24, i32 2 }, [144 x i8] c"\02\00\00\00\00\00\00\00\00\00\00\00\00\00\00 \00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\1E\E9\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\18\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\0D\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\ED\F9|D\DB\9F$ \BA\FC\A7^" }, align 4
@.str.44 = private unnamed_addr constant [113 x i8] c"\0A\09IPSec/IKE/Oakley curve #4 over a 185 bit binary field.\0A\09Not suitable for ECDSA.\0A\09Questionable extension field!\00", align 1
@_EC_brainpoolP160r1 = internal constant %struct.anon.59 { %struct.EC_CURVE_DATA { i32 406, i32 0, i32 20, i32 1 }, [120 x i8] c"\E9^J_spY\DC`\DF\C7\AD\95\B3\D8\13\95\15b\0F4\0E{\E2\A2\80\EBt\E2\BEa\BA\DAt]\97\E8\F7\C3\00\1EX\9A\85\95B4\12\13O\AA-\BD\EC\95\C8\D8g^X\BE\D5\AF\16\EA?jOb\93\8CF1\EBZ\F7\BD\BC\DB\C3\16g\CBGz\1A\8E\C38\F9GAf\9C\97c\16\DAc!\E9^J_spY\DC`\DFY\91\D4P)@\9E`\FC\09" }, align 4
@.str.45 = private unnamed_addr constant [42 x i8] c"RFC 5639 curve over a 160 bit prime field\00", align 1
@_EC_brainpoolP160t1 = internal constant %struct.anon.60 { %struct.EC_CURVE_DATA { i32 406, i32 0, i32 20, i32 1 }, [120 x i8] c"\E9^J_spY\DC`\DF\C7\AD\95\B3\D8\13\95\15b\0F\E9^J_spY\DC`\DF\C7\AD\95\B3\D8\13\95\15b\0CzUkm\AES[{Q\ED,M}\AAz\0B\\U\F3\80\B1\99\B1;\9B4\EF\C19~d\BA\EB\05\AC\C2e\FF#x\AD\D6q\8B||\19a\F0\99\1B\84$Cw!R\C9\E0\AD\E9^J_spY\DC`\DFY\91\D4P)@\9E`\FC\09" }, align 4
@_EC_brainpoolP192r1 = internal constant %struct.anon.61 { %struct.EC_CURVE_DATA { i32 406, i32 0, i32 24, i32 1 }, [144 x i8] c"\C3\02\F4\1D\93*6\CD\A7\A3F0\93\D1\8D\B7\8F\CEGm\E1\A8b\97j\91\17@v\B1\E0\E1\9C9\C01\FE\86\85\C1\CA\E0@\E5\C6\9A(\EFF\9A(\EF|(\CC\A3\DCr\1D\04OD\96\BC\CA~\F4\14o\BF%\C9\C0\A0d~\AA\B6\A4\87S\B03\C5l\B0\F0\90\0A/\\HS7_\D6\14\B6\90\86j\BD[\B8\8B_H(\C1I\00\02\E6w?\A2\FA)\9B\8F\C3\02\F4\1D\93*6\CD\A7\A3F/\9E\9E\91k[\E8\F1\02\9A\C4\AC\C1" }, align 4
@.str.46 = private unnamed_addr constant [42 x i8] c"RFC 5639 curve over a 192 bit prime field\00", align 1
@_EC_brainpoolP192t1 = internal constant %struct.anon.62 { %struct.EC_CURVE_DATA { i32 406, i32 0, i32 24, i32 1 }, [144 x i8] c"\C3\02\F4\1D\93*6\CD\A7\A3F0\93\D1\8D\B7\8F\CEGm\E1\A8b\97\C3\02\F4\1D\93*6\CD\A7\A3F0\93\D1\8D\B7\8F\CEGm\E1\A8b\94\13\D5o\FA\ECxh\1Eh\F9\DE\B4;5\BE\C2\FBhT.'\89{y:\E9\E5\8C\82\F6<0(.\1F\E7\BB\F4?\A7,Dj\F6\F4a\81)\09~,Vg\C2\22:\90*\B5\CAD\9D\00\84\B7\E5\B3\DE|\CC\01\C9\C3\02\F4\1D\93*6\CD\A7\A3F/\9E\9E\91k[\E8\F1\02\9A\C4\AC\C1" }, align 4
@_EC_brainpoolP224r1 = internal constant %struct.anon.63 { %struct.EC_CURVE_DATA { i32 406, i32 0, i32 28, i32 1 }, [168 x i8] c"\D7\C14\AA&Cf\86*\180%u\D1\D7\87\B0\9F\07W\97\DA\89\F5~\C8\C0\FFh\A5\E6,\A9\CEl\1C)\98\03\A6\C1S\0BQN\18*\D8\B0\04*Y\CA\D2\9FC%\80\F6<\CF\E4A8\87\07\13\B1\A9#i\E3>!5\D2f\DB\B3r8l@\0B\0D\90)\AD,~\\\F44\08#\B2\A8}\C6\8C\9EL\E3\17L\1En\FD\EE\12\C0}X\AAV\F7r\C0ro$\C6\B8\9EN\CD\AC$5K\9E\99\CA\A3\F6\D3v\14\02\CD\D7\C14\AA&Cf\86*\180%u\D0\FB\98\D1\16\BCKm\DE\BC\A3\A5\A7\93\9F" }, align 4
@.str.47 = private unnamed_addr constant [42 x i8] c"RFC 5639 curve over a 224 bit prime field\00", align 1
@_EC_brainpoolP224t1 = internal constant %struct.anon.64 { %struct.EC_CURVE_DATA { i32 406, i32 0, i32 28, i32 1 }, [168 x i8] c"\D7\C14\AA&Cf\86*\180%u\D1\D7\87\B0\9F\07W\97\DA\89\F5~\C8\C0\FF\D7\C14\AA&Cf\86*\180%u\D1\D7\87\B0\9F\07W\97\DA\89\F5~\C8\C0\FCK3}\93A\04\CD{\EF'\1B\F6\0C\ED\1E\D2\0D\A1L\08\B3\BBd\F1\8A`\88\8Dj\B1\E3D\CE%\FF8\96BN\7F\FE\14v.\CBI\F8\92\8A\C0\C7`)\B4\D5\80\03t\E9\F5\14>V\8C\D2??M|\0DK\1EA\C8\CC\0D\1Cj\BD_\1AF\DBL\D7\C14\AA&Cf\86*\180%u\D0\FB\98\D1\16\BCKm\DE\BC\A3\A5\A7\93\9F" }, align 4
@_EC_brainpoolP256r1 = internal constant %struct.anon.65 { %struct.EC_CURVE_DATA { i32 406, i32 0, i32 32, i32 1 }, [192 x i8] c"\A9\FBW\DB\A1\EE\A9\BC>f\0A\90\9D\83\8Drn;\F6#\D5& ( \13H\1D\1FnSw}Z\09u\FC,0W\EE\F6u0Az\FF\E7\FB\80U\C1&\DC\\l\E9JKD\F30\B5\D9&\DC\\l\E9JKD\F30\B5\D9\BB\D7|\BF\95\84\16)\\\F7\E1\CEk\CC\DC\18\FF\8C\07\B6\8B\D2\AE\B9\CB~W\CB,KH/\FC\81\B7\AF\B9\DE'\E1\E3\BD#\C2:DS\BD\9A\CE2bT~\F85\C3\DA\C4\FD\97\F8F\1A\14a\1D\C9\C2wE\13-\ED\8ET\\\1DT\C7/\04i\97\A9\FBW\DB\A1\EE\A9\BC>f\0A\90\9D\83\8Dq\8C9z\A3\B5a\A6\F7\90\1E\0E\82\97HV\A7" }, align 4
@.str.48 = private unnamed_addr constant [42 x i8] c"RFC 5639 curve over a 256 bit prime field\00", align 1
@_EC_brainpoolP256t1 = internal constant %struct.anon.66 { %struct.EC_CURVE_DATA { i32 406, i32 0, i32 32, i32 1 }, [192 x i8] c"\A9\FBW\DB\A1\EE\A9\BC>f\0A\90\9D\83\8Drn;\F6#\D5& ( \13H\1D\1FnSw\A9\FBW\DB\A1\EE\A9\BC>f\0A\90\9D\83\8Drn;\F6#\D5& ( \13H\1D\1FnStf,a\C40\D8N\A4\FEf\A7s=\0Bv\B7\BF\93\EB\C4\AF/I%j\E5\81\01\FE\E9+\04\A3\E8\EB<\C1\CF\E7\B7s\22\13\B2:eaI\AF\A1B\C4z\AF\BC+y\A1\91V.\13\05\F4-\99l\8249\C5m\7F{\22\E1FDA~i\BC\B6\DE9\D0'\00\1D\AB\E8\F3[%\C9\BE\A9\FBW\DB\A1\EE\A9\BC>f\0A\90\9D\83\8Dq\8C9z\A3\B5a\A6\F7\90\1E\0E\82\97HV\A7" }, align 4
@_EC_brainpoolP320r1 = internal constant %struct.anon.67 { %struct.EC_CURVE_DATA { i32 406, i32 0, i32 40, i32 1 }, [240 x i8] c"\D3^G 6\BCO\B7\E1<x^\D2\01\E0e\F9\8F\CF\A6\F6\F4\0D\EFO\92\B9\ECx\93\EC(\FC\D4\12\B1\F1\B3.'>\E3\0BV\8F\BA\B0\F8\83\CC\EB\D4m?;\B8\A2\A75\13\F5\EBy\DAf\19\0E\B0\85\FF\A9\F4\92\F3u\A9}\86\0E\B4R\08\83\94\9D\FD\BCB\D3\AD\19\86@h\8Ao\E1?A4\95T\B4\9A\CC1\DC\CD\88E9\81o^\B4\AC\8F\B1\F1\A6C\BD~\9A\FBS\D8\B8R\89\BC\C4\8E\E5\BF\E6\F2\017\D1\0A\08~\B6\E7\87\1E*\10\A5\99\C7\10\AF\8D\0D9\E2\06\11\14\FD\D0UE\EC\1C\C8\AB@\93$\7Fw'^\07C\FF\ED\11q\82\EA\A9\C7xw\AA\ACj\C7\D3RE\D1i.\8E\E1\D3^G 6\BCO\B7\E1<x^\D2\01\E0e\F9\8F\CF\A5\B6\8F\12\A3-H.\C7\EE\86X\E9\86\91U[D\C5\93\11" }, align 4
@.str.49 = private unnamed_addr constant [42 x i8] c"RFC 5639 curve over a 320 bit prime field\00", align 1
@_EC_brainpoolP320t1 = internal constant %struct.anon.68 { %struct.EC_CURVE_DATA { i32 406, i32 0, i32 40, i32 1 }, [240 x i8] c"\D3^G 6\BCO\B7\E1<x^\D2\01\E0e\F9\8F\CF\A6\F6\F4\0D\EFO\92\B9\ECx\93\EC(\FC\D4\12\B1\F1\B3.'\D3^G 6\BCO\B7\E1<x^\D2\01\E0e\F9\8F\CF\A6\F6\F4\0D\EFO\92\B9\ECx\93\EC(\FC\D4\12\B1\F1\B3.$\A7\F5a\E08\EB\1E\D5`\B3\D1G\DBx \13\06L\19\F2~\D2|g\80\AA\F7\7F\B8\A5G\CE\B5\B4\FE\F4\224\03S\92[\E9\FB\01\AF\C6\FBM>}I\90\01\0F\814\08\AB\10lO\09\CB~\E0xh\CC\13o\FF3W\F6$\A2\1B\EDRc\BA:z'H>\BFfq\DB\EFz\BB0\EB\EE\08NX\A0\B0w\ADB\A5\A0\98\9D\1E\E7\1B\1B\9B\C0E_\B0\D2\C3\D3^G 6\BCO\B7\E1<x^\D2\01\E0e\F9\8F\CF\A5\B6\8F\12\A3-H.\C7\EE\86X\E9\86\91U[D\C5\93\11" }, align 4
@_EC_brainpoolP384r1 = internal constant %struct.anon.69 { %struct.EC_CURVE_DATA { i32 406, i32 0, i32 48, i32 1 }, [288 x i8] c"\8C\B9\1E\82\A38m(\0F]o~P\E6A\DF\15/q\09\EDTV\B4\12\B1\DA\19\7F\B7\11#\AC\D3\A7)\90\1D\1Aq\87G\00\131\07\ECS{\C3\82\C6=\8C\15\0C<r\08\0A\CE\05\AF\A0\C2\BE\A2\8EO\B2'\87\13\91e\EF\BA\91\F9\0F\8A\A5\81JP:\D4\EB\04\A8\C7\DD\22\CE(&\04\A8\C7\DD\22\CE(&\8B9\B5T\16\F0D|/\B7}\E1\07\DC\D2\A6.\88\0E\A5>\EBb\D5|\B49\02\95\DB\C9\94:\B7\86\96\FAPL\11\1D\1Cd\F0h\CFE\FF\A2\A6:\81\B7\C1?k\88G\A3\E7~\F1O\E3\DB\7F\CA\FE\0C\BD\10\E8\E8&\E046\D6F\AA\EF\87\B2\E2G\D4\AF\1E\8A\BE\1Du \F9\C2\A4\\\B1\EB\8E\95\CF\D5Rb\B7\0B)\FE\ECXd\E1\9C\05O\F9\91)(\0EFF!w\91\81\11B\82\03A&<S\15\8C\B9\1E\82\A38m(\0F]o~P\E6A\DF\15/q\09\EDTV\B3\1F\16nl\AC\04%\A7\CF:\B6\AFk\7F\C3\10;\882\02\E9\04ee" }, align 4
@.str.50 = private unnamed_addr constant [42 x i8] c"RFC 5639 curve over a 384 bit prime field\00", align 1
@_EC_brainpoolP384t1 = internal constant %struct.anon.70 { %struct.EC_CURVE_DATA { i32 406, i32 0, i32 48, i32 1 }, [288 x i8] c"\8C\B9\1E\82\A38m(\0F]o~P\E6A\DF\15/q\09\EDTV\B4\12\B1\DA\19\7F\B7\11#\AC\D3\A7)\90\1D\1Aq\87G\00\131\07\ECS\8C\B9\1E\82\A38m(\0F]o~P\E6A\DF\15/q\09\EDTV\B4\12\B1\DA\19\7F\B7\11#\AC\D3\A7)\90\1D\1Aq\87G\00\131\07\ECP\7FQ\9E\AD\A7\BD\A8\1B\D8&\DB\A6G\91\0F\8CK\93F\ED\8C\CD\C6NK\1A\BD\11um\CE\1D t\AA&;\88\80\\\EDp5Z3\B4q\EE\18\DE\98\B0-\B9\A3\06\F2\AF\CDr5\F7*\81\9B\80\AB\12\EB\D6S\17$v\FE\CDF*\AB\FF\C4\FF\19\1B\94j_T\D8\D0\AA/A\88\08\CC%\AB\05ib\D3\06Q\A1\14\AF\D2uZ\D36t\7F\93G[z\1F\CA;\88\F2\B6\A2\08\CC\FEF\94\08XM\C2\B2\91&u\BF[\9EX)(\8C\B9\1E\82\A38m(\0F]o~P\E6A\DF\15/q\09\EDTV\B3\1F\16nl\AC\04%\A7\CF:\B6\AFk\7F\C3\10;\882\02\E9\04ee" }, align 4
@_EC_brainpoolP512r1 = internal constant %struct.anon.71 { %struct.EC_CURVE_DATA { i32 406, i32 0, i32 64, i32 1 }, [384 x i8] c"\AA\DD\9D\B8\DB\E9\C4\8B?\D4\E6\AE3\C9\FC\07\CB0\8D\B3\B3\C9\D2\0E\D6c\9C\CAp3\08q}M\9B\00\9B\C6hB\AE\CD\A1*\E6\A3\80\E6(\81\FF/-\82\C6\85(\AA`VX:H\F3x0\A31\8B`;\89\E22qE\AC#L\C5\94\CB\DD\8D=\F9\16\10\A84A\CA\EA\98c\BC-\ED]Z\A8%:\A1\0A.\F1\C9\8B\9A\C8\B5\7F\11\17\A7+\F2\C7\B9\E7\C1\ACMw\FC\94\CA=\F9\16\10\A84A\CA\EA\98c\BC-\ED]Z\A8%:\A1\0A.\F1\C9\8B\9A\C8\B5\7F\11\17\A7+\F2\C7\B9\E7\C1\ACMw\FC\94\CA\DC\08>g\98@P\B7^\BA\E5\DD(\09\BDc\80\16\F7#\81\AE\E4\BD\D8.\D9dZ!2.\9CLj\93\85\ED\9Fp\B5\D9\16\C1\B4;b\EE\F4\D0\09\8E\FF;\1Fx\E2\D0\D4\8DP\D1h{\93\B9}_|mPG@j^h\8B5\22\09\BC\B9\F8\22}\DE8]Vc2\EC\C0\EA\BF\A9\CFx\22\FD\F2\09\F7\00$\A5{\1A\A0\00\C5[\88\1F\81\11\B2\DC\DEIJ_H^[\CAK\D8\8A'c\AE\D1\CA+/\A8\F0T\06x\CD\1E\0F:\D8\08\92\AA\DD\9D\B8\DB\E9\C4\8B?\D4\E6\AE3\C9\FC\07\CB0\8D\B3\B3\C9\D2\0E\D6c\9C\CAp3\08pU>\\AL\A9&\19A\86a\19\7F\AC\10G\1D\B1\D3\81\08]\DA\DD\B5\87\96\82\9C\A9\00i" }, align 4
@.str.51 = private unnamed_addr constant [42 x i8] c"RFC 5639 curve over a 512 bit prime field\00", align 1
@_EC_brainpoolP512t1 = internal constant %struct.anon.72 { %struct.EC_CURVE_DATA { i32 406, i32 0, i32 64, i32 1 }, [384 x i8] c"\AA\DD\9D\B8\DB\E9\C4\8B?\D4\E6\AE3\C9\FC\07\CB0\8D\B3\B3\C9\D2\0E\D6c\9C\CAp3\08q}M\9B\00\9B\C6hB\AE\CD\A1*\E6\A3\80\E6(\81\FF/-\82\C6\85(\AA`VX:H\F3\AA\DD\9D\B8\DB\E9\C4\8B?\D4\E6\AE3\C9\FC\07\CB0\8D\B3\B3\C9\D2\0E\D6c\9C\CAp3\08q}M\9B\00\9B\C6hB\AE\CD\A1*\E6\A3\80\E6(\81\FF/-\82\C6\85(\AA`VX:H\F0|\BB\BC\F9D\1C\FA\B7n\18\90\E4h\84\EA\E3!\F7\0C\0B\CBI\81Rx\97PK\EC>6\A6+\CD\FA#\04\97e@\F6E\00\85\F2\DA\E1E\C2%S\B4ev6\89\18\0E\A2W\18gB>d\0E\CE\\\12x\87\17\B9\C1\BA\06\CB\C2\A6\FE\BA\85\84$X\C5m\DE\9D\B1u\8D9\C01=\82\BAQs\\\DB>\A4\99\AAw\A7\D6\94:d\F7\A3\F2_\E2o\06\B5\1B\AA&\96\FA\905\DA[SK\D5\95\F5\AF\0F\A2\C8\927l\84\AC\E1\BBN0\19\B7\164\C0\111\15\9C\AE\03\CE\E9\D9\93!\84\BE\EF!k\D7\1D\F2\DA\DF\86\A6'0n\CF\F9m\BB\8B\AC\E1\98\B6\1E\00\F8\B32\AA\DD\9D\B8\DB\E9\C4\8B?\D4\E6\AE3\C9\FC\07\CB0\8D\B3\B3\C9\D2\0E\D6c\9C\CAp3\08pU>\\AL\A9&\19A\86a\19\7F\AC\10G\1D\B1\D3\81\08]\DA\DD\B5\87\96\82\9C\A9\00i" }, align 4
@_EC_sm2p256v1 = internal constant %struct.anon.73 { %struct.EC_CURVE_DATA { i32 406, i32 0, i32 32, i32 1 }, [192 x i8] c"\FF\FF\FF\FE\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FE\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FC(\E9\FA\9E\9D\9F^4MZ\9EK\CFe\09\A7\F3\97\89\F5\15\AB\8F\92\DD\BC\BDAM\94\0E\932\C4\AE,\1F\19\81\19_\99\04Fj9\C9\94\8F\E3\0B\BF\F2f\0B\E1qZE\893Lt\C7\BC76\A2\F4\F6w\9CY\BD\CE\E3ki!S\D0\A9\87|\C6*G@\02\DF2\E5!9\F0\A0\FF\FF\FF\FE\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FFr\03\DFk!\C6\05+S\BB\F4\099\D5A#" }, align 4
@.str.52 = private unnamed_addr constant [37 x i8] c"SM2 curve over a 256 bit prime field\00", align 1

; Function Attrs: noinline nounwind uwtable
define %struct.ec_group_st* @EC_GROUP_new_by_curve_name_ex(%struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq, i32 noundef %nid) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc %struct._ec_list_element_st* @ec_curve_nid2curve(i32 noundef %nid) #5
  %cmp = icmp eq %struct._ec_list_element_st* %call, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call1 = tail call fastcc %struct.ec_group_st* @ec_group_new_from_data(%struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq, %struct._ec_list_element_st* noundef nonnull byval(%struct._ec_list_element_st) align 8 %call) #5
  %cmp2 = icmp eq %struct.ec_group_st* %call1, null
  br i1 %cmp2, label %if.then, label %cleanup

if.then:                                          ; preds = %lor.lhs.false, %entry
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 3289, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.EC_GROUP_new_by_curve_name_ex, i64 0, i64 0)) #6
  %call3 = tail call i8* @OBJ_nid2sn(i32 noundef %nid) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 129, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* noundef %call3) #6
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false, %if.then
  %retval.0 = phi %struct.ec_group_st* [ null, %if.then ], [ %call1, %lor.lhs.false ]
  ret %struct.ec_group_st* %retval.0
}

; Function Attrs: nofree noinline norecurse nosync nounwind readnone uwtable
define internal fastcc %struct._ec_list_element_st* @ec_curve_nid2curve(i32 noundef %nid) unnamed_addr #1 {
entry:
  %cmp = icmp slt i32 %nid, 1
  br i1 %cmp, label %cleanup, label %for.body

for.cond:                                         ; preds = %for.body
  %inc = or i64 %i.012, 1
  %arrayidx.1 = getelementptr inbounds [82 x %struct._ec_list_element_st], [82 x %struct._ec_list_element_st]* @curve_list, i64 0, i64 %inc
  %nid2.1 = getelementptr inbounds %struct._ec_list_element_st, %struct._ec_list_element_st* %arrayidx.1, i64 0, i32 0
  %0 = load i32, i32* %nid2.1, align 16, !tbaa !4
  %cmp3.1 = icmp eq i32 %0, %nid
  br i1 %cmp3.1, label %cleanup, label %for.cond.1

for.cond.1:                                       ; preds = %for.cond
  %inc.1 = add nuw nsw i64 %i.012, 2
  %exitcond.not.1 = icmp eq i64 %inc.1, 82
  br i1 %exitcond.not.1, label %cleanup, label %for.body, !llvm.loop !10

for.body:                                         ; preds = %entry, %for.cond.1
  %i.012 = phi i64 [ %inc.1, %for.cond.1 ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds [82 x %struct._ec_list_element_st], [82 x %struct._ec_list_element_st]* @curve_list, i64 0, i64 %i.012
  %nid2 = getelementptr inbounds %struct._ec_list_element_st, %struct._ec_list_element_st* %arrayidx, i64 0, i32 0
  %1 = load i32, i32* %nid2, align 16, !tbaa !4
  %cmp3 = icmp eq i32 %1, %nid
  br i1 %cmp3, label %cleanup, label %for.cond

cleanup:                                          ; preds = %for.body, %for.cond, %for.cond.1, %entry
  %retval.0 = phi %struct._ec_list_element_st* [ null, %entry ], [ %arrayidx, %for.body ], [ %arrayidx.1, %for.cond ], [ null, %for.cond.1 ]
  ret %struct._ec_list_element_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.ec_group_st* @ec_group_new_from_data(%struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq, %struct._ec_list_element_st* nocapture noundef readonly byval(%struct._ec_list_element_st) align 8 %curve) unnamed_addr #0 {
entry:
  %data1 = getelementptr inbounds %struct._ec_list_element_st, %struct._ec_list_element_st* %curve, i64 0, i32 1
  %0 = load %struct.EC_CURVE_DATA*, %struct.EC_CURVE_DATA** %data1, align 8, !tbaa !12
  %cmp = icmp eq %struct.EC_CURVE_DATA* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %meth2 = getelementptr inbounds %struct._ec_list_element_st, %struct._ec_list_element_st* %curve, i64 0, i32 2
  %1 = load %struct.ec_method_st* ()*, %struct.ec_method_st* ()** %meth2, align 8, !tbaa !13
  %cmp3.not = icmp eq %struct.ec_method_st* ()* %1, null
  br i1 %cmp3.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %if.then
  %call = tail call %struct.ec_method_st* %1() #6
  br label %cond.end

cond.end:                                         ; preds = %if.then, %cond.true
  %cond = phi %struct.ec_method_st* [ %call, %cond.true ], [ null, %if.then ]
  %call5 = tail call %struct.ec_group_st* @ossl_ec_group_new_ex(%struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq, %struct.ec_method_st* noundef %cond) #6
  br label %cleanup120

if.end:                                           ; preds = %entry
  %call6 = tail call %struct.bignum_ctx* @BN_CTX_new_ex(%struct.ossl_lib_ctx_st* noundef %libctx) #6
  %cmp7 = icmp eq %struct.bignum_ctx* %call6, null
  br i1 %cmp7, label %if.then118, label %if.end9

if.end9:                                          ; preds = %if.end
  %seed_len11 = getelementptr inbounds %struct.EC_CURVE_DATA, %struct.EC_CURVE_DATA* %0, i64 0, i32 1
  %2 = load i32, i32* %seed_len11, align 4, !tbaa !14
  %param_len12 = getelementptr inbounds %struct.EC_CURVE_DATA, %struct.EC_CURVE_DATA* %0, i64 0, i32 2
  %3 = load i32, i32* %param_len12, align 4, !tbaa !16
  %add.ptr = getelementptr inbounds %struct.EC_CURVE_DATA, %struct.EC_CURVE_DATA* %0, i64 1
  %4 = bitcast %struct.EC_CURVE_DATA* %add.ptr to i8*
  %idx.ext = sext i32 %2 to i64
  %add.ptr13 = getelementptr inbounds i8, i8* %4, i64 %idx.ext
  %call16 = tail call %struct.bignum_st* @BN_bin2bn(i8* noundef nonnull %add.ptr13, i32 noundef %3, %struct.bignum_st* noundef null) #6
  %cmp17 = icmp eq %struct.bignum_st* %call16, null
  br i1 %cmp17, label %if.then118, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end9
  %idx.ext19 = sext i32 %3 to i64
  %add.ptr20 = getelementptr inbounds i8, i8* %add.ptr13, i64 %idx.ext19
  %call21 = tail call %struct.bignum_st* @BN_bin2bn(i8* noundef nonnull %add.ptr20, i32 noundef %3, %struct.bignum_st* noundef null) #6
  %cmp22 = icmp eq %struct.bignum_st* %call21, null
  br i1 %cmp22, label %if.then118, label %lor.lhs.false23

lor.lhs.false23:                                  ; preds = %lor.lhs.false
  %mul24 = shl nsw i32 %3, 1
  %idx.ext25 = sext i32 %mul24 to i64
  %add.ptr26 = getelementptr inbounds i8, i8* %add.ptr13, i64 %idx.ext25
  %call27 = tail call %struct.bignum_st* @BN_bin2bn(i8* noundef nonnull %add.ptr26, i32 noundef %3, %struct.bignum_st* noundef null) #6
  %cmp28 = icmp eq %struct.bignum_st* %call27, null
  br i1 %cmp28, label %if.then118, label %if.end30

if.end30:                                         ; preds = %lor.lhs.false23
  %meth31 = getelementptr inbounds %struct._ec_list_element_st, %struct._ec_list_element_st* %curve, i64 0, i32 2
  %5 = load %struct.ec_method_st* ()*, %struct.ec_method_st* ()** %meth31, align 8, !tbaa !13
  %cmp32.not = icmp eq %struct.ec_method_st* ()* %5, null
  br i1 %cmp32.not, label %if.else, label %if.then33

if.then33:                                        ; preds = %if.end30
  %call35 = tail call %struct.ec_method_st* %5() #6
  %call36 = tail call %struct.ec_group_st* @ossl_ec_group_new_ex(%struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq, %struct.ec_method_st* noundef %call35) #6
  %cmp37 = icmp eq %struct.ec_group_st* %call36, null
  br i1 %cmp37, label %if.then118, label %lor.lhs.false38

lor.lhs.false38:                                  ; preds = %if.then33
  %meth39 = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %call36, i64 0, i32 0
  %6 = load %struct.ec_method_st*, %struct.ec_method_st** %meth39, align 8, !tbaa !17
  %group_set_curve = getelementptr inbounds %struct.ec_method_st, %struct.ec_method_st* %6, i64 0, i32 6
  %7 = load i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)** %group_set_curve, align 8, !tbaa !20
  %call40 = tail call i32 %7(%struct.ec_group_st* noundef nonnull %call36, %struct.bignum_st* noundef nonnull %call16, %struct.bignum_st* noundef nonnull %call21, %struct.bignum_st* noundef nonnull %call27, %struct.bignum_ctx* noundef nonnull %call6) #6
  %tobool.not = icmp eq i32 %call40, 0
  br i1 %tobool.not, label %if.then118, label %if.end55

if.else:                                          ; preds = %if.end30
  %field_type = getelementptr inbounds %struct.EC_CURVE_DATA, %struct.EC_CURVE_DATA* %0, i64 0, i32 0
  %8 = load i32, i32* %field_type, align 4, !tbaa !22
  %cmp43 = icmp eq i32 %8, 406
  br i1 %cmp43, label %if.then44, label %if.else49

if.then44:                                        ; preds = %if.else
  %call45 = tail call %struct.ec_group_st* @EC_GROUP_new_curve_GFp(%struct.bignum_st* noundef nonnull %call16, %struct.bignum_st* noundef nonnull %call21, %struct.bignum_st* noundef nonnull %call27, %struct.bignum_ctx* noundef nonnull %call6) #6
  %cmp46 = icmp eq %struct.ec_group_st* %call45, null
  br i1 %cmp46, label %if.then118, label %if.end55

if.else49:                                        ; preds = %if.else
  %call50 = tail call %struct.ec_group_st* @EC_GROUP_new_curve_GF2m(%struct.bignum_st* noundef nonnull %call16, %struct.bignum_st* noundef nonnull %call21, %struct.bignum_st* noundef nonnull %call27, %struct.bignum_ctx* noundef nonnull %call6) #6
  %cmp51 = icmp eq %struct.ec_group_st* %call50, null
  br i1 %cmp51, label %if.then118, label %if.end55

if.end55:                                         ; preds = %if.then44, %if.else49, %lor.lhs.false38
  %group.0 = phi %struct.ec_group_st* [ %call36, %lor.lhs.false38 ], [ %call45, %if.then44 ], [ %call50, %if.else49 ]
  %nid = getelementptr inbounds %struct._ec_list_element_st, %struct._ec_list_element_st* %curve, i64 0, i32 0
  %9 = load i32, i32* %nid, align 8, !tbaa !4
  tail call void @EC_GROUP_set_curve_name(%struct.ec_group_st* noundef nonnull %group.0, i32 noundef %9) #6
  %call56 = tail call %struct.ec_point_st* @EC_POINT_new(%struct.ec_group_st* noundef nonnull %group.0) #6
  %cmp57 = icmp eq %struct.ec_point_st* %call56, null
  br i1 %cmp57, label %if.then118, label %if.end59

if.end59:                                         ; preds = %if.end55
  %mul60 = mul nsw i32 %3, 3
  %idx.ext61 = sext i32 %mul60 to i64
  %add.ptr62 = getelementptr inbounds i8, i8* %add.ptr13, i64 %idx.ext61
  %call63 = tail call %struct.bignum_st* @BN_bin2bn(i8* noundef nonnull %add.ptr62, i32 noundef %3, %struct.bignum_st* noundef null) #6
  %cmp64 = icmp eq %struct.bignum_st* %call63, null
  br i1 %cmp64, label %if.then118, label %lor.lhs.false65

lor.lhs.false65:                                  ; preds = %if.end59
  %mul66 = shl nsw i32 %3, 2
  %idx.ext67 = sext i32 %mul66 to i64
  %add.ptr68 = getelementptr inbounds i8, i8* %add.ptr13, i64 %idx.ext67
  %call69 = tail call %struct.bignum_st* @BN_bin2bn(i8* noundef nonnull %add.ptr68, i32 noundef %3, %struct.bignum_st* noundef null) #6
  %cmp70 = icmp eq %struct.bignum_st* %call69, null
  br i1 %cmp70, label %if.then118, label %if.end72

if.end72:                                         ; preds = %lor.lhs.false65
  %call73 = tail call i32 @EC_POINT_set_affine_coordinates(%struct.ec_group_st* noundef nonnull %group.0, %struct.ec_point_st* noundef nonnull %call56, %struct.bignum_st* noundef nonnull %call63, %struct.bignum_st* noundef nonnull %call69, %struct.bignum_ctx* noundef nonnull %call6) #6
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %if.then118, label %if.end76

if.end76:                                         ; preds = %if.end72
  %mul77 = mul nsw i32 %3, 5
  %idx.ext78 = sext i32 %mul77 to i64
  %add.ptr79 = getelementptr inbounds i8, i8* %add.ptr13, i64 %idx.ext78
  %call80 = tail call %struct.bignum_st* @BN_bin2bn(i8* noundef nonnull %add.ptr79, i32 noundef %3, %struct.bignum_st* noundef null) #6
  %cmp81 = icmp eq %struct.bignum_st* %call80, null
  br i1 %cmp81, label %if.then118, label %lor.lhs.false82

lor.lhs.false82:                                  ; preds = %if.end76
  %cofactor = getelementptr inbounds %struct.EC_CURVE_DATA, %struct.EC_CURVE_DATA* %0, i64 0, i32 3
  %10 = load i32, i32* %cofactor, align 4, !tbaa !23
  %conv = zext i32 %10 to i64
  %call83 = tail call i32 @BN_set_word(%struct.bignum_st* noundef nonnull %call63, i64 noundef %conv) #6
  %tobool84.not = icmp eq i32 %call83, 0
  br i1 %tobool84.not, label %if.then118, label %if.end86

if.end86:                                         ; preds = %lor.lhs.false82
  %call87 = tail call i32 @EC_GROUP_set_generator(%struct.ec_group_st* noundef nonnull %group.0, %struct.ec_point_st* noundef nonnull %call56, %struct.bignum_st* noundef nonnull %call80, %struct.bignum_st* noundef nonnull %call63) #6
  %tobool88.not = icmp eq i32 %call87, 0
  br i1 %tobool88.not, label %if.then118, label %if.end90

if.end90:                                         ; preds = %if.end86
  %tobool91.not = icmp eq i32 %2, 0
  br i1 %tobool91.not, label %if.end100, label %if.then92

if.then92:                                        ; preds = %if.end90
  %call96 = tail call i64 @EC_GROUP_set_seed(%struct.ec_group_st* noundef nonnull %group.0, i8* noundef nonnull %4, i64 noundef %idx.ext) #6
  %tobool97.not = icmp eq i64 %call96, 0
  br i1 %tobool97.not, label %if.then118, label %if.end100

if.end100:                                        ; preds = %if.then92, %if.end90
  %call101 = tail call i32 @EC_GROUP_get_asn1_flag(%struct.ec_group_st* noundef nonnull %group.0) #6
  %cmp102 = icmp eq i32 %call101, 1
  br i1 %cmp102, label %if.then104, label %if.end119

if.then104:                                       ; preds = %if.end100
  %call106 = tail call %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef %9) #6
  %cmp107 = icmp eq %struct.asn1_object_st* %call106, null
  br i1 %cmp107, label %if.then118, label %if.end110

if.end110:                                        ; preds = %if.then104
  %call111 = tail call i64 @OBJ_length(%struct.asn1_object_st* noundef nonnull %call106) #6
  %cmp112 = icmp eq i64 %call111, 0
  br i1 %cmp112, label %if.then114, label %cleanup.thread

if.then114:                                       ; preds = %if.end110
  tail call void @EC_GROUP_set_asn1_flag(%struct.ec_group_st* noundef nonnull %group.0, i32 noundef 0) #6
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.end110, %if.then114
  tail call void @ASN1_OBJECT_free(%struct.asn1_object_st* noundef nonnull %call106) #6
  br label %if.end119

if.then118:                                       ; preds = %if.then104, %if.then92, %if.end86, %if.end76, %lor.lhs.false82, %if.end72, %if.end59, %lor.lhs.false65, %if.end55, %if.else49, %if.then44, %if.then33, %lor.lhs.false38, %if.end9, %lor.lhs.false, %lor.lhs.false23, %if.end
  %.sink239 = phi i32 [ 3154, %if.end ], [ 3167, %lor.lhs.false23 ], [ 3167, %lor.lhs.false ], [ 3167, %if.end9 ], [ 3175, %lor.lhs.false38 ], [ 3175, %if.then33 ], [ 3180, %if.then44 ], [ 3189, %if.else49 ], [ 3198, %if.end55 ], [ 3204, %lor.lhs.false65 ], [ 3204, %if.end59 ], [ 3208, %if.end72 ], [ 3213, %lor.lhs.false82 ], [ 3213, %if.end76 ], [ 3217, %if.end86 ], [ 3222, %if.then92 ], [ 3244, %if.then104 ]
  %.sink = phi i32 [ 786688, %if.end ], [ 524291, %lor.lhs.false23 ], [ 524291, %lor.lhs.false ], [ 524291, %if.end9 ], [ 524304, %lor.lhs.false38 ], [ 524304, %if.then33 ], [ 524304, %if.then44 ], [ 524304, %if.else49 ], [ 524304, %if.end55 ], [ 524291, %lor.lhs.false65 ], [ 524291, %if.end59 ], [ 524304, %if.end72 ], [ 524291, %lor.lhs.false82 ], [ 524291, %if.end76 ], [ 524304, %if.end86 ], [ 524304, %if.then92 ], [ 524296, %if.then104 ]
  %a.1.ph = phi %struct.bignum_st* [ null, %if.end ], [ %call21, %lor.lhs.false23 ], [ null, %lor.lhs.false ], [ null, %if.end9 ], [ %call21, %lor.lhs.false38 ], [ %call21, %if.then33 ], [ %call21, %if.then44 ], [ %call21, %if.else49 ], [ %call21, %if.end55 ], [ %call21, %lor.lhs.false65 ], [ %call21, %if.end59 ], [ %call21, %if.end72 ], [ %call21, %lor.lhs.false82 ], [ %call21, %if.end76 ], [ %call21, %if.end86 ], [ %call21, %if.then92 ], [ %call21, %if.then104 ]
  %b.1.ph = phi %struct.bignum_st* [ null, %if.end ], [ null, %lor.lhs.false23 ], [ null, %lor.lhs.false ], [ null, %if.end9 ], [ %call27, %lor.lhs.false38 ], [ %call27, %if.then33 ], [ %call27, %if.then44 ], [ %call27, %if.else49 ], [ %call27, %if.end55 ], [ %call27, %lor.lhs.false65 ], [ %call27, %if.end59 ], [ %call27, %if.end72 ], [ %call27, %lor.lhs.false82 ], [ %call27, %if.end76 ], [ %call27, %if.end86 ], [ %call27, %if.then92 ], [ %call27, %if.then104 ]
  %x.0.ph = phi %struct.bignum_st* [ null, %if.end ], [ null, %lor.lhs.false23 ], [ null, %lor.lhs.false ], [ null, %if.end9 ], [ null, %lor.lhs.false38 ], [ null, %if.then33 ], [ null, %if.then44 ], [ null, %if.else49 ], [ null, %if.end55 ], [ %call63, %lor.lhs.false65 ], [ %call63, %if.end59 ], [ %call63, %if.end72 ], [ %call63, %lor.lhs.false82 ], [ %call63, %if.end76 ], [ %call63, %if.end86 ], [ %call63, %if.then92 ], [ %call63, %if.then104 ]
  %y.1.ph = phi %struct.bignum_st* [ null, %if.end ], [ null, %lor.lhs.false23 ], [ null, %lor.lhs.false ], [ null, %if.end9 ], [ null, %lor.lhs.false38 ], [ null, %if.then33 ], [ null, %if.then44 ], [ null, %if.else49 ], [ null, %if.end55 ], [ null, %lor.lhs.false65 ], [ null, %if.end59 ], [ %call69, %if.end72 ], [ %call69, %lor.lhs.false82 ], [ %call69, %if.end76 ], [ %call69, %if.end86 ], [ %call69, %if.then92 ], [ %call69, %if.then104 ]
  %order.0.ph = phi %struct.bignum_st* [ null, %if.end ], [ null, %lor.lhs.false23 ], [ null, %lor.lhs.false ], [ null, %if.end9 ], [ null, %lor.lhs.false38 ], [ null, %if.then33 ], [ null, %if.then44 ], [ null, %if.else49 ], [ null, %if.end55 ], [ null, %lor.lhs.false65 ], [ null, %if.end59 ], [ null, %if.end72 ], [ %call80, %lor.lhs.false82 ], [ %call80, %if.end76 ], [ %call80, %if.end86 ], [ %call80, %if.then92 ], [ %call80, %if.then104 ]
  %p.0.ph = phi %struct.bignum_st* [ null, %if.end ], [ %call16, %lor.lhs.false23 ], [ %call16, %lor.lhs.false ], [ %call16, %if.end9 ], [ %call16, %lor.lhs.false38 ], [ %call16, %if.then33 ], [ %call16, %if.then44 ], [ %call16, %if.else49 ], [ %call16, %if.end55 ], [ %call16, %lor.lhs.false65 ], [ %call16, %if.end59 ], [ %call16, %if.end72 ], [ %call16, %lor.lhs.false82 ], [ %call16, %if.end76 ], [ %call16, %if.end86 ], [ %call16, %if.then92 ], [ %call16, %if.then104 ]
  %P.0.ph = phi %struct.ec_point_st* [ null, %if.end ], [ null, %lor.lhs.false23 ], [ null, %lor.lhs.false ], [ null, %if.end9 ], [ null, %lor.lhs.false38 ], [ null, %if.then33 ], [ null, %if.then44 ], [ null, %if.else49 ], [ null, %if.end55 ], [ %call56, %lor.lhs.false65 ], [ %call56, %if.end59 ], [ %call56, %if.end72 ], [ %call56, %lor.lhs.false82 ], [ %call56, %if.end76 ], [ %call56, %if.end86 ], [ %call56, %if.then92 ], [ %call56, %if.then104 ]
  %group.1.ph = phi %struct.ec_group_st* [ null, %if.end ], [ null, %lor.lhs.false23 ], [ null, %lor.lhs.false ], [ null, %if.end9 ], [ %call36, %lor.lhs.false38 ], [ %call36, %if.then33 ], [ null, %if.then44 ], [ null, %if.else49 ], [ %group.0, %if.end55 ], [ %group.0, %lor.lhs.false65 ], [ %group.0, %if.end59 ], [ %group.0, %if.end72 ], [ %group.0, %lor.lhs.false82 ], [ %group.0, %if.end76 ], [ %group.0, %if.end86 ], [ %group.0, %if.then92 ], [ %group.0, %if.then104 ]
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef %.sink239, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.ec_group_new_from_data, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef %.sink, i8* noundef null) #6
  tail call void @EC_GROUP_free(%struct.ec_group_st* noundef %group.1.ph) #6
  br label %if.end119

if.end119:                                        ; preds = %cleanup.thread, %if.end100, %if.then118
  %P.0236 = phi %struct.ec_point_st* [ %P.0.ph, %if.then118 ], [ %call56, %cleanup.thread ], [ %call56, %if.end100 ]
  %p.0234 = phi %struct.bignum_st* [ %p.0.ph, %if.then118 ], [ %call16, %cleanup.thread ], [ %call16, %if.end100 ]
  %order.0232 = phi %struct.bignum_st* [ %order.0.ph, %if.then118 ], [ %call80, %cleanup.thread ], [ %call80, %if.end100 ]
  %y.1230 = phi %struct.bignum_st* [ %y.1.ph, %if.then118 ], [ %call69, %cleanup.thread ], [ %call69, %if.end100 ]
  %x.0228 = phi %struct.bignum_st* [ %x.0.ph, %if.then118 ], [ %call63, %cleanup.thread ], [ %call63, %if.end100 ]
  %b.1226 = phi %struct.bignum_st* [ %b.1.ph, %if.then118 ], [ %call27, %cleanup.thread ], [ %call27, %if.end100 ]
  %a.1224 = phi %struct.bignum_st* [ %a.1.ph, %if.then118 ], [ %call21, %cleanup.thread ], [ %call21, %if.end100 ]
  %group.2 = phi %struct.ec_group_st* [ null, %if.then118 ], [ %group.0, %cleanup.thread ], [ %group.0, %if.end100 ]
  tail call void @EC_POINT_free(%struct.ec_point_st* noundef %P.0236) #6
  tail call void @BN_CTX_free(%struct.bignum_ctx* noundef %call6) #6
  tail call void @BN_free(%struct.bignum_st* noundef %p.0234) #6
  tail call void @BN_free(%struct.bignum_st* noundef %a.1224) #6
  tail call void @BN_free(%struct.bignum_st* noundef %b.1226) #6
  tail call void @BN_free(%struct.bignum_st* noundef %order.0232) #6
  tail call void @BN_free(%struct.bignum_st* noundef %x.0228) #6
  tail call void @BN_free(%struct.bignum_st* noundef %y.1230) #6
  br label %cleanup120

cleanup120:                                       ; preds = %if.end119, %cond.end
  %retval.0 = phi %struct.ec_group_st* [ %call5, %cond.end ], [ %group.2, %if.end119 ]
  ret %struct.ec_group_st* %retval.0
}

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

declare i8* @OBJ_nid2sn(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.ec_group_st* @EC_GROUP_new_by_curve_name(i32 noundef %nid) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.ec_group_st* @EC_GROUP_new_by_curve_name_ex(%struct.ossl_lib_ctx_st* noundef null, i8* noundef null, i32 noundef %nid) #5
  ret %struct.ec_group_st* %call
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable writeonly
define i64 @EC_get_builtin_curves(%struct.EC_builtin_curve* noundef writeonly %r, i64 noundef %nitems) local_unnamed_addr #3 {
entry:
  %cmp = icmp eq %struct.EC_builtin_curve* %r, null
  %cmp1 = icmp eq i64 %nitems, 0
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %cmp2 = icmp ult i64 %nitems, 82
  %cond = select i1 %cmp2, i64 %nitems, i64 82
  %xtraiter = and i64 %cond, 1
  %0 = icmp eq i64 %cond, 1
  br i1 %0, label %cleanup.loopexit.unr-lcssa, label %if.end.new

if.end.new:                                       ; preds = %if.end
  %unroll_iter = and i64 %cond, 126
  br label %for.body

for.body:                                         ; preds = %for.body, %if.end.new
  %i.022 = phi i64 [ 0, %if.end.new ], [ %inc.1, %for.body ]
  %niter = phi i64 [ 0, %if.end.new ], [ %niter.next.1, %for.body ]
  %nid = getelementptr inbounds [82 x %struct._ec_list_element_st], [82 x %struct._ec_list_element_st]* @curve_list, i64 0, i64 %i.022, i32 0
  %1 = load i32, i32* %nid, align 16, !tbaa !4
  %nid5 = getelementptr inbounds %struct.EC_builtin_curve, %struct.EC_builtin_curve* %r, i64 %i.022, i32 0
  store i32 %1, i32* %nid5, align 8, !tbaa !24
  %comment = getelementptr inbounds [82 x %struct._ec_list_element_st], [82 x %struct._ec_list_element_st]* @curve_list, i64 0, i64 %i.022, i32 3
  %2 = load i8*, i8** %comment, align 8, !tbaa !26
  %comment8 = getelementptr inbounds %struct.EC_builtin_curve, %struct.EC_builtin_curve* %r, i64 %i.022, i32 1
  store i8* %2, i8** %comment8, align 8, !tbaa !27
  %inc = or i64 %i.022, 1
  %nid.1 = getelementptr inbounds [82 x %struct._ec_list_element_st], [82 x %struct._ec_list_element_st]* @curve_list, i64 0, i64 %inc, i32 0
  %3 = load i32, i32* %nid.1, align 16, !tbaa !4
  %nid5.1 = getelementptr inbounds %struct.EC_builtin_curve, %struct.EC_builtin_curve* %r, i64 %inc, i32 0
  store i32 %3, i32* %nid5.1, align 8, !tbaa !24
  %comment.1 = getelementptr inbounds [82 x %struct._ec_list_element_st], [82 x %struct._ec_list_element_st]* @curve_list, i64 0, i64 %inc, i32 3
  %4 = load i8*, i8** %comment.1, align 8, !tbaa !26
  %comment8.1 = getelementptr inbounds %struct.EC_builtin_curve, %struct.EC_builtin_curve* %r, i64 %inc, i32 1
  store i8* %4, i8** %comment8.1, align 8, !tbaa !27
  %inc.1 = add nuw nsw i64 %i.022, 2
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %cleanup.loopexit.unr-lcssa, label %for.body, !llvm.loop !28

cleanup.loopexit.unr-lcssa:                       ; preds = %for.body, %if.end
  %i.022.unr = phi i64 [ 0, %if.end ], [ %inc.1, %for.body ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %cleanup, label %for.body.epil

for.body.epil:                                    ; preds = %cleanup.loopexit.unr-lcssa
  %nid.epil = getelementptr inbounds [82 x %struct._ec_list_element_st], [82 x %struct._ec_list_element_st]* @curve_list, i64 0, i64 %i.022.unr, i32 0
  %5 = load i32, i32* %nid.epil, align 16, !tbaa !4
  %nid5.epil = getelementptr inbounds %struct.EC_builtin_curve, %struct.EC_builtin_curve* %r, i64 %i.022.unr, i32 0
  store i32 %5, i32* %nid5.epil, align 8, !tbaa !24
  %comment.epil = getelementptr inbounds [82 x %struct._ec_list_element_st], [82 x %struct._ec_list_element_st]* @curve_list, i64 0, i64 %i.022.unr, i32 3
  %6 = load i8*, i8** %comment.epil, align 8, !tbaa !26
  %comment8.epil = getelementptr inbounds %struct.EC_builtin_curve, %struct.EC_builtin_curve* %r, i64 %i.022.unr, i32 1
  store i8* %6, i8** %comment8.epil, align 8, !tbaa !27
  br label %cleanup

cleanup:                                          ; preds = %for.body.epil, %cleanup.loopexit.unr-lcssa, %entry
  ret i64 82
}

; Function Attrs: noinline nounwind uwtable
define i8* @EC_curve_nid2nist(i32 noundef %nid) local_unnamed_addr #0 {
entry:
  %call = tail call i8* @ossl_ec_curve_nid2nist_int(i32 noundef %nid) #6
  ret i8* %call
}

declare i8* @ossl_ec_curve_nid2nist_int(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @EC_curve_nist2nid(i8* noundef %name) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @ossl_ec_curve_nist2nid_int(i8* noundef %name) #6
  ret i32 %call
}

declare i32 @ossl_ec_curve_nist2nid_int(i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_ec_curve_nid_from_params(%struct.ec_group_st* noundef %group, %struct.bignum_ctx* noundef %ctx) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @EC_GROUP_get_curve_name(%struct.ec_group_st* noundef %group) #6
  %call1 = tail call i32 @EC_GROUP_get_field_type(%struct.ec_group_st* noundef %group) #6
  %call2 = tail call i64 @EC_GROUP_get_seed_len(%struct.ec_group_st* noundef %group) #6
  %call3 = tail call i8* @EC_GROUP_get0_seed(%struct.ec_group_st* noundef %group) #6
  %call4 = tail call %struct.bignum_st* @EC_GROUP_get0_cofactor(%struct.ec_group_st* noundef %group) #6
  tail call void @BN_CTX_start(%struct.bignum_ctx* noundef %ctx) #6
  %order = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 2
  %0 = load %struct.bignum_st*, %struct.bignum_st** %order, align 8, !tbaa !29
  %call5 = tail call i32 @BN_num_bits(%struct.bignum_st* noundef %0) #6
  %add = add nsw i32 %call5, 7
  %div = sdiv i32 %add, 8
  %field = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 10
  %1 = load %struct.bignum_st*, %struct.bignum_st** %field, align 8, !tbaa !30
  %call6 = tail call i32 @BN_num_bits(%struct.bignum_st* noundef %1) #6
  %add7 = add nsw i32 %call6, 7
  %div8 = sdiv i32 %add7, 8
  %cmp = icmp sgt i32 %div8, %div
  %spec.select = select i1 %cmp, i32 %div8, i32 %div
  %mul = mul nsw i32 %spec.select, 6
  %conv = sext i32 %mul to i64
  %call9 = tail call i8* @CRYPTO_malloc(i64 noundef %conv, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 3376) #6
  %cmp10 = icmp eq i8* %call9, null
  br i1 %cmp10, label %end, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  %call16 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %ctx) #6
  %cmp17 = icmp eq %struct.bignum_st* %call16, null
  br i1 %cmp17, label %end, label %for.cond

for.cond:                                         ; preds = %for.body.preheader
  %call16.1 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %ctx) #6
  %cmp17.1 = icmp eq %struct.bignum_st* %call16.1, null
  br i1 %cmp17.1, label %end, label %for.cond.1

for.cond.1:                                       ; preds = %for.cond
  %call16.2 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %ctx) #6
  %cmp17.2 = icmp eq %struct.bignum_st* %call16.2, null
  br i1 %cmp17.2, label %end, label %for.cond.2

for.cond.2:                                       ; preds = %for.cond.1
  %call16.3 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %ctx) #6
  %cmp17.3 = icmp eq %struct.bignum_st* %call16.3, null
  br i1 %cmp17.3, label %end, label %for.cond.3

for.cond.3:                                       ; preds = %for.cond.2
  %call16.4 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %ctx) #6
  %cmp17.4 = icmp eq %struct.bignum_st* %call16.4, null
  br i1 %cmp17.4, label %end, label %for.cond.4

for.cond.4:                                       ; preds = %for.cond.3
  %call16.5 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %ctx) #6
  %cmp17.5 = icmp eq %struct.bignum_st* %call16.5, null
  br i1 %cmp17.5, label %end, label %for.cond.5

for.cond.5:                                       ; preds = %for.cond.4
  %call24 = tail call i32 @EC_GROUP_get_curve(%struct.ec_group_st* noundef nonnull %group, %struct.bignum_st* noundef nonnull %call16, %struct.bignum_st* noundef nonnull %call16.1, %struct.bignum_st* noundef nonnull %call16.2, %struct.bignum_ctx* noundef %ctx) #6
  %tobool.not = icmp eq i32 %call24, 0
  br i1 %tobool.not, label %end, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.cond.5
  %call25 = tail call %struct.ec_point_st* @EC_GROUP_get0_generator(%struct.ec_group_st* noundef nonnull %group) #6
  %cmp26.not = icmp eq %struct.ec_point_st* %call25, null
  br i1 %cmp26.not, label %end, label %land.lhs.true28

land.lhs.true28:                                  ; preds = %land.lhs.true
  %call31 = tail call i32 @EC_POINT_get_affine_coordinates(%struct.ec_group_st* noundef nonnull %group, %struct.ec_point_st* noundef nonnull %call25, %struct.bignum_st* noundef nonnull %call16.3, %struct.bignum_st* noundef nonnull %call16.4, %struct.bignum_ctx* noundef %ctx) #6
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %end, label %land.lhs.true33

land.lhs.true33:                                  ; preds = %land.lhs.true28
  %call35 = tail call i32 @EC_GROUP_get_order(%struct.ec_group_st* noundef nonnull %group, %struct.bignum_st* noundef nonnull %call16.5, %struct.bignum_ctx* noundef %ctx) #6
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %end, label %for.cond39.preheader

for.cond39.preheader:                             ; preds = %land.lhs.true33
  %conv44 = sext i32 %spec.select to i64
  %call47 = tail call i32 @BN_bn2binpad(%struct.bignum_st* noundef nonnull %call16, i8* noundef nonnull %call9, i32 noundef %spec.select) #6
  %cmp48 = icmp slt i32 %call47, 1
  br i1 %cmp48, label %end, label %for.cond39

for.cond39:                                       ; preds = %for.cond39.preheader
  %arrayidx46.1 = getelementptr inbounds i8, i8* %call9, i64 %conv44
  %call47.1 = tail call i32 @BN_bn2binpad(%struct.bignum_st* noundef nonnull %call16.1, i8* noundef nonnull %arrayidx46.1, i32 noundef %spec.select) #6
  %cmp48.1 = icmp slt i32 %call47.1, 1
  br i1 %cmp48.1, label %end, label %for.cond39.1

for.cond39.1:                                     ; preds = %for.cond39
  %mul45.2 = shl nsw i64 %conv44, 1
  %arrayidx46.2 = getelementptr inbounds i8, i8* %call9, i64 %mul45.2
  %call47.2 = tail call i32 @BN_bn2binpad(%struct.bignum_st* noundef nonnull %call16.2, i8* noundef nonnull %arrayidx46.2, i32 noundef %spec.select) #6
  %cmp48.2 = icmp slt i32 %call47.2, 1
  br i1 %cmp48.2, label %end, label %for.cond39.2

for.cond39.2:                                     ; preds = %for.cond39.1
  %mul45.3 = mul nsw i64 %conv44, 3
  %arrayidx46.3 = getelementptr inbounds i8, i8* %call9, i64 %mul45.3
  %call47.3 = tail call i32 @BN_bn2binpad(%struct.bignum_st* noundef nonnull %call16.3, i8* noundef nonnull %arrayidx46.3, i32 noundef %spec.select) #6
  %cmp48.3 = icmp slt i32 %call47.3, 1
  br i1 %cmp48.3, label %end, label %for.cond39.3

for.cond39.3:                                     ; preds = %for.cond39.2
  %mul45.4 = shl nsw i64 %conv44, 2
  %arrayidx46.4 = getelementptr inbounds i8, i8* %call9, i64 %mul45.4
  %call47.4 = tail call i32 @BN_bn2binpad(%struct.bignum_st* noundef nonnull %call16.4, i8* noundef nonnull %arrayidx46.4, i32 noundef %spec.select) #6
  %cmp48.4 = icmp slt i32 %call47.4, 1
  br i1 %cmp48.4, label %end, label %for.cond39.4

for.cond39.4:                                     ; preds = %for.cond39.3
  %mul45.5 = mul nsw i64 %conv44, 5
  %arrayidx46.5 = getelementptr inbounds i8, i8* %call9, i64 %mul45.5
  %call47.5 = tail call i32 @BN_bn2binpad(%struct.bignum_st* noundef nonnull %call16.5, i8* noundef nonnull %arrayidx46.5, i32 noundef %spec.select) #6
  %cmp48.5 = icmp slt i32 %call47.5, 1
  br i1 %cmp48.5, label %end, label %for.cond39.5

for.cond39.5:                                     ; preds = %for.cond39.4
  %cmp71 = icmp slt i32 %call, 1
  %cmp90 = icmp eq i64 %call2, 0
  br label %for.body58

for.body58:                                       ; preds = %for.cond39.5, %for.inc110
  %i.2206 = phi i64 [ 0, %for.cond39.5 ], [ %inc111, %for.inc110 ]
  %curve.sroa.0.0..sroa_idx = getelementptr inbounds [82 x %struct._ec_list_element_st], [82 x %struct._ec_list_element_st]* @curve_list, i64 0, i64 %i.2206, i32 0
  %curve.sroa.0.0.copyload = load i32, i32* %curve.sroa.0.0..sroa_idx, align 16, !tbaa.struct !31
  %curve.sroa.5131.0..sroa_idx132 = getelementptr inbounds [82 x %struct._ec_list_element_st], [82 x %struct._ec_list_element_st]* @curve_list, i64 0, i64 %i.2206, i32 1
  %curve.sroa.5131.0.copyload = load %struct.EC_CURVE_DATA*, %struct.EC_CURVE_DATA** %curve.sroa.5131.0..sroa_idx132, align 8, !tbaa.struct !34
  %add.ptr = getelementptr inbounds %struct.EC_CURVE_DATA, %struct.EC_CURVE_DATA* %curve.sroa.5131.0.copyload, i64 1
  %2 = bitcast %struct.EC_CURVE_DATA* %add.ptr to i8*
  %seed_len61 = getelementptr inbounds %struct.EC_CURVE_DATA, %struct.EC_CURVE_DATA* %curve.sroa.5131.0.copyload, i64 0, i32 1
  %3 = load i32, i32* %seed_len61, align 4, !tbaa !14
  %idx.ext = sext i32 %3 to i64
  %add.ptr62 = getelementptr inbounds i8, i8* %2, i64 %idx.ext
  %field_type63 = getelementptr inbounds %struct.EC_CURVE_DATA, %struct.EC_CURVE_DATA* %curve.sroa.5131.0.copyload, i64 0, i32 0
  %4 = load i32, i32* %field_type63, align 4, !tbaa !22
  %cmp64 = icmp eq i32 %4, %call1
  br i1 %cmp64, label %land.lhs.true66, label %for.inc110

land.lhs.true66:                                  ; preds = %for.body58
  %param_len67 = getelementptr inbounds %struct.EC_CURVE_DATA, %struct.EC_CURVE_DATA* %curve.sroa.5131.0.copyload, i64 0, i32 2
  %5 = load i32, i32* %param_len67, align 4, !tbaa !16
  %cmp68 = icmp eq i32 %spec.select, %5
  br i1 %cmp68, label %land.lhs.true70, label %for.inc110

land.lhs.true70:                                  ; preds = %land.lhs.true66
  %cmp74 = icmp eq i32 %call, %curve.sroa.0.0.copyload
  %or.cond196 = select i1 %cmp71, i1 true, i1 %cmp74
  br i1 %or.cond196, label %land.lhs.true76, label %for.inc110

land.lhs.true76:                                  ; preds = %land.lhs.true70
  %call77 = tail call i32 @BN_is_zero(%struct.bignum_st* noundef %call4) #6
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %lor.lhs.false79, label %land.lhs.true85

lor.lhs.false79:                                  ; preds = %land.lhs.true76
  %cofactor81 = getelementptr inbounds %struct.EC_CURVE_DATA, %struct.EC_CURVE_DATA* %curve.sroa.5131.0.copyload, i64 0, i32 3
  %6 = load i32, i32* %cofactor81, align 4, !tbaa !23
  %conv82 = zext i32 %6 to i64
  %call83 = tail call i32 @BN_is_word(%struct.bignum_st* noundef %call4, i64 noundef %conv82) #6
  %tobool84.not = icmp eq i32 %call83, 0
  br i1 %tobool84.not, label %for.inc110, label %land.lhs.true85

land.lhs.true85:                                  ; preds = %lor.lhs.false79, %land.lhs.true76
  %7 = load i32, i32* %seed_len61, align 4, !tbaa !14
  %cmp87 = icmp eq i32 %7, 0
  %or.cond = select i1 %cmp87, i1 true, i1 %cmp90
  br i1 %or.cond, label %land.lhs.true101, label %lor.lhs.false92

lor.lhs.false92:                                  ; preds = %land.lhs.true85
  %conv94 = sext i32 %7 to i64
  %cmp95 = icmp eq i64 %call2, %conv94
  br i1 %cmp95, label %land.lhs.true97, label %for.inc110

land.lhs.true97:                                  ; preds = %lor.lhs.false92
  %call98 = tail call i32 @memcmp(i8* noundef nonnull %2, i8* noundef %call3, i64 noundef %call2) #7
  %cmp99 = icmp eq i32 %call98, 0
  br i1 %cmp99, label %land.lhs.true101, label %for.inc110

land.lhs.true101:                                 ; preds = %land.lhs.true97, %land.lhs.true85
  %call104 = tail call i32 @memcmp(i8* noundef nonnull %call9, i8* noundef nonnull %add.ptr62, i64 noundef %conv) #7
  %cmp105 = icmp eq i32 %call104, 0
  br i1 %cmp105, label %end, label %for.inc110

for.inc110:                                       ; preds = %for.body58, %land.lhs.true66, %lor.lhs.false79, %lor.lhs.false92, %land.lhs.true97, %land.lhs.true101, %land.lhs.true70
  %inc111 = add nuw nsw i64 %i.2206, 1
  %exitcond.not = icmp eq i64 %inc111, 82
  br i1 %exitcond.not, label %end, label %for.body58, !llvm.loop !35

end:                                              ; preds = %land.lhs.true101, %for.inc110, %for.body.preheader, %for.cond, %for.cond.1, %for.cond.2, %for.cond.3, %for.cond.4, %for.cond39.preheader, %for.cond39, %for.cond39.1, %for.cond39.2, %for.cond39.3, %for.cond39.4, %for.cond.5, %land.lhs.true, %land.lhs.true28, %land.lhs.true33, %entry
  %ret.2 = phi i32 [ -1, %entry ], [ -1, %land.lhs.true33 ], [ -1, %land.lhs.true28 ], [ -1, %land.lhs.true ], [ -1, %for.cond.5 ], [ -1, %for.cond39.4 ], [ -1, %for.cond39.3 ], [ -1, %for.cond39.2 ], [ -1, %for.cond39.1 ], [ -1, %for.cond39 ], [ -1, %for.cond39.preheader ], [ -1, %for.cond.4 ], [ -1, %for.cond.3 ], [ -1, %for.cond.2 ], [ -1, %for.cond.1 ], [ -1, %for.cond ], [ -1, %for.body.preheader ], [ %curve.sroa.0.0.copyload, %land.lhs.true101 ], [ 0, %for.inc110 ]
  tail call void @CRYPTO_free(i8* noundef %call9, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 3437) #6
  tail call void @BN_CTX_end(%struct.bignum_ctx* noundef %ctx) #6
  ret i32 %ret.2
}

declare i32 @EC_GROUP_get_curve_name(%struct.ec_group_st* noundef) local_unnamed_addr #2

declare i32 @EC_GROUP_get_field_type(%struct.ec_group_st* noundef) local_unnamed_addr #2

declare i64 @EC_GROUP_get_seed_len(%struct.ec_group_st* noundef) local_unnamed_addr #2

declare i8* @EC_GROUP_get0_seed(%struct.ec_group_st* noundef) local_unnamed_addr #2

declare %struct.bignum_st* @EC_GROUP_get0_cofactor(%struct.ec_group_st* noundef) local_unnamed_addr #2

declare void @BN_CTX_start(%struct.bignum_ctx* noundef) local_unnamed_addr #2

declare i32 @BN_num_bits(%struct.bignum_st* noundef) local_unnamed_addr #2

declare i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef) local_unnamed_addr #2

declare i32 @EC_GROUP_get_curve(%struct.ec_group_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #2

declare %struct.ec_point_st* @EC_GROUP_get0_generator(%struct.ec_group_st* noundef) local_unnamed_addr #2

declare i32 @EC_POINT_get_affine_coordinates(%struct.ec_group_st* noundef, %struct.ec_point_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #2

declare i32 @EC_GROUP_get_order(%struct.ec_group_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #2

declare i32 @BN_bn2binpad(%struct.bignum_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @BN_is_zero(%struct.bignum_st* noundef) local_unnamed_addr #2

declare i32 @BN_is_word(%struct.bignum_st* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare void @BN_CTX_end(%struct.bignum_ctx* noundef) local_unnamed_addr #2

declare %struct.ec_group_st* @ossl_ec_group_new_ex(%struct.ossl_lib_ctx_st* noundef, i8* noundef, %struct.ec_method_st* noundef) local_unnamed_addr #2

declare %struct.bignum_ctx* @BN_CTX_new_ex(%struct.ossl_lib_ctx_st* noundef) local_unnamed_addr #2

declare %struct.bignum_st* @BN_bin2bn(i8* noundef, i32 noundef, %struct.bignum_st* noundef) local_unnamed_addr #2

declare %struct.ec_group_st* @EC_GROUP_new_curve_GFp(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #2

declare %struct.ec_group_st* @EC_GROUP_new_curve_GF2m(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #2

declare void @EC_GROUP_set_curve_name(%struct.ec_group_st* noundef, i32 noundef) local_unnamed_addr #2

declare %struct.ec_point_st* @EC_POINT_new(%struct.ec_group_st* noundef) local_unnamed_addr #2

declare i32 @EC_POINT_set_affine_coordinates(%struct.ec_group_st* noundef, %struct.ec_point_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #2

declare i32 @BN_set_word(%struct.bignum_st* noundef, i64 noundef) local_unnamed_addr #2

declare i32 @EC_GROUP_set_generator(%struct.ec_group_st* noundef, %struct.ec_point_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #2

declare i64 @EC_GROUP_set_seed(%struct.ec_group_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare i32 @EC_GROUP_get_asn1_flag(%struct.ec_group_st* noundef) local_unnamed_addr #2

declare %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef) local_unnamed_addr #2

declare i64 @OBJ_length(%struct.asn1_object_st* noundef) local_unnamed_addr #2

declare void @EC_GROUP_set_asn1_flag(%struct.ec_group_st* noundef, i32 noundef) local_unnamed_addr #2

declare void @ASN1_OBJECT_free(%struct.asn1_object_st* noundef) local_unnamed_addr #2

declare void @EC_GROUP_free(%struct.ec_group_st* noundef) local_unnamed_addr #2

declare void @EC_POINT_free(%struct.ec_point_st* noundef) local_unnamed_addr #2

declare void @BN_CTX_free(%struct.bignum_ctx* noundef) local_unnamed_addr #2

declare void @BN_free(%struct.bignum_st* noundef) local_unnamed_addr #2

declare %struct.ec_method_st* @EC_GFp_nistz256_method() #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree noinline norecurse nosync nounwind readnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noinline norecurse nosync nounwind uwtable writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin "no-builtins" }
attributes #6 = { nobuiltin nounwind "no-builtins" }
attributes #7 = { nobuiltin nounwind readonly willreturn "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !6, i64 0}
!5 = !{!"_ec_list_element_st", !6, i64 0, !9, i64 8, !9, i64 16, !9, i64 24}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"any pointer", !7, i64 0}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!5, !9, i64 8}
!13 = !{!5, !9, i64 16}
!14 = !{!15, !6, i64 4}
!15 = !{!"", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12}
!16 = !{!15, !6, i64 8}
!17 = !{!18, !9, i64 0}
!18 = !{!"ec_group_st", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !7, i64 44, !9, i64 48, !19, i64 56, !9, i64 64, !7, i64 72, !9, i64 96, !9, i64 104, !6, i64 112, !9, i64 120, !9, i64 128, !9, i64 136, !9, i64 144, !7, i64 152, !7, i64 160, !9, i64 168, !9, i64 176}
!19 = !{!"long", !7, i64 0}
!20 = !{!21, !9, i64 40}
!21 = !{!"ec_method_st", !6, i64 0, !6, i64 4, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !9, i64 64, !9, i64 72, !9, i64 80, !9, i64 88, !9, i64 96, !9, i64 104, !9, i64 112, !9, i64 120, !9, i64 128, !9, i64 136, !9, i64 144, !9, i64 152, !9, i64 160, !9, i64 168, !9, i64 176, !9, i64 184, !9, i64 192, !9, i64 200, !9, i64 208, !9, i64 216, !9, i64 224, !9, i64 232, !9, i64 240, !9, i64 248, !9, i64 256, !9, i64 264, !9, i64 272, !9, i64 280, !9, i64 288, !9, i64 296, !9, i64 304, !9, i64 312, !9, i64 320, !9, i64 328, !9, i64 336, !9, i64 344, !9, i64 352, !9, i64 360, !9, i64 368, !9, i64 376, !9, i64 384, !9, i64 392, !9, i64 400, !9, i64 408, !9, i64 416, !9, i64 424, !9, i64 432}
!22 = !{!15, !6, i64 0}
!23 = !{!15, !6, i64 12}
!24 = !{!25, !6, i64 0}
!25 = !{!"", !6, i64 0, !9, i64 8}
!26 = !{!5, !9, i64 24}
!27 = !{!25, !9, i64 8}
!28 = distinct !{!28, !11}
!29 = !{!18, !9, i64 16}
!30 = !{!18, !9, i64 64}
!31 = !{i64 0, i64 4, !32, i64 8, i64 8, !33, i64 16, i64 8, !33, i64 24, i64 8, !33}
!32 = !{!6, !6, i64 0}
!33 = !{!9, !9, i64 0}
!34 = !{i64 0, i64 8, !33, i64 8, i64 8, !33, i64 16, i64 8, !33}
!35 = distinct !{!35, !11}
